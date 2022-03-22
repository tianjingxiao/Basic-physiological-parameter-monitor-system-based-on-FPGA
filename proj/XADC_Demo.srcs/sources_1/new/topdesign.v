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

		input Clk; //ʱ�����Ŷ���
		input En;  //�¶�ʹ�ܶ����Ŷ���
		input nRst; //��λ�����Ŷ���
		input xz; //��������ʹ��
		inout DQ; //�����������Ŷ���
		
		input en0;//����ʹ�ܶ����Ŷ���
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
		
		wire [11:0]abc;//�¶ȼ��ת������
		wire [11:0]bbb;//�������ת������
		wire [15:0]wendu;
		wire [15:0]maibo;
	
	//	wire [7:0]A; //�¶ȼ��ת������
		wire [7:0]B; //�������ת������
		wire [15:0]d;//�¶ȼ��ת������
		wire [15:0]c;//�������ת������
	
        DS18B20 W0(.Clk(Clk),.nRst(nRst),.En(En),.Data(wendu),.DQ(DQ));  //nRst�İ�����13��En�İ�����14
		XADCdemo W1(.maibo(maibo),.LED(LED),.CLK100MHZ(Clk),.vauxp6(vauxp6),.vauxn6(vauxn6),.vauxp7(vauxp7),.vauxn7(vauxn7),.vauxp14(vauxp14),.vauxn14(vauxn14),.vauxp15(vauxp15),.vauxn15(vauxn15), .sw(sw), .en0(en0));
		
        //���¶�������ʮ������ת��Ϊʮ����
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
		
		//������������ʮ������ת��Ϊʮ����
		assign B[7:0] = maibo[7:0];
		assign c[3:0] = 4'b0;
		B_BCD U2(.HEX(B),.BCD(bbb)); 
		assign c[15:4] = bbb[11:0];
		
		reg s;
		always@(posedge Clk)
		begin
			if(en0&(!En)) //������������Ч
			 s = 1;
			else if((!en0)&En)
			 s = 0;
		end
       
       mux2 U3(.a0(d),.a1(c),.sl(s),.z(Data));
       
        smg_ip_model U4(.clk(Clk),.data(Data),.sm_wei(sm_wei),.sm_duan(sm_duan));
        
        endmodule
 
