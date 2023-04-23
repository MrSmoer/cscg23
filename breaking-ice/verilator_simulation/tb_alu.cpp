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
using namespace std;

#define BRUTE_BITS 2
#define BIT_TIME 140050
// #define BIT_TIME 520
//#define MAX_SIM_TIME 2 * 8 * (BIT_TIME * 2)
#define MAX_SIM_TIME (BIT_TIME * 2)*2
#define VERIF_START_TIME 7
vluint64_t sim_time = 0;
vluint64_t posedge_cnt = 0;
vluint64_t btnprss_cnt = 0;
std::string printable = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!\"#$%&\\'()*+,-./:;<=>?@[\\]^_`{|}~ ";

uint tryPasswd(std::vector<bool> bitset, int taskNumber, std::string filename)
{
    vluint64_t sim_time_begin = sim_time;
    posedge_cnt = 0;
    btnprss_cnt = 0;
    std::vector<bool> theseBits;
    uint64_t combinations = pow(2, 0) + 1;

    Valu *dut = new Valu;
    VerilatedVcdC *m_trace = new VerilatedVcdC;
    dut->trace(m_trace, 5);
    m_trace->open(filename.c_str());

    // dut->CLKINJKT_LW = 1;
    int bits = 0;
    cout << bitset.size()<<"\n";
    while (sim_time - sim_time_begin < (bitset.size()+1) * MAX_SIM_TIME)
    {
        // cout << "trying " << taskNumber << "\n";

        dut->iCLK ^= 1;
        // dut->eval();

        if (dut->iCLK == 1)
        {

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
                    bool val = bitset[btnprss_cnt]; //[(int)((btnprss_cnt % ((s.size() - 1) * 8)) / 8)] & (1 << (btnprss_cnt % 8));
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
    return 0;
}

bool appendPattern(std::vector<bool>& bits, std::string pattern)
{
    //std::vector<bool> bits = *bitlist;
    for (int i = 0; i < pattern.length(); i++)
    {
        bits.push_back(pattern[i] - '0');
    }
    for (size_t i = 0; i < bits.size(); i++)
        {
            std::cout << bits[i];
        }
        std::cout << std::endl;
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
    appendPattern(bits, "100000011000000110000001100000011000000110000001");
    for (int i = 0; i < pow(2, BRUTE_BITS)+1; i++)
    {
        // std::string bitstring="00111100";
        std::vector<bool> currbits=bits;
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
        cout <<"bitstring is"<<bitstring << "\n";
        appendPattern(currbits, bitstring);
        for (size_t i = 0; i < currbits.size(); i++)
        {
            std::cout << currbits[i];
        }
        std::cout << std::endl;

        std::string filename = "waveform";
        filename += std::to_string(i);
        filename += ".vcd";
        std::cout << "wereherer\n";
        tryPasswd(currbits, i, filename);
        sim_time += BIT_TIME * 2;

        logs.push_back(filename);
    }

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
        /*while (std::getline(file, line))
        {
            outputFile << line << std::endl;
        }*/
        file.close();
    }
    outputFile.close();
    posedge_cnt = 0;
    btnprss_cnt = 0;
}