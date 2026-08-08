`timescale 1ns/1ps

module johnson_counter_tb;


reg clk;
reg reset;

wire [3:0] count;


// Module Instance

johnson_counter uut(
    .clk(clk),
    .reset(reset),
    .count(count)
);


// Clock Generation

always #5 clk = ~clk;


initial
begin

    $dumpfile("johnson_counter.vcd");
    $dumpvars(0,johnson_counter_tb);


    clk = 0;
    reset = 1;


    #10;

    reset = 0;


    // Run Counter

    #100;


    $finish;

end


initial
begin

    $monitor("Time=%0t Count=%b",
              $time,count);

end


endmodule