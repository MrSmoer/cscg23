#include <stdlib.h>
#include <iostream>
#include <cstdlib>
#include <memory>
#include <verilated_vcd_c.h>
#include <verilated.h>
#include "Valu.h"
#include <iostream>
#include <bits/stdc++.h>
using namespace std;

#define BRUTE_BITS 4
// #define BIT_TIME 70000
#define BIT_TIME 520
#define MAX_SIM_TIME 2 * 8 * (BIT_TIME * 2)
#define VERIF_START_TIME 7
vluint64_t sim_time = 0;
vluint64_t posedge_cnt = 0;
vluint64_t btnprss_cnt = 0;
std::string printable = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!\"#$%&\\'()*+,-./:;<=>?@[\\]^_`{|}~ ";

/*uint tryPasswd(std::string str, int argc, char **argv)
{
    uint retval = 0;
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    VerilatedVcdC *m_trace = new VerilatedVcdC;
    Valu *dut = new Valu;
    //    dut->trace(m_trace, 5);
    //    m_trace->open("waveform.vcd");
    for (int i = 0; i < 5; i++)
    {
        for (int d = 0; d < 8; d++)
        {
            bool bit = str[i] & (1 << d);
            if (bit)
            {
                dut->BTN1 = 1;
                dut->eval();
                m_trace->dump(sim_time);
                sim_time++;
                dut->BTN1 = 0;
            }
            else
            {
                dut->BTN2 = 1;
                dut->eval();
                m_trace->dump(sim_time);
                sim_time++;
                dut->BTN2 = 0;
            }
        }
        retval = dut->LED2;
    }
    m_trace->close();
    // dut->eval();
    delete dut;
    return retval;
}*/

