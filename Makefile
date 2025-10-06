# This is an Makefile for cortex-M0 microcontroller

# Cross compiler toolchain
CC=arm-none-eabi-gcc

# The microcontroller architecture
MACH=cortex-m0

# The flags for the arm-none-eabi-gcc 
CFLAGS= -c -mcpu=$(MACH) -mthumb -std=gnu11 -O0

hello:
	echo "Hello, world!"

# Target is main.o the dependency is main.c 
main.o:main.c
	$(CC) $(CFLAGS) $^ -o $@

#TODO: Usar VPATH p/ dizer o local de main.c e usar echo p/ printar mensagens