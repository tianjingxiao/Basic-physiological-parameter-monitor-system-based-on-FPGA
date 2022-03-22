`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2015 03:26:51 PM
// Design Name: 
// Module Name: // Project Name: 
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
 

module XADCdemo(
   input CLK100MHZ,
   input vauxp6,
   input vauxn6,
   input vauxp7,
   input vauxn7,
   input vauxp15,
   input vauxn15,
   input vauxp14,
   input vauxn14,
   input [1:0] sw,
   input en0,
   output reg [15:0] LED,
 //  output [3:0] an,
 // output [6:0] seg 
  output [15:0]maibo
 );
   
   wire enable;  
   wire ready;
   wire [15:0] data;   
   reg [6:0] Address_in;     
   reg [32:0] decimal;   
 
   //xadc instantiation connect the eoc_out .den_in to get continuous conversion
   xadc_wiz_0  XLXI_7 (.daddr_in(Address_in), //addresses can be found in the artix 7 XADC user guide DRP register space
                     .dclk_in(CLK100MHZ), 
                     .den_in(enable), 
                     .di_in(), 
                     .dwe_in(), 
                     .busy_out(),                    
                     .vauxp6(vauxp6),
                     .vauxn6(vauxn6),
                     .vauxp7(vauxp7),
                     .vauxn7(vauxn7),
                     .vauxp14(vauxp14),
                     .vauxn14(vauxn14),
                     .vauxp15(vauxp15),
                     .vauxn15(vauxn15),
                     .vn_in(), 
                     .vp_in(), 
                     .alarm_out(), 
                     .do_out(data), 
                    // .reset_in(),
                     .eoc_out(enable),
                     .channel_out(),
                     .drdy_out(ready));
                     
      //led visual dmm              
      always @( posedge(CLK100MHZ))
      begin            
      if(en0)
	    begin
		   if(ready == 1'b1)
			begin
			  case (data[15:12])
				1:  LED <= 16'b11;
				2:  LED <= 16'b111;
				3:  LED <= 16'b1111;
				4:  LED <= 16'b11111;
				5:  LED <= 16'b111111;
				6:  LED <= 16'b1111111; 
				7:  LED <= 16'b11111111;
				8:  LED <= 16'b111111111;
				9:  LED <= 16'b1111111111;
				10: LED <= 16'b11111111111;
				11: LED <= 16'b111111111111;
				12: LED <= 16'b1111111111111;
				13: LED <= 16'b11111111111111;
				14: LED <= 16'b111111111111111;
				15: LED <= 16'b1111111111111111;                        
			   default: LED <= 16'b1; 
			   endcase
	    	end   
		end
      end
      
     reg [32:0] count; 
     reg [32:0] count0; 
	 reg [15:0]show;
	 reg [15:0]da;
     //binary to decimal conversion  //二进制转十进制计数
      always @ (posedge(CLK100MHZ))
      begin
      if(en0)
        begin
        if(count == 10000000)
        begin
            decimal = data >> 4;
            //looks nicer if our max value is 1V instead of .999755 看起来更好看，如果我们的最大值是1V而不是.999755
            if(decimal >= 4093)
            begin
                show   = show + 1; 
            end 
                count  = 0;
       end
       
      count  = count  + 1;  //实现反复计数
      count0 = count0 + 1;
          
          if(count0 == 500000000)
          begin
                da  = show*4;
                show   = 0;
                count0 = 0;
          end
      end         
      end
      
      assign maibo[15:0] = da[15:0];
      
      always @(posedge(CLK100MHZ))
      begin
        case(sw)
        0: Address_in <= 8'h16;
        1: Address_in <= 8'h17;
        2: Address_in <= 8'h1e;
        3: Address_in <= 8'h1f;
        endcase   
      end
    
	/*  
	  integer clk_cnt;
      reg clk_400Hz;
      always @(posedge CLK100MHZ)
      if(clk_cnt==32'd200000)
      begin clk_cnt <= 1'b0; clk_400Hz <= ~clk_400Hz;end
      else
      clk_cnt <= clk_cnt + 1'b1;
      reg [3:0]wei_ctrl=4'b1110;
      always @(posedge clk_400Hz)
      wei_ctrl <= {wei_ctrl[2:0],wei_ctrl[3]};
      //段控制
      reg [3:0]duan_ctrl;
      always @(wei_ctrl)
      case(wei_ctrl)
      4'b1110:duan_ctrl=maibo [3:0];
      4'b1101:duan_ctrl=maibo[7:4];
      4'b1011:duan_ctrl=maibo[11:8];
      4'b0111:duan_ctrl=maibo[15:12];
      default:duan_ctrl=4'hf;
      endcase
      //----------------------------------------------------------
      //解码模块
      reg [7:0]duan;
      always @(duan_ctrl)
      case(duan_ctrl)
      4'h0:duan=8'b1100_0000;//0
      4'h1:duan=8'b1111_1001;//1
      4'h2:duan=8'b1010_0100;//2
      4'h3:duan=8'b1011_0000;//3
      4'h4:duan=8'b1001_1001;//4
      4'h5:duan=8'b1001_0010;//5
      4'h6:duan=8'b1000_0010;//6
      4'h7:duan=8'b1111_1000;//7
      4'h8:duan=8'b1000_0000;//8
      4'h9:duan=8'b1001_0000;//9
      4'ha:duan=8'b1000_1000;//a
      4'hb:duan=8'b1000_0011;//b
      4'hc:duan=8'b1100_0110;//c
      4'hd:duan=8'b1010_0001;//d
      4'he:duan=8'b1000_0111;//e
      4'hf:duan=8'b1000_1110;//f
      //    4'hf:duan=8'b1111_1111;//不显示
      default : duan = 8'b1100_0000;//0
      endcase
      //----------------------------------------------------------
      assign an = wei_ctrl;
      assign seg = duan;
      */
endmodule
