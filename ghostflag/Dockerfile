FROM ubuntu:latest

RUN set -x && \
    apt-get update && \
    apt-get install -y xinetd socat nano

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd

CMD ["socat","tcp-l:1024,reuseaddr,fork","EXEC:/bin/bash,SU=ctf,pty,stderr,setsid,sigint,sane,ctty"]d