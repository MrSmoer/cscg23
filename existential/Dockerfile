FROM alpine:latest as builder

RUN apk update && apk add gcc make musl-dev

RUN wget https://yx7.cc/code/ynetd/ynetd-0.1.2.tar.xz && \
    (echo "71c53f507b8fd75ef32bfebe4d476d1967a1332e  ynetd-0.1.2.tar.xz" | sha1sum -c) && \
    tar -xJf ynetd-0.1.2.tar.xz && cd ynetd-0.1.2 && CFLAGS="-static" make

FROM ubuntu@sha256:7a57c69fe1e9d5b97c5fe649849e79f2cfc3bf11d10bbd5218b4eb61716aebe6 as runner

RUN apt-get update && apt-get upgrade -y
RUN apt-get install pip python3 -y
RUN mkdir /app
WORKDIR /app

COPY main.py main.py
COPY requirements.txt requirements.txt
#CMD ["/bin/sh"]
RUN pip3 install -r requirements.txt

COPY flag.txt /opt/flag.txt

COPY --from=builder /ynetd-0.1.2/ynetd /ynetd

CMD /ynetd -p 1024 "python3 main.py"