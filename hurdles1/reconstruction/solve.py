#!/usr/bin/python3

import subprocess, string

charset=string.printable#_letters+"0123456789"+"{} \"#$%&'-:;<>=@[]^|~_/\\!.()"
stage1="1_kn0w_h0w_"
stage2=""
t=[[],[],[],[]]

def compile():
    subprocess.run(["gcc","reconstruction.c","stage1.c","stage2.c","stage3.c","-o","reconstruction2"],capture_output=True, text=True)

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
                print("In charset: "+c)
                if len(stage2)<i+1:
                    stage2=stage2+c
            #print(response.stdout)
    print(t)
    for c in t[0]:
        for d in t[1]:
            for e in t[2]:
                for f in t[3]:
                    response=subprocess.run(["./hurdles",cmd+c+d+e+f+"asdfasdf"],capture_output=True, text=True)
                    if "You have completed stage 2" in response.stdout:
                        print("GOT IT! "+stage1+c+d+e+f)
                        print("proud")
                        print(response.stdout)
                        return
                


if __name__=="__main__":
    main()