//====================================================
// 4-bit Johnson Counter (Twisted Ring Counter)
//====================================================

module johnson_counter(
    input clk,
    input reset,
    output reg [3:0] count
);


// Johnson Counter Operation
always @(posedge clk or posedge reset)
begin

    if(reset)
    begin
        count <= 4'b0000;
    end

    else
    begin
        // Shift left and feedback inverted MSB
        count <= {count[2:0], ~count[3]};
    end

end


endmodule