import ecdsa
import ecdsa.curves
import os
from hashlib import shake_128
from ecdsa.ecdsa import Private_key,Public_key

BANNER = """
WELCOME to the demo version of sig1337nature.
Our signature signing is faster than anyone!

In our demo you can request up to 69 signatures!

To show how certain we are in our construction, we even included a bug bounty program.
"""

FLAG = open("/opt/flag.txt").read()


def efficient_k(msg):
    # Make semi-deterministic to not exhaust the entropy pool too fast
    return int.from_bytes(
        shake_128(msg).digest(16) + os.urandom(16),
        "big"
    )


def read_hex(prompt):
    try:
        return bytes.fromhex(input(prompt + " (hex):"))
    except ValueError:
        raise ValueError("That's not valid hex. Learn to type.")


def sign_msg(priv_key:ecdsa.SigningKey):
    msg = read_hex("Message")
    
    if b"flag" in msg:
        print("No way, jose!")
        return
    k=efficient_k(msg)
    print(k)
    sig = priv_key.sign(msg, k=k)
    #print("r: "+sig.r,"s: "+sig.s)
    print("Signature (hex):", sig.hex())


def verify_msg(pub_key):
    msg = read_hex("Message")
    signature = read_hex("Signature")

    try:
        pub_key.verify(signature, msg)
        print("Signature valid!")
        if b"flag" in msg:  # this will never happen
            print("You won a bounty!")
            print(FLAG)
    except ecdsa.BadSignatureError:
        print("Signature invalid!")


def main():
    print(BANNER)

    privkey = ecdsa.SigningKey.generate(curve=ecdsa.curves.BRAINPOOLP256r1)
    pubkey = privkey.get_verifying_key()
    print("PUBKEY: "+str(pubkey))
    print("PRIVKEY: "+str(privkey.to_pem()))
    print("Order: "+str(ecdsa.BRAINPOOLP256r1.generator.order()))
    for _ in range(69):  # nice
        print()
        print("You can:")
        print(" 1. Sign something")
        print(" 2. Verify something")
        choice = input("Choice >")
        if choice == "1":
            sign_msg(privkey)
        else:
            verify_msg(pubkey)
        print()
    print("Thanks for trying the demo! Buy the full license today!")


if __name__ == '__main__':
    main()
