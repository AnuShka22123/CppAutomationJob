CC=g++
CFLAGS=-Wall -std=c++11

hello_world: hello_world.cpp
    $(CC) $(CFLAGS) -o hello_world hello_world.cpp
