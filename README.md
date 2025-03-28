# Seven Segment Display Lab

## Objective
Build a 4-digit 7-segment LED driver on the Nexys A7-100T board to rotate a 16-character message (default: `0123456789abcdeF`) leftward, triggered by a button or timed delay, using Verilog.

## Hardware
- **Board**: Nexys A7-100T
- **Display**: Four 7-segment LEDs (anodes AN0-3, shared A-G, DP signals)
- **Clock**: 100MHz (10ns period)
- **Buttons**: BTNC (reset, N17), BTNR (rotate, M17)

## Parts

### Part A: 7-Segment Decoder
- **What it Does**: Takes a 4-bit hex value (0-F) and turns it into the 7-segment pattern to show one digit on the display.

### Part B: Drive Four Digits
- **What it Does**: Lights up all 4 digits by switching anodes every 0.20µs with a slower clock, showing a fixed value like `0123`.

### Part C: Button-Driven Rotation
- **What it Does**: Shifts the 16-character message left (e.g., `0123` to `1234`) each time you press BTNR, using memory to store the message.

### Part D: Fixed-Delay Rotation
- **What it Does**: Automatically shifts the message left every 1.6777214 seconds using a counter, no button needed.

## Setup
1. Clone repo.
2. Open in Vivado.
3. Synthesize, implement, and generate bitfile for each part.
4. Program Nexys A7-100T and test.

## Notes
- **Message**: Default is `0123456789abcdeF` (changeable).
- **Signals**: Anodes `0` = on; Segments `1` = lit.

---
