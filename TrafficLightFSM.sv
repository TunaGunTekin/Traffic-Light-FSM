`timescale 1ns/1ps

module TrafficLightFSM(
    input logic clk,
    input logic reset,
    input logic TAORB, // 1: A Traffic, B Empty; 0: B Traffic, A Empty

    output reg [1:0] LightA, //00 : RED, 01: YELLOW, 10:GREEN
    output reg [1:0] LightB  //00 : RED, 01: YELLOW, 10:GREEN   
);

localparam [1:0] RED    = 2'b00;
localparam [1:0] YELLOW = 2'b01;
localparam [1:0] GREEN  = 2'b10;

logic [2:0] timer, next_timer;

typedef enum logic [1:0] {
    S0, // LightA is Green, LightB is Red 
    S1, // LightA is Yellow, LightB is Red
    S2, // LightA is Red, LightB is Green
    S3 // LightA is Red, LightB is Yellow
} state_t;

state_t current_state_t,next_state_t;


always_ff @(posedge clk or posedge reset) begin
    if(reset) begin
        current_state_t <= S0;
        timer <= 3'd0;
    end else begin
        current_state_t <= next_state_t;
        timer <= next_timer;
    end
end

always_comb begin
    next_state_t = current_state_t;
    next_timer = timer;
    LightA = RED; // Initialized
    LightB = RED;

    case(current_state_t) 
        S0: begin
            LightA = GREEN; // Green
            LightB = RED; // Red
            if(~TAORB) begin
                next_state_t = S1;
                next_timer = 3'd0;
            end
        end
        S1: begin
            LightA = YELLOW; //Yellow
            LightB = RED; //Red
            if(timer < 3'd4)
                next_timer = timer + 1;
            else begin
                next_state_t = S2;
                next_timer = 3'd0;
            end
        end
        S2: begin
            LightA = RED; // Red
            LightB = GREEN; // Green
            if(TAORB) begin
                next_state_t = S3;
                next_timer = 3'd0;
            end
        end
        S3: begin
            LightA = RED; // Red
            LightB = YELLOW; // Yellow
            if (timer < 3'd4) begin
                next_timer = timer + 1;
            end
            else begin
                next_state_t = S0;
                next_timer = 3'd0;
            end
        end
           
    endcase

end


endmodule
