/*
Come output abbiamo outputMemory1 e outputMemory2, poiché questa volta indirizziamo
la "memoria" con 2 indirizzi diversi per la lettura e un terzo indirizzo per la scrittura.
Infatti abbiamo poi come input:
inputMemory --> valore da scrivere in memoria (se en=1)
memoryAddress1 e memoryAddress2 --> indirizzi per la lettura dei banchi 1 e 2
memoryAddress3 --> indirizzo per la scrittura in memoria del valore in input
enabled e clock come sempre
*/
module banco(
output [M-1:0]outputMemory1,
output [M-1:0]outputMemory2,
input [M-1:0]inputMemory,
input [N-1:0]memoryAddress1,
input [N-1:0]memoryAddress2,
input [N-1:0]memoryAddress3,
input en,
input clk
);

    //definisco i parametri di default per la dimensione della parola e della memoria:
    parameter M = 32;
    parameter N = 10;

    //Come input vogliamo inserire un vettore di (2 alla N)-1 registri
    //larghi M bit. (ossia ogni registro è una parola da M bit, e la memoria
    //è un array di 2 alla N -1 registri.)
    reg [M-1:0] mem [0:2**N-1];
    //Mi definisco l'indice del for per inizializzare la memoria a 0:
    integer i;

    //inizializzo la memoria
    initial
        begin
            //sintassi come in C, non mi servono le graffe perché c'è una sola riga.
            for(i=0;i<2**N-1;i++)
                mem[i] = 0; 
        end
    
    //Qui scrivo la logica di scrittura in memoria: Assegno in maniera asincrona il nuovo
    //valore SE E SOLO SE il ciclo di clock è ALTO e ENABLED=1: L'indirizzo è il terzo, 
    //quello per la scrittura
    always @(posedge clk)
        begin
            if(en)
                mem[memoryAddress3] <= inputMemory;
        end

    //Infine, quello che io devo leggere ogni volta in memoria (l'output)
    //È sempre quello che è scritto in memoria: (in due output)
    assign
        outputMemory1 = mem[memoryAddress1];
    
    assign
        outputMemory2 = mem[memoryAddress2];

endmodule