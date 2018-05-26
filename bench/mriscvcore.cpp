#include <verilated.h>          // Defines common routines
#include "Vmriscvcore.h"

#include "verilated_vcd_c.h"
#include "mriscvcore.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <cstdio>
#include <deque>

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
    add_instr add_i;
    mul_instr mul_i;

    std::deque<uint32_t> instructions;
    lui_i.rd = 1;
    lui_i.imm = 0x34;
    instr = *((uint32_t*)&lui_i);
    instructions.push_back(instr);
    lui_i.rd = 2;
    lui_i.imm = 0x67;
    instr = *((uint32_t*)&lui_i);
    instructions.push_back(instr);
    add_i.rd = 3;
    add_i.rs1 = 1;
    add_i.rs2 = 2;
    instr = *((uint32_t*)&add_i);
    instructions.push_back(instr);
    mul_i.rd = 4;
    mul_i.rs1 = 1;
    mul_i.rs2 = 2;
    instr = *((uint32_t*)&mul_i);
    instructions.push_back(instr);

    while (!Verilated::gotFinish())
    {
        uut->clk = uut->clk ? 0 : 1;       // Toggle clock
        pos_edge = uut->clk == 1;
        uut->eval();
        if(pos_edge)
          cycle++;

        switch(cycle)
        {
            case 2:
            uut->rstn = 1;
            uut->ARready = 0;
            uut->Rvalid = 0;
            break;

            /*case 4:
            lui_i.rd = 1;
            lui_i.imm = 0x45;
            instr = *((uint32_t*)&lui_i);
            uut->Rdata = instr;
            uut->ARready = 1;
            uut->Rvalid = 1;
            break;
                        
            case 8:
            lui_i.rd = 2;
            lui_i.imm = 0x67;
            instr = *((uint32_t*)&lui_i);
            uut->Rdata = instr;
            uut->ARready = 1;
            uut->Rvalid = 1;
            break;
            
            case 17:
            add_i.rd = 3;
            add_i.rs1 = 1;
            add_i.rs2 = 2;

            instr = *((uint32_t*)&add_i);
            uut->Rdata = instr;
            break;
            case 18:
            uut->ARready = 1;
            break;
            case 19:
            uut->Rvalid = 1;
            break;

            default:
            uut->ARready = 0;
            uut->Rvalid = 0;
            break;*/
        }
        uut->eval();
        
          

        if(cycle > 5 && pos_edge && instructions.size())
        {
            instr = instructions.front();
            instructions.pop_front();

            if(uut->ARvalid && uut->RReady)
            {
                uut->ARready = 1;
                uut->Rvalid = 1;
                uut->Rdata = instr;
                printf("%05llu Read address: 0x%.8X\n",cycle,uut->ARdata);
            }
            else {
                uut->ARready = uut->RReady;
                uut->Rvalid = uut->RReady;
                instructions.push_front(instr);
            }
        }
        else if(pos_edge && !instructions.size()){
            uut->ARready = 0;
            uut->Rvalid = 0;
        }

        
        uut->timestamp = cycle;
        uut->eval();            // Evaluate model

        if (tfp != NULL)
        {
            tfp->dump (main_time);
        }

        main_time++;            // Time passes...

        if(cycle > 128)
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
