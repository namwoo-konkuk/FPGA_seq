module reg8(
    input rst,clk,
    input [7:0]din,
    output reg [7:0]qout
    );
    
always@(negedge rst,posedge clk)
if(rst==0)
    begin
        qout <= 0;
    end
else
    begin
        qout <= din;
    end
    
endmodule