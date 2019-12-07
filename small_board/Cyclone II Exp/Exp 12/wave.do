onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /majority3/x1
add wave -noupdate /majority3/x2
add wave -noupdate /majority3/x3
add wave -noupdate /majority3/f
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1200 ps} 0}
configure wave -namecolwidth 121
configure wave -valuecolwidth 196
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {17820 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 800ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/majority3/x1 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ps -dutycycle 50 -starttime 0ns -endtime 800ns sim:/majority3/x2 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 400ns -dutycycle 50 -starttime 0ns -endtime 800ns Edit:/majority3/x2 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ns -endtime 800ns sim:/majority3/x3 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 800ns Edit:/majority3/x3 
WaveCollapseAll -1
wave clipboard restore
