
import os
import time

def ping(target):
    response = os.system(f"ping -c 1 {target}")
    if response == 0:
        print(f"{target} is reachable")
    else:
        print(f"{target} is not reachable")

if __name__ == "__main__":
    targets = ["8.8.8.8", "192.168.1.1"]
    while True:
        for target in targets:
            ping(target)
        time.sleep(60)
