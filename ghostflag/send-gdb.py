from pwn import *

def main():
    term.init()
    """if term.can_init():
        term.init()
        while not term.init():
            time.sleep(1)
    else:
        print("cant init")"""
    print("cant init")
    CONN=remote("80aa393e2bb7498803725e57-ghost-flag.challenge.master.cscg.live", 31337, ssl=True)
    

    CONN.interactive(prompt = pwnlib.term.text.bold_red('$') + ' ')
    print()

if __name__=='__main__':
    main()