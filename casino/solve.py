from pwn import *
from sympy import legendre_symbol
import random

rng = random.SystemRandom()
#CONN=remote("localhost",1024)
CONN=remote("e8cd49a7c517870ddc388381-casino.challenge.master.cscg.live", 31337, ssl=True)

prime = int("""
FFFFFFFF FFFFFFFF C90FDAA2 2168C234 C4C6628B 80DC1CD1
29024E08 8A67CC74 020BBEA6 3B139B22 514A0879 8E3404DD
EF9519B3 CD3A431B 302B0A6D F25F1437 4FE1356D 6D51C245
E485B576 625E7EC6 F44C42E9 A637ED6B 0BFF5CB6 F406B7ED
EE386BFB 5A899FA5 AE9F2411 7C4B1FE6 49286651 ECE45B3D
C2007CB8 A163BF05 98DA4836 1C55D39A 69163FA8 FD24CF5F
83655D23 DCA3AD96 1C62F356 208552BB 9ED52907 7096966D
670C354E 4ABC9804 F1746C08 CA18217C 32905E46 2E36CE3B
E39E772C 180E8603 9B2783A2 EC07A28F B5C55DF0 6F4C52C9
DE2BCBF6 95581718 3995497C EA956AE5 15D22618 98FA0510
15728E5A 8AACAA68 FFFFFFFF FFFFFFFF""".replace('\n', '').replace(' ', ''), 
16)


def main():
    thirdStraight=firstStraight=secondStraight=0
    time.sleep(1)
    for i in range(10000):
        response=CONN.recvuntil("Commitment: ".encode('ascii'))
        print(response)
        values=CONN.recvuntil("\n> ".encode('ascii'))
        #print(values)

        parts=values.split(', '.encode('ascii'))
        parts[2]=parts[2].split(b"\n")[0]
        #print()
        isleg=[]
        for part in parts:
            isleg.append(legendre_symbol(int(part),prime)==1)
        weKnow=False
        if isleg[0] and isleg[1] and not isleg[2]:
            weKnow=True
        elif not isleg[0]and not isleg [2] and isleg[1]:
            weKnow=True
        elif not isleg[1] and not isleg[2] and isleg[0]:
            weKnow=True
        elif not isleg[0] and not isleg[1] and isleg[2]:
            weKnow=True
        
        if weKnow:
            CONN.send(b"0\n")
        else:
            challenge =rng.randint(0, 1)
            if challenge ==1:
                CONN.send(b"1\n")
            else:
                CONN.send(b"0\n")
        CONN.recvuntil(b"balance is ")
        balance=CONN.recv(numb=4).split(b" ")[0]
        bal=int(balance)
        print(bal)
        if bal==199:
            response=CONN.recvuntil("Commitment: ".encode('ascii'))
            print(response)
            values=CONN.recvuntil("\n> ".encode('ascii'))
            #print(values)

            parts=values.split(', '.encode('ascii'))
            parts[2]=parts[2].split(b"\n")[0]
            #print()
            isleg=[]
            for part in parts:
                isleg.append(legendre_symbol(int(part),prime)==1)
            weKnow=False
            if isleg[0] and isleg[1] and not isleg[2]:
                weKnow=True
            elif not isleg[0]and not isleg [2] and isleg[1]:
                weKnow=True
            elif not isleg[1] and not isleg[2] and isleg[0]:
                weKnow=True
            elif not isleg[0] and not isleg[1] and isleg[2]:
                weKnow=True
            
            if weKnow:
                CONN.send(b"0\n")
            else:
                challenge =rng.randint(0, 1)
                if challenge ==1:
                    CONN.send(b"1\n")
                else:
                    CONN.send(b"0\n")
            print(CONN.recvuntil(b"}",timeout=2))
        #print(lastparts)

        

    #print("First: "+str(firstStraight)," second: "+str(secondStraight)+" third: "+str(thirdStraight))
    CONN.close()

if __name__=="__main__":
    main()