#include <stdio.h>
#include <string.h>

#include "../header/memory.h"
#include "../header/value.h"
#include "../header/object.h"

void initValueArray(ValueArray* array) {
    array->capacity = 0;
    array->count = 0;
    array->values = NULL;
}

void writeValueArray(ValueArray* array, Value value) {
    if (array->capacity < array->count + 1 ){
        int oldCap = array->capacity;
        array->capacity = GROW_CAPACITY(oldCap);
        array->values = GROW_ARRAY(Value, array->values, oldCap, array->capacity);
    }

    array->values[array->count] = value;
    array->count++;
}

void printValue(Value val) {
    switch(val.type) {
        case VAL_BOOL:
            printf(AS_BOOL(val) ? "true" : "false");
            break;
        case VAL_NIL: printf("nil"); break;
        case VAL_NUMBER: printf("%g", AS_NUMBER(val)); break;
        case VAL_OBJ: printObject(val); break;
    }
}

bool valuesEqual(Value a, Value b) {
    if (a.type != b.type) return false;
    switch (a.type) {
        case VAL_BOOL: return AS_BOOL(a) == AS_BOOL(b);
        case VAL_NIL: return true;
        case VAL_NUMBER: return AS_NUMBER(a) == AS_NUMBER(b);
        case VAL_OBJ: return AS_OBJ(a) == AS_OBJ(b);
        default: return false;
    }
}

void freeValueArray(ValueArray* array) {
    FREE_ARRAY(Value, array->values, array->capacity);
    initValueArray(array);
}

