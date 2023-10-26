
binarization_O0.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	ff010113          	add	sp,sp,-16
   10098:	00000593          	li	a1,0
   1009c:	00812423          	sw	s0,8(sp)
   100a0:	00112623          	sw	ra,12(sp)
   100a4:	00050413          	mv	s0,a0
   100a8:	64d000ef          	jal	10ef4 <__call_exitprocs>
   100ac:	d501a783          	lw	a5,-688(gp) # 13958 <__stdio_exit_handler>
   100b0:	00078463          	beqz	a5,100b8 <exit+0x24>
   100b4:	000780e7          	jalr	a5
   100b8:	00040513          	mv	a0,s0
   100bc:	1a8020ef          	jal	12264 <_exit>

000100c0 <register_fini>:
   100c0:	00000793          	li	a5,0
   100c4:	00078863          	beqz	a5,100d4 <register_fini+0x14>
   100c8:	00001517          	auipc	a0,0x1
   100cc:	be050513          	add	a0,a0,-1056 # 10ca8 <__libc_fini_array>
   100d0:	2680006f          	j	10338 <atexit>
   100d4:	00008067          	ret

000100d8 <_start>:
   100d8:	00004197          	auipc	gp,0x4
   100dc:	b3018193          	add	gp,gp,-1232 # 13c08 <__global_pointer$>
   100e0:	d4c18513          	add	a0,gp,-692 # 13954 <completed.1>
   100e4:	09418613          	add	a2,gp,148 # 13c9c <__BSS_END__>
   100e8:	40a60633          	sub	a2,a2,a0
   100ec:	00000593          	li	a1,0
   100f0:	445000ef          	jal	10d34 <memset>
   100f4:	00001517          	auipc	a0,0x1
   100f8:	bb450513          	add	a0,a0,-1100 # 10ca8 <__libc_fini_array>
   100fc:	23c000ef          	jal	10338 <atexit>
   10100:	315000ef          	jal	10c14 <__libc_init_array>
   10104:	00012503          	lw	a0,0(sp)
   10108:	00410593          	add	a1,sp,4
   1010c:	00000613          	li	a2,0
   10110:	128000ef          	jal	10238 <main>
   10114:	f81ff06f          	j	10094 <exit>

00010118 <__do_global_dtors_aux>:
   10118:	ff010113          	add	sp,sp,-16
   1011c:	00812423          	sw	s0,8(sp)
   10120:	d4c18413          	add	s0,gp,-692 # 13954 <completed.1>
   10124:	00044783          	lbu	a5,0(s0)
   10128:	00112623          	sw	ra,12(sp)
   1012c:	02079263          	bnez	a5,10150 <__do_global_dtors_aux+0x38>
   10130:	00000793          	li	a5,0
   10134:	00078a63          	beqz	a5,10148 <__do_global_dtors_aux+0x30>
   10138:	00003517          	auipc	a0,0x3
   1013c:	2c050513          	add	a0,a0,704 # 133f8 <__EH_FRAME_BEGIN__>
   10140:	00000097          	auipc	ra,0x0
   10144:	000000e7          	jalr	zero # 0 <exit-0x10094>
   10148:	00100793          	li	a5,1
   1014c:	00f40023          	sb	a5,0(s0)
   10150:	00c12083          	lw	ra,12(sp)
   10154:	00812403          	lw	s0,8(sp)
   10158:	01010113          	add	sp,sp,16
   1015c:	00008067          	ret

00010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	d8c18593          	add	a1,gp,-628 # 13994 <object.0>
   1016c:	00003517          	auipc	a0,0x3
   10170:	28c50513          	add	a0,a0,652 # 133f8 <__EH_FRAME_BEGIN__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <exit-0x10094>
   1017c:	00008067          	ret

00010180 <count_leading_zeros_32>:
   10180:	fe010113          	add	sp,sp,-32
   10184:	00812e23          	sw	s0,28(sp)
   10188:	02010413          	add	s0,sp,32
   1018c:	fea42623          	sw	a0,-20(s0)
   10190:	fec42783          	lw	a5,-20(s0)
   10194:	4017d793          	sra	a5,a5,0x1
   10198:	fec42703          	lw	a4,-20(s0)
   1019c:	00f767b3          	or	a5,a4,a5
   101a0:	fef42623          	sw	a5,-20(s0)
   101a4:	fec42783          	lw	a5,-20(s0)
   101a8:	4027d793          	sra	a5,a5,0x2
   101ac:	fec42703          	lw	a4,-20(s0)
   101b0:	00f767b3          	or	a5,a4,a5
   101b4:	fef42623          	sw	a5,-20(s0)
   101b8:	fec42783          	lw	a5,-20(s0)
   101bc:	4047d793          	sra	a5,a5,0x4
   101c0:	fec42703          	lw	a4,-20(s0)
   101c4:	00f767b3          	or	a5,a4,a5
   101c8:	fef42623          	sw	a5,-20(s0)
   101cc:	fec42783          	lw	a5,-20(s0)
   101d0:	4017d793          	sra	a5,a5,0x1
   101d4:	0557f793          	and	a5,a5,85
   101d8:	fec42703          	lw	a4,-20(s0)
   101dc:	40f707b3          	sub	a5,a4,a5
   101e0:	fef42623          	sw	a5,-20(s0)
   101e4:	fec42783          	lw	a5,-20(s0)
   101e8:	4027d793          	sra	a5,a5,0x2
   101ec:	0337f713          	and	a4,a5,51
   101f0:	fec42783          	lw	a5,-20(s0)
   101f4:	0337f793          	and	a5,a5,51
   101f8:	00f707b3          	add	a5,a4,a5
   101fc:	fef42623          	sw	a5,-20(s0)
   10200:	fec42783          	lw	a5,-20(s0)
   10204:	4047d713          	sra	a4,a5,0x4
   10208:	fec42783          	lw	a5,-20(s0)
   1020c:	00f707b3          	add	a5,a4,a5
   10210:	00f7f793          	and	a5,a5,15
   10214:	fef42623          	sw	a5,-20(s0)
   10218:	fec42783          	lw	a5,-20(s0)
   1021c:	01f7f793          	and	a5,a5,31
   10220:	01000713          	li	a4,16
   10224:	40f707b3          	sub	a5,a4,a5
   10228:	00078513          	mv	a0,a5
   1022c:	01c12403          	lw	s0,28(sp)
   10230:	02010113          	add	sp,sp,32
   10234:	00008067          	ret

00010238 <main>:
   10238:	fc010113          	add	sp,sp,-64
   1023c:	02112e23          	sw	ra,60(sp)
   10240:	02812c23          	sw	s0,56(sp)
   10244:	04010413          	add	s0,sp,64
   10248:	000127b7          	lui	a5,0x12
   1024c:	3e478793          	add	a5,a5,996 # 123e4 <__errno+0x8>
   10250:	0007a583          	lw	a1,0(a5)
   10254:	0047a603          	lw	a2,4(a5)
   10258:	0087a683          	lw	a3,8(a5)
   1025c:	00c7a703          	lw	a4,12(a5)
   10260:	0107a783          	lw	a5,16(a5)
   10264:	fcb42623          	sw	a1,-52(s0)
   10268:	fcc42823          	sw	a2,-48(s0)
   1026c:	fcd42a23          	sw	a3,-44(s0)
   10270:	fce42c23          	sw	a4,-40(s0)
   10274:	fcf42e23          	sw	a5,-36(s0)
   10278:	0e600793          	li	a5,230
   1027c:	fef42423          	sw	a5,-24(s0)
   10280:	fcc40793          	add	a5,s0,-52
   10284:	fef42223          	sw	a5,-28(s0)
   10288:	fe042623          	sw	zero,-20(s0)
   1028c:	0880006f          	j	10314 <main+0xdc>
   10290:	fec42783          	lw	a5,-20(s0)
   10294:	00279793          	sll	a5,a5,0x2
   10298:	fe442703          	lw	a4,-28(s0)
   1029c:	00f707b3          	add	a5,a4,a5
   102a0:	0007a783          	lw	a5,0(a5)
   102a4:	fe842703          	lw	a4,-24(s0)
   102a8:	40f707b3          	sub	a5,a4,a5
   102ac:	fef42023          	sw	a5,-32(s0)
   102b0:	fe042503          	lw	a0,-32(s0)
   102b4:	ecdff0ef          	jal	10180 <count_leading_zeros_32>
   102b8:	fea42023          	sw	a0,-32(s0)
   102bc:	fec42783          	lw	a5,-20(s0)
   102c0:	00279793          	sll	a5,a5,0x2
   102c4:	fe442703          	lw	a4,-28(s0)
   102c8:	00f707b3          	add	a5,a4,a5
   102cc:	0007a783          	lw	a5,0(a5)
   102d0:	fe042703          	lw	a4,-32(s0)
   102d4:	00e7de63          	bge	a5,a4,102f0 <main+0xb8>
   102d8:	fec42783          	lw	a5,-20(s0)
   102dc:	00279793          	sll	a5,a5,0x2
   102e0:	fe442703          	lw	a4,-28(s0)
   102e4:	00f707b3          	add	a5,a4,a5
   102e8:	0007a023          	sw	zero,0(a5)
   102ec:	01c0006f          	j	10308 <main+0xd0>
   102f0:	fec42783          	lw	a5,-20(s0)
   102f4:	00279793          	sll	a5,a5,0x2
   102f8:	fe442703          	lw	a4,-28(s0)
   102fc:	00f707b3          	add	a5,a4,a5
   10300:	0ff00713          	li	a4,255
   10304:	00e7a023          	sw	a4,0(a5)
   10308:	fec42783          	lw	a5,-20(s0)
   1030c:	00178793          	add	a5,a5,1
   10310:	fef42623          	sw	a5,-20(s0)
   10314:	fec42703          	lw	a4,-20(s0)
   10318:	00400793          	li	a5,4
   1031c:	f6e7dae3          	bge	a5,a4,10290 <main+0x58>
   10320:	00000793          	li	a5,0
   10324:	00078513          	mv	a0,a5
   10328:	03c12083          	lw	ra,60(sp)
   1032c:	03812403          	lw	s0,56(sp)
   10330:	04010113          	add	sp,sp,64
   10334:	00008067          	ret

00010338 <atexit>:
   10338:	00050593          	mv	a1,a0
   1033c:	00000693          	li	a3,0
   10340:	00000613          	li	a2,0
   10344:	00000513          	li	a0,0
   10348:	2c90006f          	j	10e10 <__register_exitproc>

0001034c <stdio_exit_handler>:
   1034c:	00003617          	auipc	a2,0x3
   10350:	0bc60613          	add	a2,a2,188 # 13408 <__sglue>
   10354:	00002597          	auipc	a1,0x2
   10358:	90458593          	add	a1,a1,-1788 # 11c58 <_fclose_r>
   1035c:	00003517          	auipc	a0,0x3
   10360:	0bc50513          	add	a0,a0,188 # 13418 <_impure_data>
   10364:	4680006f          	j	107cc <_fwalk_sglue>

00010368 <cleanup_stdio>:
   10368:	00452583          	lw	a1,4(a0)
   1036c:	ff010113          	add	sp,sp,-16
   10370:	00812423          	sw	s0,8(sp)
   10374:	00112623          	sw	ra,12(sp)
   10378:	da418793          	add	a5,gp,-604 # 139ac <__sf>
   1037c:	00050413          	mv	s0,a0
   10380:	00f58463          	beq	a1,a5,10388 <cleanup_stdio+0x20>
   10384:	0d5010ef          	jal	11c58 <_fclose_r>
   10388:	00842583          	lw	a1,8(s0)
   1038c:	e0c18793          	add	a5,gp,-500 # 13a14 <__sf+0x68>
   10390:	00f58663          	beq	a1,a5,1039c <cleanup_stdio+0x34>
   10394:	00040513          	mv	a0,s0
   10398:	0c1010ef          	jal	11c58 <_fclose_r>
   1039c:	00c42583          	lw	a1,12(s0)
   103a0:	e7418793          	add	a5,gp,-396 # 13a7c <__sf+0xd0>
   103a4:	00f58c63          	beq	a1,a5,103bc <cleanup_stdio+0x54>
   103a8:	00040513          	mv	a0,s0
   103ac:	00812403          	lw	s0,8(sp)
   103b0:	00c12083          	lw	ra,12(sp)
   103b4:	01010113          	add	sp,sp,16
   103b8:	0a10106f          	j	11c58 <_fclose_r>
   103bc:	00c12083          	lw	ra,12(sp)
   103c0:	00812403          	lw	s0,8(sp)
   103c4:	01010113          	add	sp,sp,16
   103c8:	00008067          	ret

000103cc <__fp_lock>:
   103cc:	0645a783          	lw	a5,100(a1)
   103d0:	0017f793          	and	a5,a5,1
   103d4:	00079863          	bnez	a5,103e4 <__fp_lock+0x18>
   103d8:	00c5d783          	lhu	a5,12(a1)
   103dc:	2007f793          	and	a5,a5,512
   103e0:	00078663          	beqz	a5,103ec <__fp_lock+0x20>
   103e4:	00000513          	li	a0,0
   103e8:	00008067          	ret
   103ec:	0585a503          	lw	a0,88(a1)
   103f0:	ff010113          	add	sp,sp,-16
   103f4:	00112623          	sw	ra,12(sp)
   103f8:	121000ef          	jal	10d18 <__retarget_lock_acquire_recursive>
   103fc:	00c12083          	lw	ra,12(sp)
   10400:	00000513          	li	a0,0
   10404:	01010113          	add	sp,sp,16
   10408:	00008067          	ret

0001040c <__fp_unlock>:
   1040c:	0645a783          	lw	a5,100(a1)
   10410:	0017f793          	and	a5,a5,1
   10414:	00079863          	bnez	a5,10424 <__fp_unlock+0x18>
   10418:	00c5d783          	lhu	a5,12(a1)
   1041c:	2007f793          	and	a5,a5,512
   10420:	00078663          	beqz	a5,1042c <__fp_unlock+0x20>
   10424:	00000513          	li	a0,0
   10428:	00008067          	ret
   1042c:	0585a503          	lw	a0,88(a1)
   10430:	ff010113          	add	sp,sp,-16
   10434:	00112623          	sw	ra,12(sp)
   10438:	0f9000ef          	jal	10d30 <__retarget_lock_release_recursive>
   1043c:	00c12083          	lw	ra,12(sp)
   10440:	00000513          	li	a0,0
   10444:	01010113          	add	sp,sp,16
   10448:	00008067          	ret

0001044c <global_stdio_init.part.0>:
   1044c:	fe010113          	add	sp,sp,-32
   10450:	00000797          	auipc	a5,0x0
   10454:	efc78793          	add	a5,a5,-260 # 1034c <stdio_exit_handler>
   10458:	00112e23          	sw	ra,28(sp)
   1045c:	00812c23          	sw	s0,24(sp)
   10460:	00912a23          	sw	s1,20(sp)
   10464:	da418413          	add	s0,gp,-604 # 139ac <__sf>
   10468:	01212823          	sw	s2,16(sp)
   1046c:	01312623          	sw	s3,12(sp)
   10470:	01412423          	sw	s4,8(sp)
   10474:	00800613          	li	a2,8
   10478:	00000593          	li	a1,0
   1047c:	d4f1a823          	sw	a5,-688(gp) # 13958 <__stdio_exit_handler>
   10480:	e0018513          	add	a0,gp,-512 # 13a08 <__sf+0x5c>
   10484:	00400793          	li	a5,4
   10488:	00f42623          	sw	a5,12(s0)
   1048c:	00042023          	sw	zero,0(s0)
   10490:	00042223          	sw	zero,4(s0)
   10494:	00042423          	sw	zero,8(s0)
   10498:	06042223          	sw	zero,100(s0)
   1049c:	00042823          	sw	zero,16(s0)
   104a0:	00042a23          	sw	zero,20(s0)
   104a4:	00042c23          	sw	zero,24(s0)
   104a8:	08d000ef          	jal	10d34 <memset>
   104ac:	00000a17          	auipc	s4,0x0
   104b0:	3d4a0a13          	add	s4,s4,980 # 10880 <__sread>
   104b4:	00000997          	auipc	s3,0x0
   104b8:	43098993          	add	s3,s3,1072 # 108e4 <__swrite>
   104bc:	00000917          	auipc	s2,0x0
   104c0:	4b090913          	add	s2,s2,1200 # 1096c <__sseek>
   104c4:	00000497          	auipc	s1,0x0
   104c8:	52048493          	add	s1,s1,1312 # 109e4 <__sclose>
   104cc:	dfc18513          	add	a0,gp,-516 # 13a04 <__sf+0x58>
   104d0:	03442023          	sw	s4,32(s0)
   104d4:	03342223          	sw	s3,36(s0)
   104d8:	03242423          	sw	s2,40(s0)
   104dc:	02942623          	sw	s1,44(s0)
   104e0:	00842e23          	sw	s0,28(s0)
   104e4:	025000ef          	jal	10d08 <__retarget_lock_init_recursive>
   104e8:	000107b7          	lui	a5,0x10
   104ec:	00978793          	add	a5,a5,9 # 10009 <exit-0x8b>
   104f0:	00800613          	li	a2,8
   104f4:	00000593          	li	a1,0
   104f8:	e6818513          	add	a0,gp,-408 # 13a70 <__sf+0xc4>
   104fc:	06f42a23          	sw	a5,116(s0)
   10500:	06042423          	sw	zero,104(s0)
   10504:	06042623          	sw	zero,108(s0)
   10508:	06042823          	sw	zero,112(s0)
   1050c:	0c042623          	sw	zero,204(s0)
   10510:	06042c23          	sw	zero,120(s0)
   10514:	06042e23          	sw	zero,124(s0)
   10518:	08042023          	sw	zero,128(s0)
   1051c:	019000ef          	jal	10d34 <memset>
   10520:	e0c18793          	add	a5,gp,-500 # 13a14 <__sf+0x68>
   10524:	e6418513          	add	a0,gp,-412 # 13a6c <__sf+0xc0>
   10528:	08f42223          	sw	a5,132(s0)
   1052c:	09442423          	sw	s4,136(s0)
   10530:	09342623          	sw	s3,140(s0)
   10534:	09242823          	sw	s2,144(s0)
   10538:	08942a23          	sw	s1,148(s0)
   1053c:	7cc000ef          	jal	10d08 <__retarget_lock_init_recursive>
   10540:	000207b7          	lui	a5,0x20
   10544:	01278793          	add	a5,a5,18 # 20012 <__BSS_END__+0xc376>
   10548:	00800613          	li	a2,8
   1054c:	00000593          	li	a1,0
   10550:	ed018513          	add	a0,gp,-304 # 13ad8 <__sf+0x12c>
   10554:	0cf42e23          	sw	a5,220(s0)
   10558:	0c042823          	sw	zero,208(s0)
   1055c:	0c042a23          	sw	zero,212(s0)
   10560:	0c042c23          	sw	zero,216(s0)
   10564:	12042a23          	sw	zero,308(s0)
   10568:	0e042023          	sw	zero,224(s0)
   1056c:	0e042223          	sw	zero,228(s0)
   10570:	0e042423          	sw	zero,232(s0)
   10574:	7c0000ef          	jal	10d34 <memset>
   10578:	e7418793          	add	a5,gp,-396 # 13a7c <__sf+0xd0>
   1057c:	0f442823          	sw	s4,240(s0)
   10580:	0f342a23          	sw	s3,244(s0)
   10584:	0f242c23          	sw	s2,248(s0)
   10588:	0e942e23          	sw	s1,252(s0)
   1058c:	0ef42623          	sw	a5,236(s0)
   10590:	01812403          	lw	s0,24(sp)
   10594:	01c12083          	lw	ra,28(sp)
   10598:	01412483          	lw	s1,20(sp)
   1059c:	01012903          	lw	s2,16(sp)
   105a0:	00c12983          	lw	s3,12(sp)
   105a4:	00812a03          	lw	s4,8(sp)
   105a8:	ecc18513          	add	a0,gp,-308 # 13ad4 <__sf+0x128>
   105ac:	02010113          	add	sp,sp,32
   105b0:	7580006f          	j	10d08 <__retarget_lock_init_recursive>

