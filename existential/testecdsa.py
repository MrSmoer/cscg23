from ecdsa.ecdsa import Private_key,Public_key
import random
import ecdsa
from sympy import mod_inverse as modular_inv

gen = ecdsa.BRAINPOOLP256r1.generator
order = gen.order()
secret = random.randrange(1,order)
 
pub_key = Public_key(gen, gen * secret)
priv_key = Private_key(pub_key, secret)
 
nonce1 = random.randrange(1, 2**127)
nonce2 = random.randrange(1, 2**127)
 
msg1 = random.randrange(1, order)
msg2 = random.randrange(1, order)
 
sig1 = priv_key.sign(msg1, nonce1)
sig2 = priv_key.sign(msg2, nonce2)

r1 = sig1.r
s1_inv = modular_inv(sig1.s, order)
r2 = sig2.r
s2_inv = modular_inv(sig2.s, order)
 
matrix = [[order, 0, 0, 0], [0, order, 0, 0],
[r1*s1_inv, r2*s2_inv, (2**128) / order, 0],
[msg1*s1_inv, msg2*s2_inv, 0, 2**128]]

import olll
 
new_matrix = olll.reduction(matrix, 0.75)
r1_inv = modular_inv(sig1.r, order)
s1 = sig1.s

print(new_matrix)
for row in new_matrix:
    potential_nonce_1 = row[0]
    potential_priv_key = r1_inv * ((potential_nonce_1 * s1) - msg1)
 
    # check if we found private key by comparing its public key with actual public key
    if Public_key(gen, gen * potential_priv_key) == pub_key:
        print("found private key!")