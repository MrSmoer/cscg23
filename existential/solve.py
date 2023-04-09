import ecdsa
import random
from pwn import *

gen = ecdsa.curves.BRAINPOOLP256r1
order = gen.order()
secret = random.randrange(1,order)

privkey = ecdsa.SigningKey.generate(curve=ecdsa.curves.BRAINPOOLP256r1)
opubkey = privkey.get_verifying_key()

def main():
    print("adsf")


if __name__ == "__main__":
    main()