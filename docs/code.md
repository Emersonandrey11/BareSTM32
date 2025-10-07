# Coding a MCU

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