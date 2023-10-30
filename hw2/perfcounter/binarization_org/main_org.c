#include <stdint.h>
#include <stdio.h>

extern uint64_t get_cycles();
extern uint64_t get_instret();

uint32_t count_leading_zeros_32(uint32_t x){
    x |= (x >> 1);
    x |= (x >> 2);
    x |= (x >> 4);
    x |= (x >> 8);
    x |= (x >> 16);

    x -= ((x >> 1) & 0x55555555);
    x = ((x >> 2) & 0x33333333) + (x & 0x33333333);
    x = ((x >> 4) + x) & 0x0f0f0f0f;
    x += (x >> 8);
    x += (x >> 16);

    return (32 - (x & 0x3f)); // change 0x7f to 0x3f
}

int main(void){
    // pixel test
    // 8-bit color depth for black and white photo
    uint32_t picture[5] = {20,80,128,150,231};
    uint32_t threshold = 128;
    uint32_t *pixel = picture;

    printf("The threshold is %ld.\n", threshold);
    printf("before binarization = ");
    for(int i= 0; i < 5; i++)
        printf("%ld ", *(pixel+i));
    printf("\n\n");


    uint64_t instret = get_instret();
    uint64_t oldcount = get_cycles();

    for(int i = 0; i < 5; i++){
        uint32_t sub = threshold - *(pixel+i);
        sub = count_leading_zeros_32(sub);
        if(sub)
            *(pixel+i) = 0;
        else
            *(pixel+i) = 255;
    }

    uint64_t cyclecount = get_cycles() - oldcount;
    printf("cycle count: %u\n", (unsigned int) cyclecount);
    printf("instret: %x\n", (unsigned) (instret & 0xffffffff));

    printf("\n");
    printf("after binarization = ");
    for(int i= 0; i < 5; i++)
        printf("%ld ", *(pixel+i));
    printf("\n");

    return 0;
}
