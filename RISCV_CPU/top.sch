<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(31:0)">
        </signal>
        <signal name="XLXN_9(31:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="XLXN_25(6:0)" />
        <signal name="XLXN_26(3:0)" />
        <signal name="XLXN_27(6:0)" />
        <signal name="XLXN_42(31:0)" />
        <signal name="V">
        </signal>
        <signal name="N">
        </signal>
        <signal name="C">
        </signal>
        <signal name="XLXN_65" />
        <signal name="XLXN_108(31:0)" />
        <signal name="RST" />
        <signal name="XLXN_64" />
        <signal name="B(31:0)">
        </signal>
        <signal name="XLXN_232(31:0)" />
        <signal name="XLXN_233(31:0)" />
        <signal name="XLXN_243(31:0)" />
        <signal name="XLXN_245(31:0)" />
        <signal name="CLK" />
        <signal name="XLXN_257(4:0)" />
        <signal name="XLXN_258(4:0)" />
        <signal name="XLXN_259(4:0)" />
        <signal name="XLXN_261" />
        <signal name="XLXN_263(31:0)" />
        <signal name="XLXN_118(31:0)" />
        <signal name="Z">
        </signal>
        <signal name="XLXN_266(2:0)" />
        <signal name="ADDRESS_MISALIGNED" />
        <signal name="XLXN_269" />
        <signal name="XLXN_271" />
        <signal name="XLXN_272(2:0)" />
        <signal name="XLXN_319(31:0)" />
        <signal name="XLXN_320" />
        <signal name="XLXN_321" />
        <signal name="XLXN_326(1:0)" />
        <signal name="XLXN_327" />
        <signal name="XLXN_328" />
        <signal name="RS232_Uart_RX" />
        <signal name="RS232_Uart_TX" />
        <signal name="SW(7:0)" />
        <signal name="LED(7:0)" />
        <signal name="SEG(7:0)" />
        <signal name="AN(7:0)" />
        <signal name="XLXN_335" />
        <signal name="GPIO(15:0)" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="ADDRESS_MISALIGNED" />
        <port polarity="Input" name="RS232_Uart_RX" />
        <port polarity="Output" name="RS232_Uart_TX" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="SEG(7:0)" />
        <port polarity="Output" name="AN(7:0)" />
        <port polarity="BiDirectional" name="GPIO(15:0)" />
        <blockdef name="InstrDecode">
            <timestamp>2022-3-21T14:26:15</timestamp>
            <rect width="336" x="64" y="-448" height="448" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="400" y="-428" height="24" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="Controller">
            <timestamp>2022-4-17T8:16:27</timestamp>
            <line x2="0" y1="736" y2="736" x1="64" />
            <rect width="64" x="320" y="660" height="24" />
            <line x2="384" y1="672" y2="672" x1="320" />
            <line x2="384" y1="544" y2="544" x1="320" />
            <rect width="64" x="320" y="596" height="24" />
            <line x2="384" y1="608" y2="608" x1="320" />
            <line x2="0" y1="480" y2="480" x1="64" />
            <line x2="0" y1="416" y2="416" x1="64" />
            <line x2="0" y1="352" y2="352" x1="64" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="960" />
        </blockdef>
        <blockdef name="RegFile">
            <timestamp>2022-3-23T13:48:33</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-384" height="512" />
        </blockdef>
        <blockdef name="BusMux2">
            <timestamp>2022-3-21T14:26:22</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="192" y1="0" y2="32" x1="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2022-3-28T11:35:32</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2022-3-23T13:49:19</timestamp>
            <rect width="64" x="320" y="340" height="24" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="576" />
        </blockdef>
        <blockdef name="BranchLogic">
            <timestamp>2022-3-28T13:26:15</timestamp>
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="256" x="64" y="-384" height="576" />
        </blockdef>
        <blockdef name="InstrCache">
            <timestamp>2022-3-28T12:48:17</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="256" />
        </blockdef>
        <blockdef name="CacheTop">
            <timestamp>2022-4-17T10:52:59</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="512" />
        </blockdef>
        <blockdef name="IoCtl">
            <timestamp>2022-4-17T11:16:17</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-400" y2="-400" x1="320" />
            <rect width="64" x="320" y="-332" height="24" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <rect width="64" x="320" y="-252" height="24" />
            <line x2="384" y1="-240" y2="-240" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-92" height="24" />
            <line x2="384" y1="-80" y2="-80" x1="320" />
            <rect width="256" x="64" y="-512" height="576" />
        </blockdef>
        <blockdef name="BusMux3">
            <timestamp>2022-4-17T8:0:44</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="IoCtl" name="XLXI_54">
            <blockpin signalname="XLXN_320" name="WE" />
            <blockpin signalname="XLXN_321" name="RREQ" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="RS232_Uart_RX" name="RX" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="B(31:0)" name="DIN(31:0)" />
            <blockpin signalname="XLXN_232(31:0)" name="ADDR(31:0)" />
            <blockpin signalname="SW(7:0)" name="SW(7:0)" />
            <blockpin signalname="GPIO(15:0)" name="GPIO(15:0)" />
            <blockpin signalname="XLXN_327" name="RDY" />
            <blockpin signalname="RS232_Uart_TX" name="TX" />
            <blockpin signalname="XLXN_319(31:0)" name="DO(31:0)" />
            <blockpin signalname="SEG(7:0)" name="SSGD(7:0)" />
            <blockpin signalname="AN(7:0)" name="SSGS(7:0)" />
            <blockpin signalname="LED(7:0)" name="LED(7:0)" />
        </block>
        <block symbolname="RegFile" name="XLXI_5">
            <blockpin signalname="XLXN_261" name="WE" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_257(4:0)" name="AW(4:0)" />
            <blockpin signalname="XLXN_259(4:0)" name="AR(4:0)" />
            <blockpin signalname="XLXN_258(4:0)" name="BR(4:0)" />
            <blockpin signalname="XLXN_263(31:0)" name="D(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_10">
            <blockpin signalname="XLXN_9(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="OP(3:0)" />
            <blockpin signalname="V" name="V" />
            <blockpin signalname="Z" name="Z" />
            <blockpin signalname="N" name="N" />
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_232(31:0)" name="R(31:0)" />
        </block>
        <block symbolname="BusMux2" name="XLXI_18">
            <blockpin signalname="XLXN_65" name="SEL" />
            <blockpin signalname="A(31:0)" name="IN1(31:0)" />
            <blockpin signalname="XLXN_245(31:0)" name="IN2(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="R(31:0)" />
        </block>
        <block symbolname="PC" name="XLXI_19">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_243(31:0)" name="INCR(31:0)" />
            <blockpin signalname="XLXN_245(31:0)" name="PC(31:0)" />
        </block>
        <block symbolname="InstrDecode" name="XLXI_2">
            <blockpin signalname="XLXN_108(31:0)" name="INSTR(31:0)" />
            <blockpin signalname="XLXN_25(6:0)" name="FUNCT7(6:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="FUNCT3(3:0)" />
            <blockpin signalname="XLXN_27(6:0)" name="OPCODE(6:0)" />
            <blockpin signalname="XLXN_118(31:0)" name="IMM(31:0)" />
            <blockpin signalname="XLXN_259(4:0)" name="RS1(4:0)" />
            <blockpin signalname="XLXN_258(4:0)" name="RS2_SHAMT(4:0)" />
            <blockpin signalname="XLXN_257(4:0)" name="RD(4:0)" />
        </block>
        <block symbolname="InstrCache" name="XLXI_21">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_243(31:0)" name="PC(31:0)" />
            <blockpin signalname="XLXN_108(31:0)" name="INSTR(31:0)" />
        </block>
        <block symbolname="CacheTop" name="XLXI_22">
            <blockpin signalname="XLXN_320" name="WE" />
            <blockpin signalname="XLXN_321" name="RREQ" />
            <blockpin signalname="XLXN_271" name="SIGNED" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_232(31:0)" name="ADDR(31:0)" />
            <blockpin signalname="B(31:0)" name="DIN(31:0)" />
            <blockpin signalname="XLXN_272(2:0)" name="LIM(2:0)" />
            <blockpin signalname="XLXN_328" name="RDY" />
            <blockpin signalname="XLXN_233(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="BranchLogic" name="XLXI_20">
            <blockpin signalname="XLXN_269" name="HOLD" />
            <blockpin signalname="Z" name="Z" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_118(31:0)" name="IMM(31:0)" />
            <blockpin signalname="A(31:0)" name="RS1(31:0)" />
            <blockpin signalname="XLXN_245(31:0)" name="PC(31:0)" />
            <blockpin signalname="XLXN_263(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_266(2:0)" name="OPCODE(2:0)" />
            <blockpin signalname="ADDRESS_MISALIGNED" name="MSL" />
            <blockpin signalname="XLXN_243(31:0)" name="INCR(31:0)" />
        </block>
        <block symbolname="BusMux3" name="XLXI_56">
            <blockpin signalname="XLXN_232(31:0)" name="IN1(31:0)" />
            <blockpin signalname="XLXN_233(31:0)" name="IN2(31:0)" />
            <blockpin signalname="XLXN_319(31:0)" name="IN3(31:0)" />
            <blockpin signalname="XLXN_326(1:0)" name="SEL(1:0)" />
            <blockpin signalname="XLXN_263(31:0)" name="R(31:0)" />
        </block>
        <block symbolname="Controller" name="XLXI_57">
            <blockpin signalname="XLXN_328" name="RDY" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_25(6:0)" name="FUNCT7(6:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="FUNCT3(3:0)" />
            <blockpin signalname="XLXN_27(6:0)" name="OPCODE(6:0)" />
            <blockpin signalname="XLXN_269" name="HOLD" />
            <blockpin signalname="XLXN_65" name="SELA" />
            <blockpin signalname="XLXN_64" name="SELB" />
            <blockpin signalname="XLXN_261" name="WE" />
            <blockpin signalname="XLXN_320" name="CWE" />
            <blockpin signalname="XLXN_321" name="RREQ" />
            <blockpin signalname="XLXN_271" name="SIGNED" />
            <blockpin signalname="XLXN_272(2:0)" name="LIM(2:0)" />
            <blockpin signalname="XLXN_326(1:0)" name="CMUXSEL(1:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="OP(3:0)" />
            <blockpin signalname="XLXN_266(2:0)" name="OP_B(2:0)" />
            <blockpin signalname="XLXN_327" name="RDY_IO" />
        </block>
        <block symbolname="BusMux2" name="XLXI_17">
            <blockpin signalname="XLXN_64" name="SEL" />
            <blockpin signalname="B(31:0)" name="IN1(31:0)" />
            <blockpin signalname="XLXN_118(31:0)" name="IN2(31:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="R(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="1488" type="branch" />
            <wire x2="992" y1="1232" y2="1440" x1="992" />
            <wire x2="2336" y1="1440" y2="1440" x1="992" />
            <wire x2="2336" y1="1440" y2="1488" x1="2336" />
            <wire x2="2336" y1="1488" y2="1568" x1="2336" />
            <wire x2="2640" y1="1568" y2="1568" x1="2336" />
            <wire x2="2640" y1="1568" y2="1696" x1="2640" />
            <wire x2="2656" y1="1696" y2="1696" x1="2640" />
            <wire x2="2416" y1="1488" y2="1488" x1="2336" />
            <wire x2="1056" y1="1232" y2="1232" x1="992" />
            <wire x2="2336" y1="1568" y2="1568" x1="2176" />
        </branch>
        <branch name="XLXN_9(31:0)">
            <wire x2="3408" y1="1696" y2="1696" x1="3040" />
        </branch>
        <branch name="XLXN_12(3:0)">
            <wire x2="3280" y1="2624" y2="2624" x1="3136" />
            <wire x2="3280" y1="1952" y2="2624" x1="3280" />
            <wire x2="3408" y1="1952" y2="1952" x1="3280" />
        </branch>
        <branch name="XLXN_25(6:0)">
            <wire x2="2016" y1="2160" y2="2160" x1="1312" />
            <wire x2="2016" y1="2160" y2="2496" x1="2016" />
            <wire x2="2752" y1="2496" y2="2496" x1="2016" />
        </branch>
        <branch name="XLXN_26(3:0)">
            <wire x2="2000" y1="2224" y2="2224" x1="1312" />
            <wire x2="2000" y1="2224" y2="2560" x1="2000" />
            <wire x2="2752" y1="2560" y2="2560" x1="2000" />
        </branch>
        <branch name="XLXN_27(6:0)">
            <wire x2="1984" y1="2288" y2="2288" x1="1312" />
            <wire x2="1984" y1="2288" y2="2624" x1="1984" />
            <wire x2="2752" y1="2624" y2="2624" x1="1984" />
        </branch>
        <branch name="XLXN_42(31:0)">
            <wire x2="3104" y1="2064" y2="2064" x1="2784" />
            <wire x2="3104" y1="1824" y2="2064" x1="3104" />
            <wire x2="3408" y1="1824" y2="1824" x1="3104" />
        </branch>
        <instance x="1792" y="1920" name="XLXI_5" orien="R0">
        </instance>
        <instance x="3408" y="1984" name="XLXI_10" orien="R0">
        </instance>
        <branch name="V">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3936" y="1696" type="branch" />
            <wire x2="3936" y1="1696" y2="1696" x1="3792" />
        </branch>
        <branch name="N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3936" y="1824" type="branch" />
            <wire x2="3936" y1="1824" y2="1824" x1="3792" />
        </branch>
        <branch name="C">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3936" y="1888" type="branch" />
            <wire x2="3936" y1="1888" y2="1888" x1="3792" />
        </branch>
        <instance x="2656" y="1856" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_65">
            <wire x2="2848" y1="1888" y2="1968" x1="2848" />
            <wire x2="3184" y1="1968" y2="1968" x1="2848" />
            <wire x2="3184" y1="1968" y2="2496" x1="3184" />
            <wire x2="3184" y1="2496" y2="2496" x1="3136" />
        </branch>
        <instance x="368" y="1008" name="XLXI_19" orien="R0">
        </instance>
        <instance x="848" y="2576" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_108(31:0)">
            <wire x2="848" y1="2160" y2="2160" x1="816" />
        </branch>
        <instance x="432" y="2192" name="XLXI_21" orien="R0">
        </instance>
        <branch name="RST">
            <wire x2="304" y1="736" y2="1232" x1="304" />
            <wire x2="368" y1="1232" y2="1232" x1="304" />
            <wire x2="944" y1="736" y2="736" x1="304" />
            <wire x2="944" y1="736" y2="784" x1="944" />
            <wire x2="944" y1="784" y2="1952" x1="944" />
            <wire x2="1456" y1="1952" y2="1952" x1="944" />
            <wire x2="1792" y1="1952" y2="1952" x1="1456" />
            <wire x2="1456" y1="1952" y2="2448" x1="1456" />
            <wire x2="1712" y1="2448" y2="2448" x1="1456" />
            <wire x2="1712" y1="2448" y2="3072" x1="1712" />
            <wire x2="2752" y1="3072" y2="3072" x1="1712" />
            <wire x2="3952" y1="2448" y2="2448" x1="1712" />
            <wire x2="4256" y1="2448" y2="2448" x1="3952" />
            <wire x2="3952" y1="2448" y2="3152" x1="3952" />
            <wire x2="4240" y1="3152" y2="3152" x1="3952" />
            <wire x2="1056" y1="784" y2="784" x1="944" />
            <wire x2="944" y1="784" y2="784" x1="896" />
        </branch>
        <instance x="4256" y="2672" name="XLXI_22" orien="R0">
        </instance>
        <branch name="XLXN_64">
            <wire x2="2592" y1="2256" y2="2336" x1="2592" />
            <wire x2="3200" y1="2336" y2="2336" x1="2592" />
            <wire x2="3200" y1="2336" y2="2560" x1="3200" />
            <wire x2="3200" y1="2560" y2="2560" x1="3136" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1936" type="branch" />
            <wire x2="2384" y1="1888" y2="1888" x1="2176" />
            <wire x2="3216" y1="1888" y2="1888" x1="2384" />
            <wire x2="3216" y1="1888" y2="2640" x1="3216" />
            <wire x2="4000" y1="2640" y2="2640" x1="3216" />
            <wire x2="4256" y1="2640" y2="2640" x1="4000" />
            <wire x2="4000" y1="2640" y2="3344" x1="4000" />
            <wire x2="4240" y1="3344" y2="3344" x1="4000" />
            <wire x2="2384" y1="1888" y2="1936" x1="2384" />
            <wire x2="2464" y1="1936" y2="1936" x1="2384" />
            <wire x2="2384" y1="1936" y2="2064" x1="2384" />
            <wire x2="2400" y1="2064" y2="2064" x1="2384" />
        </branch>
        <branch name="XLXN_232(31:0)">
            <wire x2="4000" y1="2016" y2="2016" x1="3792" />
            <wire x2="4000" y1="2016" y2="2576" x1="4000" />
            <wire x2="4112" y1="2576" y2="2576" x1="4000" />
            <wire x2="4256" y1="2576" y2="2576" x1="4112" />
            <wire x2="4112" y1="2576" y2="3408" x1="4112" />
            <wire x2="4240" y1="3408" y2="3408" x1="4112" />
            <wire x2="4496" y1="2016" y2="2016" x1="4000" />
            <wire x2="4736" y1="1888" y2="1888" x1="4496" />
            <wire x2="4496" y1="1888" y2="2016" x1="4496" />
        </branch>
        <branch name="XLXN_233(31:0)">
            <wire x2="4736" y1="1952" y2="1952" x1="4544" />
            <wire x2="4544" y1="1952" y2="2224" x1="4544" />
            <wire x2="4768" y1="2224" y2="2224" x1="4544" />
            <wire x2="4768" y1="2224" y2="2640" x1="4768" />
            <wire x2="4768" y1="2640" y2="2640" x1="4640" />
        </branch>
        <branch name="XLXN_243(31:0)">
            <wire x2="336" y1="496" y2="976" x1="336" />
            <wire x2="368" y1="976" y2="976" x1="336" />
            <wire x2="336" y1="976" y2="2160" x1="336" />
            <wire x2="432" y1="2160" y2="2160" x1="336" />
            <wire x2="1504" y1="496" y2="496" x1="336" />
            <wire x2="1504" y1="496" y2="720" x1="1504" />
            <wire x2="1504" y1="720" y2="720" x1="1440" />
        </branch>
        <branch name="XLXN_245(31:0)">
            <wire x2="1056" y1="912" y2="912" x1="752" />
            <wire x2="752" y1="912" y2="1360" x1="752" />
            <wire x2="2240" y1="1360" y2="1360" x1="752" />
            <wire x2="2240" y1="1360" y2="1792" x1="2240" />
            <wire x2="2656" y1="1792" y2="1792" x1="2240" />
        </branch>
        <branch name="CLK">
            <wire x2="352" y1="2352" y2="2352" x1="288" />
            <wire x2="352" y1="2352" y2="3136" x1="352" />
            <wire x2="1952" y1="3136" y2="3136" x1="352" />
            <wire x2="2752" y1="3136" y2="3136" x1="1952" />
            <wire x2="1952" y1="3136" y2="3536" x1="1952" />
            <wire x2="3184" y1="3536" y2="3536" x1="1952" />
            <wire x2="368" y1="848" y2="848" x1="352" />
            <wire x2="352" y1="848" y2="1632" x1="352" />
            <wire x2="1792" y1="1632" y2="1632" x1="352" />
            <wire x2="352" y1="1632" y2="2224" x1="352" />
            <wire x2="432" y1="2224" y2="2224" x1="352" />
            <wire x2="352" y1="2224" y2="2352" x1="352" />
            <wire x2="4080" y1="2512" y2="2512" x1="3184" />
            <wire x2="4256" y1="2512" y2="2512" x1="4080" />
            <wire x2="4080" y1="2512" y2="3280" x1="4080" />
            <wire x2="4240" y1="3280" y2="3280" x1="4080" />
            <wire x2="3184" y1="2512" y2="3536" x1="3184" />
        </branch>
        <branch name="XLXN_257(4:0)">
            <wire x2="1552" y1="2544" y2="2544" x1="1312" />
            <wire x2="1552" y1="1696" y2="2544" x1="1552" />
            <wire x2="1792" y1="1696" y2="1696" x1="1552" />
        </branch>
        <branch name="XLXN_258(4:0)">
            <wire x2="1520" y1="2480" y2="2480" x1="1312" />
            <wire x2="1520" y1="1824" y2="2480" x1="1520" />
            <wire x2="1792" y1="1824" y2="1824" x1="1520" />
        </branch>
        <branch name="XLXN_259(4:0)">
            <wire x2="1536" y1="2416" y2="2416" x1="1312" />
            <wire x2="1536" y1="1760" y2="2416" x1="1536" />
            <wire x2="1792" y1="1760" y2="1760" x1="1536" />
        </branch>
        <branch name="XLXN_261">
            <wire x2="1792" y1="1568" y2="1568" x1="1712" />
            <wire x2="1712" y1="1568" y2="2272" x1="1712" />
            <wire x2="3152" y1="2272" y2="2272" x1="1712" />
            <wire x2="3152" y1="2272" y2="2688" x1="3152" />
            <wire x2="3152" y1="2688" y2="2688" x1="3136" />
        </branch>
        <branch name="XLXN_263(31:0)">
            <wire x2="1056" y1="976" y2="976" x1="1040" />
            <wire x2="1040" y1="976" y2="1312" x1="1040" />
            <wire x2="1040" y1="1312" y2="1888" x1="1040" />
            <wire x2="1792" y1="1888" y2="1888" x1="1040" />
            <wire x2="5136" y1="1312" y2="1312" x1="1040" />
            <wire x2="5136" y1="1312" y2="1888" x1="5136" />
            <wire x2="5136" y1="1888" y2="1888" x1="5120" />
        </branch>
        <branch name="XLXN_118(31:0)">
            <wire x2="976" y1="688" y2="688" x1="64" />
            <wire x2="976" y1="688" y2="848" x1="976" />
            <wire x2="1056" y1="848" y2="848" x1="976" />
            <wire x2="64" y1="688" y2="2896" x1="64" />
            <wire x2="1424" y1="2896" y2="2896" x1="64" />
            <wire x2="1424" y1="2352" y2="2352" x1="1312" />
            <wire x2="2080" y1="2352" y2="2352" x1="1424" />
            <wire x2="1424" y1="2352" y2="2896" x1="1424" />
            <wire x2="2080" y1="2160" y2="2352" x1="2080" />
            <wire x2="2400" y1="2160" y2="2160" x1="2080" />
        </branch>
        <branch name="Z">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3936" y="1760" type="branch" />
            <wire x2="3808" y1="400" y2="400" x1="992" />
            <wire x2="3808" y1="400" y2="1760" x1="3808" />
            <wire x2="3936" y1="1760" y2="1760" x1="3808" />
            <wire x2="992" y1="400" y2="720" x1="992" />
            <wire x2="1056" y1="720" y2="720" x1="992" />
            <wire x2="3808" y1="1760" y2="1760" x1="3792" />
        </branch>
        <instance x="1056" y="1072" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_266(2:0)">
            <wire x2="1024" y1="608" y2="1040" x1="1024" />
            <wire x2="1056" y1="1040" y2="1040" x1="1024" />
            <wire x2="3296" y1="608" y2="608" x1="1024" />
            <wire x2="3296" y1="608" y2="2752" x1="3296" />
            <wire x2="3296" y1="2752" y2="2752" x1="3136" />
        </branch>
        <branch name="ADDRESS_MISALIGNED">
            <wire x2="1472" y1="1168" y2="1168" x1="1440" />
        </branch>
        <branch name="XLXN_269">
            <wire x2="3264" y1="528" y2="528" x1="1008" />
            <wire x2="3264" y1="528" y2="3008" x1="3264" />
            <wire x2="1008" y1="528" y2="1104" x1="1008" />
            <wire x2="1056" y1="1104" y2="1104" x1="1008" />
            <wire x2="3264" y1="3008" y2="3008" x1="3136" />
        </branch>
        <branch name="XLXN_271">
            <wire x2="3760" y1="3200" y2="3200" x1="3136" />
            <wire x2="4256" y1="2768" y2="2768" x1="3760" />
            <wire x2="3760" y1="2768" y2="3200" x1="3760" />
        </branch>
        <branch name="XLXN_272(2:0)">
            <wire x2="3824" y1="3264" y2="3264" x1="3136" />
            <wire x2="4256" y1="2832" y2="2832" x1="3824" />
            <wire x2="3824" y1="2832" y2="3264" x1="3824" />
        </branch>
        <instance x="4736" y="2112" name="XLXI_56" orien="R0">
        </instance>
        <iomarker fontsize="28" x="896" y="784" name="RST" orien="R180" />
        <iomarker fontsize="28" x="288" y="2352" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1168" name="ADDRESS_MISALIGNED" orien="R0" />
        <instance x="4240" y="3504" name="XLXI_54" orien="R0">
        </instance>
        <branch name="XLXN_319(31:0)">
            <wire x2="4704" y1="3184" y2="3184" x1="4624" />
            <wire x2="4736" y1="2016" y2="2016" x1="4704" />
            <wire x2="4704" y1="2016" y2="3184" x1="4704" />
        </branch>
        <branch name="XLXN_320">
            <wire x2="3696" y1="2816" y2="2816" x1="3136" />
            <wire x2="3696" y1="2384" y2="2816" x1="3696" />
            <wire x2="3872" y1="2384" y2="2384" x1="3696" />
            <wire x2="4256" y1="2384" y2="2384" x1="3872" />
            <wire x2="3872" y1="2384" y2="3024" x1="3872" />
            <wire x2="4240" y1="3024" y2="3024" x1="3872" />
        </branch>
        <branch name="XLXN_321">
            <wire x2="3712" y1="2944" y2="2944" x1="3136" />
            <wire x2="3712" y1="2704" y2="2944" x1="3712" />
            <wire x2="3920" y1="2704" y2="2704" x1="3712" />
            <wire x2="4256" y1="2704" y2="2704" x1="3920" />
            <wire x2="3920" y1="2704" y2="3088" x1="3920" />
            <wire x2="4240" y1="3088" y2="3088" x1="3920" />
        </branch>
        <branch name="XLXN_326(1:0)">
            <wire x2="3536" y1="3328" y2="3328" x1="3136" />
            <wire x2="3536" y1="2080" y2="3328" x1="3536" />
            <wire x2="4736" y1="2080" y2="2080" x1="3536" />
        </branch>
        <instance x="2752" y="2656" name="XLXI_57" orien="R0">
        </instance>
        <branch name="XLXN_327">
            <wire x2="2752" y1="3392" y2="3392" x1="2704" />
            <wire x2="2704" y1="3392" y2="3712" x1="2704" />
            <wire x2="4688" y1="3712" y2="3712" x1="2704" />
            <wire x2="4688" y1="3024" y2="3024" x1="4624" />
            <wire x2="4688" y1="3024" y2="3712" x1="4688" />
        </branch>
        <branch name="XLXN_328">
            <wire x2="2752" y1="3008" y2="3008" x1="2672" />
            <wire x2="2672" y1="3008" y2="3632" x1="2672" />
            <wire x2="4864" y1="3632" y2="3632" x1="2672" />
            <wire x2="4864" y1="2384" y2="2384" x1="4640" />
            <wire x2="4864" y1="2384" y2="3632" x1="4864" />
        </branch>
        <branch name="RS232_Uart_RX">
            <wire x2="3952" y1="3472" y2="3472" x1="3888" />
            <wire x2="3952" y1="3216" y2="3472" x1="3952" />
            <wire x2="4240" y1="3216" y2="3216" x1="3952" />
        </branch>
        <branch name="RS232_Uart_TX">
            <wire x2="4640" y1="3104" y2="3104" x1="4624" />
            <wire x2="4944" y1="3104" y2="3104" x1="4640" />
        </branch>
        <iomarker fontsize="28" x="4944" y="3104" name="RS232_Uart_TX" orien="R0" />
        <iomarker fontsize="28" x="3888" y="3472" name="RS232_Uart_RX" orien="R180" />
        <branch name="SW(7:0)">
            <wire x2="4240" y1="3472" y2="3472" x1="4208" />
        </branch>
        <iomarker fontsize="28" x="4208" y="3472" name="SW(7:0)" orien="R180" />
        <branch name="LED(7:0)">
            <wire x2="4640" y1="3536" y2="3536" x1="4624" />
            <wire x2="4928" y1="3536" y2="3536" x1="4640" />
        </branch>
        <iomarker fontsize="28" x="4928" y="3536" name="LED(7:0)" orien="R0" />
        <branch name="SEG(7:0)">
            <wire x2="4640" y1="3264" y2="3264" x1="4624" />
            <wire x2="4944" y1="3264" y2="3264" x1="4640" />
        </branch>
        <iomarker fontsize="28" x="4944" y="3264" name="SEG(7:0)" orien="R0" />
        <branch name="AN(7:0)">
            <wire x2="4640" y1="3344" y2="3344" x1="4624" />
            <wire x2="4944" y1="3344" y2="3344" x1="4640" />
        </branch>
        <iomarker fontsize="28" x="4944" y="3344" name="AN(7:0)" orien="R0" />
        <branch name="GPIO(15:0)">
            <wire x2="4640" y1="3424" y2="3424" x1="4624" />
            <wire x2="4928" y1="3424" y2="3424" x1="4640" />
        </branch>
        <iomarker fontsize="28" x="4928" y="3424" name="GPIO(15:0)" orien="R0" />
        <instance x="2400" y="2224" name="XLXI_17" orien="R0">
        </instance>
    </sheet>
</drawing>