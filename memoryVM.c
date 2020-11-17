//***********************************************//              IMPORTANT NOTICE                *//***********************************************//  If you need to add more headers, which      *//  you CAN, add them AFTER THIS LINE           *#include <zconf.h>#include <string.h>#include <malloc.h>//  but BEFORE the following one:#include "memoryVM.h"//  otherwise your code MAY FAIL TO COMPILE!    *//                                              *//  You have been warned.                       *//***********************************************// Here goes your glorious implementation.struct MemHeader {    size_t refCount;    size_t arrSize;};/** * Gets header of given pointer. * @param pMem pointer to get header from * @return pointer on header */struct MemHeader* GetHeader(void* pMem){    return ((struct MemHeader*)pMem) - 1;}bool initVM(void) {    return true;}void clearVM(void) {}void* allocate(size_t size) {    // allocate MemHeader + size    struct MemHeader* pHdr = (struct MemHeader*)calloc(1, size + sizeof(struct MemHeader));    if (pHdr == NULL) {        return NULL;    }    // set the initial refCount    pHdr->refCount = 1;    pHdr->arrSize = 1;    // increment the pointer by the size of MemHeader    // and make it point to the start of the actual data    pHdr += 1;    return (void*)pHdr;}void acquire(void* memory) {    if (memory != NULL) {        ++(GetHeader(memory)->refCount);    }}bool release(void* memory) {    if (memory == NULL) return false;    struct MemHeader *pHdr = GetHeader(memory);    --(pHdr->refCount);    if (pHdr->refCount == 0)    {        free(pHdr);        return true;    }    return false;}void* allocateArray(size_t elementSize, size_t elementCount) {    struct MemHeader* pHdr = (struct MemHeader*)malloc((elementCount * elementSize) + sizeof(struct MemHeader));    if (pHdr == NULL) {        return NULL;    }    // set allocated memory to 0    memset(pHdr, 0, elementCount * elementSize + sizeof(struct MemHeader));    // set the initial refCount    pHdr->refCount = 1;    pHdr->arrSize = elementCount;    // increment the pointer by the size of MemHeader    // and make it point to the start of the actual data    pHdr += 1;    return (void*)pHdr;}void** allocateArray2D(size_t elementSize, size_t subarrays, size_t* elementCounts) {    struct MemHeader** pHdr = allocateArray(sizeof(struct MemHeader), subarrays);    if (pHdr == NULL) {        return NULL;    }    bool failedAlloc = false;    size_t succAllocArrays = 0;    //allocate inner arrays    if (elementCounts == NULL) {        for (size_t i = 0; i < subarrays; i++) {            pHdr[i] = allocateArray(elementSize, subarrays);            //if allocation fails            if (pHdr[i] == NULL) {                failedAlloc = true;                succAllocArrays = i;                break;            }        }    } else {        for (size_t i = 0; i < subarrays; i++) {            pHdr[i] = allocateArray(elementSize, elementCounts[i]);            if (pHdr[i] == NULL) {                failedAlloc = true;                succAllocArrays = i;                break;            }        }    }    // if error occurs during alocation, free all already allocated arrays and return NULL    if (failedAlloc) {        if (succAllocArrays == 0) {            free(GetHeader(pHdr));            return NULL;        }        for (size_t i = 0; i < succAllocArrays; ++i) {            free(GetHeader(pHdr[i]));        }        free(GetHeader(pHdr));        return NULL;    }    return (void*)pHdr;}void acquireArray2D(void** array) {    struct MemHeader* pHdr = GetHeader(array);    size_t size = pHdr->arrSize;    for (size_t i = 0; i < size; ++i) {        acquire((struct MemHeader*)array[i]);    }    acquire(array);}bool releaseArray2D(void** array) {    struct MemHeader* pHdr = GetHeader(array);    size_t size = pHdr->arrSize;    for (size_t i = 0; i < size; ++i) {        release((struct MemHeader*)array[i]);    }    bool result = release(array);    if (result) {        return true;    }    return false;}