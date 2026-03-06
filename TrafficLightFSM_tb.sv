`timescale 1ps/1ps

module TrafficLightFSM_tb;

    logic clk;
    logic reset;
    logic TAORB;
    logic [1:0] LightA;
    logic [1:0] LightB;

    TrafficLightFSM dut (
        .clk(clk),
        .reset(reset),
        .TAORB(TAORB),
        .LightA(LightA),
        .LightB(LightB)
    );

    always #5 clk = ~clk;

    function string get_light_name(logic [1:0] light); //STrings for Display
        case(light)
            2'b00: return "RED   ";
            2'b01: return "YELLOW";
            2'b10: return "GREEN ";
            default: return "UNKWN ";
        endcase
    endfunction

    initial begin
        $timeformat(-12, 0, " ps", 5); 
        $monitor("Time: %0t | Reset: %b | TAORB: %b | State: %0d | Timer: %0d | Light A: %s | Light B: %s", 
                 $time, reset, TAORB, dut.current_state_t, dut.timer, 
                 get_light_name(LightA), get_light_name(LightB));
    end

    initial begin
        
        clk = 0;
        reset = 1;
        TAORB = 1;

        $display("\nStandart Flow FOr Traffic(S0 -> S1 -> S2 -> S3 -> S0)\n");
        #15 reset = 0; 
        
        #20; // S0 A= Green, B= Red
        
        TAORB = 0; // S0 to S1 triggered
        #80;       // After 5 clock cycles it will be in S2
        
        TAORB = 1; // S2 to S3 Trigger
        #80;       // After 5 clock cycles it will be in S0

        $display("\nEdge Conditions Tests\n");
        $display("\nReset at Middle of Timer Test\n"); // I wanted to test out some edge conditions too.
        TAORB = 0; // S0 to S1 Triggered 
        #25;       // Middle of Timer

        reset = 1; 
        #12;       // Reset is high
        reset = 0;
        #20;       // System must reset to S0 stage A= Green, B= Red

        $display("\nTAORB Randomly Change at the Middle of Timer\n");

        TAORB = 0; // S0 to S1 Triggered
        
        TAORB = 1; #10; //Change in TAORB
        TAORB = 0; #5;
        TAORB = 1; #5;

        TAORB = 0; #40; //It shouldn't affect the timer so it must go to S2

        $display("\nTAORB Change for one clock at the Middle of Timer\n");

        TAORB = 1; // S2 to S3 triggered
        #10;       // Only one Clock
        TAORB = 0; 
        
        #80;       // Even for a one cycle it must change the state S2 to S3

        $display("\nTests finished\n");

        $finish;
    end

endmodule