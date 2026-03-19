#include <iostream>
#include <sycl/ext/intel/fpga_extensions.hpp>
#include <sycl/sycl.hpp>
#include "exception_handler.hpp"

class DijkstraNaiveID;

constexpr int N = 11;
constexpr int INF = 1e9;

constexpr int graph[N][N] = {
    {0, 4, 2, 7, 0, 0, 0, 0, 0, 0, 0},
    {4, 0, 0, 0, 3, 6, 0, 0, 0, 0, 0},
    {2, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0},
    {7, 0, 0, 0, 0, 1, 2, 4, 0, 0, 0},
    {0, 3, 0, 0, 0, 3, 0, 0, 2, 0, 0},
    {0, 6, 0, 1, 3, 0, 0, 0, 0, 4, 0},
    {0, 0, 5, 2, 0, 0, 0, 1, 0, 0, 3},
    {0, 0, 0, 4, 0, 0, 1, 0, 0, 0, 2},
    {0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0},
    {0, 0, 0, 0, 0, 4, 0, 0, 2, 0, 3},
    {0, 0, 0, 0, 0, 0, 3, 2, 0, 3, 0}
};

struct DijkstraNaive {
    int *const g;
    int *const dist;
    bool *const visited;

    void operator()() const {
        for (int count = 0; count < N-1; count++) {
            // Find unvisited node with shortest distance (sequential)
            int u = -1;
            for (int i = 0; i < N; i++)
                if (!visited[i] && (u == -1 || dist[i] < dist[u]))
                    u = i;

            visited[u] = true;

            // Update neighbour distances (sequential)
            for (int v = 0; v < N; v++)
                if (g[u*N + v] && !visited[v] && dist[u] + g[u*N + v] < dist[v])
                    dist[v] = dist[u] + g[u*N + v];
        }
    }
};

int main() {
    bool passed = false;

    try {
#if FPGA_SIMULATOR
        auto selector = sycl::ext::intel::fpga_simulator_selector_v;
#elif FPGA_HARDWARE
        auto selector = sycl::ext::intel::fpga_selector_v;
#else
        auto selector = sycl::ext::intel::fpga_emulator_selector_v;
#endif

        sycl::queue q(selector, fpga_tools::exception_handler,
                      sycl::property::queue::enable_profiling{});

        auto device = q.get_device();
        if (!device.has(sycl::aspect::usm_host_allocations)) {
            std::cerr << "This design requires USM Host/Shared allocations." << std::endl;
            std::terminate();
        }

        std::cout << "Running on device: "
                  << device.get_info<sycl::info::device::name>().c_str()
                  << std::endl;

        int *g        = sycl::malloc_shared<int>(N*N, q);
        int *dist     = sycl::malloc_shared<int>(N, q);
        bool *visited = sycl::malloc_shared<bool>(N, q);

        for (int i = 0; i < N; i++) {
            dist[i] = INF;
            visited[i] = false;
            for (int j = 0; j < N; j++)
                g[i*N + j] = graph[i][j];
        }
        dist[0] = 0;

        q.single_task<DijkstraNaiveID>(DijkstraNaive{g, dist, visited}).wait();

        const int expected[N] = {0, 4, 2, 7, 7, 8, 7, 8, 9, 11, 10};

        passed = true;
        std::cout << "Shortest distances from node 0:" << std::endl;
        for (int i = 0; i < N; i++) {
            std::cout << "Node " << i << ": " << dist[i]
                      << " (expected " << expected[i] << ")" << std::endl;
            if (dist[i] != expected[i]) passed = false;
        }

        std::cout << (passed ? "PASSED" : "FAILED") << std::endl;

        sycl::free(g, q);
        sycl::free(dist, q);
        sycl::free(visited, q);

    } catch (sycl::exception const &e) {
        std::cerr << "Caught a SYCL host exception:\n" << e.what() << "\n";
        std::terminate();
    }

    return passed ? EXIT_SUCCESS : EXIT_FAILURE;
}