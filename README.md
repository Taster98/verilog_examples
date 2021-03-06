# Verilog examples
This repository will contain all the examples of modules and primitives written in Verilog during the course Digital Design and Computer Architecture (Architettura degli Elaboratori) at University of Pisa.

## Logic ports
Here are the implementations of the well known logic ports, in modules and primitives:

### Primitives (Tables of truth)
* <b>Logic And: </b> &nbsp; <a href="Reti_Combinatorie/Porte_Logiche/And/Primitiva/and_p.v" alt="implementation_and">Implementation</a> | <a href="Reti_Combinatorie/Porte_Logiche/And/Primitiva/test_and_p.v" alt="and_test">Test</a>

* <b>Logic Or: </b> &nbsp; <a href="Reti_Combinatorie/Porte_Logiche/Or/Primitiva/or_p.v" alt="implementation_or">Implementation</a> | <a href="Reti_Combinatorie/Porte_Logiche/Or/Primitiva/test_or_p.v" alt="or_test">Test</a>

* <b>Logic Not: </b> &nbsp; <a href="Reti_Combinatorie/Porte_Logiche/Not/Primitiva/and_p.v" alt="implementation_not">Implementation</a> | <a href="Reti_Combinatorie/Porte_Logiche/Not/Primitiva/test_not_p.v" alt="not_test">Test</a>

* <b>Logic Nand: </b> &nbsp; <a href="Reti_Combinatorie/Porte_Logiche/Nand/Primitiva/nand_p.v" alt="implementation_nand">Implementation</a> | <a href="Reti_Combinatorie/Porte_Logiche/Nand/Primitiva/test_nand_p.v" alt="nand_test">Test</a>

* <b>Logic Xor: </b> &nbsp; <a href="Reti_Combinatorie/Porte_Logiche/Xor/Primitiva/xor_p.v" alt="implementation_xor">Implementation</a> | <a href="Reti_Combinatorie/Porte_Logiche/Xor/Primitiva/test_xor_p.v" alt="xor_test">Test</a>

### Modules
* <b>Logic And: </b> &nbsp; <a href="Reti_Combinatorie/Porte_Logiche/And/Modulo/and_m.v" alt="implementation_and">Implementation</a> | <a href="Reti_Combinatorie/Porte_Logiche/And/Modulo/test_and_m.v" alt="and_test">Test</a>

* <b>Logic Or: </b> &nbsp; <a href="Reti_Combinatorie/Porte_Logiche/Or/Modulo/or_m.v" alt="implementation_or">Implementation</a> | <a href="Reti_Combinatorie/Porte_Logiche/Or/Modulo/test_or_m.v" alt="or_test">Test</a>

* <b>Logic Not: </b> &nbsp; <a href="Reti_Combinatorie/Porte_Logiche/Not/Modulo/and_m.v" alt="implementation_not">Implementation</a> | <a href="Reti_Combinatorie/Porte_Logiche/Not/Modulo/test_not_m.v" alt="not_test">Test</a>

* <b>Logic Nand: </b> &nbsp; <a href="Reti_Combinatorie/Porte_Logiche/Nand/Modulo/nand_m.v" alt="implementation_nand">Implementation</a> | <a href="Reti_Combinatorie/Porte_Logiche/Nand/Modulo/test_nand_m.v" alt="nand_test">Test</a>

* <b>Logic Xor: </b> &nbsp; <a href="Reti_Combinatorie/Porte_Logiche/Xor/Modulo/xor_m.v" alt="implementation_xor">Implementation</a> | <a href="Reti_Combinatorie/Porte_Logiche/Xor/Modulo/test_xor_m.v" alt="xor_test">Test</a>

## Combinatorial Network

* <b>Full Adder (1 bit):</b> <a href="Reti_Combinatorie/Full_Adders/Full_Adder_1/fa1.v" alt="implementation_fa1">Implementation</a> | <a href="Reti_Combinatorie/Full_Adders/Full_Adder_1/test_fa.v" alt="fa1_test">Test</a>

* <b>Full Adder (2 bits):</b> <a href="Reti_Combinatorie/Full_Adders/Full_Adder_2/fa2.v" alt="implementation_fa1">Implementation</a> | <a href="Reti_Combinatorie/Full_Adders/Full_Adder_2/test_fa2.v" alt="fa1_test">Test</a>

* <b>Multiplexer (1 bit):</b> <a href="Reti_Combinatorie/Multiplexers/Multiplexer_1/mux1.v" alt="implementation_mux1">Implementation 1</a> | <a href="Reti_Combinatorie/Multiplexers/Multiplexer_1/mux1tab.v" alt="implementation_mux1">Implementation 2</a> | <a href="Reti_Combinatorie/Multiplexers/Multiplexer_1/test_mux1.v" alt="fa1_test">Test</a>

## Sequential Network

### Latches

* <b>Latch SR:</b> <a href="Reti_Sequenziali/Latch/sr.v" alt="implementation_sr">Implementation</a> | <a href="Reti_Sequenziali/Latch/test_sr.v" alt="sr_test">Test</a>

* <b>D-Latch:</b> <a href="Reti_Sequenziali/Latch/dlatch.v" alt="implementation_dlatch">Implementation</a> | <a href="Reti_Sequenziali/Latch/test_dlatch.v" alt="dlatch_test">Test</a>

* <b>Latch with write-enabled:</b> <a href="Reti_Sequenziali/Latch/enabled.v" alt="implementation_enabled">Implementation</a> | <a href="Reti_Sequenziali/Latch/test_enabled.v" alt="enabled_test">Test</a>

### Registers
* <b>Registro da 1 bit semplice:</b> <a href="Reti_Sequenziali/Registri/reg1.v" alt="implementation_reg1">Implementation</a>
* <b>Registro da N bit (parametrico):</b> <a href="Reti_Sequenziali/Registri/registro.v" alt="implementation_registro">Implementation</a>
* <b>Banco di registri:</b> <a href="Reti_Sequenziali/Registri/banco.v" alt="implementation_banco">Implementation</a> | <a href="Reti_Sequenziali/Registri/test_banco.v" alt="banco_test">Test</a>

### Memories
* <b>Memoria da N indirizzi da M bit (parametrica):</b> <a href="Reti_Sequenziali/Memorie/memoria.v" alt="implementation_memoria">Implementation</a> | <a href="Reti_Sequenziali/Memorie/test_memoria.v" alt="memoria_test">Test</a>
### Excercises
* <b>Contatore modulo 4 (con rete di Mealy):</b> <a href="Reti_Sequenziali/Registri/registro.v" alt="implementation_registro">Registro</a> | <a href="Reti_Sequenziali/Esercizi/Mealy/exits.v" alt="implementation_exits">Funzione uscite</a> | <a href="Reti_Sequenziali/Esercizi/Mealy/newstate.v" alt="implementation_newstate">Funzione prossimo stato</a> | <a href="Reti_Sequenziali/Esercizi/Mealy/mealy.v" alt="implementation_newstate">Rete di Mealy</a> | <a href="Reti_Sequenziali/Esercizi/Mealy/test_mealy.v" alt="enabled_test">Test</a>
* <b>Esercizio somma/sottrai:</b> <a href="Reti_Sequenziali/Esercizi/Somma_Sottrazione/modules.v" alt="implementation_ex2">Implementation</a> | <a href="Reti_Sequenziali/Esercizi/Somma_Sottrazione/test_modules.v" alt="ex2_test">Test</a>
## To be continued...

## LICENSE
All the provided code is completely free; see <a href="LICENSE"> GNU General Public License</a>