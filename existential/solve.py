import ecdsa
import random
from pwn import *
from hashlib import shake_128
from ecdsa.util import sigdecode_string
from ecdsa.ecdsa import Private_key,Public_key
#import olll
from sympy import mod_inverse as modular_inv
import json

#CONN = CONN=remote("localhost",1024)

CONN = remote("962d73f9434c0d31a086d76d-existential.challenge.master.cscg.live", 31337, ssl=True)
gen = ecdsa.curves.BRAINPOOLP256r1
all=[]
#sorder = gen.order()
#secret = random.randrange(1,order)
curve=ecdsa.curves.BRAINPOOLP256r1
privkey = ecdsa.SigningKey.generate(curve=curve)
order=curve.generator.order()
print("ORDER: "+str(order))
opubkey = privkey.get_verifying_key()

def strToHex(msg:str):
    hexmsg=str(msg.encode('ascii').hex()).upper()
    return hexmsg

def signMessage(msg:str):
    order=76884956397045344220809746629001649092737531784414529538755519063063536359079
    #A9FB57DBA1EEA9BC3E660A909D838D718C397AA3B561A6F7901E0E82974856A7
    if int.from_bytes(shake_128(msg.encode('ascii')).digest(16)+b"\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF","big")>order-1:
        print("I'd better not sign this one")
        return None
    global CONN
    CONN.send("1\n".encode('ascii'))
    t=CONN.recvuntil("(hex):".encode('ascii'))
    #print(t)
    #msg="asdf"
    CONN.send((strToHex(msg)+"\n").encode('ascii'))
    time.sleep(.1)
    t=CONN.recvuntil("Signature (hex): ".encode('ascii'))
    time.sleep(.1)
    response=CONN.recvuntil("You can:")
    regx=re.split(b"( |\n|\r)", response)
    #print("Signature is"+str(regx[6]))
    tup=(msg,shake_128(msg.encode('ascii')).digest(16),regx[0])
    return tup

def verifyMessage(msg:str, sig:bytes):
    print(CONN.recv())
    time.sleep(0.05)
    CONN.send("2\n".encode('ascii'))
    #print(CONN.recv())
    time.sleep(0.05)
    #print(strToHex(msg))
    response=CONN.recvuntil("Message (hex):".encode('ascii'))
    CONN.send((strToHex(msg)+"\n").encode('ascii'))
    time.sleep(0.05)
    print(sig)
    CONN.recvuntil("Signature (hex):".encode('ascii'))
    CONN.send(sig+("\n").encode('ascii'))
    time.sleep(0.05)
    response2=CONN.recvuntil("You can:".encode('ascii'))
    print(response2)
    if b"Signature valid!" in response2:
        print("valid signature")
        return True
    elif b"Signature invalid!" in response2:
        print("invalid signature")
        return False
    else:
        print("Something is wrong")
        return False


def buildMatrix(inputs:list):
    print("Making matrix")
    size=len(inputs)
    orderrows=[]
    for i in range(size):
        row=[]
        for t in range(i):
            row.append(0)
        row.append(order)
        for t in range(size-i+1):
            row.append(0)
        orderrows.append(row)
    sigrow=[]
    msgrow=[]
    for i in range(size):
        #print(bytes.fromhex(inputs[i][2].decode()))
        sig=sigdecode_string(bytes.fromhex(inputs[i][2].decode()),order)
        r=sig[0]
        s_inv= modular_inv(sig[1],order)
        sigrow.append(r*s_inv)
        msg=(inputs[i][0].encode('ascii').hex())
        msgrow.append(int(msg,16)*s_inv)
    sigrow.append((2**256)/order)
    sigrow.append(0)
    orderrows.append(sigrow)

    msgrow.append(0)
    msgrow.append((2**256))
    orderrows.append(msgrow)
        
    #print(orderrows)
    return orderrows


def toJson(all):
    print("Converting to json")
    sigs=[]
    for e in all:
        #print(e[1])
        kp=int(e[1].hex(),16)
        r=sigdecode_string(bytes.fromhex(e[2].decode()),order)[0]
        s=sigdecode_string(bytes.fromhex(e[2].decode()),order)[1]
        sigs.append({"kp":kp,"r":r,"s":s})

    full = {
            "curve": "BrainpoolP256R1",
            "public_key": None,
            "message": all[0][0],
            "known_type": "MSB",
            "known_bits": 128,
            "signatures": sigs,

        }
    jsonobj=json.dumps(full, indent=4)
    print(jsonobj)
    return jsonobj

def main():
    global CONN, all
    msg="fla"
    by=msg.encode('ascii').hex()
    print(by)
    print(shake_128(bytes.fromhex(by)).digest(16))
    time.sleep(.5)
    t=CONN.recvuntil("Choice >".encode('ascii'))
    print(t)
    tu=signMessage('fla')
    time.sleep(1)
    print(verifyMessage(tu[0],tu[2]))
    for _ in range(60):
        sig=signMessage(msg)
        all.append(sig)
    with open("lattice-attack/data1.json","w") as f:
        f.write(toJson(all))
    time.sleep(1)
    import subprocess

    result = subprocess.run(['python', 'lattice-attack/lattice_attack.py', '-f', 'lattice-attack/data1.json'], capture_output=True, text=True)
    print(result)
    time.sleep(1)
    print("opening keys")
    msg=b"flag".hex().encode('ascii')
    with open("keys","r") as ke:
        data = json.load(ke)
        keys=data.get("candidates")
        for k in keys:
            privkey=ecdsa.SigningKey.from_secret_exponent(k,curve)
            sig=privkey.sign(b"flag",k=1234)
            print(verifyMessage("flag",(sig.hex().encode('ascii'))))


    #CONN.interactive()
    #print(all)
    """matrix=buildMatrix(all)
    print("Do olll")
    new_matrix = olll.reduction(matrix, 0.75)
    print(new_matrix)
    for row in new_matrix:
        potential_nonce_diff = row[0]
        sn=row[2]
        msgs=row[0]
        sigs=row[1]
        # Secret key = (rns1 - r1sn)-1 (snm1 - s1mn - s1sn(k1 - kn))
        potential_priv_key = (sn * msgs[0]) - (sigs[0].s * msgn) - (sigs[0].s * sn * potential_nonce_diff)
        potential_priv_key *= modular_inv((rn * sigs[0].s) - (sigs[0].r * sn), order)
    
        # check if we found private key by comparing its public key with actual public key
        if Public_key(gen, gen * potential_priv_key) == pub_key:
            print("found private key!")
    #verifyMessage(msg,sig)
    print("adsf")"""
    """while(True):
        CONN.send((input()+"\n").encode('ascii'))
        print(CONN.recv())"""
        
    CONN.close()


if __name__ == "__main__":
    main()