module inputReg (SW6, SW5, SW4, SW3, SW2, SW1, zeroC, clk, Reset, y5, y4, y3, y2, y1);
input SW6, SW5, SW4, SW3, SW2, SW1, zeroC, Reset, clk;
output y5, y4, y3, y2, y1;

//module inputRegN (SW6, SW, zeroC, clk, Reset, Out);
inputRegN (SW6, SW5, zeroC, clk, Reset, y5);
inputRegN (SW6, SW4, zeroC, clk, Reset, y4);
inputRegN (SW6, SW3, zeroC, clk, Reset, y3);
inputRegN (SW6, SW2, zeroC, clk, Reset, y2);
inputRegN (SW6, SW1, zeroC, clk, Reset, y1);


endmodule 