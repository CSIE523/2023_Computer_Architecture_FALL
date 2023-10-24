#include <stdint.h>
#include <stdio.h>
    
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
    return (16 - (x & 0x1f)); // change 0x7f to 0x3f
}

int main(){
    // pixel test
    // 8-bit color depth for black and white photo
    uint16_t picture[5] = {20,80,128,150,231};
    uint16_t threshold = 128;
    uint16_t *pixel = picture;

    // for(int i = 0; i < 5; i++){
    //     uint16_t sub = threshold - *(pixel+i);
    //     printf("%d, ",i);
    //     printf("before = %d\n, ",*(pixel+i));
    //     printf("sub1 : %d\n", sub);
    //     sub = count_leading_zeros_16(sub);
    //     printf("clz_sub2 : %d\n", sub);
    //     if(sub)
    //         *(pixel+i) = 0;
    //     else
    //         *(pixel+i) = 255;
    //     printf("after = %d\n",*(pixel+i));
    //     printf("--------------------------------\n");
    // }


// verification
    // for(int i = 0; i <= 255; i++){
    //     uint16_t sub = threshold - i;
    //     sub = count_leading_zeros_16(sub);
    //     // printf("clz_sub2 : %d\n", sub);
    //     if(sub)
    //         sub = 0;
    //     else
    //         sub = 255;
    //     printf("%d: after = %d\n", i, sub);
    //     printf("--------------------------------\n");
    // }

    return 0;
}