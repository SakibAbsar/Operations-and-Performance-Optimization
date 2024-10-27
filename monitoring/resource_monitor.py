
import psutil
import time

def monitor_resources():
    while True:
        cpu = psutil.cpu_percent()
        memory = psutil.virtual_memory().percent
        disk = psutil.disk_usage('/').percent
        print(f"CPU: {cpu}%, Memory: {memory}%, Disk: {disk}%")
        time.sleep(10)

if __name__ == "__main__":
    monitor_resources()
