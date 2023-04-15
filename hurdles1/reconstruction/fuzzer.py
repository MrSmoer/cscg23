#!/usr/bin/python3

import subprocess, string

charset=string.printable#_letters+"0123456789"+"{} \"#$%&'-:;<>=@[]^|~_/\\!.()"
stage1="1_kn0w_h0w_"
stage2=""
t=[[],[],[],[]]

def compile():
    subprocess.run(["gcc","reconstruction.c","stage1.c","stage2.c","-o","reconstruction2"],capture_output=True, text=True)

def main():
    global stage2,t
    compile()
    cmd=stage1+stage2
    for i in range(len(t)):
        for c in charset:
            #print(c)
            response=subprocess.run(["./reconstruction2",cmd+stage2[:i]+c+"asdfasdf"],capture_output=True, text=True)
            if "ass"+str(i+1) in response.stdout:
                t[i].append(c)
                print("Solution: "+c)
                if len(stage2)<i+1:
                    stage2=stage2+c
            #print(response.stdout)
    print(t)

if __name__=="__main__":
    main()