# Crossan Malachy Lab Report 5
## Experiment 5

Xilinx FPGA Tools
Digital Systems Lab
EEE3342C-0014

**Experiment conducted:** Mar 6th 2025
**Report submitted:** Mar 26th 2025

<div style="page-break-after: always;"></div>

### Objective
I intend to design and verify Multiplexers & Decoders in this experiment.

### Equipment
- Xilinx's FPGA VIVADO HLx Editions design tools on the laboratory computer. www.xilinx.com
- BASYS Development board

### Design steps
1. Create new module for each part
2. Write the RTL code
3. Test using simulation code
4. Complete IO Configuration
5. Generate Bitstream
6. Program BASYS 3 FPGA Board
7. Test
8. Repeat steps 1-7
<div style="page-break-after: always;"></div>

## Part 1:
### 2-1 Multiplexer RTL code
![[2-1_Mux_RTL.png]]
### 2-4 Decoder RTL code
![[2-4_Dec_RTL.png]]
### Waveform
![[2-1_Mux_Wav.png]]

<div style="page-break-after: always;"></div>

## Part 2: 8-1 Multiplexer
### RTL code
![[8-1_Mux_RTL.png]]
### Waveform
![[8-1_Mux_Wav.png]]
### IO Configuration
![[8-1_Mux_IO.png]]
### Board
![[8-1_Mux_Board.jpg]]

<div style="page-break-after: always;"></div>

## Part 3: 3-8 Decoder
### RTL code
![[3-8_Dec_RTL.png]]
### Waveform
![[3-8_Dec_Wav.png]]
### IO Configuration
![[3-8_Dec_IO.png]]
### Board
#### Input: 000
![[3-8_Dec_Board_0.jpg]]
#### Input: 001
![[3-8_Dec_Board_1.jpg]]
#### Input: 100
![[3-8_Dec_Board_4.jpg]]
#### Input: 101
![[3-8_Dec_Board_5.jpg]]
#### Input: 111
![[3-8_Dec_Board_7.jpg]]

<div style="page-break-after: always;"></div>

## Part 4: 7-Segment Display
### RTL
![[7-Seg_RTL.png]]
### Waveform
![[7-Seg_Wav.png]]
### IO Configuration
![[7-Seg_IO.png]]
### Board
#### Input: 0000
![[7-Seg_Board_0.jpg]]
#### Input: 0001
![[7-Seg_Board_1.jpg]]
#### Input: 0101
![[7-Seg_Board_5.jpg]]
#### Input: 1001
![[7-Seg_Board_9.jpg]]
#### Input: 1111
![[7-Seg_Board_15.jpg]]

<div style="page-break-after: always;"></div>

## Conclusion
### Overall Lab Deliverables Q&A:
- What hardware component is referred to as many-to-one?
	- Multiplexer
- How many inputs would there be for a decoder if there were 32 outputs? Show work.
	- $2^5=32$ so 32
- What are the names of the inverse designs of mux and decoder respectively?
	- Mux -> demultiplexer
	- decoder -> encoder
- What is the difference between a mux and a decoder and when would you use it? Explain
	- Mux
		- Selects one input from multiple inputs based on input select lines
	- Decoder
		- Activates one output line based on input select lines
- What are the anode and cathode used for on the 7-segment display?  
	- Anode -> Positive terminal
		- Power
	- Cathode -> Negative terminal
		- Segment control