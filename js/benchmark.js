const fs = require('fs');

function isPrime(n) {
    if (n <= 1) return false;
    for (let i = 2; i * i <= n; i++) {
        if (n % i === 0) return false;
    }
    return true;
}

let start = Date.now();

let primes = [];
let num = 2;
while (primes.length < 100000) {
    if (isPrime(num)) {
        primes.push(num);
    }
    num++;
}

let end = Date.now();
let elapsed = (end - start) / 1000;

fs.appendFileSync("benchmark_results.csv", `JavaScript,${elapsed}\n`);
