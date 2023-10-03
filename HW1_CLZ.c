#include<stdio.h>
#include<stdint.h>
uint16_t count_leading_zeros(uint64_t x)
{
    x |= (x >> 1);
    x |= (x >> 2);
    x |= (x >> 4);
    x |= (x >> 8);
    x |= (x >> 16);
    x |= (x >> 32);

    /* count ones (population count) */
    x -= ((x >> 1) & 0x5555555555555555 );
 printf("1 : %ld\n", x);
    x = ((x >> 2) & 0x3333333333333333) + (x & 0x3333333333333333);
    printf("2 : %ld\n", x);
    x = ((x >> 4) + x) & 0x0f0f0f0f0f0f0f0f;
 printf("4 : %ld\n", x);
    x += (x >> 8);
 printf("8 : %ld\n", x);
    x += (x >> 16);
 printf("16 : %ld\n", x);

    x += (x >> 32);
 printf("32 : %ld\n", x);

 printf("%ld\n", x & 0x7f);
    return (64 - (x & 0x7f));
}

int main(){
	long int x = 0xf000000000000000;
	count_leading_zeros(x);

}