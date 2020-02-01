module d_ff(
    input rst,clk,
    input din,
    output reg qout
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