000105b4 <__sfp>:
   105b4:	fe010113          	add	sp,sp,-32
   105b8:	01312623          	sw	s3,12(sp)
   105bc:	00050993          	mv	s3,a0
   105c0:	d7418513          	add	a0,gp,-652 # 1397c <__lock___sfp_recursive_mutex>
   105c4:	00112e23          	sw	ra,28(sp)
   105c8:	00812c23          	sw	s0,24(sp)
   105cc:	00912a23          	sw	s1,20(sp)
   105d0:	01212823          	sw	s2,16(sp)
   105d4:	744000ef          	jal	10d18 <__retarget_lock_acquire_recursive>
   105d8:	d501a783          	lw	a5,-688(gp) # 13958 <__stdio_exit_handler>
   105dc:	10078063          	beqz	a5,106dc <__sfp+0x128>
   105e0:	00003917          	auipc	s2,0x3
   105e4:	e2890913          	add	s2,s2,-472 # 13408 <__sglue>
   105e8:	fff00493          	li	s1,-1
   105ec:	00492783          	lw	a5,4(s2)
   105f0:	00892403          	lw	s0,8(s2)
   105f4:	fff78793          	add	a5,a5,-1
   105f8:	0007d863          	bgez	a5,10608 <__sfp+0x54>
   105fc:	0900006f          	j	1068c <__sfp+0xd8>
   10600:	06840413          	add	s0,s0,104
   10604:	08978463          	beq	a5,s1,1068c <__sfp+0xd8>
   10608:	00c41703          	lh	a4,12(s0)
   1060c:	fff78793          	add	a5,a5,-1
   10610:	fe0718e3          	bnez	a4,10600 <__sfp+0x4c>
   10614:	ffff07b7          	lui	a5,0xffff0
   10618:	00178793          	add	a5,a5,1 # ffff0001 <__BSS_END__+0xfffdc365>
   1061c:	00f42623          	sw	a5,12(s0)
   10620:	05840513          	add	a0,s0,88
   10624:	06042223          	sw	zero,100(s0)
   10628:	6e0000ef          	jal	10d08 <__retarget_lock_init_recursive>
   1062c:	d7418513          	add	a0,gp,-652 # 1397c <__lock___sfp_recursive_mutex>
   10630:	700000ef          	jal	10d30 <__retarget_lock_release_recursive>
   10634:	00800613          	li	a2,8
   10638:	00042023          	sw	zero,0(s0)
   1063c:	00042423          	sw	zero,8(s0)
   10640:	00042223          	sw	zero,4(s0)
   10644:	00042823          	sw	zero,16(s0)
   10648:	00042a23          	sw	zero,20(s0)
   1064c:	00042c23          	sw	zero,24(s0)
   10650:	00000593          	li	a1,0
   10654:	05c40513          	add	a0,s0,92
   10658:	6dc000ef          	jal	10d34 <memset>
   1065c:	02042823          	sw	zero,48(s0)
   10660:	02042a23          	sw	zero,52(s0)
   10664:	04042223          	sw	zero,68(s0)
   10668:	04042423          	sw	zero,72(s0)
   1066c:	01c12083          	lw	ra,28(sp)
   10670:	00040513          	mv	a0,s0
   10674:	01812403          	lw	s0,24(sp)
   10678:	01412483          	lw	s1,20(sp)
   1067c:	01012903          	lw	s2,16(sp)
   10680:	00c12983          	lw	s3,12(sp)
   10684:	02010113          	add	sp,sp,32
   10688:	00008067          	ret
   1068c:	00092403          	lw	s0,0(s2)
   10690:	00040663          	beqz	s0,1069c <__sfp+0xe8>
   10694:	00040913          	mv	s2,s0
   10698:	f55ff06f          	j	105ec <__sfp+0x38>
   1069c:	1ac00593          	li	a1,428
   106a0:	00098513          	mv	a0,s3
   106a4:	5dd000ef          	jal	11480 <_malloc_r>
   106a8:	00050413          	mv	s0,a0
   106ac:	02050c63          	beqz	a0,106e4 <__sfp+0x130>
   106b0:	00c50513          	add	a0,a0,12
   106b4:	00400793          	li	a5,4
   106b8:	00042023          	sw	zero,0(s0)
   106bc:	00f42223          	sw	a5,4(s0)
   106c0:	00a42423          	sw	a0,8(s0)
   106c4:	1a000613          	li	a2,416
   106c8:	00000593          	li	a1,0
   106cc:	668000ef          	jal	10d34 <memset>
   106d0:	00892023          	sw	s0,0(s2)
   106d4:	00040913          	mv	s2,s0
   106d8:	f15ff06f          	j	105ec <__sfp+0x38>
   106dc:	d71ff0ef          	jal	1044c <global_stdio_init.part.0>
   106e0:	f01ff06f          	j	105e0 <__sfp+0x2c>
   106e4:	00092023          	sw	zero,0(s2)
   106e8:	d7418513          	add	a0,gp,-652 # 1397c <__lock___sfp_recursive_mutex>
   106ec:	644000ef          	jal	10d30 <__retarget_lock_release_recursive>
   106f0:	00c00793          	li	a5,12
   106f4:	00f9a023          	sw	a5,0(s3)
   106f8:	f75ff06f          	j	1066c <__sfp+0xb8>

000106fc <__sinit>:
   106fc:	ff010113          	add	sp,sp,-16
   10700:	00812423          	sw	s0,8(sp)
   10704:	00050413          	mv	s0,a0
   10708:	d7418513          	add	a0,gp,-652 # 1397c <__lock___sfp_recursive_mutex>
   1070c:	00112623          	sw	ra,12(sp)
   10710:	608000ef          	jal	10d18 <__retarget_lock_acquire_recursive>
   10714:	03442783          	lw	a5,52(s0)
   10718:	00079c63          	bnez	a5,10730 <__sinit+0x34>
   1071c:	00000797          	auipc	a5,0x0
   10720:	c4c78793          	add	a5,a5,-948 # 10368 <cleanup_stdio>
   10724:	02f42a23          	sw	a5,52(s0)
   10728:	d501a783          	lw	a5,-688(gp) # 13958 <__stdio_exit_handler>
   1072c:	00078c63          	beqz	a5,10744 <__sinit+0x48>
   10730:	00812403          	lw	s0,8(sp)
   10734:	00c12083          	lw	ra,12(sp)
   10738:	d7418513          	add	a0,gp,-652 # 1397c <__lock___sfp_recursive_mutex>
   1073c:	01010113          	add	sp,sp,16
   10740:	5f00006f          	j	10d30 <__retarget_lock_release_recursive>
   10744:	d09ff0ef          	jal	1044c <global_stdio_init.part.0>
   10748:	00812403          	lw	s0,8(sp)
   1074c:	00c12083          	lw	ra,12(sp)
   10750:	d7418513          	add	a0,gp,-652 # 1397c <__lock___sfp_recursive_mutex>
   10754:	01010113          	add	sp,sp,16
   10758:	5d80006f          	j	10d30 <__retarget_lock_release_recursive>

0001075c <__sfp_lock_acquire>:
   1075c:	d7418513          	add	a0,gp,-652 # 1397c <__lock___sfp_recursive_mutex>
   10760:	5b80006f          	j	10d18 <__retarget_lock_acquire_recursive>

00010764 <__sfp_lock_release>:
   10764:	d7418513          	add	a0,gp,-652 # 1397c <__lock___sfp_recursive_mutex>
   10768:	5c80006f          	j	10d30 <__retarget_lock_release_recursive>

0001076c <__fp_lock_all>:
   1076c:	ff010113          	add	sp,sp,-16
   10770:	d7418513          	add	a0,gp,-652 # 1397c <__lock___sfp_recursive_mutex>
   10774:	00112623          	sw	ra,12(sp)
   10778:	5a0000ef          	jal	10d18 <__retarget_lock_acquire_recursive>
   1077c:	00c12083          	lw	ra,12(sp)
   10780:	00003617          	auipc	a2,0x3
   10784:	c8860613          	add	a2,a2,-888 # 13408 <__sglue>
   10788:	00000597          	auipc	a1,0x0
   1078c:	c4458593          	add	a1,a1,-956 # 103cc <__fp_lock>
   10790:	00000513          	li	a0,0
   10794:	01010113          	add	sp,sp,16
   10798:	0340006f          	j	107cc <_fwalk_sglue>

0001079c <__fp_unlock_all>:
   1079c:	ff010113          	add	sp,sp,-16
   107a0:	00003617          	auipc	a2,0x3
   107a4:	c6860613          	add	a2,a2,-920 # 13408 <__sglue>
   107a8:	00000597          	auipc	a1,0x0
   107ac:	c6458593          	add	a1,a1,-924 # 1040c <__fp_unlock>
   107b0:	00000513          	li	a0,0
   107b4:	00112623          	sw	ra,12(sp)
   107b8:	014000ef          	jal	107cc <_fwalk_sglue>
   107bc:	00c12083          	lw	ra,12(sp)
   107c0:	d7418513          	add	a0,gp,-652 # 1397c <__lock___sfp_recursive_mutex>
   107c4:	01010113          	add	sp,sp,16
   107c8:	5680006f          	j	10d30 <__retarget_lock_release_recursive>

000107cc <_fwalk_sglue>:
   107cc:	fd010113          	add	sp,sp,-48
   107d0:	03212023          	sw	s2,32(sp)
   107d4:	01312e23          	sw	s3,28(sp)
   107d8:	01412c23          	sw	s4,24(sp)
   107dc:	01512a23          	sw	s5,20(sp)
   107e0:	01612823          	sw	s6,16(sp)
   107e4:	01712623          	sw	s7,12(sp)
   107e8:	02112623          	sw	ra,44(sp)
   107ec:	02812423          	sw	s0,40(sp)
   107f0:	02912223          	sw	s1,36(sp)
   107f4:	00050b13          	mv	s6,a0
   107f8:	00058b93          	mv	s7,a1
   107fc:	00060a93          	mv	s5,a2
   10800:	00000a13          	li	s4,0
   10804:	00100993          	li	s3,1
   10808:	fff00913          	li	s2,-1
   1080c:	004aa483          	lw	s1,4(s5)
   10810:	008aa403          	lw	s0,8(s5)
   10814:	fff48493          	add	s1,s1,-1
   10818:	0204c863          	bltz	s1,10848 <_fwalk_sglue+0x7c>
   1081c:	00c45783          	lhu	a5,12(s0)
   10820:	00f9fe63          	bgeu	s3,a5,1083c <_fwalk_sglue+0x70>
   10824:	00e41783          	lh	a5,14(s0)
   10828:	00040593          	mv	a1,s0
   1082c:	000b0513          	mv	a0,s6
   10830:	01278663          	beq	a5,s2,1083c <_fwalk_sglue+0x70>
   10834:	000b80e7          	jalr	s7
   10838:	00aa6a33          	or	s4,s4,a0
   1083c:	fff48493          	add	s1,s1,-1
   10840:	06840413          	add	s0,s0,104
   10844:	fd249ce3          	bne	s1,s2,1081c <_fwalk_sglue+0x50>
   10848:	000aaa83          	lw	s5,0(s5)
   1084c:	fc0a90e3          	bnez	s5,1080c <_fwalk_sglue+0x40>
   10850:	02c12083          	lw	ra,44(sp)
   10854:	02812403          	lw	s0,40(sp)
   10858:	02412483          	lw	s1,36(sp)
   1085c:	02012903          	lw	s2,32(sp)
   10860:	01c12983          	lw	s3,28(sp)
   10864:	01412a83          	lw	s5,20(sp)
   10868:	01012b03          	lw	s6,16(sp)
   1086c:	00c12b83          	lw	s7,12(sp)
   10870:	000a0513          	mv	a0,s4
   10874:	01812a03          	lw	s4,24(sp)
   10878:	03010113          	add	sp,sp,48
   1087c:	00008067          	ret

00010880 <__sread>:
   10880:	ff010113          	add	sp,sp,-16
   10884:	00812423          	sw	s0,8(sp)
   10888:	00058413          	mv	s0,a1
   1088c:	00e59583          	lh	a1,14(a1)
   10890:	00112623          	sw	ra,12(sp)
   10894:	2c8000ef          	jal	10b5c <_read_r>
   10898:	02054063          	bltz	a0,108b8 <__sread+0x38>
   1089c:	05042783          	lw	a5,80(s0)
   108a0:	00c12083          	lw	ra,12(sp)
   108a4:	00a787b3          	add	a5,a5,a0
   108a8:	04f42823          	sw	a5,80(s0)
   108ac:	00812403          	lw	s0,8(sp)
   108b0:	01010113          	add	sp,sp,16
   108b4:	00008067          	ret
   108b8:	00c45783          	lhu	a5,12(s0)
   108bc:	fffff737          	lui	a4,0xfffff
   108c0:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb363>
   108c4:	00e7f7b3          	and	a5,a5,a4
   108c8:	00c12083          	lw	ra,12(sp)
   108cc:	00f41623          	sh	a5,12(s0)
   108d0:	00812403          	lw	s0,8(sp)
   108d4:	01010113          	add	sp,sp,16
   108d8:	00008067          	ret

000108dc <__seofread>:
   108dc:	00000513          	li	a0,0
   108e0:	00008067          	ret

000108e4 <__swrite>:
   108e4:	00c59783          	lh	a5,12(a1)
   108e8:	fe010113          	add	sp,sp,-32
   108ec:	00812c23          	sw	s0,24(sp)
   108f0:	00912a23          	sw	s1,20(sp)
   108f4:	01212823          	sw	s2,16(sp)
   108f8:	01312623          	sw	s3,12(sp)
   108fc:	00112e23          	sw	ra,28(sp)
   10900:	1007f713          	and	a4,a5,256
   10904:	00058413          	mv	s0,a1
   10908:	00050493          	mv	s1,a0
   1090c:	00060913          	mv	s2,a2
   10910:	00068993          	mv	s3,a3
   10914:	04071063          	bnez	a4,10954 <__swrite+0x70>
   10918:	fffff737          	lui	a4,0xfffff
   1091c:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb363>
   10920:	00e7f7b3          	and	a5,a5,a4
   10924:	00e41583          	lh	a1,14(s0)
   10928:	00f41623          	sh	a5,12(s0)
   1092c:	01812403          	lw	s0,24(sp)
   10930:	01c12083          	lw	ra,28(sp)
   10934:	00098693          	mv	a3,s3
   10938:	00090613          	mv	a2,s2
   1093c:	00c12983          	lw	s3,12(sp)
   10940:	01012903          	lw	s2,16(sp)
   10944:	00048513          	mv	a0,s1
   10948:	01412483          	lw	s1,20(sp)
   1094c:	02010113          	add	sp,sp,32
   10950:	2680006f          	j	10bb8 <_write_r>
   10954:	00e59583          	lh	a1,14(a1)
   10958:	00200693          	li	a3,2
   1095c:	00000613          	li	a2,0
   10960:	1a0000ef          	jal	10b00 <_lseek_r>
   10964:	00c41783          	lh	a5,12(s0)
   10968:	fb1ff06f          	j	10918 <__swrite+0x34>

