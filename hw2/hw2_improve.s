	.file	"hw2_improve.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	count_leading_zeros
	.type	count_leading_zeros, @function
count_leading_zeros:
	slli	a4,a1,31
	srli	a5,a0,1
	or	a5,a4,a5
	srli	a4,a1,1
	or	a1,a4,a1
	or	a0,a5,a0
	slli	a4,a1,30
	srli	a5,a0,2
	or	a5,a4,a5
	srli	a4,a1,2
	or	a4,a4,a1
	or	a0,a5,a0
	slli	a3,a4,28
	srli	a5,a0,4
	or	a5,a3,a5
	srli	a3,a4,4
	or	a3,a3,a4
	or	a4,a5,a0
	slli	a2,a3,24
	srli	a5,a4,8
	or	a5,a2,a5
	srli	a2,a3,8
	or	a2,a2,a3
	or	a5,a5,a4
	srli	a3,a5,16
	slli	a4,a2,16
	or	a3,a4,a3
	srli	a4,a2,16
	or	a4,a4,a2
	or	a3,a3,a5
	or	a3,a4,a3
	slli	a1,a4,31
	srli	a5,a3,1
	li	a2,1431654400
	addi	a2,a2,1365
	or	a5,a1,a5
	and	a5,a5,a2
	srli	a1,a4,1
	sub	a5,a3,a5
	and	a2,a1,a2
	sgtu	a3,a5,a3
	sub	a4,a4,a2
	sub	a4,a4,a3
	slli	a1,a4,30
	srli	a3,a5,2
	li	a2,858992640
	addi	a2,a2,819
	or	a3,a1,a3
	and	a3,a3,a2
	srli	a1,a4,2
	and	a5,a5,a2
	add	a5,a3,a5
	and	a1,a1,a2
	and	a4,a4,a2
	add	a4,a1,a4
	sltu	a3,a5,a3
	add	a3,a3,a4
	slli	a2,a3,28
	srli	a4,a5,4
	or	a4,a2,a4
	add	a5,a4,a5
	srli	a2,a3,4
	add	a2,a2,a3
	sltu	a4,a5,a4
	li	a3,252645376
	addi	a3,a3,-241
	add	a4,a4,a2
	and	a4,a4,a3
	and	a5,a5,a3
	slli	a2,a4,24
	srli	a3,a5,8
	or	a3,a2,a3
	add	a5,a3,a5
	srli	a2,a4,8
	add	a4,a2,a4
	sltu	a3,a5,a3
	add	a3,a3,a4
	slli	a2,a3,16
	srli	a4,a5,16
	or	a4,a2,a4
	add	a5,a4,a5
	srli	a2,a3,16
	sltu	a4,a5,a4
	add	a3,a2,a3
	add	a4,a4,a3
	add	a4,a4,a5
	andi	a4,a4,127
	li	a0,64
	sub	a0,a0,a4
	slli	a0,a0,16
	srli	a0,a0,16
	ret
	.size	count_leading_zeros, .-count_leading_zeros
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%d"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	li	a1,51
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 13.2.0"
