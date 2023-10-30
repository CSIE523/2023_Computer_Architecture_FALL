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
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	mv	a5,a0
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	srli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	or	a5,a5,a4
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	srli	a5,a5,2
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	or	a5,a5,a4
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	srli	a5,a5,4
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	or	a5,a5,a4
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	or	a5,a5,a4
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	srli	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,20480
	addi	a5,a5,1365
	and	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	sub	a5,a4,a5
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	srli	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,12288
	addi	a5,a5,819
	and	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	lhu	a5,-18(s0)
	mv	a3,a5
	li	a5,12288
	addi	a5,a5,819
	and	a5,a3,a5
	slli	a5,a5,16
	srli	a5,a5,16
	add	a5,a4,a5
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	srli	a5,a5,4
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	add	a5,a5,a4
	slli	a4,a5,16
	srli	a4,a4,16
	li	a5,4096
	addi	a5,a5,-241
	and	a5,a4,a5
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	srli	a5,a5,8
	slli	a5,a5,16
	srli	a5,a5,16
	lhu	a4,-18(s0)
	add	a5,a5,a4
	sh	a5,-18(s0)
	lhu	a5,-18(s0)
	andi	a5,a5,31
	slli	a5,a5,16
	srli	a5,a5,16
	li	a4,16
	sub	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	count_leading_zeros_16, .-count_leading_zeros_16
	.section	.rodata
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
	.align	2
.LC0:
	.half	20
	.half	80
	.half	128
	.half	150
	.half	231
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a4,0(a5)
	sw	a4,-76(s0)
	lw	a4,4(a5)
	sw	a4,-72(s0)
	lhu	a5,8(a5)
	sh	a5,-68(s0)
	li	a5,127
	sh	a5,-30(s0)
	addi	a5,s0,-76
	sw	a5,-36(s0)
	lhu	a5,-30(s0)
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	sw	zero,-20(s0)
	j	.L4
.L5:
	lw	a5,-20(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
	call	get_instret
	sw	a0,-48(s0)
	sw	a1,-44(s0)
	call	get_cycles
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	sw	zero,-24(s0)
	j	.L6
.L9:
	lw	a5,-24(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	lhu	a4,-30(s0)
	sub	a5,a4,a5
	sh	a5,-66(s0)
	lhu	a5,-66(s0)
	mv	a0,a5
	call	count_leading_zeros_16
	mv	a5,a0
	sh	a5,-66(s0)
	lhu	a5,-66(s0)
	beq	a5,zero,.L7
	li	a5,0
	j	.L8
.L7:
	li	a5,255
.L8:
	lw	a4,-24(s0)
	slli	a4,a4,1
	lw	a3,-36(s0)
	add	a4,a3,a4
	sh	a5,0(a4)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L6:
	lw	a4,-24(s0)
	li	a5,4
	ble	a4,a5,.L9
	call	get_cycles
	mv	a2,a0
	mv	a3,a1
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	sub	a4,a2,a0
	mv	a6,a4
	sgtu	a6,a6,a2
	sub	a5,a3,a1
	sub	a3,a5,a6
	mv	a5,a3
	sw	a4,-64(s0)
	sw	a5,-60(s0)
	lw	a5,-64(s0)
	mv	a1,a5
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	printf
	lw	a5,-48(s0)
	mv	a1,a5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	printf
	li	a0,10
	call	putchar
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	printf
	sw	zero,-28(s0)
	j	.L10
.L11:
	lw	a5,-28(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L10:
	lw	a4,-28(s0)
	li	a5,4
	ble	a4,a5,.L11
	li	a0,10
	call	putchar
	li	a5,0
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 13.2.0"
