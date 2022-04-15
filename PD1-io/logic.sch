<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="SW2" />
        <signal name="SW0" />
        <signal name="SW1" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="LD1" />
        <signal name="SW3" />
        <signal name="LD2" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="LD0" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="SW2" />
        <port polarity="Input" name="SW0" />
        <port polarity="Input" name="SW1" />
        <port polarity="Output" name="LD1" />
        <port polarity="Input" name="SW3" />
        <port polarity="Output" name="LD2" />
        <port polarity="Output" name="LD0" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="timer">
            <timestamp>2022-4-15T11:45:41</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="192" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_27">
            <blockpin signalname="SW2" name="I0" />
            <blockpin signalname="SW1" name="I1" />
            <blockpin signalname="LD1" name="O" />
        </block>
        <block symbolname="timer" name="XLXI_35">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_87" name="rst" />
            <blockpin signalname="LD2" name="result" />
        </block>
        <block symbolname="inv" name="XLXI_36">
            <blockpin signalname="SW3" name="I" />
            <blockpin signalname="XLXN_87" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_38">
            <blockpin signalname="SW0" name="I" />
            <blockpin signalname="XLXN_89" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_39">
            <blockpin signalname="XLXN_89" name="I" />
            <blockpin signalname="LD0" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SW2">
            <wire x2="1456" y1="1824" y2="1824" x1="1392" />
            <wire x2="1472" y1="1824" y2="1824" x1="1456" />
        </branch>
        <branch name="SW0">
            <wire x2="960" y1="1440" y2="1440" x1="928" />
            <wire x2="976" y1="1280" y2="1280" x1="960" />
            <wire x2="960" y1="1280" y2="1440" x1="960" />
        </branch>
        <iomarker fontsize="28" x="928" y="1440" name="SW0" orien="R180" />
        <iomarker fontsize="28" x="1408" y="1408" name="LD0" orien="R0" />
        <instance x="1472" y="1888" name="XLXI_27" orien="R0" />
        <branch name="LD1">
            <wire x2="1760" y1="1792" y2="1792" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1760" y="1792" name="LD1" orien="R0" />
        <branch name="SW3">
            <wire x2="960" y1="2336" y2="2336" x1="784" />
            <wire x2="1344" y1="2336" y2="2336" x1="960" />
            <wire x2="1424" y1="2304" y2="2304" x1="1344" />
            <wire x2="1344" y1="2304" y2="2336" x1="1344" />
        </branch>
        <branch name="LD2">
            <wire x2="2080" y1="2240" y2="2240" x1="2064" />
        </branch>
        <branch name="CLK">
            <wire x2="912" y1="2288" y2="2288" x1="784" />
            <wire x2="1680" y1="2176" y2="2176" x1="912" />
            <wire x2="912" y1="2176" y2="2288" x1="912" />
        </branch>
        <iomarker fontsize="28" x="784" y="2288" name="CLK" orien="R180" />
        <instance x="1680" y="2208" name="XLXI_35" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2080" y="2240" name="LD2" orien="R0" />
        <iomarker fontsize="28" x="784" y="2336" name="SW3" orien="R180" />
        <branch name="XLXN_87">
            <wire x2="1680" y1="2304" y2="2304" x1="1648" />
        </branch>
        <instance x="1424" y="2336" name="XLXI_36" orien="R0" />
        <branch name="SW1">
            <wire x2="1456" y1="1760" y2="1760" x1="1392" />
            <wire x2="1472" y1="1760" y2="1760" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1824" name="SW2" orien="R180" />
        <iomarker fontsize="28" x="1392" y="1760" name="SW1" orien="R180" />
        <branch name="LD0">
            <wire x2="1344" y1="1392" y2="1392" x1="1264" />
            <wire x2="1344" y1="1392" y2="1408" x1="1344" />
            <wire x2="1360" y1="1408" y2="1408" x1="1344" />
            <wire x2="1408" y1="1408" y2="1408" x1="1360" />
            <wire x2="1264" y1="1392" y2="1472" x1="1264" />
            <wire x2="1344" y1="1472" y2="1472" x1="1264" />
            <wire x2="1344" y1="1472" y2="1536" x1="1344" />
            <wire x2="1344" y1="1536" y2="1536" x1="1328" />
        </branch>
        <instance x="976" y="1312" name="XLXI_38" orien="R0" />
        <instance x="1104" y="1568" name="XLXI_39" orien="R0" />
        <branch name="XLXN_89">
            <wire x2="1104" y1="1536" y2="1536" x1="1024" />
            <wire x2="1024" y1="1536" y2="1648" x1="1024" />
            <wire x2="1392" y1="1648" y2="1648" x1="1024" />
            <wire x2="1392" y1="1280" y2="1280" x1="1200" />
            <wire x2="1392" y1="1280" y2="1648" x1="1392" />
        </branch>
    </sheet>
</drawing>