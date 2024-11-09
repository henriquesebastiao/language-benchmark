require 'time'

def is_prime(n)
  return false if n <= 1
  (2..Math.sqrt(n)).each do |i|
    return false if n % i == 0
  end
  true
end

start_time = Time.now

primes = []
num = 2
while primes.length < 100_000
  primes << num if is_prime(num)
  num += 1
end

elapsed_time = Time.now - start_time

File.open("benchmark_results.csv", "a") do |file|
  file.puts("Ruby,#{elapsed_time}")
end
