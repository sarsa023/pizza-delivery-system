module Andgate2 (out,in1,in2);
input in1,in2;
output out;
assign #1 out=(in1&in2);
endmodule

module Andgate3 (out,in1,in2,in3);
input in1,in2,in3;
output out;
assign #1 out=(in1&in2&in3);
endmodule
module Nandgate3 (out,in1,in2,in3);
input in1,in2,in3;
output out;
assign #1 out=~(in1&in2&in3);
endmodule
module Andgate4 (out,in1,in2,in3,in4);
input in1,in2,in3,in4;
output out;
assign #1 out=(in1&in2&in3&in4);
endmodule

module Invgate (out,in1);
input in1;
output out;
assign #1 out=~(in1);
endmodule

module Orgate3 (out,in1,in2,in3);
input in1,in2,in3;
output out;
assign #1 out=(in1|in2|in3);
endmodule

module Orgate4 (out,in1,in2,in3,in4);
input in1,in2,in3,in4;
output out;
assign #1 out=(in1|in2|in3|in4);
endmodule

module Orgate2 (out,in1,in2);
input in1,in2;
output out;
assign #1 out=(in1|in2);
endmodule

module Nandgate (out,in1,in2);
input in1,in2;
output out;
assign #1 out=~(in1&in2);
endmodule



module Xnorgate (out,in1,in2);
input in1,in2;
output out;
assign #1 out=~(in1^in2);
endmodule

module Xorgate3 (out,in1,in2,in3);
input in1,in2,in3;
output out;
assign #1 out=(in1^in2^in3);
endmodule


module Norgate (out,in1,in2);
input in1,in2;
output out;
assign #1 out=~(in1|in2);
endmodule


module Norgate3 (out,in1,in2,in3);
input in1,in2,in3;
output out;
assign #1 out=~(in1|in2|in3);
endmodule


module Xorgate (out,in1,in2);
input in1,in2;
output out;
assign #1 out=(in1^in2);
endmodule








