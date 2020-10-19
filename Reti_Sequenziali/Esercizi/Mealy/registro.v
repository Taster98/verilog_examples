module registro(output [0:N-1]z, input [0:N-1] x, input en, input clk);
    //la lunghezza del registro è definita con un parametro
    parameter N = 8;

    reg [0:N-1]r;
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