cmake_minimum_required(VERSION 3.26)
project(interpreter C)

set(CMAKE_C_STANDARD 11)

add_library(interpreter SHARED library.c
        main.c
        common.h
        chunk.h
        chunk.c
        memory.h
        memory.c
)
