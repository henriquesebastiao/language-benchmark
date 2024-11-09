python python/benchmark.py
go run go/benchmark.go
cd java
javac Benchmark.java -d ..
cd ..
java Benchmark
node js/benchmark.js
gcc -o benchmark_c c/benchmark.c -lm
./benchmark_c
ruby ruby/benchmark.rb
rustc rust/benchmark.rs
./benchmark
python result.py