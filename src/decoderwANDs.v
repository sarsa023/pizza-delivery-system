module decoderwANDs(I2, I1, I0, S5, S4, S3, S2, S1, Y5, Y4, Y3, Y2, Y1);
input I2, I1, I0, S5, S4, S3, S2, S1;
output Y1, Y2, Y3, Y4, Y5;

Invgate (n2, I2);
Invgate (n1, I1);
Invgate (n0, I0);

Andgate3 (D4, I2, n1, n0);//Decoder D4 = I2.(~I1).(~I)
Andgate2 (Y5, D4, S5);// ANDed with the switch with resonating order

Andgate3 (D3, n2, I1, I0);//D3 = (~I2).I1.I0
Andgate2 (Y4, D3, S4);

Andgate3 (D2, n2, I1, n0);//D2 = (~I2).I1.(~I0)
Andgate2 (Y3, D2, S3);

Andgate3 (D1, n2, n1, I0);//D1 = (~I2).(~I1).I0
Andgate2 (Y2, D1, S2);

Andgate3 (D0, n2, n1, n0);//D0 = (~I2).(~I1).(~I0)
Andgate2 (Y1, D0, S1);

endmodule 