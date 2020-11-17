
#include <stdio.h>
#include <stdbool.h>
#include "dataDef.h"
#include "memoryVM.h"
#include <stdlib.h>
#include <zconf.h>

/*
#define allocate(size_t)
#define acquire(void)
#define allocateArray(size_t, size_t)
#define release(void)
*/
#define UNUSED(VAR) ((void) VAR)

/*
 * This file is not submitted as your homework.
 *
 * You should only use it to test and play with your implementation.
 */

int main(int argc, char *argv[])
{
    UNUSED(argc);
    UNUSED(argv);



    int *pX;
    pX = allocate(sizeof(int) * 10);

    for (int i = 0; i < 10; ++i) {
        printf(" %d ", pX[i]);
    }

    pX[3] = 10;
    pX[8] = 50;
    pX[9] = 5;
    pX[0] = 2;

    putchar('\n');
    for (int i = 0; i < 10; ++i) {
        printf(" %d ", pX[i]);
    }

    putchar('\n');
   release(pX);
  // printf("release %d\n", jedna);

    char *pY;
    pY = allocate(sizeof(char) * 10);
    acquire(pY);
    pY[3] = 'a';
    pY[8] = 'b';
    pY[9] = 'x';
    pY[0] = 'z';
    putchar('\n');
    for (int i = 0; i < 10; ++i) {
        printf(" %c ", pY[i]);
    }
    putchar('\n');
    release(pY);
   // printf("charC1 %d\n", dva);

     release(pY);
  //  printf("charC0 %d\n", tri);


    int *pZ;
    pZ = allocateArray(sizeof(int), 10);
    pZ[5] = 8;
    pZ[0] = 888;
    pZ[9] = 69;
    for (int i = 0; i < 10; ++i) {
        printf(" %d ", pZ[i]);
    }

   // printf("cislo %d\n", pZ[5]);
   // printf("cislo %d\n", pZ[0]);
    acquire(pZ);
    acquire(pZ);
    acquire(pZ);
 release(pZ);
  //  printf("poleF %d\n", pole);
   release(pZ);
  //  printf("poleF %d\n", pole);
  release(pZ);
   // printf("poleF %d\n", pole);
release(pZ);
  //  printf("poleT %d\n", pole);


    size_t arr[5] = {1,3,4,5,2};
    void **p2D;
    p2D = allocateArray2D(sizeof(int), 5, arr);
    acquire(p2D);
  release(p2D);
 //   printf("pole2DFalse %d\n", d);
    acquire(p2D);
 //   putchar('\n');
    acquireArray2D(p2D);

   // printf("pole2DT %d\n", d);
    release(p2D);
    releaseArray2D(p2D);
    releaseArray2D(p2D);

    void **p2D2;
    p2D2 = allocateArray2D(sizeof(int), 5 , NULL);
    acquireArray2D(p2D2);
   // putchar('\n');
    releaseArray2D(p2D2);
   // putchar('\n');
    releaseArray2D(p2D2);
  //  putchar('\n');

    int *pA;
    pA = allocateArray(1, 36/8);
    acquire(pA);
    release(pA);
    release(pA);


    size_t arr2[5] = {1,3,15,5,2};
    void **pB;
    pB = allocateArray2D(sizeof(int), 4 , arr2);
   // printf("%d", pB);
    releaseArray2D(pB);


    int *pG;
    pG = allocate(sizeof(int) * 10);

    for (int i = 0; i < 65534; ++i) {
        acquire(pG);
    }
    for (int i = 0; i < 65535; ++i) {
        release(pG);
    }
    return EXIT_SUCCESS;
}
