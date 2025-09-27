# Bare Metal Programming on a STM32F030K6 microcontroller board

The main goal of this project is to create an embedded application from scratch which will serve for studying embedded programing and for future applications. The hardware is a basic microcontroller board which has only the necessary componentes to run it like:

- An LQFP32 STM32F030K6 microcontroller
- Header pins to access the microcontroller board

## Coding

The code should include:

1. A basic GPIO library to toggle an LED on Pin 13
2. Linker File
3. Makefile
4. Startup file

The project structure is described as follows:

- The 'core' folder contains the 'inc' folder which are in essentially .h files 
- The 'src' folder contains all the .c files (specially main.c)


## Basic GPIO Library

In order to toggle an GPIO Pin, in ARM Cortex M0 microcontroller we need to:

1. Define the memory location of the peripherals registers like RCC and GPIO
2. Configure the needed registers
3. Set the specifics bits

### RCC - Register Clock Control

## STM32 Linker File

### Linking

An linker File (.ld) defines the memory layout for a specific microcontroller. A microcontroller memory includes sections like:

- FLASH (where the program and constant data stays)
- RAM (where the variable data stays, also stack[^1] and heap)

So it's the linkers file job to know the address for FLASH and RAM (and other peripherals).

The linker file is used in the process of compiling and flashing a code into a microcontroller. In this process, the linker file maps these four differents files:

- .bss
- .data
- .rodata
- .text

#### .bss files

The information inside .bss files are:

- Vector table 
- Uninitialzied data

#### .data files

The information inside .data files are:

- Initialized data

#### .rodata files

The information inside .rodata files are:

- read-only data
- vector-table

#### .text files

The information inside .data files are:

- Executable code

### Entry point

The entry point defines the first instruction to be executed beeing usually:

- Reset handler in the startup code



[^1]: What is a stack? Besides been a memory location.