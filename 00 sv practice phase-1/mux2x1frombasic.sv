module mux2x1frombasic (in,sel,out);
    input[1:0] in;
    input sel;
    output out;
    wire w0,w1,w2;
    not (w0,sel);
    and (w1,in[0],sel);
    and (w2,in[1],w0);
    or (out,w1,w2);
endmodule

module mux2x1(
    input I0,I1,S,
    output Y
    );
wire w1,w2,w3;
not(w1,S);
and(w2,I0,w1);
and(w3,I1,S);
or(Y,w2,w3);
endmodule