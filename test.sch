<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2(17:0)" />
        <signal name="XLXN_6(17:0)" />
        <signal name="XLXN_7(17:0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9(9:0)" />
        <signal name="XLXN_10(9:0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13(17:0)" />
        <signal name="XLXN_14(9:0)" />
        <signal name="XLXN_15(9:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="reset" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="Clk" />
        <signal name="start" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="start" />
        <blockdef name="bitRevOrderSM">
            <timestamp>2012-5-1T4:0:11</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inputData_RRAM_test">
            <timestamp>2012-5-1T1:55:0</timestamp>
            <rect width="288" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
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
            <rect width="64" x="352" y="-556" height="24" />
            <line x2="416" y1="-544" y2="-544" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <block symbolname="bitRevOrderSM" name="XLXI_1">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="start" name="start" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_6(17:0)" name="DinA(17:0)" />
            <blockpin signalname="XLXN_7(17:0)" name="DinB(17:0)" />
            <blockpin signalname="XLXN_12" name="write_enableA" />
            <blockpin signalname="XLXN_12" name="write_enableB" />
            <blockpin signalname="XLXN_8" name="tc" />
            <blockpin signalname="XLXN_9(9:0)" name="addrA(9:0)" />
            <blockpin signalname="XLXN_10(9:0)" name="addrB(9:0)" />
            <blockpin signalname="XLXN_2(17:0)" name="DoutA(17:0)" />
            <blockpin signalname="XLXN_2(17:0)" name="DoutB(17:0)" />
        </block>
        <block symbolname="inputData_RRAM_test" name="XLXI_2">
            <blockpin signalname="Clk" name="ClkA" />
            <blockpin signalname="Clk" name="ClkB" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_12" name="write_enableA" />
            <blockpin signalname="XLXN_12" name="write_enableB" />
            <blockpin signalname="XLXN_9(9:0)" name="addrA(9:0)" />
            <blockpin signalname="XLXN_10(9:0)" name="addrB(9:0)" />
            <blockpin signalname="XLXN_2(17:0)" name="DinA(17:0)" />
            <blockpin signalname="XLXN_2(17:0)" name="DinB(17:0)" />
            <blockpin signalname="XLXN_6(17:0)" name="DoutA(17:0)" />
            <blockpin signalname="XLXN_7(17:0)" name="DoutB(17:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1264" y="1536" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_2(17:0)">
            <wire x2="1840" y1="1440" y2="1440" x1="1648" />
            <wire x2="1840" y1="1440" y2="1472" x1="1840" />
            <wire x2="1840" y1="1472" y2="1504" x1="1840" />
            <wire x2="2032" y1="1472" y2="1472" x1="1840" />
            <wire x2="2144" y1="1472" y2="1472" x1="2032" />
            <wire x2="1840" y1="1504" y2="1504" x1="1648" />
            <wire x2="2144" y1="1408" y2="1408" x1="2032" />
            <wire x2="2032" y1="1408" y2="1472" x1="2032" />
        </branch>
        <branch name="XLXN_6(17:0)">
            <wire x2="1168" y1="1408" y2="1408" x1="1136" />
            <wire x2="1264" y1="1408" y2="1408" x1="1168" />
            <wire x2="1136" y1="1408" y2="1600" x1="1136" />
            <wire x2="2640" y1="1600" y2="1600" x1="1136" />
            <wire x2="2640" y1="960" y2="960" x1="2560" />
            <wire x2="2640" y1="960" y2="1600" x1="2640" />
        </branch>
        <branch name="XLXN_7(17:0)">
            <wire x2="1264" y1="1504" y2="1504" x1="1168" />
            <wire x2="1168" y1="1504" y2="1584" x1="1168" />
            <wire x2="2624" y1="1584" y2="1584" x1="1168" />
            <wire x2="2624" y1="1472" y2="1472" x1="2560" />
            <wire x2="2624" y1="1472" y2="1584" x1="2624" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1920" y1="1248" y2="1248" x1="1648" />
            <wire x2="1920" y1="1248" y2="1616" x1="1920" />
            <wire x2="2048" y1="1616" y2="1616" x1="1920" />
        </branch>
        <branch name="XLXN_9(9:0)">
            <wire x2="1840" y1="1312" y2="1312" x1="1648" />
            <wire x2="2144" y1="1280" y2="1280" x1="1840" />
            <wire x2="1840" y1="1280" y2="1312" x1="1840" />
        </branch>
        <branch name="XLXN_10(9:0)">
            <wire x2="1840" y1="1376" y2="1376" x1="1648" />
            <wire x2="2144" y1="1344" y2="1344" x1="1840" />
            <wire x2="1840" y1="1344" y2="1376" x1="1840" />
        </branch>
        <instance x="2144" y="1504" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_12">
            <wire x2="1856" y1="1120" y2="1120" x1="1648" />
            <wire x2="1856" y1="1120" y2="1152" x1="1856" />
            <wire x2="1856" y1="1152" y2="1184" x1="1856" />
            <wire x2="2016" y1="1152" y2="1152" x1="1856" />
            <wire x2="2032" y1="1152" y2="1152" x1="2016" />
            <wire x2="2144" y1="1152" y2="1152" x1="2032" />
            <wire x2="2032" y1="1152" y2="1216" x1="2032" />
            <wire x2="2144" y1="1216" y2="1216" x1="2032" />
            <wire x2="1856" y1="1184" y2="1184" x1="1648" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1072" y="880" type="branch" />
            <wire x2="1072" y1="880" y2="880" x1="1024" />
            <wire x2="1216" y1="880" y2="880" x1="1072" />
            <wire x2="1664" y1="880" y2="880" x1="1216" />
            <wire x2="1664" y1="880" y2="1088" x1="1664" />
            <wire x2="2144" y1="1088" y2="1088" x1="1664" />
            <wire x2="1216" y1="880" y2="1312" x1="1216" />
            <wire x2="1264" y1="1312" y2="1312" x1="1216" />
        </branch>
        <branch name="Clk">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1072" y="720" type="branch" />
            <wire x2="1072" y1="720" y2="720" x1="1024" />
            <wire x2="1168" y1="720" y2="720" x1="1072" />
            <wire x2="1680" y1="720" y2="720" x1="1168" />
            <wire x2="1680" y1="720" y2="960" x1="1680" />
            <wire x2="2096" y1="960" y2="960" x1="1680" />
            <wire x2="2144" y1="960" y2="960" x1="2096" />
            <wire x2="2096" y1="960" y2="1024" x1="2096" />
            <wire x2="2144" y1="1024" y2="1024" x1="2096" />
            <wire x2="1168" y1="720" y2="1120" x1="1168" />
            <wire x2="1264" y1="1120" y2="1120" x1="1168" />
        </branch>
        <branch name="start">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1104" y="1216" type="branch" />
            <wire x2="1104" y1="1216" y2="1216" x1="1040" />
            <wire x2="1264" y1="1216" y2="1216" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1024" y="720" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="1024" y="880" name="reset" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1216" name="start" orien="R180" />
    </sheet>
</drawing>