//��ѡһ��·ѡ����        
    module mux2(a0,a1,sl,z);
    input [15:0]a0;
    input [15:0]a1;
    input sl;
    output [15:0]z;
    wire [15:0]z;
    assign z=sl?a1:a0;
    endmodule 
		
 module DS18B20(Clk,nRst,En,Data,DQ);
        input Clk;  //����ʱ��50MHz
        input nRst;  //���븴λ
        input En;  // �����¶�ת��
        output [15:0] Data;  //������¶�����
        inout DQ;  //���ݹܽ�
        /*                ���������p                */
        wire En;  //��������
        wire DQ;  //��������
        reg DqDir;  //����ѡ�� 0����� 1������
        reg DqOut;  //�������
        assign DQ = (DqDir == 1'b0) ?  1'bz : DqOut;  //˫��˿ڣ��ۺ�ʱ�WҪʹ����̬�ڣ�����ʱ�ɲ���force���?
        //�����Ƶ����������ʱ��Ϊ50MHz
        parameter  ClkCnt   = 250,  //1/50 * 250 = 5us 
                   RstPulse = 100,  //100 * 5us = 500us
                   Samples  = 16;  //16 * 5us = 80us
        //״���ʹ�õ�״̬���Y
        reg [3:0] NS;
        parameter [3:0]  //ʱ���е�״�W
                   RSTIDLE  = 4'b0000,  //��λ����
                   RSTPUL   = 4'b0001,  //��λ����
                   RSTWAIT  = 4'b0010,  //�ȴ��������ͷŞS��
                   RSTPRE   = 4'b0011,  //��������
                   WIREIDLE = 4'b0100,  //д���ݿ��]
                   WIREPUL  = 4'b0101,  //д����
                   WIREBIT  = 4'b0110,  //дλ
                   WIRESFT  = 4'b0111,  //������λ
                   READIDLE = 4'b1000,  //�����ݿ��]
                   READPUL  = 4'b1001,  //������
                   READBIT  = 4'b1010,  //��λ
                   READSFT  = 4'b1011,  //������λ
                   CMDIDLE  = 4'b1100,  //ָ��ȴ�����
                   CMDFUN   = 4'b1101,  //���ܺ���
                   CMDDELY  = 4'b1110;  //ָ����ʱ
        /*                5��sʱ�Ӳ���                */
        reg [7:0] DivCnt;  //ʱ�ӷ�Ƶ������
        wire PulseClk;
        assign PulseClk = (DivCnt == ClkCnt);
        always@(posedge Clk or negedge nRst)
        begin
           if(~nRst) begin
                DivCnt = 1'b0;  //����ֵ���
           end
           else if(En) begin
               if(PulseClk & TimingEn)  //ռ�՚� ��=50%
                   DivCnt = 8'd0;
               else 
                   DivCnt = DivCnt+1'b1;
           end
           else begin
               DivCnt = 1'b0;  //����ֵ���
           end
        end
        /*                ds18b20ʱ�����                */
        reg TimingEn; //ʱ��ʹ�ܱ�־
        reg [6:0] TimingCnt;  //ʱ�����
        always@(posedge Clk or negedge nRst)
        begin
           if(~nRst) begin
                TimingCnt = 7'b0;  //����ֵ���
           end
           else if(TimingEn) begin
               if(PulseClk)
                   TimingCnt = TimingCnt+1'b1;  //����
               else
                   TimingCnt = TimingCnt;  //���ּ�����
           end
           else begin
               TimingCnt = 7'b0;  //����ֵ���
           end
        end
        /*                ds18b20��λ��������                */
        reg DsRstEn;  //ds18b20��λʹ��
        /*                ds18b20д���ݶ�������                */
        reg WireEn;  //ds18b20д����ʹ�v
        reg [3:0] wSftCnt;  // дbit����  
        reg [7:0] WireCmd;  //дָ��
        reg [7:0] WireBus;  //д����
        /*                ds18b20�����ݶ�������                */
        reg ReadEn;  //ds18b20������ʹ�v
        reg [3:0] rSftCnt;  // дbit����  
        reg [7:0] ReadData;  //������
        /*                ds18b20ָ��ܶ�������                */
        reg [3:0] CmdCnt;  //ָ�����
        reg [7:0] DataH;
        reg [7:0] DataL;
        wire [15:0] Data;  //�������
        assign Data = {DataH,DataL};
        /*                ds18b20״���                */
        always@(posedge Clk or negedge nRst)
        begin
            if(~nRst) begin
               wSftCnt <= 4'b0000;  //�ϵ��ds18b20д������λ�������
               rSftCnt <= 4'b0000;  //�ϵ��ds18b20��������λ�������
               DsRstEn <= 1'b0;  //�ϵ��ds18b20��λʹ�ܱ�־����
               WireEn <= 1'b0;  //�ϵ��ds18b20дʹ�ܱ�־���
               ReadEn <= 1'b0;  //�ϵ��ds18b20��ʹ�ܱ�־���
               WireCmd <= 1'b0;  //�ϵ��ds18b20дָ���־���
               CmdCnt <= 1'b0;;  //ָ���������
               DqDir <= 1'b0;  //����Ϊ���
               NS <= CMDIDLE;  //״����]
           end
           else begin 
               case(NS)
        /*                ds18b20��������                */
                   CMDIDLE: begin  
                       if(En == 1'b1) begin //ʹ��18b20
                           DsRstEn <= 1'b1;  //ʹ�ܸ�λ����
                           NS <= RSTIDLE;  //������λʱ��
                       end
                       else begin
                           DsRstEn <= 1'b0;  //���ܸ�λ����
                           CmdCnt <= 1'b0;  //ָ���������
                           DqDir <= 1'b0;  //����Ϊ���
                           NS <= CMDIDLE;  //����δ֪�����ת����ʼλ�Z
                       end
                   end
                   CMDFUN: begin
                       case(CmdCnt)
                           4'b0000: begin
                               NS <= WIREIDLE;  //����д����
                               WireEn <= 1'b1;  //ʹ��д����
                               WireCmd <= 8'hcc;  //��?0xcc
                           end
                           4'b0001: begin
                               NS <= WIREIDLE;  //����д����
                               WireEn <= 1'b1;  //ʹ��д����
                               WireCmd <= 8'h44;  //��?0x44
                           end
                           4'b0010: begin
                               NS <= CMDDELY;  //ָ��ȴ�
                           end
                           4'b0011: begin
                               DsRstEn <= 1'b1;  //ʹ�ܸ�λ����
                               NS <= RSTIDLE;  //������λʱ��
                           end
                           4'b0100: begin
                               NS <= WIREIDLE;  //����д����
                               WireEn <= 1'b1;  //ʹ��д����
                               WireCmd <= 8'hcc;  //��?0xcc
                           end
                           4'b0101: begin
                               NS <= WIREIDLE;  //����д����
                               WireEn <= 1'b1;  //ʹ��д����
                               WireCmd <= 8'hbe;  //��?0xbe
                           end
                           4'b0110: begin
                               NS <= READIDLE;  //���������ݵ�ʹ
                               ReadEn <= 1'b1;  //ʹ�ܶ�����
                           end
                           4'b0111: begin
                               DataL <= ReadData;  //�����λ����
                               NS <= READIDLE;  //���������ݵ�ʹ
                               ReadEn <= 1'b1;  //ʹ�ܶ�����
                           end    
                           4'b1000: begin
                               DataH <= ReadData;  //�����λ����
                               NS <= CMDIDLE;  //״����]
                           end
                           default: NS <= CMDIDLE;  //����δ֪�����ת����ʼλ�Z 
                       endcase
                       CmdCnt <= CmdCnt + 1'b1;  //����
                   end
        /*                ds18b20ָ����ʱ                */
                   CMDDELY: begin
                       TimingEn <= 1'b1;  //ʹ��ʱ��
                       if(TimingCnt == RstPulse) begin
                           TimingEn <= 1'b0;  //����ʱ��
                           NS <= CMDFUN;  //��?����ָ��
                       end
                       else begin
                           NS <= CMDDELY;  //�����ȴ�ִ��
                       end
                   end
        /*                ds18b20��λʱ��                */
                   RSTIDLE: begin
                       if(DsRstEn) begin
                           DqDir <= 1'b1;  //����Ϊ����
                           DqOut <= 1'b0;  //����������
                           TimingEn <= 1'b1;  //ʹ��ʱ��
                           NS <= RSTPUL;  //������λʱ��
                       end
                       else begin
                           NS <= RSTIDLE;  //�����ȴ�ִ��
                       end
                   end
                   RSTPUL: begin
                       if(TimingCnt == RstPulse) begin
                           DqDir <= 1'b0;  //����Ϊ���
                           DqOut <= 1'b1;  //����������
                           TimingEn <= 1'b0;  //����ʱ��
                           NS <= RSTWAIT;  //�����������ߣ��ȴ��ӻ�Ӧ�q
                       end
                       else begin
                           NS <= RSTPUL;  //�����ȴ�ִ��
                       end
                   end
                   RSTWAIT: begin
                       TimingEn <= 1'b1;  //ʹ��ʱ��
                       if(!DQ) begin
                           NS <= RSTPRE;  //��λ�ɹ�״�W
                       end
                       else if(TimingCnt == RstPulse) begin
                           TimingEn <= 1'b0;  //����ʱ��
                           NS <= RSTIDLE;  //���ؿ���״�W
                       end
                   end
                   RSTPRE: begin
                       if(TimingCnt == RstPulse) begin
                           DsRstEn <= 1'b0;  //���ܸ�λ����
                           TimingEn <= 1'b0;  //����ʱ��
                           DqDir <= 1'b0;  //����Ϊ���
                           DqOut <= 1'b1;  //����������
                           NS <= CMDFUN;  //��?����ָ��
                       end
                   end
        /*                ds18b20дʱ��                */
                   WIREIDLE: begin 
                       if(WireEn) begin
                           DqDir <= 1'b1;  //����Ϊ����
                           DqOut <= 1'b0;  //����������
                           TimingEn <= 1'b1;  //ʹ��ʱ��
                           WireBus <= WireCmd;   //дָ��{
                           NS <= WIREPUL;  //����дʱ��
                       end
                       else begin
                           WireBus <= 8'b0000_0000;  //�������
                           NS <= WIREIDLE;  //״����]
                       end
                   end
                   WIREPUL: begin
                       TimingEn <= 1'b1;  //ʹ��ʱ��
                       if(PulseClk) begin  //�ȴ�5us
                           TimingEn <= 1'b0;  //����ʱ��
                           NS <= WIREBIT;  //дbit
                       end
                       else begin
                           NS <= WIREPUL;  //�����ȴ�ִ��
                       end
                   end
                   WIREBIT: begin
                       TimingEn <= 1'b1;  //ʹ��ʱ��
                       DqOut <= WireBus[0];  //дһʹ
                       if(TimingCnt == Samples) begin 
                           TimingEn <= 1'b0;  //����ʱ��
                           DqOut <= 1'b1;  //����������
                           NS <= WIRESFT;  //������λ
                       end
                       else begin
                           NS <= WIREBIT;  //�����ȴ�ִ��
                       end
                   end
                   WIRESFT: begin
                       TimingEn <= 1'b1;  //ʹ��ʱ��
                       if(PulseClk) begin  //���د5us
                           DqDir <= 1'b1;  //����Ϊ����
                           DqOut <= 1'b0;  //����������
                           TimingEn <= 1'b0;  //����ʱ��
                           WireBus <= WireBus >> 1'b1;  //��λ
                           wSftCnt <= wSftCnt + 1'b1;  //��¼����
                           if(wSftCnt == 4'b0111) begin
                               wSftCnt <= 4'b0000;  //��������
                               DqDir <= 1'b0;  //����Ϊ���
                               DqOut <= 1'b1;  //����������
                               NS <= CMDFUN;  //��?����ָ��
                           end
                           else begin
                               NS <= WIREPUL;  //����дʱ��
                           end
                       end
                       else begin
                           NS <= WIRESFT;  //�����ȴ�ִ��
                       end
                   end
        /*                ds18b20��ʱ��                */
                   READIDLE: begin 
                       if(ReadEn) begin
                           DqDir <= 1'b1;  //����Ϊ����
                           DqOut <= 1'b0;  //����������
                           TimingEn <= 1'b1;  //ʹ��ʱ��
                           NS <= READPUL;  //����дʱ��
                       end
                       else begin
                           ReadData <= 8'b0000_0000;  //������� 
                           NS <= READIDLE;  //״����]
                       end
                   end
                   READPUL: begin
                       TimingEn <= 1'b1;  //ʹ��ʱ��
                       if(PulseClk) begin  //�ȴ�5us
                           TimingEn <= 1'b0;  //����ʱ��
                           DqDir <= 1'b0;  //����Ϊ���
                           DqOut <= 1'b1;  //����������
                           NS <= READBIT;  //��bit
                       end
                       else begin
                           NS <= READPUL;  //�����ȴ�ִ��
                       end
                   end
                   READBIT: begin
                       TimingEn <= 1'b1;  //ʹ��ʱ��
                       if(PulseClk) begin  //�ȴ�5us
                           TimingEn <= 1'b0;  //����ʱ��
                           ReadData[7] <= DQ;  //��һʹ
                           NS <= READSFT;  //������λ
                       end
                       else begin
                           NS <= READBIT;  //�����ȴ�ִ��
                       end
                   end
                   READSFT: begin
                       TimingEn <= 1'b1;  //ʹ��ʱ��
                       if(TimingCnt == Samples) begin  //���د80us
                           TimingEn <= 1'b0;  //ʹ��ʱ��
                           DqDir <= 1'b1;  //����Ϊ����
                           DqOut <= 1'b0;  //����������
                           rSftCnt <= rSftCnt + 1'b1;  //��¼����
                           if(rSftCnt == 4'b0111) begin
                               rSftCnt <= 4'b0000;  //��������
                               DqDir <= 1'b0;  //����Ϊ���
                               DqOut <= 1'b1;  //����������
                               NS <= CMDFUN;  //��?����ָ��
                           end
                           else begin
                               ReadData <= ReadData >> 1'b1;  //��λ
                               NS <= READPUL;  //����дʱ��
                           end
                       end
                       else begin
                           NS <= READSFT;  //�����ȴ�ִ��
                       end
                   end
                   default: NS <= CMDIDLE;  //����δ֪�����ת����ʼλ�Z
               endcase
           end
        end
        endmodule
 
//�����ip��
module smg_ip_model(clk,data,sm_wei,sm_duan);
input clk;
input [15:0] data;
output [3:0] sm_wei;
output [7:0] sm_duan;
//----------------------------------------------------------
//��Ƶ
integer clk_cnt;
reg clk_400Hz;
always @(posedge clk)
if(clk_cnt==32'd100000)
begin clk_cnt <= 1'b0; clk_400Hz <= ~clk_400Hz;end
else
clk_cnt <= clk_cnt + 1'b1;
//----------------------------------------------------------
//λ����
reg [3:0]wei_ctrl=4'b1110; //��λ�Ĵ�����16����
always @(posedge clk_400Hz)
wei_ctrl <= {wei_ctrl[2:0],wei_ctrl[3]};
//�ο���
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
//����ģ��
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
		//	4'hf:duan=8'b1111_1111;//���Եj
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
		//	4'hf:duan=8'b1111_1111;//���Եj
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
		//	4'hf:duan=8'b1111_1111;//���Եj
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
		//	4'hf:duan=8'b1111_1111;//���Եj
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
