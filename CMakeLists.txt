cmake_minimum_required(VERSION 3.26)
project(interpreter C)

set(CMAKE_C_STANDARD 11)

add_executable(run source/main.c)

add_library(InterpreterByte-Code-C SHARED
        source/library.c
        header/common.h
        header/chunk.h
        source/chunk.c
        header/debug.h
        header/memory.h
        source/memory.c
        source/debug.c
        header/value.h
        source/value.c
        header/vm.h
        source/vm.c
        header/compiler.h
        source/compiler.c
        header/scanner.h
        source/scanner.c
        header/object.h
        source/object.c
        header/table.h
        source/table.c
)

target_link_libraries(run InterpreterByte-Code-C)