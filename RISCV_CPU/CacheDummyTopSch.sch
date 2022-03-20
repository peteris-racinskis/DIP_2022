<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="WE" />
        <signal name="CLK" />
        <signal name="ADDR(31:0)" />
        <signal name="XLXN_15(31:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_19" />
        <signal name="RDY" />
        <signal name="DOUT(31:0)" />
        <signal name="DIN(31:0)" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23(31:0)" />
        <port polarity="Input" name="WE" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="ADDR(31:0)" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="DOUT(31:0)" />
        <port polarity="Input" name="DIN(31:0)" />
        <blockdef name="CacheLookup">
            <timestamp>2022-3-20T15:31:6</timestamp>
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="384" />
        </blockdef>
        <blockdef name="ExternalMemory">
            <timestamp>2022-3-20T15:10:18</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="BusMux2_32">
            <timestamp>2022-3-20T13:34:58</timestamp>
            <rect width="64" x="320" y="212" height="24" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="448" />
        </blockdef>
        <block symbolname="CacheLookup" name="XLXI_1">
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ADDR(31:0)" name="ADDR(31:0)" />
            <blockpin signalname="DIN(31:0)" name="DIN(31:0)" />
            <blockpin signalname="XLXN_19" name="FOUND" />
            <blockpin signalname="XLXN_22" name="RD" />
            <blockpin signalname="XLXN_23(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="ExternalMemory" name="XLXI_3">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="ADDR(31:0)" name="ADDR(31:0)" />
            <blockpin signalname="DIN(31:0)" name="DIN(31:0)" />
            <blockpin signalname="XLXN_16" name="RDY" />
            <blockpin signalname="XLXN_15(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="BusMux2_32" name="XLXI_5">
            <blockpin signalname="XLXN_22" name="RD1" />
            <blockpin signalname="XLXN_16" name="RD2" />
            <blockpin signalname="XLXN_19" name="SEL" />
            <blockpin signalname="XLXN_23(31:0)" name="IN1(31:0)" />
            <blockpin signalname="XLXN_15(31:0)" name="IN2(31:0)" />
            <blockpin signalname="RDY" name="OUTRD" />
            <blockpin signalname="DOUT(31:0)" name="OUTD(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="WE">
            <wire x2="304" y1="1568" y2="1568" x1="192" />
            <wire x2="304" y1="1568" y2="1984" x1="304" />
            <wire x2="1232" y1="1984" y2="1984" x1="304" />
            <wire x2="1216" y1="944" y2="944" x1="304" />
            <wire x2="304" y1="944" y2="1376" x1="304" />
            <wire x2="304" y1="1376" y2="1568" x1="304" />
        </branch>
        <branch name="CLK">
            <wire x2="272" y1="1632" y2="1632" x1="192" />
            <wire x2="272" y1="1632" y2="1920" x1="272" />
            <wire x2="1232" y1="1920" y2="1920" x1="272" />
            <wire x2="1216" y1="1136" y2="1136" x1="272" />
            <wire x2="272" y1="1136" y2="1440" x1="272" />
            <wire x2="272" y1="1440" y2="1632" x1="272" />
        </branch>
        <iomarker fontsize="28" x="208" y="1008" name="ADDR(31:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="1568" name="WE" orien="R180" />
        <iomarker fontsize="28" x="192" y="1632" name="CLK" orien="R180" />
        <instance x="1216" y="1104" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1232" y="2144" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="192" y="2112" name="DIN(31:0)" orien="R180" />
        <branch name="ADDR(31:0)">
            <wire x2="240" y1="1008" y2="1008" x1="208" />
            <wire x2="1216" y1="1008" y2="1008" x1="240" />
            <wire x2="240" y1="1008" y2="2048" x1="240" />
            <wire x2="1232" y1="2048" y2="2048" x1="240" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1632" y1="1920" y2="1920" x1="1616" />
            <wire x2="2064" y1="1920" y2="1920" x1="1632" />
            <wire x2="2064" y1="1920" y2="2016" x1="2064" />
            <wire x2="2608" y1="2016" y2="2016" x1="2064" />
        </branch>
        <branch name="RDY">
            <wire x2="3008" y1="1952" y2="1952" x1="2992" />
            <wire x2="3088" y1="1952" y2="1952" x1="3008" />
            <wire x2="3104" y1="1952" y2="1952" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="3104" y="1952" name="RDY" orien="R0" />
        <branch name="XLXN_15(31:0)">
            <wire x2="1632" y1="2112" y2="2112" x1="1616" />
            <wire x2="2112" y1="2112" y2="2112" x1="1632" />
            <wire x2="2112" y1="1888" y2="2112" x1="2112" />
            <wire x2="2608" y1="1888" y2="1888" x1="2112" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1616" y1="944" y2="944" x1="1600" />
            <wire x2="2512" y1="944" y2="944" x1="1616" />
            <wire x2="2512" y1="944" y2="1760" x1="2512" />
            <wire x2="2608" y1="1760" y2="1760" x1="2512" />
        </branch>
        <instance x="2608" y="1920" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3056" y="2144" name="DOUT(31:0)" orien="R0" />
        <branch name="DOUT(31:0)">
            <wire x2="3056" y1="2144" y2="2144" x1="2992" />
        </branch>
        <branch name="DIN(31:0)">
            <wire x2="736" y1="2112" y2="2112" x1="192" />
            <wire x2="1232" y1="2112" y2="2112" x1="736" />
            <wire x2="1216" y1="1200" y2="1200" x1="736" />
            <wire x2="736" y1="1200" y2="2112" x1="736" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2096" y1="1264" y2="1264" x1="1600" />
            <wire x2="2096" y1="1264" y2="1952" x1="2096" />
            <wire x2="2608" y1="1952" y2="1952" x1="2096" />
        </branch>
        <branch name="XLXN_23(31:0)">
            <wire x2="2112" y1="1200" y2="1200" x1="1600" />
            <wire x2="2112" y1="1200" y2="1824" x1="2112" />
            <wire x2="2608" y1="1824" y2="1824" x1="2112" />
        </branch>
    </sheet>
</drawing>