import ecdsa
import ecdsa.curves
import os
from hashlib import shake_128


BANNER = """
WELCOME to the demo version of sig1337nature.
Our signature signing is faster than anyone!

In our demo you can request up to 69 signatures!

To show how certain we are in our construction, we even included a bug bounty program.
"""

FLAG = open("/opt/flag.txt").read()


def efficient_k(msg):
    # Make semi-deterministic to not exhaust the entropy pool too fast
    shakedd=shake_128(msg)
    shaked=shakedd.digest(16) #b'Ysj\xc62N\xf9\xac\xf2P\xfcp\xdc\xdbl\x80'
    return int.from_bytes(
        shaked + os.urandom(16),
        "big"
    )


def read_hex(prompt):
    try:
        return bytes.fromhex(input(prompt + " (hex):"))
    except ValueError:
        raise ValueError("That's not valid hex. Learn to type.")


def sign_msg(priv_key):
    msg = read_hex("Message")
    
    if b"flag" in msg:
        print("No way, jose!")
        return         #40459767864840525794187798386787837560692061108503359635509978137016703386682
    k=efficient_k(msg) #40459767864840525794187798386787837560993544400736178823728596704611495870097
    sig = priv_key.sign(msg, k=k)

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
