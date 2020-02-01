module edge_det(
    input rst,clk,din,
    output redge,fedge
    );
    
reg q0,q1;

assign redge = q0 & ~q1;
assign fedge = q1 & ~q0; 

always@(negedge rst,posedge clk)
if(rst==0)
    begin
        q0 <= 0;
        q1 <= 0;
    end
else
    begin
        q0 <= din;
        q1 <= q0;
    end

endmodule
