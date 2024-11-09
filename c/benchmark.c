#include <stdio.h>
#include <math.h>
#include <stdbool.h>
#include <time.h>

bool is_prime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= sqrt(n); i++) {
        if (n % i == 0) return false;
    }
    return true;
}

int main() {
    clock_t start = clock();

    int count = 0;
    int num = 2;
    while (count < 100000) {
        if (is_prime(num)) {
            count++;
        }
        num++;
    }

    clock_t end = clock();
    double elapsed_time = (double)(end - start) / CLOCKS_PER_SEC;

    FILE *fp = fopen("benchmark_results.csv", "a");
    fprintf(fp, "C,%.2f\n", elapsed_time);
    fclose(fp);

    return 0;
}
