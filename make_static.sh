#!/bin/bash

# Navigate to the NaghsLib directory
cd NaghsLib || (echo "Failed to enter 'NaghsLib' directory" || exit)

# Create a build directory
mkdir -p build
cd build || (echo "Failed to enter 'build' directory"; exit)

# Compile the source files into object files
gcc -c \
    ../Collections/LinkedList/list.c \
    ../Collections/Map/map.c \
    ../Collections/Vector/vector.c \
    ../Memory/Arena/Linear/arena.c \
    ../Bitset/bitset.c \
    -I../Collections/LinkedList \
    -I../Collections/Map \
    -I../Collections/Vector \
    -I../Memory/Arena/Linear \
    -I../Bitset \
    -I../Testing/Framework \
    -Wall -O2

# Create the static library
ar rcs libnaghs.a list.o map.o vector.o arena.o

# Optionally, run ranlib to generate an index
ranlib libnaghs.a

# Clean up object files
rm ./*.o

echo "Static library libnaghs.a has been created in the NaghsLib/build directory."

# gcc -I/path/to/NaghsLib your_program.c /path/to/NaghsLib/build/libnaghs.a -o your_program
