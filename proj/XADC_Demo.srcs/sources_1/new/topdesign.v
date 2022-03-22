`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/12/16 19:17:41
// Design Name: 
// Module Name: topdesign
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module topdesign(Clk, xz, En, nRst, DQ, sm_wei, sm_duan, en0, sw, vauxp6, vauxn6,vauxp7,vauxn7,vauxp14,vauxn14,vauxp15,vauxn15,LED);

		input Clk; //时钟引脚定义
		input En;  //温度使能端引脚定义
		input nRst; //复位端引脚定义
		input xz; //修正函数使能
		inout DQ; //数据输入引脚定义
		
		input en0;//脉搏使能端引脚定义
		input vauxp6;
		input vauxn6;
		input vauxp7;
        input vauxn7;
        input vauxp15;
        input vauxn15;
        input vauxp14;
        input vauxn14;
		input [1:0] sw;		
	    output [3:0]sm_wei;
        output [7:0]sm_duan;
        output [15:0]LED;
		wire [15:0]Data;
		
		wire [11:0]abc;//温度间接转换网线
		wire [11:0]bbb;//脉搏间接转换网线
		wire [15:0]wendu;
		wire [15:0]maibo;
	
	//	wire [7:0]A; //温度间接转换网线
		wire [7:0]B; //脉搏间接转换网线
		wire [15:0]d;//温度间接转换网线
		wire [15:0]c;//脉搏间接转换网线
	
        DS18B20 W0(.Clk(Clk),.nRst(nRst),.En(En),.Data(wendu),.DQ(DQ));  //nRst的按键是13，En的按键是14
		XADCdemo W1(.maibo(maibo),.LED(LED),.CLK100MHZ(Clk),.vauxp6(vauxp6),.vauxn6(vauxn6),.vauxp7(vauxp7),.vauxn7(vauxn7),.vauxp14(vauxp14),.vauxn14(vauxn14),.vauxp15(vauxp15),.vauxn15(vauxn15), .sw(sw), .en0(en0));
		
        //把温度数据由十六进制转换为十进制
        reg [7:0]f;
	//	assign  A[7:0] = wendu[11:4];
		always@(Clk)
		begin
		    if(xz)
		    begin
		    f[7:0] = wendu[11:4]+3;
		    end
		    else
		    f[7:0] = wendu[11:4];
		end
		 
        B_BCD U1(.HEX(f),.BCD(abc)); 
        assign d[3:0] = wendu[3:0];
        assign d[15:4] = abc[11:0]; 
		
		//把脉搏数据由十六进制转换为十进制
		assign B[7:0] = maibo[7:0];
		assign c[3:0] = 4'b0;
		B_BCD U2(.HEX(B),.BCD(bbb)); 
		assign c[15:4] = bbb[11:0];
		
		reg s;
		always@(posedge Clk)
		begin
			if(en0&(!En)) //脉搏传感器有效
			 s = 1;
			else if((!en0)&En)
			 s = 0;
		end
       
       mux2 U3(.a0(d),.a1(c),.sl(s),.z(Data));
       
        smg_ip_model U4(.clk(Clk),.data(Data),.sm_wei(sm_wei),.sm_duan(sm_duan));
        
        endmodule
 
//二选一多路选择器        
    module mux2(a0,a1,sl,z);
    input [15:0]a0;
    input [15:0]a1;
    input sl;
    output [15:0]z;
    wire [15:0]z;
    assign z=sl?a1:a0;
    endmodule 
		
 module DS18B20(Clk,nRst,En,Data,DQ);
        input Clk;  //输入时钟50MHz
        input nRst;  //输入复位
        input En;  // 启动温度转换
        output [15:0] Data;  //输出的温度数捿
        inout DQ;  //数据管脚
        /*                定义与声昿                */
        wire En;  //线网类型
        wire DQ;  //线网类型
        reg DqDir;  //方向选择 0：输兿 1：输凿
        reg DqOut;  //输出数据
        assign DQ = (DqDir == 1'b0) ?  1'bz : DqOut;  //双向端口，综合时霿要使用三态口，仿真时可采用force语句?
        //定义分频参数，输入时钟为50MHz
        parameter  ClkCnt   = 250,  //1/50 * 250 = 5us 
                   RstPulse = 100,  //100 * 5us = 500us
                   Samples  = 16;  //16 * 5us = 80us
        //状濁机使用的状态变釿
        reg [3:0] NS;
        parameter [3:0]  //时序中的状濿
                   RSTIDLE  = 4'b0000,  //复位空闲
                   RSTPUL   = 4'b0001,  //复位脉冲
                   RSTWAIT  = 4'b0010,  //等待，主机释放濻线
                   RSTPRE   = 4'b0011,  //存在脉冲
                   WIREIDLE = 4'b0100,  //写数据空闿
                   WIREPUL  = 4'b0101,  //写脉冿
                   WIREBIT  = 4'b0110,  //写位
                   WIRESFT  = 4'b0111,  //数据移位
                   READIDLE = 4'b1000,  //读数据空闿
                   READPUL  = 4'b1001,  //读脉冿
                   READBIT  = 4'b1010,  //读位
                   READSFT  = 4'b1011,  //数据移位
                   CMDIDLE  = 4'b1100,  //指令等待空闲
                   CMDFUN   = 4'b1101,  //功能函数
                   CMDDELY  = 4'b1110;  //指令延时
        /*                5μs时钟产生                */
        reg [7:0] DivCnt;  //时钟分频计数倿
        wire PulseClk;
        assign PulseClk = (DivCnt == ClkCnt);
        always@(posedge Clk or negedge nRst)
        begin
           if(~nRst) begin
                DivCnt = 1'b0;  //计数值归雿
           end
           else if(En) begin
               if(PulseClk & TimingEn)  //占空毿 ＿=50%
                   DivCnt = 8'd0;
               else 
                   DivCnt = DivCnt+1'b1;
           end
           else begin
               DivCnt = 1'b0;  //计数值归雿
           end
        end
        /*                ds18b20时序产生                */
        reg TimingEn; //时序使能标志
        reg [6:0] TimingCnt;  //时序计数
        always@(posedge Clk or negedge nRst)
        begin
           if(~nRst) begin
                TimingCnt = 7'b0;  //计数值归雿
           end
           else if(TimingEn) begin
               if(PulseClk)
                   TimingCnt = TimingCnt+1'b1;  //计数
               else
                   TimingCnt = TimingCnt;  //保持计数倿
           end
           else begin
               TimingCnt = 7'b0;  //计数值归雿
           end
        end
        /*                ds18b20复位定义类型                */
        reg DsRstEn;  //ds18b20复位使能
        /*                ds18b20写数据定义类垿                */
        reg WireEn;  //ds18b20写数据使胿
        reg [3:0] wSftCnt;  // 写bit次数  
        reg [7:0] WireCmd;  //写指仿
        reg [7:0] WireBus;  //写数捿
        /*                ds18b20读数据定义类垿                */
        reg ReadEn;  //ds18b20读数据使胿
        reg [3:0] rSftCnt;  // 写bit次数  
        reg [7:0] ReadData;  //读数捿
        /*                ds18b20指令功能定义类型                */
        reg [3:0] CmdCnt;  //指令计数
        reg [7:0] DataH;
        reg [7:0] DataL;
        wire [15:0] Data;  //输出数据
        assign Data = {DataH,DataL};
        /*                ds18b20状濁机                */
        always@(posedge Clk or negedge nRst)
        begin
            if(~nRst) begin
               wSftCnt <= 4'b0000;  //上电后，ds18b20写数据移位计数置雿
               rSftCnt <= 4'b0000;  //上电后，ds18b20读数据移位计数置雿
               DsRstEn <= 1'b0;  //上电后，ds18b20复位使能标志置零
               WireEn <= 1'b0;  //上电后，ds18b20写使能标志置雿
               ReadEn <= 1'b0;  //上电后，ds18b20读使能标志置雿
               WireCmd <= 1'b0;  //上电后，ds18b20写指令标志置雿
               CmdCnt <= 1'b0;;  //指令计数置零
               DqDir <= 1'b0;  //设置为输兿
               NS <= CMDIDLE;  //状濁空闿
           end
           else begin 
               case(NS)
        /*                ds18b20功能设置                */
                   CMDIDLE: begin  
                       if(En == 1'b1) begin //使能18b20
                           DsRstEn <= 1'b1;  //使能复位功能
                           NS <= RSTIDLE;  //启动复位时序
                       end
                       else begin
                           DsRstEn <= 1'b0;  //禁能复位功能
                           CmdCnt <= 1'b0;  //指令计数清零
                           DqDir <= 1'b0;  //设置为输兿
                           NS <= CMDIDLE;  //其它未知情况跳转至起始位罿
                       end
                   end
                   CMDFUN: begin
                       case(CmdCnt)
                           4'b0000: begin
                               NS <= WIREIDLE;  //启动写数捿
                               WireEn <= 1'b1;  //使能写数捿
                               WireCmd <= 8'hcc;  //发?0xcc
                           end
                           4'b0001: begin
                               NS <= WIREIDLE;  //启动写数捿
                               WireEn <= 1'b1;  //使能写数捿
                               WireCmd <= 8'h44;  //发?0x44
                           end
                           4'b0010: begin
                               NS <= CMDDELY;  //指令等待
                           end
                           4'b0011: begin
                               DsRstEn <= 1'b1;  //使能复位功能
                               NS <= RSTIDLE;  //启动复位时序
                           end
                           4'b0100: begin
                               NS <= WIREIDLE;  //启动写数捿
                               WireEn <= 1'b1;  //使能写数捿
                               WireCmd <= 8'hcc;  //发?0xcc
                           end
                           4'b0101: begin
                               NS <= WIREIDLE;  //启动写数捿
                               WireEn <= 1'b1;  //使能写数捿
                               WireCmd <= 8'hbe;  //发?0xbe
                           end
                           4'b0110: begin
                               NS <= READIDLE;  //启动读数据低使
                               ReadEn <= 1'b1;  //使能读数捿
                           end
                           4'b0111: begin
                               DataL <= ReadData;  //保存低位数据
                               NS <= READIDLE;  //启动读数据低使
                               ReadEn <= 1'b1;  //使能读数捿
                           end    
                           4'b1000: begin
                               DataH <= ReadData;  //保存高位数据
                               NS <= CMDIDLE;  //状濁空闿
                           end
                           default: NS <= CMDIDLE;  //其它未知情况跳转至起始位罿 
                       endcase
                       CmdCnt <= CmdCnt + 1'b1;  //计数
                   end
        /*                ds18b20指令延时                */
                   CMDDELY: begin
                       TimingEn <= 1'b1;  //使能时序
                       if(TimingCnt == RstPulse) begin
                           TimingEn <= 1'b0;  //禁能时序
                           NS <= CMDFUN;  //发?功能指仿
                       end
                       else begin
                           NS <= CMDDELY;  //继续等待执行
                       end
                   end
        /*                ds18b20复位时序                */
                   RSTIDLE: begin
                       if(DsRstEn) begin
                           DqDir <= 1'b1;  //设置为输凿
                           DqOut <= 1'b0;  //拉低数据线
                           TimingEn <= 1'b1;  //使能时序
                           NS <= RSTPUL;  //启动复位时序
                       end
                       else begin
                           NS <= RSTIDLE;  //继续等待执行
                       end
                   end
                   RSTPUL: begin
                       if(TimingCnt == RstPulse) begin
                           DqDir <= 1'b0;  //设置为输兿
                           DqOut <= 1'b1;  //拉高数据线
                           TimingEn <= 1'b0;  //禁能时序
                           NS <= RSTWAIT;  //主机拉高总线，等待从机应筿
                       end
                       else begin
                           NS <= RSTPUL;  //继续等待执行
                       end
                   end
                   RSTWAIT: begin
                       TimingEn <= 1'b1;  //使能时序
                       if(!DQ) begin
                           NS <= RSTPRE;  //复位成功状濿
                       end
                       else if(TimingCnt == RstPulse) begin
                           TimingEn <= 1'b0;  //禁能时序
                           NS <= RSTIDLE;  //返回空闲状濿
                       end
                   end
                   RSTPRE: begin
                       if(TimingCnt == RstPulse) begin
                           DsRstEn <= 1'b0;  //禁能复位功能
                           TimingEn <= 1'b0;  //禁能时序
                           DqDir <= 1'b0;  //设置为输兿
                           DqOut <= 1'b1;  //拉高数据线
                           NS <= CMDFUN;  //发?功能指仿
                       end
                   end
        /*                ds18b20写时庿                */
                   WIREIDLE: begin 
                       if(WireEn) begin
                           DqDir <= 1'b1;  //设置为输凿
                           DqOut <= 1'b0;  //拉低数据线
                           TimingEn <= 1'b1;  //使能时序
                           WireBus <= WireCmd;   //写指令传辿
                           NS <= WIREPUL;  //启动写时庿
                       end
                       else begin
                           WireBus <= 8'b0000_0000;  //数据清空
                           NS <= WIREIDLE;  //状濁空闿
                       end
                   end
                   WIREPUL: begin
                       TimingEn <= 1'b1;  //使能时序
                       if(PulseClk) begin  //等待5us
                           TimingEn <= 1'b0;  //禁能时序
                           NS <= WIREBIT;  //写bit
                       end
                       else begin
                           NS <= WIREPUL;  //继续等待执行
                       end
                   end
                   WIREBIT: begin
                       TimingEn <= 1'b1;  //使能时序
                       DqOut <= WireBus[0];  //写一使
                       if(TimingCnt == Samples) begin 
                           TimingEn <= 1'b0;  //禁能时序
                           DqOut <= 1'b1;  //拉高数据线
                           NS <= WIRESFT;  //数据移位
                       end
                       else begin
                           NS <= WIREBIT;  //继续等待执行
                       end
                   end
                   WIRESFT: begin
                       TimingEn <= 1'b1;  //使能时序
                       if(PulseClk) begin  //间隔丿5us
                           DqDir <= 1'b1;  //设置为输凿
                           DqOut <= 1'b0;  //拉低数据线
                           TimingEn <= 1'b0;  //禁能时序
                           WireBus <= WireBus >> 1'b1;  //移位
                           wSftCnt <= wSftCnt + 1'b1;  //记录次数
                           if(wSftCnt == 4'b0111) begin
                               wSftCnt <= 4'b0000;  //次数置零
                               DqDir <= 1'b0;  //设置为输兿
                               DqOut <= 1'b1;  //拉高数据线
                               NS <= CMDFUN;  //发?功能指仿
                           end
                           else begin
                               NS <= WIREPUL;  //启动写时庿
                           end
                       end
                       else begin
                           NS <= WIRESFT;  //继续等待执行
                       end
                   end
        /*                ds18b20读时庿                */
                   READIDLE: begin 
                       if(ReadEn) begin
                           DqDir <= 1'b1;  //设置为输凿
                           DqOut <= 1'b0;  //拉低数据线
                           TimingEn <= 1'b1;  //使能时序
                           NS <= READPUL;  //启动写时庿
                       end
                       else begin
                           ReadData <= 8'b0000_0000;  //数据清空 
                           NS <= READIDLE;  //状濁空闿
                       end
                   end
                   READPUL: begin
                       TimingEn <= 1'b1;  //使能时序
                       if(PulseClk) begin  //等待5us
                           TimingEn <= 1'b0;  //禁能时序
                           DqDir <= 1'b0;  //设置为输兿
                           DqOut <= 1'b1;  //拉高数据线
                           NS <= READBIT;  //读bit
                       end
                       else begin
                           NS <= READPUL;  //继续等待执行
                       end
                   end
                   READBIT: begin
                       TimingEn <= 1'b1;  //使能时序
                       if(PulseClk) begin  //等待5us
                           TimingEn <= 1'b0;  //禁能时序
                           ReadData[7] <= DQ;  //读一使
                           NS <= READSFT;  //数据移位
                       end
                       else begin
                           NS <= READBIT;  //继续等待执行
                       end
                   end
                   READSFT: begin
                       TimingEn <= 1'b1;  //使能时序
                       if(TimingCnt == Samples) begin  //间隔丿80us
                           TimingEn <= 1'b0;  //使能时序
                           DqDir <= 1'b1;  //设置为输凿
                           DqOut <= 1'b0;  //拉低数据线
                           rSftCnt <= rSftCnt + 1'b1;  //记录次数
                           if(rSftCnt == 4'b0111) begin
                               rSftCnt <= 4'b0000;  //次数置零
                               DqDir <= 1'b0;  //设置为输兿
                               DqOut <= 1'b1;  //拉高数据线
                               NS <= CMDFUN;  //发?功能指仿
                           end
                           else begin
                               ReadData <= ReadData >> 1'b1;  //移位
                               NS <= READPUL;  //启动写时庿
                           end
                       end
                       else begin
                           NS <= READSFT;  //继续等待执行
                       end
                   end
                   default: NS <= CMDIDLE;  //其它未知情况跳转至起始位罿
               endcase
           end
        end
        endmodule
 
//数码管ip栿
module smg_ip_model(clk,data,sm_wei,sm_duan);
input clk;
input [15:0] data;
output [3:0] sm_wei;
output [7:0] sm_duan;
//----------------------------------------------------------
//分频
integer clk_cnt;
reg clk_400Hz;
always @(posedge clk)
if(clk_cnt==32'd100000)
begin clk_cnt <= 1'b0; clk_400Hz <= ~clk_400Hz;end
else
clk_cnt <= clk_cnt + 1'b1;
//----------------------------------------------------------
//位控刿
reg [3:0]wei_ctrl=4'b1110; //移位寄存器，16进制
always @(posedge clk_400Hz)
wei_ctrl <= {wei_ctrl[2:0],wei_ctrl[3]};
//段控刿
reg [3:0]duan_ctrl;
always @(wei_ctrl)
case(wei_ctrl)
4'b1110:duan_ctrl=data[3:0];
4'b1101:duan_ctrl=data[7:4];
4'b1011:duan_ctrl=data[11:8];
4'b0111:duan_ctrl=data[15:12];
default:duan_ctrl=4'hf;
endcase
//----------------------------------------------------------
//解码模块
reg [7:0]duan0;
reg [7:0]duan1;
reg [7:0]duan2;
reg [7:0]duan3;
reg [7:0]duan;
always @(wei_ctrl)
	if(wei_ctrl==4'b1110)
	begin
	   duan = duan0;
		case(duan_ctrl)
		4'h0:duan0=8'b1100_0000;//0
		4'h1:duan0=8'b1111_1001;//0.0625 1
		4'h2:duan0=8'b1111_1001;//0.125  1
		4'h3:duan0=8'b1010_0100;//0.1875 2
		4'h4:duan0=8'b1011_0000;//0.25   3
		4'h5:duan0=8'b1011_0000;//0.3125 3
		4'h6:duan0=8'b1001_1001;//0.375  4
		4'h7:duan0=8'b1001_1001;//0.4375 4
		4'h8:duan0=8'b1001_0010;//0.5	 5
		4'h9:duan0=8'b1000_0010;//0.5625 6
		4'ha:duan0=8'b1000_0010;//0.625  6
		4'hb:duan0=8'b1111_1000;//0.6875 7
		4'hc:duan0=8'b1000_0000;//0.75   8
		4'hd:duan0=8'b1000_0000;//0.8125 8
		4'he:duan0=8'b1001_0000;//0.875  9
		4'hf:duan0=8'b1001_0000;//0.9375 9
		//	4'hf:duan=8'b1111_1111;//不显礿
		default : duan0 = 8'b1100_0000;//0
		endcase
	end
	else if(wei_ctrl==4'b1101)
	begin
        duan = duan1;
		case(duan_ctrl)
		4'h0:duan1=8'b0100_0000;//0
		4'h1:duan1=8'b0111_1001;//1
		4'h2:duan1=8'b0010_0100;//2
		4'h3:duan1=8'b0011_0000;//3
		4'h4:duan1=8'b0001_1001;//4
		4'h5:duan1=8'b0001_0010;//5
		4'h6:duan1=8'b0000_0010;//6
		4'h7:duan1=8'b0111_1000;//7
		4'h8:duan1=8'b0000_0000;//8
		4'h9:duan1=8'b0001_0000;//9
		4'ha:duan1=8'b0000_1000;//a
		4'hb:duan1=8'b0000_0011;//b
		4'hc:duan1=8'b0100_0110;//c
		4'hd:duan1=8'b0010_0001;//d
		4'he:duan1=8'b0000_0111;//e
		4'hf:duan1=8'b0000_1110;//f
		//	4'hf:duan=8'b1111_1111;//不显礿
		default : duan1 = 8'b1100_0000;//0
		endcase
	end
	else if(wei_ctrl==4'b1011)	
	begin
        duan = duan2;
		case(duan_ctrl)
		4'h0:duan2=8'b1100_0000;//0
		4'h1:duan2=8'b1111_1001;//1
		4'h2:duan2=8'b1010_0100;//2
		4'h3:duan2=8'b1011_0000;//3
		4'h4:duan2=8'b1001_1001;//4
		4'h5:duan2=8'b1001_0010;//5
		4'h6:duan2=8'b1000_0010;//6
		4'h7:duan2=8'b1111_1000;//7
		4'h8:duan2=8'b1000_0000;//8
		4'h9:duan2=8'b1001_0000;//9
		4'ha:duan2=8'b1000_1000;//a
		4'hb:duan2=8'b1000_0011;//b
		4'hc:duan2=8'b1100_0110;//c
		4'hd:duan2=8'b1010_0001;//d
		4'he:duan2=8'b1000_0111;//e
		4'hf:duan2=8'b1000_1110;//f
		//	4'hf:duan=8'b1111_1111;//不显礿
		default : duan2 = 8'b1100_0000;//0
		endcase
	end
	else if(wei_ctrl==4'b0111)
	begin
        duan = duan3;
		case(duan_ctrl)
		4'h0:duan3=8'b1100_0000;//0
		4'h1:duan3=8'b1111_1001;//1
		4'h2:duan3=8'b1010_0100;//2
		4'h3:duan3=8'b1011_0000;//3
		4'h4:duan3=8'b1001_1001;//4
		4'h5:duan3=8'b1001_0010;//5
		4'h6:duan3=8'b1000_0010;//6
		4'h7:duan3=8'b1111_1000;//7
		4'h8:duan3=8'b1000_0000;//8
		4'h9:duan3=8'b1001_0000;//9
		4'ha:duan3=8'b1000_1000;//a
		4'hb:duan3=8'b1000_0011;//b
		4'hc:duan3=8'b1100_0110;//c
		4'hd:duan3=8'b1010_0001;//d
		4'he:duan3=8'b1000_0111;//e
		4'hf:duan3=8'b1000_1110;//f
		//	4'hf:duan=8'b1111_1111;//不显礿
		default : duan3 = 8'b1100_0000;//0
		endcase
	end

//----------------------------------------------------------
assign sm_wei = wei_ctrl;
assign sm_duan = duan;
endmodule 

module B_BCD(HEX,BCD);
input [7:0]HEX;
output [11:0]BCD;
reg [11:0]high;
reg [7:0]low;
reg [4:0] highlow30,highlow74;
reg [11:0]BCD_BUF;
//reg c30,c74;

always @(HEX)
	begin
	if(HEX[3:0] > 4'b1001) 
		begin
		low[7:4] = 4'h1;
		low[3:0] = HEX[3:0] + 4'b0110;			//Decimal adjust
		end
	else 
		begin
		low[3:0]= HEX[3:0];
		low[7:4] = 4'h0;
		end
	case(HEX[7:4])
	4'h0 : high[11:0] = 12'h000;
	4'h1 : high[11:0] = 12'h016;
	4'h2 : high[11:0] = 12'h032;
	4'h3 : high[11:0] = 12'h048;
	4'h4 : high[11:0] = 12'h064;
	4'h5 : high[11:0] = 12'h080;
	4'h6 : high[11:0] = 12'h096;
	4'h7 : high[11:0] = 12'h112;
	4'h8 : high[11:0] = 12'h128;
	4'h9 : high[11:0] = 12'h144;
	4'ha : high[11:0] = 12'h160;
	4'hb : high[11:0] = 12'h176;
	4'hc : high[11:0] = 12'h192;
	4'hd : high[11:0] = 12'h208;
	4'he : high[11:0] = 12'h224;
	4'hf : high[11:0] = 12'h240;
	//default : ;
	endcase
	
	highlow30 = high[3:0] + low[3:0] ;  		//keep carry in calculation
	
	//if(high[3:0] + low[3:0] > 4'b1001)  //Error occurs when the result is greater than 16
	  if(highlow30 > 4'b1001)
		begin
		low[7:4] = low[7:4] + 4'h1;			//Carry
		BCD_BUF[3:0] = high[3:0] + low[3:0] + 4'b0110 ;		//Decimal adjust
		end
	else BCD_BUF[3:0] = high[3:0] + low[3:0];
	
	highlow74 = high[7:4] + low[7:4] ;
	  if(highlow74 > 4'b1001)
	//if(high[7:4] + low[7:4] > 4'b1001)
		begin
		BCD_BUF[7:4] = high[7:4] + low[7:4] + 4'b0110;
		high[11:8] = high[11:8] + 4'b1;					//Carry
		end
	else BCD_BUF[7:4] = high[7:4] + low[7:4];
	BCD_BUF[11:8] = high[11:8];
	
	end
assign BCD = BCD_BUF;	
	
endmodule
