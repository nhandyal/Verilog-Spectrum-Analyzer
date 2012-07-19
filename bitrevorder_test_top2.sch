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
        <signal name="Clk" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="start" />
        <signal name="reset" />
        <signal name="md512" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="start" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="md512" />
        <blockdef name="bitRevOrder">
            <timestamp>2012-4-30T12:24:33</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
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
            <rect width="256" x="64" y="-384" height="448" />
        </blockdef>
        <blockdef name="inputData_RRAM_test">
            <timestamp>2012-4-30T9:58:17</timestamp>
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
        <block symbolname="bitRevOrder" name="brOrderMod2">
            <blockpin signalname="XLXN_11" name="Clk" />
            <blockpin signalname="start" name="start" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_8(17:0)" name="DinA(17:0)" />
            <blockpin signalname="XLXN_7(17:0)" name="DinB(17:0)" />
            <blockpin signalname="XLXN_1" name="write_enableA" />
            <blockpin signalname="XLXN_2" name="write_enableB" />
            <blockpin signalname="XLXN_3(9:0)" name="addrA(9:0)" />
            <blockpin signalname="XLXN_4(9:0)" name="addrB(9:0)" />
            <blockpin signalname="XLXN_5(17:0)" name="DoutA(17:0)" />
            <blockpin signalname="XLXN_6(17:0)" name="DoutB(17:0)" />
            <blockpin signalname="md512" name="md512" />
        </block>
        <block symbolname="inputData_RRAM_test" name="inputRam_Mod2">
            <blockpin signalname="XLXN_11" name="ClkA" />
            <blockpin signalname="XLXN_12" name="ClkB" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_1" name="write_enableA" />
            <blockpin signalname="XLXN_2" name="write_enableB" />
            <blockpin signalname="XLXN_3(9:0)" name="addrA(9:0)" />
            <blockpin signalname="XLXN_4(9:0)" name="addrB(9:0)" />
            <blockpin signalname="XLXN_5(17:0)" name="DinA(17:0)" />
            <blockpin signalname="XLXN_6(17:0)" name="DinB(17:0)" />
            <blockpin signalname="XLXN_8(17:0)" name="DoutA(17:0)" />
            <blockpin signalname="XLXN_7(17:0)" name="DoutB(17:0)" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1616" y="800" name="inputRam_Mod2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1616" y1="448" y2="448" x1="1232" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1616" y1="512" y2="512" x1="1232" />
        </branch>
        <instance x="848" y="800" name="brOrderMod2" orien="R0">
        </instance>
        <branch name="XLXN_3(9:0)">
            <wire x2="1616" y1="576" y2="576" x1="1232" />
        </branch>
        <branch name="XLXN_4(9:0)">
            <wire x2="1616" y1="640" y2="640" x1="1232" />
        </branch>
        <branch name="XLXN_5(17:0)">
            <wire x2="1616" y1="704" y2="704" x1="1232" />
        </branch>
        <branch name="XLXN_6(17:0)">
            <wire x2="1616" y1="768" y2="768" x1="1232" />
        </branch>
        <branch name="XLXN_7(17:0)">
            <wire x2="848" y1="768" y2="768" x1="816" />
            <wire x2="816" y1="768" y2="864" x1="816" />
            <wire x2="2112" y1="864" y2="864" x1="816" />
            <wire x2="2112" y1="768" y2="768" x1="2032" />
            <wire x2="2112" y1="768" y2="864" x1="2112" />
        </branch>
        <branch name="XLXN_8(17:0)">
            <wire x2="848" y1="688" y2="688" x1="832" />
            <wire x2="832" y1="688" y2="880" x1="832" />
            <wire x2="2144" y1="880" y2="880" x1="832" />
            <wire x2="2144" y1="256" y2="256" x1="2032" />
            <wire x2="2144" y1="256" y2="880" x1="2144" />
        </branch>
        <instance x="352" y="192" name="XLXI_4" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="704" y1="256" y2="256" x1="576" />
            <wire x2="704" y1="256" y2="448" x1="704" />
            <wire x2="848" y1="448" y2="448" x1="704" />
            <wire x2="1616" y1="256" y2="256" x1="704" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="672" y1="160" y2="160" x1="576" />
            <wire x2="672" y1="160" y2="320" x1="672" />
            <wire x2="1616" y1="320" y2="320" x1="672" />
        </branch>
        <instance x="352" y="288" name="XLXI_5" orien="R0" />
        <branch name="Clk">
            <wire x2="160" y1="160" y2="160" x1="144" />
            <wire x2="272" y1="160" y2="160" x1="160" />
            <wire x2="352" y1="160" y2="160" x1="272" />
            <wire x2="272" y1="160" y2="256" x1="272" />
            <wire x2="352" y1="256" y2="256" x1="272" />
        </branch>
        <branch name="start">
            <wire x2="832" y1="528" y2="528" x1="176" />
            <wire x2="848" y1="528" y2="528" x1="832" />
        </branch>
        <branch name="reset">
            <wire x2="592" y1="608" y2="608" x1="176" />
            <wire x2="848" y1="608" y2="608" x1="592" />
            <wire x2="592" y1="608" y2="944" x1="592" />
            <wire x2="1552" y1="944" y2="944" x1="592" />
            <wire x2="1552" y1="384" y2="944" x1="1552" />
            <wire x2="1616" y1="384" y2="384" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="144" y="160" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="176" y="528" name="start" orien="R180" />
        <iomarker fontsize="28" x="176" y="608" name="reset" orien="R180" />
        <branch name="md512">
            <wire x2="1632" y1="832" y2="832" x1="1232" />
            <wire x2="1632" y1="832" y2="1024" x1="1632" />
            <wire x2="1808" y1="1024" y2="1024" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1808" y="1024" name="md512" orien="R0" />
    </sheet>
</drawing>