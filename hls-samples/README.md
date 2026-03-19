# OneAPI_FPGA

## Project Goal

To implement and accelerate Dijkstra's shortest path algorithm on FPGA using Intel OneAPI, and analyse how parallelisation and pipelining affect performance metrics such as II, latency, and fMAX using the OneAPI optimisation report.

## What This Project Does

This project implements three versions of Dijkstra's algorithm targeting FPGA via Intel OneAPI, comparing how different memory and parallelisation strategies affect pipeline performance.

## Implementations

**Version 1 — Naive**: Sequential implementation using USM (off-chip) memory. Baseline for comparison.

**Version 2 — Parallel**: Neighbour distance updates parallelised using `#pragma unroll`. USM memory retained.

**Version 3 — Optimised**: Register-based on-chip memory (`[[intel::fpga_register]]`) combined with `#pragma unroll`. USM accessed only at kernel start and end.

## Key Concepts

**FPGA (Field-Programmable Gate Array)**: A reconfigurable hardware chip whose logic circuits can be defined through code.

**Pipeline**: A technique where multiple operations are overlapped in execution. A key property is II.

**II (Initiation Interval)**: A property of a pipeline. The number of clock cycles before a new loop iteration can begin. II=1 is ideal.

**Parallelisation**: Replicating hardware to process multiple operations simultaneously. Implemented here via `#pragma unroll`, which physically unrolls loops into independent circuits.

**Latency**: The number of clock cycles required to complete a computation.

**fMAX**: The maximum clock frequency (MHz) at which the FPGA circuit can operate.

**USM (Unified Shared Memory)**: Off-chip DRAM shared between host and device. High latency (~90 clock cycles per access).

**On-chip Memory (Register/BRAM)**: Memory located inside the FPGA chip. Register access takes 1 clock cycle, making it significantly faster than USM.

**FPGA Emulation** (`make fpga_emu`): Runs the algorithm on the CPU for bit-accurate verification of design correctness.

**FPGA Report** (`make report`): Generates a static analysis of how the design m