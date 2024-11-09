use std::fs::OpenOptions;
use std::io::Write;
use std::time::Instant;

fn is_prime(n: u32) -> bool {
    if n <= 1 {
        return false;
    }
    for i in 2..=((n as f64).sqrt() as u32) {
        if n % i == 0 {
            return false;
        }
    }
    true
}

fn main() {
    let start = Instant::now();

    let mut count = 0;
    let mut num = 2;
    while count < 100_000 {
        if is_prime(num) {
            count += 1;
        }
        num += 1;
    }

    let elapsed = start.elapsed().as_secs_f64();

    let mut file = OpenOptions::new().append(true).create(true).open("benchmark_results.csv").unwrap();
    writeln!(file, "Rust,{:.2}", elapsed).unwrap();
}
