<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3(9:0)" />
        <signal name="XLXN_4(9:0)" />
        <signal name="XLXN_5(17:0)" />
        <signal name="XLXN_6(17:0)" />
        <signal name="XLXN_7(17:0)" />
        <signal name="XLXN_8(17:0)" />
        <signal name="tc" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="Clk" />
        <signal name="start" />
        <signal name="reset" />
        <port polarity="Output" name="tc" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="start" />
        <port polarity="Input" name="reset" />
        <blockdef name="bitRevOrder">
            <timestamp>2012-5-1T2:31:0</timestamp>
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-124" height="24" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
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
            <rect width="256" x="64" y="-384" height="512" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="bitRevOrder" name="XLXI_1">
            <blockpin signalname="XLXN_10" name="Clk" />
            <blockpin signalname="start" name="start" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_7(17:0)" name="DinA(17:0)" />
            <blockpin signalname="XLXN_8(17:0)" name="DinB(17:0)" />
            <blockpin signalname="XLXN_1" name="write_enableA" />
            <blockpin signalname="XLXN_2" name="write_enableB" />
            <blockpin signalname="XLXN_3(9:0)" name="addrA(9:0)" />
            <blockpin signalname="XLXN_4(9:0)" name="addrB(9:0)" />
            <blockpin signalname="XLXN_5(17:0)" name="DoutA(17:0)" />
            <blockpin signalname="XLXN_6(17:0)" name="DoutB(17:0)" />
            <blockpin signalname="tc" name="tc" />
        </block>
        <block symbolname="inputData_RRAM_test" name="XLXI_2">
            <blockpin signalname="XLXN_10" name="ClkA" />
            <blockpin signalname="XLXN_11" name="ClkB" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_1" name="write_enableA" />
            <blockpin signalname="XLXN_2" name="write_enableB" />
            <blockpin signalname="XLXN_3(9:0)" name="addrA(9:0)" />
            <blockpin signalname="XLXN_4(9:0)" name="addrB(9:0)" />
            <blockpin signalname="XLXN_5(17:0)" name="DinA(17:0)" />
            <blockpin signalname="XLXN_6(17:0)" name="DinB(17:0)" />
            <blockpin signalname="XLXN_7(17:0)" name="DoutA(17:0)" />
            <blockpin signalname="XLXN_8(17:0)" name="DoutB(17:0)" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1440" y="880" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1440" y1="528" y2="528" x1="1024" />
        </branch>
        <instance x="640" y="880" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1440" y1="592" y2="592" x1="1024" />
        </branch>
        <branch name="XLXN_3(9:0)">
            <wire x2="1440" y1="656" y2="656" x1="1024" />
        </branch>
        <branch name="XLXN_4(9:0)">
            <wire x2="1440" y1="720" y2="720" x1="1024" />
        </branch>
        <branch name="XLXN_5(17:0)">
            <wire x2="1440" y1="784" y2="784" x1="1024" />
        </branch>
        <branch name="XLXN_6(17:0)">
            <wire x2="1440" y1="848" y2="848" x1="1024" />
        </branch>
        <branch name="XLXN_7(17:0)">
            <wire x2="640" y1="768" y2="768" x1="560" />
            <wire x2="560" y1="768" y2="1088" x1="560" />
            <wire x2="1936" y1="1088" y2="1088" x1="560" />
            <wire x2="1936" y1="336" y2="336" x1="1856" />
            <wire x2="1936" y1="336" y2="1088" x1="1936" />
        </branch>
        <branch name="XLXN_8(17:0)">
            <wire x2="640" y1="848" y2="848" x1="576" />
            <wire x2="576" y1="848" y2="1072" x1="576" />
            <wire x2="1920" y1="1072" y2="1072" x1="576" />
            <wire x2="1920" y1="848" y2="848" x1="1856" />
            <wire x2="1920" y1="848" y2="1072" x1="1920" />
        </branch>
        <branch name="tc">
            <wire x2="1472" y1="976" y2="976" x1="1024" />
            <wire x2="1472" y1="976" y2="1200" x1="1472" />
            <wire x2="1680" y1="1200" y2="1200" x1="1472" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="528" y1="336" y2="336" x1="416" />
            <wire x2="528" y1="336" y2="528" x1="528" />
            <wire x2="640" y1="528" y2="528" x1="528" />
            <wire x2="1440" y1="336" y2="336" x1="528" />
        </branch>
        <instance x="192" y="368" name="XLXI_3" orien="R0" />
        <instance x="192" y="432" name="XLXI_4" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="1440" y1="400" y2="400" x1="416" />
        </branch>
        <branch name="Clk">
            <wire x2="160" y1="336" y2="336" x1="80" />
            <wire x2="192" y1="336" y2="336" x1="160" />
            <wire x2="160" y1="336" y2="400" x1="160" />
            <wire x2="192" y1="400" y2="400" x1="160" />
        </branch>
        <iomarker fontsize="28" x="80" y="336" name="Clk" orien="R180" />
        <branch name="start">
            <wire x2="640" y1="608" y2="608" x1="288" />
        </branch>
        <branch name="reset">
            <wire x2="448" y1="528" y2="528" x1="288" />
            <wire x2="448" y1="528" y2="688" x1="448" />
            <wire x2="640" y1="688" y2="688" x1="448" />
            <wire x2="1440" y1="464" y2="464" x1="448" />
            <wire x2="448" y1="464" y2="528" x1="448" />
        </branch>
        <iomarker fontsize="28" x="288" y="528" name="reset" orien="R180" />
        <iomarker fontsize="28" x="288" y="608" name="start" orien="R180" />
        <iomarker fontsize="28" x="1680" y="1200" name="tc" orien="R0" />
    </sheet>
</drawing>