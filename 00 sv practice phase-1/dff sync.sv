module sync_dff (
    d,set,reset,q,qbar
    );

    input  d,set,reset, clk;
    output reg q      ;
    output qbar       ;
    assign qbar = ~q;
    always @(posedge clk) begin
        if (set ==0 ) q<=1;
        else if (reset == 0) q<=0;
        else q<=d;
    end
endmodule