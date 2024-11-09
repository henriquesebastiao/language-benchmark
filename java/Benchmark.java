import java.io.FileWriter;
import java.io.IOException;

public class Benchmark {
    public static boolean isPrime(int n) {
        if (n <= 1) return false;
        for (int i = 2; i * i <= n; i++) {
            if (n % i == 0) return false;
        }
        return true;
    }

    public static void main(String[] args) {
        long startTime = System.nanoTime();

        int count = 0;
        int num = 2;
        while (count < 100_000) {
            if (isPrime(num)) {
                count++;
            }
            num++;
        }

        long endTime = System.nanoTime();
        double elapsedTime = (endTime - startTime) / 1.0e9;

        try (FileWriter writer = new FileWriter("benchmark_results.csv", true)) {
            writer.write("Java," + elapsedTime + "\n");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
