
?
Command: %s
53*	vivadotcl2?
?synth_design -top topdesign -part xc7a35tcpg236-1 -fanout_limit 400 -fsm_extraction one_hot -keep_equivalent_registers -resource_sharing off -no_lc -shreg_min_size 52default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
IP '%s' is locked:
%s
1260*coregen2

xadc_wiz_02default:default2?
?* IP definition 'XADC Wizard (3.0)' for IP 'xadc_wiz_0' has a newer minor version in the IP Catalog.
Please select 'Report IP Status' from the 'Tools/Report' menu or run Tcl command 'report_ip_status' for more information.2default:defaultZ19-2162h px?
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 321.289 ; gain = 114.129
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
	topdesign2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
232default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
DS18B202default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
1072default:default8@Z8-638h px? 
]
%s
*synth2E
1	Parameter ClkCnt bound to: 250 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter RstPulse bound to: 100 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter Samples bound to: 16 - type: integer 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter RSTIDLE bound to: 4'b0000 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter RSTPUL bound to: 4'b0001 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter RSTWAIT bound to: 4'b0010 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter RSTPRE bound to: 4'b0011 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter WIREIDLE bound to: 4'b0100 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter WIREPUL bound to: 4'b0101 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter WIREBIT bound to: 4'b0110 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter WIRESFT bound to: 4'b0111 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter READIDLE bound to: 4'b1000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter READPUL bound to: 4'b1001 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter READBIT bound to: 4'b1010 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter READSFT bound to: 4'b1011 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter CMDIDLE bound to: 4'b1100 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter CMDFUN bound to: 4'b1101 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter CMDDELY bound to: 4'b1110 
2default:defaulth p
x
? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	DataL_reg2default:default2
DS18B202default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
1942default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	DataH_reg2default:default2
DS18B202default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
1942default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2 
TimingEn_reg2default:default2
DS18B202default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
2722default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	DqOut_reg2default:default2
DS18B202default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
1182default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
WireBus_reg2default:default2
DS18B202default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
3292default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2 
ReadData_reg2default:default2
DS18B202default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
2582default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
DS18B202default:default2
12default:default2
12default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
1072default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
XADCdemo2default:default2C
-E:/download/FPGA/XADC_Demo/src/hdl/XADCdemo.v2default:default2
222default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2

xadc_wiz_02default:default2?
mE:/download/FPGA/XADC_Demo/proj/XADC_Demo.runs/synth_1/.Xil/Vivado-4536-Dc_Wang/realtime/xadc_wiz_0_stub.vhdl2default:default2
332default:default8@Z8-638h px? 
?
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
XLXI_72default:default2

xadc_wiz_02default:default2
222default:default2
212default:default2C
-E:/download/FPGA/XADC_Demo/src/hdl/XADCdemo.v2default:default2
472default:default8@Z8-350h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
XADCdemo2default:default2
22default:default2
12default:default2C
-E:/download/FPGA/XADC_Demo/src/hdl/XADCdemo.v2default:default2
222default:default8@Z8-256h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
xz2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
622default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
wendu2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
622default:default8@Z8-567h px? 
?
synthesizing module '%s'638*oasys2
B_BCD2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
5852default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
B_BCD2default:default2
32default:default2
12default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
5852default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
mux22default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
982default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
mux22default:default2
42default:default2
12default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
982default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2 
smg_ip_model2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
4462default:default8@Z8-638h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
data2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
4672default:default8@Z8-567h px? 
?
default block is never used226*oasys2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
4862default:default8@Z8-226h px? 
?
default block is never used226*oasys2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
5102default:default8@Z8-226h px? 
?
default block is never used226*oasys2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
5342default:default8@Z8-226h px? 
?
default block is never used226*oasys2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
5582default:default8@Z8-226h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	duan_ctrl2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
4822default:default8@Z8-567h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
smg_ip_model2default:default2
52default:default2
12default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
4462default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	topdesign2default:default2
62default:default2
12default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
232default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 358.516 ; gain = 151.355
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 358.516 ; gain = 151.355
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
PCould not resolve non-primitive black box cell '%s' instantiated as '%s' [%s:%s]295*project2

xadc_wiz_02default:default2
	W1/XLXI_72default:default2C
