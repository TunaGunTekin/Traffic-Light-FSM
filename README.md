# Hacettepe University ELE432 Advanced Digital Design 


# Assignment 1: 
Warm-Up – Traffic Light Controller FSM (with Delay)

# Student Name: 
Tuna Gün Tekin
# Student ID: 
2200357040

# Simulation Waveform:

![sim](https://github.com/user-attachments/assets/0404ff6c-b002-4993-b8bf-40db4ff6f57d)

# Benchmark Display and Monitor Output:
Reading pref.tcl

 2025.2

 ** Note: (vsim-220) '/opt/Intel/questa_fse/linux_x86_64/../modelsim.ini' is used as the ini file.
 vsim -c -voptargs="+acc" work.TrafficLightFSM_tb -do "run -all; quit" 
 Start time: 14:49:55 on Mar 06,2026
 ** Note: (vsim-3813) Design is being optimized due to module recompilation...
 ** Warning: (vopt-10908) Some optimizations are turned off because the +acc switch is in effect.
 ** Note: (vopt-220) '/opt/Intel/questa_fse/linux_x86_64/../modelsim.ini' is used as the ini file.
 ** Note: (vsim-12126) Error and warning message counts have been restored: Errors=0, Warnings=1.
 //  Questa Altera Starter FPGA Edition-64
 //  Version 2025.2 linux_x86_64 May 31 2025
 //
 // Unpublished work. Copyright 2025 Siemens
 //
 // This material contains trade secrets or otherwise confidential information
 // owned by Siemens Industry Software Inc. or its affiliates (collectively,
 // "SISW"), or its licensors. Access to and use of this information is strictly
 // limited as set forth in the Customer's applicable agreements with SISW.
 //
 // This material may not be copied, distributed, or otherwise disclosed outside
 // of the Customer's facilities without the express written permission of SISW,
 // and may not be used in any way not expressly authorized by SISW.
 //
 Loading sv_std.std
 Loading work.TrafficLightFSM_tb(fast)
 Loading work.TrafficLightFSM(fast)
 run -all
 
 Standart Flow FOr Traffic(S0 -> S1 -> S2 -> S3 -> S0)
 
 Time: 0 ps | Reset: 1 | TAORB: 1 | State: 0 | Timer: 0 | Light A: GREEN  | Light B: RED   
 Time: 15 ps | Reset: 0 | TAORB: 1 | State: 0 | Timer: 0 | Light A: GREEN  | Light B: RED   
 Time: 35 ps | Reset: 0 | TAORB: 0 | State: 0 | Timer: 0 | Light A: GREEN  | Light B: RED   
 Time: 45 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 0 | Light A: YELLOW | Light B: RED   
 Time: 55 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 1 | Light A: YELLOW | Light B: RED   
 Time: 65 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 2 | Light A: YELLOW | Light B: RED   
 Time: 75 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 3 | Light A: YELLOW | Light B: RED   
 Time: 85 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 4 | Light A: YELLOW | Light B: RED   
 Time: 95 ps | Reset: 0 | TAORB: 0 | State: 2 | Timer: 0 | Light A: RED    | Light B: GREEN 
 Time: 115 ps | Reset: 0 | TAORB: 1 | State: 2 | Timer: 0 | Light A: RED    | Light B: GREEN 
 Time: 125 ps | Reset: 0 | TAORB: 1 | State: 3 | Timer: 0 | Light A: RED    | Light B: YELLOW
 Time: 135 ps | Reset: 0 | TAORB: 1 | State: 3 | Timer: 1 | Light A: RED    | Light B: YELLOW
 Time: 145 ps | Reset: 0 | TAORB: 1 | State: 3 | Timer: 2 | Light A: RED    | Light B: YELLOW
 Time: 155 ps | Reset: 0 | TAORB: 1 | State: 3 | Timer: 3 | Light A: RED    | Light B: YELLOW
 Time: 165 ps | Reset: 0 | TAORB: 1 | State: 3 | Timer: 4 | Light A: RED    | Light B: YELLOW
 Time: 175 ps | Reset: 0 | TAORB: 1 | State: 0 | Timer: 0 | Light A: GREEN  | Light B: RED   
 
 Edge Conditions Tests
 
 
 Reset at Middle of Timer Test
 
 Time: 195 ps | Reset: 0 | TAORB: 0 | State: 0 | Timer: 0 | Light A: GREEN  | Light B: RED   
 Time: 205 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 0 | Light A: YELLOW | Light B: RED   
 Time: 215 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 1 | Light A: YELLOW | Light B: RED   
 Time: 220 ps | Reset: 1 | TAORB: 0 | State: 0 | Timer: 0 | Light A: GREEN  | Light B: RED   
 Time: 232 ps | Reset: 0 | TAORB: 0 | State: 0 | Timer: 0 | Light A: GREEN  | Light B: RED   
 Time: 235 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 0 | Light A: YELLOW | Light B: RED   
 Time: 245 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 1 | Light A: YELLOW | Light B: RED   
 
 TAORB Randomly Change at the Middle of Timer
 
 Time: 252 ps | Reset: 0 | TAORB: 1 | State: 1 | Timer: 1 | Light A: YELLOW | Light B: RED   
 Time: 255 ps | Reset: 0 | TAORB: 1 | State: 1 | Timer: 2 | Light A: YELLOW | Light B: RED   
 Time: 262 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 2 | Light A: YELLOW | Light B: RED   
 Time: 265 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 3 | Light A: YELLOW | Light B: RED   
 Time: 267 ps | Reset: 0 | TAORB: 1 | State: 1 | Timer: 3 | Light A: YELLOW | Light B: RED   
 Time: 272 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 3 | Light A: YELLOW | Light B: RED   
 Time: 275 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 4 | Light A: YELLOW | Light B: RED   
 Time: 285 ps | Reset: 0 | TAORB: 0 | State: 2 | Timer: 0 | Light A: RED    | Light B: GREEN 
 
 TAORB Change for one clock at the Middle of Timer
 
 Time: 312 ps | Reset: 0 | TAORB: 1 | State: 2 | Timer: 0 | Light A: RED    | Light B: GREEN 
 
 Time: 315 ps | Reset: 0 | TAORB: 1 | State: 3 | Timer: 0 | Light A: RED    | Light B: YELLOW
 
 Time: 322 ps | Reset: 0 | TAORB: 0 | State: 3 | Timer: 0 | Light A: RED    | Light B: YELLOW
 
 Time: 325 ps | Reset: 0 | TAORB: 0 | State: 3 | Timer: 1 | Light A: RED    | Light B: YELLOW
 
 Time: 335 ps | Reset: 0 | TAORB: 0 | State: 3 | Timer: 2 | Light A: RED    | Light B: YELLOW
 
 Time: 345 ps | Reset: 0 | TAORB: 0 | State: 3 | Timer: 3 | Light A: RED    | Light B: YELLOW
 
 Time: 355 ps | Reset: 0 | TAORB: 0 | State: 3 | Timer: 4 | Light A: RED    | Light B: YELLOW
 
 Time: 365 ps | Reset: 0 | TAORB: 0 | State: 0 | Timer: 0 | Light A: GREEN  | Light B: RED   
 Time: 375 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 0 | Light A: YELLOW | Light B: RED   
 Time: 385 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 1 | Light A: YELLOW | Light B: RED   
 Time: 395 ps | Reset: 0 | TAORB: 0 | State: 1 | Timer: 2 | Light A: YELLOW | Light B: RED   
 
 Tests finished
 
 ** Note: $finish    : /home/tuna/Documents/ELE432FPGA/Homework1/Traffic-Light-FSM/TrafficLightFSM_tb.sv(84)
    Time: 402 ps  Iteration: 0  Instance: /TrafficLightFSM_tb
 End time: 14:49:55 on Mar 06,2026, Elapsed time: 0:00:00
 Errors: 0, Warnings: 1

