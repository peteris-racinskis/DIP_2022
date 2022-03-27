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
        <signal name="RST" />
        <signal name="XLXN_118(31:0)" />
        <signal name="XLXN_226" />
        <signal name="XLXN_232(31:0)" />
        <signal name="XLXN_233(31:0)" />
        <signal name="D(31:0)" />
        <signal name="XLXN_237" />
        <signal name="XLXN_241" />
        <signal name="XLXN_243(31:0)" />
        <signal name="XLXN_245(31:0)" />
        <signal name="XLXN_247" />
        <signal name="XLXN_248" />
        <signal name="XLXN_251" />
        <signal name="XLXN_252" />
        <signal name="CLK" />
        <signal name="XLXN_254" />
        <signal name="XLXN_255" />
        <signal name="XLXN_256" />
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
        <port polarity="Input" name="RST" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Input" name="CLK" />
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
            <timestamp>2022-3-27T13:11:4</timestamp>
            <line x2="0" y1="480" y2="480" x1="64" />
            <line x2="0" y1="416" y2="416" x1="64" />
            <line x2="0" y1="352" y2="352" x1="64" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="384" y1="224" y2="224" x1="320" />
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
            <rect width="256" x="64" y="-192" height="704" />
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
            <timestamp>2022-3-23T12:50:32</timestamp>
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
            <timestamp>2022-3-23T14:15:16</timestamp>
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
            <rect width="256" x="64" y="-384" height="448" />
        </blockdef>
        <blockdef name="InstrCache">
            <timestamp>2022-3-23T13:47:16</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="256" />
        </blockdef>
        <blockdef name="CacheTop">
            <timestamp>2022-3-23T16:50:38</timestamp>
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
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <block symbolname="Controller" name="XLXI_3">
            <blockpin signalname="XLXN_247" name="RDY" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_25(6:0)" name="FUNCT7(6:0)" />
            <blockpin signalname="XLXN_26(3:0)" name="FUNCT3(3:0)" />
            <blockpin signalname="XLXN_27(6:0)" name="OPCODE(6:0)" />
            <blockpin signalname="XLXN_248" name="HOLD" />
            <blockpin signalname="XLXN_65" name="SELA" />
            <blockpin signalname="XLXN_64" name="SELB" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="XLXN_226" name="CWE" />
            <blockpin signalname="XLXN_241" name="RREQ" />
            <blockpin signalname="XLXN_237" name="CMUXSEL" />
            <blockpin signalname="XLXN_12(3:0)" name="OP(3:0)" />
            <blockpin signalname="XLXN_110(2:0)" name="OP_B(2:0)" />
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
            <blockpin signalname="XLXN_232(31:0)" name="R(31:0)" />
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
            <blockpin signalname="XLXN_245(31:0)" name="IN2(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="R(31:0)" />
        </block>
        <block symbolname="BranchLogic" name="XLXI_20">
            <blockpin signalname="XLXN_248" name="HOLD" />
            <blockpin signalname="Z" name="Z" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_118(31:0)" name="IMM(31:0)" />
            <blockpin signalname="XLXN_245(31:0)" name="PC(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_110(2:0)" name="OPCODE(2:0)" />
            <blockpin signalname="XLXN_243(31:0)" name="INCR(31:0)" />
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
            <blockpin signalname="AR(4:0)" name="RS1(4:0)" />
            <blockpin signalname="BR(4:0)" name="RS2_SHAMT(4:0)" />
            <blockpin signalname="AW(4:0)" name="RD(4:0)" />
        </block>
        <block symbolname="InstrCache" name="XLXI_21">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_243(31:0)" name="PC(31:0)" />
            <blockpin signalname="XLXN_108(31:0)" name="INSTR(31:0)" />
        </block>
        <block symbolname="CacheTop" name="XLXI_22">
            <blockpin signalname="XLXN_226" name="WE" />
            <blockpin signalname="XLXN_241" name="RREQ" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_232(31:0)" name="ADDR(31:0)" />
            <blockpin signalname="B(31:0)" name="DIN(31:0)" />
            <blockpin signalname="XLXN_247" name="RDY" />
            <blockpin signalname="XLXN_233(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="BusMux2" name="XLXI_53">
            <blockpin signalname="XLXN_237" name="SEL" />
            <blockpin signalname="XLXN_232(31:0)" name="IN1(31:0)" />
            <blockpin signalname="XLXN_233(31:0)" name="IN2(31:0)" />
            <blockpin signalname="D(31:0)" name="R(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="2784" y="3008" name="XLXI_3" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <wire x2="2368" y1="1920" y2="1920" x1="2208" />
            <wire x2="2672" y1="1920" y2="1920" x1="2368" />
            <wire x2="2672" y1="1920" y2="2048" x1="2672" />
            <wire x2="2688" y1="2048" y2="2048" x1="2672" />
            <wire x2="2368" y1="1840" y2="1920" x1="2368" />
            <wire x2="2448" y1="1840" y2="1840" x1="2368" />
        </branch>
        <branch name="XLXN_9(31:0)">
            <wire x2="3440" y1="2048" y2="2048" x1="3072" />
        </branch>
        <branch name="XLXN_12(3:0)">
            <wire x2="3312" y1="2976" y2="2976" x1="3168" />
            <wire x2="3312" y1="2304" y2="2976" x1="3312" />
            <wire x2="3440" y1="2304" y2="2304" x1="3312" />
        </branch>
        <branch name="XLXN_25(6:0)">
            <wire x2="2048" y1="2512" y2="2512" x1="1344" />
            <wire x2="2048" y1="2512" y2="2848" x1="2048" />
            <wire x2="2784" y1="2848" y2="2848" x1="2048" />
        </branch>
        <branch name="XLXN_26(3:0)">
            <wire x2="2032" y1="2576" y2="2576" x1="1344" />
            <wire x2="2032" y1="2576" y2="2912" x1="2032" />
            <wire x2="2784" y1="2912" y2="2912" x1="2032" />
        </branch>
        <branch name="XLXN_27(6:0)">
            <wire x2="2016" y1="2640" y2="2640" x1="1344" />
            <wire x2="2016" y1="2640" y2="2976" x1="2016" />
            <wire x2="2784" y1="2976" y2="2976" x1="2016" />
        </branch>
        <branch name="AR(4:0)">
            <wire x2="880" y1="1872" y2="2112" x1="880" />
            <wire x2="1568" y1="2112" y2="2112" x1="880" />
            <wire x2="1824" y1="2112" y2="2112" x1="1568" />
            <wire x2="1568" y1="2112" y2="2768" x1="1568" />
            <wire x2="992" y1="1872" y2="1872" x1="880" />
            <wire x2="1568" y1="2768" y2="2768" x1="1344" />
        </branch>
        <branch name="BR(4:0)">
            <wire x2="832" y1="1808" y2="2176" x1="832" />
            <wire x2="1552" y1="2176" y2="2176" x1="832" />
            <wire x2="1824" y1="2176" y2="2176" x1="1552" />
            <wire x2="1552" y1="2176" y2="2832" x1="1552" />
            <wire x2="992" y1="1808" y2="1808" x1="832" />
            <wire x2="1552" y1="2832" y2="2832" x1="1344" />
        </branch>
        <branch name="AW(4:0)">
            <wire x2="928" y1="1936" y2="2048" x1="928" />
            <wire x2="1584" y1="2048" y2="2048" x1="928" />
            <wire x2="1824" y1="2048" y2="2048" x1="1584" />
            <wire x2="1584" y1="2048" y2="2896" x1="1584" />
            <wire x2="992" y1="1936" y2="1936" x1="928" />
            <wire x2="1584" y1="2896" y2="2896" x1="1344" />
        </branch>
        <branch name="XLXN_42(31:0)">
            <wire x2="3136" y1="2416" y2="2416" x1="2816" />
            <wire x2="3136" y1="2176" y2="2416" x1="3136" />
            <wire x2="3440" y1="2176" y2="2176" x1="3136" />
        </branch>
        <instance x="1824" y="2272" name="XLXI_5" orien="R0">
        </instance>
        <branch name="WE">
            <wire x2="1488" y1="1840" y2="1920" x1="1488" />
            <wire x2="1696" y1="1920" y2="1920" x1="1488" />
            <wire x2="1824" y1="1920" y2="1920" x1="1696" />
            <wire x2="1520" y1="1840" y2="1840" x1="1488" />
            <wire x2="1696" y1="1696" y2="1920" x1="1696" />
            <wire x2="3920" y1="1696" y2="1696" x1="1696" />
            <wire x2="3920" y1="1696" y2="3040" x1="3920" />
            <wire x2="3920" y1="3040" y2="3040" x1="3168" />
        </branch>
        <instance x="3440" y="2336" name="XLXI_10" orien="R0">
        </instance>
        <branch name="V">
            <wire x2="3968" y1="2048" y2="2048" x1="3824" />
        </branch>
        <branch name="N">
            <wire x2="3968" y1="2176" y2="2176" x1="3824" />
        </branch>
        <branch name="C">
            <wire x2="3968" y1="2240" y2="2240" x1="3824" />
        </branch>
        <instance x="2688" y="2208" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_65">
            <wire x2="2880" y1="2240" y2="2320" x1="2880" />
            <wire x2="3216" y1="2320" y2="2320" x1="2880" />
            <wire x2="3216" y1="2320" y2="2848" x1="3216" />
            <wire x2="3216" y1="2848" y2="2848" x1="3168" />
        </branch>
        <instance x="1088" y="1424" name="XLXI_20" orien="R0">
        </instance>
        <instance x="400" y="1360" name="XLXI_19" orien="R0">
        </instance>
        <instance x="880" y="2928" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Z">
            <wire x2="3840" y1="752" y2="752" x1="1024" />
            <wire x2="3840" y1="752" y2="2112" x1="3840" />
            <wire x2="3968" y1="2112" y2="2112" x1="3840" />
            <wire x2="1024" y1="752" y2="1072" x1="1024" />
            <wire x2="1088" y1="1072" y2="1072" x1="1024" />
            <wire x2="3840" y1="2112" y2="2112" x1="3824" />
        </branch>
        <branch name="XLXN_108(31:0)">
            <wire x2="880" y1="2512" y2="2512" x1="848" />
        </branch>
        <instance x="464" y="2544" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_110(2:0)">
            <wire x2="1088" y1="1392" y2="1392" x1="1040" />
            <wire x2="1040" y1="1392" y2="1520" x1="1040" />
            <wire x2="4176" y1="1520" y2="1520" x1="1040" />
            <wire x2="4176" y1="1520" y2="3104" x1="4176" />
            <wire x2="4176" y1="3104" y2="3104" x1="3168" />
        </branch>
        <branch name="RST">
            <wire x2="336" y1="1088" y2="1584" x1="336" />
            <wire x2="400" y1="1584" y2="1584" x1="336" />
            <wire x2="976" y1="1088" y2="1088" x1="336" />
            <wire x2="976" y1="1088" y2="1136" x1="976" />
            <wire x2="976" y1="1136" y2="2304" x1="976" />
            <wire x2="1488" y1="2304" y2="2304" x1="976" />
            <wire x2="1824" y1="2304" y2="2304" x1="1488" />
            <wire x2="1488" y1="2304" y2="2800" x1="1488" />
            <wire x2="1744" y1="2800" y2="2800" x1="1488" />
            <wire x2="4288" y1="2800" y2="2800" x1="1744" />
            <wire x2="1744" y1="2800" y2="3424" x1="1744" />
            <wire x2="2784" y1="3424" y2="3424" x1="1744" />
            <wire x2="1088" y1="1136" y2="1136" x1="976" />
            <wire x2="976" y1="1136" y2="1136" x1="928" />
        </branch>
        <instance x="4288" y="3024" name="XLXI_22" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3968" y="2048" name="V" orien="R0" />
        <iomarker fontsize="28" x="3968" y="2112" name="Z" orien="R0" />
        <iomarker fontsize="28" x="3968" y="2176" name="N" orien="R0" />
        <iomarker fontsize="28" x="3968" y="2240" name="C" orien="R0" />
        <iomarker fontsize="28" x="2448" y="1840" name="A(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1520" y="1840" name="WE" orien="R0" />
        <iomarker fontsize="28" x="992" y="1936" name="AW(4:0)" orien="R0" />
        <iomarker fontsize="28" x="992" y="1872" name="AR(4:0)" orien="R0" />
        <iomarker fontsize="28" x="992" y="1808" name="BR(4:0)" orien="R0" />
        <iomarker fontsize="28" x="928" y="1136" name="RST" orien="R180" />
        <branch name="XLXN_226">
            <wire x2="3728" y1="3168" y2="3168" x1="3168" />
            <wire x2="3728" y1="2736" y2="3168" x1="3728" />
            <wire x2="4288" y1="2736" y2="2736" x1="3728" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="2624" y1="2608" y2="2688" x1="2624" />
            <wire x2="3232" y1="2688" y2="2688" x1="2624" />
            <wire x2="3232" y1="2688" y2="2912" x1="3232" />
            <wire x2="3232" y1="2912" y2="2912" x1="3168" />
        </branch>
        <branch name="XLXN_118(31:0)">
            <wire x2="96" y1="1536" y2="3248" x1="96" />
            <wire x2="1456" y1="3248" y2="3248" x1="96" />
            <wire x2="1008" y1="1536" y2="1536" x1="96" />
            <wire x2="1088" y1="1200" y2="1200" x1="1008" />
            <wire x2="1008" y1="1200" y2="1536" x1="1008" />
            <wire x2="1456" y1="2704" y2="2704" x1="1344" />
            <wire x2="1456" y1="2704" y2="3248" x1="1456" />
            <wire x2="2112" y1="2704" y2="2704" x1="1456" />
            <wire x2="2112" y1="2512" y2="2704" x1="2112" />
            <wire x2="2432" y1="2512" y2="2512" x1="2112" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="2416" y1="2240" y2="2240" x1="2208" />
            <wire x2="3248" y1="2240" y2="2240" x1="2416" />
            <wire x2="3248" y1="2240" y2="2992" x1="3248" />
            <wire x2="4288" y1="2992" y2="2992" x1="3248" />
            <wire x2="2416" y1="2240" y2="2288" x1="2416" />
            <wire x2="2496" y1="2288" y2="2288" x1="2416" />
            <wire x2="2416" y1="2288" y2="2416" x1="2416" />
            <wire x2="2432" y1="2416" y2="2416" x1="2416" />
        </branch>
        <instance x="2432" y="2576" name="XLXI_17" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2496" y="2288" name="B(31:0)" orien="R0" />
        <branch name="XLXN_232(31:0)">
            <wire x2="4032" y1="2368" y2="2368" x1="3824" />
            <wire x2="4672" y1="2368" y2="2368" x1="4032" />
            <wire x2="4032" y1="2368" y2="2928" x1="4032" />
            <wire x2="4288" y1="2928" y2="2928" x1="4032" />
        </branch>
        <instance x="4672" y="2528" name="XLXI_53" orien="R0">
        </instance>
        <branch name="XLXN_233(31:0)">
            <wire x2="4672" y1="2464" y2="2464" x1="4576" />
            <wire x2="4576" y1="2464" y2="2576" x1="4576" />
            <wire x2="4800" y1="2576" y2="2576" x1="4576" />
            <wire x2="4800" y1="2576" y2="2992" x1="4800" />
            <wire x2="4800" y1="2992" y2="2992" x1="4672" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="1088" y1="1328" y2="1328" x1="944" />
            <wire x2="944" y1="1328" y2="1728" x1="944" />
            <wire x2="1776" y1="1728" y2="1728" x1="944" />
            <wire x2="1776" y1="1728" y2="2240" x1="1776" />
            <wire x2="1824" y1="2240" y2="2240" x1="1776" />
            <wire x2="4464" y1="1728" y2="1728" x1="1776" />
            <wire x2="5120" y1="1728" y2="1728" x1="4464" />
            <wire x2="5120" y1="1728" y2="2368" x1="5120" />
            <wire x2="4464" y1="1632" y2="1728" x1="4464" />
            <wire x2="4560" y1="1632" y2="1632" x1="4464" />
            <wire x2="5120" y1="2368" y2="2368" x1="5056" />
        </branch>
        <iomarker fontsize="28" x="4560" y="1632" name="D(31:0)" orien="R0" />
        <branch name="XLXN_237">
            <wire x2="4864" y1="3232" y2="3232" x1="3168" />
            <wire x2="4864" y1="2560" y2="3232" x1="4864" />
        </branch>
        <branch name="XLXN_241">
            <wire x2="4288" y1="3296" y2="3296" x1="3168" />
            <wire x2="4288" y1="3056" y2="3296" x1="4288" />
        </branch>
        <branch name="XLXN_243(31:0)">
            <wire x2="368" y1="1024" y2="1328" x1="368" />
            <wire x2="400" y1="1328" y2="1328" x1="368" />
            <wire x2="368" y1="1328" y2="2512" x1="368" />
            <wire x2="464" y1="2512" y2="2512" x1="368" />
            <wire x2="1536" y1="1024" y2="1024" x1="368" />
            <wire x2="1536" y1="1024" y2="1072" x1="1536" />
            <wire x2="1536" y1="1072" y2="1072" x1="1472" />
        </branch>
        <branch name="XLXN_245(31:0)">
            <wire x2="1088" y1="1264" y2="1264" x1="784" />
            <wire x2="784" y1="1264" y2="1600" x1="784" />
            <wire x2="784" y1="1600" y2="1712" x1="784" />
            <wire x2="2272" y1="1600" y2="1600" x1="784" />
            <wire x2="2272" y1="1600" y2="2144" x1="2272" />
            <wire x2="2688" y1="2144" y2="2144" x1="2272" />
        </branch>
        <branch name="XLXN_247">
            <wire x2="2784" y1="3360" y2="3360" x1="2736" />
            <wire x2="2736" y1="3360" y2="3680" x1="2736" />
            <wire x2="4752" y1="3680" y2="3680" x1="2736" />
            <wire x2="4752" y1="2736" y2="2736" x1="4672" />
            <wire x2="4752" y1="2736" y2="3680" x1="4752" />
        </branch>
        <branch name="XLXN_248">
            <wire x2="1088" y1="1456" y2="1456" x1="1024" />
            <wire x2="1024" y1="1456" y2="1584" x1="1024" />
            <wire x2="3200" y1="1584" y2="1584" x1="1024" />
            <wire x2="3200" y1="1584" y2="3360" x1="3200" />
            <wire x2="3200" y1="3360" y2="3360" x1="3168" />
        </branch>
        <branch name="CLK">
            <wire x2="384" y1="2704" y2="2704" x1="320" />
            <wire x2="384" y1="2704" y2="3488" x1="384" />
            <wire x2="1984" y1="3488" y2="3488" x1="384" />
            <wire x2="2784" y1="3488" y2="3488" x1="1984" />
            <wire x2="1984" y1="3488" y2="3584" x1="1984" />
            <wire x2="3216" y1="3584" y2="3584" x1="1984" />
            <wire x2="400" y1="1200" y2="1200" x1="384" />
            <wire x2="384" y1="1200" y2="1984" x1="384" />
            <wire x2="1824" y1="1984" y2="1984" x1="384" />
            <wire x2="384" y1="1984" y2="2576" x1="384" />
            <wire x2="464" y1="2576" y2="2576" x1="384" />
            <wire x2="384" y1="2576" y2="2704" x1="384" />
            <wire x2="3216" y1="2864" y2="3584" x1="3216" />
            <wire x2="4288" y1="2864" y2="2864" x1="3216" />
        </branch>
        <iomarker fontsize="28" x="320" y="2704" name="CLK" orien="R180" />
    </sheet>
</drawing>