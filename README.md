 # 🔢 BCD to 7-Segment Display using Logisim

## 📌 Overview

This project implements a **BCD (Binary-Coded Decimal) to 7-Segment Display Decoder** using Logisim. The circuit takes a 4-bit binary input and converts it into signals that drive a 7-segment display to show decimal digits (0–9).

---

## 🎯 Objective

* Design a combinational logic circuit to convert BCD input into 7-segment output
* Understand truth tables, Boolean expressions, and logic minimization
* Simulate and verify the circuit using Logisim

---

## 🧠 Theory

A **BCD input** consists of 4 bits:
A (MSB), B, C, D (LSB)

A **7-segment display** has 7 segments:
a, b, c, d, e, f, g

Each segment turns ON/OFF depending on the input combination to display digits from 0 to 9.

---

## 🔢 Truth Table

| Decimal | A B C D | a b c d e f g |
| ------- | ------- | ------------- |
| 0       | 0000    | 1 1 1 1 1 1 0 |
| 1       | 0001    | 0 1 1 0 0 0 0 |
| 2       | 0010    | 1 1 0 1 1 0 1 |
| 3       | 0011    | 1 1 1 1 0 0 1 |
| 4       | 0100    | 0 1 1 0 0 1 1 |
| 5       | 0101    | 1 0 1 1 0 1 1 |
| 6       | 0110    | 1 0 1 1 1 1 1 |
| 7       | 0111    | 1 1 1 0 0 0 0 |
| 8       | 1000    | 1 1 1 1 1 1 1 |
| 9       | 1001    | 1 1 1 1 0 1 1 |

---

## ⚙️ Implementation

* Designed using Logisim
* Used logic gates: AND, OR, NOT
* Derived Boolean expressions using Karnaugh Maps (K-Maps)
* Connected outputs to a 7-segment display component

---

## 🖥️ Simulation

* Verified outputs for all valid BCD inputs (0–9)
* For invalid inputs (10–15), output is treated as don't care (blank/undefined)

---

## 📂 Files Included

* bcd_to_7segment.circ → Logisim circuit file
* README.md → Project documentation

---

## 🚀 How to Run

1. Open Logisim
2. Load the .circ file
3. Provide input using switches/input pins
4. Observe the output on the 7-segment display

---

## 📸 Screenshots

(Add your screenshots here: circuit diagram and output display)

---

## 📚 Learning Outcomes

* Understanding of combinational logic circuits
* Working of BCD representation
* 7-segment display interfacing
* Logic minimization using K-Maps
* Digital circuit simulation

---

## 🔮 Future Improvements

* Implement using Verilog or VHDL
* Deploy on FPGA hardware
* Optimize design using multiplexers
* Extend support for hexadecimal display

---

 Done by:
 V.Venkata Harinath

## ⭐ Support

If you found this project helpful, consider giving it a ⭐ on GitHub!
