module seg7 (A0, B0, C0, D0, a, b, c, d, e, f, g);
input A0, B0, C0, D0;
output a, b, c, d, e, f, g;

Invgate (nC, C0);
Xorgate (w1, B0, D0);
Andgate2 (a, nC, w1);

Xorgate (w2, C0, D0);
Andgate2 (b, B0, w2);

Invgate (nA, A0);
Invgate (nB, B0);
Invgate (nD, D0);
Andgate4 (c, nA, nB, C0, nD);

Andgate3 (w3, B0, C0, D0);
Orgate2 (d, w3, a);

Andgate2 (w4, B0, nC);
Orgate2 (e, D0, w4);

Orgate2 (w5, C0, D0);
Andgate2 (w6, nB, w5);
Andgate3 (w7, nA, C0, D0);
Orgate2 (f, w6, w7);

Andgate3 (w8, nA, nB, nC);
Andgate3 (w9, B0, C0, D0);
Orgate2 (g, w8, w9);

endmodule 