# This section explains how to program and debug code to a microcontroller


## Serial wire debug - SWD Protocol

Using J4 (SWD header pin) we're gonna be able to programming our microcontroller board which means writing coding in our text editor and blinking and LED.

TODO: Detailed the SWD protocol

## GNU Arm Toolchain - arm-none-eabi

GNU Arm Toolchain is a set of tools used to compile, link, flash and degub code into hardware. Its a open-souce tool developed by its own community and it is one of the most toolchain used. This toolchain can de downloaded to [GNU Arm Toolchain](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)

##  Compile, Link and Build

### Compile

The compiler, 

``` C

arm-none-eabi-gcc

```

first takes all .c files as an input and then outputs .i files. These .i files refers to a pre-processing file where all the directives (all the macros and stuff in .h files are check at this point) will be resolved. After that, from .i files, .s files are created.

These files are responsable for convert the higher level language to mnemonics (assembly instructions). The mnemonics depends on microcontroler architeture.

### Assembler

In assemble stage, .s files are converted to .o files (relocatable object file - The instructions (opcodes) dont carries address only instructions). The .o files contains all the opcodes (which are symbols for instructions). After that, comes the linking stage.

### Linking

An linker File (.ld) defines the memory layout for a specific microcontroller. A microcontroller memory includes sections like:

- FLASH (where the program and constant data stays)
- RAM (where the variable data stays, also stack[^1] and heap)

So its the linkers file job to know the address for FLASH and RAM (and other peripherals).

The linker file is used in the process of compiling and flashing a code into a microcontroller. In this process, the linker file maps these four differents files:

- .bss (contains vector table and uninitialized data)
- .data (initialized data)
- .rodata (read-only data and vector table)
- .text (executable code)


### Entry point

The entry point defines the first instruction to be executed beeing usually:

- Reset handler in the startup code


[^1]: What is a stack? Besides been a memory location.