0001096c <__sseek>:
   1096c:	ff010113          	add	sp,sp,-16
   10970:	00812423          	sw	s0,8(sp)
   10974:	00058413          	mv	s0,a1
   10978:	00e59583          	lh	a1,14(a1)
   1097c:	00112623          	sw	ra,12(sp)
   10980:	180000ef          	jal	10b00 <_lseek_r>
   10984:	fff00793          	li	a5,-1
   10988:	02f50863          	beq	a0,a5,109b8 <__sseek+0x4c>
   1098c:	00c45783          	lhu	a5,12(s0)
   10990:	00001737          	lui	a4,0x1
   10994:	00c12083          	lw	ra,12(sp)
   10998:	00e7e7b3          	or	a5,a5,a4
   1099c:	01079793          	sll	a5,a5,0x10
   109a0:	4107d793          	sra	a5,a5,0x10
   109a4:	04a42823          	sw	a0,80(s0)
   109a8:	00f41623          	sh	a5,12(s0)
   109ac:	00812403          	lw	s0,8(sp)
   109b0:	01010113          	add	sp,sp,16
   109b4:	00008067          	ret
   109b8:	00c45783          	lhu	a5,12(s0)
   109bc:	fffff737          	lui	a4,0xfffff
   109c0:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffeb363>
   109c4:	00e7f7b3          	and	a5,a5,a4
   109c8:	01079793          	sll	a5,a5,0x10
   109cc:	4107d793          	sra	a5,a5,0x10
   109d0:	00c12083          	lw	ra,12(sp)
   109d4:	00f41623          	sh	a5,12(s0)
   109d8:	00812403          	lw	s0,8(sp)
   109dc:	01010113          	add	sp,sp,16
   109e0:	00008067          	ret

000109e4 <__sclose>:
   109e4:	00e59583          	lh	a1,14(a1)
   109e8:	0040006f          	j	109ec <_close_r>

000109ec <_close_r>:
   109ec:	ff010113          	add	sp,sp,-16
   109f0:	00812423          	sw	s0,8(sp)
   109f4:	00050413          	mv	s0,a0
   109f8:	00058513          	mv	a0,a1
   109fc:	d401aa23          	sw	zero,-684(gp) # 1395c <errno>
   10a00:	00112623          	sw	ra,12(sp)
   10a04:	01d010ef          	jal	12220 <_close>
   10a08:	fff00793          	li	a5,-1
   10a0c:	00f50a63          	beq	a0,a5,10a20 <_close_r+0x34>
   10a10:	00c12083          	lw	ra,12(sp)
   10a14:	00812403          	lw	s0,8(sp)
   10a18:	01010113          	add	sp,sp,16
   10a1c:	00008067          	ret
   10a20:	d541a783          	lw	a5,-684(gp) # 1395c <errno>
   10a24:	fe0786e3          	beqz	a5,10a10 <_close_r+0x24>
   10a28:	00c12083          	lw	ra,12(sp)
   10a2c:	00f42023          	sw	a5,0(s0)
   10a30:	00812403          	lw	s0,8(sp)
   10a34:	01010113          	add	sp,sp,16
   10a38:	00008067          	ret

00010a3c <_reclaim_reent>:
   10a3c:	d3c1a783          	lw	a5,-708(gp) # 13944 <_impure_ptr>
   10a40:	0aa78e63          	beq	a5,a0,10afc <_reclaim_reent+0xc0>
   10a44:	04452583          	lw	a1,68(a0)
   10a48:	fe010113          	add	sp,sp,-32
   10a4c:	00912a23          	sw	s1,20(sp)
   10a50:	00112e23          	sw	ra,28(sp)
   10a54:	00050493          	mv	s1,a0
   10a58:	04058c63          	beqz	a1,10ab0 <_reclaim_reent+0x74>
   10a5c:	01212823          	sw	s2,16(sp)
   10a60:	01312623          	sw	s3,12(sp)
   10a64:	00812c23          	sw	s0,24(sp)
   10a68:	00000913          	li	s2,0
   10a6c:	08000993          	li	s3,128
   10a70:	012587b3          	add	a5,a1,s2
   10a74:	0007a403          	lw	s0,0(a5)
   10a78:	00040e63          	beqz	s0,10a94 <_reclaim_reent+0x58>
   10a7c:	00040593          	mv	a1,s0
   10a80:	00042403          	lw	s0,0(s0)
   10a84:	00048513          	mv	a0,s1
   10a88:	6f4000ef          	jal	1117c <_free_r>
   10a8c:	fe0418e3          	bnez	s0,10a7c <_reclaim_reent+0x40>
   10a90:	0444a583          	lw	a1,68(s1)
   10a94:	00490913          	add	s2,s2,4
   10a98:	fd391ce3          	bne	s2,s3,10a70 <_reclaim_reent+0x34>
   10a9c:	00048513          	mv	a0,s1
   10aa0:	6dc000ef          	jal	1117c <_free_r>
   10aa4:	01812403          	lw	s0,24(sp)
   10aa8:	01012903          	lw	s2,16(sp)
   10aac:	00c12983          	lw	s3,12(sp)
   10ab0:	0384a583          	lw	a1,56(s1)
   10ab4:	00058663          	beqz	a1,10ac0 <_reclaim_reent+0x84>
   10ab8:	00048513          	mv	a0,s1
   10abc:	6c0000ef          	jal	1117c <_free_r>
   10ac0:	04c4a583          	lw	a1,76(s1)
   10ac4:	00058663          	beqz	a1,10ad0 <_reclaim_reent+0x94>
   10ac8:	00048513          	mv	a0,s1
   10acc:	6b0000ef          	jal	1117c <_free_r>
   10ad0:	0344a783          	lw	a5,52(s1)
   10ad4:	00078c63          	beqz	a5,10aec <_reclaim_reent+0xb0>
   10ad8:	01c12083          	lw	ra,28(sp)
   10adc:	00048513          	mv	a0,s1
   10ae0:	01412483          	lw	s1,20(sp)
   10ae4:	02010113          	add	sp,sp,32
   10ae8:	00078067          	jr	a5
   10aec:	01c12083          	lw	ra,28(sp)
   10af0:	01412483          	lw	s1,20(sp)
   10af4:	02010113          	add	sp,sp,32
   10af8:	00008067          	ret
   10afc:	00008067          	ret

00010b00 <_lseek_r>:
   10b00:	ff010113          	add	sp,sp,-16
   10b04:	00058713          	mv	a4,a1
   10b08:	00812423          	sw	s0,8(sp)
   10b0c:	00060593          	mv	a1,a2
   10b10:	00050413          	mv	s0,a0
   10b14:	00068613          	mv	a2,a3
   10b18:	00070513          	mv	a0,a4
   10b1c:	d401aa23          	sw	zero,-684(gp) # 1395c <errno>
   10b20:	00112623          	sw	ra,12(sp)
   10b24:	770010ef          	jal	12294 <_lseek>
   10b28:	fff00793          	li	a5,-1
   10b2c:	00f50a63          	beq	a0,a5,10b40 <_lseek_r+0x40>
   10b30:	00c12083          	lw	ra,12(sp)
   10b34:	00812403          	lw	s0,8(sp)
   10b38:	01010113          	add	sp,sp,16
   10b3c:	00008067          	ret
   10b40:	d541a783          	lw	a5,-684(gp) # 1395c <errno>
   10b44:	fe0786e3          	beqz	a5,10b30 <_lseek_r+0x30>
   10b48:	00c12083          	lw	ra,12(sp)
   10b4c:	00f42023          	sw	a5,0(s0)
   10b50:	00812403          	lw	s0,8(sp)
   10b54:	01010113          	add	sp,sp,16
   10b58:	00008067          	ret

00010b5c <_read_r>:
   10b5c:	ff010113          	add	sp,sp,-16
   10b60:	00058713          	mv	a4,a1
   10b64:	00812423          	sw	s0,8(sp)
   10b68:	00060593          	mv	a1,a2
   10b6c:	00050413          	mv	s0,a0
   10b70:	00068613          	mv	a2,a3
   10b74:	00070513          	mv	a0,a4
   10b78:	d401aa23          	sw	zero,-684(gp) # 1395c <errno>
   10b7c:	00112623          	sw	ra,12(sp)
   10b80:	758010ef          	jal	122d8 <_read>
   10b84:	fff00793          	li	a5,-1
   10b88:	00f50a63          	beq	a0,a5,10b9c <_read_r+0x40>
   10b8c:	00c12083          	lw	ra,12(sp)
   10b90:	00812403          	lw	s0,8(sp)
   10b94:	01010113          	add	sp,sp,16
   10b98:	00008067          	ret
   10b9c:	d541a783          	lw	a5,-684(gp) # 1395c <errno>
   10ba0:	fe0786e3          	beqz	a5,10b8c <_read_r+0x30>
   10ba4:	00c12083          	lw	ra,12(sp)
   10ba8:	00f42023          	sw	a5,0(s0)
   10bac:	00812403          	lw	s0,8(sp)
   10bb0:	01010113          	add	sp,sp,16
   10bb4:	00008067          	ret

00010bb8 <_write_r>:
   10bb8:	ff010113          	add	sp,sp,-16
   10bbc:	00058713          	mv	a4,a1
   10bc0:	00812423          	sw	s0,8(sp)
   10bc4:	00060593          	mv	a1,a2
   10bc8:	00050413          	mv	s0,a0
   10bcc:	00068613          	mv	a2,a3
   10bd0:	00070513          	mv	a0,a4
   10bd4:	d401aa23          	sw	zero,-684(gp) # 1395c <errno>
   10bd8:	00112623          	sw	ra,12(sp)
   10bdc:	7bc010ef          	jal	12398 <_write>
   10be0:	fff00793          	li	a5,-1
   10be4:	00f50a63          	beq	a0,a5,10bf8 <_write_r+0x40>
   10be8:	00c12083          	lw	ra,12(sp)
   10bec:	00812403          	lw	s0,8(sp)
   10bf0:	01010113          	add	sp,sp,16
   10bf4:	00008067          	ret
   10bf8:	d541a783          	lw	a5,-684(gp) # 1395c <errno>
   10bfc:	fe0786e3          	beqz	a5,10be8 <_write_r+0x30>
   10c00:	00c12083          	lw	ra,12(sp)
   10c04:	00f42023          	sw	a5,0(s0)
   10c08:	00812403          	lw	s0,8(sp)
   10c0c:	01010113          	add	sp,sp,16
   10c10:	00008067          	ret

00010c14 <__libc_init_array>:
   10c14:	ff010113          	add	sp,sp,-16
   10c18:	00812423          	sw	s0,8(sp)
   10c1c:	01212023          	sw	s2,0(sp)
   10c20:	00002797          	auipc	a5,0x2
   10c24:	7dc78793          	add	a5,a5,2012 # 133fc <__init_array_start>
   10c28:	00002417          	auipc	s0,0x2
   10c2c:	7d440413          	add	s0,s0,2004 # 133fc <__init_array_start>
   10c30:	00112623          	sw	ra,12(sp)
   10c34:	00912223          	sw	s1,4(sp)
   10c38:	40878933          	sub	s2,a5,s0
   10c3c:	02878063          	beq	a5,s0,10c5c <__libc_init_array+0x48>
   10c40:	40295913          	sra	s2,s2,0x2
   10c44:	00000493          	li	s1,0
   10c48:	00042783          	lw	a5,0(s0)
   10c4c:	00148493          	add	s1,s1,1
   10c50:	00440413          	add	s0,s0,4
   10c54:	000780e7          	jalr	a5
   10c58:	ff24e8e3          	bltu	s1,s2,10c48 <__libc_init_array+0x34>
   10c5c:	00002797          	auipc	a5,0x2
   10c60:	7a878793          	add	a5,a5,1960 # 13404 <__do_global_dtors_aux_fini_array_entry>
   10c64:	00002417          	auipc	s0,0x2
   10c68:	79840413          	add	s0,s0,1944 # 133fc <__init_array_start>
   10c6c:	40878933          	sub	s2,a5,s0
   10c70:	40295913          	sra	s2,s2,0x2
   10c74:	00878e63          	beq	a5,s0,10c90 <__libc_init_array+0x7c>
   10c78:	00000493          	li	s1,0
   10c7c:	00042783          	lw	a5,0(s0)
   10c80:	00148493          	add	s1,s1,1
   10c84:	00440413          	add	s0,s0,4
   10c88:	000780e7          	jalr	a5
   10c8c:	ff24e8e3          	bltu	s1,s2,10c7c <__libc_init_array+0x68>
   10c90:	00c12083          	lw	ra,12(sp)
   10c94:	00812403          	lw	s0,8(sp)
   10c98:	00412483          	lw	s1,4(sp)
   10c9c:	00012903          	lw	s2,0(sp)
   10ca0:	01010113          	add	sp,sp,16
   10ca4:	00008067          	ret

00010ca8 <__libc_fini_array>:
   10ca8:	ff010113          	add	sp,sp,-16
   10cac:	00812423          	sw	s0,8(sp)
   10cb0:	00002797          	auipc	a5,0x2
   10cb4:	75478793          	add	a5,a5,1876 # 13404 <__do_global_dtors_aux_fini_array_entry>
   10cb8:	00002417          	auipc	s0,0x2
   10cbc:	75040413          	add	s0,s0,1872 # 13408 <__sglue>
   10cc0:	40f40433          	sub	s0,s0,a5
   10cc4:	00912223          	sw	s1,4(sp)
   10cc8:	00112623          	sw	ra,12(sp)
   10ccc:	40245493          	sra	s1,s0,0x2
   10cd0:	02048063          	beqz	s1,10cf0 <__libc_fini_array+0x48>
   10cd4:	ffc40413          	add	s0,s0,-4
   10cd8:	00f40433          	add	s0,s0,a5
   10cdc:	00042783          	lw	a5,0(s0)
   10ce0:	fff48493          	add	s1,s1,-1
   10ce4:	ffc40413          	add	s0,s0,-4
   10ce8:	000780e7          	jalr	a5
   10cec:	fe0498e3          	bnez	s1,10cdc <__libc_fini_array+0x34>
   10cf0:	00c12083          	lw	ra,12(sp)
   10cf4:	00812403          	lw	s0,8(sp)
   10cf8:	00412483          	lw	s1,4(sp)
   10cfc:	01010113          	add	sp,sp,16
   10d00:	00008067          	ret

00010d04 <__retarget_lock_init>:
   10d04:	00008067          	ret

00010d08 <__retarget_lock_init_recursive>:
   10d08:	00008067          	ret

00010d0c <__retarget_lock_close>:
   10d0c:	00008067          	ret

00010d10 <__retarget_lock_close_recursive>:
   10d10:	00008067          	ret

00010d14 <__retarget_lock_acquire>:
   10d14:	00008067          	ret

00010d18 <__retarget_lock_acquire_recursive>:
   10d18:	00008067          	ret

00010d1c <__retarget_lock_try_acquire>:
   10d1c:	00100513          	li	a0,1
   10d20:	00008067          	ret

00010d24 <__retarget_lock_try_acquire_recursive>:
   10d24:	00100513          	li	a0,1
   10d28:	00008067          	ret

00010d2c <__retarget_lock_release>:
   10d2c:	00008067          	ret

00010d30 <__retarget_lock_release_recursive>:
   10d30:	00008067          	ret

00010d34 <memset>:
   10d34:	00f00313          	li	t1,15
   10d38:	00050713          	mv	a4,a0
   10d3c:	02c37e63          	bgeu	t1,a2,10d78 <memset+0x44>
   10d40:	00f77793          	and	a5,a4,15
   10d44:	0a079063          	bnez	a5,10de4 <memset+0xb0>
   10d48:	08059263          	bnez	a1,10dcc <memset+0x98>
   10d4c:	ff067693          	and	a3,a2,-16
   10d50:	00f67613          	and	a2,a2,15
   10d54:	00e686b3          	add	a3,a3,a4
   10d58:	00b72023          	sw	a1,0(a4)
   10d5c:	00b72223          	sw	a1,4(a4)
   10d60:	00b72423          	sw	a1,8(a4)
   10d64:	00b72623          	sw	a1,12(a4)
   10d68:	01070713          	add	a4,a4,16
   10d6c:	fed766e3          	bltu	a4,a3,10d58 <memset+0x24>
   10d70:	00061463          	bnez	a2,10d78 <memset+0x44>
   10d74:	00008067          	ret
   10d78:	40c306b3          	sub	a3,t1,a2
   10d7c:	00269693          	sll	a3,a3,0x2
   10d80:	00000297          	auipc	t0,0x0
   10d84:	005686b3          	add	a3,a3,t0
   10d88:	00c68067          	jr	12(a3)
   10d8c:	00b70723          	sb	a1,14(a4)
   10d90:	00b706a3          	sb	a1,13(a4)
   10d94:	00b70623          	sb	a1,12(a4)
   10d98:	00b705a3          	sb	a1,11(a4)
   10d9c:	00b70523          	sb	a1,10(a4)
   10da0:	00b704a3          	sb	a1,9(a4)
   10da4:	00b70423          	sb	a1,8(a4)
   10da8:	00b703a3          	sb	a1,7(a4)
   10dac:	00b70323          	sb	a1,6(a4)
   10db0:	00b702a3          	sb	a1,5(a4)
   10db4:	00b70223          	sb	a1,4(a4)
   10db8:	00b701a3          	sb	a1,3(a4)
   10dbc:	00b70123          	sb	a1,2(a4)
   10dc0:	00b700a3          	sb	a1,1(a4)
   10dc4:	00b70023          	sb	a1,0(a4)
   10dc8:	00008067          	ret
   10dcc:	0ff5f593          	zext.b	a1,a1
   10dd0:	00859693          	sll	a3,a1,0x8
   10dd4:	00d5e5b3          	or	a1,a1,a3
   10dd8:	01059693          	sll	a3,a1,0x10
   10ddc:	00d5e5b3          	or	a1,a1,a3
   10de0:	f6dff06f          	j	10d4c <memset+0x18>
   10de4:	00279693          	sll	a3,a5,0x2
   10de8:	00000297          	auipc	t0,0x0
   10dec:	005686b3          	add	a3,a3,t0
   10df0:	00008293          	mv	t0,ra
   10df4:	fa0680e7          	jalr	-96(a3)
   10df8:	00028093          	mv	ra,t0
   10dfc:	ff078793          	add	a5,a5,-16
   10e00:	40f70733          	sub	a4,a4,a5
   10e04:	00f60633          	add	a2,a2,a5
   10e08:	f6c378e3          	bgeu	t1,a2,10d78 <memset+0x44>
   10e0c:	f3dff06f          	j	10d48 <memset+0x14>

