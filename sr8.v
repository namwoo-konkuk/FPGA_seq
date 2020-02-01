module sr8(
    input rst,clk,
    input sdin,
    output reg [7:0]pq
);

always@(negedge rst,posedge clk)
if(rst==0)
begin
    pq <= 0;
end

else
begin
    pq <= {pq[6:0],sdin};
end

endmodule
