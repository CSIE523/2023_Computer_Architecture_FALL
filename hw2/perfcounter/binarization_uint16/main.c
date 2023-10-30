#include <stdint.h>
#include <stdio.h>

extern uint64_t get_cycles();
extern uint64_t get_instret();

uint16_t count_leading_zeros_16(uint16_t x)
{
    x |= (x >> 1);
    x |= (x >> 2);
    x |= (x >> 4);
    x |= (x >> 8);

    x -= ((x >> 1) & 0x5555);
    x = ((x >> 2) & 0x3333) + (x & 0x3333);
    x = ((x >> 4) + x) & 0x0f0f;
    x += (x >> 8);

    // printf("%d\n", x);
    return (16 - (x & 0x1f)); // change 0x3f to 0x1f
}


int main(void){
    // pixel test
    // 8-bit color depth for black and white photo
    uint16_t picture[5] = {20,80,128,150,231};
    uint16_t threshold = 127;
    uint16_t *pixel = picture;

    printf("The threshold is %d.\n", threshold);
    printf("before binarization = ");
    for(int i= 0; i < 5; i++)
        printf("%d ", *(pixel+i));
    printf("\n\n");


    uint64_t instret = get_instret();
    uint64_t oldcount = get_cycles();

    for(int i = 0; i < 5; i++){
        uint16_t sub = threshold - *(pixel+i);
        sub = count_leading_zeros_16(sub);
        *(pixel+i) = (sub) ? 0 : 255;
    }

    uint64_t cyclecount = get_cycles() - oldcount;
    printf("cycle count: %u\n", (unsigned int) cyclecount);
    printf("instret: %x\n", (unsigned) (instret & 0xffffffff));

    printf("\n");
    printf("after binarization = ");
    for(int i= 0; i < 5; i++)
        printf("%d ", *(pixel+i));
    printf("\n");

    return 0;
}
