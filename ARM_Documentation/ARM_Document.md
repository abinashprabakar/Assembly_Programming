# ARM Documentation

<h2> 1. ARM Embedded System </h2>

<p>The ARM architecture is a widely used 32-bit RISC processor architecture. In fact, the ARM family accounts for about 75% of all 32-bit CPUs and about 90% of all embedded 32-bit CPUs. ARM cores are widely used in mobile phones, handheld
organizers, and a multitude of other everyday portable consumer devices.</p>

<p> Some cores offered by ARM are ARM7TDMI, ARM9, ARM11. ARM's designers have come a long way from the first ARM1
prototype in 1985. One of the most successful cores is the ARM7TDMI. It provides upto 120 Dhrystone MIPS (Dhrystone is
the name of a standardised a very old benchmark software, it gives as result the measured number of MIPS, where MIPS is
Million Instructions Per Second) and is known for its high code density and low power consumption, making it ideal for
mobile embedded devices.</p>

<h2> 1.1 The RISC design Philosophy </h2>

<p>ARM core uses RISC architecture. An ARM processor is one of a family of CPU's based on the RISC (Reduced
Instruction Set Computer) architecture developed by the Advanced RISC Machines. Because of their reduced instruction
set, they require fewer transistors, which enables a smaller die size for the integrated circuit(IC). The RISC
philosophy concentrates on reducing the complexity of instructions performed by the hardware because it is easier to
provide greater flexibility and intelligence in software rather than hardware. As a result, a RISC design places greaterdemands on the compiler.</p>

The RISC philosophy is implemented with four major design rules:

		1. Instructions:
			RISC processors have a reduced number of instruction classes. These classes provide simple
			operations that can each execute in a single cycle.

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

<h2> 1.2 The ARM Design Philosophy </h2>

i) There are a number of physical features that have driven the ARM processor design. The ARM processor has been
specifically designed to be small to reduce power cosumption and extend battery operation.

ii) High code density - useful for applications that have limited on-board memory, such as mobile phones and mass
storage devices.

iii) Price sensitive and use slow and low-cost memory devices.

iv) Reduce the area of the die taken up by the embedded processor.

v) Hardware debug technology - to view what is happening while the processor is executing the code.

vi) ARM core is not pure RISC architecture.

<h2> 1.2.1 Instruction set for embedded system </h2>

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

<h2> 1.3 Embedded System Hardware </h2>	

<img src = "https://bnmbiw.files.wordpress.com/2013/01/embedded-hardware.png?w=640">
<p> Embedded systems can control many different devices, from small sensors found on a production line, to the
real-time control systems used on NASA space prob.

<h2> 1.3.1 ARM Bus Technology </h2>

<img src = "https://www.rfwireless-world.com/images/ARM-Bus-technology.jpg">
<p> There are two different classes of devices attached to the bus. The ARM processor core is a bus master - a logical
device capable of initiating a data transfer with another device across the same bus. Peripherals tend to be a bus
slaves - logical devices capable only of responding to a transfer request from a bus master device.</p>

<h2> 1.3.2 AMBA Bus protocol </h2>

<p> AMBA stands for Advanced Microcontroller Bus Architecture. AMBA specification specifies an on chip communication standard. This is used to design embedded microcontrollers with high performance.</p>

<h2> 1.3.3 Memory </h2>
<b> 1.3.3.1 Hierarchy </b>

<p> A memory hierarchy refers to a hierarchy of memory types, with faster and smaller memories closer to the core and
slower and larger memory farther away. In most systems, you can have secondary storage, such as disk drives and
primary storage such as Flash, SRAM and DRAM. In embedded systems, you typically sub-divide this into on-chip and
off-chip memory. Memory that is on the same chip (or at least in the same package) as the core will typically be much
faster.</p>

<b> 1.3.3.2 Width </b>

<p>Memory width is the number of bits the memory returns on each access-typically 8, 16, 32, or 64 bits.

The memory width has a direct effect on the overall performance and cost ratio. Following table covers fetching
instructions from memory.

Instruction size	8 bit memory	16 bit memory	32 bit memory
   ARM 32 bit		  4 cycles	  2 cycles	   1 cycle
   Thumb 16 bit		  2 cycles	  1 cycle	   1 cycle
</p>

<h3> Types of Memory </h3>

<h3> ROM (Read Only Memory) </h3>

<p> ROM stands for Read Only Memory. The memory from which we can only read but cannot write on it. This type of memory
is non-volatile. The information is stored permanently in such memories during manufacture. A ROM stores such
instructions that are required to start a computer. This operation is referred to as bootstrap. ROM chips are not only
used in the computer but also in other electronic items like washing machine and microwave oven.</p>

<h3> Flash ROM </h3>

<p> special type of memory that works like both RAM and ROM. You can write information to flash memory, like you can
with RAM, but that information isn’t erased when the power is off, like it is with ROM. The erasing and writing of
flash ROM are completely software controlled with no additional hardware circutary required, Which reduces the
manufacturing costs.</p>

<h3> DRAM </h3>

<p> Dynamic random access memory (DRAM) is the most commonly used RAM for devices. It has the lowest cost per megabyte
compared with other types of RAM. DRAM is dynamic- it needs to have its storage cells refreshed and given a new
electronic charge every few milliseconds, so you need to set up a DRAM controller before using the memory.</p>

<h3> SRAM </h3>

<p> Static random access memory (SRAM) is faster than the more traditional DRAM, but requires more silicon area. SRAM
is static-the RAM does not require refreshing.</p>

<h3> SDRAM </h3>

<p> SDRAM stands for Synchronous Dynamic Random Access Memory. It is one of the DRAM type. It runs at high clock speed
compare to conventional memory. It gets synchronize with processor bus as SDRAM is clocked.</p>

<h2> ARM Peripherals </h2>

<p> Embedded System that interact with the outside world need some form of peripheral device. A peripheral device
performs input and output functions for the chip by connecting to other devices or sensors that aree off-chip.</p>

<h2> Interrupt Controllers </h2>

<p> When a peripheral or device requires attention, it raises an interrupt to the processor. There are two types of
interrupt controllers avaiable for the ARM processor. The standard interrupt controller and the Vector interrupt
controller(VIC).

The standard interrupt controller sends an interrupt signal to the processor core when an external device request
servicing.

Nested vector interrupt control (NVIC) is a method of prioritizing interrupts, improving the MCU’s performance and
reducing interrupt latency. NVIC also provides implementation schemes for handling interrupts that occur when other
interrupts are being executed or when the CPU is in the process of restoring its previous state and resuming its
suspended process.</p>
