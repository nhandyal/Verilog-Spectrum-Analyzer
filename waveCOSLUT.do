onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /COS_LUT_tb/Clk
add wave -noupdate -radix unsigned /COS_LUT_tb/reset
add wave -noupdate -radix unsigned /COS_LUT_tb/addr
add wave -noupdate -radix unsigned /COS_LUT_tb/uut/addr_reg
add wave -noupdate -radix binary /COS_LUT_tb/Dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {110000 ps} 1} {{Cursor 2} {130000 ps} 1} {{Cursor 3} {150000 ps} 1} {{Cursor 4} {170000 ps} 1} {{Cursor 5} {190000 ps} 1}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {87002 ps} {218252 ps}
