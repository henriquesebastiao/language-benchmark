package main

import (
    "fmt"
    "math"
    "os"
    "time"
)

func isPrime(n int) bool {
    if n <= 1 {
        return false
    }
    for i := 2; i <= int(math.Sqrt(float64(n))); i++ {
        if n%i == 0 {
            return false
        }
    }
    return true
}

func main() {
    start := time.Now()

    count := 0
    num := 2
    for count < 100000 {
        if isPrime(num) {
            count++
        }
        num++
    }

    elapsed := time.Since(start).Seconds()

    file, _ := os.OpenFile("benchmark_results.csv", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
    defer file.Close()
    file.WriteString(fmt.Sprintf("Go,%.2f\n", elapsed))

}
