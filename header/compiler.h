#ifndef INTERPRETER_COMPILER_H
#define INTERPRETER_COMPILER_H

#include "object.h"
#include "vm.h"


ObjFunction* compile(const char* src);
void markCompilerRoots();

#endif //INTERPRETER_COMPILER_H