-E:/download/FPGA/XADC_Demo/src/hdl/XADCdemo.v2default:default2
472default:default8Z1-486h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2P
<E:/download/FPGA/XADC_Demo/src/constraints/Basys3_Master.xdc2default:defaultZ20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2P
<E:/download/FPGA/XADC_Demo/src/constraints/Basys3_Master.xdc2default:defaultZ20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2P
<E:/download/FPGA/XADC_Demo/src/constraints/Basys3_Master.xdc2default:default2/
.Xil/topdesign_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2Y
EE:/download/FPGA/XADC_Demo/proj/XADC_Demo.runs/synth_1/dont_touch.xdc2default:defaultZ20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2Y
EE:/download/FPGA/XADC_Demo/proj/XADC_Demo.runs/synth_1/dont_touch.xdc2default:defaultZ20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:002default:default2
649.9922default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
NS_reg2default:default2
DS18B202default:defaultZ8-802h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
rSftCnt2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
DqDir2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
DqDir2default:default2
42default:default2
52default:defaultZ8-5544h px? 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
DqDir2default:defaultZ8-5546h px? 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
TimingEn2default:defaultZ8-5546h px? 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
TimingEn2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
DqOut2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
DqOut2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
ReadData2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
NS2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
NS2default:default2
42default:default2
52default:defaultZ8-5544h px? 
r
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
NS2default:defaultZ8-5546h px? 
r
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
NS2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
NS2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
NS2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
NS2default:default2
12default:default2
52default:defaultZ8-5544h px? 
r
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
NS2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
NS2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
NS2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
NS2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
NS2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
NS2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_cnt2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	clk_400Hz2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
duan2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
duan02default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 CMDIDLE |                  000000000000001 |                             1100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RSTIDLE |                  000000000000010 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  RSTPUL |                  000000000000100 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RSTWAIT |                  000000000001000 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  RSTPRE |                  000000000010000 |                             0011
2default:defaulth p
x
? 
?
%s
*synth2s
_                  CMDFUN |                  000000000100000 |                             1101
2default:defaulth p
x
? 
?
%s
*synth2s
_                WIREIDLE |                  000000001000000 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 WIREPUL |                  000000010000000 |                             0101
2default:defaulth p
x
? 
?
%s
*synth2s
_                 WIREBIT |                  000000100000000 |                             0110
2default:defaulth p
x
? 
?
%s
*synth2s
_                 WIRESFT |                  000001000000000 |                             0111
2default:defaulth p
x
? 
?
%s
*synth2s
_                 CMDDELY |                  000010000000000 |                             1110
2default:defaulth p
x
? 
?
%s
*synth2s
_                READIDLE |                  000100000000000 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 READPUL |                  001000000000000 |                             1001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 READBIT |                  010000000000000 |                             1010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 READSFT |                  100000000000000 |                             1011
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
NS_reg2default:default2
one-hot2default:default2
DS18B202default:defaultZ8-3354h px? 
?
!inferring latch for variable '%s'327*oasys2
duan_reg2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
4852default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	duan3_reg2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
5572default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	duan0_reg2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
4852default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	duan1_reg2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
5092default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	duan2_reg2default:default2^
HE:/download/FPGA/XADC_Demo/proj/XADC_Demo.srcs/sources_1/new/topdesign.v2default:default2
5332default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     33 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               33 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     33 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  40 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 20    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input      1 Bit        Muxes := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
>
%s
*synth2&
Module topdesign 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module DS18B20 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 3     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  40 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input      1 Bit        Muxes := 18    
2default:defaulth p
x
? 
=
%s
*synth2%
Module XADCdemo 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     33 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               33 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     33 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
:
%s
*synth2"
Module B_BCD 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     10 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
Module mux2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
A
%s
*synth2)
Module smg_ip_model 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Start Parallel Synthesis Optimization  : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"Start Cross Boundary Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
	W1/da_reg2default:default2
162default:default2
82default:default2C
-E:/download/FPGA/XADC_Demo/src/hdl/XADCdemo.v2default:default2
1242default:default8@Z8-3936h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
W0/ReadData2default:default2
42default:default2
52default:defaultZ8-5544h px? 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
W0/DqDir2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

W0/rSftCnt2default:defaultZ8-5546h px? 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
W0/TimingEn2default:defaultZ8-5546h px? 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
W0/TimingEn2default:defaultZ8-5546h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

