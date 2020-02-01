module sel_case(
    input clk,rst,
    input [7:0]d0,d1,d2,d3,
    input [1:0]sel,
    output reg [7:0]y_case
);

always@(negedge rst,posedge clk)
if(rst==0)
    y_case <= 0;
else
    case(sel)
        2'd0 : y_case <= d0;
        2'd1 : y_case <= d1;
        2'd2 : y_case <= d2;
        default : y_case <= d3;
    endcase

endmodule