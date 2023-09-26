#!/bin/bash

#Author: Drashti Mehta
#Date: 09/05/2023
#Program name: 240 Section 03 Assignment 02 - Arrays

 

echo "This is program <Arrays>"

echo "Assembling asm files"
nasm -f elf64 -l manage.lst -o manage.o manage.asm
nasm -f elf64 -l input_array.lst -o input_array.o input_array.asm
nasm -f elf64 -l output_array.lst -o output_array.o output_array.asm
nasm -f elf64 -l sum_array.lst -o sum_array.o sum_array.asm

echo "Compiling c file"
gcc -c -Wall -o main.o -m64 -no-pie -fno-pie main.c

echo "Linking the object files"
gcc -m64 -no-pie -o final manage.o input_array.o output_array.o sum_array.o main.o

echo "Running the program"
./final

echo "The bash script is now closing."

