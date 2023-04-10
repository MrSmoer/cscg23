import ecdsa
import random
from pwn import *
from hashlib import shake_128
from ecdsa.util import sigdecode_string
import sympy
import olll

CONN = CONN=remote("localhost",1024)
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
    print(CONN.recv())
    #msg="asdf"
    CONN.send((strToHex(msg)+"\n").encode('ascii'))
    time.sleep(.1)
    response=CONN.recv()
    regx=re.split(b"( |\n)", response)
    print("Signature is"+str(regx[4]))
    tup=(msg,shake_128(msg.encode('ascii')).digest(16),regx[4])
    return tup

def verifyMessage(msg:str, sig:bytes):
    print()
    time.sleep(0.1)
    CONN.send("2\n".encode('ascii'))
    time.sleep(0.1)
    #print(strToHex(msg))
    CONN.send((strToHex(msg)+"\n").encode('ascii'))
    time.sleep(0.1)
    print(sig)
    CONN.send(sig+("\n").encode('ascii'))
    time.sleep(0.1)
    response=CONN.recv()
    #print(response)
    if b"Signature valid!" in response:
        print("valid signature")
        return True
    elif b"Signature invalid!" in response:
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
        s_inv= sympy.mod_inverse(sig[1],order)
        sigrow.append(r*s_inv)
        msg=(inputs[i][0].encode('ascii').hex())
        msgrow.append(int(msg,16)*s_inv)
    sigrow.append((2**256))
    sigrow.append(0)
    orderrows.append(sigrow)
    msgrow.append(0)
    msgrow.append((2**256))
    orderrows.append(msgrow)
        
    #print(orderrows)
    return orderrows


def main():
    global CONN, all
    msg="fla"
    by=msg.encode('ascii').hex()
    print(by)
    print(shake_128(bytes.fromhex(by)).digest(16))
    print(CONN.recv())
    signMessage('Banana')
    for _ in range(32):
        sig=signMessage(msg)
        all.append(sig)
    #print(all)
    matrix=buildMatrix(all)
    print("Do olll")
    new_matrix = olll.reduction(matrix, 0.75)
    print(new_matrix)
    """for row in new_matrix:
        potential_nonce_1 = row[0]
        potential_priv_key = r1_inv * ((potential_nonce_1 * s1) - msg1)
    pPrivKey=ecdsa.SigningKey.from_string(potential_priv_key)
    # check if we found private key by comparing its public key with actual public key
    if :
        print(&quot;found private key!&quot;)"""
    #verifyMessage(msg,sig)
    CONN.interactive()
    print("adsf")


if __name__ == "__main__":
    main()