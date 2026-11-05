module dff1(D,Reset,clk,Q,Qnot);
input D,clk,Reset;
output Q,Qnot;
reg Q,Qnot;

always @ (posedge Reset, posedge clk)
begin
if (Reset)
	begin
	Q <= 0;
	Qnot <= 1;
    end
else
	begin
Q <= D;
	Qnot <= ~D;
end


end
endmodule
