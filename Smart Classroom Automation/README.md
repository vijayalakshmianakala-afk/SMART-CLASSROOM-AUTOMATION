# Smart Classroom Automation using Verilog HDL

## Overview

This project implements a Smart Classroom Automation System using Verilog HDL. The system automatically controls classroom lights and fans based on occupancy and temperature. It also activates a projector when a class is in session. The design is verified using a comprehensive testbench and simulation.

---

## Features

- Automatic light control
- Automatic fan control
- Projector control
- Occupancy detection
- Temperature-based fan operation
- Reset functionality
- Functional verification through simulation

---

## Inputs

| Signal | Description |
|---------|-------------|
| clk | System Clock |
| reset | System Reset |
| person_detect | Detects classroom occupancy |
| class_mode | Indicates whether a class is in progress |
| temperature_high | High-temperature indicator |

---

## Outputs

| Signal | Description |
|---------|-------------|
| light | Classroom Light |
| fan | Classroom Fan |
| projector | Projector Control |

---

## Working

- If no person is detected, all devices remain OFF.
- If a person is detected:
  - Light turns ON.
  - Fan turns ON only if the temperature is high.
  - Projector turns ON only when class mode is active.

---

## Tools Used

- Verilog HDL
- ModelSim
- Vivado
- GTKWave

---

## Applications

- Smart Colleges
- Digital Classrooms
- Educational Institutions
- Energy Saving Systems