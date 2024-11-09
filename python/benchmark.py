import time
import csv
import math

def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, int(math.sqrt(n)) + 1):
        if n % i == 0:
            return False
    return True

start_time = time.time()

primes = []
num = 2
while len(primes) < 100_000:
    if is_prime(num):
        primes.append(num)
    num += 1

end_time = time.time()
elapsed_time = end_time - start_time


with open("benchmark_results.csv", "w", newline="") as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(["Language", "Time (seconds)"])
    writer.writerow(["Python", elapsed_time])
