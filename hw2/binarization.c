#include <stdint.h>
#include <stdio.h>
    
uint8_t count_leading_zeros_32(uint8_t x)
{
    x |= (x >> 1);
    x |= (x >> 2);
    x |= (x >> 4);

    x -= ((x >> 1) & 0x55);
    x = ((x >> 2) & 0x33) + (x & 0x33);
    x = ((x >> 4) + x) & 0x0f;

    return (16 - (x & 0x1f)); // change 0x7f to 0x3f
}

int main(){
    // pixel test
    // 8-bit color depth for black and white photo
    uint8_t picture[5] = {20,80,128,150,231};
    uint8_t threshold = 230;
    uint8_t *pixel = picture;
    for(int i=0;i<5;i++){
	printf("%c\n", picture[i]);
    }
    for(int i = 0; i < 5; i++){
        uint8_t sub = threshold - *(pixel+i);
	printf("sub: %d\n", sub);
        printf("%d, ",i);
        printf("before = %d, ",*(pixel+i));
        sub = count_leading_zeros_32(sub);
        if(sub>*(pixel+i))
            *(pixel+i) = 0;
        else
            *(pixel+i) = 255;
        printf("after = %d\n",*(pixel+i));
    }

    return 0;
}

