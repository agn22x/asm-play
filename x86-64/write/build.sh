#!/bin/bash

as -o write.o write.s
ld -o write -dynamic-linker /lib64/ld-linux-x86-64.so.2 write.o