U4/clk_cnt2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2 
U4/clk_400Hz2default:default2
322default:default2
252default:defaultZ8-5545h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Parallel Reinference  : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,
Start Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2'
\W0/WireCmd_reg[0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2*
\W1/Address_in_reg[1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2*
\W1/Address_in_reg[2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2*
\W1/Address_in_reg[4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\W1/da_reg[0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\W1/da_reg[1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2%
\U4/duan2_reg[7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2%
\U4/duan1_reg[7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2%
\U4/duan0_reg[7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2%
\U4/duan3_reg[7] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2#
\W1/LED_reg[0] 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
U4/duan3_reg[7]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
U4/duan0_reg[7]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
U4/duan1_reg[7]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
U4/duan2_reg[7]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
W0/WireCmd_reg[0]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
W1/LED_reg[0]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
W1/Address_in_reg[4]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
W1/Address_in_reg[2]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
W1/Address_in_reg[1]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
W0/DataH_reg[7]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
W0/DataH_reg[6]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
W0/DataH_reg[5]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
W0/DataH_reg[4]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
W1/show_reg[6]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
W1/show_reg[7]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
W1/show_reg[8]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
W1/show_reg[9]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
W1/show_reg[10]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
W1/show_reg[11]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
W1/show_reg[12]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
W1/show_reg[13]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
W1/show_reg[14]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
W1/show_reg[15]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
W1/da_reg[1]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
W1/da_reg[0]2default:default2
	topdesign2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
W0/rSftCnt_reg[3]2default:default2
	topdesign2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
zFinished Area Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Area Optimization  : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Technology Mapping Optimization  : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Synthesis Optimization  : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
	di_in[15]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
	di_in[14]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
	di_in[13]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
	di_in[12]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
	di_in[11]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
	di_in[10]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
di_in[9]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
di_in[8]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
di_in[7]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
di_in[6]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
di_in[5]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
di_in[4]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
di_in[3]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
di_in[2]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
di_in[1]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
di_in[0]2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
dwe_in2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
vp_in2default:defaultZ8-4442h px? 
?
*BlackBox module %s has unconnected pin %s
3599*oasys2
\W1/XLXI_7 2default:default2
vn_in2default:defaultZ8-4442h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |xadc_wiz_0    |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|      |Cell            |Count |
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|1     |xadc_wiz_0_bbox |     1|
2default:defaulth px? 
M
%s*synth25
!|2     |BUFG            |     1|
2default:defaulth px? 
M
%s*synth25
!|3     |CARRY4          |    39|
2default:defaulth px? 
M
%s*synth25
!|4     |LUT1            |   136|
2default:defaulth px? 
M
%s*synth25
!|5     |LUT2            |    36|
2default:defaulth px? 
M
%s*synth25
!|6     |LUT3            |    25|
2default:defaulth px? 
M
%s*synth25
!|7     |LUT4            |    56|
2default:defaulth px? 
M
%s*synth25
!|8     |LUT5            |    54|
2default:defaulth px? 
M
%s*synth25
!|9     |LUT6            |   109|
2default:defaulth px? 
M
%s*synth25
!|10    |FDCE            |    50|
2default:defaulth px? 
M
%s*synth25
!|11    |FDPE            |     2|
2default:defaulth px? 
M
%s*synth25
!|12    |FDRE            |   163|
2default:defaulth px? 
M
%s*synth25
!|13    |LD              |    36|
2default:defaulth px? 
M
%s*synth25
!|14    |IBUF            |    15|
2default:defaulth px? 
M
%s*synth25
!|15    |IOBUF           |     1|
2default:defaulth px? 
M
%s*synth25
!|16    |OBUF            |    28|
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
T
%s
*synth2<
(+------+---------+-------------+------+
2default:defaulth p
x
? 
T
%s
*synth2<
(|      |Instance |Module       |Cells |
2default:defaulth p
x
? 
T
%s
*synth2<
(+------+---------+-------------+------+
2default:defaulth p
x
? 
T
%s
*synth2<
(|1     |top      |             |   777|
2default:defaulth p
x
? 
T
%s
*synth2<
(|2     |  U4     |smg_ip_model |   195|
2default:defaulth p
x
? 
T
%s
*synth2<
(|3     |  W0     |DS18B20      |   226|
2default:defaulth p
x
? 
T
%s
*synth2<
(|4     |  W1     |XADCdemo     |   309|
2default:defaulth p
x
? 
T
%s
*synth2<
(+------+---------+-------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 19 critical warnings and 32 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:22 ; elapsed = 00:00:27 . Memory (MB): peak = 649.992 ; gain = 107.027
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:36 ; elapsed = 00:00:38 . Memory (MB): peak = 649.992 ; gain = 442.832
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
912default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
!Unisim Transformation Summary:
%s111*project2?
s  A total of 37 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 1 instances
  LD => LDCE: 36 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
762default:default2
442default:default2
192default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:332default:default2
00:00:342default:default2
649.9922default:default2
403.9532default:defaultZ17-268h px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.016 . Memory (MB): peak = 649.992 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Dec 17 02:07:43 20162default:defaultZ17-206h px? 


End Record