00010e10 <__register_exitproc>:
   10e10:	fe010113          	add	sp,sp,-32
   10e14:	01212823          	sw	s2,16(sp)
   10e18:	d4018913          	add	s2,gp,-704 # 13948 <__atexit_recursive_mutex>
   10e1c:	00812c23          	sw	s0,24(sp)
   10e20:	00050413          	mv	s0,a0
   10e24:	00092503          	lw	a0,0(s2)
   10e28:	00912a23          	sw	s1,20(sp)
   10e2c:	01312623          	sw	s3,12(sp)
   10e30:	01412423          	sw	s4,8(sp)
   10e34:	00112e23          	sw	ra,28(sp)
   10e38:	00058493          	mv	s1,a1
   10e3c:	00060a13          	mv	s4,a2
   10e40:	00068993          	mv	s3,a3
   10e44:	ed5ff0ef          	jal	10d18 <__retarget_lock_acquire_recursive>
   10e48:	d7818713          	add	a4,gp,-648 # 13980 <__atexit>
   10e4c:	00072783          	lw	a5,0(a4)
   10e50:	08078663          	beqz	a5,10edc <__register_exitproc+0xcc>
   10e54:	0047a703          	lw	a4,4(a5)
   10e58:	01f00593          	li	a1,31
   10e5c:	00092503          	lw	a0,0(s2)
   10e60:	08e5c463          	blt	a1,a4,10ee8 <__register_exitproc+0xd8>
   10e64:	00271593          	sll	a1,a4,0x2
   10e68:	02041e63          	bnez	s0,10ea4 <__register_exitproc+0x94>
   10e6c:	00170713          	add	a4,a4,1
   10e70:	00e7a223          	sw	a4,4(a5)
   10e74:	00b787b3          	add	a5,a5,a1
   10e78:	0097a423          	sw	s1,8(a5)
   10e7c:	eb5ff0ef          	jal	10d30 <__retarget_lock_release_recursive>
   10e80:	00000513          	li	a0,0
   10e84:	01c12083          	lw	ra,28(sp)
   10e88:	01812403          	lw	s0,24(sp)
   10e8c:	01412483          	lw	s1,20(sp)
   10e90:	01012903          	lw	s2,16(sp)
   10e94:	00c12983          	lw	s3,12(sp)
   10e98:	00812a03          	lw	s4,8(sp)
   10e9c:	02010113          	add	sp,sp,32
   10ea0:	00008067          	ret
   10ea4:	00b78833          	add	a6,a5,a1
   10ea8:	09482423          	sw	s4,136(a6)
   10eac:	1887a683          	lw	a3,392(a5)
   10eb0:	00100613          	li	a2,1
   10eb4:	00e61633          	sll	a2,a2,a4
   10eb8:	00c6e6b3          	or	a3,a3,a2
   10ebc:	18d7a423          	sw	a3,392(a5)
   10ec0:	11382423          	sw	s3,264(a6)
   10ec4:	00200693          	li	a3,2
   10ec8:	fad412e3          	bne	s0,a3,10e6c <__register_exitproc+0x5c>
   10ecc:	18c7a683          	lw	a3,396(a5)
   10ed0:	00c6e6b3          	or	a3,a3,a2
   10ed4:	18d7a623          	sw	a3,396(a5)
   10ed8:	f95ff06f          	j	10e6c <__register_exitproc+0x5c>
   10edc:	edc18793          	add	a5,gp,-292 # 13ae4 <__atexit0>
   10ee0:	00f72023          	sw	a5,0(a4)
   10ee4:	f71ff06f          	j	10e54 <__register_exitproc+0x44>
   10ee8:	e49ff0ef          	jal	10d30 <__retarget_lock_release_recursive>
   10eec:	fff00513          	li	a0,-1
   10ef0:	f95ff06f          	j	10e84 <__register_exitproc+0x74>

00010ef4 <__call_exitprocs>:
   10ef4:	fd010113          	add	sp,sp,-48
   10ef8:	01712623          	sw	s7,12(sp)
   10efc:	d4018b93          	add	s7,gp,-704 # 13948 <__atexit_recursive_mutex>
   10f00:	01612823          	sw	s6,16(sp)
   10f04:	00050b13          	mv	s6,a0
   10f08:	000ba503          	lw	a0,0(s7)
   10f0c:	01412c23          	sw	s4,24(sp)
   10f10:	d7818a13          	add	s4,gp,-648 # 13980 <__atexit>
   10f14:	03212023          	sw	s2,32(sp)
   10f18:	01812423          	sw	s8,8(sp)
   10f1c:	02112623          	sw	ra,44(sp)
   10f20:	00058c13          	mv	s8,a1
   10f24:	df5ff0ef          	jal	10d18 <__retarget_lock_acquire_recursive>
   10f28:	000a2903          	lw	s2,0(s4)
   10f2c:	08090c63          	beqz	s2,10fc4 <__call_exitprocs+0xd0>
   10f30:	01312e23          	sw	s3,28(sp)
   10f34:	01512a23          	sw	s5,20(sp)
   10f38:	02812423          	sw	s0,40(sp)
   10f3c:	02912223          	sw	s1,36(sp)
   10f40:	01912223          	sw	s9,4(sp)
   10f44:	fff00993          	li	s3,-1
   10f48:	00100a93          	li	s5,1
   10f4c:	00492483          	lw	s1,4(s2)
   10f50:	fff48413          	add	s0,s1,-1
   10f54:	04044e63          	bltz	s0,10fb0 <__call_exitprocs+0xbc>
   10f58:	00249493          	sll	s1,s1,0x2
   10f5c:	009904b3          	add	s1,s2,s1
   10f60:	080c1463          	bnez	s8,10fe8 <__call_exitprocs+0xf4>
   10f64:	00492783          	lw	a5,4(s2)
   10f68:	0044a683          	lw	a3,4(s1)
   10f6c:	fff78793          	add	a5,a5,-1
   10f70:	0c878063          	beq	a5,s0,11030 <__call_exitprocs+0x13c>
   10f74:	0004a223          	sw	zero,4(s1)
   10f78:	02068663          	beqz	a3,10fa4 <__call_exitprocs+0xb0>
   10f7c:	18892783          	lw	a5,392(s2)
   10f80:	008a9733          	sll	a4,s5,s0
   10f84:	00492c83          	lw	s9,4(s2)
   10f88:	00f777b3          	and	a5,a4,a5
   10f8c:	06079a63          	bnez	a5,11000 <__call_exitprocs+0x10c>
   10f90:	000680e7          	jalr	a3
   10f94:	00492703          	lw	a4,4(s2)
   10f98:	000a2783          	lw	a5,0(s4)
   10f9c:	09971463          	bne	a4,s9,11024 <__call_exitprocs+0x130>
   10fa0:	09279263          	bne	a5,s2,11024 <__call_exitprocs+0x130>
   10fa4:	fff40413          	add	s0,s0,-1
   10fa8:	ffc48493          	add	s1,s1,-4
   10fac:	fb341ae3          	bne	s0,s3,10f60 <__call_exitprocs+0x6c>
   10fb0:	02812403          	lw	s0,40(sp)
   10fb4:	02412483          	lw	s1,36(sp)
   10fb8:	01c12983          	lw	s3,28(sp)
   10fbc:	01412a83          	lw	s5,20(sp)
   10fc0:	00412c83          	lw	s9,4(sp)
   10fc4:	000ba503          	lw	a0,0(s7)
   10fc8:	02c12083          	lw	ra,44(sp)
   10fcc:	02012903          	lw	s2,32(sp)
   10fd0:	01812a03          	lw	s4,24(sp)
   10fd4:	01012b03          	lw	s6,16(sp)
   10fd8:	00c12b83          	lw	s7,12(sp)
   10fdc:	00812c03          	lw	s8,8(sp)
   10fe0:	03010113          	add	sp,sp,48
   10fe4:	d4dff06f          	j	10d30 <__retarget_lock_release_recursive>
   10fe8:	1044a783          	lw	a5,260(s1)
   10fec:	f7878ce3          	beq	a5,s8,10f64 <__call_exitprocs+0x70>
   10ff0:	fff40413          	add	s0,s0,-1
   10ff4:	ffc48493          	add	s1,s1,-4
   10ff8:	ff3418e3          	bne	s0,s3,10fe8 <__call_exitprocs+0xf4>
   10ffc:	fb5ff06f          	j	10fb0 <__call_exitprocs+0xbc>
   11000:	18c92783          	lw	a5,396(s2)
   11004:	0844a583          	lw	a1,132(s1)
   11008:	00f77733          	and	a4,a4,a5
   1100c:	02071663          	bnez	a4,11038 <__call_exitprocs+0x144>
   11010:	000b0513          	mv	a0,s6
   11014:	000680e7          	jalr	a3
   11018:	00492703          	lw	a4,4(s2)
   1101c:	000a2783          	lw	a5,0(s4)
   11020:	f99700e3          	beq	a4,s9,10fa0 <__call_exitprocs+0xac>
   11024:	f80786e3          	beqz	a5,10fb0 <__call_exitprocs+0xbc>
   11028:	00078913          	mv	s2,a5
   1102c:	f21ff06f          	j	10f4c <__call_exitprocs+0x58>
   11030:	00892223          	sw	s0,4(s2)
   11034:	f45ff06f          	j	10f78 <__call_exitprocs+0x84>
   11038:	00058513          	mv	a0,a1
   1103c:	000680e7          	jalr	a3
   11040:	f55ff06f          	j	10f94 <__call_exitprocs+0xa0>

00011044 <_malloc_trim_r>:
   11044:	fe010113          	add	sp,sp,-32
   11048:	00812c23          	sw	s0,24(sp)
   1104c:	00912a23          	sw	s1,20(sp)
   11050:	01212823          	sw	s2,16(sp)
   11054:	01312623          	sw	s3,12(sp)
   11058:	01412423          	sw	s4,8(sp)
   1105c:	00058993          	mv	s3,a1
   11060:	00112e23          	sw	ra,28(sp)
   11064:	00050913          	mv	s2,a0
   11068:	00002a17          	auipc	s4,0x2
   1106c:	4d0a0a13          	add	s4,s4,1232 # 13538 <__malloc_av_>
   11070:	3d9000ef          	jal	11c48 <__malloc_lock>
   11074:	008a2703          	lw	a4,8(s4)
   11078:	000017b7          	lui	a5,0x1
   1107c:	fef78793          	add	a5,a5,-17 # fef <exit-0xf0a5>
   11080:	00472483          	lw	s1,4(a4)
   11084:	00001737          	lui	a4,0x1
   11088:	ffc4f493          	and	s1,s1,-4
   1108c:	00f48433          	add	s0,s1,a5
   11090:	41340433          	sub	s0,s0,s3
   11094:	00c45413          	srl	s0,s0,0xc
   11098:	fff40413          	add	s0,s0,-1
   1109c:	00c41413          	sll	s0,s0,0xc
   110a0:	00e44e63          	blt	s0,a4,110bc <_malloc_trim_r+0x78>
   110a4:	00000593          	li	a1,0
   110a8:	00090513          	mv	a0,s2
   110ac:	124010ef          	jal	121d0 <_sbrk_r>
   110b0:	008a2783          	lw	a5,8(s4)
   110b4:	009787b3          	add	a5,a5,s1
   110b8:	02f50863          	beq	a0,a5,110e8 <_malloc_trim_r+0xa4>
   110bc:	00090513          	mv	a0,s2
   110c0:	391000ef          	jal	11c50 <__malloc_unlock>
   110c4:	01c12083          	lw	ra,28(sp)
   110c8:	01812403          	lw	s0,24(sp)
   110cc:	01412483          	lw	s1,20(sp)
   110d0:	01012903          	lw	s2,16(sp)
   110d4:	00c12983          	lw	s3,12(sp)
   110d8:	00812a03          	lw	s4,8(sp)
   110dc:	00000513          	li	a0,0
   110e0:	02010113          	add	sp,sp,32
   110e4:	00008067          	ret
   110e8:	408005b3          	neg	a1,s0
   110ec:	00090513          	mv	a0,s2
   110f0:	0e0010ef          	jal	121d0 <_sbrk_r>
   110f4:	fff00793          	li	a5,-1
   110f8:	04f50863          	beq	a0,a5,11148 <_malloc_trim_r+0x104>
   110fc:	06c18713          	add	a4,gp,108 # 13c74 <__malloc_current_mallinfo>
   11100:	00072783          	lw	a5,0(a4) # 1000 <exit-0xf094>
   11104:	008a2683          	lw	a3,8(s4)
   11108:	408484b3          	sub	s1,s1,s0
   1110c:	0014e493          	or	s1,s1,1
   11110:	408787b3          	sub	a5,a5,s0
   11114:	00090513          	mv	a0,s2
   11118:	0096a223          	sw	s1,4(a3)
   1111c:	00f72023          	sw	a5,0(a4)
   11120:	331000ef          	jal	11c50 <__malloc_unlock>
   11124:	01c12083          	lw	ra,28(sp)
   11128:	01812403          	lw	s0,24(sp)
   1112c:	01412483          	lw	s1,20(sp)
   11130:	01012903          	lw	s2,16(sp)
   11134:	00c12983          	lw	s3,12(sp)
   11138:	00812a03          	lw	s4,8(sp)
   1113c:	00100513          	li	a0,1
   11140:	02010113          	add	sp,sp,32
   11144:	00008067          	ret
   11148:	00000593          	li	a1,0
   1114c:	00090513          	mv	a0,s2
   11150:	080010ef          	jal	121d0 <_sbrk_r>
   11154:	008a2703          	lw	a4,8(s4)
   11158:	00f00693          	li	a3,15
   1115c:	40e507b3          	sub	a5,a0,a4
   11160:	f4f6dee3          	bge	a3,a5,110bc <_malloc_trim_r+0x78>
   11164:	d441a683          	lw	a3,-700(gp) # 1394c <__malloc_sbrk_base>
   11168:	40d50533          	sub	a0,a0,a3
   1116c:	0017e793          	or	a5,a5,1
   11170:	06a1a623          	sw	a0,108(gp) # 13c74 <__malloc_current_mallinfo>
   11174:	00f72223          	sw	a5,4(a4)
   11178:	f45ff06f          	j	110bc <_malloc_trim_r+0x78>

