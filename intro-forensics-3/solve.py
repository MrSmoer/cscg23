#!/bin/python


def main():
    data=None
    with open("intro-forensics-3.png","rb") as f:
        data = f.read().hex()
        f.close()

    print(data)


if __name__=='__main__':
    main()