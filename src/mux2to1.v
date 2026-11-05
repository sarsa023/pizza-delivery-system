module mux2to1 (S, A, B, Out);
input S, A, B;
output Out;

Invgate (nS, S);
Andgate2 (w1, nS, B);
Andgate2 (w2, S, A);

Orgate2 (Out, w1, w2);

endmodule 