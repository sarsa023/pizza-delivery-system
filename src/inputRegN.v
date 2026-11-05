module inputRegN (SW6, SW, zeroC, clk, Reset, Out);
input SW6, SW, zeroC, clk, Reset;
output Out;

Invgate (n6, SW6);
Andgate2 (w1, n6, clk);

//module mux2to1 (S, A, B, Out);
//module dff1(D,Reset,clk,Q,Qnot);

dff1 (SW, Reset, w1, Out, n1);

//Andgate2 (w2, zeroC, Out);
//dff1 (1, Reset, w2, sel, n2);

//mux2to1 (sel, 0, outR, Out);

endmodule 