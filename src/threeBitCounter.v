module threeBitCounter (Reset, clk, C2, C1, C0);
input Reset, clk;
output C2, C1, C0;

Invgate (n0, C0);
Invgate (n1, C1);
Invgate (n2, C2);

Orgate2 (D0, n0, C2);//D0 = C2+nC0

Andgate3 (w1, n2, n1, C0);
Andgate2 (w2, C1, n0);
Orgate2 (D1, w1, w2);//D1 = nC2.nC1.C0 + C1.nC0

Andgate2 (w3, C1, C0);
Orgate2 (D2, w3, C2);// D2 = C1.C0 + C2

//module dff1(D,Reset,clk,Q,Qnot);
dff1 (D0, Reset, clk, C0, nC0);
dff1 (D1, Reset, clk, C1, nC1);
dff1 (D2, Reset, clk, C2, nC2);

endmodule 