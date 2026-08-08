# 4-bit Johnson Counter using Verilog

## Overview

This project implements a **4-bit Johnson Counter** using Verilog HDL.

A Johnson Counter, also known as a Twisted Ring Counter, is a modified shift register where the inverted output of the last flip-flop is fed back to the input.

## Features

- 4-bit Johnson Counter
- 8 unique states
- Clock controlled operation
- Asynchronous reset
- Sequential circuit design
- GTKWave simulation support

## Inputs

| Signal | Description |
|--------|-------------|
| clk | Clock signal |
| reset | Reset signal |

## Output

| Signal | Description |
|--------|-------------|
| count[3:0] | Johnson counter output |

## Working Principle

The counter uses inverted feedback:

```
Next State = {Q2,Q1,Q0,~Q3}
```

State sequence:

```
0000
0001
0011
0111
1111
1110
1100
1000
```

## Project Files

- `johnson_counter.v` - Design code
- `johnson_counter_tb.v` - Testbench
- `johnson_counter.vcd` - Waveform file
- `simulation_result.png` - Simulation screenshot

## Simulation

### Compile

```bash
iverilog -o johnson johnson_counter.v johnson_counter_tb.v
```

### Run

```bash
vvp johnson
```

### View Waveform

```bash
gtkwave johnson_counter.vcd
```

## Applications

- Sequence generators
- Digital timing circuits
- Frequency division
- LED pattern controllers
- Control systems
- Communication circuits