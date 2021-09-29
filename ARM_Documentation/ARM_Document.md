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

<h2> Barrel Shifter </h2>

Barrel Shifter in ARM Processor is a functional unit testing is used to perform the Shift and Rotate Operations.

Barrel Shifter provides five types of Shift and Rotate operations and they are:
   1. Logical Shift Left (LSL)
   2. Logical Shift Right (LSR)
   3. Arithmetic Shift Right (ASR)
   4. Rotate Right (ROR)
   5. Rotate Right Extended (RRX)
---

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

<h2> Cache Memory </h2>

<p> Cache Memory is a high-speed memory, which is small in size but faster than the main memory (RAM). The CPU can
access it more quickly than the primary memory. So, it is used to synchronize with high-speed CPU and to improve its
performance.</p>

<p> Cache Memory can only be accessed by CPU. It can be a reversed part of the main memory or a storage device outisde
the CPU. It holds the data and programs which are frequently used by the CPU. So, it makes sure that the data is
instantly available for CPU whenever the CPU needs this data. In other words, if the CPU finds the required data or
instructions in the cache memory, it doesnt need to access the primary memory(RAM). Thus, by acting as a buffer between
RAM and CPU, it speeds up the system performance. </p>

<img src = "https://static.javatpoint.com/computer/images/cachememory.jpg">

<h2> Types of Cache Memory </h2>

<img src = "https://ecomputertips.com/wp-content/uploads/2020/06/Cache-Memory.jpg">

<p><b>L1:   </b>It is the first level of cache memory, which is called Level 1 cache or L1 cache. In this type of cache
memory, a small amount of memory is present inside the CPU itself. If a CPU has four cores (quad core cpu), then each
core will have its own level 1 cache. As this memory is present in the CPU, it can work at the same speed as of the CPU.
The size of this memory ranges from 2KB to 64 KB. The L1 cache further has two types of caches: Instruction cache, which
stores instructions required by the CPU, and the data cache that stores the data required by the CPU.</p>

<p><b>L2:   </b>This cache is known as Level 2 cache or L2 cache. This level 2 cache may be inside the CPU or outside the
CPU. All the cores of a CPU can have their own separate level 2 cache, or they can share one L2 cache among themselves.
In case it is outside the CPU, it is connected with the CPU with a very high-speed bus. The memory size of this cache is
in the range of 256 KB to the 512 KB. In terms of speed, they are slower than the L1 cache.</p>

<p><b>L3:   </b>It is known as Level 3 cache or L3 cache. This cache is not present in all the processors; some high-end
processors may have this type of cache. This cache is used to enhance the performance of Level 1 and Level 2 cache. It
is located outside the CPU and is shared by all the cores of a CPU. Its memory size ranges from 1 MB to 8 MB. Although
it is slower than L1 and L2 cache, it is faster than Random Access Memory (RAM).</p>

<h2> How does cache memory work with CPU ?</h2>

<p> When CPU needs the data, first of all, it looks inside the L1 cache. If it does not find anything in L1, it looks
inside the L2 cache. If again, it does not find the data in L2 cache, it looks into the L3 cache. If data is found in
the cache memory, then it is known as a cache hit. On the contrary, if data is not found inside the cache, it is called
a cache miss.

If data is not available in any of the cache memories, it looks inside the Random Access Memory (RAM). If RAM also does
not have the data, then it will get that data from the Hard Disk Drive.

So, when a computer is started for the first time, or an application is opened for the first time, data is not available
in cache memory or in RAM. In this case, the CPU gets the data directly from the hard disk drive. Thereafter, when you
start your computer or open an application, CPU can get that data from cache memory or RAM.</p>

<h3> Types of Memory </h3>

There are two types of memory i.e., Primary Memory (RAM and ROM) and Secondary Memory (Hard disk, SSD, pen drive).

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

<h3> Double Data Rate SDRAM </h3>

<p> This faster version of SDRAM performs its operations on both edges of the clock signal; whereas a standard SDRAM
performs its operations on the rising edge of the clock signal. Since they transfer data on both edges of the clock,
the data transfer rate is doubled. To access the data at high rate, the memory cells are organized into two groups.
Each group is accessed separately.</p>

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
