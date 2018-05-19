#include <verilated.h>          // Defines common routines
#include "Vmriscvcore.h"

#include "verilated_vcd_c.h"
#include "mriscvcore.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <cstdio>

Vmriscvcore *uut;                     // Instantiation of module
vluint64_t main_time = 0;       // Current simulation time

double sc_time_stamp () {       // Called by $time in Verilog
    return main_time;           // converts to double, to match
    // what SystemC does
}

int main(int argc, char** argv)
{
    // turn on trace or not?
    bool vcdTrace = true;
    VerilatedVcdC* tfp = NULL;

    Verilated::commandArgs(argc, argv);   // Remember args
    uut = new Vmriscvcore;   // Create instance

    uut->eval();
    uut->eval();

    if (vcdTrace)
    {
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdC;
        uut->trace(tfp, 99);

        std::string vcdname = argv[0];
        vcdname += ".vcd";
        std::cout << vcdname << std::endl;
        tfp->open(vcdname.c_str());
    }

    uut->clk = 0;
    uut->eval();
    uint64_t cycle = 0;
    bool pos_edge = false;
    uint32_t instr = 0;
    lui_instr lui_i;

    while (!Verilated::gotFinish())
    {
        uut->clk = uut->clk ? 0 : 1;       // Toggle clock
        pos_edge = uut->clk == 1;

        if(pos_edge)
          cycle++;

        switch(cycle)
        {
            case 2:
            uut->rstn = 1;
            break;

            case 4:
            lui_i.rd = 1;
            lui_i.imm = 0x45;
            instr = *((uint32_t*)&lui_i);
            uut->Rdata = instr;
            break;
            case 5:
            uut->ARready = 1;
            break;
            case 6:
            uut->Rvalid = 1;
            break;

            case 10:
            lui_i.rd = 2;
            lui_i.imm = 0x67;
            instr = *((uint32_t*)&lui_i);
            uut->Rdata = instr;
            break;
            case 11:
            uut->ARready = 1;
            break;
            case 12:
            uut->Rvalid = 1;
            break;

            default:
            uut->ARready = 0;
            uut->Rvalid = 0;
            break;
        }
        
        uut->timestamp = cycle;
        uut->eval();            // Evaluate model

        if (tfp != NULL)
        {
            tfp->dump (main_time);
        }

        main_time++;            // Time passes...

        if(cycle > 32)
           break;      
    }

    uut->final();               // Done simulating

    if (tfp != NULL)
    {
        tfp->close();
        delete tfp;
    }

    delete uut;

    return 0;
}
