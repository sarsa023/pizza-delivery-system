module fourBitCounter (Reset, clk, C3, C2, C1, C0, zeroCount);
input Reset, clk;
output C3, C2, C1, C0, zeroCount;

Invgate (n0, C0);
Invgate (n1, C1);
Invgate (n2, C2);
Invgate (n3, C3);

Andgate4 (preZero, n3, n2, n1, C0);

//module dff1(D,Reset,clk,Q,Qnot);
Orgate2 (Q, preZero, zeroCount);
dff1 (Q, Reset, clk, zeroCount, nZero);

Andgate4 (B3, n3, n2, n1, n0);
//module mux2to1 (S, A, B, Out);
mux2to1 (zeroCount, 0, B3, B3z);

Andgate2 (w1, C2, C1);
Andgate2 (w2, C2, C0);
Orgate3 (B2, C3, w1, w2);
mux2to1 (zeroCount, 0, B2, B2z);

Andgate2 (w3, C1, C0); //*
Andgate3 (w4, C2, n1, n0);
Orgate3 (B1, C3, w3, w4);
mux2to1 (zeroCount, 0, B1, B1z);

Andgate2 (w5, C1, n0); //*
Andgate2 (w6, C2, n0); //*
Orgate3 (B0, C3, w5, w6);
mux2to1 (zeroCount, 0, B0, B0z);


dff1 (B0z, Reset, clk, C0, nC0);
dff1 (B1z, Reset, clk, C1, nC1);
dff1 (B2z, Reset, clk, C2, nC2);
dff1 (B3z, Reset, clk, C3, nC3);

endmodule 