FROM fedora@sha256:23c63666eefb64cd2364e6d8ad327f06abf9eb1f34b621e9fd6c1602e142244b

RUN dnf install -y socat

COPY flag.txt /flag.txt
COPY once /once
RUN chmod +x /once

CMD [ "socat", "tcp-l:1024,reuseaddr,fork", "EXEC:'./once'" ]
