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
        <signal name="XLXN_9(31:0)" />
        <signal name="XLXN_12(3:0)" />
        <signal name="XLXN_25(6:0)" />
        <signal name="XLXN_26(3:0)" />
        <signal name="XLXN_27(6:0)" />
        <signal name="AR(4:0)" />
        <signal name="BR(4:0)" />
        <signal name="AW(4:0)" />
        <signal name="XLXN_42(31:0)" />
        <signal name="WE" />
        <signal name="V" />
        <signal name="N" />
        <signal name="C" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="Z" />
        <signal name="XLXN_108(31:0)" />
        <signal name="XLXN_110(2:0)" />
        <signal name="CLK" />
        <signal name="RST" />
        <signal name="XLXN_118(31:0)" />
        <signal name="D(31:0)" />
        <signal name="XLXN_125(31:0)" />
        <signal name="XLXN_126(31:0)" />
        <signal name="XLXN_127" />
        <port polarity="Output" name="B(31:0)" />
        <port polarity="Output" name="A(31:0)" />
        <port polarity="Output" name="AR(4:0)" />
        <port polarity="Output" name="BR(4:0)" />
        <port polarity="Output" name="AW(4:0)" />
        <port polarity="Output" name="WE" />
        <port polarity="Output" name="V" />
        <port polarity="Output" name="N" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="Z" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RST" />
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
            <timestamp>2022-3-15T13:33:51</timestamp>
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
            <rect width="256" x="64" y="-192" height="320" />
        </blockdef>
        <blockdef name="RegFile">
            <timestamp>2022-3-17T8:27:16</timestamp>
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
            <rect width="256" x="64" y="-384" height="448" />
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
        <blockdef name="PC">
            <timestamp>2022-3-16T12:53:52</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="BranchLogic">
            <timestamp>2022-3-16T12:53:57</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
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
        </blockdef>
        <blockdef name="InstrCache">
            <timestamp>2022-3-16T12:50:32</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="192" />
        </blockdef>
        <block symbolname="Controller" name="XLXI_3">
            <blockpin signalname="XLXN_25(6:0)" name="FUNCT7(6:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="FUNCT3(3:0)" />
            <blockpin signalname="XLXN_27(6:0)" name="OPCODE(6:0)" />
            <blockpin signalname="XLXN_65" name="SELA" />
            <blockpin signalname="XLXN_64" name="SELB" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="XLXN_12(3:0)" name="OP(3:0)" />
            <blockpin signalname="XLXN_110(2:0)" name="OP_B(2:0)" />
        </block>
        <block symbolname="InstrDecode" name="XLXI_2">
            <blockpin signalname="XLXN_108(31:0)" name="INSTR(31:0)" />
            <blockpin signalname="XLXN_25(6:0)" name="FUNCT7(6:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="FUNCT3(3:0)" />
            <blockpin signalname="XLXN_27(6:0)" name="OPCODE(6:0)" />
            <blockpin signalname="XLXN_118(31:0)" name="IMM(31:0)" />
            <blockpin signalname="AR(4:0)" name="RS1(4:0)" />
            <blockpin signalname="BR(4:0)" name="RS2_SHAMT(4:0)" />
            <blockpin signalname="AW(4:0)" name="RD(4:0)" />
        </block>
        <block symbolname="RegFile" name="XLXI_5">
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="AW(4:0)" name="AW(4:0)" />
            <blockpin signalname="AR(4:0)" name="AR(4:0)" />
            <blockpin signalname="BR(4:0)" name="BR(4:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
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
            <blockpin signalname="D(31:0)" name="R(31:0)" />
        </block>
        <block symbolname="BusMux2" name="XLXI_17">
            <blockpin signalname="XLXN_64" name="SEL" />
            <blockpin signalname="B(31:0)" name="IN1(31:0)" />
            <blockpin signalname="XLXN_118(31:0)" name="IN2(31:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="R(31:0)" />
        </block>
        <block symbolname="BusMux2" name="XLXI_18">
            <blockpin signalname="XLXN_65" name="SEL" />
            <blockpin signalname="A(31:0)" name="IN1(31:0)" />
            <blockpin signalname="XLXN_125(31:0)" name="IN2(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="R(31:0)" />
        </block>
        <block symbolname="BranchLogic" name="XLXI_20">
            <blockpin signalname="Z" name="Z" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_118(31:0)" name="IMM(31:0)" />
            <blockpin signalname="XLXN_125(31:0)" name="PC(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_110(2:0)" name="OPCODE(2:0)" />
            <blockpin signalname="XLXN_126(31:0)" name="INCR(31:0)" />
        </block>
        <block symbolname="PC" name="XLXI_19">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_126(31:0)" name="INCR(31:0)" />
            <blockpin signalname="XLXN_125(31:0)" name="PC(31:0)" />
        </block>
        <block symbolname="InstrCache" name="XLXI_21">
            <blockpin signalname="XLXN_126(31:0)" name="PC(31:0)" />
            <blockpin signalname="XLXN_108(31:0)" name="INSTR(31:0)" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3008" y="2992" name="XLXI_3" orien="R0">
        </instance>
        <branch name="B(31:0)">
            <wire x2="2640" y1="2224" y2="2224" x1="2432" />
            <wire x2="2640" y1="2224" y2="2400" x1="2640" />
            <wire x2="2656" y1="2400" y2="2400" x1="2640" />
            <wire x2="2752" y1="2224" y2="2224" x1="2640" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="2592" y1="1904" y2="1904" x1="2432" />
            <wire x2="2896" y1="1904" y2="1904" x1="2592" />
            <wire x2="2896" y1="1904" y2="2032" x1="2896" />
            <wire x2="2912" y1="2032" y2="2032" x1="2896" />
            <wire x2="2592" y1="1824" y2="1904" x1="2592" />
            <wire x2="2672" y1="1824" y2="1824" x1="2592" />
        </branch>
        <branch name="XLXN_9(31:0)">
            <wire x2="3664" y1="2032" y2="2032" x1="3296" />
        </branch>
        <branch name="XLXN_12(3:0)">
            <wire x2="3536" y1="2960" y2="2960" x1="3392" />
            <wire x2="3536" y1="2288" y2="2960" x1="3536" />
            <wire x2="3664" y1="2288" y2="2288" x1="3536" />
        </branch>
        <branch name="XLXN_25(6:0)">
            <wire x2="2272" y1="2496" y2="2496" x1="1568" />
            <wire x2="2272" y1="2496" y2="2832" x1="2272" />
            <wire x2="3008" y1="2832" y2="2832" x1="2272" />
        </branch>
        <branch name="XLXN_26(3:0)">
            <wire x2="2256" y1="2560" y2="2560" x1="1568" />
            <wire x2="2256" y1="2560" y2="2896" x1="2256" />
            <wire x2="3008" y1="2896" y2="2896" x1="2256" />
        </branch>
        <branch name="XLXN_27(6:0)">
            <wire x2="2240" y1="2624" y2="2624" x1="1568" />
            <wire x2="2240" y1="2624" y2="2960" x1="2240" />
            <wire x2="3008" y1="2960" y2="2960" x1="2240" />
        </branch>
        <branch name="AR(4:0)">
            <wire x2="1104" y1="1856" y2="2096" x1="1104" />
            <wire x2="1792" y1="2096" y2="2096" x1="1104" />
            <wire x2="2048" y1="2096" y2="2096" x1="1792" />
            <wire x2="1792" y1="2096" y2="2752" x1="1792" />
            <wire x2="1216" y1="1856" y2="1856" x1="1104" />
            <wire x2="1792" y1="2752" y2="2752" x1="1568" />
        </branch>
        <branch name="BR(4:0)">
            <wire x2="1056" y1="1792" y2="2160" x1="1056" />
            <wire x2="1776" y1="2160" y2="2160" x1="1056" />
            <wire x2="2048" y1="2160" y2="2160" x1="1776" />
            <wire x2="1776" y1="2160" y2="2816" x1="1776" />
            <wire x2="1216" y1="1792" y2="1792" x1="1056" />
            <wire x2="1776" y1="2816" y2="2816" x1="1568" />
        </branch>
        <branch name="AW(4:0)">
            <wire x2="1152" y1="1920" y2="2032" x1="1152" />
            <wire x2="1808" y1="2032" y2="2032" x1="1152" />
            <wire x2="2048" y1="2032" y2="2032" x1="1808" />
            <wire x2="1808" y1="2032" y2="2880" x1="1808" />
            <wire x2="1216" y1="1920" y2="1920" x1="1152" />
            <wire x2="1808" y1="2880" y2="2880" x1="1568" />
        </branch>
        <branch name="XLXN_42(31:0)">
            <wire x2="3360" y1="2400" y2="2400" x1="3040" />
            <wire x2="3360" y1="2160" y2="2400" x1="3360" />
            <wire x2="3664" y1="2160" y2="2160" x1="3360" />
        </branch>
        <instance x="2048" y="2256" name="XLXI_5" orien="R0">
        </instance>
        <branch name="WE">
            <wire x2="1712" y1="1824" y2="1904" x1="1712" />
            <wire x2="1920" y1="1904" y2="1904" x1="1712" />
            <wire x2="2048" y1="1904" y2="1904" x1="1920" />
            <wire x2="1744" y1="1824" y2="1824" x1="1712" />
            <wire x2="1920" y1="1680" y2="1904" x1="1920" />
            <wire x2="4144" y1="1680" y2="1680" x1="1920" />
            <wire x2="4144" y1="1680" y2="3024" x1="4144" />
            <wire x2="4144" y1="3024" y2="3024" x1="3392" />
        </branch>
        <instance x="3664" y="2320" name="XLXI_10" orien="R0">
        </instance>
        <branch name="V">
            <wire x2="4192" y1="2032" y2="2032" x1="4048" />
        </branch>
        <branch name="N">
            <wire x2="4192" y1="2160" y2="2160" x1="4048" />
        </branch>
        <branch name="C">
            <wire x2="4192" y1="2224" y2="2224" x1="4048" />
        </branch>
        <instance x="2656" y="2560" name="XLXI_17" orien="R0">
        </instance>
        <instance x="2912" y="2192" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_64">
            <wire x2="2848" y1="2592" y2="2672" x1="2848" />
            <wire x2="3456" y1="2672" y2="2672" x1="2848" />
            <wire x2="3456" y1="2672" y2="2896" x1="3456" />
            <wire x2="3456" y1="2896" y2="2896" x1="3392" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="3104" y1="2224" y2="2304" x1="3104" />
            <wire x2="3440" y1="2304" y2="2304" x1="3104" />
            <wire x2="3440" y1="2304" y2="2832" x1="3440" />
            <wire x2="3440" y1="2832" y2="2832" x1="3392" />
        </branch>
        <iomarker fontsize="28" x="4192" y="2032" name="V" orien="R0" />
        <iomarker fontsize="28" x="4192" y="2096" name="Z" orien="R0" />
        <iomarker fontsize="28" x="4192" y="2160" name="N" orien="R0" />
        <iomarker fontsize="28" x="4192" y="2224" name="C" orien="R0" />
        <iomarker fontsize="28" x="2672" y="1824" name="A(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2752" y="2224" name="B(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1744" y="1824" name="WE" orien="R0" />
        <iomarker fontsize="28" x="1216" y="1920" name="AW(4:0)" orien="R0" />
        <iomarker fontsize="28" x="1216" y="1856" name="AR(4:0)" orien="R0" />
        <iomarker fontsize="28" x="1216" y="1792" name="BR(4:0)" orien="R0" />
        <iomarker fontsize="28" x="4192" y="2352" name="D(31:0)" orien="R0" />
        <instance x="1312" y="1408" name="XLXI_20" orien="R0">
        </instance>
        <instance x="624" y="1344" name="XLXI_19" orien="R0">
        </instance>
        <instance x="1104" y="2912" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Z">
            <wire x2="4064" y1="736" y2="736" x1="1248" />
            <wire x2="4064" y1="736" y2="2096" x1="4064" />
            <wire x2="4192" y1="2096" y2="2096" x1="4064" />
            <wire x2="1248" y1="736" y2="1056" x1="1248" />
            <wire x2="1312" y1="1056" y2="1056" x1="1248" />
            <wire x2="4064" y1="2096" y2="2096" x1="4048" />
        </branch>
        <branch name="XLXN_108(31:0)">
            <wire x2="1104" y1="2496" y2="2496" x1="1072" />
        </branch>
        <instance x="688" y="2528" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_110(2:0)">
            <wire x2="1312" y1="1376" y2="1376" x1="1264" />
            <wire x2="1264" y1="1376" y2="1504" x1="1264" />
            <wire x2="4400" y1="1504" y2="1504" x1="1264" />
            <wire x2="4400" y1="1504" y2="3088" x1="4400" />
            <wire x2="4400" y1="3088" y2="3088" x1="3392" />
        </branch>
        <branch name="CLK">
            <wire x2="624" y1="1184" y2="1184" x1="464" />
            <wire x2="464" y1="1184" y2="1968" x1="464" />
            <wire x2="464" y1="1968" y2="2560" x1="464" />
            <wire x2="688" y1="2560" y2="2560" x1="464" />
            <wire x2="848" y1="1968" y2="1968" x1="464" />
            <wire x2="2048" y1="1968" y2="1968" x1="848" />
            <wire x2="848" y1="1728" y2="1728" x1="784" />
            <wire x2="848" y1="1728" y2="1968" x1="848" />
        </branch>
        <branch name="RST">
            <wire x2="1200" y1="1120" y2="1120" x1="1152" />
            <wire x2="1296" y1="1120" y2="1120" x1="1200" />
            <wire x2="1312" y1="1120" y2="1120" x1="1296" />
            <wire x2="1200" y1="1120" y2="2288" x1="1200" />
            <wire x2="2048" y1="2288" y2="2288" x1="1200" />
        </branch>
        <branch name="XLXN_118(31:0)">
            <wire x2="1232" y1="1472" y2="1472" x1="320" />
            <wire x2="320" y1="1472" y2="3232" x1="320" />
            <wire x2="1680" y1="3232" y2="3232" x1="320" />
            <wire x2="1312" y1="1184" y2="1184" x1="1232" />
            <wire x2="1232" y1="1184" y2="1472" x1="1232" />
            <wire x2="1680" y1="2688" y2="2688" x1="1568" />
            <wire x2="2336" y1="2688" y2="2688" x1="1680" />
            <wire x2="1680" y1="2688" y2="3232" x1="1680" />
            <wire x2="2336" y1="2496" y2="2688" x1="2336" />
            <wire x2="2656" y1="2496" y2="2496" x1="2336" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="1008" y1="1312" y2="2224" x1="1008" />
            <wire x2="1456" y1="2224" y2="2224" x1="1008" />
            <wire x2="2048" y1="2224" y2="2224" x1="1456" />
            <wire x2="1312" y1="1312" y2="1312" x1="1008" />
            <wire x2="1456" y1="1728" y2="2224" x1="1456" />
            <wire x2="4112" y1="1728" y2="1728" x1="1456" />
            <wire x2="4112" y1="1728" y2="2352" x1="4112" />
            <wire x2="4192" y1="2352" y2="2352" x1="4112" />
            <wire x2="4112" y1="2352" y2="2352" x1="4048" />
        </branch>
        <branch name="XLXN_125(31:0)">
            <wire x2="1152" y1="1184" y2="1184" x1="1008" />
            <wire x2="1152" y1="1184" y2="1248" x1="1152" />
            <wire x2="1312" y1="1248" y2="1248" x1="1152" />
            <wire x2="1152" y1="1248" y2="1584" x1="1152" />
            <wire x2="2496" y1="1584" y2="1584" x1="1152" />
            <wire x2="2496" y1="1584" y2="2128" x1="2496" />
            <wire x2="2912" y1="2128" y2="2128" x1="2496" />
        </branch>
        <branch name="XLXN_126(31:0)">
            <wire x2="1760" y1="672" y2="672" x1="544" />
            <wire x2="1760" y1="672" y2="1056" x1="1760" />
            <wire x2="544" y1="672" y2="1312" x1="544" />
            <wire x2="624" y1="1312" y2="1312" x1="544" />
            <wire x2="544" y1="1312" y2="2496" x1="544" />
            <wire x2="688" y1="2496" y2="2496" x1="544" />
            <wire x2="1760" y1="1056" y2="1056" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="784" y="1728" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1152" y="1120" name="RST" orien="R180" />
    </sheet>
</drawing>