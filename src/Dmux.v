module Dmux (in, S, a, b);
input in, S;
output a, b;

Andgate2 (a, in, S);

Invgate (nS, S);
Andgate2 (b, in, nS);

endmodule 