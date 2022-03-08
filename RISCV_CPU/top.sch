<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="B(31:0)" />
        <signal name="A(31:0)" />
        <signal name="XLXN_7(31:0)" />
        <signal name="XLXN_9(31:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="XLXN_25(6:0)" />
        <signal name="XLXN_26(3:0)" />
        <signal name="XLXN_27(6:0)" />
        <signal name="IMM(31:0)" />
        <signal name="AR(4:0)" />
        <signal name="BR(4:0)" />
        <signal name="AW(4:0)" />
        <signal name="WE" />
        <signal name="CLK" />
        <signal name="INSTR(31:0)" />
        <signal name="XLXN_42(31:0)" />
        <signal name="DBO(31:0)" />
        <signal name="DBR(4:0)" />
        <signal name="V" />
        <signal name="Z" />
        <signal name="N" />
        <signal name="C" />
        <signal name="D(31:0)" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <port polarity="Output" name="B(31:0)" />
        <port polarity="Output" name="A(31:0)" />
        <port polarity="Output" name="IMM(31:0)" />
        <port polarity="Output" name="AR(4:0)" />
        <port polarity="Output" name="BR(4:0)" />
        <port polarity="Output" name="AW(4:0)" />
        <port polarity="Output" name="WE" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="INSTR(31:0)" />
        <port polarity="Output" name="DBO(31:0)" />
        <port polarity="Input" name="DBR(4:0)" />
        <port polarity="Output" name="V" />
        <port polarity="Output" name="Z" />
        <port polarity="Output" name="N" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="D(31:0)" />
        <blockdef name="InstrDecode">
            <timestamp>2022-3-8T12:20:24</timestamp>
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
            <timestamp>2022-3-8T12:35:59</timestamp>
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
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="RegFile">
            <timestamp>2022-3-8T12:12:13</timestamp>
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
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
            <rect width="256" x="64" y="-384" height="576" />
        </blockdef>
        <blockdef name="BusMux2">
            <timestamp>2022-3-8T12:36:23</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="192" y1="0" y2="32" x1="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2022-3-8T12:28:11</timestamp>
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
        <block symbolname="InstrDecode" name="XLXI_2">
            <blockpin signalname="INSTR(31:0)" name="INSTR(31:0)" />
            <blockpin signalname="XLXN_25(6:0)" name="FUNCT7(6:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="FUNCT3(3:0)" />
            <blockpin signalname="XLXN_27(6:0)" name="OPCODE(6:0)" />
            <blockpin signalname="IMM(31:0)" name="IMM(31:0)" />
            <blockpin signalname="AR(4:0)" name="RS1(4:0)" />
            <blockpin signalname="BR(4:0)" name="RS2_SHAMT(4:0)" />
            <blockpin signalname="AW(4:0)" name="RD(4:0)" />
        </block>
        <block symbolname="Controller" name="XLXI_3">
            <blockpin signalname="XLXN_25(6:0)" name="FUNCT7(6:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="FUNCT3(3:0)" />
            <blockpin signalname="XLXN_27(6:0)" name="OPCODE(6:0)" />
            <blockpin signalname="XLXN_65" name="SELA" />
            <blockpin signalname="XLXN_64" name="SELB" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="XLXN_12(3:0)" name="OP(3:0)" />
        </block>
        <block symbolname="RegFile" name="XLXI_5">
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="AW(4:0)" name="AW(4:0)" />
            <blockpin signalname="AR(4:0)" name="AR(4:0)" />
            <blockpin signalname="BR(4:0)" name="BR(4:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="DBR(4:0)" name="DBR(4:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="DBO(31:0)" name="DBO(31:0)" />
        </block>
        <block symbolname="constant" name="XLXI_9">
            <attr value="420" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_7(31:0)" name="O" />
        </block>
        <block symbolname="ALU" name="XLXI_10">
            <blockpin signalname="XLXN_9(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_12(3:0)" name="OP(3:0)" />
            <blockpin signalname="V" name="V" />
            <blockpin signalname="Z" name="Z" />
            <blockpin signalname="N" name="N" />
            <blockpin signalname="C" name="C" />
            <blockpin signalname="D(31:0)" name="R(31:0)" />
        </block>
        <block symbolname="BusMux2" name="XLXI_17">
            <blockpin signalname="XLXN_64" name="SEL" />
            <blockpin signalname="B(31:0)" name="IN1(31:0)" />
            <blockpin signalname="IMM(31:0)" name="IN2(31:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="R(31:0)" />
        </block>
        <block symbolname="BusMux2" name="XLXI_18">
            <blockpin signalname="XLXN_65" name="SEL" />
            <blockpin signalname="A(31:0)" name="IN1(31:0)" />
            <blockpin signalname="XLXN_7(31:0)" name="IN2(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="R(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2176" y="1808" name="XLXI_3" orien="R0">
        </instance>
        <branch name="B(31:0)">
            <wire x2="1808" y1="1040" y2="1040" x1="1600" />
            <wire x2="1808" y1="1040" y2="1216" x1="1808" />
            <wire x2="1824" y1="1216" y2="1216" x1="1808" />
            <wire x2="1920" y1="1040" y2="1040" x1="1808" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="1760" y1="720" y2="720" x1="1600" />
            <wire x2="2064" y1="720" y2="720" x1="1760" />
            <wire x2="2064" y1="720" y2="848" x1="2064" />
            <wire x2="2080" y1="848" y2="848" x1="2064" />
            <wire x2="1760" y1="640" y2="720" x1="1760" />
            <wire x2="1840" y1="640" y2="640" x1="1760" />
        </branch>
        <instance x="1856" y="912" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_7(31:0)">
            <wire x2="2080" y1="944" y2="944" x1="2000" />
        </branch>
        <branch name="XLXN_9(31:0)">
            <wire x2="2832" y1="848" y2="848" x1="2464" />
        </branch>
        <branch name="XLXN_12(3:0)">
            <wire x2="2704" y1="1776" y2="1776" x1="2560" />
            <wire x2="2704" y1="1104" y2="1776" x1="2704" />
            <wire x2="2832" y1="1104" y2="1104" x1="2704" />
        </branch>
        <branch name="XLXN_25(6:0)">
            <wire x2="1440" y1="1312" y2="1312" x1="736" />
            <wire x2="1440" y1="1312" y2="1648" x1="1440" />
            <wire x2="2176" y1="1648" y2="1648" x1="1440" />
        </branch>
        <branch name="XLXN_26(3:0)">
            <wire x2="1424" y1="1376" y2="1376" x1="736" />
            <wire x2="1424" y1="1376" y2="1712" x1="1424" />
            <wire x2="2176" y1="1712" y2="1712" x1="1424" />
        </branch>
        <branch name="XLXN_27(6:0)">
            <wire x2="1408" y1="1440" y2="1440" x1="736" />
            <wire x2="1408" y1="1440" y2="1776" x1="1408" />
            <wire x2="2176" y1="1776" y2="1776" x1="1408" />
        </branch>
        <branch name="IMM(31:0)">
            <wire x2="1072" y1="1504" y2="1504" x1="736" />
            <wire x2="1808" y1="1504" y2="1504" x1="1072" />
            <wire x2="1072" y1="1504" y2="1600" x1="1072" />
            <wire x2="1136" y1="1600" y2="1600" x1="1072" />
            <wire x2="1824" y1="1312" y2="1312" x1="1808" />
            <wire x2="1808" y1="1312" y2="1504" x1="1808" />
        </branch>
        <branch name="AR(4:0)">
            <wire x2="272" y1="672" y2="912" x1="272" />
            <wire x2="960" y1="912" y2="912" x1="272" />
            <wire x2="960" y1="912" y2="1568" x1="960" />
            <wire x2="1216" y1="912" y2="912" x1="960" />
            <wire x2="384" y1="672" y2="672" x1="272" />
            <wire x2="960" y1="1568" y2="1568" x1="736" />
        </branch>
        <branch name="BR(4:0)">
            <wire x2="224" y1="608" y2="976" x1="224" />
            <wire x2="944" y1="976" y2="976" x1="224" />
            <wire x2="944" y1="976" y2="1632" x1="944" />
            <wire x2="1216" y1="976" y2="976" x1="944" />
            <wire x2="384" y1="608" y2="608" x1="224" />
            <wire x2="944" y1="1632" y2="1632" x1="736" />
        </branch>
        <branch name="AW(4:0)">
            <wire x2="320" y1="736" y2="848" x1="320" />
            <wire x2="976" y1="848" y2="848" x1="320" />
            <wire x2="976" y1="848" y2="1696" x1="976" />
            <wire x2="1216" y1="848" y2="848" x1="976" />
            <wire x2="384" y1="736" y2="736" x1="320" />
            <wire x2="976" y1="1696" y2="1696" x1="736" />
        </branch>
        <branch name="CLK">
            <wire x2="1216" y1="784" y2="784" x1="816" />
        </branch>
        <branch name="INSTR(31:0)">
            <wire x2="272" y1="1312" y2="1312" x1="256" />
        </branch>
        <instance x="272" y="1728" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="256" y="1312" name="INSTR(31:0)" orien="R180" />
        <branch name="XLXN_42(31:0)">
            <wire x2="2528" y1="1216" y2="1216" x1="2208" />
            <wire x2="2528" y1="976" y2="1216" x1="2528" />
            <wire x2="2832" y1="976" y2="976" x1="2528" />
        </branch>
        <instance x="1216" y="1072" name="XLXI_5" orien="R0">
        </instance>
        <branch name="WE">
            <wire x2="880" y1="640" y2="720" x1="880" />
            <wire x2="1088" y1="720" y2="720" x1="880" />
            <wire x2="1216" y1="720" y2="720" x1="1088" />
            <wire x2="912" y1="640" y2="640" x1="880" />
            <wire x2="1088" y1="496" y2="720" x1="1088" />
            <wire x2="3312" y1="496" y2="496" x1="1088" />
            <wire x2="3312" y1="496" y2="1840" x1="3312" />
            <wire x2="3312" y1="1840" y2="1840" x1="2560" />
        </branch>
        <instance x="2832" y="1136" name="XLXI_10" orien="R0">
        </instance>
        <branch name="DBO(31:0)">
            <wire x2="1632" y1="1232" y2="1232" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="1632" y="1232" name="DBO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="816" y="784" name="CLK" orien="R180" />
        <branch name="DBR(4:0)">
            <wire x2="1216" y1="1232" y2="1232" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1232" name="DBR(4:0)" orien="R180" />
        <branch name="V">
            <wire x2="3232" y1="848" y2="848" x1="3216" />
            <wire x2="3360" y1="848" y2="848" x1="3232" />
        </branch>
        <branch name="Z">
            <wire x2="3232" y1="912" y2="912" x1="3216" />
            <wire x2="3360" y1="912" y2="912" x1="3232" />
        </branch>
        <branch name="N">
            <wire x2="3232" y1="976" y2="976" x1="3216" />
            <wire x2="3360" y1="976" y2="976" x1="3232" />
        </branch>
        <branch name="C">
            <wire x2="3232" y1="1040" y2="1040" x1="3216" />
            <wire x2="3360" y1="1040" y2="1040" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3360" y="848" name="V" orien="R0" />
        <iomarker fontsize="28" x="3360" y="912" name="Z" orien="R0" />
        <iomarker fontsize="28" x="3360" y="976" name="N" orien="R0" />
        <iomarker fontsize="28" x="3360" y="1040" name="C" orien="R0" />
        <iomarker fontsize="28" x="1840" y="640" name="A(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1040" name="B(31:0)" orien="R0" />
        <iomarker fontsize="28" x="912" y="640" name="WE" orien="R0" />
        <iomarker fontsize="28" x="384" y="736" name="AW(4:0)" orien="R0" />
        <iomarker fontsize="28" x="384" y="672" name="AR(4:0)" orien="R0" />
        <iomarker fontsize="28" x="384" y="608" name="BR(4:0)" orien="R0" />
        <iomarker fontsize="28" x="1136" y="1600" name="IMM(31:0)" orien="R0" />
        <branch name="D(31:0)">
            <wire x2="1136" y1="544" y2="1040" x1="1136" />
            <wire x2="1216" y1="1040" y2="1040" x1="1136" />
            <wire x2="3296" y1="544" y2="544" x1="1136" />
            <wire x2="3296" y1="544" y2="1168" x1="3296" />
            <wire x2="3360" y1="1168" y2="1168" x1="3296" />
            <wire x2="3296" y1="1168" y2="1168" x1="3216" />
        </branch>
        <iomarker fontsize="28" x="3360" y="1168" name="D(31:0)" orien="R0" />
        <instance x="1824" y="1376" name="XLXI_17" orien="R0">
        </instance>
        <instance x="2080" y="1008" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_64">
            <wire x2="2016" y1="1408" y2="1488" x1="2016" />
            <wire x2="2624" y1="1488" y2="1488" x1="2016" />
            <wire x2="2624" y1="1488" y2="1712" x1="2624" />
            <wire x2="2624" y1="1712" y2="1712" x1="2560" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="2272" y1="1040" y2="1120" x1="2272" />
            <wire x2="2608" y1="1120" y2="1120" x1="2272" />
            <wire x2="2608" y1="1120" y2="1648" x1="2608" />
            <wire x2="2608" y1="1648" y2="1648" x1="2560" />
        </branch>
    </sheet>
</drawing>