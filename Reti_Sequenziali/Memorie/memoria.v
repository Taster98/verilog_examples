/*Tra i parametri abbiamo l'output della memoria,
che sarebbe il valore che vogliamo leggere da essa.
Dopodiché in input abbiamo inputMemory che sarà il 
valore che scriveremo in memoria, l'indirizzo che sarebbe
l'indirizzo della cella di memoria da leggere/scrivere,
l'en che è il segnale di scrittura (se 1) o lettura (se 0)
Infine naturalmente il clock (clk).*/
module memoria(
    output [M-1:0] outputMemory,
    input [M-1:0] inputMemory,
    input [N-1:0] indirizzo,
    input en,
    input clk
);
    //Qui definisco i valori standard dei parametri qualora non 
    //fossero specificati nel test
    parameter M=32;
    parameter N=10;

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
    //valore SE E SOLO SE il ciclo di clock è ALTO e ENABLED=1:
    always @(posedge clk)
        begin
            if(en)
                mem[indirizzo] <= inputMemory;
        end

    //Infine, quello che io devo leggere ogni volta in memoria (l'output)
    //È sempre quello che è scritto in memoria:
    assign
        outputMemory = mem[indirizzo];
endmodule