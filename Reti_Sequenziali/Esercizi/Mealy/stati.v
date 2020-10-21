//primitiva per il nuovo stato
primitive stato(output s1, input s, input x);
    table
        0 0 : 0;
        0 1 : 1;
        1 0 : 1;
        1 1 : 0;
    endtable
endprimitive