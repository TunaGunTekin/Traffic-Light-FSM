onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TrafficLightFSM_tb/dut/clk
add wave -noupdate /TrafficLightFSM_tb/dut/reset
add wave -noupdate /TrafficLightFSM_tb/dut/TAORB
add wave -noupdate /TrafficLightFSM_tb/dut/LightA
add wave -noupdate /TrafficLightFSM_tb/dut/LightB
add wave -noupdate /TrafficLightFSM_tb/dut/timer
add wave -noupdate /TrafficLightFSM_tb/dut/next_timer
add wave -noupdate /TrafficLightFSM_tb/dut/current_state_t
add wave -noupdate /TrafficLightFSM_tb/dut/next_state_t
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 221
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {3 ps} {387 ps}
