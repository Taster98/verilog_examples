//primitiva per le uscite
primitive uscite(output z, input s, input x);
    table
        0 0 : 1;
        0 1 : 0;
        1 0 : 0;
        1 1 : 1;
    endtable
endprimitive