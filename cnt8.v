module cnt8(
    input rst,clk,
    output reg [7:0]qout
);

always@(negedge rst,posedge clk)
if(rst==0)
begin
    qout <= 0;
end

else
begin
    qout <= qout+1;
end

endmodule