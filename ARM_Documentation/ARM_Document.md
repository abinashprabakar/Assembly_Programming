#ARM Documentation

<b> 1. ARM Embedded System </b>

<p>The ARM architecture is a widely used 32-bit RISC processor architecture. In fact, the ARM family accounts for about 75% of all 32-bit CPUs and about 90% of all embedded 32-bit CPUs. ARM cores are widely used in mobile phones, handheld
organizers, and a multitude of other everyday portable consumer devices.</p>

<p> Some cores offered by ARM are ARM7TDMI, ARM9, ARM11. ARM's designers have come a long way from the first ARM1
prototype in 1985. One of the most successful cores is the ARM7TDMI. It provides upto 120 Dhrystone MIPS (Dhrystone is
the name of a standardised a very old benchmark software, it gives as result the measured number of MIPS, where MIPS is
Million Instructions Per Second) and is known for its high code density and low power consumption, making it ideal for
mobile embedded devices.</p>

<b> 1.1 The RISC design Philosophy </b>

<p>ARM core uses RISC architecture. An ARM processor is one of a family of CPU's based on the RISC (Reduced
Instruction Set Computer) architecture developed by the Advanced RISC Machines. Because of their reduced instruction
set, they require fewer transistors, which enables a smaller die size for the integrated circuit(IC). The RISC
philosophy concentrates on reducing the complexity of instructions performed by the hardware because it is easier to
provide greater flexibility and intelligence in software rather than hardware. As a result, a RISC design places greaterdemands on the compiler.</p>

The RISC philosophy is implemented with four major design rules:

		1. Instructions:
			RISC processors have a reduced number of instruction classes. These classes provide simple opera		tions that can each execute in a single cycle.

		2. Pipelines:		
			A pipelining is the mechanism used by RISC processors to execute instructions, by speeding up
		the execution by fetching the instruction, while other instructions are being decoded and executed
		simultaneously.

		3. Registers:
			RISC machines have a large general-purpose register set. Any register can contain either data
		or an address. Registers act as the local fast memory store for all data processing operations.

		4. Load-store Architecture:
			ARM is a load-store architecture. It provides a few relatively complex instructions, such as
		saving and restoring multiple registers. The processor operates on data held in registers. Seperate
		load and store instructions transfer data between the register bank and external memory. 

		LDR R2, [R0] @ [R0] - origin address is the value found in R0. STR R2, [R1] @ [R1] - destination
		address is the value found in R1.

		LDR operation: loads the value at the address found in R0 to the destination register R2.

		STR operation: stores the value found in R2 to the memory address found in R1.


		These design rules allow a RISC processor to be simpler, and thus the core can operate at higher clock
		frequencies.

<b> 1.2 The ARM Design Philosophy </b>

i) There are a number of physical features that have driven the ARM processor design. The ARM processor has been
specifically designed to be small to reduce power cosumption and extend battery operation.

ii) High code density - useful for applications that have limited on-board memory, such as mobile phones and mass
storage devices.

iii) Price sensitive and use slow and low-cost memory devices.

iv) Reduce the area of the die taken up by the embedded processor.

v) Hardware debug technology - to view what is happening while the processor is executing the code.

vi) ARM core is not pure RISC architecture.

<b> 1.2.1 Instruction set for embedded system </b>

		1. Variable cycle execution for certain instructions - Not every ARM instructions executes in a single
		cycle. For example, load-store multiple instructions vary in the number of execution cycles depending
		upon the number of registers being transferred. The transfer can occur on sequential memory address,
		which increases performance since sequential memory access are often faster than random accesses.

		2. Inline barrel shifter leading to more complex instructions - The inline barrel shafter is a hardware
		component that preprocesses one of the input registers before it is used by an instruction.

		3. Thumb 16-bit instruction set - ARM enhanced the processor core by adding a second 16-bit instruction
		set called Thumb that permits the Arm core to execute either 16 or 32-bit instructions. The 16-bit
		instructions improve the code density.

		4. Conditional execution - Instruction is executed only when a specific condition is satisified. This
		feature improves performance and code density by reducing branch instructions.

		5. Enhanced instructions - The enhanced digital signal processor(DSP) instructions were added to the
		standard ARM instruction set to support fast 16x16-bit multiplier operation. These instructions allow
		faster-performing ARM Processor.

<b> 1.3 Embedded System Hardware </b>	

<img src = "https://bnmbiw.files.wordpress.com/2013/01/embedded-hardware.png?w=640">
<p> Embedded systems can control many different devices, from small sensors found on a production line, to the
real-time control systems used on NASA space prob.

<b> ARM Bus Technology </b>
