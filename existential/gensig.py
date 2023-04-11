print("666c6167")

import ecdsa

msg=b"flag"
curve=ecdsa.curves.BRAINPOOLP256r1

secret_exponent=50966626948930265862414818929484714657692859110597384360262125953200995619423

signing_key = ecdsa.SigningKey.from_secret_exponent(secret_exponent, curve=curve)
sig=signing_key.sign(msg, k=1234)
print(sig.hex())