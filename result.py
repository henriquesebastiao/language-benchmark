import csv

with open("benchmark_results.csv", newline="") as csvfile:
    reader = csv.reader(csvfile)
    next(reader)
    data = [(row[0], float(row[1])) for row in reader]

data_sorted = sorted(data, key=lambda x: x[1])

print("Linguagens e tempos em ordem crescente:")
for language, time in data_sorted:
    print(f"{language}: {time:.2f} segundos")
