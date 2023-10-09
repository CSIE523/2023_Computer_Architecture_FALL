.data 
test_data1: .word 0x00101110 0x01001000
test_data2: .word 0x11000008 0x00000000
test_data3: .word 0x00000000 0x00000000
const_1: .word 0x55555555
const_2: .word 0x33333333
const_3: .word 0x0f0f0f0f
str: .string "\nThe first set of test_data is "
# s1 : unsigned int 64 high 32 bits
# s2 : unsigned int 64 low 32 bits
# s3 : 64 or 32
# s4 : test_data select

# t1 : unsigned int 64 high 32 bits (tmp)
# t2 : unsigned int 64 low 32 bits (tmp)
# t3 : init=1, *2 until x = 32

.text 
data_select:
    jal ra, load_data1
    jal ra, load_data2
    jal ra, load_data3
    j exit

load_data1:
    la t1, test_data1
    j main

load_data2:
    la t1, test_data2
    j main

load_data3:
    la t1, test_data3

main:
    lw s1, 0(t1)
    lw s2, 4(t1)

    lw t3, 0(t1)
    lw t4, 4(t1)

    addi sp, sp, -4
    sw ra, 0(sp)
    jal ra, twos_comple

    and s1, s1, t3
    and s2, s2, t4

    addi t1, s1, 0  # replace tmp
    addi t2, s2, 0  # replace tmp
    addi s3, x0, 0x20
    addi t4, x0, 0x20
    addi t3, x0, 1

shift_with_or_loop_unrolling:
    # x |= (x >> 1);
    slli t0, t1, 31
    srli t1, t1, 1    
    srli t2, t2, 1
    or t2, t2, t0
    or s1, s1, t1
    or s2, s2, t2
    addi t1, s1, 0  # replace tmp
    addi t2, s2, 0  # replace tmp
    
    # x |= (x >> 2);
    slli t0, t1, 30
    srli t1, t1, 2    
    srli t2, t2, 2
    or t2, t2, t0
    or s1, s1, t1
    or s2, s2, t2
    addi t1, s1, 0  # replace tmp
    addi t2, s2, 0  # replace tmp
    
    # x |= (x >> 4);
    slli t0, t1, 28
    srli t1, t1, 4  
    srli t2, t2, 4
    or t2, t2, t0
    or s1, s1, t1
    or s2, s2, t2
    addi t1, s1, 0  # replace tmp
    addi t2, s2, 0  # replace tmp
    
    # x |= (x >> 8);
    slli t0, t1, 24
    srli t1, t1, 8  
    srli t2, t2, 8
    or t2, t2, t0
    or s1, s1, t1
    or s2, s2, t2
    addi t1, s1, 0  # replace tmp
    addi t2, s2, 0  # replace tmp
    
    # x |= (x >> 16);
    slli t0, t1, 16
    srli t1, t1, 16 
    srli t2, t2, 16
    or t2, t2, t0
    or s1, s1, t1
    or s2, s2, t2
    addi t1, s1, 0  # replace tmp
    addi t2, s2, 0  # replace tmp
    
    # x |= (x >> 32);
    or s2, s1, t2
    addi t1, s1, 0  # replace tmp
    addi t2, s2, 0  # replace tmp
    
count_ones:
    # x -= ((x >> 1) & 0x5555555555555555);
    slli t0, t1, 31
    srli t1, t1, 1
    srli t2, t2, 1
    or t2, t2, t0
    lw t3, const_1
    and t1, t1, t3
    and t2, t2, t3
    
    sub s2, s2, t2
    sltu t0, s2, t2
    sub s1, s1, t1
    sub s1, s1, t0
    addi t1, s1, 0  # replace tmp
    addi t2, s2, 0  # replace tmp

    # x = ((x >> 2) & 0x3333333333333333) + (x & 0x3333333333333333);
    addi t4, t1, 0
    addi t5, t2, 0
    slli t0, t1, 30
    srli t1, t1, 2
    srli t2, t2, 2
    or t2, t2, t0
    lw t3, const_2 
    and t1, t1, t3
    and t2, t2, t3
    
    and t4, t4, t3
    and t5, t5, t3
    
    add t2, t2, t5
    sltu t0, t2, t5
    add t1, t1, t4
    add t1, t1, t0
    addi s1, t1, 0
    addi s2, t2, 0
    
    # x = ((x >> 4) + x) & 0x0f0f0f0f0f0f0f0f;
    slli t0, t1, 28
    srli t1, t1, 4
    srli t2, t2, 4
    or t2, t2, t0
    add t2, t2, s2
    sltu t0, t2, s2
    add t1, t1, s1
    add t1, t1, t0
    lw t3, const_3
    and t1, t1, t3
    and t2, t2, t3
    addi s1, t1, 0
    addi s2, t2, 0
    
    # x += (x >> 8);
    slli t0, t1, 24
    srli t1, t1, 8
    srli t2, t2, 8
    or t2, t2, t0
    add t2, t2, s2
    sltu t0, t2, s2
    add t1, t1, s1
    add t1, t1, t0
    addi s1, t1, 0
    addi s2, t2, 0
    
    # x += (x >> 16);
    slli t0, t1, 16
    srli t1, t1, 16
    srli t2, t2, 16
    or t2, t2, t0
    add t2, t2, s2
    sltu t0, t2, s2
    add t1, t1, s1
    add t1, t1, t0
    addi s1, t1, 0
    addi s2, t2, 0
    
    # x += (x >> 32);
    add t2, t2, s1
    sltu t0, t2, s2
    add t1, t1, t0
    addi s1, t1, 0
    addi s2, t2, 0
    
    # (64 - (x & 0x7f));
    addi s3, x0, 0x40
    andi s2, s2, 0x7f
    sub s3, s3, s2
    
    # 64 - return value
    addi t3, x0, 0x40
    sub s3, t3, s3
    jal ra, printResult
    lw ra, 0(sp)
    addi sp, sp, 4
    jr ra
    
twos_comple:
    li t5, -1
    xor t3, t3, t5  # high
    xor t4, t4, t5  # low
    addi t5, x0, 1
    add t4, t4, t5
    sltu t0, t4, t5
    add t3, t3, t0
    jr ra

printResult:
    # print string
    la a0, str
    addi a7, zero, 4 
    ecall
    # print ffs
    li a7, 1
    mv a0, s3
    ecall
    jr ra

exit:
    li a7, 10
    ecall