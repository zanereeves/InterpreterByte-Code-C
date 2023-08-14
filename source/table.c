#include <stdlib.h>
#include <string.h>

#include "../header/memory.h"
#include "../header/object.h"
#include "../header/table.h"
#include "../header/value.h"

#define TABLE_MAX_LOAD .75

void initTable(Table* table) {
    table->count = 0;
    table->capacity = 0;
    table->entries = NULL;
}

void freeTable(Table* table){
    FREE_ARRAY(Entry, table->entries, table->capacity);
    initTable(table);
}

static Entry* findEntry(Entry* entries, int capacity,
                        ObjString* key) {
    uint32_t idx = key->hash % capacity;
    Entry* tombstone = NULL;
    while (true) {
        Entry *entry = &entries[idx];
        if (entry->key == NULL) {
            if (IS_NIL(entry->value)) {
                return tombstone != NULL ? tombstone : entry;
            } else {
                if (tombstone == NULL) tombstone = entry;
            }
        } else if (entry->key == key) {
            return entry;
        }
        idx = (idx+1)%capacity;
    }
}

bool tableGet(Table* table, ObjString* key, Value* value) {
    if (table->count == 0) return false;

    Entry* entry = findEntry(table->entries, table->capacity, key);
    if (entry->key == NULL) return false;

    *value = entry->value;
    return true;
}

static void adjustCapacity(Table* table, int cap) {
    Entry* entries = ALLOCATE(Entry, cap);
    for (int i = 0; i < cap; i++) {
        entries[i].key = NULL;
        entries[i].value = NIL_VAL;
    }

    table->count = 0;
    for (int i = 0; i < table->capacity; i++){
        Entry* entry = &table->entries[i];
        if (entry->key == NULL) continue;

        Entry* dest = findEntry(entries, cap, entry->key);
        dest->key = entry->key;
        dest->value = entry->value;
        table->count++;
    }

    FREE_ARRAY(Entry, table->entries, table->capacity);
    table->entries = entries;
    table->capacity = cap;
}

bool tableSet(Table* table, ObjString* key, Value val) {
    if (table->count + 1 > table->capacity * TABLE_MAX_LOAD){
        int cap = GROW_CAPACITY(table->capacity);
        adjustCapacity(table, cap);
    }


    Entry* entry = findEntry(table->entries, table->capacity, key);
    bool isNewKey = entry->key == NULL;
    if (isNewKey && IS_NIL(entry->value)) table->count++;

    entry->key = key;
    entry->value = val;
    return isNewKey;
}

bool tableDelete(Table* table, ObjString* key) {
    if (table->count == 0) return false;

    Entry* entry = findEntry(table->entries, table->capacity, key);
    if (entry->key == NULL) return false;

    entry->key = NULL;
    entry->value = BOOL_VAL(true);
    return true;
}

void tableAddAll(Table* from, Table* to) {
    for (int i = 0; i < from->capacity; i++) {
        Entry* entry = &from->entries[i];
        if (entry->key != NULL) {
            tableSet(to, entry->key, entry->value);
        }
    }
}

ObjString* tableFindString(Table* table, const char* chars,
                           int length, uint32_t hash) {
    if (table->count == 0) return NULL;

    uint32_t idx = hash%table->capacity;
    while(true) {
        Entry* entry = &table->entries[idx];
        if (entry->key == NULL) {
            if (IS_NIL(entry->value)) return NULL;
        } else if (entry->key->length == length &&
                    entry->key->hash == hash &&
                    memcmp(entry->key->chars, chars, length) == 0) {

            return entry->key;
        }
        idx = (idx + 1)%table->capacity;
    }
}

void tableRemoveWhite(Table* table) {
    for (int i = 0; i < table->capacity; i++) {
        Entry* entry = &table->entries[i];
        if (entry->key != NULL && !entry->key->obj.isMarked) {
            tableDelete(table, entry->key);
        }
    }
}

void markTable(Table* table) {
    for (int i = 0; i < table->capacity; i++) {
        Entry* entry = &table->entries[i];
        markObject((Obj*)entry->key);
        markValue(entry->value);
    }
}