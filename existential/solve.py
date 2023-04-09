import ecdsa
import random
from pwn import *
from hashlib import shake_128

CONN = CONN=remote("localhost",1024)
gen = ecdsa.curves.BRAINPOOLP256r1
#sorder = gen.order()
#secret = random.randrange(1,order)

privkey = ecdsa.SigningKey.generate(curve=ecdsa.curves.BRAINPOOLP256r1)
opubkey = privkey.get_verifying_key()

def strToHex(msg:str):
    hexmsg=str(msg.encode('ascii').hex()).upper()
    return hexmsg

def signMessage(msg:str):
    global CONN
    CONN.send("1\n".encode('ascii'))
    print(CONN.recv())
    #msg="asdf"
    
    
    CONN.send((strToHex(msg)+"\n").encode('ascii'))
    time.sleep(.1)
    response=CONN.recv()
    regx=re.split(b"( |\n)", response)
    print("Signature is"+str(regx[4]))
    return regx[4]

def verifyMessage(msg:str, sig:bytes):
    print()
    time.sleep(0.1)
    CONN.send("2\n".encode('ascii'))
    time.sleep(0.1)
    print(strToHex(msg))
    CONN.send((strToHex(msg)+"\n").encode('ascii'))
    time.sleep(0.1)
    print(sig)
    CONN.send(sig+("\n").encode('ascii'))
    time.sleep(0.1)
    response=CONN.recv()
    print(response)
    if b"Signature valid!" in response:
        print("valid signature")
        return True
    elif b"Signature invalid!" in response:
        print("invalid signature")
        return False
    else:
        print("Something is wrong")
        return False


def main():
    global CONN
    msg="flaxg"
    by=msg.encode('ascii').hex()
    print(by)
    print(shake_128(bytes.fromhex(by)).digest(16))
    print(CONN.recv())

    sig=signMessage(msg)
    verifyMessage(msg,sig)
    CONN.interactive()
    print("adsf")


if __name__ == "__main__":
    main()