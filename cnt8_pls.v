module cnt8_pls(
    input rst,clk,
    input pls,
    output reg [7:0]qout
);

reg pl0,pl1;

always@(negedge rst,posedge clk)
if(rst==0)
begin
    pl0 <= 0;
    pl1 <= 0;
    qout <= 0;
end

else
begin
    pl0 <= pls;
    pl1 <= pl0;
    if((pl0&~pl1)==1)
    begin 
        qout <= qout+1;
    end
    else
    begin
        qout <= qout;
    end
end

endmodule