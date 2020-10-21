/*
Questa rete sequenziale si occupa di generare una somma (o una sottrazione) tra due input, salvati in due registri.
È evidente che si tratti di una rete di Mealy in quanto l'uscita dipende anche dall'ingresso di controllo
della ALU che decide di fare + o -
*/
//Implemento il registro parametrico:
module registro(output [N-1:0]z, input [N-1:0]in, input clk, input en);
    parameter N = 32;
    //creo il vero e proprio registro
    reg [N-1:0]r;
    //inizializzo a 0
    initial
        r = 0;
    //assegno il nuovo input se il clk è alto e se abilitato:
    always @(posedge clk)
        begin
            if(en==1)
                r<=in;
        end
    //assegnerò il valore del reg sempre all'uscita, pronto per esser letto:
    assign
        z=r;

endmodule

//Implemento il multiplexer:
module mux(output [N-1:0]z, input [N-1:0]x, input [N-1:0]y, input muxctl);
    parameter N = 32;
    //assegno x se mux1 è 0, y se mux1 è 1:
    assign
        z = (muxctl ? y : x);
endmodule

//Implemento la ALU che fa la somma/sottrazione
module ALU(output [N-1:0]z, input [N-1:0]a, input [N-1:0]b, input aluctl);
    parameter N=32;
    //se aluctl è 0 allora sommo altrimenti sottraggo
    assign
        z = (aluctl ? (a-b) : (a+b));
endmodule

//METTO INSIEME I PEZZETTI
//Creo quindi la rete di Mealy:
module rete_mealy(
    output [N-1:0] out, //registro di output
    input [N-1:0]x, //registro di input X
    input [N-1:0]y, //registro di input Y
    input mux1ctl, //input di controllo per il multiplexer 1
    input mux2ctl, //input di controllo per il multiplexer 2
    input aluctl, //input di controllo per la alu (+ o -)
    input enA, //input per la scrittura del registro A
    input enB, //input per la scrittura del registro B
    input clk); //ciclo di clock

    parameter N = 32;
    //Ora mi dichiaro i fili dell'output:
    wire [N-1:0] uscita_mux1;
    wire [N-1:0] uscita_mux2;
    wire [N-1:0] uscita_regA;
    wire [N-1:0] uscita_regB;
    wire [N-1:0] uscita_alu;

    //E ora assemblo come fossero lego
    //Ho prima i due multiplexer:
    mux #(N) mux1(uscita_mux1, x, uscita_alu, mux1ctl);
    mux #(N) mux2(uscita_mux2, y, uscita_alu,mux2ctl);
    //poi ho i due registri
    registro #(N) regA(uscita_regA, uscita_mux1, clk, enA);
    registro #(N) regB(uscita_regB, uscita_mux2, clk, enB);
    //infine ho l'alu
    ALU #(N) alu(uscita_alu,uscita_regA, uscita_regB, aluctl);

    //ora che ho finito tutto, in uscita a tutto quanto mi devo prendere l'uscita della alu
    assign
        out = uscita_alu;
endmodule