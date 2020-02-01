module sel_if(
    input rst,clk,
    input [7:0]d0,d1,d2,d3,
    input [1:0]sel,
    output reg [7:0]y_if
);

always@(negedge rst,posedge clk)
if(rst==0)
    y_if <= 0;
else
    if(sel==0)
        y_if <= d0;
    else if(sel==1)
        y_if <= d1;
    else if(sel==2)
        y_if <= d2;
    else
        y_if <= d3;

endmodule