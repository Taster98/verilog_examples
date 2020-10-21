/*
Nel test lavoro con registri da 4 bit:
*/
module test_modules();
    parameter N = 4;
    //tanti reg quanti sono gli input:
    reg [N-1:0] in1, in2;
    reg mux1,mux2,aluctl,ena,enb,clk;
    //tanti wire quanti gli output:
    wire [N-1:0] out;

    //Ora istanzio il mio modulo:
    rete_mealy #(N) my_ml(out, in1, in2, mux1, mux2, aluctl, ena, enb, clk);

    //stabilizzo il clock
    always
        #1 clk = ~clk;
    
    //main
    initial
        begin
            $dumpfile("test_modules.vcd");
            $dumpvars;
            clk=0;

            //Provo a fare 3 e 1, prima sottraggo e poi sommo
            in1=3;
            in2=1;
            mux1=0;
            mux2=0;
            aluctl=1;
            ena=0;
            enb=0;
            //Abilito la scrittura nel registro A:
            #2
            ena=1;
            //disabilito
            #2
            ena=0;
            //scrivo in B
            #2
            enb=1;
            //disabilito
            #2
            enb=0;
            //ora nei registri ho i miei numeri 3 e 1 e l'output della alu è 2
            //Ora faccio fare la somma tra 3 e 1:
            #2
            mux1=0;
            aluctl=0;
            //E ora ho 4 come risultato
            //Infine voglio scrivere nel registro b 4 e provo a fare 3+4:
            #2
            mux2=1;
            enb=1;
            #2
            enb=0;
            //E ho come risultato 7
            #10 $finish;
        end 
endmodule