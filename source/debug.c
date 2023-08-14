#include <stdio.h>
#include "../header/debug.h"
#include "../header/value.h"
#include "../header/object.h"

void disassembleChunk(Chunk* chunk, const char* name){
    printf("== %s ==\n", name);
    for(int offs = 0; offs < chunk->count;){
        offs = disassembleInstruction(chunk, offs);
    }
}

static int simpleInstruction(const char* name, int offs){
    printf("%s\n", name);
    return offs + 1;
}

static int byteInstruction(const char* name, Chunk* chunk,
                           int offs) {
    uint8_t slot = chunk->code[offs+1];
    printf("%-16s %4d\n", name, slot);
    return offs+2;
}

static int jumpInstruction(const char* name, int sign,
                           Chunk* chunk, int offs) {
    uint16_t jump = (uint16_t)(chunk->code[offs+1] << 8);
    jump |= chunk->code[offs+2];
    printf("%-16s %4d -> %d\n", name, offs,
           offs + 3 + sign * jump);
    return offs + 3;
}

static int constantInstruction(const char* name, Chunk* chunk, int offs){
    uint8_t constant = chunk->code[offs + 1];
    printf("%-16s %4d", name, constant);
    printValue(chunk->constants.values[constant]);

    printf("'\n");

    return offs + 2;
}

static int invokeInstruction(const char* name, Chunk* chunk,
                             int offs) {
    uint8_t constant = chunk->code[offs+1];
    uint8_t argCount = chunk->code[offs+2];
    printf("%-16s (%d args) %4d '", name, argCount, constant);
    printValue(chunk->constants.values[constant]);
    printf("\n");
    return offs + 3;
}

int disassembleInstruction(Chunk* chunk, int offs){
    printf("%04d ", offs);
    if (offs > 0 && chunk->lines[offs] == chunk->lines[offs-1]){
        printf("   | ");
    } else {
        printf("%4d ", chunk->lines[offs]);
    }

    uint8_t instruction = chunk->code[offs];
    switch (instruction) {
        case OP_CONSTANT:
            return constantInstruction("OP_CONSTANT", chunk, offs);
        case OP_NIL:
            return simpleInstruction("OP_NIL", offs);
        case OP_TRUE:
            return simpleInstruction("OP_TRUE", offs);
        case OP_FALSE:
            return simpleInstruction("OP_FALSE", offs);
        case OP_POP:
            return simpleInstruction("OP_POP", offs);
        case OP_DEFINE_GLOBAL:
            return constantInstruction("OP_DEFINE_GLOBAL", chunk, offs);
        case OP_GET_GLOBAL:
            return constantInstruction("OP_GET_GLOBAL", chunk, offs);
        case OP_SET_GLOBAL:
            return constantInstruction("OP_SET_GLOBAL", chunk, offs);
        case OP_GET_LOCAL:
            return byteInstruction("OP_GET_LOCAL", chunk, offs);
        case OP_SET_LOCAL:
            return byteInstruction("OP_SET_LOCAL", chunk, offs);
        case OP_GET_UPVALUE:
            return byteInstruction("OP_GET_UPVALUE", chunk, offs);
        case OP_SET_UPVALUE:
            return byteInstruction("OP_SET_UPVALUE", chunk, offs);
        case OP_GET_PROPERTY:
            return constantInstruction("OP_GET_PROPERTY", chunk, offs);
        case OP_SET_PROPERTY:
            return constantInstruction("OP_SET_PROPERTY", chunk, offs);
        case OP_GET_SUPER:
            return constantInstruction("OP_GET_SUPER", chunk, offs);
        case OP_EQUAL:
            return simpleInstruction("OP_EQUAL", offs);
        case OP_GREATER:
            return simpleInstruction("OP_GREATER", offs);
        case OP_LESS:
            return simpleInstruction("OP_LESS", offs);
        case OP_ADD:
            return simpleInstruction("OP_ADD", offs);
        case OP_SUBTRACT:
            return simpleInstruction("OP_SUBTRACT", offs);
        case OP_MULTIPLY:
            return simpleInstruction("OP_MULTIPLY", offs);
        case OP_DIVIDE:
            return simpleInstruction("OP_DIVIDE", offs);
        case OP_NOT:
            return simpleInstruction("OP_NOT", offs);
        case OP_NEGATE:
            return simpleInstruction("OP_NEGATE", offs);
        case OP_PRINT:
            return simpleInstruction("OP_PRINT", offs);
        case OP_JUMP:
            return jumpInstruction("OP_JUMP", 1, chunk, offs);
        case OP_JUMP_IF_FALSE:
            return jumpInstruction("OP_JUMP_IF_FALSE", 1, chunk, offs);
        case OP_LOOP:
            return jumpInstruction("OP_LOOP", -1, chunk, offs);
        case OP_CALL:
            return byteInstruction("OP_CALL", chunk, offs);
        case OP_INVOKE:
            return invokeInstruction("OP_INVOKE", chunk, offs);
        case OP_SUPER_INVOKE:
            return invokeInstruction("OP_SUPER_INVOKE", chunk, offs);
        case OP_CLOSURE: {
            offs++;
            uint8_t constant = chunk->code[offs++];
            printf("%-16s %4d", "OP_CLOSURE", constant);
            printValue(chunk->constants.values[constant]);
            printf("\n");

            ObjFunction* function = AS_FUNCTION(chunk->constants.values[constant]);
            for (int j = 0; j < function->upvalueCount; j++){
                int isLocal = chunk->code[offs++];
                int index = chunk->code[offs++];
                printf("%04d      |                     %s %d\n",
                       offs - 2, isLocal ? "local" : "upvalue", index);
            }

            return offs;
        }
        case OP_CLOSE_UPVALUE:
            return simpleInstruction("OP_CLOSE_UPVALUE", offs);
        case OP_RETURN:
            return simpleInstruction("OP_RETURN", offs);
        case OP_CLASS:
            return constantInstruction("OP_CLASS", chunk, offs);
        case OP_INHERIT:
            return simpleInstruction("OP_INHERIT", offs);
        case OP_METHOD:
            return constantInstruction("OP_METHOD", chunk, offs);
        default:
            printf("Encountered unknown opcode %d\n", instruction);
            return offs + 1;
    }
}
