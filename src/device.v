module device (SW7, SW5, SW4, SW3, SW2, SW1, zeroC, Reset, G5, G4, G3, G2, G1, R5, R4, R3, R2, R1);
input SW7, SW5, SW4, SW3, SW2, SW1, zeroC, Reset;
output G5, G4, G3, G2, G1, R5, R4, R3, R2, R1;

//module device (SW7, SW, zeroC, Reset, G, R);
deviceN (SW7, SW1, zeroC, Reset, G1, R1);

deviceN (SW7, SW2, zeroC, Reset, G2, R2);

deviceN (SW7, SW3, zeroC, Reset, G3, R3);

deviceN (SW7, SW4, zeroC, Reset, G4, R4);

deviceN (SW7, SW5, zeroC, Reset, G5, R5);


endmodule 