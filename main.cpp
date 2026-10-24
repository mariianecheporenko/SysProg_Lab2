#include <iostream>
#include <vector>
#include <cmath>
#include <cstdlib>
#include <numeric>

__attribute__((noinline))
void heavyComputation(std::vector<double>& data) {
    size_t n = data.size();
    for (size_t i = 0; i < n; ++i) {
        data[i] = std::sin(data[i]) * std::cos(data[i]) + std::sqrt(std::abs(data[i]) + 1.0);
    }
}

int main(int argc, char** argv) {
    int iters = argc > 1 ? std::atoi(argv[1]) : 10;

    const size_t SIZE = 30000000;
    std::vector<double> data(SIZE);

    for (size_t i = 0; i < SIZE; ++i) {
        data[i] = static_cast<double>(i) * 0.00001;
    }

    for (int iter = 0; iter < iters; ++iter) {
        heavyComputation(data);
    }

    double total_sum = std::accumulate(data.begin(), data.end(), 0.0);
    std::cout << "Done! Total checksum: " << total_sum << "\n";

    return 0;
}