int main(int argc, char **argv, char **env)
{
    Verilated::commandArgs(argc, argv);
    Valu *dut = new Valu;

    clock_t start, end;

    /* Recording the starting clock tick.*/
    start = clock();

    int bits = 0;

    std::string allCombinations = std::string(); //(char)0b11110001;
    uint64_t combinations = pow(2, BRUTE_BITS) + 1;
    for (uint64_t z = 0; z < combinations; z++)
    {
        for (int i = 0; i < log2(combinations) / 8; i++)
        {
            allCombinations += (char)(z >> ((((int)(log2(combinations) / 8) -i) * 8)));
        }
        allCombinations += (char)0b10000011;
    }
    std::cout << allCombinations;
    Verilated::traceEverOn(true);
    VerilatedVcdC *m_trace = new VerilatedVcdC;
    dut->trace(m_trace, 5);
    m_trace->open("waveform.vcd");
    dut->CLKINJKT_LW = 1;
    while (sim_time < allCombinations.size() * MAX_SIM_TIME)
    {

        dut->iCLK ^= 1;
        // dut->eval();

        if (dut->iCLK == 1)
        {

            std::string s = allCombinations;
            // std::string s= "abcde";
            if (posedge_cnt % (BIT_TIME * 2) == 0)
            {
                if (bits % 9 == 0)
                {
                    dut->iBTN1 = 0;
                    dut->iBTN2 = 0;
                    dut->eval();
                    bits += 1;
                }
                else
                {
                    bool val = s[(int)((btnprss_cnt % ((s.size() - 1) * 8)) / 8)] & (1 << (btnprss_cnt % 8));
                    printf("%d", val);
                    bits += 1;
                    if (val)
                    {
                        dut->iBTN2 = 0;
                        dut->iBTN1 = 1;
                        dut->eval();
                    }
                    else
                    {
                        dut->iBTN1 = 0;
                        dut->iBTN2 = 1;
                        dut->eval();
                    }
                    if ((btnprss_cnt + 1) % 8 == 0 && btnprss_cnt != 0)
                    {
                        puts("");
                    }
                    btnprss_cnt++;
                }
            }
            else if ((posedge_cnt) % BIT_TIME == 0)
            {
                dut->iBTN1 = 0;
                dut->iBTN2 = 0;
                dut->eval();
            }
            else
            {
                dut->eval();
            }

            posedge_cnt++;
        }
        else
        {
            dut->eval();
        }
        m_trace->dump(sim_time);
        sim_time++;
    }

    m_trace->close();
    delete dut;
    // Recording end time.
    end = clock();

    // Calculating total time taken by the program.
    double time_taken = double(end - start) / double(CLOCKS_PER_SEC);
    cout << "Time taken by program is : " << fixed
         << time_taken << setprecision(5);
    cout << " sec " << endl
         << " for " << bits << "bits" << endl;


    dut = new Valu;
    sim_time += 1000;
    posedge_cnt = 0;
    btnprss_cnt = 0;

    /* clock_t clock(void) returns the number of clock ticks
       elapsed since the program was launched.To get the number
       of seconds used by the CPU, you will need to divide by
       CLOCKS_PER_SEC.where CLOCKS_PER_SEC is 1000000 on typical
       32 bit system.  */

    /* Recording the starting clock tick.*/
    start = clock();

    bits = 0;

    allCombinations = std::string(); //(char)0b11110001;
    combinations = pow(2, BRUTE_BITS) + 1;
    for (uint64_t z = 0; z < combinations; z++)
    {
        for (int i = 0; i < log2(combinations) / 8; i++)
        {
            allCombinations += (char)(z >> ((((int)(log2(combinations) / 8) -i) * 8)));
        }
        allCombinations += (char)0b00000001;
    }
    std::cout << allCombinations;
    Verilated::traceEverOn(true);
    m_trace = new VerilatedVcdC;
    dut->trace(m_trace, 5);
    m_trace->open("waveform2.vcd");
    dut->CLKINJKT_LW = 1;
    while (sim_time < allCombinations.size() * MAX_SIM_TIME*2)
    {

        dut->iCLK ^= 1;
        // dut->eval();

        if (dut->iCLK == 1)
        {

            std::string s = allCombinations;
            // std::string s= "abcde";
            if (posedge_cnt % (BIT_TIME * 2) == 0)
            {
                if (bits % 9 == 0)
                {
                    dut->iBTN1 = 0;
                    dut->iBTN2 = 0;
                    dut->eval();
                    bits += 1;
                }
                else
                {
                    bool val = s[(int)((btnprss_cnt % ((s.size() - 1) * 8)) / 8)] & (1 << (7 - btnprss_cnt % 8));
                    printf("%d", val);
                    bits += 1;
                    if (val)
                    {
                        dut->iBTN2 = 0;
                        dut->iBTN1 = 1;
                        dut->eval();
                    }
                    else
                    {
                        dut->iBTN1 = 0;
                        dut->iBTN2 = 1;
                        dut->eval();
                    }
                    if ((btnprss_cnt + 1) % 8 == 0 && btnprss_cnt != 0)
                    {
                        puts("");
                    }
                    btnprss_cnt++;
                }
            }
            else if ((posedge_cnt) % BIT_TIME == 0)
            {
                dut->iBTN1 = 0;
                dut->iBTN2 = 0;
                dut->eval();
            }
            else
            {
                dut->eval();
            }

            posedge_cnt++;
        }
        else
        {
            dut->eval();
        }
        m_trace->dump(sim_time);
        sim_time++;
    }

    m_trace->close();
    delete dut;
    exit(EXIT_SUCCESS);
    /*for (int i=0; i< printable.size();i++){
        for (int j=0; j< printable.size();j++){
            for (int k=0; k< printable.size();k++){
                for (int l=0; l< printable.size();l++){
                    for (int m=0; m< printable.size();m++){
                    std::string combination = std::string() + printable.at(i) + printable[j] + printable[k] + printable[l] + printable[m];
                     uint retval = tryPasswd(combination, argc, argv);
                    std::cout << "trying " << combination << " got " << retval << "\n";
                    }
                }
            }
        }
    }*/
}