0001117c <_free_r>:
   1117c:	18058263          	beqz	a1,11300 <_free_r+0x184>
   11180:	ff010113          	add	sp,sp,-16
   11184:	00812423          	sw	s0,8(sp)
   11188:	00912223          	sw	s1,4(sp)
   1118c:	00058413          	mv	s0,a1
   11190:	00050493          	mv	s1,a0
   11194:	00112623          	sw	ra,12(sp)
   11198:	2b1000ef          	jal	11c48 <__malloc_lock>
   1119c:	ffc42583          	lw	a1,-4(s0)
   111a0:	ff840713          	add	a4,s0,-8
   111a4:	00002517          	auipc	a0,0x2
   111a8:	39450513          	add	a0,a0,916 # 13538 <__malloc_av_>
   111ac:	ffe5f793          	and	a5,a1,-2
   111b0:	00f70633          	add	a2,a4,a5
   111b4:	00462683          	lw	a3,4(a2)
   111b8:	00852803          	lw	a6,8(a0)
   111bc:	ffc6f693          	and	a3,a3,-4
   111c0:	1ac80263          	beq	a6,a2,11364 <_free_r+0x1e8>
   111c4:	00d62223          	sw	a3,4(a2)
   111c8:	0015f593          	and	a1,a1,1
   111cc:	00d60833          	add	a6,a2,a3
   111d0:	0a059063          	bnez	a1,11270 <_free_r+0xf4>
   111d4:	ff842303          	lw	t1,-8(s0)
   111d8:	00482583          	lw	a1,4(a6)
   111dc:	00002897          	auipc	a7,0x2
   111e0:	36488893          	add	a7,a7,868 # 13540 <__malloc_av_+0x8>
   111e4:	40670733          	sub	a4,a4,t1
   111e8:	00872803          	lw	a6,8(a4)
   111ec:	006787b3          	add	a5,a5,t1
   111f0:	0015f593          	and	a1,a1,1
   111f4:	15180263          	beq	a6,a7,11338 <_free_r+0x1bc>
   111f8:	00c72303          	lw	t1,12(a4)
   111fc:	00682623          	sw	t1,12(a6)
   11200:	01032423          	sw	a6,8(t1) # 1017c <frame_dummy+0x1c>
   11204:	1a058663          	beqz	a1,113b0 <_free_r+0x234>
   11208:	0017e693          	or	a3,a5,1
   1120c:	00d72223          	sw	a3,4(a4)
   11210:	00f62023          	sw	a5,0(a2)
   11214:	1ff00693          	li	a3,511
   11218:	06f6ec63          	bltu	a3,a5,11290 <_free_r+0x114>
   1121c:	ff87f693          	and	a3,a5,-8
   11220:	00868693          	add	a3,a3,8
   11224:	00452583          	lw	a1,4(a0)
   11228:	00d506b3          	add	a3,a0,a3
   1122c:	0006a603          	lw	a2,0(a3)
   11230:	0057d813          	srl	a6,a5,0x5
   11234:	00100793          	li	a5,1
   11238:	010797b3          	sll	a5,a5,a6
   1123c:	00b7e7b3          	or	a5,a5,a1
   11240:	ff868593          	add	a1,a3,-8
   11244:	00b72623          	sw	a1,12(a4)
   11248:	00c72423          	sw	a2,8(a4)
   1124c:	00f52223          	sw	a5,4(a0)
   11250:	00e6a023          	sw	a4,0(a3)
   11254:	00e62623          	sw	a4,12(a2)
   11258:	00812403          	lw	s0,8(sp)
   1125c:	00c12083          	lw	ra,12(sp)
   11260:	00048513          	mv	a0,s1
   11264:	00412483          	lw	s1,4(sp)
   11268:	01010113          	add	sp,sp,16
   1126c:	1e50006f          	j	11c50 <__malloc_unlock>
   11270:	00482583          	lw	a1,4(a6)
   11274:	0015f593          	and	a1,a1,1
   11278:	08058663          	beqz	a1,11304 <_free_r+0x188>
   1127c:	0017e693          	or	a3,a5,1
   11280:	fed42e23          	sw	a3,-4(s0)
   11284:	00f62023          	sw	a5,0(a2)
   11288:	1ff00693          	li	a3,511
   1128c:	f8f6f8e3          	bgeu	a3,a5,1121c <_free_r+0xa0>
   11290:	0097d693          	srl	a3,a5,0x9
   11294:	00400613          	li	a2,4
   11298:	12d66063          	bltu	a2,a3,113b8 <_free_r+0x23c>
   1129c:	0067d693          	srl	a3,a5,0x6
   112a0:	03968593          	add	a1,a3,57
   112a4:	03868613          	add	a2,a3,56
   112a8:	00359593          	sll	a1,a1,0x3
   112ac:	00b505b3          	add	a1,a0,a1
   112b0:	0005a683          	lw	a3,0(a1)
   112b4:	ff858593          	add	a1,a1,-8
   112b8:	00d59863          	bne	a1,a3,112c8 <_free_r+0x14c>
   112bc:	1540006f          	j	11410 <_free_r+0x294>
   112c0:	0086a683          	lw	a3,8(a3)
   112c4:	00d58863          	beq	a1,a3,112d4 <_free_r+0x158>
   112c8:	0046a603          	lw	a2,4(a3)
   112cc:	ffc67613          	and	a2,a2,-4
   112d0:	fec7e8e3          	bltu	a5,a2,112c0 <_free_r+0x144>
   112d4:	00c6a583          	lw	a1,12(a3)
   112d8:	00b72623          	sw	a1,12(a4)
   112dc:	00d72423          	sw	a3,8(a4)
   112e0:	00812403          	lw	s0,8(sp)
   112e4:	00c12083          	lw	ra,12(sp)
   112e8:	00e5a423          	sw	a4,8(a1)
   112ec:	00048513          	mv	a0,s1
   112f0:	00412483          	lw	s1,4(sp)
   112f4:	00e6a623          	sw	a4,12(a3)
   112f8:	01010113          	add	sp,sp,16
   112fc:	1550006f          	j	11c50 <__malloc_unlock>
   11300:	00008067          	ret
   11304:	00d787b3          	add	a5,a5,a3
   11308:	00002897          	auipc	a7,0x2
   1130c:	23888893          	add	a7,a7,568 # 13540 <__malloc_av_+0x8>
   11310:	00862683          	lw	a3,8(a2)
   11314:	0d168c63          	beq	a3,a7,113ec <_free_r+0x270>
   11318:	00c62803          	lw	a6,12(a2)
   1131c:	0017e593          	or	a1,a5,1
   11320:	00f70633          	add	a2,a4,a5
   11324:	0106a623          	sw	a6,12(a3)
   11328:	00d82423          	sw	a3,8(a6)
   1132c:	00b72223          	sw	a1,4(a4)
   11330:	00f62023          	sw	a5,0(a2)
   11334:	ee1ff06f          	j	11214 <_free_r+0x98>
   11338:	12059c63          	bnez	a1,11470 <_free_r+0x2f4>
   1133c:	00862583          	lw	a1,8(a2)
   11340:	00c62603          	lw	a2,12(a2)
   11344:	00f686b3          	add	a3,a3,a5
   11348:	0016e793          	or	a5,a3,1
   1134c:	00c5a623          	sw	a2,12(a1)
   11350:	00b62423          	sw	a1,8(a2)
   11354:	00f72223          	sw	a5,4(a4)
   11358:	00d70733          	add	a4,a4,a3
   1135c:	00d72023          	sw	a3,0(a4)
   11360:	ef9ff06f          	j	11258 <_free_r+0xdc>
   11364:	0015f593          	and	a1,a1,1
   11368:	00d786b3          	add	a3,a5,a3
   1136c:	02059063          	bnez	a1,1138c <_free_r+0x210>
   11370:	ff842583          	lw	a1,-8(s0)
   11374:	40b70733          	sub	a4,a4,a1
   11378:	00c72783          	lw	a5,12(a4)
   1137c:	00872603          	lw	a2,8(a4)
   11380:	00b686b3          	add	a3,a3,a1
   11384:	00f62623          	sw	a5,12(a2)
   11388:	00c7a423          	sw	a2,8(a5)
   1138c:	0016e793          	or	a5,a3,1
   11390:	00f72223          	sw	a5,4(a4)
   11394:	00e52423          	sw	a4,8(a0)
   11398:	d481a783          	lw	a5,-696(gp) # 13950 <__malloc_trim_threshold>
   1139c:	eaf6eee3          	bltu	a3,a5,11258 <_free_r+0xdc>
   113a0:	d841a583          	lw	a1,-636(gp) # 1398c <__malloc_top_pad>
   113a4:	00048513          	mv	a0,s1
   113a8:	c9dff0ef          	jal	11044 <_malloc_trim_r>
   113ac:	eadff06f          	j	11258 <_free_r+0xdc>
   113b0:	00d787b3          	add	a5,a5,a3
   113b4:	f5dff06f          	j	11310 <_free_r+0x194>
   113b8:	01400613          	li	a2,20
   113bc:	02d67063          	bgeu	a2,a3,113dc <_free_r+0x260>
   113c0:	05400613          	li	a2,84
   113c4:	06d66463          	bltu	a2,a3,1142c <_free_r+0x2b0>
   113c8:	00c7d693          	srl	a3,a5,0xc
   113cc:	06f68593          	add	a1,a3,111
   113d0:	06e68613          	add	a2,a3,110
   113d4:	00359593          	sll	a1,a1,0x3
   113d8:	ed5ff06f          	j	112ac <_free_r+0x130>
   113dc:	05c68593          	add	a1,a3,92
   113e0:	05b68613          	add	a2,a3,91
   113e4:	00359593          	sll	a1,a1,0x3
   113e8:	ec5ff06f          	j	112ac <_free_r+0x130>
   113ec:	00e52a23          	sw	a4,20(a0)
   113f0:	00e52823          	sw	a4,16(a0)
   113f4:	0017e693          	or	a3,a5,1
   113f8:	01172623          	sw	a7,12(a4)
   113fc:	01172423          	sw	a7,8(a4)
   11400:	00d72223          	sw	a3,4(a4)
   11404:	00f70733          	add	a4,a4,a5
   11408:	00f72023          	sw	a5,0(a4)
   1140c:	e4dff06f          	j	11258 <_free_r+0xdc>
   11410:	00452803          	lw	a6,4(a0)
   11414:	40265613          	sra	a2,a2,0x2
   11418:	00100793          	li	a5,1
   1141c:	00c797b3          	sll	a5,a5,a2
   11420:	0107e7b3          	or	a5,a5,a6
   11424:	00f52223          	sw	a5,4(a0)
   11428:	eb1ff06f          	j	112d8 <_free_r+0x15c>
   1142c:	15400613          	li	a2,340
   11430:	00d66c63          	bltu	a2,a3,11448 <_free_r+0x2cc>
   11434:	00f7d693          	srl	a3,a5,0xf
   11438:	07868593          	add	a1,a3,120
   1143c:	07768613          	add	a2,a3,119
   11440:	00359593          	sll	a1,a1,0x3
   11444:	e69ff06f          	j	112ac <_free_r+0x130>
   11448:	55400613          	li	a2,1364
   1144c:	00d66c63          	bltu	a2,a3,11464 <_free_r+0x2e8>
   11450:	0127d693          	srl	a3,a5,0x12
   11454:	07d68593          	add	a1,a3,125
   11458:	07c68613          	add	a2,a3,124
   1145c:	00359593          	sll	a1,a1,0x3
   11460:	e4dff06f          	j	112ac <_free_r+0x130>
   11464:	3f800593          	li	a1,1016
   11468:	07e00613          	li	a2,126
   1146c:	e41ff06f          	j	112ac <_free_r+0x130>
   11470:	0017e693          	or	a3,a5,1
   11474:	00d72223          	sw	a3,4(a4)
   11478:	00f62023          	sw	a5,0(a2)
   1147c:	dddff06f          	j	11258 <_free_r+0xdc>

