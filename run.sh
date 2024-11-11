python python/benchmark.py
go run go/benchmark.go
cd java
javac Benchmark.java -d ..
cd ..
java Benchmark
node js/benchmark.js
gcc -O3 -o benchmark_c c/benchmark.c -lm
./benchmark_c
ruby ruby/benchmark.rb
rustc -O rust/benchmark.rs
./benchmark
python result.py