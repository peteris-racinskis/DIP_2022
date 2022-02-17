<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="CLK" />
        <signal name="XLXN_5" />
        <signal name="PB" />
        <signal name="XLXN_9" />
        <signal name="PB_debounced" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="PB" />
        <port polarity="Output" name="PB_debounced" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="cb8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="pulldown">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-160" y2="-128" x1="64" />
            <line x2="60" y1="0" y2="0" x1="68" />
            <line x2="52" y1="-16" y2="-16" x1="76" />
            <line x2="40" y1="-32" y2="-32" x1="88" />
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
        </blockdef>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="PB" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="PB" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="PB_debounced" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="cb8ce" name="XLXI_5">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_5" name="CE" />
            <blockpin signalname="XLXN_1" name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q(7:0)" />
            <blockpin signalname="PB_debounced" name="TC" />
        </block>
        <block symbolname="pulldown" name="XLXI_6">
            <blockpin signalname="PB" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1">
            <wire x2="784" y1="1440" y2="1440" x1="768" />
            <wire x2="912" y1="1440" y2="1440" x1="784" />
        </branch>
        <instance x="544" y="1472" name="XLXI_2" orien="R0" />
        <branch name="CLK">
            <wire x2="880" y1="1344" y2="1344" x1="864" />
            <wire x2="912" y1="1344" y2="1344" x1="880" />
        </branch>
        <iomarker fontsize="28" x="864" y="1344" name="CLK" orien="R180" />
        <instance x="544" y="1376" name="XLXI_3" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="912" y1="1280" y2="1280" x1="800" />
        </branch>
        <branch name="PB">
            <wire x2="368" y1="1312" y2="1312" x1="240" />
            <wire x2="512" y1="1312" y2="1312" x1="368" />
            <wire x2="512" y1="1312" y2="1440" x1="512" />
            <wire x2="544" y1="1440" y2="1440" x1="512" />
            <wire x2="544" y1="1312" y2="1312" x1="512" />
            <wire x2="368" y1="1312" y2="1456" x1="368" />
        </branch>
        <instance x="1184" y="960" name="XLXI_4" orien="R180" />
        <branch name="XLXN_9">
            <wire x2="464" y1="992" y2="1248" x1="464" />
            <wire x2="544" y1="1248" y2="1248" x1="464" />
            <wire x2="960" y1="992" y2="992" x1="464" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1344" name="PB_debounced" orien="R0" />
        <instance x="912" y="1472" name="XLXI_5" orien="R0" />
        <branch name="PB_debounced">
            <wire x2="1424" y1="992" y2="992" x1="1184" />
            <wire x2="1424" y1="992" y2="1344" x1="1424" />
            <wire x2="1472" y1="1344" y2="1344" x1="1424" />
            <wire x2="1520" y1="1344" y2="1344" x1="1472" />
            <wire x2="1424" y1="1344" y2="1344" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="240" y="1312" name="PB" orien="R180" />
        <instance x="304" y="1616" name="XLXI_6" orien="R0" />
    </sheet>
</drawing>