00011480 <_malloc_r>:
   11480:	fd010113          	add	sp,sp,-48
   11484:	03212023          	sw	s2,32(sp)
   11488:	02112623          	sw	ra,44(sp)
   1148c:	02812423          	sw	s0,40(sp)
   11490:	02912223          	sw	s1,36(sp)
   11494:	01312e23          	sw	s3,28(sp)
   11498:	00b58793          	add	a5,a1,11
   1149c:	01600713          	li	a4,22
   114a0:	00050913          	mv	s2,a0
   114a4:	08f76263          	bltu	a4,a5,11528 <_malloc_r+0xa8>
   114a8:	01000793          	li	a5,16
   114ac:	20b7e663          	bltu	a5,a1,116b8 <_malloc_r+0x238>
   114b0:	798000ef          	jal	11c48 <__malloc_lock>
   114b4:	01800793          	li	a5,24
   114b8:	00200593          	li	a1,2
   114bc:	01000493          	li	s1,16
   114c0:	00002997          	auipc	s3,0x2
   114c4:	07898993          	add	s3,s3,120 # 13538 <__malloc_av_>
   114c8:	00f987b3          	add	a5,s3,a5
   114cc:	0047a403          	lw	s0,4(a5)
   114d0:	ff878713          	add	a4,a5,-8
   114d4:	34e40a63          	beq	s0,a4,11828 <_malloc_r+0x3a8>
   114d8:	00442783          	lw	a5,4(s0)
   114dc:	00c42683          	lw	a3,12(s0)
   114e0:	00842603          	lw	a2,8(s0)
   114e4:	ffc7f793          	and	a5,a5,-4
   114e8:	00f407b3          	add	a5,s0,a5
   114ec:	0047a703          	lw	a4,4(a5)
   114f0:	00d62623          	sw	a3,12(a2)
   114f4:	00c6a423          	sw	a2,8(a3)
   114f8:	00176713          	or	a4,a4,1
   114fc:	00090513          	mv	a0,s2
   11500:	00e7a223          	sw	a4,4(a5)
   11504:	74c000ef          	jal	11c50 <__malloc_unlock>
   11508:	00840513          	add	a0,s0,8
   1150c:	02c12083          	lw	ra,44(sp)
   11510:	02812403          	lw	s0,40(sp)
   11514:	02412483          	lw	s1,36(sp)
   11518:	02012903          	lw	s2,32(sp)
   1151c:	01c12983          	lw	s3,28(sp)
   11520:	03010113          	add	sp,sp,48
   11524:	00008067          	ret
   11528:	ff87f493          	and	s1,a5,-8
   1152c:	1807c663          	bltz	a5,116b8 <_malloc_r+0x238>
   11530:	18b4e463          	bltu	s1,a1,116b8 <_malloc_r+0x238>
   11534:	714000ef          	jal	11c48 <__malloc_lock>
   11538:	1f700793          	li	a5,503
   1153c:	4097f063          	bgeu	a5,s1,1193c <_malloc_r+0x4bc>
   11540:	0094d793          	srl	a5,s1,0x9
   11544:	18078263          	beqz	a5,116c8 <_malloc_r+0x248>
   11548:	00400713          	li	a4,4
   1154c:	34f76663          	bltu	a4,a5,11898 <_malloc_r+0x418>
   11550:	0064d793          	srl	a5,s1,0x6
   11554:	03978593          	add	a1,a5,57
   11558:	03878813          	add	a6,a5,56
   1155c:	00359613          	sll	a2,a1,0x3
   11560:	00002997          	auipc	s3,0x2
   11564:	fd898993          	add	s3,s3,-40 # 13538 <__malloc_av_>
   11568:	00c98633          	add	a2,s3,a2
   1156c:	00462403          	lw	s0,4(a2)
   11570:	ff860613          	add	a2,a2,-8
   11574:	02860863          	beq	a2,s0,115a4 <_malloc_r+0x124>
   11578:	00f00513          	li	a0,15
   1157c:	0140006f          	j	11590 <_malloc_r+0x110>
   11580:	00c42683          	lw	a3,12(s0)
   11584:	28075e63          	bgez	a4,11820 <_malloc_r+0x3a0>
   11588:	00d60e63          	beq	a2,a3,115a4 <_malloc_r+0x124>
   1158c:	00068413          	mv	s0,a3
   11590:	00442783          	lw	a5,4(s0)
   11594:	ffc7f793          	and	a5,a5,-4
   11598:	40978733          	sub	a4,a5,s1
   1159c:	fee552e3          	bge	a0,a4,11580 <_malloc_r+0x100>
   115a0:	00080593          	mv	a1,a6
   115a4:	0109a403          	lw	s0,16(s3)
   115a8:	00002897          	auipc	a7,0x2
   115ac:	f9888893          	add	a7,a7,-104 # 13540 <__malloc_av_+0x8>
   115b0:	27140463          	beq	s0,a7,11818 <_malloc_r+0x398>
   115b4:	00442783          	lw	a5,4(s0)
   115b8:	00f00693          	li	a3,15
   115bc:	ffc7f793          	and	a5,a5,-4
   115c0:	40978733          	sub	a4,a5,s1
   115c4:	38e6c263          	blt	a3,a4,11948 <_malloc_r+0x4c8>
   115c8:	0119aa23          	sw	a7,20(s3)
   115cc:	0119a823          	sw	a7,16(s3)
   115d0:	34075663          	bgez	a4,1191c <_malloc_r+0x49c>
   115d4:	1ff00713          	li	a4,511
   115d8:	0049a503          	lw	a0,4(s3)
   115dc:	24f76e63          	bltu	a4,a5,11838 <_malloc_r+0x3b8>
   115e0:	ff87f713          	and	a4,a5,-8
   115e4:	00870713          	add	a4,a4,8
   115e8:	00e98733          	add	a4,s3,a4
   115ec:	00072683          	lw	a3,0(a4)
   115f0:	0057d613          	srl	a2,a5,0x5
   115f4:	00100793          	li	a5,1
   115f8:	00c797b3          	sll	a5,a5,a2
   115fc:	00f56533          	or	a0,a0,a5
   11600:	ff870793          	add	a5,a4,-8
   11604:	00f42623          	sw	a5,12(s0)
   11608:	00d42423          	sw	a3,8(s0)
   1160c:	00a9a223          	sw	a0,4(s3)
   11610:	00872023          	sw	s0,0(a4)
   11614:	0086a623          	sw	s0,12(a3)
   11618:	4025d793          	sra	a5,a1,0x2
   1161c:	00100613          	li	a2,1
   11620:	00f61633          	sll	a2,a2,a5
   11624:	0ac56a63          	bltu	a0,a2,116d8 <_malloc_r+0x258>
   11628:	00a677b3          	and	a5,a2,a0
   1162c:	02079463          	bnez	a5,11654 <_malloc_r+0x1d4>
   11630:	00161613          	sll	a2,a2,0x1
   11634:	ffc5f593          	and	a1,a1,-4
   11638:	00a677b3          	and	a5,a2,a0
   1163c:	00458593          	add	a1,a1,4
   11640:	00079a63          	bnez	a5,11654 <_malloc_r+0x1d4>
   11644:	00161613          	sll	a2,a2,0x1
   11648:	00a677b3          	and	a5,a2,a0
   1164c:	00458593          	add	a1,a1,4
   11650:	fe078ae3          	beqz	a5,11644 <_malloc_r+0x1c4>
   11654:	00f00813          	li	a6,15
   11658:	00359313          	sll	t1,a1,0x3
   1165c:	00698333          	add	t1,s3,t1
   11660:	00030513          	mv	a0,t1
   11664:	00c52783          	lw	a5,12(a0)
   11668:	00058e13          	mv	t3,a1
   1166c:	24f50863          	beq	a0,a5,118bc <_malloc_r+0x43c>
   11670:	0047a703          	lw	a4,4(a5)
   11674:	00078413          	mv	s0,a5
   11678:	00c7a783          	lw	a5,12(a5)
   1167c:	ffc77713          	and	a4,a4,-4
   11680:	409706b3          	sub	a3,a4,s1
   11684:	24d84863          	blt	a6,a3,118d4 <_malloc_r+0x454>
   11688:	fe06c2e3          	bltz	a3,1166c <_malloc_r+0x1ec>
   1168c:	00e40733          	add	a4,s0,a4
   11690:	00472683          	lw	a3,4(a4)
   11694:	00842603          	lw	a2,8(s0)
   11698:	00090513          	mv	a0,s2
   1169c:	0016e693          	or	a3,a3,1
   116a0:	00d72223          	sw	a3,4(a4)
   116a4:	00f62623          	sw	a5,12(a2)
   116a8:	00c7a423          	sw	a2,8(a5)
   116ac:	5a4000ef          	jal	11c50 <__malloc_unlock>
   116b0:	00840513          	add	a0,s0,8
   116b4:	e59ff06f          	j	1150c <_malloc_r+0x8c>
   116b8:	00c00793          	li	a5,12
   116bc:	00f92023          	sw	a5,0(s2)
   116c0:	00000513          	li	a0,0
   116c4:	e49ff06f          	j	1150c <_malloc_r+0x8c>
   116c8:	20000613          	li	a2,512
   116cc:	04000593          	li	a1,64
   116d0:	03f00813          	li	a6,63
   116d4:	e8dff06f          	j	11560 <_malloc_r+0xe0>
   116d8:	0089a403          	lw	s0,8(s3)
   116dc:	01612823          	sw	s6,16(sp)
   116e0:	00442783          	lw	a5,4(s0)
   116e4:	ffc7fb13          	and	s6,a5,-4
   116e8:	009b6863          	bltu	s6,s1,116f8 <_malloc_r+0x278>
   116ec:	409b0733          	sub	a4,s6,s1
   116f0:	00f00793          	li	a5,15
   116f4:	0ee7c063          	blt	a5,a4,117d4 <_malloc_r+0x354>
   116f8:	01912223          	sw	s9,4(sp)
   116fc:	d4418c93          	add	s9,gp,-700 # 1394c <__malloc_sbrk_base>
   11700:	000ca703          	lw	a4,0(s9)
   11704:	01412c23          	sw	s4,24(sp)
   11708:	01512a23          	sw	s5,20(sp)
   1170c:	01712623          	sw	s7,12(sp)
   11710:	d841aa83          	lw	s5,-636(gp) # 1398c <__malloc_top_pad>
   11714:	fff00793          	li	a5,-1
   11718:	01640a33          	add	s4,s0,s6
   1171c:	01548ab3          	add	s5,s1,s5
   11720:	3cf70a63          	beq	a4,a5,11af4 <_malloc_r+0x674>
   11724:	000017b7          	lui	a5,0x1
   11728:	00f78793          	add	a5,a5,15 # 100f <exit-0xf085>
   1172c:	00fa8ab3          	add	s5,s5,a5
   11730:	fffff7b7          	lui	a5,0xfffff
   11734:	00fafab3          	and	s5,s5,a5
   11738:	000a8593          	mv	a1,s5
   1173c:	00090513          	mv	a0,s2
   11740:	291000ef          	jal	121d0 <_sbrk_r>
   11744:	fff00793          	li	a5,-1
   11748:	00050b93          	mv	s7,a0
   1174c:	44f50e63          	beq	a0,a5,11ba8 <_malloc_r+0x728>
   11750:	01812423          	sw	s8,8(sp)
   11754:	25456263          	bltu	a0,s4,11998 <_malloc_r+0x518>
   11758:	06c18c13          	add	s8,gp,108 # 13c74 <__malloc_current_mallinfo>
   1175c:	000c2583          	lw	a1,0(s8)
   11760:	00ba85b3          	add	a1,s5,a1
   11764:	00bc2023          	sw	a1,0(s8)
   11768:	00058713          	mv	a4,a1
   1176c:	2aaa1a63          	bne	s4,a0,11a20 <_malloc_r+0x5a0>
   11770:	01451793          	sll	a5,a0,0x14
   11774:	2a079663          	bnez	a5,11a20 <_malloc_r+0x5a0>
   11778:	0089ab83          	lw	s7,8(s3)
   1177c:	015b07b3          	add	a5,s6,s5
   11780:	0017e793          	or	a5,a5,1
   11784:	00fba223          	sw	a5,4(s7)
   11788:	d8018713          	add	a4,gp,-640 # 13988 <__malloc_max_sbrked_mem>
   1178c:	00072683          	lw	a3,0(a4)
   11790:	00b6f463          	bgeu	a3,a1,11798 <_malloc_r+0x318>
   11794:	00b72023          	sw	a1,0(a4)
   11798:	d7c18713          	add	a4,gp,-644 # 13984 <__malloc_max_total_mem>
   1179c:	00072683          	lw	a3,0(a4)
   117a0:	00b6f463          	bgeu	a3,a1,117a8 <_malloc_r+0x328>
   117a4:	00b72023          	sw	a1,0(a4)
   117a8:	00812c03          	lw	s8,8(sp)
   117ac:	000b8413          	mv	s0,s7
   117b0:	ffc7f793          	and	a5,a5,-4
   117b4:	40978733          	sub	a4,a5,s1
   117b8:	3897ea63          	bltu	a5,s1,11b4c <_malloc_r+0x6cc>
   117bc:	00f00793          	li	a5,15
   117c0:	38e7d663          	bge	a5,a4,11b4c <_malloc_r+0x6cc>
   117c4:	01812a03          	lw	s4,24(sp)
   117c8:	01412a83          	lw	s5,20(sp)
   117cc:	00c12b83          	lw	s7,12(sp)
   117d0:	00412c83          	lw	s9,4(sp)
   117d4:	0014e793          	or	a5,s1,1
   117d8:	00f42223          	sw	a5,4(s0)
   117dc:	009404b3          	add	s1,s0,s1
   117e0:	0099a423          	sw	s1,8(s3)
   117e4:	00176713          	or	a4,a4,1
   117e8:	00090513          	mv	a0,s2
   117ec:	00e4a223          	sw	a4,4(s1)
   117f0:	460000ef          	jal	11c50 <__malloc_unlock>
   117f4:	02c12083          	lw	ra,44(sp)
   117f8:	00840513          	add	a0,s0,8
   117fc:	02812403          	lw	s0,40(sp)
   11800:	01012b03          	lw	s6,16(sp)
   11804:	02412483          	lw	s1,36(sp)
   11808:	02012903          	lw	s2,32(sp)
   1180c:	01c12983          	lw	s3,28(sp)
   11810:	03010113          	add	sp,sp,48
   11814:	00008067          	ret
   11818:	0049a503          	lw	a0,4(s3)
   1181c:	dfdff06f          	j	11618 <_malloc_r+0x198>
   11820:	00842603          	lw	a2,8(s0)
   11824:	cc5ff06f          	j	114e8 <_malloc_r+0x68>
   11828:	00c7a403          	lw	s0,12(a5) # fffff00c <__BSS_END__+0xfffeb370>
   1182c:	00258593          	add	a1,a1,2
   11830:	d6878ae3          	beq	a5,s0,115a4 <_malloc_r+0x124>
   11834:	ca5ff06f          	j	114d8 <_malloc_r+0x58>
   11838:	0097d713          	srl	a4,a5,0x9
   1183c:	00400693          	li	a3,4
   11840:	14e6f263          	bgeu	a3,a4,11984 <_malloc_r+0x504>
   11844:	01400693          	li	a3,20
   11848:	32e6e463          	bltu	a3,a4,11b70 <_malloc_r+0x6f0>
   1184c:	05c70613          	add	a2,a4,92
   11850:	05b70693          	add	a3,a4,91
   11854:	00361613          	sll	a2,a2,0x3
   11858:	00c98633          	add	a2,s3,a2
   1185c:	00062703          	lw	a4,0(a2)
   11860:	ff860613          	add	a2,a2,-8
   11864:	00e61863          	bne	a2,a4,11874 <_malloc_r+0x3f4>
   11868:	2940006f          	j	11afc <_malloc_r+0x67c>
   1186c:	00872703          	lw	a4,8(a4)
   11870:	00e60863          	beq	a2,a4,11880 <_malloc_r+0x400>
   11874:	00472683          	lw	a3,4(a4)
   11878:	ffc6f693          	and	a3,a3,-4
   1187c:	fed7e8e3          	bltu	a5,a3,1186c <_malloc_r+0x3ec>
   11880:	00c72603          	lw	a2,12(a4)
   11884:	00c42623          	sw	a2,12(s0)
   11888:	00e42423          	sw	a4,8(s0)
   1188c:	00862423          	sw	s0,8(a2)
   11890:	00872623          	sw	s0,12(a4)
   11894:	d85ff06f          	j	11618 <_malloc_r+0x198>
   11898:	01400713          	li	a4,20
   1189c:	10f77863          	bgeu	a4,a5,119ac <_malloc_r+0x52c>
   118a0:	05400713          	li	a4,84
   118a4:	2ef76463          	bltu	a4,a5,11b8c <_malloc_r+0x70c>
   118a8:	00c4d793          	srl	a5,s1,0xc
   118ac:	06f78593          	add	a1,a5,111
   118b0:	06e78813          	add	a6,a5,110
   118b4:	00359613          	sll	a2,a1,0x3
   118b8:	ca9ff06f          	j	11560 <_malloc_r+0xe0>
   118bc:	001e0e13          	add	t3,t3,1
   118c0:	003e7793          	and	a5,t3,3
   118c4:	00850513          	add	a0,a0,8
   118c8:	10078063          	beqz	a5,119c8 <_malloc_r+0x548>
   118cc:	00c52783          	lw	a5,12(a0)
   118d0:	d9dff06f          	j	1166c <_malloc_r+0x1ec>
   118d4:	00842603          	lw	a2,8(s0)
   118d8:	0014e593          	or	a1,s1,1
   118dc:	00b42223          	sw	a1,4(s0)
   118e0:	00f62623          	sw	a5,12(a2)
   118e4:	00c7a423          	sw	a2,8(a5)
   118e8:	009404b3          	add	s1,s0,s1
   118ec:	0099aa23          	sw	s1,20(s3)
   118f0:	0099a823          	sw	s1,16(s3)
   118f4:	0016e793          	or	a5,a3,1
   118f8:	0114a623          	sw	a7,12(s1)
   118fc:	0114a423          	sw	a7,8(s1)
   11900:	00f4a223          	sw	a5,4(s1)
   11904:	00e40733          	add	a4,s0,a4
   11908:	00090513          	mv	a0,s2
   1190c:	00d72023          	sw	a3,0(a4)
   11910:	340000ef          	jal	11c50 <__malloc_unlock>
   11914:	00840513          	add	a0,s0,8
   11918:	bf5ff06f          	j	1150c <_malloc_r+0x8c>
   1191c:	00f407b3          	add	a5,s0,a5
   11920:	0047a703          	lw	a4,4(a5)
   11924:	00090513          	mv	a0,s2
   11928:	00176713          	or	a4,a4,1
   1192c:	00e7a223          	sw	a4,4(a5)
   11930:	320000ef          	jal	11c50 <__malloc_unlock>
   11934:	00840513          	add	a0,s0,8
   11938:	bd5ff06f          	j	1150c <_malloc_r+0x8c>
   1193c:	0034d593          	srl	a1,s1,0x3
   11940:	00848793          	add	a5,s1,8
   11944:	b7dff06f          	j	114c0 <_malloc_r+0x40>
   11948:	0014e693          	or	a3,s1,1
   1194c:	00d42223          	sw	a3,4(s0)
   11950:	009404b3          	add	s1,s0,s1
   11954:	0099aa23          	sw	s1,20(s3)
   11958:	0099a823          	sw	s1,16(s3)
   1195c:	00176693          	or	a3,a4,1
   11960:	0114a623          	sw	a7,12(s1)
   11964:	0114a423          	sw	a7,8(s1)
   11968:	00d4a223          	sw	a3,4(s1)
   1196c:	00f407b3          	add	a5,s0,a5
   11970:	00090513          	mv	a0,s2
   11974:	00e7a023          	sw	a4,0(a5)
   11978:	2d8000ef          	jal	11c50 <__malloc_unlock>
   1197c:	00840513          	add	a0,s0,8
   11980:	b8dff06f          	j	1150c <_malloc_r+0x8c>
   11984:	0067d713          	srl	a4,a5,0x6
   11988:	03970613          	add	a2,a4,57
   1198c:	03870693          	add	a3,a4,56
   11990:	00361613          	sll	a2,a2,0x3
   11994:	ec5ff06f          	j	11858 <_malloc_r+0x3d8>
   11998:	07340c63          	beq	s0,s3,11a10 <_malloc_r+0x590>
   1199c:	0089a403          	lw	s0,8(s3)
   119a0:	00812c03          	lw	s8,8(sp)
   119a4:	00442783          	lw	a5,4(s0)
   119a8:	e09ff06f          	j	117b0 <_malloc_r+0x330>
   119ac:	05c78593          	add	a1,a5,92
   119b0:	05b78813          	add	a6,a5,91
   119b4:	00359613          	sll	a2,a1,0x3
   119b8:	ba9ff06f          	j	11560 <_malloc_r+0xe0>
   119bc:	00832783          	lw	a5,8(t1)
   119c0:	fff58593          	add	a1,a1,-1
   119c4:	26679e63          	bne	a5,t1,11c40 <_malloc_r+0x7c0>
   119c8:	0035f793          	and	a5,a1,3
   119cc:	ff830313          	add	t1,t1,-8
   119d0:	fe0796e3          	bnez	a5,119bc <_malloc_r+0x53c>
   119d4:	0049a703          	lw	a4,4(s3)
   119d8:	fff64793          	not	a5,a2
   119dc:	00e7f7b3          	and	a5,a5,a4
   119e0:	00f9a223          	sw	a5,4(s3)
   119e4:	00161613          	sll	a2,a2,0x1
   119e8:	cec7e8e3          	bltu	a5,a2,116d8 <_malloc_r+0x258>
   119ec:	ce0606e3          	beqz	a2,116d8 <_malloc_r+0x258>
   119f0:	00f67733          	and	a4,a2,a5
   119f4:	00071a63          	bnez	a4,11a08 <_malloc_r+0x588>
   119f8:	00161613          	sll	a2,a2,0x1
   119fc:	00f67733          	and	a4,a2,a5
   11a00:	004e0e13          	add	t3,t3,4
   11a04:	fe070ae3          	beqz	a4,119f8 <_malloc_r+0x578>
   11a08:	000e0593          	mv	a1,t3
   11a0c:	c4dff06f          	j	11658 <_malloc_r+0x1d8>
   11a10:	06c18c13          	add	s8,gp,108 # 13c74 <__malloc_current_mallinfo>
   11a14:	000c2703          	lw	a4,0(s8)
   11a18:	00ea8733          	add	a4,s5,a4
   11a1c:	00ec2023          	sw	a4,0(s8)
   11a20:	000ca683          	lw	a3,0(s9)
   11a24:	fff00793          	li	a5,-1
   11a28:	18f68663          	beq	a3,a5,11bb4 <_malloc_r+0x734>
   11a2c:	414b87b3          	sub	a5,s7,s4
   11a30:	00e787b3          	add	a5,a5,a4
   11a34:	00fc2023          	sw	a5,0(s8)
   11a38:	007bfc93          	and	s9,s7,7
   11a3c:	0c0c8c63          	beqz	s9,11b14 <_malloc_r+0x694>
   11a40:	419b8bb3          	sub	s7,s7,s9
   11a44:	000017b7          	lui	a5,0x1
   11a48:	00878793          	add	a5,a5,8 # 1008 <exit-0xf08c>
   11a4c:	008b8b93          	add	s7,s7,8
   11a50:	419785b3          	sub	a1,a5,s9
   11a54:	015b8ab3          	add	s5,s7,s5
   11a58:	415585b3          	sub	a1,a1,s5
   11a5c:	01459593          	sll	a1,a1,0x14
   11a60:	0145da13          	srl	s4,a1,0x14
   11a64:	000a0593          	mv	a1,s4
   11a68:	00090513          	mv	a0,s2
   11a6c:	764000ef          	jal	121d0 <_sbrk_r>
   11a70:	fff00793          	li	a5,-1
   11a74:	18f50063          	beq	a0,a5,11bf4 <_malloc_r+0x774>
   11a78:	41750533          	sub	a0,a0,s7
   11a7c:	01450ab3          	add	s5,a0,s4
   11a80:	000c2703          	lw	a4,0(s8)
   11a84:	0179a423          	sw	s7,8(s3)
   11a88:	001ae793          	or	a5,s5,1
   11a8c:	00ea05b3          	add	a1,s4,a4
   11a90:	00bc2023          	sw	a1,0(s8)
   11a94:	00fba223          	sw	a5,4(s7)
   11a98:	cf3408e3          	beq	s0,s3,11788 <_malloc_r+0x308>
   11a9c:	00f00693          	li	a3,15
   11aa0:	0b66f063          	bgeu	a3,s6,11b40 <_malloc_r+0x6c0>
   11aa4:	00442703          	lw	a4,4(s0)
   11aa8:	ff4b0793          	add	a5,s6,-12
   11aac:	ff87f793          	and	a5,a5,-8
   11ab0:	00177713          	and	a4,a4,1
   11ab4:	00f76733          	or	a4,a4,a5
   11ab8:	00e42223          	sw	a4,4(s0)
   11abc:	00500613          	li	a2,5
   11ac0:	00f40733          	add	a4,s0,a5
   11ac4:	00c72223          	sw	a2,4(a4)
   11ac8:	00c72423          	sw	a2,8(a4)
   11acc:	00f6e663          	bltu	a3,a5,11ad8 <_malloc_r+0x658>
   11ad0:	004ba783          	lw	a5,4(s7)
   11ad4:	cb5ff06f          	j	11788 <_malloc_r+0x308>
   11ad8:	00840593          	add	a1,s0,8
   11adc:	00090513          	mv	a0,s2
   11ae0:	e9cff0ef          	jal	1117c <_free_r>
   11ae4:	0089ab83          	lw	s7,8(s3)
   11ae8:	000c2583          	lw	a1,0(s8)
   11aec:	004ba783          	lw	a5,4(s7)
   11af0:	c99ff06f          	j	11788 <_malloc_r+0x308>
   11af4:	010a8a93          	add	s5,s5,16
   11af8:	c41ff06f          	j	11738 <_malloc_r+0x2b8>
   11afc:	4026d693          	sra	a3,a3,0x2
   11b00:	00100793          	li	a5,1
   11b04:	00d797b3          	sll	a5,a5,a3
   11b08:	00f56533          	or	a0,a0,a5
   11b0c:	00a9a223          	sw	a0,4(s3)
   11b10:	d75ff06f          	j	11884 <_malloc_r+0x404>
   11b14:	015b85b3          	add	a1,s7,s5
   11b18:	40b005b3          	neg	a1,a1
   11b1c:	01459593          	sll	a1,a1,0x14
   11b20:	0145da13          	srl	s4,a1,0x14
   11b24:	000a0593          	mv	a1,s4
   11b28:	00090513          	mv	a0,s2
   11b2c:	6a4000ef          	jal	121d0 <_sbrk_r>
   11b30:	fff00793          	li	a5,-1
   11b34:	f4f512e3          	bne	a0,a5,11a78 <_malloc_r+0x5f8>
   11b38:	00000a13          	li	s4,0
   11b3c:	f45ff06f          	j	11a80 <_malloc_r+0x600>
   11b40:	00812c03          	lw	s8,8(sp)
   11b44:	00100793          	li	a5,1
   11b48:	00fba223          	sw	a5,4(s7)
   11b4c:	00090513          	mv	a0,s2
   11b50:	100000ef          	jal	11c50 <__malloc_unlock>
   11b54:	00000513          	li	a0,0
   11b58:	01812a03          	lw	s4,24(sp)
   11b5c:	01412a83          	lw	s5,20(sp)
   11b60:	01012b03          	lw	s6,16(sp)
   11b64:	00c12b83          	lw	s7,12(sp)
   11b68:	00412c83          	lw	s9,4(sp)
   11b6c:	9a1ff06f          	j	1150c <_malloc_r+0x8c>
   11b70:	05400693          	li	a3,84
   11b74:	04e6e463          	bltu	a3,a4,11bbc <_malloc_r+0x73c>
   11b78:	00c7d713          	srl	a4,a5,0xc
   11b7c:	06f70613          	add	a2,a4,111
   11b80:	06e70693          	add	a3,a4,110
   11b84:	00361613          	sll	a2,a2,0x3
   11b88:	cd1ff06f          	j	11858 <_malloc_r+0x3d8>
   11b8c:	15400713          	li	a4,340
   11b90:	04f76463          	bltu	a4,a5,11bd8 <_malloc_r+0x758>
   11b94:	00f4d793          	srl	a5,s1,0xf
   11b98:	07878593          	add	a1,a5,120
   11b9c:	07778813          	add	a6,a5,119
   11ba0:	00359613          	sll	a2,a1,0x3
   11ba4:	9bdff06f          	j	11560 <_malloc_r+0xe0>
   11ba8:	0089a403          	lw	s0,8(s3)
   11bac:	00442783          	lw	a5,4(s0)
   11bb0:	c01ff06f          	j	117b0 <_malloc_r+0x330>
   11bb4:	017ca023          	sw	s7,0(s9)
   11bb8:	e81ff06f          	j	11a38 <_malloc_r+0x5b8>
   11bbc:	15400693          	li	a3,340
   11bc0:	04e6e463          	bltu	a3,a4,11c08 <_malloc_r+0x788>
   11bc4:	00f7d713          	srl	a4,a5,0xf
   11bc8:	07870613          	add	a2,a4,120
   11bcc:	07770693          	add	a3,a4,119
   11bd0:	00361613          	sll	a2,a2,0x3
   11bd4:	c85ff06f          	j	11858 <_malloc_r+0x3d8>
   11bd8:	55400713          	li	a4,1364
   11bdc:	04f76463          	bltu	a4,a5,11c24 <_malloc_r+0x7a4>
   11be0:	0124d793          	srl	a5,s1,0x12
   11be4:	07d78593          	add	a1,a5,125
   11be8:	07c78813          	add	a6,a5,124
   11bec:	00359613          	sll	a2,a1,0x3
   11bf0:	971ff06f          	j	11560 <_malloc_r+0xe0>
   11bf4:	ff8c8c93          	add	s9,s9,-8
   11bf8:	019a8ab3          	add	s5,s5,s9
   11bfc:	417a8ab3          	sub	s5,s5,s7
   11c00:	00000a13          	li	s4,0
   11c04:	e7dff06f          	j	11a80 <_malloc_r+0x600>
   11c08:	55400693          	li	a3,1364
   11c0c:	02e6e463          	bltu	a3,a4,11c34 <_malloc_r+0x7b4>
   11c10:	0127d713          	srl	a4,a5,0x12
   11c14:	07d70613          	add	a2,a4,125
   11c18:	07c70693          	add	a3,a4,124
   11c1c:	00361613          	sll	a2,a2,0x3
   11c20:	c39ff06f          	j	11858 <_malloc_r+0x3d8>
   11c24:	3f800613          	li	a2,1016
   11c28:	07f00593          	li	a1,127
   11c2c:	07e00813          	li	a6,126
   11c30:	931ff06f          	j	11560 <_malloc_r+0xe0>
   11c34:	3f800613          	li	a2,1016
   11c38:	07e00693          	li	a3,126
   11c3c:	c1dff06f          	j	11858 <_malloc_r+0x3d8>
   11c40:	0049a783          	lw	a5,4(s3)
   11c44:	da1ff06f          	j	119e4 <_malloc_r+0x564>

