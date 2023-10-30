	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	count_leading_zeros_16
	.type	count_leading_zeros_16, @function
count_leading_zeros_16:
	srli	a5,a0,1
	or	a0,a5,a0
	srli	a5,a0,2
	or	a5,a5,a0
	srli	a0,a5,4
	or	a0,a0,a5
	srli	a4,a0,8
	or	a4,a4,a0
	srli	a5,a4,1
	li	a3,20480
	addi	a3,a3,1365
	and	a5,a5,a3
	sub	a4,a4,a5
	slli	a4,a4,16
	srli	a4,a4,16
	srli	a5,a4,2
	li	a3,12288
	addi	a3,a3,819
	and	a5,a5,a3
	and	a4,a4,a3
	add	a5,a5,a4
	srli	a4,a5,4
	add	a5,a5,a4
	li	a4,4096
	addi	a4,a4,-241
	and	a5,a5,a4
	srli	a4,a5,8
	add	a5,a4,a5
	andi	a5,a5,31
	li	a0,16
	sub	a0,a0,a5
	slli	a0,a0,16
	srli	a0,a0,16
	ret
	.size	count_leading_zeros_16, .-count_leading_zeros_16
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"The threshold is %d.\n"
	.align	2
.LC2:
	.string	"before binarization = "
	.align	2
.LC3:
	.string	"%d "
	.align	2
.LC4:
	.string	"\n"
	.align	2
.LC5:
	.string	"cycle count: %u\n"
	.align	2
.LC6:
	.string	"instret: %x\n"
	.align	2
.LC7:
	.string	"after binarization = "
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a4,0(a5)
	sw	a4,4(sp)
	lw	a4,4(a5)
	sw	a4,8(sp)
	lhu	a5,8(a5)
	sh	a5,12(sp)
	li	a1,127
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
	addi	s1,sp,4
	addi	s2,sp,14
	mv	s0,s1
	lui	s3,%hi(.LC3)
.L3:
	lhu	a1,0(s0)
	addi	a0,s3,%lo(.LC3)
	call	printf
	addi	s0,s0,2
	bne	s0,s2,.L3
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	puts
	call	get_instret
	mv	s4,a0
	call	get_cycles
	mv	s5,a0
	mv	s0,s1
	li	s3,127
.L5:
	lhu	a0,0(s0)
	sub	a0,s3,a0
	slli	a0,a0,16
	srli	a0,a0,16
	call	count_leading_zeros_16
	seqz	a5,a0
	neg	a5,a5
	andi	a5,a5,0xff
	sh	a5,0(s0)
	addi	s0,s0,2
	bne	s0,s2,.L5
	call	get_cycles
	sub	a1,a0,s5
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
	mv	a1,s4
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
	li	a0,10
	call	putchar
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
	lui	s0,%hi(.LC3)
.L6:
	lhu	a1,0(s1)
	addi	a0,s0,%lo(.LC3)
	call	printf
	addi	s1,s1,2
	bne	s1,s2,.L6
	li	a0,10
	call	putchar
	li	a0,0
	lw	ra,44(sp)
	lw	s0,40(sp)
	lw	s1,36(sp)
	lw	s2,32(sp)
	lw	s3,28(sp)
	lw	s4,24(sp)
	lw	s5,20(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.half	20
	.half	80
	.half	128
	.half	150
	.half	231
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 13.2.0"
