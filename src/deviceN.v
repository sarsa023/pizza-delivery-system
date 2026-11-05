module deviceN (SW7, SW, zeroC, Reset, G, R);
input SW7, SW, zeroC, Reset;
output G, R;

Orgate2 (swReset, Reset, inReg);
dff1 (SW, swReset, SW, swReg, notSw);

Andgate2 (sel, swReg, SW7); 
Andgate2 (in, swReg, zeroC);

//module dff1(D,Reset,clk,Q,Qnot);
dff1 (sel, Reset, sel, selReg, nSel);
dff1 (in, Reset, in, inReg, nIn);

//module Dmux (in, S, a, b);
Dmux (inReg, selReg, inG, R);

//module mux2to1 (S, A, B, Out);
mux2to1 (inReg, inG, swReg, G);


endmodule 