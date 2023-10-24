#include <stdint.h>
#include <stdio.h>
    
uint16_t count_leading_zeros_8(uint16_t x)
{
    x |= (x >> 1);
    x |= (x >> 2);
    x |= (x >> 4);

    x -= ((x >> 1) & 0x55);
    x = ((x >> 2) & 0x33) + (x & 0x33);
    x = ((x >> 4) + x) & 0x0f;

    // printf("%d\n", x);
    return (8 - (x & 0x0f)); // change 0x7f to 0x3f
}

int main(){
    // pixel test
    // 8-bit color depth for black and white photo
    uint8_t picture[5] = {20,80,128,150,231};
    uint8_t threshold = 128;
    uint8_t *pixel = picture;

    // for(int i = 0; i < 5; i++){
    //     uint8_t sub = threshold - *(pixel+i);
    //     printf("%d, ",i);
    //     printf("before = %d\n, ",*(pixel+i));
    //     printf("sub1 : %d\n", sub);
    //     clz = count_leading_zeros_8(sub);
    //     printf("clz_sub2 : %d\n", sub);
    //     if(clz)
    //         *(pixel+i) = 0;
    //     else
    //         *(pixel+i) = 255;
    //     printf("after = %d\n",*(pixel+i));
    //     printf("--------------------------------\n");
    // }


    /*
        if(*(pixel+i) > threshold)
            *(pixel+i) = 255;
        else
            *(pixel+i) = 0;
    
    
    */





   /*

    t0: pixel, t1 129, t2 compare result

    sltu t2, t0, t1
    addi t0, t2, 255
   
   
   
   */


// verification
    for(int i = 0; i <= 255; i++){
        uint16_t sub = threshold - i;
        sub = count_leading_zeros_8(sub);
        if(sub)
            sub = 0;
        else
            sub = 255;
        printf("%d: after = %d\n", i, sub);
        printf("--------------------------------\n");
    }

    return 0;
}