00011c48 <__malloc_lock>:
   11c48:	d6818513          	add	a0,gp,-664 # 13970 <__lock___malloc_recursive_mutex>
   11c4c:	8ccff06f          	j	10d18 <__retarget_lock_acquire_recursive>

00011c50 <__malloc_unlock>:
   11c50:	d6818513          	add	a0,gp,-664 # 13970 <__lock___malloc_recursive_mutex>
   11c54:	8dcff06f          	j	10d30 <__retarget_lock_release_recursive>

00011c58 <_fclose_r>:
   11c58:	ff010113          	add	sp,sp,-16
   11c5c:	00112623          	sw	ra,12(sp)
   11c60:	01212023          	sw	s2,0(sp)
   11c64:	0e058263          	beqz	a1,11d48 <_fclose_r+0xf0>
   11c68:	00812423          	sw	s0,8(sp)
   11c6c:	00912223          	sw	s1,4(sp)
   11c70:	00058413          	mv	s0,a1
   11c74:	00050493          	mv	s1,a0
   11c78:	00050663          	beqz	a0,11c84 <_fclose_r+0x2c>
   11c7c:	03452783          	lw	a5,52(a0)
   11c80:	10078063          	beqz	a5,11d80 <_fclose_r+0x128>
   11c84:	06442783          	lw	a5,100(s0)
   11c88:	00c41703          	lh	a4,12(s0)
   11c8c:	0017f793          	and	a5,a5,1
   11c90:	0a079663          	bnez	a5,11d3c <_fclose_r+0xe4>
   11c94:	20077713          	and	a4,a4,512
   11c98:	0e070863          	beqz	a4,11d88 <_fclose_r+0x130>
   11c9c:	00040593          	mv	a1,s0
   11ca0:	00048513          	mv	a0,s1
   11ca4:	130000ef          	jal	11dd4 <__sflush_r>
   11ca8:	02c42783          	lw	a5,44(s0)
   11cac:	00050913          	mv	s2,a0
   11cb0:	00078a63          	beqz	a5,11cc4 <_fclose_r+0x6c>
   11cb4:	01c42583          	lw	a1,28(s0)
   11cb8:	00048513          	mv	a0,s1
   11cbc:	000780e7          	jalr	a5
   11cc0:	0a054063          	bltz	a0,11d60 <_fclose_r+0x108>
   11cc4:	00c45783          	lhu	a5,12(s0)
   11cc8:	0807f793          	and	a5,a5,128
   11ccc:	0a079263          	bnez	a5,11d70 <_fclose_r+0x118>
   11cd0:	03042583          	lw	a1,48(s0)
   11cd4:	00058c63          	beqz	a1,11cec <_fclose_r+0x94>
   11cd8:	04040793          	add	a5,s0,64
   11cdc:	00f58663          	beq	a1,a5,11ce8 <_fclose_r+0x90>
   11ce0:	00048513          	mv	a0,s1
   11ce4:	c98ff0ef          	jal	1117c <_free_r>
   11ce8:	02042823          	sw	zero,48(s0)
   11cec:	04442583          	lw	a1,68(s0)
   11cf0:	00058863          	beqz	a1,11d00 <_fclose_r+0xa8>
   11cf4:	00048513          	mv	a0,s1
   11cf8:	c84ff0ef          	jal	1117c <_free_r>
   11cfc:	04042223          	sw	zero,68(s0)
   11d00:	a5dfe0ef          	jal	1075c <__sfp_lock_acquire>
   11d04:	06442783          	lw	a5,100(s0)
   11d08:	00041623          	sh	zero,12(s0)
   11d0c:	0017f793          	and	a5,a5,1
   11d10:	0a078663          	beqz	a5,11dbc <_fclose_r+0x164>
   11d14:	05842503          	lw	a0,88(s0)
   11d18:	ff9fe0ef          	jal	10d10 <__retarget_lock_close_recursive>
   11d1c:	a49fe0ef          	jal	10764 <__sfp_lock_release>
   11d20:	00c12083          	lw	ra,12(sp)
   11d24:	00812403          	lw	s0,8(sp)
   11d28:	00412483          	lw	s1,4(sp)
   11d2c:	00090513          	mv	a0,s2
   11d30:	00012903          	lw	s2,0(sp)
   11d34:	01010113          	add	sp,sp,16
   11d38:	00008067          	ret
   11d3c:	f60710e3          	bnez	a4,11c9c <_fclose_r+0x44>
   11d40:	00812403          	lw	s0,8(sp)
   11d44:	00412483          	lw	s1,4(sp)
   11d48:	00000913          	li	s2,0
   11d4c:	00c12083          	lw	ra,12(sp)
   11d50:	00090513          	mv	a0,s2
   11d54:	00012903          	lw	s2,0(sp)
   11d58:	01010113          	add	sp,sp,16
   11d5c:	00008067          	ret
   11d60:	00c45783          	lhu	a5,12(s0)
   11d64:	fff00913          	li	s2,-1
   11d68:	0807f793          	and	a5,a5,128
   11d6c:	f60782e3          	beqz	a5,11cd0 <_fclose_r+0x78>
   11d70:	01042583          	lw	a1,16(s0)
   11d74:	00048513          	mv	a0,s1
   11d78:	c04ff0ef          	jal	1117c <_free_r>
   11d7c:	f55ff06f          	j	11cd0 <_fclose_r+0x78>
   11d80:	97dfe0ef          	jal	106fc <__sinit>
   11d84:	f01ff06f          	j	11c84 <_fclose_r+0x2c>
   11d88:	05842503          	lw	a0,88(s0)
   11d8c:	f8dfe0ef          	jal	10d18 <__retarget_lock_acquire_recursive>
   11d90:	00c41783          	lh	a5,12(s0)
   11d94:	f00794e3          	bnez	a5,11c9c <_fclose_r+0x44>
   11d98:	06442783          	lw	a5,100(s0)
   11d9c:	0017f793          	and	a5,a5,1
   11da0:	fa0790e3          	bnez	a5,11d40 <_fclose_r+0xe8>
   11da4:	05842503          	lw	a0,88(s0)
   11da8:	00000913          	li	s2,0
   11dac:	f85fe0ef          	jal	10d30 <__retarget_lock_release_recursive>
   11db0:	00812403          	lw	s0,8(sp)
   11db4:	00412483          	lw	s1,4(sp)
   11db8:	f95ff06f          	j	11d4c <_fclose_r+0xf4>
   11dbc:	05842503          	lw	a0,88(s0)
   11dc0:	f71fe0ef          	jal	10d30 <__retarget_lock_release_recursive>
   11dc4:	f51ff06f          	j	11d14 <_fclose_r+0xbc>

00011dc8 <fclose>:
   11dc8:	00050593          	mv	a1,a0
   11dcc:	d3c1a503          	lw	a0,-708(gp) # 13944 <_impure_ptr>
   11dd0:	e89ff06f          	j	11c58 <_fclose_r>

00011dd4 <__sflush_r>:
   11dd4:	00c59703          	lh	a4,12(a1)
   11dd8:	fe010113          	add	sp,sp,-32
   11ddc:	00812c23          	sw	s0,24(sp)
   11de0:	01312623          	sw	s3,12(sp)
   11de4:	00112e23          	sw	ra,28(sp)
   11de8:	00877793          	and	a5,a4,8
   11dec:	00058413          	mv	s0,a1
   11df0:	00050993          	mv	s3,a0
   11df4:	12079063          	bnez	a5,11f14 <__sflush_r+0x140>
   11df8:	000017b7          	lui	a5,0x1
   11dfc:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf894>
   11e00:	0045a683          	lw	a3,4(a1)
   11e04:	00f767b3          	or	a5,a4,a5
   11e08:	00f59623          	sh	a5,12(a1)
   11e0c:	18d05263          	blez	a3,11f90 <__sflush_r+0x1bc>
   11e10:	02842803          	lw	a6,40(s0)
   11e14:	0e080463          	beqz	a6,11efc <__sflush_r+0x128>
   11e18:	00912a23          	sw	s1,20(sp)
   11e1c:	01371693          	sll	a3,a4,0x13
   11e20:	0009a483          	lw	s1,0(s3)
   11e24:	0009a023          	sw	zero,0(s3)
   11e28:	01c42583          	lw	a1,28(s0)
   11e2c:	1606ce63          	bltz	a3,11fa8 <__sflush_r+0x1d4>
   11e30:	00000613          	li	a2,0
   11e34:	00100693          	li	a3,1
   11e38:	00098513          	mv	a0,s3
   11e3c:	000800e7          	jalr	a6
   11e40:	fff00793          	li	a5,-1
   11e44:	00050613          	mv	a2,a0
   11e48:	1af50463          	beq	a0,a5,11ff0 <__sflush_r+0x21c>
   11e4c:	00c41783          	lh	a5,12(s0)
   11e50:	02842803          	lw	a6,40(s0)
   11e54:	01c42583          	lw	a1,28(s0)
   11e58:	0047f793          	and	a5,a5,4
   11e5c:	00078e63          	beqz	a5,11e78 <__sflush_r+0xa4>
   11e60:	00442703          	lw	a4,4(s0)
   11e64:	03042783          	lw	a5,48(s0)
   11e68:	40e60633          	sub	a2,a2,a4
   11e6c:	00078663          	beqz	a5,11e78 <__sflush_r+0xa4>
   11e70:	03c42783          	lw	a5,60(s0)
   11e74:	40f60633          	sub	a2,a2,a5
   11e78:	00000693          	li	a3,0
   11e7c:	00098513          	mv	a0,s3
   11e80:	000800e7          	jalr	a6
   11e84:	fff00793          	li	a5,-1
   11e88:	12f51463          	bne	a0,a5,11fb0 <__sflush_r+0x1dc>
   11e8c:	0009a683          	lw	a3,0(s3)
   11e90:	01d00793          	li	a5,29
   11e94:	00c41703          	lh	a4,12(s0)
   11e98:	16d7ea63          	bltu	a5,a3,1200c <__sflush_r+0x238>
   11e9c:	204007b7          	lui	a5,0x20400
   11ea0:	00178793          	add	a5,a5,1 # 20400001 <__BSS_END__+0x203ec365>
   11ea4:	00d7d7b3          	srl	a5,a5,a3
   11ea8:	0017f793          	and	a5,a5,1
   11eac:	16078063          	beqz	a5,1200c <__sflush_r+0x238>
   11eb0:	01042603          	lw	a2,16(s0)
   11eb4:	fffff7b7          	lui	a5,0xfffff
   11eb8:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebb63>
   11ebc:	00f777b3          	and	a5,a4,a5
   11ec0:	00f41623          	sh	a5,12(s0)
   11ec4:	00042223          	sw	zero,4(s0)
   11ec8:	00c42023          	sw	a2,0(s0)
   11ecc:	01371793          	sll	a5,a4,0x13
   11ed0:	0007d463          	bgez	a5,11ed8 <__sflush_r+0x104>
   11ed4:	10068263          	beqz	a3,11fd8 <__sflush_r+0x204>
   11ed8:	03042583          	lw	a1,48(s0)
   11edc:	0099a023          	sw	s1,0(s3)
   11ee0:	10058463          	beqz	a1,11fe8 <__sflush_r+0x214>
   11ee4:	04040793          	add	a5,s0,64
   11ee8:	00f58663          	beq	a1,a5,11ef4 <__sflush_r+0x120>
   11eec:	00098513          	mv	a0,s3
   11ef0:	a8cff0ef          	jal	1117c <_free_r>
   11ef4:	01412483          	lw	s1,20(sp)
   11ef8:	02042823          	sw	zero,48(s0)
   11efc:	00000513          	li	a0,0
   11f00:	01c12083          	lw	ra,28(sp)
   11f04:	01812403          	lw	s0,24(sp)
   11f08:	00c12983          	lw	s3,12(sp)
   11f0c:	02010113          	add	sp,sp,32
   11f10:	00008067          	ret
   11f14:	01212823          	sw	s2,16(sp)
   11f18:	0105a903          	lw	s2,16(a1)
   11f1c:	08090263          	beqz	s2,11fa0 <__sflush_r+0x1cc>
   11f20:	00912a23          	sw	s1,20(sp)
   11f24:	0005a483          	lw	s1,0(a1)
   11f28:	00377713          	and	a4,a4,3
   11f2c:	0125a023          	sw	s2,0(a1)
   11f30:	412484b3          	sub	s1,s1,s2
   11f34:	00000793          	li	a5,0
   11f38:	00071463          	bnez	a4,11f40 <__sflush_r+0x16c>
   11f3c:	0145a783          	lw	a5,20(a1)
   11f40:	00f42423          	sw	a5,8(s0)
   11f44:	00904863          	bgtz	s1,11f54 <__sflush_r+0x180>
   11f48:	0540006f          	j	11f9c <__sflush_r+0x1c8>
   11f4c:	00a90933          	add	s2,s2,a0
   11f50:	04905663          	blez	s1,11f9c <__sflush_r+0x1c8>
   11f54:	02442783          	lw	a5,36(s0)
   11f58:	01c42583          	lw	a1,28(s0)
   11f5c:	00048693          	mv	a3,s1
   11f60:	00090613          	mv	a2,s2
   11f64:	00098513          	mv	a0,s3
   11f68:	000780e7          	jalr	a5
   11f6c:	40a484b3          	sub	s1,s1,a0
   11f70:	fca04ee3          	bgtz	a0,11f4c <__sflush_r+0x178>
   11f74:	00c41703          	lh	a4,12(s0)
   11f78:	01012903          	lw	s2,16(sp)
   11f7c:	04076713          	or	a4,a4,64
   11f80:	01412483          	lw	s1,20(sp)
   11f84:	00e41623          	sh	a4,12(s0)
   11f88:	fff00513          	li	a0,-1
   11f8c:	f75ff06f          	j	11f00 <__sflush_r+0x12c>
   11f90:	03c5a683          	lw	a3,60(a1)
   11f94:	e6d04ee3          	bgtz	a3,11e10 <__sflush_r+0x3c>
   11f98:	f65ff06f          	j	11efc <__sflush_r+0x128>
   11f9c:	01412483          	lw	s1,20(sp)
   11fa0:	01012903          	lw	s2,16(sp)
   11fa4:	f59ff06f          	j	11efc <__sflush_r+0x128>
   11fa8:	05042603          	lw	a2,80(s0)
   11fac:	eadff06f          	j	11e58 <__sflush_r+0x84>
   11fb0:	00c41703          	lh	a4,12(s0)
   11fb4:	01042683          	lw	a3,16(s0)
   11fb8:	fffff7b7          	lui	a5,0xfffff
   11fbc:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffebb63>
   11fc0:	00f777b3          	and	a5,a4,a5
   11fc4:	00f41623          	sh	a5,12(s0)
   11fc8:	00042223          	sw	zero,4(s0)
   11fcc:	00d42023          	sw	a3,0(s0)
   11fd0:	01371793          	sll	a5,a4,0x13
   11fd4:	f007d2e3          	bgez	a5,11ed8 <__sflush_r+0x104>
   11fd8:	03042583          	lw	a1,48(s0)
   11fdc:	04a42823          	sw	a0,80(s0)
   11fe0:	0099a023          	sw	s1,0(s3)
   11fe4:	f00590e3          	bnez	a1,11ee4 <__sflush_r+0x110>
   11fe8:	01412483          	lw	s1,20(sp)
   11fec:	f11ff06f          	j	11efc <__sflush_r+0x128>
   11ff0:	0009a783          	lw	a5,0(s3)
   11ff4:	e4078ce3          	beqz	a5,11e4c <__sflush_r+0x78>
   11ff8:	01d00713          	li	a4,29
   11ffc:	00e78c63          	beq	a5,a4,12014 <__sflush_r+0x240>
   12000:	01600713          	li	a4,22
   12004:	00e78863          	beq	a5,a4,12014 <__sflush_r+0x240>
   12008:	00c41703          	lh	a4,12(s0)
   1200c:	04076713          	or	a4,a4,64
   12010:	f71ff06f          	j	11f80 <__sflush_r+0x1ac>
   12014:	0099a023          	sw	s1,0(s3)
   12018:	01412483          	lw	s1,20(sp)
   1201c:	ee1ff06f          	j	11efc <__sflush_r+0x128>

