# Pizza Delivery System

A digital logic project that simulates a pizza delivery system handling up to **5 orders in sequence**. It shows each delivery's result on LEDs and 7-segment displays. The design is written structurally in **Verilog HDL**.

Developed for the Digital Logic Laboratory, Department of Computer Engineering, University of Jordan.

## Features

- Accepts up to 5 orders, and only in the correct sequence (order 1, then 2, … then 5)
- 8-to-0 countdown on Display Digit 0 as the delivery time for each order
- Green and red LEDs per order show whether the delivery succeeded
- Display Digit 1 counts successful deliveries
- Before any order is taken, Display Digit 0 counts from 0 to 5
- An Off Duty switch lets the current order finish but blocks new orders
- SW0 turns the system OFF (all LEDs off, both displays show 0)

## Switch Reference

| Switch | Function |
|--------|----------|
| SW0 | Reset / system OFF |
| SW1–SW5 | Order 1 to Order 5 |
| SW6 | Off Duty |
| SW7 | Success |

## Design Overview

The design is built from:

- A 3-bit counter (0 to 5 count and order sequencing)
- A 4-bit counter (8-to-0 delivery countdown with zero-count logic)
- 3-to-5 decoders, multiplexers and a demultiplexer
- D flip-flops that store order and delivery state
- 7-segment decoders (common-anode) for the display digits

The main circuit is assembled using Quartus Block Diagram Files (BDF), connecting the individual Verilog modules and schematic components.

See the full report for block diagrams, state tables and equations: [`docs/ProjectReport.pdf`](docs/ProjectReport.pdf)

## Repository Structure

```
.
├── src/            # Verilog source files
├── simulation/     # simulation files
├── docs/           # Project report and figures
├── schematics/     # Block diagrams and symbol files
├── circuit1.bdf          # Top-level circuit schematic
├── LogicProject.qpf      # Quartus project file
├── LogicProject.qsf      # Quartus project settings
└── README.md
```

## Getting Started

**Requirements:** [Quartus II], [Altera DE2]

1. Clone the repository:
   ```
   git clone https://github.com/[username]/[repo-name].git
   ```
2. Open the project in Quartus II.
3. Compile the design.
4. For simulation, disconnect the CLK input from the clock device so you can apply the clock pulses directly. For the board, connect CLK to the provided clock device file.

## Simulation Results

Four test cases were simulated (see the report, Section 4):

1. Failed delivery followed by a successful one
2. Off Duty switch turned ON during a delivery
3. Success switch left ON across several orders
4. Order switch turned ON before the previous order finished


## Author

- Sara Samer
