module registro(output [N-1:0]z, input [N-1:0] x, input en, input clk);
    //la lunghezza del registro è definita con un parametro
    parameter N = 8;

    reg [N-1:0]r;
    //inizializzo r
    initial 
        r = 0;
    
    always @(posedge clk)
        begin
            if(en==1)
                r=x;
        end

    //assegno a z sempre il valore del registro
    assign
        z=r;
endmodule