00012020 <_fflush_r>:
   12020:	ff010113          	add	sp,sp,-16
   12024:	00812423          	sw	s0,8(sp)
   12028:	00912223          	sw	s1,4(sp)
   1202c:	00112623          	sw	ra,12(sp)
   12030:	01212023          	sw	s2,0(sp)
   12034:	00050493          	mv	s1,a0
   12038:	00058413          	mv	s0,a1
   1203c:	00050663          	beqz	a0,12048 <_fflush_r+0x28>
   12040:	03452783          	lw	a5,52(a0)
   12044:	0a078a63          	beqz	a5,120f8 <_fflush_r+0xd8>
   12048:	00c41783          	lh	a5,12(s0)
   1204c:	00000913          	li	s2,0
   12050:	04078063          	beqz	a5,12090 <_fflush_r+0x70>
   12054:	06442703          	lw	a4,100(s0)
   12058:	00177713          	and	a4,a4,1
   1205c:	00071663          	bnez	a4,12068 <_fflush_r+0x48>
   12060:	2007f793          	and	a5,a5,512
   12064:	04078463          	beqz	a5,120ac <_fflush_r+0x8c>
   12068:	00040593          	mv	a1,s0
   1206c:	00048513          	mv	a0,s1
   12070:	d65ff0ef          	jal	11dd4 <__sflush_r>
   12074:	06442783          	lw	a5,100(s0)
   12078:	00050913          	mv	s2,a0
   1207c:	0017f793          	and	a5,a5,1
   12080:	00079863          	bnez	a5,12090 <_fflush_r+0x70>
   12084:	00c45783          	lhu	a5,12(s0)
   12088:	2007f793          	and	a5,a5,512
   1208c:	04078463          	beqz	a5,120d4 <_fflush_r+0xb4>
   12090:	00c12083          	lw	ra,12(sp)
   12094:	00812403          	lw	s0,8(sp)
   12098:	00412483          	lw	s1,4(sp)
   1209c:	00090513          	mv	a0,s2
   120a0:	00012903          	lw	s2,0(sp)
   120a4:	01010113          	add	sp,sp,16
   120a8:	00008067          	ret
   120ac:	05842503          	lw	a0,88(s0)
   120b0:	c69fe0ef          	jal	10d18 <__retarget_lock_acquire_recursive>
   120b4:	00040593          	mv	a1,s0
   120b8:	00048513          	mv	a0,s1
   120bc:	d19ff0ef          	jal	11dd4 <__sflush_r>
   120c0:	06442783          	lw	a5,100(s0)
   120c4:	00050913          	mv	s2,a0
   120c8:	0017f793          	and	a5,a5,1
   120cc:	fc0792e3          	bnez	a5,12090 <_fflush_r+0x70>
   120d0:	fb5ff06f          	j	12084 <_fflush_r+0x64>
   120d4:	05842503          	lw	a0,88(s0)
   120d8:	c59fe0ef          	jal	10d30 <__retarget_lock_release_recursive>
   120dc:	00c12083          	lw	ra,12(sp)
   120e0:	00812403          	lw	s0,8(sp)
   120e4:	00412483          	lw	s1,4(sp)
   120e8:	00090513          	mv	a0,s2
   120ec:	00012903          	lw	s2,0(sp)
   120f0:	01010113          	add	sp,sp,16
   120f4:	00008067          	ret
   120f8:	e04fe0ef          	jal	106fc <__sinit>
   120fc:	f4dff06f          	j	12048 <_fflush_r+0x28>

00012100 <fflush>:
   12100:	0a050a63          	beqz	a0,121b4 <fflush+0xb4>
   12104:	ff010113          	add	sp,sp,-16
   12108:	00812423          	sw	s0,8(sp)
   1210c:	01212023          	sw	s2,0(sp)
   12110:	00112623          	sw	ra,12(sp)
   12114:	00912223          	sw	s1,4(sp)
   12118:	d3c1a903          	lw	s2,-708(gp) # 13944 <_impure_ptr>
   1211c:	00050413          	mv	s0,a0
   12120:	00090663          	beqz	s2,1212c <fflush+0x2c>
   12124:	03492783          	lw	a5,52(s2)
   12128:	06078463          	beqz	a5,12190 <fflush+0x90>
   1212c:	00c41783          	lh	a5,12(s0)
   12130:	00000493          	li	s1,0
   12134:	04078063          	beqz	a5,12174 <fflush+0x74>
   12138:	06442703          	lw	a4,100(s0)
   1213c:	00177713          	and	a4,a4,1
   12140:	00071663          	bnez	a4,1214c <fflush+0x4c>
   12144:	2007f793          	and	a5,a5,512
   12148:	04078a63          	beqz	a5,1219c <fflush+0x9c>
   1214c:	00040593          	mv	a1,s0
   12150:	00090513          	mv	a0,s2
   12154:	c81ff0ef          	jal	11dd4 <__sflush_r>
   12158:	06442783          	lw	a5,100(s0)
   1215c:	00050493          	mv	s1,a0
   12160:	0017f793          	and	a5,a5,1
   12164:	00079863          	bnez	a5,12174 <fflush+0x74>
   12168:	00c45783          	lhu	a5,12(s0)
   1216c:	2007f793          	and	a5,a5,512
   12170:	02078c63          	beqz	a5,121a8 <fflush+0xa8>
   12174:	00c12083          	lw	ra,12(sp)
   12178:	00812403          	lw	s0,8(sp)
   1217c:	00012903          	lw	s2,0(sp)
   12180:	00048513          	mv	a0,s1
   12184:	00412483          	lw	s1,4(sp)
   12188:	01010113          	add	sp,sp,16
   1218c:	00008067          	ret
   12190:	00090513          	mv	a0,s2
   12194:	d68fe0ef          	jal	106fc <__sinit>
   12198:	f95ff06f          	j	1212c <fflush+0x2c>
   1219c:	05842503          	lw	a0,88(s0)
   121a0:	b79fe0ef          	jal	10d18 <__retarget_lock_acquire_recursive>
   121a4:	fa9ff06f          	j	1214c <fflush+0x4c>
   121a8:	05842503          	lw	a0,88(s0)
   121ac:	b85fe0ef          	jal	10d30 <__retarget_lock_release_recursive>
   121b0:	fc5ff06f          	j	12174 <fflush+0x74>
   121b4:	00001617          	auipc	a2,0x1
   121b8:	25460613          	add	a2,a2,596 # 13408 <__sglue>
   121bc:	00000597          	auipc	a1,0x0
   121c0:	e6458593          	add	a1,a1,-412 # 12020 <_fflush_r>
   121c4:	00001517          	auipc	a0,0x1
   121c8:	25450513          	add	a0,a0,596 # 13418 <_impure_data>
   121cc:	e00fe06f          	j	107cc <_fwalk_sglue>

000121d0 <_sbrk_r>:
   121d0:	ff010113          	add	sp,sp,-16
   121d4:	00812423          	sw	s0,8(sp)
   121d8:	00050413          	mv	s0,a0
   121dc:	00058513          	mv	a0,a1
   121e0:	d401aa23          	sw	zero,-684(gp) # 1395c <errno>
   121e4:	00112623          	sw	ra,12(sp)
   121e8:	134000ef          	jal	1231c <_sbrk>
   121ec:	fff00793          	li	a5,-1
   121f0:	00f50a63          	beq	a0,a5,12204 <_sbrk_r+0x34>
   121f4:	00c12083          	lw	ra,12(sp)
   121f8:	00812403          	lw	s0,8(sp)
   121fc:	01010113          	add	sp,sp,16
   12200:	00008067          	ret
   12204:	d541a783          	lw	a5,-684(gp) # 1395c <errno>
   12208:	fe0786e3          	beqz	a5,121f4 <_sbrk_r+0x24>
   1220c:	00c12083          	lw	ra,12(sp)
   12210:	00f42023          	sw	a5,0(s0)
   12214:	00812403          	lw	s0,8(sp)
   12218:	01010113          	add	sp,sp,16
   1221c:	00008067          	ret

00012220 <_close>:
   12220:	ff010113          	add	sp,sp,-16
   12224:	00112623          	sw	ra,12(sp)
   12228:	00812423          	sw	s0,8(sp)
   1222c:	03900893          	li	a7,57
   12230:	00000073          	ecall
   12234:	00050413          	mv	s0,a0
   12238:	00054c63          	bltz	a0,12250 <_close+0x30>
   1223c:	00c12083          	lw	ra,12(sp)
   12240:	00040513          	mv	a0,s0
   12244:	00812403          	lw	s0,8(sp)
   12248:	01010113          	add	sp,sp,16
   1224c:	00008067          	ret
   12250:	40800433          	neg	s0,s0
   12254:	188000ef          	jal	123dc <__errno>
   12258:	00852023          	sw	s0,0(a0)
   1225c:	fff00413          	li	s0,-1
   12260:	fddff06f          	j	1223c <_close+0x1c>

00012264 <_exit>:
   12264:	05d00893          	li	a7,93
   12268:	00000073          	ecall
   1226c:	00054463          	bltz	a0,12274 <_exit+0x10>
   12270:	0000006f          	j	12270 <_exit+0xc>
   12274:	ff010113          	add	sp,sp,-16
   12278:	00812423          	sw	s0,8(sp)
   1227c:	00050413          	mv	s0,a0
   12280:	00112623          	sw	ra,12(sp)
   12284:	40800433          	neg	s0,s0
   12288:	154000ef          	jal	123dc <__errno>
   1228c:	00852023          	sw	s0,0(a0)
   12290:	0000006f          	j	12290 <_exit+0x2c>

00012294 <_lseek>:
   12294:	ff010113          	add	sp,sp,-16
   12298:	00112623          	sw	ra,12(sp)
   1229c:	00812423          	sw	s0,8(sp)
   122a0:	03e00893          	li	a7,62
   122a4:	00000073          	ecall
   122a8:	00050413          	mv	s0,a0
   122ac:	00054c63          	bltz	a0,122c4 <_lseek+0x30>
   122b0:	00c12083          	lw	ra,12(sp)
   122b4:	00040513          	mv	a0,s0
   122b8:	00812403          	lw	s0,8(sp)
   122bc:	01010113          	add	sp,sp,16
   122c0:	00008067          	ret
   122c4:	40800433          	neg	s0,s0
   122c8:	114000ef          	jal	123dc <__errno>
   122cc:	00852023          	sw	s0,0(a0)
   122d0:	fff00413          	li	s0,-1
   122d4:	fddff06f          	j	122b0 <_lseek+0x1c>

000122d8 <_read>:
   122d8:	ff010113          	add	sp,sp,-16
   122dc:	00112623          	sw	ra,12(sp)
   122e0:	00812423          	sw	s0,8(sp)
   122e4:	03f00893          	li	a7,63
   122e8:	00000073          	ecall
   122ec:	00050413          	mv	s0,a0
   122f0:	00054c63          	bltz	a0,12308 <_read+0x30>
   122f4:	00c12083          	lw	ra,12(sp)
   122f8:	00040513          	mv	a0,s0
   122fc:	00812403          	lw	s0,8(sp)
   12300:	01010113          	add	sp,sp,16
   12304:	00008067          	ret
   12308:	40800433          	neg	s0,s0
   1230c:	0d0000ef          	jal	123dc <__errno>
   12310:	00852023          	sw	s0,0(a0)
   12314:	fff00413          	li	s0,-1
   12318:	fddff06f          	j	122f4 <_read+0x1c>

0001231c <_sbrk>:
   1231c:	d8818693          	add	a3,gp,-632 # 13990 <heap_end.0>
   12320:	0006a703          	lw	a4,0(a3)
   12324:	ff010113          	add	sp,sp,-16
   12328:	00112623          	sw	ra,12(sp)
   1232c:	00050793          	mv	a5,a0
   12330:	02071063          	bnez	a4,12350 <_sbrk+0x34>
   12334:	0d600893          	li	a7,214
   12338:	00000513          	li	a0,0
   1233c:	00000073          	ecall
   12340:	fff00613          	li	a2,-1
   12344:	00050713          	mv	a4,a0
   12348:	02c50a63          	beq	a0,a2,1237c <_sbrk+0x60>
   1234c:	00a6a023          	sw	a0,0(a3)
   12350:	0d600893          	li	a7,214
   12354:	00e78533          	add	a0,a5,a4
   12358:	00000073          	ecall
   1235c:	0006a703          	lw	a4,0(a3)
   12360:	00e787b3          	add	a5,a5,a4
   12364:	00f51c63          	bne	a0,a5,1237c <_sbrk+0x60>
   12368:	00c12083          	lw	ra,12(sp)
   1236c:	00a6a023          	sw	a0,0(a3)
   12370:	00070513          	mv	a0,a4
   12374:	01010113          	add	sp,sp,16
   12378:	00008067          	ret
   1237c:	060000ef          	jal	123dc <__errno>
   12380:	00c12083          	lw	ra,12(sp)
   12384:	00c00793          	li	a5,12
   12388:	00f52023          	sw	a5,0(a0)
   1238c:	fff00513          	li	a0,-1
   12390:	01010113          	add	sp,sp,16
   12394:	00008067          	ret

00012398 <_write>:
   12398:	ff010113          	add	sp,sp,-16
   1239c:	00112623          	sw	ra,12(sp)
   123a0:	00812423          	sw	s0,8(sp)
   123a4:	04000893          	li	a7,64
   123a8:	00000073          	ecall
   123ac:	00050413          	mv	s0,a0
   123b0:	00054c63          	bltz	a0,123c8 <_write+0x30>
   123b4:	00c12083          	lw	ra,12(sp)
   123b8:	00040513          	mv	a0,s0
   123bc:	00812403          	lw	s0,8(sp)
   123c0:	01010113          	add	sp,sp,16
   123c4:	00008067          	ret
   123c8:	40800433          	neg	s0,s0
   123cc:	010000ef          	jal	123dc <__errno>
   123d0:	00852023          	sw	s0,0(a0)
   123d4:	fff00413          	li	s0,-1
   123d8:	fddff06f          	j	123b4 <_write+0x1c>

000123dc <__errno>:
   123dc:	d3c1a503          	lw	a0,-708(gp) # 13944 <_impure_ptr>
   123e0:	00008067          	ret
