module test_mealy();

//input da 1 bit che coincide con 1 o 0
reg in;
//una variabile da 2 bit che conta quanti 1 c'erano in mod 4
wire [0:1] out;
//Il ciclo di clock:
reg clk;
//istanzio il mio automa di mealy:
Mealy m(out,in,clk);
//Inizializzo il clock a 0
initial
    begin
	    clk = 0;
    end

    always
        begin
            #3 clk = 1; //periodo
            #1 clk = 0;
        end
    //main
    initial
        begin
            $dumpfile("test_mealy.vcd");
            $dumpvars;

            in=0;
            #3 in=1;
            #4 in=1;
            #4 in=0;
            #4 in=1;
            #4 in=0;
            #4 in=0;
            #4 in=1;
            #4 in=0;
            #4 in=1;

            #5 $finish;
        end

endmodule