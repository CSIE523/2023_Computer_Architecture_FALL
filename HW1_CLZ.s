.data 
argument_1: .word 0x00000001 0x00000000
const_1: .word 0x55555555
const_2: .word 0x33333333
const_3: .word 0x0f0f0f0f
str1:     .string "The leading zero is"
# s0 : unsigned int 64 high 32 bits (static)
# s1 : unsigned int 64 low 32 bits (static)
# s2 : 64

# a0 : unsigned int 64 high 32 bits (tmp)
# a1 : unsigned int 64 low 32 bits (tmp)

.text
main:
    la a0, argument_1
    lw s0, 0(a0)
    lw a1, 4(a0)
    lw s1, 4(a0)
    lw a0, 0(a0)
    
    # x |= (x >> 1);
    slli t0, a0, 31
    srli a0, a0, 1    
    srli a1, a1, 1
    or a1, a1, t0
    or s0, s0, a0
    or s1, s1, a1
    jal ra, replace
    
    # x |= (x >> 2);
    slli t0, a0, 30
    srli a0, a0, 2    
    srli a1, a1, 2
    or a1, a1, t0
    or s0, s0, a0
    or s1, s1, a1
    jal ra, replace
    
    # x |= (x >> 4);
    slli t0, a0, 28
    srli a0, a0, 4  
    srli a1, a1, 4
    or a1, a1, t0
    or s0, s0, a0
    or s1, s1, a1
    jal ra, replace
    
    # x |= (x >> 8);
    slli t0, a0, 24
    srli a0, a0, 8  
    srli a1, a1, 8
    or a1, a1, t0
    or s0, s0, a0
    or s1, s1, a1
    jal ra, replace
    
    # x |= (x >> 16);
    slli t0, a0, 16
    srli a0, a0, 16 
    srli a1, a1, 16
    or a1, a1, t0
    or s0, s0, a0
    or s1, s1, a1
    jal ra, replace
    
    # x |= (x >> 32);
    or s1, s0, a1  
    jal ra, replace
    
    
    # x -= ((x >> 1) & 0x5555555555555555);
    slli t0, a0, 31
    srli a0, a0, 1    
    srli a1, a1, 1
    or a1, a1, t0
    lw t1, const_1
    and a0, a0, t1
    and a1, a1, t1
    
    sub s1, s1, a1
    sltu t0, s1, a1
    sub s0, s0, a0
    sub s0, s0, t0
    jal ra, replace
    
    # x = ((x >> 2) & 0x3333333333333333) + (x & 0x3333333333333333);
    addi t4, a0, 0
    addi t5, a1, 0
    slli t0, a0, 30
    srli a0, a0, 2    
    srli a1, a1, 2
    or a1, a1, t0
    lw t1, const_2 
    and a0, a0, t1
    and a1, a1, t1
    
    and t4, t4, t1
    and t5, t5, t1
    
    add a1, a1, t5
    sltu t0, a1, t5
    add a0, a0, t4
    add a0, a0, t0
    addi s0, a0, 0
    addi s1, a1, 0
    
    # x = ((x >> 4) + x) & 0x0f0f0f0f0f0f0f0f;
    slli t0, a0, 28
    srli a0, a0, 4  
    srli a1, a1, 4
    or a1, a1, t0
    add a1, a1, s1
    sltu t0, a1, s1
    add a0, a0, s0
    add a0, a0, t0
    lw t1, const_3
    and a0, a0, t1
    and a1, a1, t1
    addi s0, a0, 0
    addi s1, a1, 0
    
    # x += (x >> 8);
    slli t0, a0, 24
    srli a0, a0, 8  
    srli a1, a1, 8
    or a1, a1, t0
    add a1, a1, s1
    sltu t0, a1, s1
    add a0, a0, s0
    add a0, a0, t0
    addi s0, a0, 0
    addi s1, a1, 0
    
    # x += (x >> 16);
    slli t0, a0, 16
    srli a0, a0, 16  
    srli a1, a1, 16
    or a1, a1, t0
    add a1, a1, s1
    sltu t0, a1, s1
    add a0, a0, s0
    add a0, a0, t0
    addi s0, a0, 0
    addi s1, a1, 0
    
    # x += (x >> 32);
    add a1, a1, s0
    sltu t0, a1, s1
    add a0, a0, t0
    addi s0, a0, 0
    addi s1, a1, 0
    
    # (64 - (x & 0x7f));
    addi s2, x0, 0x40
    andi s1, s1, 0x7f
    sub s2, s2, s1
    
    j printResult

replace:
    addi a0, s0, 0
    addi a1, s1, 0
    jalr ra
    
printResult:
    li   a7, 1                 
    mv   a0, s2                
    ecall
    
exit: