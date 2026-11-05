module dualmux (S, I13, I12, I11, I10, I02, I01, I00, O3, O2, O1, O0);
input S, I13, I12, I11, I10, I02, I01, I00;
output O3, O2, O1, O0;

//module mux2to1 (S, A, B, Out);
mux2to1 (S, I13, 0, O3);
mux2to1 (S, I12, I02, O2);
mux2to1 (S, I11, I01, O1);
mux2to1 (S, I10, I00, O0);

endmodule 