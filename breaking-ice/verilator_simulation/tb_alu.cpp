#include <stdlib.h>
#include <iostream>
#include <cstdlib>
#include <memory>
#include <verilated_vcd_c.h>
#include <verilated.h>
#include "Valu.h"
#include <iostream>
#include <bits/stdc++.h>
#include <list>
#include <bitset>
#include <algorithm>
#include <chrono>
using namespace std::chrono;
using namespace std;

//#define FAST
#define BRUTE_BITS 0
#ifndef FAST
 #define BIT_TIME 120500
#else
 #define NODUMP
 #define BIT_TIME 1
#endif
#define MAX_SIM_TIME (BIT_TIME * 2) * 2
#define VERIF_START_TIME 7

vluint64_t sim_time = 0;
vluint64_t posedge_cnt = 0;
vluint64_t btnprss_cnt = 0;

uint tryPasswd(std::vector<bool> bitset, int taskNumber, std::string filename)
{
    vluint64_t sim_time_begin = sim_time;
    posedge_cnt = 0;
    btnprss_cnt = 0;
    std::vector<bool> theseBits;
    uint64_t combinations = pow(2, 0) + 1;

    Valu *dut = new Valu;
#ifndef NODUMP
    VerilatedVcdC *m_trace = new VerilatedVcdC;
    dut->trace(m_trace, 5);
    m_trace->open(filename.c_str());
#endif
    int bits = 0;
    while (sim_time - sim_time_begin < (bitset.size() + 4) * MAX_SIM_TIME)
    {

        dut->iCLK ^= 1;

        if (dut->iCLK == 1)
        {
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
                    bool val = bitset[btnprss_cnt];
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
#ifndef NODUMP
        m_trace->dump(sim_time);
#endif
        sim_time++;
    }
    if (dut->iLED1 == 1)
        return 1;
#ifndef NODUMP
    m_trace->close();
#endif
    delete dut;
    return 0;
}

bool appendPattern(std::vector<bool> &bits, std::string pattern)
{
    for (int i = 0; i < pattern.length(); i++)
    {
        bits.push_back(pattern[i] - '0');
    }
    return true;
}
std::string intToBitString(int num)
{
    std::string bitStr;
    bool foundOne = false;
    for (int i = sizeof(int) * 8 - 1; i >= 0; i--)
    {
        if (num & (1 << i))
        {
            foundOne = true;
            bitStr += '1';
        }
        else if (foundOne)
        {
            bitStr += '0';
        }
    }
    return bitStr;
}

int main(int argc, char **argv, char **env)
{
    Verilated::commandArgs(argc, argv);
    Verilated::traceEverOn(true);
    std::vector<bool> bits;
    std::list<std::string> logs;
    appendPattern(bits, "0111000000110100011010010100111000100001");
    auto start = high_resolution_clock::now();

    for (int i = 0; i < pow(2, BRUTE_BITS) + 1; i++)
    {
        std::vector<bool> currbits = bits;
        std::string bitstring = string();

        if (i > 0)
        {
            bitstring = intToBitString(i).substr(intToBitString(i).find('1'));
        }
        else
        {
            bitstring = "0";
        }
        std::reverse(bitstring.begin(), bitstring.end());

        appendPattern(currbits, bitstring);
#ifdef NODUMP
        tryPasswd(currbits, i, "filename");
        sim_time += BIT_TIME * 2;
    }
    auto stop = high_resolution_clock::now();
#else
        std::string filename = "waveform";
        filename += std::to_string(i);
        filename += ".vcd";

        tryPasswd(currbits, i, filename);
        logs.push_back(filename);
        sim_time += BIT_TIME * 2;

    }
    auto stop = high_resolution_clock::now();
    std::string line;
    std::ofstream outputFile("combined.vcd");
    std::ifstream file("waveform0.vcd");
    while (std::getline(file, line))
    {
        outputFile << line << std::endl;
        if (line.find("$enddefinitions $end") != std::string::npos)
        {
            break;
        }
    }
    file.close();

    for (auto it : logs)
    {
        cout << "working on file " << it << "\n";
        std::ifstream file(it);
        while (std::getline(file, line))
        {
            if (line.find("$enddefinitions $end") != std::string::npos)
            {
                break;
            }
        }
        outputFile << file.rdbuf();
        file.close();
    }
    outputFile.close();
#endif
    
    auto duration = duration_cast<microseconds>(stop - start);

    cout << duration.count() << std::endl;
    posedge_cnt = 0;
    btnprss_cnt = 0;
}