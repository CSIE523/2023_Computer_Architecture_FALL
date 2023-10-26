
binarization_O0.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	ff010113          	add	sp,sp,-16
   10098:	00000593          	li	a1,0
   1009c:	00812423          	sw	s0,8(sp)
   100a0:	00112623          	sw	ra,12(sp)
   100a4:	00050413          	mv	s0,a0
   100a8:	78d000ef          	jal	11034 <__call_exitprocs>
   100ac:	f4c1a783          	lw	a5,-180(gp) # 2391c <__stdio_exit_handler>
   100b0:	00078463          	beqz	a5,100b8 <exit+0x24>
   100b4:	000780e7          	jalr	a5
   100b8:	00040513          	mv	a0,s0
   100bc:	6210d0ef          	jal	1dedc <_exit>

000100c0 <register_fini>:
   100c0:	00000793          	li	a5,0
   100c4:	00078863          	beqz	a5,100d4 <register_fini+0x14>
   100c8:	00001517          	auipc	a0,0x1
   100cc:	d2050513          	add	a0,a0,-736 # 10de8 <__libc_fini_array>
   100d0:	31c0006f          	j	103ec <atexit>
   100d4:	00008067          	ret

000100d8 <_start>:
   100d8:	00014197          	auipc	gp,0x14
   100dc:	8f818193          	add	gp,gp,-1800 # 239d0 <__global_pointer$>
   100e0:	f4818513          	add	a0,gp,-184 # 23918 <completed.1>
   100e4:	54018613          	add	a2,gp,1344 # 23f10 <__BSS_END__>
   100e8:	40a60633          	sub	a2,a2,a0
   100ec:	00000593          	li	a1,0
   100f0:	585000ef          	jal	10e74 <memset>
   100f4:	00001517          	auipc	a0,0x1
   100f8:	cf450513          	add	a0,a0,-780 # 10de8 <__libc_fini_array>
   100fc:	2f0000ef          	jal	103ec <atexit>
   10100:	455000ef          	jal	10d54 <__libc_init_array>
   10104:	00012503          	lw	a0,0(sp)
   10108:	00410593          	add	a1,sp,4
   1010c:	00000613          	li	a2,0
   10110:	15c000ef          	jal	1026c <main>
   10114:	f81ff06f          	j	10094 <exit>

00010118 <__do_global_dtors_aux>:
   10118:	ff010113          	add	sp,sp,-16
   1011c:	00812423          	sw	s0,8(sp)
   10120:	f4818413          	add	s0,gp,-184 # 23918 <completed.1>
   10124:	00044783          	lbu	a5,0(s0)
   10128:	00112623          	sw	ra,12(sp)
   1012c:	02079263          	bnez	a5,10150 <__do_global_dtors_aux+0x38>
   10130:	00000793          	li	a5,0
   10134:	00078a63          	beqz	a5,10148 <__do_global_dtors_aux+0x30>
   10138:	00013517          	auipc	a0,0x13
   1013c:	ec850513          	add	a0,a0,-312 # 23000 <__EH_FRAME_BEGIN__>
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
   10168:	f9018593          	add	a1,gp,-112 # 23960 <object.0>
   1016c:	00013517          	auipc	a0,0x13
   10170:	e9450513          	add	a0,a0,-364 # 23000 <__EH_FRAME_BEGIN__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <exit-0x10094>
   1017c:	00008067          	ret

00010180 <count_leading_zeros_32>:
   10180:	fe010113          	add	sp,sp,-32
   10184:	00812e23          	sw	s0,28(sp)
   10188:	02010413          	add	s0,sp,32
   1018c:	00050793          	mv	a5,a0
   10190:	fef407a3          	sb	a5,-17(s0)
   10194:	fef44783          	lbu	a5,-17(s0)
   10198:	0017d793          	srl	a5,a5,0x1
   1019c:	0ff7f793          	zext.b	a5,a5
   101a0:	fef44703          	lbu	a4,-17(s0)
   101a4:	00e7e7b3          	or	a5,a5,a4
   101a8:	fef407a3          	sb	a5,-17(s0)
   101ac:	fef44783          	lbu	a5,-17(s0)
   101b0:	0027d793          	srl	a5,a5,0x2
   101b4:	0ff7f793          	zext.b	a5,a5
   101b8:	fef44703          	lbu	a4,-17(s0)
   101bc:	00e7e7b3          	or	a5,a5,a4
   101c0:	fef407a3          	sb	a5,-17(s0)
   101c4:	fef44783          	lbu	a5,-17(s0)
   101c8:	0047d793          	srl	a5,a5,0x4
   101cc:	0ff7f793          	zext.b	a5,a5
   101d0:	fef44703          	lbu	a4,-17(s0)
   101d4:	00e7e7b3          	or	a5,a5,a4
   101d8:	fef407a3          	sb	a5,-17(s0)
   101dc:	fef44783          	lbu	a5,-17(s0)
   101e0:	0017d793          	srl	a5,a5,0x1
   101e4:	0ff7f793          	zext.b	a5,a5
   101e8:	0557f793          	and	a5,a5,85
   101ec:	0ff7f793          	zext.b	a5,a5
   101f0:	fef44703          	lbu	a4,-17(s0)
   101f4:	40f707b3          	sub	a5,a4,a5
   101f8:	fef407a3          	sb	a5,-17(s0)
   101fc:	fef44783          	lbu	a5,-17(s0)
   10200:	0027d793          	srl	a5,a5,0x2
   10204:	0ff7f793          	zext.b	a5,a5
   10208:	0337f793          	and	a5,a5,51
   1020c:	0ff7f713          	zext.b	a4,a5
   10210:	fef44783          	lbu	a5,-17(s0)
   10214:	0337f793          	and	a5,a5,51
   10218:	0ff7f793          	zext.b	a5,a5
   1021c:	00f707b3          	add	a5,a4,a5
   10220:	fef407a3          	sb	a5,-17(s0)
   10224:	fef44783          	lbu	a5,-17(s0)
   10228:	0047d793          	srl	a5,a5,0x4
   1022c:	0ff7f793          	zext.b	a5,a5
   10230:	fef44703          	lbu	a4,-17(s0)
   10234:	00e787b3          	add	a5,a5,a4
   10238:	0ff7f793          	zext.b	a5,a5
   1023c:	00f7f793          	and	a5,a5,15
   10240:	fef407a3          	sb	a5,-17(s0)
   10244:	fef44783          	lbu	a5,-17(s0)
   10248:	01f7f793          	and	a5,a5,31
   1024c:	0ff7f793          	zext.b	a5,a5
   10250:	01000713          	li	a4,16
   10254:	40f707b3          	sub	a5,a4,a5
   10258:	0ff7f793          	zext.b	a5,a5
   1025c:	00078513          	mv	a0,a5
   10260:	01c12403          	lw	s0,28(sp)
   10264:	02010113          	add	sp,sp,32
   10268:	00008067          	ret

0001026c <main>:
   1026c:	fd010113          	add	sp,sp,-48
   10270:	02112623          	sw	ra,44(sp)
   10274:	02812423          	sw	s0,40(sp)
   10278:	03010413          	add	s0,sp,48
   1027c:	968057b7          	lui	a5,0x96805
   10280:	01478793          	add	a5,a5,20 # 96805014 <__BSS_END__+0x967e1104>
   10284:	fcf42c23          	sw	a5,-40(s0)
   10288:	fe700793          	li	a5,-25
   1028c:	fcf40e23          	sb	a5,-36(s0)
   10290:	fe600793          	li	a5,-26
   10294:	fef403a3          	sb	a5,-25(s0)
   10298:	fd840793          	add	a5,s0,-40
   1029c:	fef42023          	sw	a5,-32(s0)
   102a0:	fe042623          	sw	zero,-20(s0)
   102a4:	0300006f          	j	102d4 <main+0x68>
   102a8:	fec42783          	lw	a5,-20(s0)
   102ac:	ff078793          	add	a5,a5,-16
   102b0:	008787b3          	add	a5,a5,s0
   102b4:	fe87c783          	lbu	a5,-24(a5)
   102b8:	00078593          	mv	a1,a5
   102bc:	000227b7          	lui	a5,0x22
   102c0:	b0078513          	add	a0,a5,-1280 # 21b00 <__clzsi2+0x8c>
   102c4:	6b0000ef          	jal	10974 <printf>
   102c8:	fec42783          	lw	a5,-20(s0)
   102cc:	00178793          	add	a5,a5,1
   102d0:	fef42623          	sw	a5,-20(s0)
   102d4:	fec42703          	lw	a4,-20(s0)
   102d8:	00400793          	li	a5,4
   102dc:	fce7d6e3          	bge	a5,a4,102a8 <main+0x3c>
   102e0:	fe042423          	sw	zero,-24(s0)
   102e4:	0e40006f          	j	103c8 <main+0x15c>
   102e8:	fe842783          	lw	a5,-24(s0)
   102ec:	fe042703          	lw	a4,-32(s0)
   102f0:	00f707b3          	add	a5,a4,a5
   102f4:	0007c783          	lbu	a5,0(a5)
   102f8:	fe744703          	lbu	a4,-25(s0)
   102fc:	40f707b3          	sub	a5,a4,a5
   10300:	fcf40fa3          	sb	a5,-33(s0)
   10304:	fdf44783          	lbu	a5,-33(s0)
   10308:	00078593          	mv	a1,a5
   1030c:	000227b7          	lui	a5,0x22
   10310:	b0478513          	add	a0,a5,-1276 # 21b04 <__clzsi2+0x90>
   10314:	660000ef          	jal	10974 <printf>
   10318:	fe842583          	lw	a1,-24(s0)
   1031c:	000227b7          	lui	a5,0x22
   10320:	b1078513          	add	a0,a5,-1264 # 21b10 <__clzsi2+0x9c>
   10324:	650000ef          	jal	10974 <printf>
   10328:	fe842783          	lw	a5,-24(s0)
   1032c:	fe042703          	lw	a4,-32(s0)
   10330:	00f707b3          	add	a5,a4,a5
   10334:	0007c783          	lbu	a5,0(a5)
   10338:	00078593          	mv	a1,a5
   1033c:	000227b7          	lui	a5,0x22
   10340:	b1878513          	add	a0,a5,-1256 # 21b18 <__clzsi2+0xa4>
   10344:	630000ef          	jal	10974 <printf>
   10348:	fdf44783          	lbu	a5,-33(s0)
   1034c:	00078513          	mv	a0,a5
   10350:	e31ff0ef          	jal	10180 <count_leading_zeros_32>
   10354:	00050793          	mv	a5,a0
   10358:	fcf40fa3          	sb	a5,-33(s0)
   1035c:	fe842783          	lw	a5,-24(s0)
   10360:	fe042703          	lw	a4,-32(s0)
   10364:	00f707b3          	add	a5,a4,a5
   10368:	0007c783          	lbu	a5,0(a5)
   1036c:	fdf44703          	lbu	a4,-33(s0)
   10370:	00e7fc63          	bgeu	a5,a4,10388 <main+0x11c>
   10374:	fe842783          	lw	a5,-24(s0)
   10378:	fe042703          	lw	a4,-32(s0)
   1037c:	00f707b3          	add	a5,a4,a5
   10380:	00078023          	sb	zero,0(a5)
   10384:	0180006f          	j	1039c <main+0x130>
   10388:	fe842783          	lw	a5,-24(s0)
   1038c:	fe042703          	lw	a4,-32(s0)
   10390:	00f707b3          	add	a5,a4,a5
   10394:	fff00713          	li	a4,-1
   10398:	00e78023          	sb	a4,0(a5)
   1039c:	fe842783          	lw	a5,-24(s0)
   103a0:	fe042703          	lw	a4,-32(s0)
   103a4:	00f707b3          	add	a5,a4,a5
   103a8:	0007c783          	lbu	a5,0(a5)
   103ac:	00078593          	mv	a1,a5
   103b0:	000227b7          	lui	a5,0x22
   103b4:	b2878513          	add	a0,a5,-1240 # 21b28 <__clzsi2+0xb4>
   103b8:	5bc000ef          	jal	10974 <printf>
   103bc:	fe842783          	lw	a5,-24(s0)
   103c0:	00178793          	add	a5,a5,1
   103c4:	fef42423          	sw	a5,-24(s0)
   103c8:	fe842703          	lw	a4,-24(s0)
   103cc:	00400793          	li	a5,4
   103d0:	f0e7dce3          	bge	a5,a4,102e8 <main+0x7c>
   103d4:	00000793          	li	a5,0
   103d8:	00078513          	mv	a0,a5
   103dc:	02c12083          	lw	ra,44(sp)
   103e0:	02812403          	lw	s0,40(sp)
   103e4:	03010113          	add	sp,sp,48
   103e8:	00008067          	ret

000103ec <atexit>:
   103ec:	00050593          	mv	a1,a0
   103f0:	00000693          	li	a3,0
   103f4:	00000613          	li	a2,0
   103f8:	00000513          	li	a0,0
   103fc:	3550006f          	j	10f50 <__register_exitproc>

00010400 <stdio_exit_handler>:
   10400:	00013617          	auipc	a2,0x13
   10404:	dd060613          	add	a2,a2,-560 # 231d0 <__sglue>
   10408:	00006597          	auipc	a1,0x6
   1040c:	13458593          	add	a1,a1,308 # 1653c <_fclose_r>
   10410:	00013517          	auipc	a0,0x13
   10414:	dd050513          	add	a0,a0,-560 # 231e0 <_impure_data>
   10418:	4680006f          	j	10880 <_fwalk_sglue>

0001041c <cleanup_stdio>:
   1041c:	00452583          	lw	a1,4(a0)
   10420:	ff010113          	add	sp,sp,-16
   10424:	00812423          	sw	s0,8(sp)
   10428:	00112623          	sw	ra,12(sp)
   1042c:	fa818793          	add	a5,gp,-88 # 23978 <__sf>
   10430:	00050413          	mv	s0,a0
   10434:	00f58463          	beq	a1,a5,1043c <cleanup_stdio+0x20>
   10438:	104060ef          	jal	1653c <_fclose_r>
   1043c:	00842583          	lw	a1,8(s0)
   10440:	01018793          	add	a5,gp,16 # 239e0 <__global_pointer$+0x10>
   10444:	00f58663          	beq	a1,a5,10450 <cleanup_stdio+0x34>
   10448:	00040513          	mv	a0,s0
   1044c:	0f0060ef          	jal	1653c <_fclose_r>
   10450:	00c42583          	lw	a1,12(s0)
   10454:	07818793          	add	a5,gp,120 # 23a48 <__global_pointer$+0x78>
   10458:	00f58c63          	beq	a1,a5,10470 <cleanup_stdio+0x54>
   1045c:	00040513          	mv	a0,s0
   10460:	00812403          	lw	s0,8(sp)
   10464:	00c12083          	lw	ra,12(sp)
   10468:	01010113          	add	sp,sp,16
   1046c:	0d00606f          	j	1653c <_fclose_r>
   10470:	00c12083          	lw	ra,12(sp)
   10474:	00812403          	lw	s0,8(sp)
   10478:	01010113          	add	sp,sp,16
   1047c:	00008067          	ret

00010480 <__fp_lock>:
   10480:	0645a783          	lw	a5,100(a1)
   10484:	0017f793          	and	a5,a5,1
   10488:	00079863          	bnez	a5,10498 <__fp_lock+0x18>
   1048c:	00c5d783          	lhu	a5,12(a1)
   10490:	2007f793          	and	a5,a5,512
   10494:	00078663          	beqz	a5,104a0 <__fp_lock+0x20>
   10498:	00000513          	li	a0,0
   1049c:	00008067          	ret
   104a0:	0585a503          	lw	a0,88(a1)
   104a4:	ff010113          	add	sp,sp,-16
   104a8:	00112623          	sw	ra,12(sp)
   104ac:	1ad000ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   104b0:	00c12083          	lw	ra,12(sp)
   104b4:	00000513          	li	a0,0
   104b8:	01010113          	add	sp,sp,16
   104bc:	00008067          	ret

000104c0 <__fp_unlock>:
   104c0:	0645a783          	lw	a5,100(a1)
   104c4:	0017f793          	and	a5,a5,1
   104c8:	00079863          	bnez	a5,104d8 <__fp_unlock+0x18>
   104cc:	00c5d783          	lhu	a5,12(a1)
   104d0:	2007f793          	and	a5,a5,512
   104d4:	00078663          	beqz	a5,104e0 <__fp_unlock+0x20>
   104d8:	00000513          	li	a0,0
   104dc:	00008067          	ret
   104e0:	0585a503          	lw	a0,88(a1)
   104e4:	ff010113          	add	sp,sp,-16
   104e8:	00112623          	sw	ra,12(sp)
   104ec:	185000ef          	jal	10e70 <__retarget_lock_release_recursive>
   104f0:	00c12083          	lw	ra,12(sp)
   104f4:	00000513          	li	a0,0
   104f8:	01010113          	add	sp,sp,16
   104fc:	00008067          	ret

00010500 <global_stdio_init.part.0>:
   10500:	fe010113          	add	sp,sp,-32
   10504:	00000797          	auipc	a5,0x0
   10508:	efc78793          	add	a5,a5,-260 # 10400 <stdio_exit_handler>
   1050c:	00112e23          	sw	ra,28(sp)
   10510:	00812c23          	sw	s0,24(sp)
   10514:	00912a23          	sw	s1,20(sp)
   10518:	fa818413          	add	s0,gp,-88 # 23978 <__sf>
   1051c:	01212823          	sw	s2,16(sp)
   10520:	01312623          	sw	s3,12(sp)
   10524:	01412423          	sw	s4,8(sp)
   10528:	00800613          	li	a2,8
   1052c:	00000593          	li	a1,0
   10530:	f4f1a623          	sw	a5,-180(gp) # 2391c <__stdio_exit_handler>
   10534:	00418513          	add	a0,gp,4 # 239d4 <__global_pointer$+0x4>
   10538:	00400793          	li	a5,4
   1053c:	00f42623          	sw	a5,12(s0)
   10540:	00042023          	sw	zero,0(s0)
   10544:	00042223          	sw	zero,4(s0)
   10548:	00042423          	sw	zero,8(s0)
   1054c:	06042223          	sw	zero,100(s0)
   10550:	00042823          	sw	zero,16(s0)
   10554:	00042a23          	sw	zero,20(s0)
   10558:	00042c23          	sw	zero,24(s0)
   1055c:	119000ef          	jal	10e74 <memset>
   10560:	00000a17          	auipc	s4,0x0
   10564:	460a0a13          	add	s4,s4,1120 # 109c0 <__sread>
   10568:	00000997          	auipc	s3,0x0
   1056c:	4bc98993          	add	s3,s3,1212 # 10a24 <__swrite>
   10570:	00000917          	auipc	s2,0x0
   10574:	53c90913          	add	s2,s2,1340 # 10aac <__sseek>
   10578:	00000497          	auipc	s1,0x0
   1057c:	5ac48493          	add	s1,s1,1452 # 10b24 <__sclose>
   10580:	00018513          	mv	a0,gp
   10584:	03442023          	sw	s4,32(s0)
   10588:	03342223          	sw	s3,36(s0)
   1058c:	03242423          	sw	s2,40(s0)
   10590:	02942623          	sw	s1,44(s0)
   10594:	00842e23          	sw	s0,28(s0)
   10598:	0b1000ef          	jal	10e48 <__retarget_lock_init_recursive>
   1059c:	000107b7          	lui	a5,0x10
   105a0:	00978793          	add	a5,a5,9 # 10009 <exit-0x8b>
   105a4:	00800613          	li	a2,8
   105a8:	00000593          	li	a1,0
   105ac:	06c18513          	add	a0,gp,108 # 23a3c <__global_pointer$+0x6c>
   105b0:	06f42a23          	sw	a5,116(s0)
   105b4:	06042423          	sw	zero,104(s0)
   105b8:	06042623          	sw	zero,108(s0)
   105bc:	06042823          	sw	zero,112(s0)
   105c0:	0c042623          	sw	zero,204(s0)
   105c4:	06042c23          	sw	zero,120(s0)
   105c8:	06042e23          	sw	zero,124(s0)
   105cc:	08042023          	sw	zero,128(s0)
   105d0:	0a5000ef          	jal	10e74 <memset>
   105d4:	01018793          	add	a5,gp,16 # 239e0 <__global_pointer$+0x10>
   105d8:	06818513          	add	a0,gp,104 # 23a38 <__global_pointer$+0x68>
   105dc:	08f42223          	sw	a5,132(s0)
   105e0:	09442423          	sw	s4,136(s0)
   105e4:	09342623          	sw	s3,140(s0)
   105e8:	09242823          	sw	s2,144(s0)
   105ec:	08942a23          	sw	s1,148(s0)
   105f0:	059000ef          	jal	10e48 <__retarget_lock_init_recursive>
   105f4:	000207b7          	lui	a5,0x20
   105f8:	01278793          	add	a5,a5,18 # 20012 <__divdf3+0x87e>
   105fc:	00800613          	li	a2,8
   10600:	00000593          	li	a1,0
   10604:	0d418513          	add	a0,gp,212 # 23aa4 <__global_pointer$+0xd4>
   10608:	0cf42e23          	sw	a5,220(s0)
   1060c:	0c042823          	sw	zero,208(s0)
   10610:	0c042a23          	sw	zero,212(s0)
   10614:	0c042c23          	sw	zero,216(s0)
   10618:	12042a23          	sw	zero,308(s0)
   1061c:	0e042023          	sw	zero,224(s0)
   10620:	0e042223          	sw	zero,228(s0)
   10624:	0e042423          	sw	zero,232(s0)
   10628:	04d000ef          	jal	10e74 <memset>
   1062c:	07818793          	add	a5,gp,120 # 23a48 <__global_pointer$+0x78>
   10630:	0f442823          	sw	s4,240(s0)
   10634:	0f342a23          	sw	s3,244(s0)
   10638:	0f242c23          	sw	s2,248(s0)
   1063c:	0e942e23          	sw	s1,252(s0)
   10640:	0ef42623          	sw	a5,236(s0)
   10644:	01812403          	lw	s0,24(sp)
   10648:	01c12083          	lw	ra,28(sp)
   1064c:	01412483          	lw	s1,20(sp)
   10650:	01012903          	lw	s2,16(sp)
   10654:	00c12983          	lw	s3,12(sp)
   10658:	00812a03          	lw	s4,8(sp)
   1065c:	0d018513          	add	a0,gp,208 # 23aa0 <__global_pointer$+0xd0>
   10660:	02010113          	add	sp,sp,32
   10664:	7e40006f          	j	10e48 <__retarget_lock_init_recursive>

00010668 <__sfp>:
   10668:	fe010113          	add	sp,sp,-32
   1066c:	01312623          	sw	s3,12(sp)
   10670:	00050993          	mv	s3,a0
   10674:	f7018513          	add	a0,gp,-144 # 23940 <__lock___sfp_recursive_mutex>
   10678:	00112e23          	sw	ra,28(sp)
   1067c:	00812c23          	sw	s0,24(sp)
   10680:	00912a23          	sw	s1,20(sp)
   10684:	01212823          	sw	s2,16(sp)
   10688:	7d0000ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   1068c:	f4c1a783          	lw	a5,-180(gp) # 2391c <__stdio_exit_handler>
   10690:	10078063          	beqz	a5,10790 <__sfp+0x128>
   10694:	00013917          	auipc	s2,0x13
   10698:	b3c90913          	add	s2,s2,-1220 # 231d0 <__sglue>
   1069c:	fff00493          	li	s1,-1
   106a0:	00492783          	lw	a5,4(s2)
   106a4:	00892403          	lw	s0,8(s2)
   106a8:	fff78793          	add	a5,a5,-1
   106ac:	0007d863          	bgez	a5,106bc <__sfp+0x54>
   106b0:	0900006f          	j	10740 <__sfp+0xd8>
   106b4:	06840413          	add	s0,s0,104
   106b8:	08978463          	beq	a5,s1,10740 <__sfp+0xd8>
   106bc:	00c41703          	lh	a4,12(s0)
   106c0:	fff78793          	add	a5,a5,-1
   106c4:	fe0718e3          	bnez	a4,106b4 <__sfp+0x4c>
   106c8:	ffff07b7          	lui	a5,0xffff0
   106cc:	00178793          	add	a5,a5,1 # ffff0001 <__BSS_END__+0xfffcc0f1>
   106d0:	00f42623          	sw	a5,12(s0)
   106d4:	05840513          	add	a0,s0,88
   106d8:	06042223          	sw	zero,100(s0)
   106dc:	76c000ef          	jal	10e48 <__retarget_lock_init_recursive>
   106e0:	f7018513          	add	a0,gp,-144 # 23940 <__lock___sfp_recursive_mutex>
   106e4:	78c000ef          	jal	10e70 <__retarget_lock_release_recursive>
   106e8:	00800613          	li	a2,8
   106ec:	00042023          	sw	zero,0(s0)
   106f0:	00042423          	sw	zero,8(s0)
   106f4:	00042223          	sw	zero,4(s0)
   106f8:	00042823          	sw	zero,16(s0)
   106fc:	00042a23          	sw	zero,20(s0)
   10700:	00042c23          	sw	zero,24(s0)
   10704:	00000593          	li	a1,0
   10708:	05c40513          	add	a0,s0,92
   1070c:	768000ef          	jal	10e74 <memset>
   10710:	02042823          	sw	zero,48(s0)
   10714:	02042a23          	sw	zero,52(s0)
   10718:	04042223          	sw	zero,68(s0)
   1071c:	04042423          	sw	zero,72(s0)
   10720:	01c12083          	lw	ra,28(sp)
   10724:	00040513          	mv	a0,s0
   10728:	01812403          	lw	s0,24(sp)
   1072c:	01412483          	lw	s1,20(sp)
   10730:	01012903          	lw	s2,16(sp)
   10734:	00c12983          	lw	s3,12(sp)
   10738:	02010113          	add	sp,sp,32
   1073c:	00008067          	ret
   10740:	00092403          	lw	s0,0(s2)
   10744:	00040663          	beqz	s0,10750 <__sfp+0xe8>
   10748:	00040913          	mv	s2,s0
   1074c:	f55ff06f          	j	106a0 <__sfp+0x38>
   10750:	1ac00593          	li	a1,428
   10754:	00098513          	mv	a0,s3
   10758:	669000ef          	jal	115c0 <_malloc_r>
   1075c:	00050413          	mv	s0,a0
   10760:	02050c63          	beqz	a0,10798 <__sfp+0x130>
   10764:	00c50513          	add	a0,a0,12
   10768:	00400793          	li	a5,4
   1076c:	00042023          	sw	zero,0(s0)
   10770:	00f42223          	sw	a5,4(s0)
   10774:	00a42423          	sw	a0,8(s0)
   10778:	1a000613          	li	a2,416
   1077c:	00000593          	li	a1,0
   10780:	6f4000ef          	jal	10e74 <memset>
   10784:	00892023          	sw	s0,0(s2)
   10788:	00040913          	mv	s2,s0
   1078c:	f15ff06f          	j	106a0 <__sfp+0x38>
   10790:	d71ff0ef          	jal	10500 <global_stdio_init.part.0>
   10794:	f01ff06f          	j	10694 <__sfp+0x2c>
   10798:	00092023          	sw	zero,0(s2)
   1079c:	f7018513          	add	a0,gp,-144 # 23940 <__lock___sfp_recursive_mutex>
   107a0:	6d0000ef          	jal	10e70 <__retarget_lock_release_recursive>
   107a4:	00c00793          	li	a5,12
   107a8:	00f9a023          	sw	a5,0(s3)
   107ac:	f75ff06f          	j	10720 <__sfp+0xb8>

000107b0 <__sinit>:
   107b0:	ff010113          	add	sp,sp,-16
   107b4:	00812423          	sw	s0,8(sp)
   107b8:	00050413          	mv	s0,a0
   107bc:	f7018513          	add	a0,gp,-144 # 23940 <__lock___sfp_recursive_mutex>
   107c0:	00112623          	sw	ra,12(sp)
   107c4:	694000ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   107c8:	03442783          	lw	a5,52(s0)
   107cc:	00079c63          	bnez	a5,107e4 <__sinit+0x34>
   107d0:	00000797          	auipc	a5,0x0
   107d4:	c4c78793          	add	a5,a5,-948 # 1041c <cleanup_stdio>
   107d8:	02f42a23          	sw	a5,52(s0)
   107dc:	f4c1a783          	lw	a5,-180(gp) # 2391c <__stdio_exit_handler>
   107e0:	00078c63          	beqz	a5,107f8 <__sinit+0x48>
   107e4:	00812403          	lw	s0,8(sp)
   107e8:	00c12083          	lw	ra,12(sp)
   107ec:	f7018513          	add	a0,gp,-144 # 23940 <__lock___sfp_recursive_mutex>
   107f0:	01010113          	add	sp,sp,16
   107f4:	67c0006f          	j	10e70 <__retarget_lock_release_recursive>
   107f8:	d09ff0ef          	jal	10500 <global_stdio_init.part.0>
   107fc:	00812403          	lw	s0,8(sp)
   10800:	00c12083          	lw	ra,12(sp)
   10804:	f7018513          	add	a0,gp,-144 # 23940 <__lock___sfp_recursive_mutex>
   10808:	01010113          	add	sp,sp,16
   1080c:	6640006f          	j	10e70 <__retarget_lock_release_recursive>

00010810 <__sfp_lock_acquire>:
   10810:	f7018513          	add	a0,gp,-144 # 23940 <__lock___sfp_recursive_mutex>
   10814:	6440006f          	j	10e58 <__retarget_lock_acquire_recursive>

00010818 <__sfp_lock_release>:
   10818:	f7018513          	add	a0,gp,-144 # 23940 <__lock___sfp_recursive_mutex>
   1081c:	6540006f          	j	10e70 <__retarget_lock_release_recursive>

00010820 <__fp_lock_all>:
   10820:	ff010113          	add	sp,sp,-16
   10824:	f7018513          	add	a0,gp,-144 # 23940 <__lock___sfp_recursive_mutex>
   10828:	00112623          	sw	ra,12(sp)
   1082c:	62c000ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   10830:	00c12083          	lw	ra,12(sp)
   10834:	00013617          	auipc	a2,0x13
   10838:	99c60613          	add	a2,a2,-1636 # 231d0 <__sglue>
   1083c:	00000597          	auipc	a1,0x0
   10840:	c4458593          	add	a1,a1,-956 # 10480 <__fp_lock>
   10844:	00000513          	li	a0,0
   10848:	01010113          	add	sp,sp,16
   1084c:	0340006f          	j	10880 <_fwalk_sglue>

00010850 <__fp_unlock_all>:
   10850:	ff010113          	add	sp,sp,-16
   10854:	00013617          	auipc	a2,0x13
   10858:	97c60613          	add	a2,a2,-1668 # 231d0 <__sglue>
   1085c:	00000597          	auipc	a1,0x0
   10860:	c6458593          	add	a1,a1,-924 # 104c0 <__fp_unlock>
   10864:	00000513          	li	a0,0
   10868:	00112623          	sw	ra,12(sp)
   1086c:	014000ef          	jal	10880 <_fwalk_sglue>
   10870:	00c12083          	lw	ra,12(sp)
   10874:	f7018513          	add	a0,gp,-144 # 23940 <__lock___sfp_recursive_mutex>
   10878:	01010113          	add	sp,sp,16
   1087c:	5f40006f          	j	10e70 <__retarget_lock_release_recursive>

00010880 <_fwalk_sglue>:
   10880:	fd010113          	add	sp,sp,-48
   10884:	03212023          	sw	s2,32(sp)
   10888:	01312e23          	sw	s3,28(sp)
   1088c:	01412c23          	sw	s4,24(sp)
   10890:	01512a23          	sw	s5,20(sp)
   10894:	01612823          	sw	s6,16(sp)
   10898:	01712623          	sw	s7,12(sp)
   1089c:	02112623          	sw	ra,44(sp)
   108a0:	02812423          	sw	s0,40(sp)
   108a4:	02912223          	sw	s1,36(sp)
   108a8:	00050b13          	mv	s6,a0
   108ac:	00058b93          	mv	s7,a1
   108b0:	00060a93          	mv	s5,a2
   108b4:	00000a13          	li	s4,0
   108b8:	00100993          	li	s3,1
   108bc:	fff00913          	li	s2,-1
   108c0:	004aa483          	lw	s1,4(s5)
   108c4:	008aa403          	lw	s0,8(s5)
   108c8:	fff48493          	add	s1,s1,-1
   108cc:	0204c863          	bltz	s1,108fc <_fwalk_sglue+0x7c>
   108d0:	00c45783          	lhu	a5,12(s0)
   108d4:	00f9fe63          	bgeu	s3,a5,108f0 <_fwalk_sglue+0x70>
   108d8:	00e41783          	lh	a5,14(s0)
   108dc:	00040593          	mv	a1,s0
   108e0:	000b0513          	mv	a0,s6
   108e4:	01278663          	beq	a5,s2,108f0 <_fwalk_sglue+0x70>
   108e8:	000b80e7          	jalr	s7
   108ec:	00aa6a33          	or	s4,s4,a0
   108f0:	fff48493          	add	s1,s1,-1
   108f4:	06840413          	add	s0,s0,104
   108f8:	fd249ce3          	bne	s1,s2,108d0 <_fwalk_sglue+0x50>
   108fc:	000aaa83          	lw	s5,0(s5)
   10900:	fc0a90e3          	bnez	s5,108c0 <_fwalk_sglue+0x40>
   10904:	02c12083          	lw	ra,44(sp)
   10908:	02812403          	lw	s0,40(sp)
   1090c:	02412483          	lw	s1,36(sp)
   10910:	02012903          	lw	s2,32(sp)
   10914:	01c12983          	lw	s3,28(sp)
   10918:	01412a83          	lw	s5,20(sp)
   1091c:	01012b03          	lw	s6,16(sp)
   10920:	00c12b83          	lw	s7,12(sp)
   10924:	000a0513          	mv	a0,s4
   10928:	01812a03          	lw	s4,24(sp)
   1092c:	03010113          	add	sp,sp,48
   10930:	00008067          	ret

00010934 <_printf_r>:
   10934:	fc010113          	add	sp,sp,-64
   10938:	02c12423          	sw	a2,40(sp)
   1093c:	02d12623          	sw	a3,44(sp)
   10940:	02e12823          	sw	a4,48(sp)
   10944:	02f12a23          	sw	a5,52(sp)
   10948:	03012c23          	sw	a6,56(sp)
   1094c:	03112e23          	sw	a7,60(sp)
   10950:	00058613          	mv	a2,a1
   10954:	00852583          	lw	a1,8(a0)
   10958:	02810693          	add	a3,sp,40
   1095c:	00112e23          	sw	ra,28(sp)
   10960:	00d12623          	sw	a3,12(sp)
   10964:	434010ef          	jal	11d98 <_vfprintf_r>
   10968:	01c12083          	lw	ra,28(sp)
   1096c:	04010113          	add	sp,sp,64
   10970:	00008067          	ret

00010974 <printf>:
   10974:	fc010113          	add	sp,sp,-64
   10978:	02c12423          	sw	a2,40(sp)
   1097c:	02d12623          	sw	a3,44(sp)
   10980:	f341a303          	lw	t1,-204(gp) # 23904 <_impure_ptr>
   10984:	02b12223          	sw	a1,36(sp)
   10988:	02e12823          	sw	a4,48(sp)
   1098c:	02f12a23          	sw	a5,52(sp)
   10990:	03012c23          	sw	a6,56(sp)
   10994:	03112e23          	sw	a7,60(sp)
   10998:	00832583          	lw	a1,8(t1) # 1017c <frame_dummy+0x1c>
   1099c:	02410693          	add	a3,sp,36
   109a0:	00050613          	mv	a2,a0
   109a4:	00030513          	mv	a0,t1
   109a8:	00112e23          	sw	ra,28(sp)
   109ac:	00d12623          	sw	a3,12(sp)
   109b0:	3e8010ef          	jal	11d98 <_vfprintf_r>
   109b4:	01c12083          	lw	ra,28(sp)
   109b8:	04010113          	add	sp,sp,64
   109bc:	00008067          	ret

000109c0 <__sread>:
   109c0:	ff010113          	add	sp,sp,-16
   109c4:	00812423          	sw	s0,8(sp)
   109c8:	00058413          	mv	s0,a1
   109cc:	00e59583          	lh	a1,14(a1)
   109d0:	00112623          	sw	ra,12(sp)
   109d4:	2c8000ef          	jal	10c9c <_read_r>
   109d8:	02054063          	bltz	a0,109f8 <__sread+0x38>
   109dc:	05042783          	lw	a5,80(s0)
   109e0:	00c12083          	lw	ra,12(sp)
   109e4:	00a787b3          	add	a5,a5,a0
   109e8:	04f42823          	sw	a5,80(s0)
   109ec:	00812403          	lw	s0,8(sp)
   109f0:	01010113          	add	sp,sp,16
   109f4:	00008067          	ret
   109f8:	00c45783          	lhu	a5,12(s0)
   109fc:	fffff737          	lui	a4,0xfffff
   10a00:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffdb0ef>
   10a04:	00e7f7b3          	and	a5,a5,a4
   10a08:	00c12083          	lw	ra,12(sp)
   10a0c:	00f41623          	sh	a5,12(s0)
   10a10:	00812403          	lw	s0,8(sp)
   10a14:	01010113          	add	sp,sp,16
   10a18:	00008067          	ret

00010a1c <__seofread>:
   10a1c:	00000513          	li	a0,0
   10a20:	00008067          	ret

00010a24 <__swrite>:
   10a24:	00c59783          	lh	a5,12(a1)
   10a28:	fe010113          	add	sp,sp,-32
   10a2c:	00812c23          	sw	s0,24(sp)
   10a30:	00912a23          	sw	s1,20(sp)
   10a34:	01212823          	sw	s2,16(sp)
   10a38:	01312623          	sw	s3,12(sp)
   10a3c:	00112e23          	sw	ra,28(sp)
   10a40:	1007f713          	and	a4,a5,256
   10a44:	00058413          	mv	s0,a1
   10a48:	00050493          	mv	s1,a0
   10a4c:	00060913          	mv	s2,a2
   10a50:	00068993          	mv	s3,a3
   10a54:	04071063          	bnez	a4,10a94 <__swrite+0x70>
   10a58:	fffff737          	lui	a4,0xfffff
   10a5c:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffdb0ef>
   10a60:	00e7f7b3          	and	a5,a5,a4
   10a64:	00e41583          	lh	a1,14(s0)
   10a68:	00f41623          	sh	a5,12(s0)
   10a6c:	01812403          	lw	s0,24(sp)
   10a70:	01c12083          	lw	ra,28(sp)
   10a74:	00098693          	mv	a3,s3
   10a78:	00090613          	mv	a2,s2
   10a7c:	00c12983          	lw	s3,12(sp)
   10a80:	01012903          	lw	s2,16(sp)
   10a84:	00048513          	mv	a0,s1
   10a88:	01412483          	lw	s1,20(sp)
   10a8c:	02010113          	add	sp,sp,32
   10a90:	2680006f          	j	10cf8 <_write_r>
   10a94:	00e59583          	lh	a1,14(a1)
   10a98:	00200693          	li	a3,2
   10a9c:	00000613          	li	a2,0
   10aa0:	1a0000ef          	jal	10c40 <_lseek_r>
   10aa4:	00c41783          	lh	a5,12(s0)
   10aa8:	fb1ff06f          	j	10a58 <__swrite+0x34>

00010aac <__sseek>:
   10aac:	ff010113          	add	sp,sp,-16
   10ab0:	00812423          	sw	s0,8(sp)
   10ab4:	00058413          	mv	s0,a1
   10ab8:	00e59583          	lh	a1,14(a1)
   10abc:	00112623          	sw	ra,12(sp)
   10ac0:	180000ef          	jal	10c40 <_lseek_r>
   10ac4:	fff00793          	li	a5,-1
   10ac8:	02f50863          	beq	a0,a5,10af8 <__sseek+0x4c>
   10acc:	00c45783          	lhu	a5,12(s0)
   10ad0:	00001737          	lui	a4,0x1
   10ad4:	00c12083          	lw	ra,12(sp)
   10ad8:	00e7e7b3          	or	a5,a5,a4
   10adc:	01079793          	sll	a5,a5,0x10
   10ae0:	4107d793          	sra	a5,a5,0x10
   10ae4:	04a42823          	sw	a0,80(s0)
   10ae8:	00f41623          	sh	a5,12(s0)
   10aec:	00812403          	lw	s0,8(sp)
   10af0:	01010113          	add	sp,sp,16
   10af4:	00008067          	ret
   10af8:	00c45783          	lhu	a5,12(s0)
   10afc:	fffff737          	lui	a4,0xfffff
   10b00:	fff70713          	add	a4,a4,-1 # ffffefff <__BSS_END__+0xfffdb0ef>
   10b04:	00e7f7b3          	and	a5,a5,a4
   10b08:	01079793          	sll	a5,a5,0x10
   10b0c:	4107d793          	sra	a5,a5,0x10
   10b10:	00c12083          	lw	ra,12(sp)
   10b14:	00f41623          	sh	a5,12(s0)
   10b18:	00812403          	lw	s0,8(sp)
   10b1c:	01010113          	add	sp,sp,16
   10b20:	00008067          	ret

00010b24 <__sclose>:
   10b24:	00e59583          	lh	a1,14(a1)
   10b28:	0040006f          	j	10b2c <_close_r>

00010b2c <_close_r>:
   10b2c:	ff010113          	add	sp,sp,-16
   10b30:	00812423          	sw	s0,8(sp)
   10b34:	00050413          	mv	s0,a0
   10b38:	00058513          	mv	a0,a1
   10b3c:	f401a823          	sw	zero,-176(gp) # 23920 <errno>
   10b40:	00112623          	sw	ra,12(sp)
   10b44:	3540d0ef          	jal	1de98 <_close>
   10b48:	fff00793          	li	a5,-1
   10b4c:	00f50a63          	beq	a0,a5,10b60 <_close_r+0x34>
   10b50:	00c12083          	lw	ra,12(sp)
   10b54:	00812403          	lw	s0,8(sp)
   10b58:	01010113          	add	sp,sp,16
   10b5c:	00008067          	ret
   10b60:	f501a783          	lw	a5,-176(gp) # 23920 <errno>
   10b64:	fe0786e3          	beqz	a5,10b50 <_close_r+0x24>
   10b68:	00c12083          	lw	ra,12(sp)
   10b6c:	00f42023          	sw	a5,0(s0)
   10b70:	00812403          	lw	s0,8(sp)
   10b74:	01010113          	add	sp,sp,16
   10b78:	00008067          	ret

00010b7c <_reclaim_reent>:
   10b7c:	f341a783          	lw	a5,-204(gp) # 23904 <_impure_ptr>
   10b80:	0aa78e63          	beq	a5,a0,10c3c <_reclaim_reent+0xc0>
   10b84:	04452583          	lw	a1,68(a0)
   10b88:	fe010113          	add	sp,sp,-32
   10b8c:	00912a23          	sw	s1,20(sp)
   10b90:	00112e23          	sw	ra,28(sp)
   10b94:	00050493          	mv	s1,a0
   10b98:	04058c63          	beqz	a1,10bf0 <_reclaim_reent+0x74>
   10b9c:	01212823          	sw	s2,16(sp)
   10ba0:	01312623          	sw	s3,12(sp)
   10ba4:	00812c23          	sw	s0,24(sp)
   10ba8:	00000913          	li	s2,0
   10bac:	08000993          	li	s3,128
   10bb0:	012587b3          	add	a5,a1,s2
   10bb4:	0007a403          	lw	s0,0(a5)
   10bb8:	00040e63          	beqz	s0,10bd4 <_reclaim_reent+0x58>
   10bbc:	00040593          	mv	a1,s0
   10bc0:	00042403          	lw	s0,0(s0)
   10bc4:	00048513          	mv	a0,s1
   10bc8:	6f4000ef          	jal	112bc <_free_r>
   10bcc:	fe0418e3          	bnez	s0,10bbc <_reclaim_reent+0x40>
   10bd0:	0444a583          	lw	a1,68(s1)
   10bd4:	00490913          	add	s2,s2,4
   10bd8:	fd391ce3          	bne	s2,s3,10bb0 <_reclaim_reent+0x34>
   10bdc:	00048513          	mv	a0,s1
   10be0:	6dc000ef          	jal	112bc <_free_r>
   10be4:	01812403          	lw	s0,24(sp)
   10be8:	01012903          	lw	s2,16(sp)
   10bec:	00c12983          	lw	s3,12(sp)
   10bf0:	0384a583          	lw	a1,56(s1)
   10bf4:	00058663          	beqz	a1,10c00 <_reclaim_reent+0x84>
   10bf8:	00048513          	mv	a0,s1
   10bfc:	6c0000ef          	jal	112bc <_free_r>
   10c00:	04c4a583          	lw	a1,76(s1)
   10c04:	00058663          	beqz	a1,10c10 <_reclaim_reent+0x94>
   10c08:	00048513          	mv	a0,s1
   10c0c:	6b0000ef          	jal	112bc <_free_r>
   10c10:	0344a783          	lw	a5,52(s1)
   10c14:	00078c63          	beqz	a5,10c2c <_reclaim_reent+0xb0>
   10c18:	01c12083          	lw	ra,28(sp)
   10c1c:	00048513          	mv	a0,s1
   10c20:	01412483          	lw	s1,20(sp)
   10c24:	02010113          	add	sp,sp,32
   10c28:	00078067          	jr	a5
   10c2c:	01c12083          	lw	ra,28(sp)
   10c30:	01412483          	lw	s1,20(sp)
   10c34:	02010113          	add	sp,sp,32
   10c38:	00008067          	ret
   10c3c:	00008067          	ret

00010c40 <_lseek_r>:
   10c40:	ff010113          	add	sp,sp,-16
   10c44:	00058713          	mv	a4,a1
   10c48:	00812423          	sw	s0,8(sp)
   10c4c:	00060593          	mv	a1,a2
   10c50:	00050413          	mv	s0,a0
   10c54:	00068613          	mv	a2,a3
   10c58:	00070513          	mv	a0,a4
   10c5c:	f401a823          	sw	zero,-176(gp) # 23920 <errno>
   10c60:	00112623          	sw	ra,12(sp)
   10c64:	3740d0ef          	jal	1dfd8 <_lseek>
   10c68:	fff00793          	li	a5,-1
   10c6c:	00f50a63          	beq	a0,a5,10c80 <_lseek_r+0x40>
   10c70:	00c12083          	lw	ra,12(sp)
   10c74:	00812403          	lw	s0,8(sp)
   10c78:	01010113          	add	sp,sp,16
   10c7c:	00008067          	ret
   10c80:	f501a783          	lw	a5,-176(gp) # 23920 <errno>
   10c84:	fe0786e3          	beqz	a5,10c70 <_lseek_r+0x30>
   10c88:	00c12083          	lw	ra,12(sp)
   10c8c:	00f42023          	sw	a5,0(s0)
   10c90:	00812403          	lw	s0,8(sp)
   10c94:	01010113          	add	sp,sp,16
   10c98:	00008067          	ret

00010c9c <_read_r>:
   10c9c:	ff010113          	add	sp,sp,-16
   10ca0:	00058713          	mv	a4,a1
   10ca4:	00812423          	sw	s0,8(sp)
   10ca8:	00060593          	mv	a1,a2
   10cac:	00050413          	mv	s0,a0
   10cb0:	00068613          	mv	a2,a3
   10cb4:	00070513          	mv	a0,a4
   10cb8:	f401a823          	sw	zero,-176(gp) # 23920 <errno>
   10cbc:	00112623          	sw	ra,12(sp)
   10cc0:	35c0d0ef          	jal	1e01c <_read>
   10cc4:	fff00793          	li	a5,-1
   10cc8:	00f50a63          	beq	a0,a5,10cdc <_read_r+0x40>
   10ccc:	00c12083          	lw	ra,12(sp)
   10cd0:	00812403          	lw	s0,8(sp)
   10cd4:	01010113          	add	sp,sp,16
   10cd8:	00008067          	ret
   10cdc:	f501a783          	lw	a5,-176(gp) # 23920 <errno>
   10ce0:	fe0786e3          	beqz	a5,10ccc <_read_r+0x30>
   10ce4:	00c12083          	lw	ra,12(sp)
   10ce8:	00f42023          	sw	a5,0(s0)
   10cec:	00812403          	lw	s0,8(sp)
   10cf0:	01010113          	add	sp,sp,16
   10cf4:	00008067          	ret

00010cf8 <_write_r>:
   10cf8:	ff010113          	add	sp,sp,-16
   10cfc:	00058713          	mv	a4,a1
   10d00:	00812423          	sw	s0,8(sp)
   10d04:	00060593          	mv	a1,a2
   10d08:	00050413          	mv	s0,a0
   10d0c:	00068613          	mv	a2,a3
   10d10:	00070513          	mv	a0,a4
   10d14:	f401a823          	sw	zero,-176(gp) # 23920 <errno>
   10d18:	00112623          	sw	ra,12(sp)
   10d1c:	3c00d0ef          	jal	1e0dc <_write>
   10d20:	fff00793          	li	a5,-1
   10d24:	00f50a63          	beq	a0,a5,10d38 <_write_r+0x40>
   10d28:	00c12083          	lw	ra,12(sp)
   10d2c:	00812403          	lw	s0,8(sp)
   10d30:	01010113          	add	sp,sp,16
   10d34:	00008067          	ret
   10d38:	f501a783          	lw	a5,-176(gp) # 23920 <errno>
   10d3c:	fe0786e3          	beqz	a5,10d28 <_write_r+0x30>
   10d40:	00c12083          	lw	ra,12(sp)
   10d44:	00f42023          	sw	a5,0(s0)
   10d48:	00812403          	lw	s0,8(sp)
   10d4c:	01010113          	add	sp,sp,16
   10d50:	00008067          	ret

00010d54 <__libc_init_array>:
   10d54:	ff010113          	add	sp,sp,-16
   10d58:	00812423          	sw	s0,8(sp)
   10d5c:	01212023          	sw	s2,0(sp)
   10d60:	00012797          	auipc	a5,0x12
   10d64:	46078793          	add	a5,a5,1120 # 231c0 <__init_array_start>
   10d68:	00012417          	auipc	s0,0x12
   10d6c:	45840413          	add	s0,s0,1112 # 231c0 <__init_array_start>
   10d70:	00112623          	sw	ra,12(sp)
   10d74:	00912223          	sw	s1,4(sp)
   10d78:	40878933          	sub	s2,a5,s0
   10d7c:	02878063          	beq	a5,s0,10d9c <__libc_init_array+0x48>
   10d80:	40295913          	sra	s2,s2,0x2
   10d84:	00000493          	li	s1,0
   10d88:	00042783          	lw	a5,0(s0)
   10d8c:	00148493          	add	s1,s1,1
   10d90:	00440413          	add	s0,s0,4
   10d94:	000780e7          	jalr	a5
   10d98:	ff24e8e3          	bltu	s1,s2,10d88 <__libc_init_array+0x34>
   10d9c:	00012797          	auipc	a5,0x12
   10da0:	42c78793          	add	a5,a5,1068 # 231c8 <__do_global_dtors_aux_fini_array_entry>
   10da4:	00012417          	auipc	s0,0x12
   10da8:	41c40413          	add	s0,s0,1052 # 231c0 <__init_array_start>
   10dac:	40878933          	sub	s2,a5,s0
   10db0:	40295913          	sra	s2,s2,0x2
   10db4:	00878e63          	beq	a5,s0,10dd0 <__libc_init_array+0x7c>
   10db8:	00000493          	li	s1,0
   10dbc:	00042783          	lw	a5,0(s0)
   10dc0:	00148493          	add	s1,s1,1
   10dc4:	00440413          	add	s0,s0,4
   10dc8:	000780e7          	jalr	a5
   10dcc:	ff24e8e3          	bltu	s1,s2,10dbc <__libc_init_array+0x68>
   10dd0:	00c12083          	lw	ra,12(sp)
   10dd4:	00812403          	lw	s0,8(sp)
   10dd8:	00412483          	lw	s1,4(sp)
   10ddc:	00012903          	lw	s2,0(sp)
   10de0:	01010113          	add	sp,sp,16
   10de4:	00008067          	ret

00010de8 <__libc_fini_array>:
   10de8:	ff010113          	add	sp,sp,-16
   10dec:	00812423          	sw	s0,8(sp)
   10df0:	00012797          	auipc	a5,0x12
   10df4:	3d878793          	add	a5,a5,984 # 231c8 <__do_global_dtors_aux_fini_array_entry>
   10df8:	00012417          	auipc	s0,0x12
   10dfc:	3d440413          	add	s0,s0,980 # 231cc <__fini_array_end>
   10e00:	40f40433          	sub	s0,s0,a5
   10e04:	00912223          	sw	s1,4(sp)
   10e08:	00112623          	sw	ra,12(sp)
   10e0c:	40245493          	sra	s1,s0,0x2
   10e10:	02048063          	beqz	s1,10e30 <__libc_fini_array+0x48>
   10e14:	ffc40413          	add	s0,s0,-4
   10e18:	00f40433          	add	s0,s0,a5
   10e1c:	00042783          	lw	a5,0(s0)
   10e20:	fff48493          	add	s1,s1,-1
   10e24:	ffc40413          	add	s0,s0,-4
   10e28:	000780e7          	jalr	a5
   10e2c:	fe0498e3          	bnez	s1,10e1c <__libc_fini_array+0x34>
   10e30:	00c12083          	lw	ra,12(sp)
   10e34:	00812403          	lw	s0,8(sp)
   10e38:	00412483          	lw	s1,4(sp)
   10e3c:	01010113          	add	sp,sp,16
   10e40:	00008067          	ret

00010e44 <__retarget_lock_init>:
   10e44:	00008067          	ret

00010e48 <__retarget_lock_init_recursive>:
   10e48:	00008067          	ret

00010e4c <__retarget_lock_close>:
   10e4c:	00008067          	ret

00010e50 <__retarget_lock_close_recursive>:
   10e50:	00008067          	ret

00010e54 <__retarget_lock_acquire>:
   10e54:	00008067          	ret

00010e58 <__retarget_lock_acquire_recursive>:
   10e58:	00008067          	ret

00010e5c <__retarget_lock_try_acquire>:
   10e5c:	00100513          	li	a0,1
   10e60:	00008067          	ret

00010e64 <__retarget_lock_try_acquire_recursive>:
   10e64:	00100513          	li	a0,1
   10e68:	00008067          	ret

00010e6c <__retarget_lock_release>:
   10e6c:	00008067          	ret

00010e70 <__retarget_lock_release_recursive>:
   10e70:	00008067          	ret

00010e74 <memset>:
   10e74:	00f00313          	li	t1,15
   10e78:	00050713          	mv	a4,a0
   10e7c:	02c37e63          	bgeu	t1,a2,10eb8 <memset+0x44>
   10e80:	00f77793          	and	a5,a4,15
   10e84:	0a079063          	bnez	a5,10f24 <memset+0xb0>
   10e88:	08059263          	bnez	a1,10f0c <memset+0x98>
   10e8c:	ff067693          	and	a3,a2,-16
   10e90:	00f67613          	and	a2,a2,15
   10e94:	00e686b3          	add	a3,a3,a4
   10e98:	00b72023          	sw	a1,0(a4)
   10e9c:	00b72223          	sw	a1,4(a4)
   10ea0:	00b72423          	sw	a1,8(a4)
   10ea4:	00b72623          	sw	a1,12(a4)
   10ea8:	01070713          	add	a4,a4,16
   10eac:	fed766e3          	bltu	a4,a3,10e98 <memset+0x24>
   10eb0:	00061463          	bnez	a2,10eb8 <memset+0x44>
   10eb4:	00008067          	ret
   10eb8:	40c306b3          	sub	a3,t1,a2
   10ebc:	00269693          	sll	a3,a3,0x2
   10ec0:	00000297          	auipc	t0,0x0
   10ec4:	005686b3          	add	a3,a3,t0
   10ec8:	00c68067          	jr	12(a3)
   10ecc:	00b70723          	sb	a1,14(a4)
   10ed0:	00b706a3          	sb	a1,13(a4)
   10ed4:	00b70623          	sb	a1,12(a4)
   10ed8:	00b705a3          	sb	a1,11(a4)
   10edc:	00b70523          	sb	a1,10(a4)
   10ee0:	00b704a3          	sb	a1,9(a4)
   10ee4:	00b70423          	sb	a1,8(a4)
   10ee8:	00b703a3          	sb	a1,7(a4)
   10eec:	00b70323          	sb	a1,6(a4)
   10ef0:	00b702a3          	sb	a1,5(a4)
   10ef4:	00b70223          	sb	a1,4(a4)
   10ef8:	00b701a3          	sb	a1,3(a4)
   10efc:	00b70123          	sb	a1,2(a4)
   10f00:	00b700a3          	sb	a1,1(a4)
   10f04:	00b70023          	sb	a1,0(a4)
   10f08:	00008067          	ret
   10f0c:	0ff5f593          	zext.b	a1,a1
   10f10:	00859693          	sll	a3,a1,0x8
   10f14:	00d5e5b3          	or	a1,a1,a3
   10f18:	01059693          	sll	a3,a1,0x10
   10f1c:	00d5e5b3          	or	a1,a1,a3
   10f20:	f6dff06f          	j	10e8c <memset+0x18>
   10f24:	00279693          	sll	a3,a5,0x2
   10f28:	00000297          	auipc	t0,0x0
   10f2c:	005686b3          	add	a3,a3,t0
   10f30:	00008293          	mv	t0,ra
   10f34:	fa0680e7          	jalr	-96(a3)
   10f38:	00028093          	mv	ra,t0
   10f3c:	ff078793          	add	a5,a5,-16
   10f40:	40f70733          	sub	a4,a4,a5
   10f44:	00f60633          	add	a2,a2,a5
   10f48:	f6c378e3          	bgeu	t1,a2,10eb8 <memset+0x44>
   10f4c:	f3dff06f          	j	10e88 <memset+0x14>

00010f50 <__register_exitproc>:
   10f50:	fe010113          	add	sp,sp,-32
   10f54:	01212823          	sw	s2,16(sp)
   10f58:	f3818913          	add	s2,gp,-200 # 23908 <__atexit_recursive_mutex>
   10f5c:	00812c23          	sw	s0,24(sp)
   10f60:	00050413          	mv	s0,a0
   10f64:	00092503          	lw	a0,0(s2)
   10f68:	00912a23          	sw	s1,20(sp)
   10f6c:	01312623          	sw	s3,12(sp)
   10f70:	01412423          	sw	s4,8(sp)
   10f74:	00112e23          	sw	ra,28(sp)
   10f78:	00058493          	mv	s1,a1
   10f7c:	00060a13          	mv	s4,a2
   10f80:	00068993          	mv	s3,a3
   10f84:	ed5ff0ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   10f88:	f7418713          	add	a4,gp,-140 # 23944 <__atexit>
   10f8c:	00072783          	lw	a5,0(a4)
   10f90:	08078663          	beqz	a5,1101c <__register_exitproc+0xcc>
   10f94:	0047a703          	lw	a4,4(a5)
   10f98:	01f00593          	li	a1,31
   10f9c:	00092503          	lw	a0,0(s2)
   10fa0:	08e5c463          	blt	a1,a4,11028 <__register_exitproc+0xd8>
   10fa4:	00271593          	sll	a1,a4,0x2
   10fa8:	02041e63          	bnez	s0,10fe4 <__register_exitproc+0x94>
   10fac:	00170713          	add	a4,a4,1
   10fb0:	00e7a223          	sw	a4,4(a5)
   10fb4:	00b787b3          	add	a5,a5,a1
   10fb8:	0097a423          	sw	s1,8(a5)
   10fbc:	eb5ff0ef          	jal	10e70 <__retarget_lock_release_recursive>
   10fc0:	00000513          	li	a0,0
   10fc4:	01c12083          	lw	ra,28(sp)
   10fc8:	01812403          	lw	s0,24(sp)
   10fcc:	01412483          	lw	s1,20(sp)
   10fd0:	01012903          	lw	s2,16(sp)
   10fd4:	00c12983          	lw	s3,12(sp)
   10fd8:	00812a03          	lw	s4,8(sp)
   10fdc:	02010113          	add	sp,sp,32
   10fe0:	00008067          	ret
   10fe4:	00b78833          	add	a6,a5,a1
   10fe8:	09482423          	sw	s4,136(a6)
   10fec:	1887a683          	lw	a3,392(a5)
   10ff0:	00100613          	li	a2,1
   10ff4:	00e61633          	sll	a2,a2,a4
   10ff8:	00c6e6b3          	or	a3,a3,a2
   10ffc:	18d7a423          	sw	a3,392(a5)
   11000:	11382423          	sw	s3,264(a6)
   11004:	00200693          	li	a3,2
   11008:	fad412e3          	bne	s0,a3,10fac <__register_exitproc+0x5c>
   1100c:	18c7a683          	lw	a3,396(a5)
   11010:	00c6e6b3          	or	a3,a3,a2
   11014:	18d7a623          	sw	a3,396(a5)
   11018:	f95ff06f          	j	10fac <__register_exitproc+0x5c>
   1101c:	0e018793          	add	a5,gp,224 # 23ab0 <__atexit0>
   11020:	00f72023          	sw	a5,0(a4)
   11024:	f71ff06f          	j	10f94 <__register_exitproc+0x44>
   11028:	e49ff0ef          	jal	10e70 <__retarget_lock_release_recursive>
   1102c:	fff00513          	li	a0,-1
   11030:	f95ff06f          	j	10fc4 <__register_exitproc+0x74>

00011034 <__call_exitprocs>:
   11034:	fd010113          	add	sp,sp,-48
   11038:	01712623          	sw	s7,12(sp)
   1103c:	f3818b93          	add	s7,gp,-200 # 23908 <__atexit_recursive_mutex>
   11040:	01612823          	sw	s6,16(sp)
   11044:	00050b13          	mv	s6,a0
   11048:	000ba503          	lw	a0,0(s7)
   1104c:	01412c23          	sw	s4,24(sp)
   11050:	f7418a13          	add	s4,gp,-140 # 23944 <__atexit>
   11054:	03212023          	sw	s2,32(sp)
   11058:	01812423          	sw	s8,8(sp)
   1105c:	02112623          	sw	ra,44(sp)
   11060:	00058c13          	mv	s8,a1
   11064:	df5ff0ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   11068:	000a2903          	lw	s2,0(s4)
   1106c:	08090c63          	beqz	s2,11104 <__call_exitprocs+0xd0>
   11070:	01312e23          	sw	s3,28(sp)
   11074:	01512a23          	sw	s5,20(sp)
   11078:	02812423          	sw	s0,40(sp)
   1107c:	02912223          	sw	s1,36(sp)
   11080:	01912223          	sw	s9,4(sp)
   11084:	fff00993          	li	s3,-1
   11088:	00100a93          	li	s5,1
   1108c:	00492483          	lw	s1,4(s2)
   11090:	fff48413          	add	s0,s1,-1
   11094:	04044e63          	bltz	s0,110f0 <__call_exitprocs+0xbc>
   11098:	00249493          	sll	s1,s1,0x2
   1109c:	009904b3          	add	s1,s2,s1
   110a0:	080c1463          	bnez	s8,11128 <__call_exitprocs+0xf4>
   110a4:	00492783          	lw	a5,4(s2)
   110a8:	0044a683          	lw	a3,4(s1)
   110ac:	fff78793          	add	a5,a5,-1
   110b0:	0c878063          	beq	a5,s0,11170 <__call_exitprocs+0x13c>
   110b4:	0004a223          	sw	zero,4(s1)
   110b8:	02068663          	beqz	a3,110e4 <__call_exitprocs+0xb0>
   110bc:	18892783          	lw	a5,392(s2)
   110c0:	008a9733          	sll	a4,s5,s0
   110c4:	00492c83          	lw	s9,4(s2)
   110c8:	00f777b3          	and	a5,a4,a5
   110cc:	06079a63          	bnez	a5,11140 <__call_exitprocs+0x10c>
   110d0:	000680e7          	jalr	a3
   110d4:	00492703          	lw	a4,4(s2)
   110d8:	000a2783          	lw	a5,0(s4)
   110dc:	09971463          	bne	a4,s9,11164 <__call_exitprocs+0x130>
   110e0:	09279263          	bne	a5,s2,11164 <__call_exitprocs+0x130>
   110e4:	fff40413          	add	s0,s0,-1
   110e8:	ffc48493          	add	s1,s1,-4
   110ec:	fb341ae3          	bne	s0,s3,110a0 <__call_exitprocs+0x6c>
   110f0:	02812403          	lw	s0,40(sp)
   110f4:	02412483          	lw	s1,36(sp)
   110f8:	01c12983          	lw	s3,28(sp)
   110fc:	01412a83          	lw	s5,20(sp)
   11100:	00412c83          	lw	s9,4(sp)
   11104:	000ba503          	lw	a0,0(s7)
   11108:	02c12083          	lw	ra,44(sp)
   1110c:	02012903          	lw	s2,32(sp)
   11110:	01812a03          	lw	s4,24(sp)
   11114:	01012b03          	lw	s6,16(sp)
   11118:	00c12b83          	lw	s7,12(sp)
   1111c:	00812c03          	lw	s8,8(sp)
   11120:	03010113          	add	sp,sp,48
   11124:	d4dff06f          	j	10e70 <__retarget_lock_release_recursive>
   11128:	1044a783          	lw	a5,260(s1)
   1112c:	f7878ce3          	beq	a5,s8,110a4 <__call_exitprocs+0x70>
   11130:	fff40413          	add	s0,s0,-1
   11134:	ffc48493          	add	s1,s1,-4
   11138:	ff3418e3          	bne	s0,s3,11128 <__call_exitprocs+0xf4>
   1113c:	fb5ff06f          	j	110f0 <__call_exitprocs+0xbc>
   11140:	18c92783          	lw	a5,396(s2)
   11144:	0844a583          	lw	a1,132(s1)
   11148:	00f77733          	and	a4,a4,a5
   1114c:	02071663          	bnez	a4,11178 <__call_exitprocs+0x144>
   11150:	000b0513          	mv	a0,s6
   11154:	000680e7          	jalr	a3
   11158:	00492703          	lw	a4,4(s2)
   1115c:	000a2783          	lw	a5,0(s4)
   11160:	f99700e3          	beq	a4,s9,110e0 <__call_exitprocs+0xac>
   11164:	f80786e3          	beqz	a5,110f0 <__call_exitprocs+0xbc>
   11168:	00078913          	mv	s2,a5
   1116c:	f21ff06f          	j	1108c <__call_exitprocs+0x58>
   11170:	00892223          	sw	s0,4(s2)
   11174:	f45ff06f          	j	110b8 <__call_exitprocs+0x84>
   11178:	00058513          	mv	a0,a1
   1117c:	000680e7          	jalr	a3
   11180:	f55ff06f          	j	110d4 <__call_exitprocs+0xa0>

00011184 <_malloc_trim_r>:
   11184:	fe010113          	add	sp,sp,-32
   11188:	00812c23          	sw	s0,24(sp)
   1118c:	00912a23          	sw	s1,20(sp)
   11190:	01212823          	sw	s2,16(sp)
   11194:	01312623          	sw	s3,12(sp)
   11198:	01412423          	sw	s4,8(sp)
   1119c:	00058993          	mv	s3,a1
   111a0:	00112e23          	sw	ra,28(sp)
   111a4:	00050913          	mv	s2,a0
   111a8:	00012a17          	auipc	s4,0x12
   111ac:	158a0a13          	add	s4,s4,344 # 23300 <__malloc_av_>
   111b0:	3d9000ef          	jal	11d88 <__malloc_lock>
   111b4:	008a2703          	lw	a4,8(s4)
   111b8:	000017b7          	lui	a5,0x1
   111bc:	fef78793          	add	a5,a5,-17 # fef <exit-0xf0a5>
   111c0:	00472483          	lw	s1,4(a4)
   111c4:	00001737          	lui	a4,0x1
   111c8:	ffc4f493          	and	s1,s1,-4
   111cc:	00f48433          	add	s0,s1,a5
   111d0:	41340433          	sub	s0,s0,s3
   111d4:	00c45413          	srl	s0,s0,0xc
   111d8:	fff40413          	add	s0,s0,-1
   111dc:	00c41413          	sll	s0,s0,0xc
   111e0:	00e44e63          	blt	s0,a4,111fc <_malloc_trim_r+0x78>
   111e4:	00000593          	li	a1,0
   111e8:	00090513          	mv	a0,s2
   111ec:	0e8070ef          	jal	182d4 <_sbrk_r>
   111f0:	008a2783          	lw	a5,8(s4)
   111f4:	009787b3          	add	a5,a5,s1
   111f8:	02f50863          	beq	a0,a5,11228 <_malloc_trim_r+0xa4>
   111fc:	00090513          	mv	a0,s2
   11200:	391000ef          	jal	11d90 <__malloc_unlock>
   11204:	01c12083          	lw	ra,28(sp)
   11208:	01812403          	lw	s0,24(sp)
   1120c:	01412483          	lw	s1,20(sp)
   11210:	01012903          	lw	s2,16(sp)
   11214:	00c12983          	lw	s3,12(sp)
   11218:	00812a03          	lw	s4,8(sp)
   1121c:	00000513          	li	a0,0
   11220:	02010113          	add	sp,sp,32
   11224:	00008067          	ret
   11228:	408005b3          	neg	a1,s0
   1122c:	00090513          	mv	a0,s2
   11230:	0a4070ef          	jal	182d4 <_sbrk_r>
   11234:	fff00793          	li	a5,-1
   11238:	04f50863          	beq	a0,a5,11288 <_malloc_trim_r+0x104>
   1123c:	27018713          	add	a4,gp,624 # 23c40 <__malloc_current_mallinfo>
   11240:	00072783          	lw	a5,0(a4) # 1000 <exit-0xf094>
   11244:	008a2683          	lw	a3,8(s4)
   11248:	408484b3          	sub	s1,s1,s0
   1124c:	0014e493          	or	s1,s1,1
   11250:	408787b3          	sub	a5,a5,s0
   11254:	00090513          	mv	a0,s2
   11258:	0096a223          	sw	s1,4(a3)
   1125c:	00f72023          	sw	a5,0(a4)
   11260:	331000ef          	jal	11d90 <__malloc_unlock>
   11264:	01c12083          	lw	ra,28(sp)
   11268:	01812403          	lw	s0,24(sp)
   1126c:	01412483          	lw	s1,20(sp)
   11270:	01012903          	lw	s2,16(sp)
   11274:	00c12983          	lw	s3,12(sp)
   11278:	00812a03          	lw	s4,8(sp)
   1127c:	00100513          	li	a0,1
   11280:	02010113          	add	sp,sp,32
   11284:	00008067          	ret
   11288:	00000593          	li	a1,0
   1128c:	00090513          	mv	a0,s2
   11290:	044070ef          	jal	182d4 <_sbrk_r>
   11294:	008a2703          	lw	a4,8(s4)
   11298:	00f00693          	li	a3,15
   1129c:	40e507b3          	sub	a5,a0,a4
   112a0:	f4f6dee3          	bge	a3,a5,111fc <_malloc_trim_r+0x78>
   112a4:	f3c1a683          	lw	a3,-196(gp) # 2390c <__malloc_sbrk_base>
   112a8:	40d50533          	sub	a0,a0,a3
   112ac:	0017e793          	or	a5,a5,1
   112b0:	26a1a823          	sw	a0,624(gp) # 23c40 <__malloc_current_mallinfo>
   112b4:	00f72223          	sw	a5,4(a4)
   112b8:	f45ff06f          	j	111fc <_malloc_trim_r+0x78>

000112bc <_free_r>:
   112bc:	18058263          	beqz	a1,11440 <_free_r+0x184>
   112c0:	ff010113          	add	sp,sp,-16
   112c4:	00812423          	sw	s0,8(sp)
   112c8:	00912223          	sw	s1,4(sp)
   112cc:	00058413          	mv	s0,a1
   112d0:	00050493          	mv	s1,a0
   112d4:	00112623          	sw	ra,12(sp)
   112d8:	2b1000ef          	jal	11d88 <__malloc_lock>
   112dc:	ffc42583          	lw	a1,-4(s0)
   112e0:	ff840713          	add	a4,s0,-8
   112e4:	00012517          	auipc	a0,0x12
   112e8:	01c50513          	add	a0,a0,28 # 23300 <__malloc_av_>
   112ec:	ffe5f793          	and	a5,a1,-2
   112f0:	00f70633          	add	a2,a4,a5
   112f4:	00462683          	lw	a3,4(a2)
   112f8:	00852803          	lw	a6,8(a0)
   112fc:	ffc6f693          	and	a3,a3,-4
   11300:	1ac80263          	beq	a6,a2,114a4 <_free_r+0x1e8>
   11304:	00d62223          	sw	a3,4(a2)
   11308:	0015f593          	and	a1,a1,1
   1130c:	00d60833          	add	a6,a2,a3
   11310:	0a059063          	bnez	a1,113b0 <_free_r+0xf4>
   11314:	ff842303          	lw	t1,-8(s0)
   11318:	00482583          	lw	a1,4(a6)
   1131c:	00012897          	auipc	a7,0x12
   11320:	fec88893          	add	a7,a7,-20 # 23308 <__malloc_av_+0x8>
   11324:	40670733          	sub	a4,a4,t1
   11328:	00872803          	lw	a6,8(a4)
   1132c:	006787b3          	add	a5,a5,t1
   11330:	0015f593          	and	a1,a1,1
   11334:	15180263          	beq	a6,a7,11478 <_free_r+0x1bc>
   11338:	00c72303          	lw	t1,12(a4)
   1133c:	00682623          	sw	t1,12(a6)
   11340:	01032423          	sw	a6,8(t1)
   11344:	1a058663          	beqz	a1,114f0 <_free_r+0x234>
   11348:	0017e693          	or	a3,a5,1
   1134c:	00d72223          	sw	a3,4(a4)
   11350:	00f62023          	sw	a5,0(a2)
   11354:	1ff00693          	li	a3,511
   11358:	06f6ec63          	bltu	a3,a5,113d0 <_free_r+0x114>
   1135c:	ff87f693          	and	a3,a5,-8
   11360:	00868693          	add	a3,a3,8
   11364:	00452583          	lw	a1,4(a0)
   11368:	00d506b3          	add	a3,a0,a3
   1136c:	0006a603          	lw	a2,0(a3)
   11370:	0057d813          	srl	a6,a5,0x5
   11374:	00100793          	li	a5,1
   11378:	010797b3          	sll	a5,a5,a6
   1137c:	00b7e7b3          	or	a5,a5,a1
   11380:	ff868593          	add	a1,a3,-8
   11384:	00b72623          	sw	a1,12(a4)
   11388:	00c72423          	sw	a2,8(a4)
   1138c:	00f52223          	sw	a5,4(a0)
   11390:	00e6a023          	sw	a4,0(a3)
   11394:	00e62623          	sw	a4,12(a2)
   11398:	00812403          	lw	s0,8(sp)
   1139c:	00c12083          	lw	ra,12(sp)
   113a0:	00048513          	mv	a0,s1
   113a4:	00412483          	lw	s1,4(sp)
   113a8:	01010113          	add	sp,sp,16
   113ac:	1e50006f          	j	11d90 <__malloc_unlock>
   113b0:	00482583          	lw	a1,4(a6)
   113b4:	0015f593          	and	a1,a1,1
   113b8:	08058663          	beqz	a1,11444 <_free_r+0x188>
   113bc:	0017e693          	or	a3,a5,1
   113c0:	fed42e23          	sw	a3,-4(s0)
   113c4:	00f62023          	sw	a5,0(a2)
   113c8:	1ff00693          	li	a3,511
   113cc:	f8f6f8e3          	bgeu	a3,a5,1135c <_free_r+0xa0>
   113d0:	0097d693          	srl	a3,a5,0x9
   113d4:	00400613          	li	a2,4
   113d8:	12d66063          	bltu	a2,a3,114f8 <_free_r+0x23c>
   113dc:	0067d693          	srl	a3,a5,0x6
   113e0:	03968593          	add	a1,a3,57
   113e4:	03868613          	add	a2,a3,56
   113e8:	00359593          	sll	a1,a1,0x3
   113ec:	00b505b3          	add	a1,a0,a1
   113f0:	0005a683          	lw	a3,0(a1)
   113f4:	ff858593          	add	a1,a1,-8
   113f8:	00d59863          	bne	a1,a3,11408 <_free_r+0x14c>
   113fc:	1540006f          	j	11550 <_free_r+0x294>
   11400:	0086a683          	lw	a3,8(a3)
   11404:	00d58863          	beq	a1,a3,11414 <_free_r+0x158>
   11408:	0046a603          	lw	a2,4(a3)
   1140c:	ffc67613          	and	a2,a2,-4
   11410:	fec7e8e3          	bltu	a5,a2,11400 <_free_r+0x144>
   11414:	00c6a583          	lw	a1,12(a3)
   11418:	00b72623          	sw	a1,12(a4)
   1141c:	00d72423          	sw	a3,8(a4)
   11420:	00812403          	lw	s0,8(sp)
   11424:	00c12083          	lw	ra,12(sp)
   11428:	00e5a423          	sw	a4,8(a1)
   1142c:	00048513          	mv	a0,s1
   11430:	00412483          	lw	s1,4(sp)
   11434:	00e6a623          	sw	a4,12(a3)
   11438:	01010113          	add	sp,sp,16
   1143c:	1550006f          	j	11d90 <__malloc_unlock>
   11440:	00008067          	ret
   11444:	00d787b3          	add	a5,a5,a3
   11448:	00012897          	auipc	a7,0x12
   1144c:	ec088893          	add	a7,a7,-320 # 23308 <__malloc_av_+0x8>
   11450:	00862683          	lw	a3,8(a2)
   11454:	0d168c63          	beq	a3,a7,1152c <_free_r+0x270>
   11458:	00c62803          	lw	a6,12(a2)
   1145c:	0017e593          	or	a1,a5,1
   11460:	00f70633          	add	a2,a4,a5
   11464:	0106a623          	sw	a6,12(a3)
   11468:	00d82423          	sw	a3,8(a6)
   1146c:	00b72223          	sw	a1,4(a4)
   11470:	00f62023          	sw	a5,0(a2)
   11474:	ee1ff06f          	j	11354 <_free_r+0x98>
   11478:	12059c63          	bnez	a1,115b0 <_free_r+0x2f4>
   1147c:	00862583          	lw	a1,8(a2)
   11480:	00c62603          	lw	a2,12(a2)
   11484:	00f686b3          	add	a3,a3,a5
   11488:	0016e793          	or	a5,a3,1
   1148c:	00c5a623          	sw	a2,12(a1)
   11490:	00b62423          	sw	a1,8(a2)
   11494:	00f72223          	sw	a5,4(a4)
   11498:	00d70733          	add	a4,a4,a3
   1149c:	00d72023          	sw	a3,0(a4)
   114a0:	ef9ff06f          	j	11398 <_free_r+0xdc>
   114a4:	0015f593          	and	a1,a1,1
   114a8:	00d786b3          	add	a3,a5,a3
   114ac:	02059063          	bnez	a1,114cc <_free_r+0x210>
   114b0:	ff842583          	lw	a1,-8(s0)
   114b4:	40b70733          	sub	a4,a4,a1
   114b8:	00c72783          	lw	a5,12(a4)
   114bc:	00872603          	lw	a2,8(a4)
   114c0:	00b686b3          	add	a3,a3,a1
   114c4:	00f62623          	sw	a5,12(a2)
   114c8:	00c7a423          	sw	a2,8(a5)
   114cc:	0016e793          	or	a5,a3,1
   114d0:	00f72223          	sw	a5,4(a4)
   114d4:	00e52423          	sw	a4,8(a0)
   114d8:	f401a783          	lw	a5,-192(gp) # 23910 <__malloc_trim_threshold>
   114dc:	eaf6eee3          	bltu	a3,a5,11398 <_free_r+0xdc>
   114e0:	f801a583          	lw	a1,-128(gp) # 23950 <__malloc_top_pad>
   114e4:	00048513          	mv	a0,s1
   114e8:	c9dff0ef          	jal	11184 <_malloc_trim_r>
   114ec:	eadff06f          	j	11398 <_free_r+0xdc>
   114f0:	00d787b3          	add	a5,a5,a3
   114f4:	f5dff06f          	j	11450 <_free_r+0x194>
   114f8:	01400613          	li	a2,20
   114fc:	02d67063          	bgeu	a2,a3,1151c <_free_r+0x260>
   11500:	05400613          	li	a2,84
   11504:	06d66463          	bltu	a2,a3,1156c <_free_r+0x2b0>
   11508:	00c7d693          	srl	a3,a5,0xc
   1150c:	06f68593          	add	a1,a3,111
   11510:	06e68613          	add	a2,a3,110
   11514:	00359593          	sll	a1,a1,0x3
   11518:	ed5ff06f          	j	113ec <_free_r+0x130>
   1151c:	05c68593          	add	a1,a3,92
   11520:	05b68613          	add	a2,a3,91
   11524:	00359593          	sll	a1,a1,0x3
   11528:	ec5ff06f          	j	113ec <_free_r+0x130>
   1152c:	00e52a23          	sw	a4,20(a0)
   11530:	00e52823          	sw	a4,16(a0)
   11534:	0017e693          	or	a3,a5,1
   11538:	01172623          	sw	a7,12(a4)
   1153c:	01172423          	sw	a7,8(a4)
   11540:	00d72223          	sw	a3,4(a4)
   11544:	00f70733          	add	a4,a4,a5
   11548:	00f72023          	sw	a5,0(a4)
   1154c:	e4dff06f          	j	11398 <_free_r+0xdc>
   11550:	00452803          	lw	a6,4(a0)
   11554:	40265613          	sra	a2,a2,0x2
   11558:	00100793          	li	a5,1
   1155c:	00c797b3          	sll	a5,a5,a2
   11560:	0107e7b3          	or	a5,a5,a6
   11564:	00f52223          	sw	a5,4(a0)
   11568:	eb1ff06f          	j	11418 <_free_r+0x15c>
   1156c:	15400613          	li	a2,340
   11570:	00d66c63          	bltu	a2,a3,11588 <_free_r+0x2cc>
   11574:	00f7d693          	srl	a3,a5,0xf
   11578:	07868593          	add	a1,a3,120
   1157c:	07768613          	add	a2,a3,119
   11580:	00359593          	sll	a1,a1,0x3
   11584:	e69ff06f          	j	113ec <_free_r+0x130>
   11588:	55400613          	li	a2,1364
   1158c:	00d66c63          	bltu	a2,a3,115a4 <_free_r+0x2e8>
   11590:	0127d693          	srl	a3,a5,0x12
   11594:	07d68593          	add	a1,a3,125
   11598:	07c68613          	add	a2,a3,124
   1159c:	00359593          	sll	a1,a1,0x3
   115a0:	e4dff06f          	j	113ec <_free_r+0x130>
   115a4:	3f800593          	li	a1,1016
   115a8:	07e00613          	li	a2,126
   115ac:	e41ff06f          	j	113ec <_free_r+0x130>
   115b0:	0017e693          	or	a3,a5,1
   115b4:	00d72223          	sw	a3,4(a4)
   115b8:	00f62023          	sw	a5,0(a2)
   115bc:	dddff06f          	j	11398 <_free_r+0xdc>

000115c0 <_malloc_r>:
   115c0:	fd010113          	add	sp,sp,-48
   115c4:	03212023          	sw	s2,32(sp)
   115c8:	02112623          	sw	ra,44(sp)
   115cc:	02812423          	sw	s0,40(sp)
   115d0:	02912223          	sw	s1,36(sp)
   115d4:	01312e23          	sw	s3,28(sp)
   115d8:	00b58793          	add	a5,a1,11
   115dc:	01600713          	li	a4,22
   115e0:	00050913          	mv	s2,a0
   115e4:	08f76263          	bltu	a4,a5,11668 <_malloc_r+0xa8>
   115e8:	01000793          	li	a5,16
   115ec:	20b7e663          	bltu	a5,a1,117f8 <_malloc_r+0x238>
   115f0:	798000ef          	jal	11d88 <__malloc_lock>
   115f4:	01800793          	li	a5,24
   115f8:	00200593          	li	a1,2
   115fc:	01000493          	li	s1,16
   11600:	00012997          	auipc	s3,0x12
   11604:	d0098993          	add	s3,s3,-768 # 23300 <__malloc_av_>
   11608:	00f987b3          	add	a5,s3,a5
   1160c:	0047a403          	lw	s0,4(a5)
   11610:	ff878713          	add	a4,a5,-8
   11614:	34e40a63          	beq	s0,a4,11968 <_malloc_r+0x3a8>
   11618:	00442783          	lw	a5,4(s0)
   1161c:	00c42683          	lw	a3,12(s0)
   11620:	00842603          	lw	a2,8(s0)
   11624:	ffc7f793          	and	a5,a5,-4
   11628:	00f407b3          	add	a5,s0,a5
   1162c:	0047a703          	lw	a4,4(a5)
   11630:	00d62623          	sw	a3,12(a2)
   11634:	00c6a423          	sw	a2,8(a3)
   11638:	00176713          	or	a4,a4,1
   1163c:	00090513          	mv	a0,s2
   11640:	00e7a223          	sw	a4,4(a5)
   11644:	74c000ef          	jal	11d90 <__malloc_unlock>
   11648:	00840513          	add	a0,s0,8
   1164c:	02c12083          	lw	ra,44(sp)
   11650:	02812403          	lw	s0,40(sp)
   11654:	02412483          	lw	s1,36(sp)
   11658:	02012903          	lw	s2,32(sp)
   1165c:	01c12983          	lw	s3,28(sp)
   11660:	03010113          	add	sp,sp,48
   11664:	00008067          	ret
   11668:	ff87f493          	and	s1,a5,-8
   1166c:	1807c663          	bltz	a5,117f8 <_malloc_r+0x238>
   11670:	18b4e463          	bltu	s1,a1,117f8 <_malloc_r+0x238>
   11674:	714000ef          	jal	11d88 <__malloc_lock>
   11678:	1f700793          	li	a5,503
   1167c:	4097f063          	bgeu	a5,s1,11a7c <_malloc_r+0x4bc>
   11680:	0094d793          	srl	a5,s1,0x9
   11684:	18078263          	beqz	a5,11808 <_malloc_r+0x248>
   11688:	00400713          	li	a4,4
   1168c:	34f76663          	bltu	a4,a5,119d8 <_malloc_r+0x418>
   11690:	0064d793          	srl	a5,s1,0x6
   11694:	03978593          	add	a1,a5,57
   11698:	03878813          	add	a6,a5,56
   1169c:	00359613          	sll	a2,a1,0x3
   116a0:	00012997          	auipc	s3,0x12
   116a4:	c6098993          	add	s3,s3,-928 # 23300 <__malloc_av_>
   116a8:	00c98633          	add	a2,s3,a2
   116ac:	00462403          	lw	s0,4(a2)
   116b0:	ff860613          	add	a2,a2,-8
   116b4:	02860863          	beq	a2,s0,116e4 <_malloc_r+0x124>
   116b8:	00f00513          	li	a0,15
   116bc:	0140006f          	j	116d0 <_malloc_r+0x110>
   116c0:	00c42683          	lw	a3,12(s0)
   116c4:	28075e63          	bgez	a4,11960 <_malloc_r+0x3a0>
   116c8:	00d60e63          	beq	a2,a3,116e4 <_malloc_r+0x124>
   116cc:	00068413          	mv	s0,a3
   116d0:	00442783          	lw	a5,4(s0)
   116d4:	ffc7f793          	and	a5,a5,-4
   116d8:	40978733          	sub	a4,a5,s1
   116dc:	fee552e3          	bge	a0,a4,116c0 <_malloc_r+0x100>
   116e0:	00080593          	mv	a1,a6
   116e4:	0109a403          	lw	s0,16(s3)
   116e8:	00012897          	auipc	a7,0x12
   116ec:	c2088893          	add	a7,a7,-992 # 23308 <__malloc_av_+0x8>
   116f0:	27140463          	beq	s0,a7,11958 <_malloc_r+0x398>
   116f4:	00442783          	lw	a5,4(s0)
   116f8:	00f00693          	li	a3,15
   116fc:	ffc7f793          	and	a5,a5,-4
   11700:	40978733          	sub	a4,a5,s1
   11704:	38e6c263          	blt	a3,a4,11a88 <_malloc_r+0x4c8>
   11708:	0119aa23          	sw	a7,20(s3)
   1170c:	0119a823          	sw	a7,16(s3)
   11710:	34075663          	bgez	a4,11a5c <_malloc_r+0x49c>
   11714:	1ff00713          	li	a4,511
   11718:	0049a503          	lw	a0,4(s3)
   1171c:	24f76e63          	bltu	a4,a5,11978 <_malloc_r+0x3b8>
   11720:	ff87f713          	and	a4,a5,-8
   11724:	00870713          	add	a4,a4,8
   11728:	00e98733          	add	a4,s3,a4
   1172c:	00072683          	lw	a3,0(a4)
   11730:	0057d613          	srl	a2,a5,0x5
   11734:	00100793          	li	a5,1
   11738:	00c797b3          	sll	a5,a5,a2
   1173c:	00f56533          	or	a0,a0,a5
   11740:	ff870793          	add	a5,a4,-8
   11744:	00f42623          	sw	a5,12(s0)
   11748:	00d42423          	sw	a3,8(s0)
   1174c:	00a9a223          	sw	a0,4(s3)
   11750:	00872023          	sw	s0,0(a4)
   11754:	0086a623          	sw	s0,12(a3)
   11758:	4025d793          	sra	a5,a1,0x2
   1175c:	00100613          	li	a2,1
   11760:	00f61633          	sll	a2,a2,a5
   11764:	0ac56a63          	bltu	a0,a2,11818 <_malloc_r+0x258>
   11768:	00a677b3          	and	a5,a2,a0
   1176c:	02079463          	bnez	a5,11794 <_malloc_r+0x1d4>
   11770:	00161613          	sll	a2,a2,0x1
   11774:	ffc5f593          	and	a1,a1,-4
   11778:	00a677b3          	and	a5,a2,a0
   1177c:	00458593          	add	a1,a1,4
   11780:	00079a63          	bnez	a5,11794 <_malloc_r+0x1d4>
   11784:	00161613          	sll	a2,a2,0x1
   11788:	00a677b3          	and	a5,a2,a0
   1178c:	00458593          	add	a1,a1,4
   11790:	fe078ae3          	beqz	a5,11784 <_malloc_r+0x1c4>
   11794:	00f00813          	li	a6,15
   11798:	00359313          	sll	t1,a1,0x3
   1179c:	00698333          	add	t1,s3,t1
   117a0:	00030513          	mv	a0,t1
   117a4:	00c52783          	lw	a5,12(a0)
   117a8:	00058e13          	mv	t3,a1
   117ac:	24f50863          	beq	a0,a5,119fc <_malloc_r+0x43c>
   117b0:	0047a703          	lw	a4,4(a5)
   117b4:	00078413          	mv	s0,a5
   117b8:	00c7a783          	lw	a5,12(a5)
   117bc:	ffc77713          	and	a4,a4,-4
   117c0:	409706b3          	sub	a3,a4,s1
   117c4:	24d84863          	blt	a6,a3,11a14 <_malloc_r+0x454>
   117c8:	fe06c2e3          	bltz	a3,117ac <_malloc_r+0x1ec>
   117cc:	00e40733          	add	a4,s0,a4
   117d0:	00472683          	lw	a3,4(a4)
   117d4:	00842603          	lw	a2,8(s0)
   117d8:	00090513          	mv	a0,s2
   117dc:	0016e693          	or	a3,a3,1
   117e0:	00d72223          	sw	a3,4(a4)
   117e4:	00f62623          	sw	a5,12(a2)
   117e8:	00c7a423          	sw	a2,8(a5)
   117ec:	5a4000ef          	jal	11d90 <__malloc_unlock>
   117f0:	00840513          	add	a0,s0,8
   117f4:	e59ff06f          	j	1164c <_malloc_r+0x8c>
   117f8:	00c00793          	li	a5,12
   117fc:	00f92023          	sw	a5,0(s2)
   11800:	00000513          	li	a0,0
   11804:	e49ff06f          	j	1164c <_malloc_r+0x8c>
   11808:	20000613          	li	a2,512
   1180c:	04000593          	li	a1,64
   11810:	03f00813          	li	a6,63
   11814:	e8dff06f          	j	116a0 <_malloc_r+0xe0>
   11818:	0089a403          	lw	s0,8(s3)
   1181c:	01612823          	sw	s6,16(sp)
   11820:	00442783          	lw	a5,4(s0)
   11824:	ffc7fb13          	and	s6,a5,-4
   11828:	009b6863          	bltu	s6,s1,11838 <_malloc_r+0x278>
   1182c:	409b0733          	sub	a4,s6,s1
   11830:	00f00793          	li	a5,15
   11834:	0ee7c063          	blt	a5,a4,11914 <_malloc_r+0x354>
   11838:	01912223          	sw	s9,4(sp)
   1183c:	f3c18c93          	add	s9,gp,-196 # 2390c <__malloc_sbrk_base>
   11840:	000ca703          	lw	a4,0(s9)
   11844:	01412c23          	sw	s4,24(sp)
   11848:	01512a23          	sw	s5,20(sp)
   1184c:	01712623          	sw	s7,12(sp)
   11850:	f801aa83          	lw	s5,-128(gp) # 23950 <__malloc_top_pad>
   11854:	fff00793          	li	a5,-1
   11858:	01640a33          	add	s4,s0,s6
   1185c:	01548ab3          	add	s5,s1,s5
   11860:	3cf70a63          	beq	a4,a5,11c34 <_malloc_r+0x674>
   11864:	000017b7          	lui	a5,0x1
   11868:	00f78793          	add	a5,a5,15 # 100f <exit-0xf085>
   1186c:	00fa8ab3          	add	s5,s5,a5
   11870:	fffff7b7          	lui	a5,0xfffff
   11874:	00fafab3          	and	s5,s5,a5
   11878:	000a8593          	mv	a1,s5
   1187c:	00090513          	mv	a0,s2
   11880:	255060ef          	jal	182d4 <_sbrk_r>
   11884:	fff00793          	li	a5,-1
   11888:	00050b93          	mv	s7,a0
   1188c:	44f50e63          	beq	a0,a5,11ce8 <_malloc_r+0x728>
   11890:	01812423          	sw	s8,8(sp)
   11894:	25456263          	bltu	a0,s4,11ad8 <_malloc_r+0x518>
   11898:	27018c13          	add	s8,gp,624 # 23c40 <__malloc_current_mallinfo>
   1189c:	000c2583          	lw	a1,0(s8)
   118a0:	00ba85b3          	add	a1,s5,a1
   118a4:	00bc2023          	sw	a1,0(s8)
   118a8:	00058713          	mv	a4,a1
   118ac:	2aaa1a63          	bne	s4,a0,11b60 <_malloc_r+0x5a0>
   118b0:	01451793          	sll	a5,a0,0x14
   118b4:	2a079663          	bnez	a5,11b60 <_malloc_r+0x5a0>
   118b8:	0089ab83          	lw	s7,8(s3)
   118bc:	015b07b3          	add	a5,s6,s5
   118c0:	0017e793          	or	a5,a5,1
   118c4:	00fba223          	sw	a5,4(s7)
   118c8:	f7c18713          	add	a4,gp,-132 # 2394c <__malloc_max_sbrked_mem>
   118cc:	00072683          	lw	a3,0(a4)
   118d0:	00b6f463          	bgeu	a3,a1,118d8 <_malloc_r+0x318>
   118d4:	00b72023          	sw	a1,0(a4)
   118d8:	f7818713          	add	a4,gp,-136 # 23948 <__malloc_max_total_mem>
   118dc:	00072683          	lw	a3,0(a4)
   118e0:	00b6f463          	bgeu	a3,a1,118e8 <_malloc_r+0x328>
   118e4:	00b72023          	sw	a1,0(a4)
   118e8:	00812c03          	lw	s8,8(sp)
   118ec:	000b8413          	mv	s0,s7
   118f0:	ffc7f793          	and	a5,a5,-4
   118f4:	40978733          	sub	a4,a5,s1
   118f8:	3897ea63          	bltu	a5,s1,11c8c <_malloc_r+0x6cc>
   118fc:	00f00793          	li	a5,15
   11900:	38e7d663          	bge	a5,a4,11c8c <_malloc_r+0x6cc>
   11904:	01812a03          	lw	s4,24(sp)
   11908:	01412a83          	lw	s5,20(sp)
   1190c:	00c12b83          	lw	s7,12(sp)
   11910:	00412c83          	lw	s9,4(sp)
   11914:	0014e793          	or	a5,s1,1
   11918:	00f42223          	sw	a5,4(s0)
   1191c:	009404b3          	add	s1,s0,s1
   11920:	0099a423          	sw	s1,8(s3)
   11924:	00176713          	or	a4,a4,1
   11928:	00090513          	mv	a0,s2
   1192c:	00e4a223          	sw	a4,4(s1)
   11930:	460000ef          	jal	11d90 <__malloc_unlock>
   11934:	02c12083          	lw	ra,44(sp)
   11938:	00840513          	add	a0,s0,8
   1193c:	02812403          	lw	s0,40(sp)
   11940:	01012b03          	lw	s6,16(sp)
   11944:	02412483          	lw	s1,36(sp)
   11948:	02012903          	lw	s2,32(sp)
   1194c:	01c12983          	lw	s3,28(sp)
   11950:	03010113          	add	sp,sp,48
   11954:	00008067          	ret
   11958:	0049a503          	lw	a0,4(s3)
   1195c:	dfdff06f          	j	11758 <_malloc_r+0x198>
   11960:	00842603          	lw	a2,8(s0)
   11964:	cc5ff06f          	j	11628 <_malloc_r+0x68>
   11968:	00c7a403          	lw	s0,12(a5) # fffff00c <__BSS_END__+0xfffdb0fc>
   1196c:	00258593          	add	a1,a1,2
   11970:	d6878ae3          	beq	a5,s0,116e4 <_malloc_r+0x124>
   11974:	ca5ff06f          	j	11618 <_malloc_r+0x58>
   11978:	0097d713          	srl	a4,a5,0x9
   1197c:	00400693          	li	a3,4
   11980:	14e6f263          	bgeu	a3,a4,11ac4 <_malloc_r+0x504>
   11984:	01400693          	li	a3,20
   11988:	32e6e463          	bltu	a3,a4,11cb0 <_malloc_r+0x6f0>
   1198c:	05c70613          	add	a2,a4,92
   11990:	05b70693          	add	a3,a4,91
   11994:	00361613          	sll	a2,a2,0x3
   11998:	00c98633          	add	a2,s3,a2
   1199c:	00062703          	lw	a4,0(a2)
   119a0:	ff860613          	add	a2,a2,-8
   119a4:	00e61863          	bne	a2,a4,119b4 <_malloc_r+0x3f4>
   119a8:	2940006f          	j	11c3c <_malloc_r+0x67c>
   119ac:	00872703          	lw	a4,8(a4)
   119b0:	00e60863          	beq	a2,a4,119c0 <_malloc_r+0x400>
   119b4:	00472683          	lw	a3,4(a4)
   119b8:	ffc6f693          	and	a3,a3,-4
   119bc:	fed7e8e3          	bltu	a5,a3,119ac <_malloc_r+0x3ec>
   119c0:	00c72603          	lw	a2,12(a4)
   119c4:	00c42623          	sw	a2,12(s0)
   119c8:	00e42423          	sw	a4,8(s0)
   119cc:	00862423          	sw	s0,8(a2)
   119d0:	00872623          	sw	s0,12(a4)
   119d4:	d85ff06f          	j	11758 <_malloc_r+0x198>
   119d8:	01400713          	li	a4,20
   119dc:	10f77863          	bgeu	a4,a5,11aec <_malloc_r+0x52c>
   119e0:	05400713          	li	a4,84
   119e4:	2ef76463          	bltu	a4,a5,11ccc <_malloc_r+0x70c>
   119e8:	00c4d793          	srl	a5,s1,0xc
   119ec:	06f78593          	add	a1,a5,111
   119f0:	06e78813          	add	a6,a5,110
   119f4:	00359613          	sll	a2,a1,0x3
   119f8:	ca9ff06f          	j	116a0 <_malloc_r+0xe0>
   119fc:	001e0e13          	add	t3,t3,1
   11a00:	003e7793          	and	a5,t3,3
   11a04:	00850513          	add	a0,a0,8
   11a08:	10078063          	beqz	a5,11b08 <_malloc_r+0x548>
   11a0c:	00c52783          	lw	a5,12(a0)
   11a10:	d9dff06f          	j	117ac <_malloc_r+0x1ec>
   11a14:	00842603          	lw	a2,8(s0)
   11a18:	0014e593          	or	a1,s1,1
   11a1c:	00b42223          	sw	a1,4(s0)
   11a20:	00f62623          	sw	a5,12(a2)
   11a24:	00c7a423          	sw	a2,8(a5)
   11a28:	009404b3          	add	s1,s0,s1
   11a2c:	0099aa23          	sw	s1,20(s3)
   11a30:	0099a823          	sw	s1,16(s3)
   11a34:	0016e793          	or	a5,a3,1
   11a38:	0114a623          	sw	a7,12(s1)
   11a3c:	0114a423          	sw	a7,8(s1)
   11a40:	00f4a223          	sw	a5,4(s1)
   11a44:	00e40733          	add	a4,s0,a4
   11a48:	00090513          	mv	a0,s2
   11a4c:	00d72023          	sw	a3,0(a4)
   11a50:	340000ef          	jal	11d90 <__malloc_unlock>
   11a54:	00840513          	add	a0,s0,8
   11a58:	bf5ff06f          	j	1164c <_malloc_r+0x8c>
   11a5c:	00f407b3          	add	a5,s0,a5
   11a60:	0047a703          	lw	a4,4(a5)
   11a64:	00090513          	mv	a0,s2
   11a68:	00176713          	or	a4,a4,1
   11a6c:	00e7a223          	sw	a4,4(a5)
   11a70:	320000ef          	jal	11d90 <__malloc_unlock>
   11a74:	00840513          	add	a0,s0,8
   11a78:	bd5ff06f          	j	1164c <_malloc_r+0x8c>
   11a7c:	0034d593          	srl	a1,s1,0x3
   11a80:	00848793          	add	a5,s1,8
   11a84:	b7dff06f          	j	11600 <_malloc_r+0x40>
   11a88:	0014e693          	or	a3,s1,1
   11a8c:	00d42223          	sw	a3,4(s0)
   11a90:	009404b3          	add	s1,s0,s1
   11a94:	0099aa23          	sw	s1,20(s3)
   11a98:	0099a823          	sw	s1,16(s3)
   11a9c:	00176693          	or	a3,a4,1
   11aa0:	0114a623          	sw	a7,12(s1)
   11aa4:	0114a423          	sw	a7,8(s1)
   11aa8:	00d4a223          	sw	a3,4(s1)
   11aac:	00f407b3          	add	a5,s0,a5
   11ab0:	00090513          	mv	a0,s2
   11ab4:	00e7a023          	sw	a4,0(a5)
   11ab8:	2d8000ef          	jal	11d90 <__malloc_unlock>
   11abc:	00840513          	add	a0,s0,8
   11ac0:	b8dff06f          	j	1164c <_malloc_r+0x8c>
   11ac4:	0067d713          	srl	a4,a5,0x6
   11ac8:	03970613          	add	a2,a4,57
   11acc:	03870693          	add	a3,a4,56
   11ad0:	00361613          	sll	a2,a2,0x3
   11ad4:	ec5ff06f          	j	11998 <_malloc_r+0x3d8>
   11ad8:	07340c63          	beq	s0,s3,11b50 <_malloc_r+0x590>
   11adc:	0089a403          	lw	s0,8(s3)
   11ae0:	00812c03          	lw	s8,8(sp)
   11ae4:	00442783          	lw	a5,4(s0)
   11ae8:	e09ff06f          	j	118f0 <_malloc_r+0x330>
   11aec:	05c78593          	add	a1,a5,92
   11af0:	05b78813          	add	a6,a5,91
   11af4:	00359613          	sll	a2,a1,0x3
   11af8:	ba9ff06f          	j	116a0 <_malloc_r+0xe0>
   11afc:	00832783          	lw	a5,8(t1)
   11b00:	fff58593          	add	a1,a1,-1
   11b04:	26679e63          	bne	a5,t1,11d80 <_malloc_r+0x7c0>
   11b08:	0035f793          	and	a5,a1,3
   11b0c:	ff830313          	add	t1,t1,-8
   11b10:	fe0796e3          	bnez	a5,11afc <_malloc_r+0x53c>
   11b14:	0049a703          	lw	a4,4(s3)
   11b18:	fff64793          	not	a5,a2
   11b1c:	00e7f7b3          	and	a5,a5,a4
   11b20:	00f9a223          	sw	a5,4(s3)
   11b24:	00161613          	sll	a2,a2,0x1
   11b28:	cec7e8e3          	bltu	a5,a2,11818 <_malloc_r+0x258>
   11b2c:	ce0606e3          	beqz	a2,11818 <_malloc_r+0x258>
   11b30:	00f67733          	and	a4,a2,a5
   11b34:	00071a63          	bnez	a4,11b48 <_malloc_r+0x588>
   11b38:	00161613          	sll	a2,a2,0x1
   11b3c:	00f67733          	and	a4,a2,a5
   11b40:	004e0e13          	add	t3,t3,4
   11b44:	fe070ae3          	beqz	a4,11b38 <_malloc_r+0x578>
   11b48:	000e0593          	mv	a1,t3
   11b4c:	c4dff06f          	j	11798 <_malloc_r+0x1d8>
   11b50:	27018c13          	add	s8,gp,624 # 23c40 <__malloc_current_mallinfo>
   11b54:	000c2703          	lw	a4,0(s8)
   11b58:	00ea8733          	add	a4,s5,a4
   11b5c:	00ec2023          	sw	a4,0(s8)
   11b60:	000ca683          	lw	a3,0(s9)
   11b64:	fff00793          	li	a5,-1
   11b68:	18f68663          	beq	a3,a5,11cf4 <_malloc_r+0x734>
   11b6c:	414b87b3          	sub	a5,s7,s4
   11b70:	00e787b3          	add	a5,a5,a4
   11b74:	00fc2023          	sw	a5,0(s8)
   11b78:	007bfc93          	and	s9,s7,7
   11b7c:	0c0c8c63          	beqz	s9,11c54 <_malloc_r+0x694>
   11b80:	419b8bb3          	sub	s7,s7,s9
   11b84:	000017b7          	lui	a5,0x1
   11b88:	00878793          	add	a5,a5,8 # 1008 <exit-0xf08c>
   11b8c:	008b8b93          	add	s7,s7,8
   11b90:	419785b3          	sub	a1,a5,s9
   11b94:	015b8ab3          	add	s5,s7,s5
   11b98:	415585b3          	sub	a1,a1,s5
   11b9c:	01459593          	sll	a1,a1,0x14
   11ba0:	0145da13          	srl	s4,a1,0x14
   11ba4:	000a0593          	mv	a1,s4
   11ba8:	00090513          	mv	a0,s2
   11bac:	728060ef          	jal	182d4 <_sbrk_r>
   11bb0:	fff00793          	li	a5,-1
   11bb4:	18f50063          	beq	a0,a5,11d34 <_malloc_r+0x774>
   11bb8:	41750533          	sub	a0,a0,s7
   11bbc:	01450ab3          	add	s5,a0,s4
   11bc0:	000c2703          	lw	a4,0(s8)
   11bc4:	0179a423          	sw	s7,8(s3)
   11bc8:	001ae793          	or	a5,s5,1
   11bcc:	00ea05b3          	add	a1,s4,a4
   11bd0:	00bc2023          	sw	a1,0(s8)
   11bd4:	00fba223          	sw	a5,4(s7)
   11bd8:	cf3408e3          	beq	s0,s3,118c8 <_malloc_r+0x308>
   11bdc:	00f00693          	li	a3,15
   11be0:	0b66f063          	bgeu	a3,s6,11c80 <_malloc_r+0x6c0>
   11be4:	00442703          	lw	a4,4(s0)
   11be8:	ff4b0793          	add	a5,s6,-12
   11bec:	ff87f793          	and	a5,a5,-8
   11bf0:	00177713          	and	a4,a4,1
   11bf4:	00f76733          	or	a4,a4,a5
   11bf8:	00e42223          	sw	a4,4(s0)
   11bfc:	00500613          	li	a2,5
   11c00:	00f40733          	add	a4,s0,a5
   11c04:	00c72223          	sw	a2,4(a4)
   11c08:	00c72423          	sw	a2,8(a4)
   11c0c:	00f6e663          	bltu	a3,a5,11c18 <_malloc_r+0x658>
   11c10:	004ba783          	lw	a5,4(s7)
   11c14:	cb5ff06f          	j	118c8 <_malloc_r+0x308>
   11c18:	00840593          	add	a1,s0,8
   11c1c:	00090513          	mv	a0,s2
   11c20:	e9cff0ef          	jal	112bc <_free_r>
   11c24:	0089ab83          	lw	s7,8(s3)
   11c28:	000c2583          	lw	a1,0(s8)
   11c2c:	004ba783          	lw	a5,4(s7)
   11c30:	c99ff06f          	j	118c8 <_malloc_r+0x308>
   11c34:	010a8a93          	add	s5,s5,16
   11c38:	c41ff06f          	j	11878 <_malloc_r+0x2b8>
   11c3c:	4026d693          	sra	a3,a3,0x2
   11c40:	00100793          	li	a5,1
   11c44:	00d797b3          	sll	a5,a5,a3
   11c48:	00f56533          	or	a0,a0,a5
   11c4c:	00a9a223          	sw	a0,4(s3)
   11c50:	d75ff06f          	j	119c4 <_malloc_r+0x404>
   11c54:	015b85b3          	add	a1,s7,s5
   11c58:	40b005b3          	neg	a1,a1
   11c5c:	01459593          	sll	a1,a1,0x14
   11c60:	0145da13          	srl	s4,a1,0x14
   11c64:	000a0593          	mv	a1,s4
   11c68:	00090513          	mv	a0,s2
   11c6c:	668060ef          	jal	182d4 <_sbrk_r>
   11c70:	fff00793          	li	a5,-1
   11c74:	f4f512e3          	bne	a0,a5,11bb8 <_malloc_r+0x5f8>
   11c78:	00000a13          	li	s4,0
   11c7c:	f45ff06f          	j	11bc0 <_malloc_r+0x600>
   11c80:	00812c03          	lw	s8,8(sp)
   11c84:	00100793          	li	a5,1
   11c88:	00fba223          	sw	a5,4(s7)
   11c8c:	00090513          	mv	a0,s2
   11c90:	100000ef          	jal	11d90 <__malloc_unlock>
   11c94:	00000513          	li	a0,0
   11c98:	01812a03          	lw	s4,24(sp)
   11c9c:	01412a83          	lw	s5,20(sp)
   11ca0:	01012b03          	lw	s6,16(sp)
   11ca4:	00c12b83          	lw	s7,12(sp)
   11ca8:	00412c83          	lw	s9,4(sp)
   11cac:	9a1ff06f          	j	1164c <_malloc_r+0x8c>
   11cb0:	05400693          	li	a3,84
   11cb4:	04e6e463          	bltu	a3,a4,11cfc <_malloc_r+0x73c>
   11cb8:	00c7d713          	srl	a4,a5,0xc
   11cbc:	06f70613          	add	a2,a4,111
   11cc0:	06e70693          	add	a3,a4,110
   11cc4:	00361613          	sll	a2,a2,0x3
   11cc8:	cd1ff06f          	j	11998 <_malloc_r+0x3d8>
   11ccc:	15400713          	li	a4,340
   11cd0:	04f76463          	bltu	a4,a5,11d18 <_malloc_r+0x758>
   11cd4:	00f4d793          	srl	a5,s1,0xf
   11cd8:	07878593          	add	a1,a5,120
   11cdc:	07778813          	add	a6,a5,119
   11ce0:	00359613          	sll	a2,a1,0x3
   11ce4:	9bdff06f          	j	116a0 <_malloc_r+0xe0>
   11ce8:	0089a403          	lw	s0,8(s3)
   11cec:	00442783          	lw	a5,4(s0)
   11cf0:	c01ff06f          	j	118f0 <_malloc_r+0x330>
   11cf4:	017ca023          	sw	s7,0(s9)
   11cf8:	e81ff06f          	j	11b78 <_malloc_r+0x5b8>
   11cfc:	15400693          	li	a3,340
   11d00:	04e6e463          	bltu	a3,a4,11d48 <_malloc_r+0x788>
   11d04:	00f7d713          	srl	a4,a5,0xf
   11d08:	07870613          	add	a2,a4,120
   11d0c:	07770693          	add	a3,a4,119
   11d10:	00361613          	sll	a2,a2,0x3
   11d14:	c85ff06f          	j	11998 <_malloc_r+0x3d8>
   11d18:	55400713          	li	a4,1364
   11d1c:	04f76463          	bltu	a4,a5,11d64 <_malloc_r+0x7a4>
   11d20:	0124d793          	srl	a5,s1,0x12
   11d24:	07d78593          	add	a1,a5,125
   11d28:	07c78813          	add	a6,a5,124
   11d2c:	00359613          	sll	a2,a1,0x3
   11d30:	971ff06f          	j	116a0 <_malloc_r+0xe0>
   11d34:	ff8c8c93          	add	s9,s9,-8
   11d38:	019a8ab3          	add	s5,s5,s9
   11d3c:	417a8ab3          	sub	s5,s5,s7
   11d40:	00000a13          	li	s4,0
   11d44:	e7dff06f          	j	11bc0 <_malloc_r+0x600>
   11d48:	55400693          	li	a3,1364
   11d4c:	02e6e463          	bltu	a3,a4,11d74 <_malloc_r+0x7b4>
   11d50:	0127d713          	srl	a4,a5,0x12
   11d54:	07d70613          	add	a2,a4,125
   11d58:	07c70693          	add	a3,a4,124
   11d5c:	00361613          	sll	a2,a2,0x3
   11d60:	c39ff06f          	j	11998 <_malloc_r+0x3d8>
   11d64:	3f800613          	li	a2,1016
   11d68:	07f00593          	li	a1,127
   11d6c:	07e00813          	li	a6,126
   11d70:	931ff06f          	j	116a0 <_malloc_r+0xe0>
   11d74:	3f800613          	li	a2,1016
   11d78:	07e00693          	li	a3,126
   11d7c:	c1dff06f          	j	11998 <_malloc_r+0x3d8>
   11d80:	0049a783          	lw	a5,4(s3)
   11d84:	da1ff06f          	j	11b24 <_malloc_r+0x564>

00011d88 <__malloc_lock>:
   11d88:	f6418513          	add	a0,gp,-156 # 23934 <__lock___malloc_recursive_mutex>
   11d8c:	8ccff06f          	j	10e58 <__retarget_lock_acquire_recursive>

00011d90 <__malloc_unlock>:
   11d90:	f6418513          	add	a0,gp,-156 # 23934 <__lock___malloc_recursive_mutex>
   11d94:	8dcff06f          	j	10e70 <__retarget_lock_release_recursive>

00011d98 <_vfprintf_r>:
   11d98:	e7010113          	add	sp,sp,-400
   11d9c:	18112623          	sw	ra,396(sp)
   11da0:	00b12423          	sw	a1,8(sp)
   11da4:	00c12623          	sw	a2,12(sp)
   11da8:	00d12a23          	sw	a3,20(sp)
   11dac:	17312e23          	sw	s3,380(sp)
   11db0:	18812423          	sw	s0,392(sp)
   11db4:	00050993          	mv	s3,a0
   11db8:	50c060ef          	jal	182c4 <_localeconv_r>
   11dbc:	00052783          	lw	a5,0(a0)
   11dc0:	00078513          	mv	a0,a5
   11dc4:	02f12a23          	sw	a5,52(sp)
   11dc8:	00d060ef          	jal	185d4 <strlen>
   11dcc:	00050713          	mv	a4,a0
   11dd0:	00800613          	li	a2,8
   11dd4:	00000593          	li	a1,0
   11dd8:	09010513          	add	a0,sp,144
   11ddc:	02e12823          	sw	a4,48(sp)
   11de0:	894ff0ef          	jal	10e74 <memset>
   11de4:	00c12783          	lw	a5,12(sp)
   11de8:	00098863          	beqz	s3,11df8 <_vfprintf_r+0x60>
   11dec:	0349a703          	lw	a4,52(s3)
   11df0:	00071463          	bnez	a4,11df8 <_vfprintf_r+0x60>
   11df4:	2990106f          	j	1388c <_vfprintf_r+0x1af4>
   11df8:	00812703          	lw	a4,8(sp)
   11dfc:	06472683          	lw	a3,100(a4)
   11e00:	00c71703          	lh	a4,12(a4)
   11e04:	0016f693          	and	a3,a3,1
   11e08:	00069863          	bnez	a3,11e18 <_vfprintf_r+0x80>
   11e0c:	20077693          	and	a3,a4,512
   11e10:	00069463          	bnez	a3,11e18 <_vfprintf_r+0x80>
   11e14:	3e80106f          	j	131fc <_vfprintf_r+0x1464>
   11e18:	01271693          	sll	a3,a4,0x12
   11e1c:	0206c863          	bltz	a3,11e4c <_vfprintf_r+0xb4>
   11e20:	00812503          	lw	a0,8(sp)
   11e24:	000025b7          	lui	a1,0x2
   11e28:	ffffe637          	lui	a2,0xffffe
   11e2c:	06452683          	lw	a3,100(a0)
   11e30:	00b76733          	or	a4,a4,a1
   11e34:	fff60613          	add	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffda0ef>
   11e38:	01071713          	sll	a4,a4,0x10
   11e3c:	41075713          	sra	a4,a4,0x10
   11e40:	00c6f6b3          	and	a3,a3,a2
   11e44:	00e51623          	sh	a4,12(a0)
   11e48:	06d52223          	sw	a3,100(a0)
   11e4c:	00877693          	and	a3,a4,8
   11e50:	28068e63          	beqz	a3,120ec <_vfprintf_r+0x354>
   11e54:	00812683          	lw	a3,8(sp)
   11e58:	0106a683          	lw	a3,16(a3)
   11e5c:	28068863          	beqz	a3,120ec <_vfprintf_r+0x354>
   11e60:	01a77693          	and	a3,a4,26
   11e64:	00a00613          	li	a2,10
   11e68:	2ac68a63          	beq	a3,a2,1211c <_vfprintf_r+0x384>
   11e6c:	0ac10713          	add	a4,sp,172
   11e70:	17512a23          	sw	s5,372(sp)
   11e74:	17812423          	sw	s8,360(sp)
   11e78:	15b12e23          	sw	s11,348(sp)
   11e7c:	18912223          	sw	s1,388(sp)
   11e80:	19212023          	sw	s2,384(sp)
   11e84:	17412c23          	sw	s4,376(sp)
   11e88:	17612823          	sw	s6,368(sp)
   11e8c:	17712623          	sw	s7,364(sp)
   11e90:	17912223          	sw	s9,356(sp)
   11e94:	17a12023          	sw	s10,352(sp)
   11e98:	0ae12023          	sw	a4,160(sp)
   11e9c:	0a012423          	sw	zero,168(sp)
   11ea0:	0a012223          	sw	zero,164(sp)
   11ea4:	00012c23          	sw	zero,24(sp)
   11ea8:	02012423          	sw	zero,40(sp)
   11eac:	02012623          	sw	zero,44(sp)
   11eb0:	00070413          	mv	s0,a4
   11eb4:	02012c23          	sw	zero,56(sp)
   11eb8:	04012023          	sw	zero,64(sp)
   11ebc:	02012e23          	sw	zero,60(sp)
   11ec0:	04012623          	sw	zero,76(sp)
   11ec4:	04012423          	sw	zero,72(sp)
   11ec8:	00012623          	sw	zero,12(sp)
   11ecc:	d3818a93          	add	s5,gp,-712 # 23708 <__global_locale>
   11ed0:	02500d93          	li	s11,37
   11ed4:	00078c13          	mv	s8,a5
   11ed8:	000c0913          	mv	s2,s8
   11edc:	0e4aa483          	lw	s1,228(s5)
   11ee0:	3c4060ef          	jal	182a4 <__locale_mb_cur_max>
   11ee4:	00050693          	mv	a3,a0
   11ee8:	09010713          	add	a4,sp,144
   11eec:	00090613          	mv	a2,s2
   11ef0:	08010593          	add	a1,sp,128
   11ef4:	00098513          	mv	a0,s3
   11ef8:	000480e7          	jalr	s1
   11efc:	2c050a63          	beqz	a0,121d0 <_vfprintf_r+0x438>
   11f00:	2a054a63          	bltz	a0,121b4 <_vfprintf_r+0x41c>
   11f04:	08012783          	lw	a5,128(sp)
   11f08:	01b78663          	beq	a5,s11,11f14 <_vfprintf_r+0x17c>
   11f0c:	00a90933          	add	s2,s2,a0
   11f10:	fcdff06f          	j	11edc <_vfprintf_r+0x144>
   11f14:	00050493          	mv	s1,a0
   11f18:	41890cb3          	sub	s9,s2,s8
   11f1c:	2d891063          	bne	s2,s8,121dc <_vfprintf_r+0x444>
   11f20:	fff00313          	li	t1,-1
   11f24:	00000e93          	li	t4,0
   11f28:	00194e03          	lbu	t3,1(s2)
   11f2c:	06010ba3          	sb	zero,119(sp)
   11f30:	00190913          	add	s2,s2,1
   11f34:	00000b93          	li	s7,0
   11f38:	05a00493          	li	s1,90
   11f3c:	000e8a13          	mv	s4,t4
   11f40:	00030b13          	mv	s6,t1
   11f44:	00190913          	add	s2,s2,1
   11f48:	fe0e0793          	add	a5,t3,-32
   11f4c:	04f4ea63          	bltu	s1,a5,11fa0 <_vfprintf_r+0x208>
   11f50:	00010717          	auipc	a4,0x10
   11f54:	ec070713          	add	a4,a4,-320 # 21e10 <__clzsi2+0x39c>
   11f58:	00279793          	sll	a5,a5,0x2
   11f5c:	00e787b3          	add	a5,a5,a4
   11f60:	0007a783          	lw	a5,0(a5)
   11f64:	00e787b3          	add	a5,a5,a4
   11f68:	00078067          	jr	a5
   11f6c:	00000b93          	li	s7,0
   11f70:	fd0e0713          	add	a4,t3,-48
   11f74:	00900693          	li	a3,9
   11f78:	00094e03          	lbu	t3,0(s2)
   11f7c:	002b9793          	sll	a5,s7,0x2
   11f80:	017787b3          	add	a5,a5,s7
   11f84:	00179793          	sll	a5,a5,0x1
   11f88:	00f70bb3          	add	s7,a4,a5
   11f8c:	fd0e0713          	add	a4,t3,-48
   11f90:	00190913          	add	s2,s2,1
   11f94:	fee6f2e3          	bgeu	a3,a4,11f78 <_vfprintf_r+0x1e0>
   11f98:	fe0e0793          	add	a5,t3,-32
   11f9c:	faf4fae3          	bgeu	s1,a5,11f50 <_vfprintf_r+0x1b8>
   11fa0:	000a0e93          	mv	t4,s4
   11fa4:	260e0a63          	beqz	t3,12218 <_vfprintf_r+0x480>
   11fa8:	0fc10623          	sb	t3,236(sp)
   11fac:	06010ba3          	sb	zero,119(sp)
   11fb0:	00100c93          	li	s9,1
   11fb4:	00000613          	li	a2,0
   11fb8:	00012823          	sw	zero,16(sp)
   11fbc:	00100d13          	li	s10,1
   11fc0:	00000313          	li	t1,0
   11fc4:	02012223          	sw	zero,36(sp)
   11fc8:	02012023          	sw	zero,32(sp)
   11fcc:	00000a13          	li	s4,0
   11fd0:	0ec10c13          	add	s8,sp,236
   11fd4:	002ef293          	and	t0,t4,2
   11fd8:	00028463          	beqz	t0,11fe0 <_vfprintf_r+0x248>
   11fdc:	002c8c93          	add	s9,s9,2
   11fe0:	084eff93          	and	t6,t4,132
   11fe4:	0a812483          	lw	s1,168(sp)
   11fe8:	000f9663          	bnez	t6,11ff4 <_vfprintf_r+0x25c>
   11fec:	419b8733          	sub	a4,s7,s9
   11ff0:	40e04663          	bgtz	a4,123fc <_vfprintf_r+0x664>
   11ff4:	02060a63          	beqz	a2,12028 <_vfprintf_r+0x290>
   11ff8:	0a412703          	lw	a4,164(sp)
   11ffc:	07710613          	add	a2,sp,119
   12000:	00148493          	add	s1,s1,1
   12004:	00170713          	add	a4,a4,1
   12008:	00100793          	li	a5,1
   1200c:	00c42023          	sw	a2,0(s0)
   12010:	00f42223          	sw	a5,4(s0)
   12014:	0a912423          	sw	s1,168(sp)
   12018:	0ae12223          	sw	a4,164(sp)
   1201c:	00700613          	li	a2,7
   12020:	00840413          	add	s0,s0,8
   12024:	4ce64863          	blt	a2,a4,124f4 <_vfprintf_r+0x75c>
   12028:	02028a63          	beqz	t0,1205c <_vfprintf_r+0x2c4>
   1202c:	0a412703          	lw	a4,164(sp)
   12030:	07810613          	add	a2,sp,120
   12034:	00c42023          	sw	a2,0(s0)
   12038:	00248493          	add	s1,s1,2
   1203c:	00200613          	li	a2,2
   12040:	00170713          	add	a4,a4,1
   12044:	00c42223          	sw	a2,4(s0)
   12048:	0a912423          	sw	s1,168(sp)
   1204c:	0ae12223          	sw	a4,164(sp)
   12050:	00700613          	li	a2,7
   12054:	00840413          	add	s0,s0,8
   12058:	5ce644e3          	blt	a2,a4,12e20 <_vfprintf_r+0x1088>
   1205c:	08000713          	li	a4,128
   12060:	3aef80e3          	beq	t6,a4,12c00 <_vfprintf_r+0xe68>
   12064:	41a30b33          	sub	s6,t1,s10
   12068:	4b604ae3          	bgtz	s6,12d1c <_vfprintf_r+0xf84>
   1206c:	100ef713          	and	a4,t4,256
   12070:	1a0710e3          	bnez	a4,12a10 <_vfprintf_r+0xc78>
   12074:	0a412783          	lw	a5,164(sp)
   12078:	01a484b3          	add	s1,s1,s10
   1207c:	01842023          	sw	s8,0(s0)
   12080:	00178793          	add	a5,a5,1
   12084:	01a42223          	sw	s10,4(s0)
   12088:	0a912423          	sw	s1,168(sp)
   1208c:	0af12223          	sw	a5,164(sp)
   12090:	00700713          	li	a4,7
   12094:	58f74c63          	blt	a4,a5,1262c <_vfprintf_r+0x894>
   12098:	00840413          	add	s0,s0,8
   1209c:	004eff13          	and	t5,t4,4
   120a0:	000f0663          	beqz	t5,120ac <_vfprintf_r+0x314>
   120a4:	419b8d33          	sub	s10,s7,s9
   120a8:	5ba04ce3          	bgtz	s10,12e60 <_vfprintf_r+0x10c8>
   120ac:	000b8e93          	mv	t4,s7
   120b0:	019bd463          	bge	s7,s9,120b8 <_vfprintf_r+0x320>
   120b4:	000c8e93          	mv	t4,s9
   120b8:	00c12783          	lw	a5,12(sp)
   120bc:	01d787b3          	add	a5,a5,t4
   120c0:	00f12623          	sw	a5,12(sp)
   120c4:	18049663          	bnez	s1,12250 <_vfprintf_r+0x4b8>
   120c8:	01012783          	lw	a5,16(sp)
   120cc:	0a012223          	sw	zero,164(sp)
   120d0:	00078863          	beqz	a5,120e0 <_vfprintf_r+0x348>
   120d4:	01012583          	lw	a1,16(sp)
   120d8:	00098513          	mv	a0,s3
   120dc:	9e0ff0ef          	jal	112bc <_free_r>
   120e0:	0ac10413          	add	s0,sp,172
   120e4:	00090c13          	mv	s8,s2
   120e8:	df1ff06f          	j	11ed8 <_vfprintf_r+0x140>
   120ec:	00812403          	lw	s0,8(sp)
   120f0:	00098513          	mv	a0,s3
   120f4:	00f12623          	sw	a5,12(sp)
   120f8:	00040593          	mv	a1,s0
   120fc:	6cd040ef          	jal	16fc8 <__swsetup_r>
   12100:	00050463          	beqz	a0,12108 <_vfprintf_r+0x370>
   12104:	5600206f          	j	14664 <_vfprintf_r+0x28cc>
   12108:	00c41703          	lh	a4,12(s0)
   1210c:	00a00613          	li	a2,10
   12110:	00c12783          	lw	a5,12(sp)
   12114:	01a77693          	and	a3,a4,26
   12118:	d4c69ae3          	bne	a3,a2,11e6c <_vfprintf_r+0xd4>
   1211c:	00812603          	lw	a2,8(sp)
   12120:	00e61683          	lh	a3,14(a2)
   12124:	d406c4e3          	bltz	a3,11e6c <_vfprintf_r+0xd4>
   12128:	06462683          	lw	a3,100(a2)
   1212c:	0016f693          	and	a3,a3,1
   12130:	00069863          	bnez	a3,12140 <_vfprintf_r+0x3a8>
   12134:	20077713          	and	a4,a4,512
   12138:	00071463          	bnez	a4,12140 <_vfprintf_r+0x3a8>
   1213c:	53d0106f          	j	13e78 <_vfprintf_r+0x20e0>
   12140:	01412683          	lw	a3,20(sp)
   12144:	00812583          	lw	a1,8(sp)
   12148:	00098513          	mv	a0,s3
   1214c:	00078613          	mv	a2,a5
   12150:	0f9020ef          	jal	14a48 <__sbprintf>
   12154:	18c12083          	lw	ra,396(sp)
   12158:	18812403          	lw	s0,392(sp)
   1215c:	00a12623          	sw	a0,12(sp)
   12160:	00c12503          	lw	a0,12(sp)
   12164:	17c12983          	lw	s3,380(sp)
   12168:	19010113          	add	sp,sp,400
   1216c:	00008067          	ret
   12170:	00098513          	mv	a0,s3
   12174:	150060ef          	jal	182c4 <_localeconv_r>
   12178:	00452783          	lw	a5,4(a0)
   1217c:	00078513          	mv	a0,a5
   12180:	04f12423          	sw	a5,72(sp)
   12184:	450060ef          	jal	185d4 <strlen>
   12188:	00050793          	mv	a5,a0
   1218c:	00098513          	mv	a0,s3
   12190:	00078c93          	mv	s9,a5
   12194:	04f12623          	sw	a5,76(sp)
   12198:	12c060ef          	jal	182c4 <_localeconv_r>
   1219c:	00852703          	lw	a4,8(a0)
   121a0:	02e12e23          	sw	a4,60(sp)
   121a4:	000c8463          	beqz	s9,121ac <_vfprintf_r+0x414>
   121a8:	1ec0106f          	j	13394 <_vfprintf_r+0x15fc>
   121ac:	00094e03          	lbu	t3,0(s2)
   121b0:	d95ff06f          	j	11f44 <_vfprintf_r+0x1ac>
   121b4:	00800613          	li	a2,8
   121b8:	00000593          	li	a1,0
   121bc:	09010513          	add	a0,sp,144
   121c0:	cb5fe0ef          	jal	10e74 <memset>
   121c4:	00100513          	li	a0,1
   121c8:	00a90933          	add	s2,s2,a0
   121cc:	d11ff06f          	j	11edc <_vfprintf_r+0x144>
   121d0:	00050493          	mv	s1,a0
   121d4:	41890cb3          	sub	s9,s2,s8
   121d8:	05890063          	beq	s2,s8,12218 <_vfprintf_r+0x480>
   121dc:	0a812683          	lw	a3,168(sp)
   121e0:	0a412703          	lw	a4,164(sp)
   121e4:	01842023          	sw	s8,0(s0)
   121e8:	019686b3          	add	a3,a3,s9
   121ec:	00170713          	add	a4,a4,1
   121f0:	01942223          	sw	s9,4(s0)
   121f4:	0ad12423          	sw	a3,168(sp)
   121f8:	0ae12223          	sw	a4,164(sp)
   121fc:	00700693          	li	a3,7
   12200:	00840413          	add	s0,s0,8
   12204:	02e6c863          	blt	a3,a4,12234 <_vfprintf_r+0x49c>
   12208:	00c12783          	lw	a5,12(sp)
   1220c:	019787b3          	add	a5,a5,s9
   12210:	00f12623          	sw	a5,12(sp)
   12214:	d00496e3          	bnez	s1,11f20 <_vfprintf_r+0x188>
   12218:	0a812783          	lw	a5,168(sp)
   1221c:	00078463          	beqz	a5,12224 <_vfprintf_r+0x48c>
   12220:	4090106f          	j	13e28 <_vfprintf_r+0x2090>
   12224:	00812783          	lw	a5,8(sp)
   12228:	0a012223          	sw	zero,164(sp)
   1222c:	00c79783          	lh	a5,12(a5)
   12230:	0500006f          	j	12280 <_vfprintf_r+0x4e8>
   12234:	00812583          	lw	a1,8(sp)
   12238:	0a010613          	add	a2,sp,160
   1223c:	00098513          	mv	a0,s3
   12240:	225020ef          	jal	14c64 <__sprint_r>
   12244:	02051a63          	bnez	a0,12278 <_vfprintf_r+0x4e0>
   12248:	0ac10413          	add	s0,sp,172
   1224c:	fbdff06f          	j	12208 <_vfprintf_r+0x470>
   12250:	00812583          	lw	a1,8(sp)
   12254:	0a010613          	add	a2,sp,160
   12258:	00098513          	mv	a0,s3
   1225c:	209020ef          	jal	14c64 <__sprint_r>
   12260:	e60504e3          	beqz	a0,120c8 <_vfprintf_r+0x330>
   12264:	01012283          	lw	t0,16(sp)
   12268:	00028863          	beqz	t0,12278 <_vfprintf_r+0x4e0>
   1226c:	00028593          	mv	a1,t0
   12270:	00098513          	mv	a0,s3
   12274:	848ff0ef          	jal	112bc <_free_r>
   12278:	00812783          	lw	a5,8(sp)
   1227c:	00c79783          	lh	a5,12(a5)
   12280:	00812703          	lw	a4,8(sp)
   12284:	06472703          	lw	a4,100(a4)
   12288:	00177713          	and	a4,a4,1
   1228c:	3c070463          	beqz	a4,12654 <_vfprintf_r+0x8bc>
   12290:	0407f793          	and	a5,a5,64
   12294:	18412483          	lw	s1,388(sp)
   12298:	18012903          	lw	s2,384(sp)
   1229c:	17812a03          	lw	s4,376(sp)
   122a0:	17412a83          	lw	s5,372(sp)
   122a4:	17012b03          	lw	s6,368(sp)
   122a8:	16c12b83          	lw	s7,364(sp)
   122ac:	16812c03          	lw	s8,360(sp)
   122b0:	16412c83          	lw	s9,356(sp)
   122b4:	16012d03          	lw	s10,352(sp)
   122b8:	15c12d83          	lw	s11,348(sp)
   122bc:	00078463          	beqz	a5,122c4 <_vfprintf_r+0x52c>
   122c0:	3d00206f          	j	14690 <_vfprintf_r+0x28f8>
   122c4:	18c12083          	lw	ra,396(sp)
   122c8:	18812403          	lw	s0,392(sp)
   122cc:	00c12503          	lw	a0,12(sp)
   122d0:	17c12983          	lw	s3,380(sp)
   122d4:	19010113          	add	sp,sp,400
   122d8:	00008067          	ret
   122dc:	008a7713          	and	a4,s4,8
   122e0:	000a0e93          	mv	t4,s4
   122e4:	000b0313          	mv	t1,s6
   122e8:	00070463          	beqz	a4,122f0 <_vfprintf_r+0x558>
   122ec:	0200106f          	j	1330c <_vfprintf_r+0x1574>
   122f0:	01412783          	lw	a5,20(sp)
   122f4:	00778b13          	add	s6,a5,7
   122f8:	ff8b7b13          	and	s6,s6,-8
   122fc:	000b2783          	lw	a5,0(s6)
   12300:	02f12423          	sw	a5,40(sp)
   12304:	004b2783          	lw	a5,4(s6)
   12308:	02f12623          	sw	a5,44(sp)
   1230c:	008b0793          	add	a5,s6,8
   12310:	00f12a23          	sw	a5,20(sp)
   12314:	02c12a03          	lw	s4,44(sp)
   12318:	00011717          	auipc	a4,0x11
   1231c:	58070713          	add	a4,a4,1408 # 23898 <__SDATA_BEGIN__>
   12320:	00072c83          	lw	s9,0(a4)
   12324:	00472d03          	lw	s10,4(a4)
   12328:	02812b03          	lw	s6,40(sp)
   1232c:	001a1493          	sll	s1,s4,0x1
   12330:	0014d493          	srl	s1,s1,0x1
   12334:	000b0513          	mv	a0,s6
   12338:	00048593          	mv	a1,s1
   1233c:	000c8613          	mv	a2,s9
   12340:	000d0693          	mv	a3,s10
   12344:	02612223          	sw	t1,36(sp)
   12348:	03c12023          	sw	t3,32(sp)
   1234c:	01d12823          	sw	t4,16(sp)
   12350:	01c0f0ef          	jal	2136c <__unorddf2>
   12354:	01012e83          	lw	t4,16(sp)
   12358:	02012e03          	lw	t3,32(sp)
   1235c:	02412303          	lw	t1,36(sp)
   12360:	00050463          	beqz	a0,12368 <_vfprintf_r+0x5d0>
   12364:	4080106f          	j	1376c <_vfprintf_r+0x19d4>
   12368:	000b0513          	mv	a0,s6
   1236c:	00048593          	mv	a1,s1
   12370:	000c8613          	mv	a2,s9
   12374:	000d0693          	mv	a3,s10
   12378:	6550d0ef          	jal	201cc <__ledf2>
   1237c:	01012e83          	lw	t4,16(sp)
   12380:	02012e03          	lw	t3,32(sp)
   12384:	02412303          	lw	t1,36(sp)
   12388:	00a04463          	bgtz	a0,12390 <_vfprintf_r+0x5f8>
   1238c:	3e00106f          	j	1376c <_vfprintf_r+0x19d4>
   12390:	000b0513          	mv	a0,s6
   12394:	000a0593          	mv	a1,s4
   12398:	00000613          	li	a2,0
   1239c:	00000693          	li	a3,0
   123a0:	62d0d0ef          	jal	201cc <__ledf2>
   123a4:	01012e83          	lw	t4,16(sp)
   123a8:	02012e03          	lw	t3,32(sp)
   123ac:	00055463          	bgez	a0,123b4 <_vfprintf_r+0x61c>
   123b0:	6650106f          	j	14214 <_vfprintf_r+0x247c>
   123b4:	07714603          	lbu	a2,119(sp)
   123b8:	04700713          	li	a4,71
   123bc:	0000fc17          	auipc	s8,0xf
   123c0:	77cc0c13          	add	s8,s8,1916 # 21b38 <__clzsi2+0xc4>
   123c4:	01c74663          	blt	a4,t3,123d0 <_vfprintf_r+0x638>
   123c8:	0000fc17          	auipc	s8,0xf
   123cc:	76cc0c13          	add	s8,s8,1900 # 21b34 <__clzsi2+0xc0>
   123d0:	00012823          	sw	zero,16(sp)
   123d4:	02012223          	sw	zero,36(sp)
   123d8:	02012023          	sw	zero,32(sp)
   123dc:	f7fefe93          	and	t4,t4,-129
   123e0:	00300c93          	li	s9,3
   123e4:	00300d13          	li	s10,3
   123e8:	00000313          	li	t1,0
   123ec:	00000a13          	li	s4,0
   123f0:	be0602e3          	beqz	a2,11fd4 <_vfprintf_r+0x23c>
   123f4:	001c8c93          	add	s9,s9,1
   123f8:	bddff06f          	j	11fd4 <_vfprintf_r+0x23c>
   123fc:	01000593          	li	a1,16
   12400:	0a412603          	lw	a2,164(sp)
   12404:	00010b17          	auipc	s6,0x10
   12408:	c20b0b13          	add	s6,s6,-992 # 22024 <blanks.1>
   1240c:	0ae5dc63          	bge	a1,a4,124c4 <_vfprintf_r+0x72c>
   12410:	00040793          	mv	a5,s0
   12414:	00048693          	mv	a3,s1
   12418:	01000893          	li	a7,16
   1241c:	000b0493          	mv	s1,s6
   12420:	00700393          	li	t2,7
   12424:	000a0b13          	mv	s6,s4
   12428:	04512223          	sw	t0,68(sp)
   1242c:	05f12823          	sw	t6,80(sp)
   12430:	05d12a23          	sw	t4,84(sp)
   12434:	05c12c23          	sw	t3,88(sp)
   12438:	00070413          	mv	s0,a4
   1243c:	00030a13          	mv	s4,t1
   12440:	00c0006f          	j	1244c <_vfprintf_r+0x6b4>
   12444:	ff040413          	add	s0,s0,-16
   12448:	0488da63          	bge	a7,s0,1249c <_vfprintf_r+0x704>
   1244c:	01068693          	add	a3,a3,16
   12450:	00160613          	add	a2,a2,1
   12454:	0097a023          	sw	s1,0(a5)
   12458:	0117a223          	sw	a7,4(a5)
   1245c:	0ad12423          	sw	a3,168(sp)
   12460:	0ac12223          	sw	a2,164(sp)
   12464:	00878793          	add	a5,a5,8
   12468:	fcc3dee3          	bge	t2,a2,12444 <_vfprintf_r+0x6ac>
   1246c:	00812583          	lw	a1,8(sp)
   12470:	0a010613          	add	a2,sp,160
   12474:	00098513          	mv	a0,s3
   12478:	7ec020ef          	jal	14c64 <__sprint_r>
   1247c:	de0514e3          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   12480:	01000893          	li	a7,16
   12484:	ff040413          	add	s0,s0,-16
   12488:	0a812683          	lw	a3,168(sp)
   1248c:	0a412603          	lw	a2,164(sp)
   12490:	0ac10793          	add	a5,sp,172
   12494:	00700393          	li	t2,7
   12498:	fa88cae3          	blt	a7,s0,1244c <_vfprintf_r+0x6b4>
   1249c:	04412283          	lw	t0,68(sp)
   124a0:	05012f83          	lw	t6,80(sp)
   124a4:	05412e83          	lw	t4,84(sp)
   124a8:	05812e03          	lw	t3,88(sp)
   124ac:	000a0313          	mv	t1,s4
   124b0:	00040713          	mv	a4,s0
   124b4:	000b0a13          	mv	s4,s6
   124b8:	00078413          	mv	s0,a5
   124bc:	00048b13          	mv	s6,s1
   124c0:	00068493          	mv	s1,a3
   124c4:	00e484b3          	add	s1,s1,a4
   124c8:	00160613          	add	a2,a2,1
   124cc:	00e42223          	sw	a4,4(s0)
   124d0:	01642023          	sw	s6,0(s0)
   124d4:	0a912423          	sw	s1,168(sp)
   124d8:	0ac12223          	sw	a2,164(sp)
   124dc:	00700713          	li	a4,7
   124e0:	00c75463          	bge	a4,a2,124e8 <_vfprintf_r+0x750>
   124e4:	2380106f          	j	1371c <_vfprintf_r+0x1984>
   124e8:	07714603          	lbu	a2,119(sp)
   124ec:	00840413          	add	s0,s0,8
   124f0:	b05ff06f          	j	11ff4 <_vfprintf_r+0x25c>
   124f4:	00812583          	lw	a1,8(sp)
   124f8:	0a010613          	add	a2,sp,160
   124fc:	00098513          	mv	a0,s3
   12500:	04612e23          	sw	t1,92(sp)
   12504:	05c12c23          	sw	t3,88(sp)
   12508:	05d12a23          	sw	t4,84(sp)
   1250c:	05f12823          	sw	t6,80(sp)
   12510:	04512223          	sw	t0,68(sp)
   12514:	750020ef          	jal	14c64 <__sprint_r>
   12518:	d40516e3          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   1251c:	0a812483          	lw	s1,168(sp)
   12520:	05c12303          	lw	t1,92(sp)
   12524:	05812e03          	lw	t3,88(sp)
   12528:	05412e83          	lw	t4,84(sp)
   1252c:	05012f83          	lw	t6,80(sp)
   12530:	04412283          	lw	t0,68(sp)
   12534:	0ac10413          	add	s0,sp,172
   12538:	af1ff06f          	j	12028 <_vfprintf_r+0x290>
   1253c:	0a412d03          	lw	s10,164(sp)
   12540:	01812783          	lw	a5,24(sp)
   12544:	00100693          	li	a3,1
   12548:	01842023          	sw	s8,0(s0)
   1254c:	00148493          	add	s1,s1,1
   12550:	001d0d13          	add	s10,s10,1
   12554:	00840b13          	add	s6,s0,8
   12558:	32f6d0e3          	bge	a3,a5,13078 <_vfprintf_r+0x12e0>
   1255c:	00100693          	li	a3,1
   12560:	00d42223          	sw	a3,4(s0)
   12564:	0a912423          	sw	s1,168(sp)
   12568:	0ba12223          	sw	s10,164(sp)
   1256c:	00700693          	li	a3,7
   12570:	01a6d463          	bge	a3,s10,12578 <_vfprintf_r+0x7e0>
   12574:	0680106f          	j	135dc <_vfprintf_r+0x1844>
   12578:	03012783          	lw	a5,48(sp)
   1257c:	03412703          	lw	a4,52(sp)
   12580:	001d0d13          	add	s10,s10,1
   12584:	00f484b3          	add	s1,s1,a5
   12588:	00eb2023          	sw	a4,0(s6)
   1258c:	00fb2223          	sw	a5,4(s6)
   12590:	0a912423          	sw	s1,168(sp)
   12594:	0ba12223          	sw	s10,164(sp)
   12598:	00700693          	li	a3,7
   1259c:	008b0b13          	add	s6,s6,8
   125a0:	01a6d463          	bge	a3,s10,125a8 <_vfprintf_r+0x810>
   125a4:	0680106f          	j	1360c <_vfprintf_r+0x1874>
   125a8:	02812603          	lw	a2,40(sp)
   125ac:	02c12683          	lw	a3,44(sp)
   125b0:	01812783          	lw	a5,24(sp)
   125b4:	00060513          	mv	a0,a2
   125b8:	00068593          	mv	a1,a3
   125bc:	00000613          	li	a2,0
   125c0:	00000693          	li	a3,0
   125c4:	03d12023          	sw	t4,32(sp)
   125c8:	fff78413          	add	s0,a5,-1
   125cc:	2750d0ef          	jal	20040 <__eqdf2>
   125d0:	02012e83          	lw	t4,32(sp)
   125d4:	2e0506e3          	beqz	a0,130c0 <_vfprintf_r+0x1328>
   125d8:	001c0793          	add	a5,s8,1
   125dc:	001d0d13          	add	s10,s10,1
   125e0:	008484b3          	add	s1,s1,s0
   125e4:	00fb2023          	sw	a5,0(s6)
   125e8:	008b2223          	sw	s0,4(s6)
   125ec:	0a912423          	sw	s1,168(sp)
   125f0:	0ba12223          	sw	s10,164(sp)
   125f4:	00700793          	li	a5,7
   125f8:	008b0b13          	add	s6,s6,8
   125fc:	29a7cce3          	blt	a5,s10,13094 <_vfprintf_r+0x12fc>
   12600:	04012703          	lw	a4,64(sp)
   12604:	08810793          	add	a5,sp,136
   12608:	001d0d13          	add	s10,s10,1
   1260c:	009704b3          	add	s1,a4,s1
   12610:	00fb2023          	sw	a5,0(s6)
   12614:	00eb2223          	sw	a4,4(s6)
   12618:	0a912423          	sw	s1,168(sp)
   1261c:	0ba12223          	sw	s10,164(sp)
   12620:	00700793          	li	a5,7
   12624:	008b0413          	add	s0,s6,8
   12628:	a7a7dae3          	bge	a5,s10,1209c <_vfprintf_r+0x304>
   1262c:	00812583          	lw	a1,8(sp)
   12630:	0a010613          	add	a2,sp,160
   12634:	00098513          	mv	a0,s3
   12638:	03d12023          	sw	t4,32(sp)
   1263c:	628020ef          	jal	14c64 <__sprint_r>
   12640:	c20512e3          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   12644:	0a812483          	lw	s1,168(sp)
   12648:	02012e83          	lw	t4,32(sp)
   1264c:	0ac10413          	add	s0,sp,172
   12650:	a4dff06f          	j	1209c <_vfprintf_r+0x304>
   12654:	2007f713          	and	a4,a5,512
   12658:	c2071ce3          	bnez	a4,12290 <_vfprintf_r+0x4f8>
   1265c:	00812403          	lw	s0,8(sp)
   12660:	05842503          	lw	a0,88(s0)
   12664:	80dfe0ef          	jal	10e70 <__retarget_lock_release_recursive>
   12668:	00c41783          	lh	a5,12(s0)
   1266c:	c25ff06f          	j	12290 <_vfprintf_r+0x4f8>
   12670:	00094e03          	lbu	t3,0(s2)
   12674:	020a6a13          	or	s4,s4,32
   12678:	8cdff06f          	j	11f44 <_vfprintf_r+0x1ac>
   1267c:	01412703          	lw	a4,20(sp)
   12680:	04300793          	li	a5,67
   12684:	000a0e93          	mv	t4,s4
   12688:	00470493          	add	s1,a4,4
   1268c:	64fe08e3          	beq	t3,a5,134dc <_vfprintf_r+0x1744>
   12690:	010a7793          	and	a5,s4,16
   12694:	640794e3          	bnez	a5,134dc <_vfprintf_r+0x1744>
   12698:	01412783          	lw	a5,20(sp)
   1269c:	00100c93          	li	s9,1
   126a0:	00100d13          	li	s10,1
   126a4:	0007a783          	lw	a5,0(a5)
   126a8:	0ec10c13          	add	s8,sp,236
   126ac:	0ef10623          	sb	a5,236(sp)
   126b0:	06010ba3          	sb	zero,119(sp)
   126b4:	00912a23          	sw	s1,20(sp)
   126b8:	00000613          	li	a2,0
   126bc:	00012823          	sw	zero,16(sp)
   126c0:	00000313          	li	t1,0
   126c4:	02012223          	sw	zero,36(sp)
   126c8:	02012023          	sw	zero,32(sp)
   126cc:	00000a13          	li	s4,0
   126d0:	905ff06f          	j	11fd4 <_vfprintf_r+0x23c>
   126d4:	01412783          	lw	a5,20(sp)
   126d8:	06010ba3          	sb	zero,119(sp)
   126dc:	000b0313          	mv	t1,s6
   126e0:	0007ac03          	lw	s8,0(a5)
   126e4:	000a0e93          	mv	t4,s4
   126e8:	00478b13          	add	s6,a5,4
   126ec:	5a0c0ce3          	beqz	s8,134a4 <_vfprintf_r+0x170c>
   126f0:	05300713          	li	a4,83
   126f4:	00ee1463          	bne	t3,a4,126fc <_vfprintf_r+0x964>
   126f8:	1d00106f          	j	138c8 <_vfprintf_r+0x1b30>
   126fc:	010a7a13          	and	s4,s4,16
   12700:	000a0463          	beqz	s4,12708 <_vfprintf_r+0x970>
   12704:	1c40106f          	j	138c8 <_vfprintf_r+0x1b30>
   12708:	00035463          	bgez	t1,12710 <_vfprintf_r+0x978>
   1270c:	6d40106f          	j	13de0 <_vfprintf_r+0x2048>
   12710:	00030613          	mv	a2,t1
   12714:	00000593          	li	a1,0
   12718:	000c0513          	mv	a0,s8
   1271c:	03d12023          	sw	t4,32(sp)
   12720:	00612a23          	sw	t1,20(sp)
   12724:	501040ef          	jal	17424 <memchr>
   12728:	00a12823          	sw	a0,16(sp)
   1272c:	01412303          	lw	t1,20(sp)
   12730:	02012e83          	lw	t4,32(sp)
   12734:	00051463          	bnez	a0,1273c <_vfprintf_r+0x9a4>
   12738:	1780206f          	j	148b0 <_vfprintf_r+0x2b18>
   1273c:	01012783          	lw	a5,16(sp)
   12740:	07714603          	lbu	a2,119(sp)
   12744:	01612a23          	sw	s6,20(sp)
   12748:	41878d33          	sub	s10,a5,s8
   1274c:	fffd4813          	not	a6,s10
   12750:	41f85813          	sra	a6,a6,0x1f
   12754:	02012223          	sw	zero,36(sp)
   12758:	02012023          	sw	zero,32(sp)
   1275c:	00012823          	sw	zero,16(sp)
   12760:	010d7cb3          	and	s9,s10,a6
   12764:	00000313          	li	t1,0
   12768:	07300e13          	li	t3,115
   1276c:	860604e3          	beqz	a2,11fd4 <_vfprintf_r+0x23c>
   12770:	c85ff06f          	j	123f4 <_vfprintf_r+0x65c>
   12774:	01412783          	lw	a5,20(sp)
   12778:	0007ab83          	lw	s7,0(a5)
   1277c:	00478793          	add	a5,a5,4
   12780:	2a0bdae3          	bgez	s7,13234 <_vfprintf_r+0x149c>
   12784:	41700bb3          	neg	s7,s7
   12788:	00f12a23          	sw	a5,20(sp)
   1278c:	00094e03          	lbu	t3,0(s2)
   12790:	004a6a13          	or	s4,s4,4
   12794:	fb0ff06f          	j	11f44 <_vfprintf_r+0x1ac>
   12798:	02b00793          	li	a5,43
   1279c:	00094e03          	lbu	t3,0(s2)
   127a0:	06f10ba3          	sb	a5,119(sp)
   127a4:	fa0ff06f          	j	11f44 <_vfprintf_r+0x1ac>
   127a8:	000b0313          	mv	t1,s6
   127ac:	010a6613          	or	a2,s4,16
   127b0:	02067793          	and	a5,a2,32
   127b4:	1c0780e3          	beqz	a5,13174 <_vfprintf_r+0x13dc>
   127b8:	01412783          	lw	a5,20(sp)
   127bc:	00778b13          	add	s6,a5,7
   127c0:	ff8b7b13          	and	s6,s6,-8
   127c4:	000b2d03          	lw	s10,0(s6)
   127c8:	004b2c83          	lw	s9,4(s6)
   127cc:	008b0793          	add	a5,s6,8
   127d0:	00f12a23          	sw	a5,20(sp)
   127d4:	00100793          	li	a5,1
   127d8:	00000713          	li	a4,0
   127dc:	06e10ba3          	sb	a4,119(sp)
   127e0:	34034c63          	bltz	t1,12b38 <_vfprintf_r+0xda0>
   127e4:	019d6733          	or	a4,s10,s9
   127e8:	f7f67e93          	and	t4,a2,-129
   127ec:	34071463          	bnez	a4,12b34 <_vfprintf_r+0xd9c>
   127f0:	3a031a63          	bnez	t1,12ba4 <_vfprintf_r+0xe0c>
   127f4:	5c079ee3          	bnez	a5,135d0 <_vfprintf_r+0x1838>
   127f8:	00167d13          	and	s10,a2,1
   127fc:	15010c13          	add	s8,sp,336
   12800:	2c0d10e3          	bnez	s10,132c0 <_vfprintf_r+0x1528>
   12804:	07714603          	lbu	a2,119(sp)
   12808:	00030c93          	mv	s9,t1
   1280c:	01a35463          	bge	t1,s10,12814 <_vfprintf_r+0xa7c>
   12810:	000d0c93          	mv	s9,s10
   12814:	00012823          	sw	zero,16(sp)
   12818:	02012223          	sw	zero,36(sp)
   1281c:	02012023          	sw	zero,32(sp)
   12820:	00000a13          	li	s4,0
   12824:	fa060863          	beqz	a2,11fd4 <_vfprintf_r+0x23c>
   12828:	bcdff06f          	j	123f4 <_vfprintf_r+0x65c>
   1282c:	00094e03          	lbu	t3,0(s2)
   12830:	080a6a13          	or	s4,s4,128
   12834:	f10ff06f          	j	11f44 <_vfprintf_r+0x1ac>
   12838:	00094e03          	lbu	t3,0(s2)
   1283c:	02a00793          	li	a5,42
   12840:	00190693          	add	a3,s2,1
   12844:	00fe1463          	bne	t3,a5,1284c <_vfprintf_r+0xab4>
   12848:	1100206f          	j	14958 <_vfprintf_r+0x2bc0>
   1284c:	fd0e0713          	add	a4,t3,-48
   12850:	00900793          	li	a5,9
   12854:	00000b13          	li	s6,0
   12858:	00900613          	li	a2,9
   1285c:	02e7e463          	bltu	a5,a4,12884 <_vfprintf_r+0xaec>
   12860:	0006ce03          	lbu	t3,0(a3)
   12864:	002b1793          	sll	a5,s6,0x2
   12868:	016787b3          	add	a5,a5,s6
   1286c:	00179793          	sll	a5,a5,0x1
   12870:	00e78b33          	add	s6,a5,a4
   12874:	fd0e0713          	add	a4,t3,-48
   12878:	00168693          	add	a3,a3,1
   1287c:	fee672e3          	bgeu	a2,a4,12860 <_vfprintf_r+0xac8>
   12880:	320b4ce3          	bltz	s6,133b8 <_vfprintf_r+0x1620>
   12884:	00068913          	mv	s2,a3
   12888:	ec0ff06f          	j	11f48 <_vfprintf_r+0x1b0>
   1288c:	00094e03          	lbu	t3,0(s2)
   12890:	001a6a13          	or	s4,s4,1
   12894:	eb0ff06f          	j	11f44 <_vfprintf_r+0x1ac>
   12898:	07714783          	lbu	a5,119(sp)
   1289c:	00094e03          	lbu	t3,0(s2)
   128a0:	ea079263          	bnez	a5,11f44 <_vfprintf_r+0x1ac>
   128a4:	02000793          	li	a5,32
   128a8:	06f10ba3          	sb	a5,119(sp)
   128ac:	e98ff06f          	j	11f44 <_vfprintf_r+0x1ac>
   128b0:	00094e03          	lbu	t3,0(s2)
   128b4:	06c00793          	li	a5,108
   128b8:	3afe00e3          	beq	t3,a5,13458 <_vfprintf_r+0x16c0>
   128bc:	010a6a13          	or	s4,s4,16
   128c0:	e84ff06f          	j	11f44 <_vfprintf_r+0x1ac>
   128c4:	00094e03          	lbu	t3,0(s2)
   128c8:	008a6a13          	or	s4,s4,8
   128cc:	e78ff06f          	j	11f44 <_vfprintf_r+0x1ac>
   128d0:	000b0313          	mv	t1,s6
   128d4:	010a6e93          	or	t4,s4,16
   128d8:	020ef793          	and	a5,t4,32
   128dc:	0c0786e3          	beqz	a5,131a8 <_vfprintf_r+0x1410>
   128e0:	01412783          	lw	a5,20(sp)
   128e4:	00778b13          	add	s6,a5,7
   128e8:	ff8b7b13          	and	s6,s6,-8
   128ec:	004b2783          	lw	a5,4(s6)
   128f0:	000b2d03          	lw	s10,0(s6)
   128f4:	008b0713          	add	a4,s6,8
   128f8:	00e12a23          	sw	a4,20(sp)
   128fc:	00078c93          	mv	s9,a5
   12900:	0c07cee3          	bltz	a5,131dc <_vfprintf_r+0x1444>
   12904:	000e8613          	mv	a2,t4
   12908:	02034263          	bltz	t1,1292c <_vfprintf_r+0xb94>
   1290c:	019d67b3          	or	a5,s10,s9
   12910:	f7fef613          	and	a2,t4,-129
   12914:	00079c63          	bnez	a5,1292c <_vfprintf_r+0xb94>
   12918:	02031063          	bnez	t1,12938 <_vfprintf_r+0xba0>
   1291c:	00000d13          	li	s10,0
   12920:	00060e93          	mv	t4,a2
   12924:	15010c13          	add	s8,sp,336
   12928:	eddff06f          	j	12804 <_vfprintf_r+0xa6c>
   1292c:	520c90e3          	bnez	s9,1364c <_vfprintf_r+0x18b4>
   12930:	00900793          	li	a5,9
   12934:	51a7ece3          	bltu	a5,s10,1364c <_vfprintf_r+0x18b4>
   12938:	030d0d13          	add	s10,s10,48
   1293c:	15a107a3          	sb	s10,335(sp)
   12940:	00060e93          	mv	t4,a2
   12944:	00100d13          	li	s10,1
   12948:	14f10c13          	add	s8,sp,335
   1294c:	eb9ff06f          	j	12804 <_vfprintf_r+0xa6c>
   12950:	000b0313          	mv	t1,s6
   12954:	010a6e93          	or	t4,s4,16
   12958:	020ef793          	and	a5,t4,32
   1295c:	7e078463          	beqz	a5,13144 <_vfprintf_r+0x13ac>
   12960:	01412783          	lw	a5,20(sp)
   12964:	00778b13          	add	s6,a5,7
   12968:	ff8b7b13          	and	s6,s6,-8
   1296c:	000b2d03          	lw	s10,0(s6)
   12970:	004b2c83          	lw	s9,4(s6)
   12974:	008b0793          	add	a5,s6,8
   12978:	00f12a23          	sw	a5,20(sp)
   1297c:	bffef613          	and	a2,t4,-1025
   12980:	00000793          	li	a5,0
   12984:	e55ff06f          	j	127d8 <_vfprintf_r+0xa40>
   12988:	00094e03          	lbu	t3,0(s2)
   1298c:	06800793          	li	a5,104
   12990:	2cfe0ce3          	beq	t3,a5,13468 <_vfprintf_r+0x16d0>
   12994:	040a6a13          	or	s4,s4,64
   12998:	dacff06f          	j	11f44 <_vfprintf_r+0x1ac>
   1299c:	01412703          	lw	a4,20(sp)
   129a0:	000087b7          	lui	a5,0x8
   129a4:	83078793          	add	a5,a5,-2000 # 7830 <exit-0x8864>
   129a8:	06f11c23          	sh	a5,120(sp)
   129ac:	00470793          	add	a5,a4,4
   129b0:	00f12a23          	sw	a5,20(sp)
   129b4:	0000f797          	auipc	a5,0xf
   129b8:	19078793          	add	a5,a5,400 # 21b44 <__clzsi2+0xd0>
   129bc:	02f12c23          	sw	a5,56(sp)
   129c0:	00072d03          	lw	s10,0(a4)
   129c4:	000b0313          	mv	t1,s6
   129c8:	00000c93          	li	s9,0
   129cc:	002a6613          	or	a2,s4,2
   129d0:	00200793          	li	a5,2
   129d4:	07800e13          	li	t3,120
   129d8:	e01ff06f          	j	127d8 <_vfprintf_r+0xa40>
   129dc:	020a7793          	and	a5,s4,32
   129e0:	180784e3          	beqz	a5,13368 <_vfprintf_r+0x15d0>
   129e4:	01412783          	lw	a5,20(sp)
   129e8:	00c12683          	lw	a3,12(sp)
   129ec:	0007a783          	lw	a5,0(a5)
   129f0:	41f6d713          	sra	a4,a3,0x1f
   129f4:	00d7a023          	sw	a3,0(a5)
   129f8:	00e7a223          	sw	a4,4(a5)
   129fc:	01412783          	lw	a5,20(sp)
   12a00:	00090c13          	mv	s8,s2
   12a04:	00478793          	add	a5,a5,4
   12a08:	00f12a23          	sw	a5,20(sp)
   12a0c:	cccff06f          	j	11ed8 <_vfprintf_r+0x140>
   12a10:	06500713          	li	a4,101
   12a14:	b3c754e3          	bge	a4,t3,1253c <_vfprintf_r+0x7a4>
   12a18:	02812683          	lw	a3,40(sp)
   12a1c:	02c12703          	lw	a4,44(sp)
   12a20:	00000613          	li	a2,0
   12a24:	00068513          	mv	a0,a3
   12a28:	00070593          	mv	a1,a4
   12a2c:	00000693          	li	a3,0
   12a30:	05d12223          	sw	t4,68(sp)
   12a34:	60c0d0ef          	jal	20040 <__eqdf2>
   12a38:	04412e83          	lw	t4,68(sp)
   12a3c:	4e051463          	bnez	a0,12f24 <_vfprintf_r+0x118c>
   12a40:	0a412783          	lw	a5,164(sp)
   12a44:	0000f717          	auipc	a4,0xf
   12a48:	13070713          	add	a4,a4,304 # 21b74 <__clzsi2+0x100>
   12a4c:	00e42023          	sw	a4,0(s0)
   12a50:	00148493          	add	s1,s1,1
   12a54:	00100713          	li	a4,1
   12a58:	00178793          	add	a5,a5,1
   12a5c:	00e42223          	sw	a4,4(s0)
   12a60:	0a912423          	sw	s1,168(sp)
   12a64:	0af12223          	sw	a5,164(sp)
   12a68:	00700713          	li	a4,7
   12a6c:	00840413          	add	s0,s0,8
   12a70:	62f746e3          	blt	a4,a5,1389c <_vfprintf_r+0x1b04>
   12a74:	07c12783          	lw	a5,124(sp)
   12a78:	01812703          	lw	a4,24(sp)
   12a7c:	78e7de63          	bge	a5,a4,13218 <_vfprintf_r+0x1480>
   12a80:	03412783          	lw	a5,52(sp)
   12a84:	03012703          	lw	a4,48(sp)
   12a88:	00840413          	add	s0,s0,8
   12a8c:	fef42c23          	sw	a5,-8(s0)
   12a90:	0a412783          	lw	a5,164(sp)
   12a94:	00e484b3          	add	s1,s1,a4
   12a98:	fee42e23          	sw	a4,-4(s0)
   12a9c:	00178793          	add	a5,a5,1
   12aa0:	0a912423          	sw	s1,168(sp)
   12aa4:	0af12223          	sw	a5,164(sp)
   12aa8:	00700713          	li	a4,7
   12aac:	1cf746e3          	blt	a4,a5,13478 <_vfprintf_r+0x16e0>
   12ab0:	01812783          	lw	a5,24(sp)
   12ab4:	fff78d13          	add	s10,a5,-1
   12ab8:	dfa05263          	blez	s10,1209c <_vfprintf_r+0x304>
   12abc:	01000713          	li	a4,16
   12ac0:	0a412783          	lw	a5,164(sp)
   12ac4:	0000f297          	auipc	t0,0xf
   12ac8:	55028293          	add	t0,t0,1360 # 22014 <zeroes.0>
   12acc:	77a752e3          	bge	a4,s10,13a30 <_vfprintf_r+0x1c98>
   12ad0:	00048713          	mv	a4,s1
   12ad4:	01000c13          	li	s8,16
   12ad8:	00700b13          	li	s6,7
   12adc:	000e8493          	mv	s1,t4
   12ae0:	00028a13          	mv	s4,t0
   12ae4:	00c0006f          	j	12af0 <_vfprintf_r+0xd58>
   12ae8:	ff0d0d13          	add	s10,s10,-16
   12aec:	73ac5ce3          	bge	s8,s10,13a24 <_vfprintf_r+0x1c8c>
   12af0:	01070713          	add	a4,a4,16
   12af4:	00178793          	add	a5,a5,1
   12af8:	01442023          	sw	s4,0(s0)
   12afc:	01842223          	sw	s8,4(s0)
   12b00:	0ae12423          	sw	a4,168(sp)
   12b04:	0af12223          	sw	a5,164(sp)
   12b08:	00840413          	add	s0,s0,8
   12b0c:	fcfb5ee3          	bge	s6,a5,12ae8 <_vfprintf_r+0xd50>
   12b10:	00812583          	lw	a1,8(sp)
   12b14:	0a010613          	add	a2,sp,160
   12b18:	00098513          	mv	a0,s3
   12b1c:	148020ef          	jal	14c64 <__sprint_r>
   12b20:	f4051263          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   12b24:	0a812703          	lw	a4,168(sp)
   12b28:	0a412783          	lw	a5,164(sp)
   12b2c:	0ac10413          	add	s0,sp,172
   12b30:	fb9ff06f          	j	12ae8 <_vfprintf_r+0xd50>
   12b34:	000e8613          	mv	a2,t4
   12b38:	00100713          	li	a4,1
   12b3c:	dee788e3          	beq	a5,a4,1292c <_vfprintf_r+0xb94>
   12b40:	00200713          	li	a4,2
   12b44:	06e78c63          	beq	a5,a4,12bbc <_vfprintf_r+0xe24>
   12b48:	15010c13          	add	s8,sp,336
   12b4c:	01dc9793          	sll	a5,s9,0x1d
   12b50:	007d7713          	and	a4,s10,7
   12b54:	003d5d13          	srl	s10,s10,0x3
   12b58:	03070713          	add	a4,a4,48
   12b5c:	01a7ed33          	or	s10,a5,s10
   12b60:	003cdc93          	srl	s9,s9,0x3
   12b64:	feec0fa3          	sb	a4,-1(s8)
   12b68:	019d67b3          	or	a5,s10,s9
   12b6c:	000c0593          	mv	a1,s8
   12b70:	fffc0c13          	add	s8,s8,-1
   12b74:	fc079ce3          	bnez	a5,12b4c <_vfprintf_r+0xdb4>
   12b78:	00167693          	and	a3,a2,1
   12b7c:	06068a63          	beqz	a3,12bf0 <_vfprintf_r+0xe58>
   12b80:	03000693          	li	a3,48
   12b84:	06d70663          	beq	a4,a3,12bf0 <_vfprintf_r+0xe58>
   12b88:	ffe58593          	add	a1,a1,-2 # 1ffe <exit-0xe096>
   12b8c:	15010793          	add	a5,sp,336
   12b90:	fedc0fa3          	sb	a3,-1(s8)
   12b94:	40b78d33          	sub	s10,a5,a1
   12b98:	00060e93          	mv	t4,a2
   12b9c:	00058c13          	mv	s8,a1
   12ba0:	c65ff06f          	j	12804 <_vfprintf_r+0xa6c>
   12ba4:	00100713          	li	a4,1
   12ba8:	00e79463          	bne	a5,a4,12bb0 <_vfprintf_r+0xe18>
   12bac:	2b10106f          	j	1465c <_vfprintf_r+0x28c4>
   12bb0:	00200713          	li	a4,2
   12bb4:	000e8613          	mv	a2,t4
   12bb8:	f8e798e3          	bne	a5,a4,12b48 <_vfprintf_r+0xdb0>
   12bbc:	03812683          	lw	a3,56(sp)
   12bc0:	15010c13          	add	s8,sp,336
   12bc4:	00fd7793          	and	a5,s10,15
   12bc8:	00f687b3          	add	a5,a3,a5
   12bcc:	0007c703          	lbu	a4,0(a5)
   12bd0:	004d5d13          	srl	s10,s10,0x4
   12bd4:	01cc9793          	sll	a5,s9,0x1c
   12bd8:	01a7ed33          	or	s10,a5,s10
   12bdc:	004cdc93          	srl	s9,s9,0x4
   12be0:	feec0fa3          	sb	a4,-1(s8)
   12be4:	019d67b3          	or	a5,s10,s9
   12be8:	fffc0c13          	add	s8,s8,-1
   12bec:	fc079ce3          	bnez	a5,12bc4 <_vfprintf_r+0xe2c>
   12bf0:	15010793          	add	a5,sp,336
   12bf4:	41878d33          	sub	s10,a5,s8
   12bf8:	00060e93          	mv	t4,a2
   12bfc:	c09ff06f          	j	12804 <_vfprintf_r+0xa6c>
   12c00:	419b8b33          	sub	s6,s7,s9
   12c04:	c7605063          	blez	s6,12064 <_vfprintf_r+0x2cc>
   12c08:	01000593          	li	a1,16
   12c0c:	0a412603          	lw	a2,164(sp)
   12c10:	0000f297          	auipc	t0,0xf
   12c14:	40428293          	add	t0,t0,1028 # 22014 <zeroes.0>
   12c18:	0b65d463          	bge	a1,s6,12cc0 <_vfprintf_r+0xf28>
   12c1c:	00040793          	mv	a5,s0
   12c20:	00048713          	mv	a4,s1
   12c24:	000b0413          	mv	s0,s6
   12c28:	01000893          	li	a7,16
   12c2c:	000a0b13          	mv	s6,s4
   12c30:	00700f93          	li	t6,7
   12c34:	05d12223          	sw	t4,68(sp)
   12c38:	05c12823          	sw	t3,80(sp)
   12c3c:	00030a13          	mv	s4,t1
   12c40:	00028493          	mv	s1,t0
   12c44:	00c0006f          	j	12c50 <_vfprintf_r+0xeb8>
   12c48:	ff040413          	add	s0,s0,-16
   12c4c:	0488da63          	bge	a7,s0,12ca0 <_vfprintf_r+0xf08>
   12c50:	01070713          	add	a4,a4,16
   12c54:	00160613          	add	a2,a2,1
   12c58:	0097a023          	sw	s1,0(a5)
   12c5c:	0117a223          	sw	a7,4(a5)
   12c60:	0ae12423          	sw	a4,168(sp)
   12c64:	0ac12223          	sw	a2,164(sp)
   12c68:	00878793          	add	a5,a5,8
   12c6c:	fccfdee3          	bge	t6,a2,12c48 <_vfprintf_r+0xeb0>
   12c70:	00812583          	lw	a1,8(sp)
   12c74:	0a010613          	add	a2,sp,160
   12c78:	00098513          	mv	a0,s3
   12c7c:	7e9010ef          	jal	14c64 <__sprint_r>
   12c80:	de051263          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   12c84:	01000893          	li	a7,16
   12c88:	ff040413          	add	s0,s0,-16
   12c8c:	0a812703          	lw	a4,168(sp)
   12c90:	0a412603          	lw	a2,164(sp)
   12c94:	0ac10793          	add	a5,sp,172
   12c98:	00700f93          	li	t6,7
   12c9c:	fa88cae3          	blt	a7,s0,12c50 <_vfprintf_r+0xeb8>
   12ca0:	04412e83          	lw	t4,68(sp)
   12ca4:	05012e03          	lw	t3,80(sp)
   12ca8:	000a0313          	mv	t1,s4
   12cac:	00048293          	mv	t0,s1
   12cb0:	000b0a13          	mv	s4,s6
   12cb4:	00070493          	mv	s1,a4
   12cb8:	00040b13          	mv	s6,s0
   12cbc:	00078413          	mv	s0,a5
   12cc0:	016484b3          	add	s1,s1,s6
   12cc4:	00160613          	add	a2,a2,1
   12cc8:	00542023          	sw	t0,0(s0)
   12ccc:	01642223          	sw	s6,4(s0)
   12cd0:	0a912423          	sw	s1,168(sp)
   12cd4:	0ac12223          	sw	a2,164(sp)
   12cd8:	00700713          	li	a4,7
   12cdc:	00840413          	add	s0,s0,8
   12ce0:	b8c75263          	bge	a4,a2,12064 <_vfprintf_r+0x2cc>
   12ce4:	00812583          	lw	a1,8(sp)
   12ce8:	0a010613          	add	a2,sp,160
   12cec:	00098513          	mv	a0,s3
   12cf0:	04612a23          	sw	t1,84(sp)
   12cf4:	05c12823          	sw	t3,80(sp)
   12cf8:	05d12223          	sw	t4,68(sp)
   12cfc:	769010ef          	jal	14c64 <__sprint_r>
   12d00:	d6051263          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   12d04:	0a812483          	lw	s1,168(sp)
   12d08:	05412303          	lw	t1,84(sp)
   12d0c:	05012e03          	lw	t3,80(sp)
   12d10:	04412e83          	lw	t4,68(sp)
   12d14:	0ac10413          	add	s0,sp,172
   12d18:	b4cff06f          	j	12064 <_vfprintf_r+0x2cc>
   12d1c:	01000713          	li	a4,16
   12d20:	0a412603          	lw	a2,164(sp)
   12d24:	0000f297          	auipc	t0,0xf
   12d28:	2f028293          	add	t0,t0,752 # 22014 <zeroes.0>
   12d2c:	0b675063          	bge	a4,s6,12dcc <_vfprintf_r+0x1034>
   12d30:	00040793          	mv	a5,s0
   12d34:	00048693          	mv	a3,s1
   12d38:	000b0413          	mv	s0,s6
   12d3c:	01000713          	li	a4,16
   12d40:	00700893          	li	a7,7
   12d44:	05d12223          	sw	t4,68(sp)
   12d48:	000e0493          	mv	s1,t3
   12d4c:	00028b13          	mv	s6,t0
   12d50:	00c0006f          	j	12d5c <_vfprintf_r+0xfc4>
   12d54:	ff040413          	add	s0,s0,-16
   12d58:	04875e63          	bge	a4,s0,12db4 <_vfprintf_r+0x101c>
   12d5c:	01068693          	add	a3,a3,16
   12d60:	00160613          	add	a2,a2,1
   12d64:	0000f597          	auipc	a1,0xf
   12d68:	2b058593          	add	a1,a1,688 # 22014 <zeroes.0>
   12d6c:	00b7a023          	sw	a1,0(a5)
   12d70:	00e7a223          	sw	a4,4(a5)
   12d74:	0ad12423          	sw	a3,168(sp)
   12d78:	0ac12223          	sw	a2,164(sp)
   12d7c:	00878793          	add	a5,a5,8
   12d80:	fcc8dae3          	bge	a7,a2,12d54 <_vfprintf_r+0xfbc>
   12d84:	00812583          	lw	a1,8(sp)
   12d88:	0a010613          	add	a2,sp,160
   12d8c:	00098513          	mv	a0,s3
   12d90:	6d5010ef          	jal	14c64 <__sprint_r>
   12d94:	cc051863          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   12d98:	01000713          	li	a4,16
   12d9c:	ff040413          	add	s0,s0,-16
   12da0:	0a812683          	lw	a3,168(sp)
   12da4:	0a412603          	lw	a2,164(sp)
   12da8:	0ac10793          	add	a5,sp,172
   12dac:	00700893          	li	a7,7
   12db0:	fa8746e3          	blt	a4,s0,12d5c <_vfprintf_r+0xfc4>
   12db4:	04412e83          	lw	t4,68(sp)
   12db8:	00048e13          	mv	t3,s1
   12dbc:	000b0293          	mv	t0,s6
   12dc0:	00068493          	mv	s1,a3
   12dc4:	00040b13          	mv	s6,s0
   12dc8:	00078413          	mv	s0,a5
   12dcc:	016484b3          	add	s1,s1,s6
   12dd0:	00160613          	add	a2,a2,1
   12dd4:	00542023          	sw	t0,0(s0)
   12dd8:	01642223          	sw	s6,4(s0)
   12ddc:	0a912423          	sw	s1,168(sp)
   12de0:	0ac12223          	sw	a2,164(sp)
   12de4:	00700713          	li	a4,7
   12de8:	00840413          	add	s0,s0,8
   12dec:	a8c75063          	bge	a4,a2,1206c <_vfprintf_r+0x2d4>
   12df0:	00812583          	lw	a1,8(sp)
   12df4:	0a010613          	add	a2,sp,160
   12df8:	00098513          	mv	a0,s3
   12dfc:	05c12823          	sw	t3,80(sp)
   12e00:	05d12223          	sw	t4,68(sp)
   12e04:	661010ef          	jal	14c64 <__sprint_r>
   12e08:	c4051e63          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   12e0c:	0a812483          	lw	s1,168(sp)
   12e10:	05012e03          	lw	t3,80(sp)
   12e14:	04412e83          	lw	t4,68(sp)
   12e18:	0ac10413          	add	s0,sp,172
   12e1c:	a50ff06f          	j	1206c <_vfprintf_r+0x2d4>
   12e20:	00812583          	lw	a1,8(sp)
   12e24:	0a010613          	add	a2,sp,160
   12e28:	00098513          	mv	a0,s3
   12e2c:	04612c23          	sw	t1,88(sp)
   12e30:	05c12a23          	sw	t3,84(sp)
   12e34:	05d12823          	sw	t4,80(sp)
   12e38:	05f12223          	sw	t6,68(sp)
   12e3c:	629010ef          	jal	14c64 <__sprint_r>
   12e40:	c2051263          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   12e44:	0a812483          	lw	s1,168(sp)
   12e48:	05812303          	lw	t1,88(sp)
   12e4c:	05412e03          	lw	t3,84(sp)
   12e50:	05012e83          	lw	t4,80(sp)
   12e54:	04412f83          	lw	t6,68(sp)
   12e58:	0ac10413          	add	s0,sp,172
   12e5c:	a00ff06f          	j	1205c <_vfprintf_r+0x2c4>
   12e60:	01000713          	li	a4,16
   12e64:	0a412783          	lw	a5,164(sp)
   12e68:	0000fb17          	auipc	s6,0xf
   12e6c:	1bcb0b13          	add	s6,s6,444 # 22024 <blanks.1>
   12e70:	07a75c63          	bge	a4,s10,12ee8 <_vfprintf_r+0x1150>
   12e74:	000b0713          	mv	a4,s6
   12e78:	01000c13          	li	s8,16
   12e7c:	00090b13          	mv	s6,s2
   12e80:	00700a13          	li	s4,7
   12e84:	00070913          	mv	s2,a4
   12e88:	00c0006f          	j	12e94 <_vfprintf_r+0x10fc>
   12e8c:	ff0d0d13          	add	s10,s10,-16
   12e90:	05ac5663          	bge	s8,s10,12edc <_vfprintf_r+0x1144>
   12e94:	01048493          	add	s1,s1,16
   12e98:	00178793          	add	a5,a5,1
   12e9c:	01242023          	sw	s2,0(s0)
   12ea0:	01842223          	sw	s8,4(s0)
   12ea4:	0a912423          	sw	s1,168(sp)
   12ea8:	0af12223          	sw	a5,164(sp)
   12eac:	00840413          	add	s0,s0,8
   12eb0:	fcfa5ee3          	bge	s4,a5,12e8c <_vfprintf_r+0x10f4>
   12eb4:	00812583          	lw	a1,8(sp)
   12eb8:	0a010613          	add	a2,sp,160
   12ebc:	00098513          	mv	a0,s3
   12ec0:	5a5010ef          	jal	14c64 <__sprint_r>
   12ec4:	ba051063          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   12ec8:	ff0d0d13          	add	s10,s10,-16
   12ecc:	0a812483          	lw	s1,168(sp)
   12ed0:	0a412783          	lw	a5,164(sp)
   12ed4:	0ac10413          	add	s0,sp,172
   12ed8:	fbac4ee3          	blt	s8,s10,12e94 <_vfprintf_r+0x10fc>
   12edc:	00090713          	mv	a4,s2
   12ee0:	000b0913          	mv	s2,s6
   12ee4:	00070b13          	mv	s6,a4
   12ee8:	01a484b3          	add	s1,s1,s10
   12eec:	00178793          	add	a5,a5,1
   12ef0:	01642023          	sw	s6,0(s0)
   12ef4:	01a42223          	sw	s10,4(s0)
   12ef8:	0a912423          	sw	s1,168(sp)
   12efc:	0af12223          	sw	a5,164(sp)
   12f00:	00700713          	li	a4,7
   12f04:	9af75463          	bge	a4,a5,120ac <_vfprintf_r+0x314>
   12f08:	00812583          	lw	a1,8(sp)
   12f0c:	0a010613          	add	a2,sp,160
   12f10:	00098513          	mv	a0,s3
   12f14:	551010ef          	jal	14c64 <__sprint_r>
   12f18:	b4051663          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   12f1c:	0a812483          	lw	s1,168(sp)
   12f20:	98cff06f          	j	120ac <_vfprintf_r+0x314>
   12f24:	07c12683          	lw	a3,124(sp)
   12f28:	30d05c63          	blez	a3,13240 <_vfprintf_r+0x14a8>
   12f2c:	01812783          	lw	a5,24(sp)
   12f30:	000a0b13          	mv	s6,s4
   12f34:	0147d463          	bge	a5,s4,12f3c <_vfprintf_r+0x11a4>
   12f38:	00078b13          	mv	s6,a5
   12f3c:	03605863          	blez	s6,12f6c <_vfprintf_r+0x11d4>
   12f40:	0a412683          	lw	a3,164(sp)
   12f44:	016484b3          	add	s1,s1,s6
   12f48:	01842023          	sw	s8,0(s0)
   12f4c:	00168693          	add	a3,a3,1
   12f50:	01642223          	sw	s6,4(s0)
   12f54:	0a912423          	sw	s1,168(sp)
   12f58:	0ad12223          	sw	a3,164(sp)
   12f5c:	00700613          	li	a2,7
   12f60:	00840413          	add	s0,s0,8
   12f64:	00d65463          	bge	a2,a3,12f6c <_vfprintf_r+0x11d4>
   12f68:	5c40106f          	j	1452c <_vfprintf_r+0x2794>
   12f6c:	fffb4693          	not	a3,s6
   12f70:	41f6d693          	sra	a3,a3,0x1f
   12f74:	00db7733          	and	a4,s6,a3
   12f78:	40ea0b33          	sub	s6,s4,a4
   12f7c:	35604ae3          	bgtz	s6,13ad0 <_vfprintf_r+0x1d38>
   12f80:	400ef713          	and	a4,t4,1024
   12f84:	014c0333          	add	t1,s8,s4
   12f88:	00070463          	beqz	a4,12f90 <_vfprintf_r+0x11f8>
   12f8c:	2980106f          	j	14224 <_vfprintf_r+0x248c>
   12f90:	07c12d03          	lw	s10,124(sp)
   12f94:	01812783          	lw	a5,24(sp)
   12f98:	5afd4063          	blt	s10,a5,13538 <_vfprintf_r+0x17a0>
   12f9c:	001ef713          	and	a4,t4,1
   12fa0:	58071c63          	bnez	a4,13538 <_vfprintf_r+0x17a0>
   12fa4:	01812703          	lw	a4,24(sp)
   12fa8:	00ec07b3          	add	a5,s8,a4
   12fac:	41a70d33          	sub	s10,a4,s10
   12fb0:	40678b33          	sub	s6,a5,t1
   12fb4:	016d5463          	bge	s10,s6,12fbc <_vfprintf_r+0x1224>
   12fb8:	000d0b13          	mv	s6,s10
   12fbc:	03605863          	blez	s6,12fec <_vfprintf_r+0x1254>
   12fc0:	0a412703          	lw	a4,164(sp)
   12fc4:	016484b3          	add	s1,s1,s6
   12fc8:	00642023          	sw	t1,0(s0)
   12fcc:	00170713          	add	a4,a4,1
   12fd0:	01642223          	sw	s6,4(s0)
   12fd4:	0a912423          	sw	s1,168(sp)
   12fd8:	0ae12223          	sw	a4,164(sp)
   12fdc:	00700693          	li	a3,7
   12fe0:	00840413          	add	s0,s0,8
   12fe4:	00e6d463          	bge	a3,a4,12fec <_vfprintf_r+0x1254>
   12fe8:	5880106f          	j	14570 <_vfprintf_r+0x27d8>
   12fec:	fffb4713          	not	a4,s6
   12ff0:	41f75713          	sra	a4,a4,0x1f
   12ff4:	00eb77b3          	and	a5,s6,a4
   12ff8:	40fd0d33          	sub	s10,s10,a5
   12ffc:	8ba05063          	blez	s10,1209c <_vfprintf_r+0x304>
   13000:	01000713          	li	a4,16
   13004:	0a412783          	lw	a5,164(sp)
   13008:	0000f297          	auipc	t0,0xf
   1300c:	00c28293          	add	t0,t0,12 # 22014 <zeroes.0>
   13010:	23a750e3          	bge	a4,s10,13a30 <_vfprintf_r+0x1c98>
   13014:	00048713          	mv	a4,s1
   13018:	01000c13          	li	s8,16
   1301c:	00700b13          	li	s6,7
   13020:	000e8493          	mv	s1,t4
   13024:	00028a13          	mv	s4,t0
   13028:	00c0006f          	j	13034 <_vfprintf_r+0x129c>
   1302c:	ff0d0d13          	add	s10,s10,-16
   13030:	1fac5ae3          	bge	s8,s10,13a24 <_vfprintf_r+0x1c8c>
   13034:	01070713          	add	a4,a4,16
   13038:	00178793          	add	a5,a5,1
   1303c:	01442023          	sw	s4,0(s0)
   13040:	01842223          	sw	s8,4(s0)
   13044:	0ae12423          	sw	a4,168(sp)
   13048:	0af12223          	sw	a5,164(sp)
   1304c:	00840413          	add	s0,s0,8
   13050:	fcfb5ee3          	bge	s6,a5,1302c <_vfprintf_r+0x1294>
   13054:	00812583          	lw	a1,8(sp)
   13058:	0a010613          	add	a2,sp,160
   1305c:	00098513          	mv	a0,s3
   13060:	405010ef          	jal	14c64 <__sprint_r>
   13064:	a0051063          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   13068:	0a812703          	lw	a4,168(sp)
   1306c:	0a412783          	lw	a5,164(sp)
   13070:	0ac10413          	add	s0,sp,172
   13074:	fb9ff06f          	j	1302c <_vfprintf_r+0x1294>
   13078:	001ef613          	and	a2,t4,1
   1307c:	ce061063          	bnez	a2,1255c <_vfprintf_r+0x7c4>
   13080:	00d42223          	sw	a3,4(s0)
   13084:	0a912423          	sw	s1,168(sp)
   13088:	0ba12223          	sw	s10,164(sp)
   1308c:	00700793          	li	a5,7
   13090:	d7a7d863          	bge	a5,s10,12600 <_vfprintf_r+0x868>
   13094:	00812583          	lw	a1,8(sp)
   13098:	0a010613          	add	a2,sp,160
   1309c:	00098513          	mv	a0,s3
   130a0:	03d12023          	sw	t4,32(sp)
   130a4:	3c1010ef          	jal	14c64 <__sprint_r>
   130a8:	9a051e63          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   130ac:	0a812483          	lw	s1,168(sp)
   130b0:	0a412d03          	lw	s10,164(sp)
   130b4:	02012e83          	lw	t4,32(sp)
   130b8:	0ac10b13          	add	s6,sp,172
   130bc:	d44ff06f          	j	12600 <_vfprintf_r+0x868>
   130c0:	01812703          	lw	a4,24(sp)
   130c4:	00100793          	li	a5,1
   130c8:	d2e7dc63          	bge	a5,a4,12600 <_vfprintf_r+0x868>
   130cc:	01100793          	li	a5,17
   130d0:	0000f297          	auipc	t0,0xf
   130d4:	f4428293          	add	t0,t0,-188 # 22014 <zeroes.0>
   130d8:	18e7d4e3          	bge	a5,a4,13a60 <_vfprintf_r+0x1cc8>
   130dc:	00040a13          	mv	s4,s0
   130e0:	01000793          	li	a5,16
   130e4:	00700c13          	li	s8,7
   130e8:	03d12023          	sw	t4,32(sp)
   130ec:	00028413          	mv	s0,t0
   130f0:	00c0006f          	j	130fc <_vfprintf_r+0x1364>
   130f4:	ff0a0a13          	add	s4,s4,-16
   130f8:	1547dee3          	bge	a5,s4,13a54 <_vfprintf_r+0x1cbc>
   130fc:	01048493          	add	s1,s1,16
   13100:	001d0d13          	add	s10,s10,1
   13104:	008b2023          	sw	s0,0(s6)
   13108:	00fb2223          	sw	a5,4(s6)
   1310c:	0a912423          	sw	s1,168(sp)
   13110:	0ba12223          	sw	s10,164(sp)
   13114:	008b0b13          	add	s6,s6,8
   13118:	fdac5ee3          	bge	s8,s10,130f4 <_vfprintf_r+0x135c>
   1311c:	00812583          	lw	a1,8(sp)
   13120:	0a010613          	add	a2,sp,160
   13124:	00098513          	mv	a0,s3
   13128:	33d010ef          	jal	14c64 <__sprint_r>
   1312c:	92051c63          	bnez	a0,12264 <_vfprintf_r+0x4cc>
   13130:	0a812483          	lw	s1,168(sp)
   13134:	0a412d03          	lw	s10,164(sp)
   13138:	0ac10b13          	add	s6,sp,172
   1313c:	01000793          	li	a5,16
   13140:	fb5ff06f          	j	130f4 <_vfprintf_r+0x135c>
   13144:	01412703          	lw	a4,20(sp)
   13148:	010ef793          	and	a5,t4,16
   1314c:	00072d03          	lw	s10,0(a4)
   13150:	00470713          	add	a4,a4,4
   13154:	00e12a23          	sw	a4,20(sp)
   13158:	1a079663          	bnez	a5,13304 <_vfprintf_r+0x156c>
   1315c:	040ef793          	and	a5,t4,64
   13160:	18078e63          	beqz	a5,132fc <_vfprintf_r+0x1564>
   13164:	010d1d13          	sll	s10,s10,0x10
   13168:	010d5d13          	srl	s10,s10,0x10
   1316c:	00000c93          	li	s9,0
   13170:	80dff06f          	j	1297c <_vfprintf_r+0xbe4>
   13174:	01412703          	lw	a4,20(sp)
   13178:	01067793          	and	a5,a2,16
   1317c:	00072d03          	lw	s10,0(a4)
   13180:	00470713          	add	a4,a4,4
   13184:	00e12a23          	sw	a4,20(sp)
   13188:	14079a63          	bnez	a5,132dc <_vfprintf_r+0x1544>
   1318c:	04067793          	and	a5,a2,64
   13190:	14078063          	beqz	a5,132d0 <_vfprintf_r+0x1538>
   13194:	010d1d13          	sll	s10,s10,0x10
   13198:	010d5d13          	srl	s10,s10,0x10
   1319c:	00000c93          	li	s9,0
   131a0:	00100793          	li	a5,1
   131a4:	e34ff06f          	j	127d8 <_vfprintf_r+0xa40>
   131a8:	01412703          	lw	a4,20(sp)
   131ac:	010ef793          	and	a5,t4,16
   131b0:	00072d03          	lw	s10,0(a4)
   131b4:	00470713          	add	a4,a4,4
   131b8:	00e12a23          	sw	a4,20(sp)
   131bc:	12079a63          	bnez	a5,132f0 <_vfprintf_r+0x1558>
   131c0:	040ef793          	and	a5,t4,64
   131c4:	12078263          	beqz	a5,132e8 <_vfprintf_r+0x1550>
   131c8:	010d1d13          	sll	s10,s10,0x10
   131cc:	410d5d13          	sra	s10,s10,0x10
   131d0:	41fd5c93          	sra	s9,s10,0x1f
   131d4:	000c8793          	mv	a5,s9
   131d8:	f207d663          	bgez	a5,12904 <_vfprintf_r+0xb6c>
   131dc:	01a037b3          	snez	a5,s10
   131e0:	419000b3          	neg	ra,s9
   131e4:	40f08cb3          	sub	s9,ra,a5
   131e8:	41a00d33          	neg	s10,s10
   131ec:	000e8613          	mv	a2,t4
   131f0:	02d00713          	li	a4,45
   131f4:	00100793          	li	a5,1
   131f8:	de4ff06f          	j	127dc <_vfprintf_r+0xa44>
   131fc:	00812403          	lw	s0,8(sp)
   13200:	00f12623          	sw	a5,12(sp)
   13204:	05842503          	lw	a0,88(s0)
   13208:	c51fd0ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   1320c:	00c41703          	lh	a4,12(s0)
   13210:	00c12783          	lw	a5,12(sp)
   13214:	c05fe06f          	j	11e18 <_vfprintf_r+0x80>
   13218:	001ef793          	and	a5,t4,1
   1321c:	00079463          	bnez	a5,13224 <_vfprintf_r+0x148c>
   13220:	e7dfe06f          	j	1209c <_vfprintf_r+0x304>
   13224:	85dff06f          	j	12a80 <_vfprintf_r+0xce8>
   13228:	000a0e93          	mv	t4,s4
   1322c:	000b0313          	mv	t1,s6
   13230:	ea8ff06f          	j	128d8 <_vfprintf_r+0xb40>
   13234:	00094e03          	lbu	t3,0(s2)
   13238:	00f12a23          	sw	a5,20(sp)
   1323c:	d09fe06f          	j	11f44 <_vfprintf_r+0x1ac>
   13240:	0a412703          	lw	a4,164(sp)
   13244:	0000f617          	auipc	a2,0xf
   13248:	93060613          	add	a2,a2,-1744 # 21b74 <__clzsi2+0x100>
   1324c:	00c42023          	sw	a2,0(s0)
   13250:	00148493          	add	s1,s1,1
   13254:	00100613          	li	a2,1
   13258:	00170713          	add	a4,a4,1
   1325c:	00c42223          	sw	a2,4(s0)
   13260:	0a912423          	sw	s1,168(sp)
   13264:	0ae12223          	sw	a4,164(sp)
   13268:	00700613          	li	a2,7
   1326c:	00840413          	add	s0,s0,8
   13270:	2ee64ce3          	blt	a2,a4,13d68 <_vfprintf_r+0x1fd0>
   13274:	7e069e63          	bnez	a3,13a70 <_vfprintf_r+0x1cd8>
   13278:	01812783          	lw	a5,24(sp)
   1327c:	001ef713          	and	a4,t4,1
   13280:	00f76733          	or	a4,a4,a5
   13284:	00071463          	bnez	a4,1328c <_vfprintf_r+0x14f4>
   13288:	e15fe06f          	j	1209c <_vfprintf_r+0x304>
   1328c:	03412703          	lw	a4,52(sp)
   13290:	03012783          	lw	a5,48(sp)
   13294:	00700693          	li	a3,7
   13298:	00e42023          	sw	a4,0(s0)
   1329c:	0a412703          	lw	a4,164(sp)
   132a0:	009784b3          	add	s1,a5,s1
   132a4:	00f42223          	sw	a5,4(s0)
   132a8:	00170713          	add	a4,a4,1
   132ac:	0a912423          	sw	s1,168(sp)
   132b0:	0ae12223          	sw	a4,164(sp)
   132b4:	38e6c8e3          	blt	a3,a4,13e44 <_vfprintf_r+0x20ac>
   132b8:	00840413          	add	s0,s0,8
   132bc:	7e80006f          	j	13aa4 <_vfprintf_r+0x1d0c>
   132c0:	03000793          	li	a5,48
   132c4:	14f107a3          	sb	a5,335(sp)
   132c8:	14f10c13          	add	s8,sp,335
   132cc:	d38ff06f          	j	12804 <_vfprintf_r+0xa6c>
   132d0:	20067793          	and	a5,a2,512
   132d4:	00078463          	beqz	a5,132dc <_vfprintf_r+0x1544>
   132d8:	0ffd7d13          	zext.b	s10,s10
   132dc:	00000c93          	li	s9,0
   132e0:	00100793          	li	a5,1
   132e4:	cf4ff06f          	j	127d8 <_vfprintf_r+0xa40>
   132e8:	200ef793          	and	a5,t4,512
   132ec:	2c0796e3          	bnez	a5,13db8 <_vfprintf_r+0x2020>
   132f0:	41fd5c93          	sra	s9,s10,0x1f
   132f4:	000c8793          	mv	a5,s9
   132f8:	e08ff06f          	j	12900 <_vfprintf_r+0xb68>
   132fc:	200ef793          	and	a5,t4,512
   13300:	2a0790e3          	bnez	a5,13da0 <_vfprintf_r+0x2008>
   13304:	00000c93          	li	s9,0
   13308:	e74ff06f          	j	1297c <_vfprintf_r+0xbe4>
   1330c:	01412783          	lw	a5,20(sp)
   13310:	06010513          	add	a0,sp,96
   13314:	03612223          	sw	s6,36(sp)
   13318:	0007a703          	lw	a4,0(a5)
   1331c:	03c12023          	sw	t3,32(sp)
   13320:	00478b13          	add	s6,a5,4
   13324:	00072683          	lw	a3,0(a4)
   13328:	01412823          	sw	s4,16(sp)
   1332c:	06d12023          	sw	a3,96(sp)
   13330:	00472683          	lw	a3,4(a4)
   13334:	06d12223          	sw	a3,100(sp)
   13338:	00872683          	lw	a3,8(a4)
   1333c:	06d12423          	sw	a3,104(sp)
   13340:	00c72703          	lw	a4,12(a4)
   13344:	06e12623          	sw	a4,108(sp)
   13348:	2780e0ef          	jal	215c0 <__trunctfdf2>
   1334c:	02012e03          	lw	t3,32(sp)
   13350:	02412303          	lw	t1,36(sp)
   13354:	02a12423          	sw	a0,40(sp)
   13358:	02b12623          	sw	a1,44(sp)
   1335c:	01612a23          	sw	s6,20(sp)
   13360:	000a0e93          	mv	t4,s4
   13364:	fb1fe06f          	j	12314 <_vfprintf_r+0x57c>
   13368:	010a7793          	and	a5,s4,16
   1336c:	6c079a63          	bnez	a5,13a40 <_vfprintf_r+0x1ca8>
   13370:	040a7793          	and	a5,s4,64
   13374:	24079ce3          	bnez	a5,13dcc <_vfprintf_r+0x2034>
   13378:	200a7f13          	and	t5,s4,512
   1337c:	6c0f0263          	beqz	t5,13a40 <_vfprintf_r+0x1ca8>
   13380:	01412783          	lw	a5,20(sp)
   13384:	00c12703          	lw	a4,12(sp)
   13388:	0007a783          	lw	a5,0(a5)
   1338c:	00e78023          	sb	a4,0(a5)
   13390:	e6cff06f          	j	129fc <_vfprintf_r+0xc64>
   13394:	03c12783          	lw	a5,60(sp)
   13398:	00094e03          	lbu	t3,0(s2)
   1339c:	00079463          	bnez	a5,133a4 <_vfprintf_r+0x160c>
   133a0:	ba5fe06f          	j	11f44 <_vfprintf_r+0x1ac>
   133a4:	0007c783          	lbu	a5,0(a5)
   133a8:	00079463          	bnez	a5,133b0 <_vfprintf_r+0x1618>
   133ac:	b99fe06f          	j	11f44 <_vfprintf_r+0x1ac>
   133b0:	400a6a13          	or	s4,s4,1024
   133b4:	b91fe06f          	j	11f44 <_vfprintf_r+0x1ac>
   133b8:	fff00b13          	li	s6,-1
   133bc:	00068913          	mv	s2,a3
   133c0:	b89fe06f          	j	11f48 <_vfprintf_r+0x1b0>
   133c4:	0000e797          	auipc	a5,0xe
   133c8:	79478793          	add	a5,a5,1940 # 21b58 <__clzsi2+0xe4>
   133cc:	000a0e93          	mv	t4,s4
   133d0:	000b0313          	mv	t1,s6
   133d4:	02f12c23          	sw	a5,56(sp)
   133d8:	020ef793          	and	a5,t4,32
   133dc:	1c078263          	beqz	a5,135a0 <_vfprintf_r+0x1808>
   133e0:	01412783          	lw	a5,20(sp)
   133e4:	00778b13          	add	s6,a5,7
   133e8:	ff8b7b13          	and	s6,s6,-8
   133ec:	000b2d03          	lw	s10,0(s6)
   133f0:	004b2c83          	lw	s9,4(s6)
   133f4:	008b0793          	add	a5,s6,8
   133f8:	00f12a23          	sw	a5,20(sp)
   133fc:	001ef793          	and	a5,t4,1
   13400:	00078e63          	beqz	a5,1341c <_vfprintf_r+0x1684>
   13404:	019d67b3          	or	a5,s10,s9
   13408:	00078a63          	beqz	a5,1341c <_vfprintf_r+0x1684>
   1340c:	03000793          	li	a5,48
   13410:	06f10c23          	sb	a5,120(sp)
   13414:	07c10ca3          	sb	t3,121(sp)
   13418:	002eee93          	or	t4,t4,2
   1341c:	bffef613          	and	a2,t4,-1025
   13420:	00200793          	li	a5,2
   13424:	bb4ff06f          	j	127d8 <_vfprintf_r+0xa40>
   13428:	000b0313          	mv	t1,s6
   1342c:	000a0613          	mv	a2,s4
   13430:	b80ff06f          	j	127b0 <_vfprintf_r+0xa18>
   13434:	000a0e93          	mv	t4,s4
   13438:	000b0313          	mv	t1,s6
   1343c:	d1cff06f          	j	12958 <_vfprintf_r+0xbc0>
   13440:	0000e797          	auipc	a5,0xe
   13444:	70478793          	add	a5,a5,1796 # 21b44 <__clzsi2+0xd0>
   13448:	000a0e93          	mv	t4,s4
   1344c:	000b0313          	mv	t1,s6
   13450:	02f12c23          	sw	a5,56(sp)
   13454:	f85ff06f          	j	133d8 <_vfprintf_r+0x1640>
   13458:	00194e03          	lbu	t3,1(s2)
   1345c:	020a6a13          	or	s4,s4,32
   13460:	00190913          	add	s2,s2,1
   13464:	ae1fe06f          	j	11f44 <_vfprintf_r+0x1ac>
   13468:	00194e03          	lbu	t3,1(s2)
   1346c:	200a6a13          	or	s4,s4,512
   13470:	00190913          	add	s2,s2,1
   13474:	ad1fe06f          	j	11f44 <_vfprintf_r+0x1ac>
   13478:	00812583          	lw	a1,8(sp)
   1347c:	0a010613          	add	a2,sp,160
   13480:	00098513          	mv	a0,s3
   13484:	03d12023          	sw	t4,32(sp)
   13488:	7dc010ef          	jal	14c64 <__sprint_r>
   1348c:	00050463          	beqz	a0,13494 <_vfprintf_r+0x16fc>
   13490:	dd5fe06f          	j	12264 <_vfprintf_r+0x4cc>
   13494:	0a812483          	lw	s1,168(sp)
   13498:	02012e83          	lw	t4,32(sp)
   1349c:	0ac10413          	add	s0,sp,172
   134a0:	e10ff06f          	j	12ab0 <_vfprintf_r+0xd18>
   134a4:	00600793          	li	a5,6
   134a8:	00030c93          	mv	s9,t1
   134ac:	0e67e6e3          	bltu	a5,t1,13d98 <_vfprintf_r+0x2000>
   134b0:	01612a23          	sw	s6,20(sp)
   134b4:	00012823          	sw	zero,16(sp)
   134b8:	000c8d13          	mv	s10,s9
   134bc:	00000613          	li	a2,0
   134c0:	00000313          	li	t1,0
   134c4:	02012223          	sw	zero,36(sp)
   134c8:	02012023          	sw	zero,32(sp)
   134cc:	00000a13          	li	s4,0
   134d0:	0000ec17          	auipc	s8,0xe
   134d4:	69cc0c13          	add	s8,s8,1692 # 21b6c <__clzsi2+0xf8>
   134d8:	afdfe06f          	j	11fd4 <_vfprintf_r+0x23c>
   134dc:	00800613          	li	a2,8
   134e0:	00000593          	li	a1,0
   134e4:	09810513          	add	a0,sp,152
   134e8:	03c12023          	sw	t3,32(sp)
   134ec:	01d12823          	sw	t4,16(sp)
   134f0:	985fd0ef          	jal	10e74 <memset>
   134f4:	01412783          	lw	a5,20(sp)
   134f8:	0ec10c13          	add	s8,sp,236
   134fc:	09810693          	add	a3,sp,152
   13500:	0007a603          	lw	a2,0(a5)
   13504:	000c0593          	mv	a1,s8
   13508:	00098513          	mv	a0,s3
   1350c:	55c090ef          	jal	1ca68 <_wcrtomb_r>
   13510:	fff00793          	li	a5,-1
   13514:	01012e83          	lw	t4,16(sp)
   13518:	02012e03          	lw	t3,32(sp)
   1351c:	00050d13          	mv	s10,a0
   13520:	00f51463          	bne	a0,a5,13528 <_vfprintf_r+0x1790>
   13524:	4980106f          	j	149bc <_vfprintf_r+0x2c24>
   13528:	fff54813          	not	a6,a0
   1352c:	41f85813          	sra	a6,a6,0x1f
   13530:	01057cb3          	and	s9,a0,a6
   13534:	97cff06f          	j	126b0 <_vfprintf_r+0x918>
   13538:	03412703          	lw	a4,52(sp)
   1353c:	03012783          	lw	a5,48(sp)
   13540:	00700693          	li	a3,7
   13544:	00e42023          	sw	a4,0(s0)
   13548:	0a412703          	lw	a4,164(sp)
   1354c:	00f484b3          	add	s1,s1,a5
   13550:	00f42223          	sw	a5,4(s0)
   13554:	00170713          	add	a4,a4,1
   13558:	0a912423          	sw	s1,168(sp)
   1355c:	0ae12223          	sw	a4,164(sp)
   13560:	00840413          	add	s0,s0,8
   13564:	a4e6d0e3          	bge	a3,a4,12fa4 <_vfprintf_r+0x120c>
   13568:	00812583          	lw	a1,8(sp)
   1356c:	0a010613          	add	a2,sp,160
   13570:	00098513          	mv	a0,s3
   13574:	02612223          	sw	t1,36(sp)
   13578:	03d12023          	sw	t4,32(sp)
   1357c:	6e8010ef          	jal	14c64 <__sprint_r>
   13580:	00050463          	beqz	a0,13588 <_vfprintf_r+0x17f0>
   13584:	ce1fe06f          	j	12264 <_vfprintf_r+0x4cc>
   13588:	07c12d03          	lw	s10,124(sp)
   1358c:	0a812483          	lw	s1,168(sp)
   13590:	02412303          	lw	t1,36(sp)
   13594:	02012e83          	lw	t4,32(sp)
   13598:	0ac10413          	add	s0,sp,172
   1359c:	a09ff06f          	j	12fa4 <_vfprintf_r+0x120c>
   135a0:	01412703          	lw	a4,20(sp)
   135a4:	010ef793          	and	a5,t4,16
   135a8:	00072d03          	lw	s10,0(a4)
   135ac:	00470713          	add	a4,a4,4
   135b0:	00e12a23          	sw	a4,20(sp)
   135b4:	08079863          	bnez	a5,13644 <_vfprintf_r+0x18ac>
   135b8:	040ef793          	and	a5,t4,64
   135bc:	08078063          	beqz	a5,1363c <_vfprintf_r+0x18a4>
   135c0:	010d1d13          	sll	s10,s10,0x10
   135c4:	010d5d13          	srl	s10,s10,0x10
   135c8:	00000c93          	li	s9,0
   135cc:	e31ff06f          	j	133fc <_vfprintf_r+0x1664>
   135d0:	00000d13          	li	s10,0
   135d4:	15010c13          	add	s8,sp,336
   135d8:	a2cff06f          	j	12804 <_vfprintf_r+0xa6c>
   135dc:	00812583          	lw	a1,8(sp)
   135e0:	0a010613          	add	a2,sp,160
   135e4:	00098513          	mv	a0,s3
   135e8:	03d12023          	sw	t4,32(sp)
   135ec:	678010ef          	jal	14c64 <__sprint_r>
   135f0:	00050463          	beqz	a0,135f8 <_vfprintf_r+0x1860>
   135f4:	c71fe06f          	j	12264 <_vfprintf_r+0x4cc>
   135f8:	0a812483          	lw	s1,168(sp)
   135fc:	0a412d03          	lw	s10,164(sp)
   13600:	02012e83          	lw	t4,32(sp)
   13604:	0ac10b13          	add	s6,sp,172
   13608:	f71fe06f          	j	12578 <_vfprintf_r+0x7e0>
   1360c:	00812583          	lw	a1,8(sp)
   13610:	0a010613          	add	a2,sp,160
   13614:	00098513          	mv	a0,s3
   13618:	03d12023          	sw	t4,32(sp)
   1361c:	648010ef          	jal	14c64 <__sprint_r>
   13620:	00050463          	beqz	a0,13628 <_vfprintf_r+0x1890>
   13624:	c41fe06f          	j	12264 <_vfprintf_r+0x4cc>
   13628:	0a812483          	lw	s1,168(sp)
   1362c:	0a412d03          	lw	s10,164(sp)
   13630:	02012e83          	lw	t4,32(sp)
   13634:	0ac10b13          	add	s6,sp,172
   13638:	f71fe06f          	j	125a8 <_vfprintf_r+0x810>
   1363c:	200ef793          	and	a5,t4,512
   13640:	76079663          	bnez	a5,13dac <_vfprintf_r+0x2014>
   13644:	00000c93          	li	s9,0
   13648:	db5ff06f          	j	133fc <_vfprintf_r+0x1664>
   1364c:	00000793          	li	a5,0
   13650:	15010b13          	add	s6,sp,336
   13654:	01212823          	sw	s2,16(sp)
   13658:	00078913          	mv	s2,a5
   1365c:	00098793          	mv	a5,s3
   13660:	04812823          	sw	s0,80(sp)
   13664:	000b0993          	mv	s3,s6
   13668:	03c12403          	lw	s0,60(sp)
   1366c:	40067493          	and	s1,a2,1024
   13670:	0ff00a13          	li	s4,255
   13674:	03c12023          	sw	t3,32(sp)
   13678:	02c12223          	sw	a2,36(sp)
   1367c:	04612223          	sw	t1,68(sp)
   13680:	00078b13          	mv	s6,a5
   13684:	0280006f          	j	136ac <_vfprintf_r+0x1914>
   13688:	00a00613          	li	a2,10
   1368c:	00000693          	li	a3,0
   13690:	000d0513          	mv	a0,s10
   13694:	000c8593          	mv	a1,s9
   13698:	3310a0ef          	jal	1e1c8 <__udivdi3>
   1369c:	6a0c8ee3          	beqz	s9,14558 <_vfprintf_r+0x27c0>
   136a0:	00050d13          	mv	s10,a0
   136a4:	00058c93          	mv	s9,a1
   136a8:	000c0993          	mv	s3,s8
   136ac:	00a00613          	li	a2,10
   136b0:	00000693          	li	a3,0
   136b4:	000d0513          	mv	a0,s10
   136b8:	000c8593          	mv	a1,s9
   136bc:	1b80b0ef          	jal	1e874 <__umoddi3>
   136c0:	03050513          	add	a0,a0,48
   136c4:	fea98fa3          	sb	a0,-1(s3)
   136c8:	fff98c13          	add	s8,s3,-1
   136cc:	00190913          	add	s2,s2,1
   136d0:	fa048ce3          	beqz	s1,13688 <_vfprintf_r+0x18f0>
   136d4:	00044783          	lbu	a5,0(s0)
   136d8:	faf918e3          	bne	s2,a5,13688 <_vfprintf_r+0x18f0>
   136dc:	fb4906e3          	beq	s2,s4,13688 <_vfprintf_r+0x18f0>
   136e0:	560c9ae3          	bnez	s9,14454 <_vfprintf_r+0x26bc>
   136e4:	00900793          	li	a5,9
   136e8:	57a7e6e3          	bltu	a5,s10,14454 <_vfprintf_r+0x26bc>
   136ec:	02412603          	lw	a2,36(sp)
   136f0:	15010793          	add	a5,sp,336
   136f4:	02812e23          	sw	s0,60(sp)
   136f8:	01212c23          	sw	s2,24(sp)
   136fc:	02012e03          	lw	t3,32(sp)
   13700:	01012903          	lw	s2,16(sp)
   13704:	04412303          	lw	t1,68(sp)
   13708:	05012403          	lw	s0,80(sp)
   1370c:	000b0993          	mv	s3,s6
   13710:	41878d33          	sub	s10,a5,s8
   13714:	00060e93          	mv	t4,a2
   13718:	8ecff06f          	j	12804 <_vfprintf_r+0xa6c>
   1371c:	00812583          	lw	a1,8(sp)
   13720:	0a010613          	add	a2,sp,160
   13724:	00098513          	mv	a0,s3
   13728:	04612e23          	sw	t1,92(sp)
   1372c:	05c12c23          	sw	t3,88(sp)
   13730:	05d12a23          	sw	t4,84(sp)
   13734:	05f12823          	sw	t6,80(sp)
   13738:	04512223          	sw	t0,68(sp)
   1373c:	528010ef          	jal	14c64 <__sprint_r>
   13740:	00050463          	beqz	a0,13748 <_vfprintf_r+0x19b0>
   13744:	b21fe06f          	j	12264 <_vfprintf_r+0x4cc>
   13748:	07714603          	lbu	a2,119(sp)
   1374c:	0a812483          	lw	s1,168(sp)
   13750:	05c12303          	lw	t1,92(sp)
   13754:	05812e03          	lw	t3,88(sp)
   13758:	05412e83          	lw	t4,84(sp)
   1375c:	05012f83          	lw	t6,80(sp)
   13760:	04412283          	lw	t0,68(sp)
   13764:	0ac10413          	add	s0,sp,172
   13768:	88dfe06f          	j	11ff4 <_vfprintf_r+0x25c>
   1376c:	02812883          	lw	a7,40(sp)
   13770:	02c12703          	lw	a4,44(sp)
   13774:	02612223          	sw	t1,36(sp)
   13778:	00088613          	mv	a2,a7
   1377c:	00088513          	mv	a0,a7
   13780:	00070693          	mv	a3,a4
   13784:	00070593          	mv	a1,a4
   13788:	03c12023          	sw	t3,32(sp)
   1378c:	01d12823          	sw	t4,16(sp)
   13790:	3dd0d0ef          	jal	2136c <__unorddf2>
   13794:	01012e83          	lw	t4,16(sp)
   13798:	02012e03          	lw	t3,32(sp)
   1379c:	02412303          	lw	t1,36(sp)
   137a0:	00050463          	beqz	a0,137a8 <_vfprintf_r+0x1a10>
   137a4:	0e00106f          	j	14884 <_vfprintf_r+0x2aec>
   137a8:	06100713          	li	a4,97
   137ac:	08ee0263          	beq	t3,a4,13830 <_vfprintf_r+0x1a98>
   137b0:	04100713          	li	a4,65
   137b4:	05800793          	li	a5,88
   137b8:	06ee0e63          	beq	t3,a4,13834 <_vfprintf_r+0x1a9c>
   137bc:	fff00713          	li	a4,-1
   137c0:	00e31463          	bne	t1,a4,137c8 <_vfprintf_r+0x1a30>
   137c4:	01c0106f          	j	147e0 <_vfprintf_r+0x2a48>
   137c8:	fdfe7713          	and	a4,t3,-33
   137cc:	04700693          	li	a3,71
   137d0:	00012823          	sw	zero,16(sp)
   137d4:	00d71663          	bne	a4,a3,137e0 <_vfprintf_r+0x1a48>
   137d8:	00031463          	bnez	t1,137e0 <_vfprintf_r+0x1a48>
   137dc:	00100313          	li	t1,1
   137e0:	100ee793          	or	a5,t4,256
   137e4:	00078b13          	mv	s6,a5
   137e8:	02c12783          	lw	a5,44(sp)
   137ec:	04012223          	sw	zero,68(sp)
   137f0:	00078493          	mv	s1,a5
   137f4:	0007da63          	bgez	a5,13808 <_vfprintf_r+0x1a70>
   137f8:	800004b7          	lui	s1,0x80000
   137fc:	00f4c4b3          	xor	s1,s1,a5
   13800:	02d00793          	li	a5,45
   13804:	04f12223          	sw	a5,68(sp)
   13808:	fbfe0713          	add	a4,t3,-65
   1380c:	02500693          	li	a3,37
   13810:	3ae6e463          	bltu	a3,a4,13bb8 <_vfprintf_r+0x1e20>
   13814:	0000e697          	auipc	a3,0xe
   13818:	76868693          	add	a3,a3,1896 # 21f7c <__clzsi2+0x508>
   1381c:	00271713          	sll	a4,a4,0x2
   13820:	00d70733          	add	a4,a4,a3
   13824:	00072703          	lw	a4,0(a4)
   13828:	00d70733          	add	a4,a4,a3
   1382c:	00070067          	jr	a4
   13830:	07800793          	li	a5,120
   13834:	03000713          	li	a4,48
   13838:	06e10c23          	sb	a4,120(sp)
   1383c:	06f10ca3          	sb	a5,121(sp)
   13840:	06300713          	li	a4,99
   13844:	00012823          	sw	zero,16(sp)
   13848:	002eee93          	or	t4,t4,2
   1384c:	0ec10c13          	add	s8,sp,236
   13850:	f86758e3          	bge	a4,t1,137e0 <_vfprintf_r+0x1a48>
   13854:	00130593          	add	a1,t1,1
   13858:	00098513          	mv	a0,s3
   1385c:	03c12023          	sw	t3,32(sp)
   13860:	01d12c23          	sw	t4,24(sp)
   13864:	00612823          	sw	t1,16(sp)
   13868:	d59fd0ef          	jal	115c0 <_malloc_r>
   1386c:	01012303          	lw	t1,16(sp)
   13870:	01812e83          	lw	t4,24(sp)
   13874:	02012e03          	lw	t3,32(sp)
   13878:	00050c13          	mv	s8,a0
   1387c:	00051463          	bnez	a0,13884 <_vfprintf_r+0x1aec>
   13880:	13c0106f          	j	149bc <_vfprintf_r+0x2c24>
   13884:	00a12823          	sw	a0,16(sp)
   13888:	f59ff06f          	j	137e0 <_vfprintf_r+0x1a48>
   1388c:	00098513          	mv	a0,s3
   13890:	f21fc0ef          	jal	107b0 <__sinit>
   13894:	00c12783          	lw	a5,12(sp)
   13898:	d60fe06f          	j	11df8 <_vfprintf_r+0x60>
   1389c:	00812583          	lw	a1,8(sp)
   138a0:	0a010613          	add	a2,sp,160
   138a4:	00098513          	mv	a0,s3
   138a8:	03d12023          	sw	t4,32(sp)
   138ac:	3b8010ef          	jal	14c64 <__sprint_r>
   138b0:	00050463          	beqz	a0,138b8 <_vfprintf_r+0x1b20>
   138b4:	9b1fe06f          	j	12264 <_vfprintf_r+0x4cc>
   138b8:	0a812483          	lw	s1,168(sp)
   138bc:	02012e83          	lw	t4,32(sp)
   138c0:	0ac10413          	add	s0,sp,172
   138c4:	9b0ff06f          	j	12a74 <_vfprintf_r+0xcdc>
   138c8:	00800613          	li	a2,8
   138cc:	00000593          	li	a1,0
   138d0:	09810513          	add	a0,sp,152
   138d4:	02612023          	sw	t1,32(sp)
   138d8:	01c12a23          	sw	t3,20(sp)
   138dc:	01d12823          	sw	t4,16(sp)
   138e0:	09812223          	sw	s8,132(sp)
   138e4:	d90fd0ef          	jal	10e74 <memset>
   138e8:	02012303          	lw	t1,32(sp)
   138ec:	01012e83          	lw	t4,16(sp)
   138f0:	01412e03          	lw	t3,20(sp)
   138f4:	3a0340e3          	bltz	t1,14494 <_vfprintf_r+0x26fc>
   138f8:	00000d13          	li	s10,0
   138fc:	01212823          	sw	s2,16(sp)
   13900:	000c0c93          	mv	s9,s8
   13904:	fff00493          	li	s1,-1
   13908:	000b0c13          	mv	s8,s6
   1390c:	000e8a13          	mv	s4,t4
   13910:	00040b13          	mv	s6,s0
   13914:	000d0913          	mv	s2,s10
   13918:	00030413          	mv	s0,t1
   1391c:	0300006f          	j	1394c <_vfprintf_r+0x1bb4>
   13920:	09810693          	add	a3,sp,152
   13924:	0ec10593          	add	a1,sp,236
   13928:	00098513          	mv	a0,s3
   1392c:	13c090ef          	jal	1ca68 <_wcrtomb_r>
   13930:	68950ae3          	beq	a0,s1,147c4 <_vfprintf_r+0x2a2c>
   13934:	00a907b3          	add	a5,s2,a0
   13938:	02f44263          	blt	s0,a5,1395c <_vfprintf_r+0x1bc4>
   1393c:	004d0d13          	add	s10,s10,4
   13940:	00879463          	bne	a5,s0,13948 <_vfprintf_r+0x1bb0>
   13944:	7990006f          	j	148dc <_vfprintf_r+0x2b44>
   13948:	00078913          	mv	s2,a5
   1394c:	08412783          	lw	a5,132(sp)
   13950:	01a787b3          	add	a5,a5,s10
   13954:	0007a603          	lw	a2,0(a5)
   13958:	fc0614e3          	bnez	a2,13920 <_vfprintf_r+0x1b88>
   1395c:	00090d13          	mv	s10,s2
   13960:	01412e03          	lw	t3,20(sp)
   13964:	01012903          	lw	s2,16(sp)
   13968:	000b0413          	mv	s0,s6
   1396c:	000a0e93          	mv	t4,s4
   13970:	000c0b13          	mv	s6,s8
   13974:	000c8c13          	mv	s8,s9
   13978:	340d0ce3          	beqz	s10,144d0 <_vfprintf_r+0x2738>
   1397c:	06300793          	li	a5,99
   13980:	59a7dee3          	bge	a5,s10,1471c <_vfprintf_r+0x2984>
   13984:	001d0593          	add	a1,s10,1
   13988:	00098513          	mv	a0,s3
   1398c:	01c12a23          	sw	t3,20(sp)
   13990:	01d12823          	sw	t4,16(sp)
   13994:	c2dfd0ef          	jal	115c0 <_malloc_r>
   13998:	01012e83          	lw	t4,16(sp)
   1399c:	01412e03          	lw	t3,20(sp)
   139a0:	00050c13          	mv	s8,a0
   139a4:	620500e3          	beqz	a0,147c4 <_vfprintf_r+0x2a2c>
   139a8:	00a12823          	sw	a0,16(sp)
   139ac:	00800613          	li	a2,8
   139b0:	00000593          	li	a1,0
   139b4:	09810513          	add	a0,sp,152
   139b8:	03c12023          	sw	t3,32(sp)
   139bc:	01d12a23          	sw	t4,20(sp)
   139c0:	cb4fd0ef          	jal	10e74 <memset>
   139c4:	09810713          	add	a4,sp,152
   139c8:	000d0693          	mv	a3,s10
   139cc:	08410613          	add	a2,sp,132
   139d0:	000c0593          	mv	a1,s8
   139d4:	00098513          	mv	a0,s3
   139d8:	1b4090ef          	jal	1cb8c <_wcsrtombs_r>
   139dc:	01412e83          	lw	t4,20(sp)
   139e0:	02012e03          	lw	t3,32(sp)
   139e4:	00ad0463          	beq	s10,a0,139ec <_vfprintf_r+0x1c54>
   139e8:	0240106f          	j	14a0c <_vfprintf_r+0x2c74>
   139ec:	01ac0733          	add	a4,s8,s10
   139f0:	00070023          	sb	zero,0(a4)
   139f4:	07714603          	lbu	a2,119(sp)
   139f8:	fffd4813          	not	a6,s10
   139fc:	41f85813          	sra	a6,a6,0x1f
   13a00:	01612a23          	sw	s6,20(sp)
   13a04:	02012223          	sw	zero,36(sp)
   13a08:	02012023          	sw	zero,32(sp)
   13a0c:	010d7cb3          	and	s9,s10,a6
   13a10:	00000313          	li	t1,0
   13a14:	00000a13          	li	s4,0
   13a18:	00061463          	bnez	a2,13a20 <_vfprintf_r+0x1c88>
   13a1c:	db8fe06f          	j	11fd4 <_vfprintf_r+0x23c>
   13a20:	9d5fe06f          	j	123f4 <_vfprintf_r+0x65c>
   13a24:	00048e93          	mv	t4,s1
   13a28:	000a0293          	mv	t0,s4
   13a2c:	00070493          	mv	s1,a4
   13a30:	01a484b3          	add	s1,s1,s10
   13a34:	00178793          	add	a5,a5,1
   13a38:	00542023          	sw	t0,0(s0)
   13a3c:	e48fe06f          	j	12084 <_vfprintf_r+0x2ec>
   13a40:	01412783          	lw	a5,20(sp)
   13a44:	00c12703          	lw	a4,12(sp)
   13a48:	0007a783          	lw	a5,0(a5)
   13a4c:	00e7a023          	sw	a4,0(a5)
   13a50:	fadfe06f          	j	129fc <_vfprintf_r+0xc64>
   13a54:	02012e83          	lw	t4,32(sp)
   13a58:	00040293          	mv	t0,s0
   13a5c:	000a0413          	mv	s0,s4
   13a60:	008484b3          	add	s1,s1,s0
   13a64:	001d0d13          	add	s10,s10,1
   13a68:	005b2023          	sw	t0,0(s6)
   13a6c:	b7dfe06f          	j	125e8 <_vfprintf_r+0x850>
   13a70:	03412703          	lw	a4,52(sp)
   13a74:	03012783          	lw	a5,48(sp)
   13a78:	00700613          	li	a2,7
   13a7c:	00e42023          	sw	a4,0(s0)
   13a80:	0a412703          	lw	a4,164(sp)
   13a84:	009784b3          	add	s1,a5,s1
   13a88:	00f42223          	sw	a5,4(s0)
   13a8c:	00170713          	add	a4,a4,1
   13a90:	0a912423          	sw	s1,168(sp)
   13a94:	0ae12223          	sw	a4,164(sp)
   13a98:	00840413          	add	s0,s0,8
   13a9c:	3ae64463          	blt	a2,a4,13e44 <_vfprintf_r+0x20ac>
   13aa0:	3e06cee3          	bltz	a3,1469c <_vfprintf_r+0x2904>
   13aa4:	01812783          	lw	a5,24(sp)
   13aa8:	00170713          	add	a4,a4,1
   13aac:	01842023          	sw	s8,0(s0)
   13ab0:	009784b3          	add	s1,a5,s1
   13ab4:	00f42223          	sw	a5,4(s0)
   13ab8:	0a912423          	sw	s1,168(sp)
   13abc:	0ae12223          	sw	a4,164(sp)
   13ac0:	00700793          	li	a5,7
   13ac4:	00e7c463          	blt	a5,a4,13acc <_vfprintf_r+0x1d34>
   13ac8:	dd0fe06f          	j	12098 <_vfprintf_r+0x300>
   13acc:	b61fe06f          	j	1262c <_vfprintf_r+0x894>
   13ad0:	01000613          	li	a2,16
   13ad4:	0a412683          	lw	a3,164(sp)
   13ad8:	0000e297          	auipc	t0,0xe
   13adc:	53c28293          	add	t0,t0,1340 # 22014 <zeroes.0>
   13ae0:	09665463          	bge	a2,s6,13b68 <_vfprintf_r+0x1dd0>
   13ae4:	00040793          	mv	a5,s0
   13ae8:	00048713          	mv	a4,s1
   13aec:	00812403          	lw	s0,8(sp)
   13af0:	01000893          	li	a7,16
   13af4:	00700d13          	li	s10,7
   13af8:	05d12223          	sw	t4,68(sp)
   13afc:	00028493          	mv	s1,t0
   13b00:	00c0006f          	j	13b0c <_vfprintf_r+0x1d74>
   13b04:	ff0b0b13          	add	s6,s6,-16
   13b08:	0568d863          	bge	a7,s6,13b58 <_vfprintf_r+0x1dc0>
   13b0c:	01070713          	add	a4,a4,16
   13b10:	00168693          	add	a3,a3,1
   13b14:	0097a023          	sw	s1,0(a5)
   13b18:	0117a223          	sw	a7,4(a5)
   13b1c:	0ae12423          	sw	a4,168(sp)
   13b20:	0ad12223          	sw	a3,164(sp)
   13b24:	00878793          	add	a5,a5,8
   13b28:	fcdd5ee3          	bge	s10,a3,13b04 <_vfprintf_r+0x1d6c>
   13b2c:	0a010613          	add	a2,sp,160
   13b30:	00040593          	mv	a1,s0
   13b34:	00098513          	mv	a0,s3
   13b38:	12c010ef          	jal	14c64 <__sprint_r>
   13b3c:	00050463          	beqz	a0,13b44 <_vfprintf_r+0x1dac>
   13b40:	f24fe06f          	j	12264 <_vfprintf_r+0x4cc>
   13b44:	0a812703          	lw	a4,168(sp)
   13b48:	0a412683          	lw	a3,164(sp)
   13b4c:	0ac10793          	add	a5,sp,172
   13b50:	01000893          	li	a7,16
   13b54:	fb1ff06f          	j	13b04 <_vfprintf_r+0x1d6c>
   13b58:	04412e83          	lw	t4,68(sp)
   13b5c:	00048293          	mv	t0,s1
   13b60:	00078413          	mv	s0,a5
   13b64:	00070493          	mv	s1,a4
   13b68:	016484b3          	add	s1,s1,s6
   13b6c:	00168693          	add	a3,a3,1
   13b70:	00542023          	sw	t0,0(s0)
   13b74:	01642223          	sw	s6,4(s0)
   13b78:	0a912423          	sw	s1,168(sp)
   13b7c:	0ad12223          	sw	a3,164(sp)
   13b80:	00700713          	li	a4,7
   13b84:	00840413          	add	s0,s0,8
   13b88:	bed75c63          	bge	a4,a3,12f80 <_vfprintf_r+0x11e8>
   13b8c:	00812583          	lw	a1,8(sp)
   13b90:	0a010613          	add	a2,sp,160
   13b94:	00098513          	mv	a0,s3
   13b98:	05d12223          	sw	t4,68(sp)
   13b9c:	0c8010ef          	jal	14c64 <__sprint_r>
   13ba0:	00050463          	beqz	a0,13ba8 <_vfprintf_r+0x1e10>
   13ba4:	ec0fe06f          	j	12264 <_vfprintf_r+0x4cc>
   13ba8:	0a812483          	lw	s1,168(sp)
   13bac:	04412e83          	lw	t4,68(sp)
   13bb0:	0ac10413          	add	s0,sp,172
   13bb4:	bccff06f          	j	12f80 <_vfprintf_r+0x11e8>
   13bb8:	02812703          	lw	a4,40(sp)
   13bbc:	09810893          	add	a7,sp,152
   13bc0:	08410813          	add	a6,sp,132
   13bc4:	00070513          	mv	a0,a4
   13bc8:	00050593          	mv	a1,a0
   13bcc:	00030713          	mv	a4,t1
   13bd0:	07c10793          	add	a5,sp,124
   13bd4:	00200693          	li	a3,2
   13bd8:	00048613          	mv	a2,s1
   13bdc:	00098513          	mv	a0,s3
   13be0:	03c12223          	sw	t3,36(sp)
   13be4:	03d12023          	sw	t4,32(sp)
   13be8:	00612c23          	sw	t1,24(sp)
   13bec:	7b5040ef          	jal	18ba0 <_dtoa_r>
   13bf0:	02012e83          	lw	t4,32(sp)
   13bf4:	01812303          	lw	t1,24(sp)
   13bf8:	02412e03          	lw	t3,36(sp)
   13bfc:	001ef713          	and	a4,t4,1
   13c00:	00050c13          	mv	s8,a0
   13c04:	1a0712e3          	bnez	a4,145a8 <_vfprintf_r+0x2810>
   13c08:	09812783          	lw	a5,152(sp)
   13c0c:	07c12a03          	lw	s4,124(sp)
   13c10:	40a787b3          	sub	a5,a5,a0
   13c14:	00f12c23          	sw	a5,24(sp)
   13c18:	ffd00713          	li	a4,-3
   13c1c:	00ea4463          	blt	s4,a4,13c24 <_vfprintf_r+0x1e8c>
   13c20:	5b435663          	bge	t1,s4,141cc <_vfprintf_r+0x2434>
   13c24:	ffee0e13          	add	t3,t3,-2
   13c28:	fffa0d13          	add	s10,s4,-1
   13c2c:	07a12e23          	sw	s10,124(sp)
   13c30:	0ffe7693          	zext.b	a3,t3
   13c34:	00000613          	li	a2,0
   13c38:	08d10423          	sb	a3,136(sp)
   13c3c:	02b00693          	li	a3,43
   13c40:	000d5863          	bgez	s10,13c50 <_vfprintf_r+0x1eb8>
   13c44:	00100713          	li	a4,1
   13c48:	41470d33          	sub	s10,a4,s4
   13c4c:	02d00693          	li	a3,45
   13c50:	08d104a3          	sb	a3,137(sp)
   13c54:	00900693          	li	a3,9
   13c58:	33a6d8e3          	bge	a3,s10,14788 <_vfprintf_r+0x29f0>
   13c5c:	000c0793          	mv	a5,s8
   13c60:	09f10493          	add	s1,sp,159
   13c64:	03212023          	sw	s2,32(sp)
   13c68:	00040c13          	mv	s8,s0
   13c6c:	06300a13          	li	s4,99
   13c70:	000d0413          	mv	s0,s10
   13c74:	03d12223          	sw	t4,36(sp)
   13c78:	05c12023          	sw	t3,64(sp)
   13c7c:	00048913          	mv	s2,s1
   13c80:	00098c93          	mv	s9,s3
   13c84:	00078d13          	mv	s10,a5
   13c88:	00a00593          	li	a1,10
   13c8c:	00040513          	mv	a0,s0
   13c90:	5b50d0ef          	jal	21a44 <__modsi3>
   13c94:	03050713          	add	a4,a0,48
   13c98:	00090b13          	mv	s6,s2
   13c9c:	00040513          	mv	a0,s0
   13ca0:	feeb0fa3          	sb	a4,-1(s6)
   13ca4:	00a00593          	li	a1,10
   13ca8:	00040993          	mv	s3,s0
   13cac:	5150d0ef          	jal	219c0 <__divsi3>
   13cb0:	fff90913          	add	s2,s2,-1
   13cb4:	00050413          	mv	s0,a0
   13cb8:	fd3a48e3          	blt	s4,s3,13c88 <_vfprintf_r+0x1ef0>
   13cbc:	000c8993          	mv	s3,s9
   13cc0:	03050713          	add	a4,a0,48
   13cc4:	00090c93          	mv	s9,s2
   13cc8:	ffeb0693          	add	a3,s6,-2
   13ccc:	feec8fa3          	sb	a4,-1(s9)
   13cd0:	000c0413          	mv	s0,s8
   13cd4:	02412e83          	lw	t4,36(sp)
   13cd8:	04012e03          	lw	t3,64(sp)
   13cdc:	02012903          	lw	s2,32(sp)
   13ce0:	000d0c13          	mv	s8,s10
   13ce4:	4c96f6e3          	bgeu	a3,s1,149b0 <_vfprintf_r+0x2c18>
   13ce8:	08a10713          	add	a4,sp,138
   13cec:	0006c783          	lbu	a5,0(a3)
   13cf0:	00168693          	add	a3,a3,1
   13cf4:	00170713          	add	a4,a4,1
   13cf8:	fef70fa3          	sb	a5,-1(a4)
   13cfc:	fe9698e3          	bne	a3,s1,13cec <_vfprintf_r+0x1f54>
   13d00:	15010793          	add	a5,sp,336
   13d04:	41678633          	sub	a2,a5,s6
   13d08:	f5360793          	add	a5,a2,-173
   13d0c:	04f12023          	sw	a5,64(sp)
   13d10:	01812783          	lw	a5,24(sp)
   13d14:	04012683          	lw	a3,64(sp)
   13d18:	00100713          	li	a4,1
   13d1c:	00d78d33          	add	s10,a5,a3
   13d20:	28f75ce3          	bge	a4,a5,147b8 <_vfprintf_r+0x2a20>
   13d24:	03012783          	lw	a5,48(sp)
   13d28:	00fd0d33          	add	s10,s10,a5
   13d2c:	fffd4813          	not	a6,s10
   13d30:	bffeff13          	and	t5,t4,-1025
   13d34:	41f85813          	sra	a6,a6,0x1f
   13d38:	100f6e93          	or	t4,t5,256
   13d3c:	010d7cb3          	and	s9,s10,a6
   13d40:	02012223          	sw	zero,36(sp)
   13d44:	02012023          	sw	zero,32(sp)
   13d48:	00000a13          	li	s4,0
   13d4c:	04412783          	lw	a5,68(sp)
   13d50:	46079263          	bnez	a5,141b4 <_vfprintf_r+0x241c>
   13d54:	07714603          	lbu	a2,119(sp)
   13d58:	00000313          	li	t1,0
   13d5c:	00061463          	bnez	a2,13d64 <_vfprintf_r+0x1fcc>
   13d60:	a74fe06f          	j	11fd4 <_vfprintf_r+0x23c>
   13d64:	e90fe06f          	j	123f4 <_vfprintf_r+0x65c>
   13d68:	00812583          	lw	a1,8(sp)
   13d6c:	0a010613          	add	a2,sp,160
   13d70:	00098513          	mv	a0,s3
   13d74:	03d12023          	sw	t4,32(sp)
   13d78:	6ed000ef          	jal	14c64 <__sprint_r>
   13d7c:	00050463          	beqz	a0,13d84 <_vfprintf_r+0x1fec>
   13d80:	ce4fe06f          	j	12264 <_vfprintf_r+0x4cc>
   13d84:	07c12683          	lw	a3,124(sp)
   13d88:	0a812483          	lw	s1,168(sp)
   13d8c:	02012e83          	lw	t4,32(sp)
   13d90:	0ac10413          	add	s0,sp,172
   13d94:	ce0ff06f          	j	13274 <_vfprintf_r+0x14dc>
   13d98:	00600c93          	li	s9,6
   13d9c:	f14ff06f          	j	134b0 <_vfprintf_r+0x1718>
   13da0:	0ffd7d13          	zext.b	s10,s10
   13da4:	00000c93          	li	s9,0
   13da8:	bd5fe06f          	j	1297c <_vfprintf_r+0xbe4>
   13dac:	0ffd7d13          	zext.b	s10,s10
   13db0:	00000c93          	li	s9,0
   13db4:	e48ff06f          	j	133fc <_vfprintf_r+0x1664>
   13db8:	018d1d13          	sll	s10,s10,0x18
   13dbc:	418d5d13          	sra	s10,s10,0x18
   13dc0:	41fd5c93          	sra	s9,s10,0x1f
   13dc4:	000c8793          	mv	a5,s9
   13dc8:	b39fe06f          	j	12900 <_vfprintf_r+0xb68>
   13dcc:	01412783          	lw	a5,20(sp)
   13dd0:	00c12703          	lw	a4,12(sp)
   13dd4:	0007a783          	lw	a5,0(a5)
   13dd8:	00e79023          	sh	a4,0(a5)
   13ddc:	c21fe06f          	j	129fc <_vfprintf_r+0xc64>
   13de0:	000c0513          	mv	a0,s8
   13de4:	05d12223          	sw	t4,68(sp)
   13de8:	7ec040ef          	jal	185d4 <strlen>
   13dec:	07714603          	lbu	a2,119(sp)
   13df0:	fff54813          	not	a6,a0
   13df4:	41f85813          	sra	a6,a6,0x1f
   13df8:	01612a23          	sw	s6,20(sp)
   13dfc:	02012223          	sw	zero,36(sp)
   13e00:	02012023          	sw	zero,32(sp)
   13e04:	00012823          	sw	zero,16(sp)
   13e08:	04412e83          	lw	t4,68(sp)
   13e0c:	00050d13          	mv	s10,a0
   13e10:	01057cb3          	and	s9,a0,a6
   13e14:	00000313          	li	t1,0
   13e18:	07300e13          	li	t3,115
   13e1c:	00061463          	bnez	a2,13e24 <_vfprintf_r+0x208c>
   13e20:	9b4fe06f          	j	11fd4 <_vfprintf_r+0x23c>
   13e24:	dd0fe06f          	j	123f4 <_vfprintf_r+0x65c>
   13e28:	00812583          	lw	a1,8(sp)
   13e2c:	0a010613          	add	a2,sp,160
   13e30:	00098513          	mv	a0,s3
   13e34:	631000ef          	jal	14c64 <__sprint_r>
   13e38:	00051463          	bnez	a0,13e40 <_vfprintf_r+0x20a8>
   13e3c:	be8fe06f          	j	12224 <_vfprintf_r+0x48c>
   13e40:	c38fe06f          	j	12278 <_vfprintf_r+0x4e0>
   13e44:	00812583          	lw	a1,8(sp)
   13e48:	0a010613          	add	a2,sp,160
   13e4c:	00098513          	mv	a0,s3
   13e50:	03d12023          	sw	t4,32(sp)
   13e54:	611000ef          	jal	14c64 <__sprint_r>
   13e58:	00050463          	beqz	a0,13e60 <_vfprintf_r+0x20c8>
   13e5c:	c08fe06f          	j	12264 <_vfprintf_r+0x4cc>
   13e60:	07c12683          	lw	a3,124(sp)
   13e64:	0a812483          	lw	s1,168(sp)
   13e68:	0a412703          	lw	a4,164(sp)
   13e6c:	02012e83          	lw	t4,32(sp)
   13e70:	0ac10413          	add	s0,sp,172
   13e74:	c2dff06f          	j	13aa0 <_vfprintf_r+0x1d08>
   13e78:	05862503          	lw	a0,88(a2)
   13e7c:	00f12623          	sw	a5,12(sp)
   13e80:	ff1fc0ef          	jal	10e70 <__retarget_lock_release_recursive>
   13e84:	00c12783          	lw	a5,12(sp)
   13e88:	ab8fe06f          	j	12140 <_vfprintf_r+0x3a8>
   13e8c:	00130a13          	add	s4,t1,1
   13e90:	00200693          	li	a3,2
   13e94:	02812703          	lw	a4,40(sp)
   13e98:	09810893          	add	a7,sp,152
   13e9c:	08410813          	add	a6,sp,132
   13ea0:	00070513          	mv	a0,a4
   13ea4:	00050593          	mv	a1,a0
   13ea8:	000a0713          	mv	a4,s4
   13eac:	07c10793          	add	a5,sp,124
   13eb0:	00048613          	mv	a2,s1
   13eb4:	00098513          	mv	a0,s3
   13eb8:	02612223          	sw	t1,36(sp)
   13ebc:	03c12023          	sw	t3,32(sp)
   13ec0:	01d12c23          	sw	t4,24(sp)
   13ec4:	4dd040ef          	jal	18ba0 <_dtoa_r>
   13ec8:	02012e03          	lw	t3,32(sp)
   13ecc:	04600693          	li	a3,70
   13ed0:	01812e83          	lw	t4,24(sp)
   13ed4:	fdfe7d13          	and	s10,t3,-33
   13ed8:	02412303          	lw	t1,36(sp)
   13edc:	00050c13          	mv	s8,a0
   13ee0:	01450733          	add	a4,a0,s4
   13ee4:	34dd14e3          	bne	s10,a3,14a2c <_vfprintf_r+0x2c94>
   13ee8:	000c4603          	lbu	a2,0(s8)
   13eec:	03000693          	li	a3,48
   13ef0:	6cd60263          	beq	a2,a3,145b4 <_vfprintf_r+0x281c>
   13ef4:	07c12683          	lw	a3,124(sp)
   13ef8:	00d70733          	add	a4,a4,a3
   13efc:	02812683          	lw	a3,40(sp)
   13f00:	00048593          	mv	a1,s1
   13f04:	00000613          	li	a2,0
   13f08:	00068513          	mv	a0,a3
   13f0c:	00000693          	li	a3,0
   13f10:	04e12823          	sw	a4,80(sp)
   13f14:	02612223          	sw	t1,36(sp)
   13f18:	03c12023          	sw	t3,32(sp)
   13f1c:	01d12c23          	sw	t4,24(sp)
   13f20:	1200c0ef          	jal	20040 <__eqdf2>
   13f24:	01812e83          	lw	t4,24(sp)
   13f28:	02012e03          	lw	t3,32(sp)
   13f2c:	02412303          	lw	t1,36(sp)
   13f30:	05012703          	lw	a4,80(sp)
   13f34:	62050863          	beqz	a0,14564 <_vfprintf_r+0x27cc>
   13f38:	09812783          	lw	a5,152(sp)
   13f3c:	00e7fe63          	bgeu	a5,a4,13f58 <_vfprintf_r+0x21c0>
   13f40:	03000613          	li	a2,48
   13f44:	00178693          	add	a3,a5,1
   13f48:	08d12c23          	sw	a3,152(sp)
   13f4c:	00c78023          	sb	a2,0(a5)
   13f50:	09812783          	lw	a5,152(sp)
   13f54:	fee7e8e3          	bltu	a5,a4,13f44 <_vfprintf_r+0x21ac>
   13f58:	07c12a03          	lw	s4,124(sp)
   13f5c:	418787b3          	sub	a5,a5,s8
   13f60:	04700713          	li	a4,71
   13f64:	00f12c23          	sw	a5,24(sp)
   13f68:	caed08e3          	beq	s10,a4,13c18 <_vfprintf_r+0x1e80>
   13f6c:	04600713          	li	a4,70
   13f70:	68ed0863          	beq	s10,a4,14600 <_vfprintf_r+0x2868>
   13f74:	fffa0d13          	add	s10,s4,-1
   13f78:	cb5ff06f          	j	13c2c <_vfprintf_r+0x1e94>
   13f7c:	02812703          	lw	a4,40(sp)
   13f80:	07c10613          	add	a2,sp,124
   13f84:	00048593          	mv	a1,s1
   13f88:	00070513          	mv	a0,a4
   13f8c:	02612223          	sw	t1,36(sp)
   13f90:	03c12023          	sw	t3,32(sp)
   13f94:	01d12c23          	sw	t4,24(sp)
   13f98:	0f5040ef          	jal	1888c <frexp>
   13f9c:	00010717          	auipc	a4,0x10
   13fa0:	90470713          	add	a4,a4,-1788 # 238a0 <__SDATA_BEGIN__+0x8>
   13fa4:	00072603          	lw	a2,0(a4)
   13fa8:	00472683          	lw	a3,4(a4)
   13fac:	3280c0ef          	jal	202d4 <__muldf3>
   13fb0:	00000613          	li	a2,0
   13fb4:	00000693          	li	a3,0
   13fb8:	00050a13          	mv	s4,a0
   13fbc:	00058d13          	mv	s10,a1
   13fc0:	0800c0ef          	jal	20040 <__eqdf2>
   13fc4:	01812e83          	lw	t4,24(sp)
   13fc8:	02012e03          	lw	t3,32(sp)
   13fcc:	02412303          	lw	t1,36(sp)
   13fd0:	00051663          	bnez	a0,13fdc <_vfprintf_r+0x2244>
   13fd4:	00100713          	li	a4,1
   13fd8:	06e12e23          	sw	a4,124(sp)
   13fdc:	0000e797          	auipc	a5,0xe
   13fe0:	b7c78793          	add	a5,a5,-1156 # 21b58 <__clzsi2+0xe4>
   13fe4:	06100713          	li	a4,97
   13fe8:	02f12023          	sw	a5,32(sp)
   13fec:	00ee1863          	bne	t3,a4,13ffc <_vfprintf_r+0x2264>
   13ff0:	0000e797          	auipc	a5,0xe
   13ff4:	b5478793          	add	a5,a5,-1196 # 21b44 <__clzsi2+0xd0>
   13ff8:	02f12023          	sw	a5,32(sp)
   13ffc:	00010717          	auipc	a4,0x10
   14000:	8ac70713          	add	a4,a4,-1876 # 238a8 <__SDATA_BEGIN__+0x10>
   14004:	00072783          	lw	a5,0(a4)
   14008:	00472803          	lw	a6,4(a4)
   1400c:	000c0493          	mv	s1,s8
   14010:	00f12c23          	sw	a5,24(sp)
   14014:	000d0793          	mv	a5,s10
   14018:	03212223          	sw	s2,36(sp)
   1401c:	000c0d13          	mv	s10,s8
   14020:	02012903          	lw	s2,32(sp)
   14024:	00098c13          	mv	s8,s3
   14028:	01012e23          	sw	a6,28(sp)
   1402c:	fff30b13          	add	s6,t1,-1
   14030:	fff00c93          	li	s9,-1
   14034:	05d12023          	sw	t4,64(sp)
   14038:	05c12823          	sw	t3,80(sp)
   1403c:	04812a23          	sw	s0,84(sp)
   14040:	00078993          	mv	s3,a5
   14044:	01c0006f          	j	14060 <_vfprintf_r+0x22c8>
   14048:	00000613          	li	a2,0
   1404c:	00000693          	li	a3,0
   14050:	fffb0413          	add	s0,s6,-1
   14054:	7ed0b0ef          	jal	20040 <__eqdf2>
   14058:	0a0504e3          	beqz	a0,14900 <_vfprintf_r+0x2b68>
   1405c:	00040b13          	mv	s6,s0
   14060:	01812603          	lw	a2,24(sp)
   14064:	01c12683          	lw	a3,28(sp)
   14068:	000a0513          	mv	a0,s4
   1406c:	00098593          	mv	a1,s3
   14070:	2640c0ef          	jal	202d4 <__muldf3>
   14074:	00058a13          	mv	s4,a1
   14078:	00050993          	mv	s3,a0
   1407c:	3440d0ef          	jal	213c0 <__fixdfsi>
   14080:	00050413          	mv	s0,a0
   14084:	3c00d0ef          	jal	21444 <__floatsidf>
   14088:	00050613          	mv	a2,a0
   1408c:	00058693          	mv	a3,a1
   14090:	00098513          	mv	a0,s3
   14094:	000a0593          	mv	a1,s4
   14098:	1cd0c0ef          	jal	20a64 <__subdf3>
   1409c:	00890733          	add	a4,s2,s0
   140a0:	00074703          	lbu	a4,0(a4)
   140a4:	00048813          	mv	a6,s1
   140a8:	00050a13          	mv	s4,a0
   140ac:	00e48023          	sb	a4,0(s1) # 80000000 <__BSS_END__+0x7ffdc0f0>
   140b0:	00058993          	mv	s3,a1
   140b4:	00148493          	add	s1,s1,1
   140b8:	f99b18e3          	bne	s6,s9,14048 <_vfprintf_r+0x22b0>
   140bc:	0000f697          	auipc	a3,0xf
   140c0:	7f468693          	add	a3,a3,2036 # 238b0 <__SDATA_BEGIN__+0x18>
   140c4:	0006a303          	lw	t1,0(a3)
   140c8:	0046a383          	lw	t2,4(a3)
   140cc:	05012e03          	lw	t3,80(sp)
   140d0:	00030613          	mv	a2,t1
   140d4:	00038693          	mv	a3,t2
   140d8:	01012c23          	sw	a6,24(sp)
   140dc:	02412903          	lw	s2,36(sp)
   140e0:	000c0993          	mv	s3,s8
   140e4:	03c12223          	sw	t3,36(sp)
   140e8:	000d0c13          	mv	s8,s10
   140ec:	00058d13          	mv	s10,a1
   140f0:	7dd0b0ef          	jal	200cc <__gedf2>
   140f4:	0000f797          	auipc	a5,0xf
   140f8:	7bc78793          	add	a5,a5,1980 # 238b0 <__SDATA_BEGIN__+0x18>
   140fc:	00040b13          	mv	s6,s0
   14100:	0007a303          	lw	t1,0(a5)
   14104:	05412403          	lw	s0,84(sp)
   14108:	0047a383          	lw	t2,4(a5)
   1410c:	01812803          	lw	a6,24(sp)
   14110:	02412e03          	lw	t3,36(sp)
   14114:	04012e83          	lw	t4,64(sp)
   14118:	0aa05ce3          	blez	a0,149d0 <_vfprintf_r+0x2c38>
   1411c:	02012783          	lw	a5,32(sp)
   14120:	09012c23          	sw	a6,152(sp)
   14124:	fff4c603          	lbu	a2,-1(s1)
   14128:	00f7c583          	lbu	a1,15(a5)
   1412c:	00048693          	mv	a3,s1
   14130:	02b61063          	bne	a2,a1,14150 <_vfprintf_r+0x23b8>
   14134:	03000513          	li	a0,48
   14138:	fea68fa3          	sb	a0,-1(a3)
   1413c:	09812683          	lw	a3,152(sp)
   14140:	fff68793          	add	a5,a3,-1
   14144:	08f12c23          	sw	a5,152(sp)
   14148:	fff6c603          	lbu	a2,-1(a3)
   1414c:	feb606e3          	beq	a2,a1,14138 <_vfprintf_r+0x23a0>
   14150:	00160593          	add	a1,a2,1
   14154:	03900513          	li	a0,57
   14158:	0ff5f593          	zext.b	a1,a1
   1415c:	04a60463          	beq	a2,a0,141a4 <_vfprintf_r+0x240c>
   14160:	feb68fa3          	sb	a1,-1(a3)
   14164:	00048793          	mv	a5,s1
   14168:	07c12a03          	lw	s4,124(sp)
   1416c:	418787b3          	sub	a5,a5,s8
   14170:	06100613          	li	a2,97
   14174:	fffa0d13          	add	s10,s4,-1
   14178:	00f12c23          	sw	a5,24(sp)
   1417c:	07a12e23          	sw	s10,124(sp)
   14180:	07000693          	li	a3,112
   14184:	00ce0663          	beq	t3,a2,14190 <_vfprintf_r+0x23f8>
   14188:	05000693          	li	a3,80
   1418c:	04100e13          	li	t3,65
   14190:	00100613          	li	a2,1
   14194:	aa5ff06f          	j	13c38 <_vfprintf_r+0x1ea0>
   14198:	00030a13          	mv	s4,t1
   1419c:	00300693          	li	a3,3
   141a0:	cf5ff06f          	j	13e94 <_vfprintf_r+0x20fc>
   141a4:	02012783          	lw	a5,32(sp)
   141a8:	00a7c583          	lbu	a1,10(a5)
   141ac:	feb68fa3          	sb	a1,-1(a3)
   141b0:	fb5ff06f          	j	14164 <_vfprintf_r+0x23cc>
   141b4:	02d00713          	li	a4,45
   141b8:	06e10ba3          	sb	a4,119(sp)
   141bc:	02d00613          	li	a2,45
   141c0:	00000313          	li	t1,0
   141c4:	001c8c93          	add	s9,s9,1
   141c8:	e0dfd06f          	j	11fd4 <_vfprintf_r+0x23c>
   141cc:	01812783          	lw	a5,24(sp)
   141d0:	46fa4063          	blt	s4,a5,14630 <_vfprintf_r+0x2898>
   141d4:	001ef713          	and	a4,t4,1
   141d8:	000a0d13          	mv	s10,s4
   141dc:	00070663          	beqz	a4,141e8 <_vfprintf_r+0x2450>
   141e0:	03012783          	lw	a5,48(sp)
   141e4:	00fa0d33          	add	s10,s4,a5
   141e8:	400eff13          	and	t5,t4,1024
   141ec:	000f0463          	beqz	t5,141f4 <_vfprintf_r+0x245c>
   141f0:	5f404e63          	bgtz	s4,147ec <_vfprintf_r+0x2a54>
   141f4:	fffd4813          	not	a6,s10
   141f8:	41f85813          	sra	a6,a6,0x1f
   141fc:	010d7cb3          	and	s9,s10,a6
   14200:	06700e13          	li	t3,103
   14204:	000b0e93          	mv	t4,s6
   14208:	02012223          	sw	zero,36(sp)
   1420c:	02012023          	sw	zero,32(sp)
   14210:	b3dff06f          	j	13d4c <_vfprintf_r+0x1fb4>
   14214:	02d00793          	li	a5,45
   14218:	06f10ba3          	sb	a5,119(sp)
   1421c:	02d00613          	li	a2,45
   14220:	998fe06f          	j	123b8 <_vfprintf_r+0x620>
   14224:	01812783          	lw	a5,24(sp)
   14228:	02012a03          	lw	s4,32(sp)
   1422c:	05212823          	sw	s2,80(sp)
   14230:	00fc07b3          	add	a5,s8,a5
   14234:	05712c23          	sw	s7,88(sp)
   14238:	05912e23          	sw	s9,92(sp)
   1423c:	00040713          	mv	a4,s0
   14240:	04f12223          	sw	a5,68(sp)
   14244:	02412403          	lw	s0,36(sp)
   14248:	05d12a23          	sw	t4,84(sp)
   1424c:	03812223          	sw	s8,36(sp)
   14250:	03c12b83          	lw	s7,60(sp)
   14254:	04c12c83          	lw	s9,76(sp)
   14258:	00812903          	lw	s2,8(sp)
   1425c:	00700693          	li	a3,7
   14260:	01000d13          	li	s10,16
   14264:	0000eb17          	auipc	s6,0xe
   14268:	db0b0b13          	add	s6,s6,-592 # 22014 <zeroes.0>
   1426c:	00048613          	mv	a2,s1
   14270:	00030c13          	mv	s8,t1
   14274:	09405863          	blez	s4,14304 <_vfprintf_r+0x256c>
   14278:	16805e63          	blez	s0,143f4 <_vfprintf_r+0x265c>
   1427c:	fff40413          	add	s0,s0,-1
   14280:	04812783          	lw	a5,72(sp)
   14284:	01960633          	add	a2,a2,s9
   14288:	01972223          	sw	s9,4(a4)
   1428c:	00f72023          	sw	a5,0(a4)
   14290:	0a412783          	lw	a5,164(sp)
   14294:	0ac12423          	sw	a2,168(sp)
   14298:	00870713          	add	a4,a4,8
   1429c:	00178793          	add	a5,a5,1
   142a0:	0af12223          	sw	a5,164(sp)
   142a4:	14f6ce63          	blt	a3,a5,14400 <_vfprintf_r+0x2668>
   142a8:	04412783          	lw	a5,68(sp)
   142ac:	000bc583          	lbu	a1,0(s7)
   142b0:	418784b3          	sub	s1,a5,s8
   142b4:	0095d463          	bge	a1,s1,142bc <_vfprintf_r+0x2524>
   142b8:	00058493          	mv	s1,a1
   142bc:	02905663          	blez	s1,142e8 <_vfprintf_r+0x2550>
   142c0:	0a412583          	lw	a1,164(sp)
   142c4:	00960633          	add	a2,a2,s1
   142c8:	01872023          	sw	s8,0(a4)
   142cc:	00158593          	add	a1,a1,1
   142d0:	00972223          	sw	s1,4(a4)
   142d4:	0ac12423          	sw	a2,168(sp)
   142d8:	0ab12223          	sw	a1,164(sp)
   142dc:	14b6c663          	blt	a3,a1,14428 <_vfprintf_r+0x2690>
   142e0:	000bc583          	lbu	a1,0(s7)
   142e4:	00870713          	add	a4,a4,8
   142e8:	fff4c513          	not	a0,s1
   142ec:	41f55513          	sra	a0,a0,0x1f
   142f0:	00a4f7b3          	and	a5,s1,a0
   142f4:	40f584b3          	sub	s1,a1,a5
   142f8:	04904663          	bgtz	s1,14344 <_vfprintf_r+0x25ac>
   142fc:	00bc0c33          	add	s8,s8,a1
   14300:	f7404ce3          	bgtz	s4,14278 <_vfprintf_r+0x24e0>
   14304:	f6804ce3          	bgtz	s0,1427c <_vfprintf_r+0x24e4>
   14308:	01812783          	lw	a5,24(sp)
   1430c:	000c0313          	mv	t1,s8
   14310:	02412c03          	lw	s8,36(sp)
   14314:	03712e23          	sw	s7,60(sp)
   14318:	00070413          	mv	s0,a4
   1431c:	00fc0733          	add	a4,s8,a5
   14320:	05012903          	lw	s2,80(sp)
   14324:	05412e83          	lw	t4,84(sp)
   14328:	05812b83          	lw	s7,88(sp)
   1432c:	05c12c83          	lw	s9,92(sp)
   14330:	00060493          	mv	s1,a2
   14334:	00676463          	bltu	a4,t1,1433c <_vfprintf_r+0x25a4>
   14338:	c59fe06f          	j	12f90 <_vfprintf_r+0x11f8>
   1433c:	00070313          	mv	t1,a4
   14340:	c51fe06f          	j	12f90 <_vfprintf_r+0x11f8>
   14344:	0a412583          	lw	a1,164(sp)
   14348:	0000ee97          	auipc	t4,0xe
   1434c:	ccce8e93          	add	t4,t4,-820 # 22014 <zeroes.0>
   14350:	069d5c63          	bge	s10,s1,143c8 <_vfprintf_r+0x2630>
   14354:	02812023          	sw	s0,32(sp)
   14358:	00048413          	mv	s0,s1
   1435c:	000b0493          	mv	s1,s6
   14360:	00c0006f          	j	1436c <_vfprintf_r+0x25d4>
   14364:	ff040413          	add	s0,s0,-16
   14368:	048d5a63          	bge	s10,s0,143bc <_vfprintf_r+0x2624>
   1436c:	01060613          	add	a2,a2,16
   14370:	00158593          	add	a1,a1,1
   14374:	01672023          	sw	s6,0(a4)
   14378:	01a72223          	sw	s10,4(a4)
   1437c:	0ac12423          	sw	a2,168(sp)
   14380:	0ab12223          	sw	a1,164(sp)
   14384:	00870713          	add	a4,a4,8
   14388:	fcb6dee3          	bge	a3,a1,14364 <_vfprintf_r+0x25cc>
   1438c:	0a010613          	add	a2,sp,160
   14390:	00090593          	mv	a1,s2
   14394:	00098513          	mv	a0,s3
   14398:	0cd000ef          	jal	14c64 <__sprint_r>
   1439c:	00050463          	beqz	a0,143a4 <_vfprintf_r+0x260c>
   143a0:	ec5fd06f          	j	12264 <_vfprintf_r+0x4cc>
   143a4:	ff040413          	add	s0,s0,-16
   143a8:	0a812603          	lw	a2,168(sp)
   143ac:	0a412583          	lw	a1,164(sp)
   143b0:	0ac10713          	add	a4,sp,172
   143b4:	00700693          	li	a3,7
   143b8:	fa8d4ae3          	blt	s10,s0,1436c <_vfprintf_r+0x25d4>
   143bc:	00048e93          	mv	t4,s1
   143c0:	00040493          	mv	s1,s0
   143c4:	02012403          	lw	s0,32(sp)
   143c8:	00960633          	add	a2,a2,s1
   143cc:	00158593          	add	a1,a1,1
   143d0:	01d72023          	sw	t4,0(a4)
   143d4:	00972223          	sw	s1,4(a4)
   143d8:	0ac12423          	sw	a2,168(sp)
   143dc:	0ab12223          	sw	a1,164(sp)
   143e0:	10b6ce63          	blt	a3,a1,144fc <_vfprintf_r+0x2764>
   143e4:	000bc583          	lbu	a1,0(s7)
   143e8:	00870713          	add	a4,a4,8
   143ec:	00bc0c33          	add	s8,s8,a1
   143f0:	f11ff06f          	j	14300 <_vfprintf_r+0x2568>
   143f4:	fffb8b93          	add	s7,s7,-1
   143f8:	fffa0a13          	add	s4,s4,-1
   143fc:	e85ff06f          	j	14280 <_vfprintf_r+0x24e8>
   14400:	0a010613          	add	a2,sp,160
   14404:	00090593          	mv	a1,s2
   14408:	00098513          	mv	a0,s3
   1440c:	059000ef          	jal	14c64 <__sprint_r>
   14410:	00050463          	beqz	a0,14418 <_vfprintf_r+0x2680>
   14414:	e51fd06f          	j	12264 <_vfprintf_r+0x4cc>
   14418:	0a812603          	lw	a2,168(sp)
   1441c:	0ac10713          	add	a4,sp,172
   14420:	00700693          	li	a3,7
   14424:	e85ff06f          	j	142a8 <_vfprintf_r+0x2510>
   14428:	0a010613          	add	a2,sp,160
   1442c:	00090593          	mv	a1,s2
   14430:	00098513          	mv	a0,s3
   14434:	031000ef          	jal	14c64 <__sprint_r>
   14438:	00050463          	beqz	a0,14440 <_vfprintf_r+0x26a8>
   1443c:	e29fd06f          	j	12264 <_vfprintf_r+0x4cc>
   14440:	000bc583          	lbu	a1,0(s7)
   14444:	0a812603          	lw	a2,168(sp)
   14448:	0ac10713          	add	a4,sp,172
   1444c:	00700693          	li	a3,7
   14450:	e99ff06f          	j	142e8 <_vfprintf_r+0x2550>
   14454:	04c12783          	lw	a5,76(sp)
   14458:	04812583          	lw	a1,72(sp)
   1445c:	00000913          	li	s2,0
   14460:	40fc0c33          	sub	s8,s8,a5
   14464:	00078613          	mv	a2,a5
   14468:	000c0513          	mv	a0,s8
   1446c:	07c030ef          	jal	174e8 <strncpy>
   14470:	00144783          	lbu	a5,1(s0)
   14474:	00a00613          	li	a2,10
   14478:	00000693          	li	a3,0
   1447c:	00f037b3          	snez	a5,a5
   14480:	000d0513          	mv	a0,s10
   14484:	000c8593          	mv	a1,s9
   14488:	00f40433          	add	s0,s0,a5
   1448c:	53d090ef          	jal	1e1c8 <__udivdi3>
   14490:	a10ff06f          	j	136a0 <_vfprintf_r+0x1908>
   14494:	09810713          	add	a4,sp,152
   14498:	00000693          	li	a3,0
   1449c:	08410613          	add	a2,sp,132
   144a0:	00000593          	li	a1,0
   144a4:	00098513          	mv	a0,s3
   144a8:	01c12a23          	sw	t3,20(sp)
   144ac:	01d12823          	sw	t4,16(sp)
   144b0:	6dc080ef          	jal	1cb8c <_wcsrtombs_r>
   144b4:	fff00713          	li	a4,-1
   144b8:	01012e83          	lw	t4,16(sp)
   144bc:	01412e03          	lw	t3,20(sp)
   144c0:	00050d13          	mv	s10,a0
   144c4:	30e50063          	beq	a0,a4,147c4 <_vfprintf_r+0x2a2c>
   144c8:	09812223          	sw	s8,132(sp)
   144cc:	cacff06f          	j	13978 <_vfprintf_r+0x1be0>
   144d0:	07714603          	lbu	a2,119(sp)
   144d4:	01612a23          	sw	s6,20(sp)
   144d8:	02012223          	sw	zero,36(sp)
   144dc:	02012023          	sw	zero,32(sp)
   144e0:	00012823          	sw	zero,16(sp)
   144e4:	00000c93          	li	s9,0
   144e8:	00000313          	li	t1,0
   144ec:	00000a13          	li	s4,0
   144f0:	00061463          	bnez	a2,144f8 <_vfprintf_r+0x2760>
   144f4:	ae1fd06f          	j	11fd4 <_vfprintf_r+0x23c>
   144f8:	efdfd06f          	j	123f4 <_vfprintf_r+0x65c>
   144fc:	0a010613          	add	a2,sp,160
   14500:	00090593          	mv	a1,s2
   14504:	00098513          	mv	a0,s3
   14508:	75c000ef          	jal	14c64 <__sprint_r>
   1450c:	00050463          	beqz	a0,14514 <_vfprintf_r+0x277c>
   14510:	d55fd06f          	j	12264 <_vfprintf_r+0x4cc>
   14514:	000bc583          	lbu	a1,0(s7)
   14518:	0a812603          	lw	a2,168(sp)
   1451c:	0ac10713          	add	a4,sp,172
   14520:	00700693          	li	a3,7
   14524:	00bc0c33          	add	s8,s8,a1
   14528:	dd9ff06f          	j	14300 <_vfprintf_r+0x2568>
   1452c:	00812583          	lw	a1,8(sp)
   14530:	0a010613          	add	a2,sp,160
   14534:	00098513          	mv	a0,s3
   14538:	05d12223          	sw	t4,68(sp)
   1453c:	728000ef          	jal	14c64 <__sprint_r>
   14540:	00050463          	beqz	a0,14548 <_vfprintf_r+0x27b0>
   14544:	d21fd06f          	j	12264 <_vfprintf_r+0x4cc>
   14548:	0a812483          	lw	s1,168(sp)
   1454c:	04412e83          	lw	t4,68(sp)
   14550:	0ac10413          	add	s0,sp,172
   14554:	a19fe06f          	j	12f6c <_vfprintf_r+0x11d4>
   14558:	00900793          	li	a5,9
   1455c:	95a7e263          	bltu	a5,s10,136a0 <_vfprintf_r+0x1908>
   14560:	98cff06f          	j	136ec <_vfprintf_r+0x1954>
   14564:	07c12a03          	lw	s4,124(sp)
   14568:	00070793          	mv	a5,a4
   1456c:	9f1ff06f          	j	13f5c <_vfprintf_r+0x21c4>
   14570:	00812583          	lw	a1,8(sp)
   14574:	0a010613          	add	a2,sp,160
   14578:	00098513          	mv	a0,s3
   1457c:	03d12023          	sw	t4,32(sp)
   14580:	6e4000ef          	jal	14c64 <__sprint_r>
   14584:	00050463          	beqz	a0,1458c <_vfprintf_r+0x27f4>
   14588:	cddfd06f          	j	12264 <_vfprintf_r+0x4cc>
   1458c:	07c12d03          	lw	s10,124(sp)
   14590:	01812783          	lw	a5,24(sp)
   14594:	0a812483          	lw	s1,168(sp)
   14598:	02012e83          	lw	t4,32(sp)
   1459c:	0ac10413          	add	s0,sp,172
   145a0:	41a78d33          	sub	s10,a5,s10
   145a4:	a49fe06f          	j	12fec <_vfprintf_r+0x1254>
   145a8:	00650733          	add	a4,a0,t1
   145ac:	04700d13          	li	s10,71
   145b0:	94dff06f          	j	13efc <_vfprintf_r+0x2164>
   145b4:	02812603          	lw	a2,40(sp)
   145b8:	00048593          	mv	a1,s1
   145bc:	00000693          	li	a3,0
   145c0:	00060513          	mv	a0,a2
   145c4:	00000613          	li	a2,0
   145c8:	04e12823          	sw	a4,80(sp)
   145cc:	02612223          	sw	t1,36(sp)
   145d0:	03c12023          	sw	t3,32(sp)
   145d4:	01d12c23          	sw	t4,24(sp)
   145d8:	2690b0ef          	jal	20040 <__eqdf2>
   145dc:	01812e83          	lw	t4,24(sp)
   145e0:	02012e03          	lw	t3,32(sp)
   145e4:	02412303          	lw	t1,36(sp)
   145e8:	05012703          	lw	a4,80(sp)
   145ec:	34051e63          	bnez	a0,14948 <_vfprintf_r+0x2bb0>
   145f0:	07c12a03          	lw	s4,124(sp)
   145f4:	01470733          	add	a4,a4,s4
   145f8:	418707b3          	sub	a5,a4,s8
   145fc:	00f12c23          	sw	a5,24(sp)
   14600:	001ef713          	and	a4,t4,1
   14604:	00676733          	or	a4,a4,t1
   14608:	37405a63          	blez	s4,1497c <_vfprintf_r+0x2be4>
   1460c:	26071263          	bnez	a4,14870 <_vfprintf_r+0x2ad8>
   14610:	000a0d13          	mv	s10,s4
   14614:	06600e13          	li	t3,102
   14618:	400eff13          	and	t5,t4,1024
   1461c:	1c0f1a63          	bnez	t5,147f0 <_vfprintf_r+0x2a58>
   14620:	fffd4813          	not	a6,s10
   14624:	41f85813          	sra	a6,a6,0x1f
   14628:	010d7cb3          	and	s9,s10,a6
   1462c:	bd9ff06f          	j	14204 <_vfprintf_r+0x246c>
   14630:	01812783          	lw	a5,24(sp)
   14634:	03012703          	lw	a4,48(sp)
   14638:	06700e13          	li	t3,103
   1463c:	00e78d33          	add	s10,a5,a4
   14640:	fd404ce3          	bgtz	s4,14618 <_vfprintf_r+0x2880>
   14644:	414d06b3          	sub	a3,s10,s4
   14648:	00168d13          	add	s10,a3,1
   1464c:	fffd4813          	not	a6,s10
   14650:	41f85813          	sra	a6,a6,0x1f
   14654:	010d7cb3          	and	s9,s10,a6
   14658:	badff06f          	j	14204 <_vfprintf_r+0x246c>
   1465c:	000e8613          	mv	a2,t4
   14660:	ad8fe06f          	j	12938 <_vfprintf_r+0xba0>
   14664:	00812783          	lw	a5,8(sp)
   14668:	0647a783          	lw	a5,100(a5)
   1466c:	0017f793          	and	a5,a5,1
   14670:	02079063          	bnez	a5,14690 <_vfprintf_r+0x28f8>
   14674:	00812783          	lw	a5,8(sp)
   14678:	00c7d783          	lhu	a5,12(a5)
   1467c:	2007f793          	and	a5,a5,512
   14680:	00079863          	bnez	a5,14690 <_vfprintf_r+0x28f8>
   14684:	00812783          	lw	a5,8(sp)
   14688:	0587a503          	lw	a0,88(a5)
   1468c:	fe4fc0ef          	jal	10e70 <__retarget_lock_release_recursive>
   14690:	fff00793          	li	a5,-1
   14694:	00f12623          	sw	a5,12(sp)
   14698:	c2dfd06f          	j	122c4 <_vfprintf_r+0x52c>
   1469c:	ff000613          	li	a2,-16
   146a0:	40d00d33          	neg	s10,a3
   146a4:	0000e297          	auipc	t0,0xe
   146a8:	97028293          	add	t0,t0,-1680 # 22014 <zeroes.0>
   146ac:	08c6d463          	bge	a3,a2,14734 <_vfprintf_r+0x299c>
   146b0:	03212023          	sw	s2,32(sp)
   146b4:	01000693          	li	a3,16
   146b8:	00700b13          	li	s6,7
   146bc:	000e8a13          	mv	s4,t4
   146c0:	00028913          	mv	s2,t0
   146c4:	00c0006f          	j	146d0 <_vfprintf_r+0x2938>
   146c8:	ff0d0d13          	add	s10,s10,-16
   146cc:	05a6de63          	bge	a3,s10,14728 <_vfprintf_r+0x2990>
   146d0:	01048493          	add	s1,s1,16
   146d4:	00170713          	add	a4,a4,1
   146d8:	01242023          	sw	s2,0(s0)
   146dc:	00d42223          	sw	a3,4(s0)
   146e0:	0a912423          	sw	s1,168(sp)
   146e4:	0ae12223          	sw	a4,164(sp)
   146e8:	00840413          	add	s0,s0,8
   146ec:	fceb5ee3          	bge	s6,a4,146c8 <_vfprintf_r+0x2930>
   146f0:	00812583          	lw	a1,8(sp)
   146f4:	0a010613          	add	a2,sp,160
   146f8:	00098513          	mv	a0,s3
   146fc:	568000ef          	jal	14c64 <__sprint_r>
   14700:	00050463          	beqz	a0,14708 <_vfprintf_r+0x2970>
   14704:	b61fd06f          	j	12264 <_vfprintf_r+0x4cc>
   14708:	0a812483          	lw	s1,168(sp)
   1470c:	0a412703          	lw	a4,164(sp)
   14710:	0ac10413          	add	s0,sp,172
   14714:	01000693          	li	a3,16
   14718:	fb1ff06f          	j	146c8 <_vfprintf_r+0x2930>
   1471c:	00012823          	sw	zero,16(sp)
   14720:	0ec10c13          	add	s8,sp,236
   14724:	a88ff06f          	j	139ac <_vfprintf_r+0x1c14>
   14728:	00090293          	mv	t0,s2
   1472c:	02012903          	lw	s2,32(sp)
   14730:	000a0e93          	mv	t4,s4
   14734:	01a484b3          	add	s1,s1,s10
   14738:	00170713          	add	a4,a4,1
   1473c:	00542023          	sw	t0,0(s0)
   14740:	01a42223          	sw	s10,4(s0)
   14744:	0a912423          	sw	s1,168(sp)
   14748:	0ae12223          	sw	a4,164(sp)
   1474c:	00700693          	li	a3,7
   14750:	00e6c463          	blt	a3,a4,14758 <_vfprintf_r+0x29c0>
   14754:	b65fe06f          	j	132b8 <_vfprintf_r+0x1520>
   14758:	00812583          	lw	a1,8(sp)
   1475c:	0a010613          	add	a2,sp,160
   14760:	00098513          	mv	a0,s3
   14764:	03d12023          	sw	t4,32(sp)
   14768:	4fc000ef          	jal	14c64 <__sprint_r>
   1476c:	00050463          	beqz	a0,14774 <_vfprintf_r+0x29dc>
   14770:	af5fd06f          	j	12264 <_vfprintf_r+0x4cc>
   14774:	0a812483          	lw	s1,168(sp)
   14778:	0a412703          	lw	a4,164(sp)
   1477c:	02012e83          	lw	t4,32(sp)
   14780:	0ac10413          	add	s0,sp,172
   14784:	b20ff06f          	j	13aa4 <_vfprintf_r+0x1d0c>
   14788:	08a10693          	add	a3,sp,138
   1478c:	00061863          	bnez	a2,1479c <_vfprintf_r+0x2a04>
   14790:	03000693          	li	a3,48
   14794:	08d10523          	sb	a3,138(sp)
   14798:	08b10693          	add	a3,sp,139
   1479c:	15010793          	add	a5,sp,336
   147a0:	40f68633          	sub	a2,a3,a5
   147a4:	030d0713          	add	a4,s10,48
   147a8:	0c960793          	add	a5,a2,201
   147ac:	00e68023          	sb	a4,0(a3)
   147b0:	04f12023          	sw	a5,64(sp)
   147b4:	d5cff06f          	j	13d10 <_vfprintf_r+0x1f78>
   147b8:	001ef713          	and	a4,t4,1
   147bc:	d6070863          	beqz	a4,13d2c <_vfprintf_r+0x1f94>
   147c0:	d64ff06f          	j	13d24 <_vfprintf_r+0x1f8c>
   147c4:	00812783          	lw	a5,8(sp)
   147c8:	00000293          	li	t0,0
   147cc:	00c79783          	lh	a5,12(a5)
   147d0:	0407e793          	or	a5,a5,64
   147d4:	00812703          	lw	a4,8(sp)
   147d8:	00f71623          	sh	a5,12(a4)
   147dc:	a8dfd06f          	j	12268 <_vfprintf_r+0x4d0>
   147e0:	00012823          	sw	zero,16(sp)
   147e4:	00600313          	li	t1,6
   147e8:	ff9fe06f          	j	137e0 <_vfprintf_r+0x1a48>
   147ec:	06700e13          	li	t3,103
   147f0:	03c12783          	lw	a5,60(sp)
   147f4:	0ff00613          	li	a2,255
   147f8:	0007c703          	lbu	a4,0(a5)
   147fc:	22c70263          	beq	a4,a2,14a20 <_vfprintf_r+0x2c88>
   14800:	00000593          	li	a1,0
   14804:	00000693          	li	a3,0
   14808:	01475e63          	bge	a4,s4,14824 <_vfprintf_r+0x2a8c>
   1480c:	40ea0a33          	sub	s4,s4,a4
   14810:	0017c703          	lbu	a4,1(a5)
   14814:	04070863          	beqz	a4,14864 <_vfprintf_r+0x2acc>
   14818:	00168693          	add	a3,a3,1
   1481c:	00178793          	add	a5,a5,1
   14820:	fec714e3          	bne	a4,a2,14808 <_vfprintf_r+0x2a70>
   14824:	02f12e23          	sw	a5,60(sp)
   14828:	02d12023          	sw	a3,32(sp)
   1482c:	02b12223          	sw	a1,36(sp)
   14830:	02012783          	lw	a5,32(sp)
   14834:	02412703          	lw	a4,36(sp)
   14838:	04c12583          	lw	a1,76(sp)
   1483c:	05c12823          	sw	t3,80(sp)
   14840:	00e78533          	add	a0,a5,a4
   14844:	1580d0ef          	jal	2199c <__mulsi3>
   14848:	01a50d33          	add	s10,a0,s10
   1484c:	fffd4813          	not	a6,s10
   14850:	41f85813          	sra	a6,a6,0x1f
   14854:	05012e03          	lw	t3,80(sp)
   14858:	010d7cb3          	and	s9,s10,a6
   1485c:	000b0e93          	mv	t4,s6
   14860:	cecff06f          	j	13d4c <_vfprintf_r+0x1fb4>
   14864:	0007c703          	lbu	a4,0(a5)
   14868:	00158593          	add	a1,a1,1
   1486c:	fb5ff06f          	j	14820 <_vfprintf_r+0x2a88>
   14870:	03012783          	lw	a5,48(sp)
   14874:	06600e13          	li	t3,102
   14878:	00f306b3          	add	a3,t1,a5
   1487c:	01468d33          	add	s10,a3,s4
   14880:	d99ff06f          	j	14618 <_vfprintf_r+0x2880>
   14884:	02c12783          	lw	a5,44(sp)
   14888:	0a07c863          	bltz	a5,14938 <_vfprintf_r+0x2ba0>
   1488c:	07714603          	lbu	a2,119(sp)
   14890:	04700713          	li	a4,71
   14894:	0000dc17          	auipc	s8,0xd
   14898:	2acc0c13          	add	s8,s8,684 # 21b40 <__clzsi2+0xcc>
   1489c:	01c75463          	bge	a4,t3,148a4 <_vfprintf_r+0x2b0c>
   148a0:	b31fd06f          	j	123d0 <_vfprintf_r+0x638>
   148a4:	0000dc17          	auipc	s8,0xd
   148a8:	298c0c13          	add	s8,s8,664 # 21b3c <__clzsi2+0xc8>
   148ac:	b25fd06f          	j	123d0 <_vfprintf_r+0x638>
   148b0:	07714603          	lbu	a2,119(sp)
   148b4:	01612a23          	sw	s6,20(sp)
   148b8:	02012223          	sw	zero,36(sp)
   148bc:	02012023          	sw	zero,32(sp)
   148c0:	00030c93          	mv	s9,t1
   148c4:	00030d13          	mv	s10,t1
   148c8:	07300e13          	li	t3,115
   148cc:	00000313          	li	t1,0
   148d0:	00061463          	bnez	a2,148d8 <_vfprintf_r+0x2b40>
   148d4:	f00fd06f          	j	11fd4 <_vfprintf_r+0x23c>
   148d8:	b1dfd06f          	j	123f4 <_vfprintf_r+0x65c>
   148dc:	00040313          	mv	t1,s0
   148e0:	01012903          	lw	s2,16(sp)
   148e4:	000b0413          	mv	s0,s6
   148e8:	01412e03          	lw	t3,20(sp)
   148ec:	000c0b13          	mv	s6,s8
   148f0:	000a0e93          	mv	t4,s4
   148f4:	000c8c13          	mv	s8,s9
   148f8:	00030d13          	mv	s10,t1
   148fc:	87cff06f          	j	13978 <_vfprintf_r+0x1be0>
   14900:	001b0793          	add	a5,s6,1
   14904:	000c0993          	mv	s3,s8
   14908:	02412903          	lw	s2,36(sp)
   1490c:	04012e83          	lw	t4,64(sp)
   14910:	05012e03          	lw	t3,80(sp)
   14914:	05412403          	lw	s0,84(sp)
   14918:	000d0c13          	mv	s8,s10
   1491c:	00f487b3          	add	a5,s1,a5
   14920:	03000693          	li	a3,48
   14924:	840b40e3          	bltz	s6,14164 <_vfprintf_r+0x23cc>
   14928:	00148493          	add	s1,s1,1
   1492c:	fed48fa3          	sb	a3,-1(s1)
   14930:	fe979ce3          	bne	a5,s1,14928 <_vfprintf_r+0x2b90>
   14934:	835ff06f          	j	14168 <_vfprintf_r+0x23d0>
   14938:	02d00793          	li	a5,45
   1493c:	06f10ba3          	sb	a5,119(sp)
   14940:	02d00613          	li	a2,45
   14944:	f4dff06f          	j	14890 <_vfprintf_r+0x2af8>
   14948:	00100693          	li	a3,1
   1494c:	414686b3          	sub	a3,a3,s4
   14950:	06d12e23          	sw	a3,124(sp)
   14954:	da4ff06f          	j	13ef8 <_vfprintf_r+0x2160>
   14958:	01412783          	lw	a5,20(sp)
   1495c:	0007ab03          	lw	s6,0(a5)
   14960:	00478793          	add	a5,a5,4
   14964:	000b5463          	bgez	s6,1496c <_vfprintf_r+0x2bd4>
   14968:	fff00b13          	li	s6,-1
   1496c:	00194e03          	lbu	t3,1(s2)
   14970:	00f12a23          	sw	a5,20(sp)
   14974:	00068913          	mv	s2,a3
   14978:	dccfd06f          	j	11f44 <_vfprintf_r+0x1ac>
   1497c:	00071a63          	bnez	a4,14990 <_vfprintf_r+0x2bf8>
   14980:	00100c93          	li	s9,1
   14984:	06600e13          	li	t3,102
   14988:	00100d13          	li	s10,1
   1498c:	879ff06f          	j	14204 <_vfprintf_r+0x246c>
   14990:	03012783          	lw	a5,48(sp)
   14994:	06600e13          	li	t3,102
   14998:	00178693          	add	a3,a5,1
   1499c:	00668d33          	add	s10,a3,t1
   149a0:	fffd4813          	not	a6,s10
   149a4:	41f85813          	sra	a6,a6,0x1f
   149a8:	010d7cb3          	and	s9,s10,a6
   149ac:	859ff06f          	j	14204 <_vfprintf_r+0x246c>
   149b0:	00200793          	li	a5,2
   149b4:	04f12023          	sw	a5,64(sp)
   149b8:	b58ff06f          	j	13d10 <_vfprintf_r+0x1f78>
   149bc:	00812703          	lw	a4,8(sp)
   149c0:	00c71783          	lh	a5,12(a4)
   149c4:	0407e793          	or	a5,a5,64
   149c8:	00f71623          	sh	a5,12(a4)
   149cc:	8b5fd06f          	j	12280 <_vfprintf_r+0x4e8>
   149d0:	000a0513          	mv	a0,s4
   149d4:	000d0593          	mv	a1,s10
   149d8:	00030613          	mv	a2,t1
   149dc:	00038693          	mv	a3,t2
   149e0:	05012023          	sw	a6,64(sp)
   149e4:	03c12223          	sw	t3,36(sp)
   149e8:	01d12c23          	sw	t4,24(sp)
   149ec:	6540b0ef          	jal	20040 <__eqdf2>
   149f0:	01812e83          	lw	t4,24(sp)
   149f4:	02412e03          	lw	t3,36(sp)
   149f8:	04012803          	lw	a6,64(sp)
   149fc:	f6051463          	bnez	a0,14164 <_vfprintf_r+0x23cc>
   14a00:	001b7693          	and	a3,s6,1
   14a04:	f6068063          	beqz	a3,14164 <_vfprintf_r+0x23cc>
   14a08:	f14ff06f          	j	1411c <_vfprintf_r+0x2384>
   14a0c:	00812783          	lw	a5,8(sp)
   14a10:	01012283          	lw	t0,16(sp)
   14a14:	00c79783          	lh	a5,12(a5)
   14a18:	0407e793          	or	a5,a5,64
   14a1c:	db9ff06f          	j	147d4 <_vfprintf_r+0x2a3c>
   14a20:	02012223          	sw	zero,36(sp)
   14a24:	02012023          	sw	zero,32(sp)
   14a28:	e09ff06f          	j	14830 <_vfprintf_r+0x2a98>
   14a2c:	04500d13          	li	s10,69
   14a30:	cccff06f          	j	13efc <_vfprintf_r+0x2164>

00014a34 <vfprintf>:
   14a34:	00060693          	mv	a3,a2
   14a38:	00058613          	mv	a2,a1
   14a3c:	00050593          	mv	a1,a0
   14a40:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   14a44:	b54fd06f          	j	11d98 <_vfprintf_r>

00014a48 <__sbprintf>:
   14a48:	b7010113          	add	sp,sp,-1168
   14a4c:	00c59783          	lh	a5,12(a1)
   14a50:	00e5d703          	lhu	a4,14(a1)
   14a54:	48812423          	sw	s0,1160(sp)
   14a58:	00058413          	mv	s0,a1
   14a5c:	000105b7          	lui	a1,0x10
   14a60:	ffd58593          	add	a1,a1,-3 # fffd <exit-0x97>
   14a64:	06442303          	lw	t1,100(s0)
   14a68:	01c42883          	lw	a7,28(s0)
   14a6c:	02442803          	lw	a6,36(s0)
   14a70:	01071713          	sll	a4,a4,0x10
   14a74:	00b7f7b3          	and	a5,a5,a1
   14a78:	00e7e7b3          	or	a5,a5,a4
   14a7c:	40000593          	li	a1,1024
   14a80:	49212023          	sw	s2,1152(sp)
   14a84:	00f12a23          	sw	a5,20(sp)
   14a88:	00050913          	mv	s2,a0
   14a8c:	07010793          	add	a5,sp,112
   14a90:	06010513          	add	a0,sp,96
   14a94:	48112623          	sw	ra,1164(sp)
   14a98:	48912223          	sw	s1,1156(sp)
   14a9c:	47312e23          	sw	s3,1148(sp)
   14aa0:	00060493          	mv	s1,a2
   14aa4:	00068993          	mv	s3,a3
   14aa8:	06612623          	sw	t1,108(sp)
   14aac:	03112223          	sw	a7,36(sp)
   14ab0:	03012623          	sw	a6,44(sp)
   14ab4:	00f12423          	sw	a5,8(sp)
   14ab8:	00f12c23          	sw	a5,24(sp)
   14abc:	00b12823          	sw	a1,16(sp)
   14ac0:	00b12e23          	sw	a1,28(sp)
   14ac4:	02012023          	sw	zero,32(sp)
   14ac8:	b80fc0ef          	jal	10e48 <__retarget_lock_init_recursive>
   14acc:	00048613          	mv	a2,s1
   14ad0:	00098693          	mv	a3,s3
   14ad4:	00810593          	add	a1,sp,8
   14ad8:	00090513          	mv	a0,s2
   14adc:	abcfd0ef          	jal	11d98 <_vfprintf_r>
   14ae0:	00050493          	mv	s1,a0
   14ae4:	04055263          	bgez	a0,14b28 <__sbprintf+0xe0>
   14ae8:	01415783          	lhu	a5,20(sp)
   14aec:	0407f793          	and	a5,a5,64
   14af0:	00078863          	beqz	a5,14b00 <__sbprintf+0xb8>
   14af4:	00c45783          	lhu	a5,12(s0)
   14af8:	0407e793          	or	a5,a5,64
   14afc:	00f41623          	sh	a5,12(s0)
   14b00:	06012503          	lw	a0,96(sp)
   14b04:	b4cfc0ef          	jal	10e50 <__retarget_lock_close_recursive>
   14b08:	48c12083          	lw	ra,1164(sp)
   14b0c:	48812403          	lw	s0,1160(sp)
   14b10:	48012903          	lw	s2,1152(sp)
   14b14:	47c12983          	lw	s3,1148(sp)
   14b18:	00048513          	mv	a0,s1
   14b1c:	48412483          	lw	s1,1156(sp)
   14b20:	49010113          	add	sp,sp,1168
   14b24:	00008067          	ret
   14b28:	00810593          	add	a1,sp,8
   14b2c:	00090513          	mv	a0,s2
   14b30:	5d5010ef          	jal	16904 <_fflush_r>
   14b34:	fa050ae3          	beqz	a0,14ae8 <__sbprintf+0xa0>
   14b38:	fff00493          	li	s1,-1
   14b3c:	fadff06f          	j	14ae8 <__sbprintf+0xa0>

00014b40 <__sprint_r.part.0>:
   14b40:	0645a783          	lw	a5,100(a1)
   14b44:	fd010113          	add	sp,sp,-48
   14b48:	01612823          	sw	s6,16(sp)
   14b4c:	02112623          	sw	ra,44(sp)
   14b50:	01279713          	sll	a4,a5,0x12
   14b54:	00060b13          	mv	s6,a2
   14b58:	0e075863          	bgez	a4,14c48 <__sprint_r.part.0+0x108>
   14b5c:	00862783          	lw	a5,8(a2)
   14b60:	03212023          	sw	s2,32(sp)
   14b64:	01312e23          	sw	s3,28(sp)
   14b68:	01512a23          	sw	s5,20(sp)
   14b6c:	01712623          	sw	s7,12(sp)
   14b70:	00058913          	mv	s2,a1
   14b74:	00062b83          	lw	s7,0(a2)
   14b78:	00050993          	mv	s3,a0
   14b7c:	fff00a93          	li	s5,-1
   14b80:	0a078863          	beqz	a5,14c30 <__sprint_r.part.0+0xf0>
   14b84:	02812423          	sw	s0,40(sp)
   14b88:	02912223          	sw	s1,36(sp)
   14b8c:	01412c23          	sw	s4,24(sp)
   14b90:	01812423          	sw	s8,8(sp)
   14b94:	004bac03          	lw	s8,4(s7)
   14b98:	000ba403          	lw	s0,0(s7)
   14b9c:	002c5a13          	srl	s4,s8,0x2
   14ba0:	060a0663          	beqz	s4,14c0c <__sprint_r.part.0+0xcc>
   14ba4:	00000493          	li	s1,0
   14ba8:	00c0006f          	j	14bb4 <__sprint_r.part.0+0x74>
   14bac:	00440413          	add	s0,s0,4
   14bb0:	049a0c63          	beq	s4,s1,14c08 <__sprint_r.part.0+0xc8>
   14bb4:	00042583          	lw	a1,0(s0)
   14bb8:	00090613          	mv	a2,s2
   14bbc:	00098513          	mv	a0,s3
   14bc0:	6a8020ef          	jal	17268 <_fputwc_r>
   14bc4:	00148493          	add	s1,s1,1
   14bc8:	ff5512e3          	bne	a0,s5,14bac <__sprint_r.part.0+0x6c>
   14bcc:	02812403          	lw	s0,40(sp)
   14bd0:	02412483          	lw	s1,36(sp)
   14bd4:	02012903          	lw	s2,32(sp)
   14bd8:	01c12983          	lw	s3,28(sp)
   14bdc:	01812a03          	lw	s4,24(sp)
   14be0:	01412a83          	lw	s5,20(sp)
   14be4:	00c12b83          	lw	s7,12(sp)
   14be8:	00812c03          	lw	s8,8(sp)
   14bec:	fff00513          	li	a0,-1
   14bf0:	02c12083          	lw	ra,44(sp)
   14bf4:	000b2423          	sw	zero,8(s6)
   14bf8:	000b2223          	sw	zero,4(s6)
   14bfc:	01012b03          	lw	s6,16(sp)
   14c00:	03010113          	add	sp,sp,48
   14c04:	00008067          	ret
   14c08:	008b2783          	lw	a5,8(s6)
   14c0c:	ffcc7c13          	and	s8,s8,-4
   14c10:	418787b3          	sub	a5,a5,s8
   14c14:	00fb2423          	sw	a5,8(s6)
   14c18:	008b8b93          	add	s7,s7,8
   14c1c:	f6079ce3          	bnez	a5,14b94 <__sprint_r.part.0+0x54>
   14c20:	02812403          	lw	s0,40(sp)
   14c24:	02412483          	lw	s1,36(sp)
   14c28:	01812a03          	lw	s4,24(sp)
   14c2c:	00812c03          	lw	s8,8(sp)
   14c30:	02012903          	lw	s2,32(sp)
   14c34:	01c12983          	lw	s3,28(sp)
   14c38:	01412a83          	lw	s5,20(sp)
   14c3c:	00c12b83          	lw	s7,12(sp)
   14c40:	00000513          	li	a0,0
   14c44:	fadff06f          	j	14bf0 <__sprint_r.part.0+0xb0>
   14c48:	66d010ef          	jal	16ab4 <__sfvwrite_r>
   14c4c:	02c12083          	lw	ra,44(sp)
   14c50:	000b2423          	sw	zero,8(s6)
   14c54:	000b2223          	sw	zero,4(s6)
   14c58:	01012b03          	lw	s6,16(sp)
   14c5c:	03010113          	add	sp,sp,48
   14c60:	00008067          	ret

00014c64 <__sprint_r>:
   14c64:	00862703          	lw	a4,8(a2)
   14c68:	00070463          	beqz	a4,14c70 <__sprint_r+0xc>
   14c6c:	ed5ff06f          	j	14b40 <__sprint_r.part.0>
   14c70:	00062223          	sw	zero,4(a2)
   14c74:	00000513          	li	a0,0
   14c78:	00008067          	ret

00014c7c <_vfiprintf_r>:
   14c7c:	eb010113          	add	sp,sp,-336
   14c80:	14812423          	sw	s0,328(sp)
   14c84:	13312e23          	sw	s3,316(sp)
   14c88:	13812423          	sw	s8,296(sp)
   14c8c:	00050413          	mv	s0,a0
   14c90:	00058993          	mv	s3,a1
   14c94:	00060c13          	mv	s8,a2
   14c98:	00000593          	li	a1,0
   14c9c:	00800613          	li	a2,8
   14ca0:	05010513          	add	a0,sp,80
   14ca4:	13512a23          	sw	s5,308(sp)
   14ca8:	14112623          	sw	ra,332(sp)
   14cac:	00068a93          	mv	s5,a3
   14cb0:	9c4fc0ef          	jal	10e74 <memset>
   14cb4:	00040863          	beqz	s0,14cc4 <_vfiprintf_r+0x48>
   14cb8:	03442783          	lw	a5,52(s0)
   14cbc:	00079463          	bnez	a5,14cc4 <_vfiprintf_r+0x48>
   14cc0:	4980106f          	j	16158 <_vfiprintf_r+0x14dc>
   14cc4:	0649a703          	lw	a4,100(s3)
   14cc8:	00c99783          	lh	a5,12(s3)
   14ccc:	00177713          	and	a4,a4,1
   14cd0:	00071863          	bnez	a4,14ce0 <_vfiprintf_r+0x64>
   14cd4:	2007f713          	and	a4,a5,512
   14cd8:	00071463          	bnez	a4,14ce0 <_vfiprintf_r+0x64>
   14cdc:	0b40106f          	j	15d90 <_vfiprintf_r+0x1114>
   14ce0:	01279713          	sll	a4,a5,0x12
   14ce4:	02074663          	bltz	a4,14d10 <_vfiprintf_r+0x94>
   14ce8:	0649a703          	lw	a4,100(s3)
   14cec:	00002637          	lui	a2,0x2
   14cf0:	ffffe6b7          	lui	a3,0xffffe
   14cf4:	00c7e7b3          	or	a5,a5,a2
   14cf8:	fff68693          	add	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffda0ef>
   14cfc:	01079793          	sll	a5,a5,0x10
   14d00:	4107d793          	sra	a5,a5,0x10
   14d04:	00d77733          	and	a4,a4,a3
   14d08:	00f99623          	sh	a5,12(s3)
   14d0c:	06e9a223          	sw	a4,100(s3)
   14d10:	0087f713          	and	a4,a5,8
   14d14:	2e070263          	beqz	a4,14ff8 <_vfiprintf_r+0x37c>
   14d18:	0109a703          	lw	a4,16(s3)
   14d1c:	2c070e63          	beqz	a4,14ff8 <_vfiprintf_r+0x37c>
   14d20:	01a7f713          	and	a4,a5,26
   14d24:	00a00693          	li	a3,10
   14d28:	2ed70a63          	beq	a4,a3,1501c <_vfiprintf_r+0x3a0>
   14d2c:	13412c23          	sw	s4,312(sp)
   14d30:	06c10a13          	add	s4,sp,108
   14d34:	14912223          	sw	s1,324(sp)
   14d38:	15212023          	sw	s2,320(sp)
   14d3c:	13612823          	sw	s6,304(sp)
   14d40:	13712623          	sw	s7,300(sp)
   14d44:	13912223          	sw	s9,292(sp)
   14d48:	13a12023          	sw	s10,288(sp)
   14d4c:	000c0c93          	mv	s9,s8
   14d50:	11b12e23          	sw	s11,284(sp)
   14d54:	07412023          	sw	s4,96(sp)
   14d58:	06012423          	sw	zero,104(sp)
   14d5c:	06012223          	sw	zero,100(sp)
   14d60:	00012a23          	sw	zero,20(sp)
   14d64:	02012623          	sw	zero,44(sp)
   14d68:	02012823          	sw	zero,48(sp)
   14d6c:	02012a23          	sw	zero,52(sp)
   14d70:	00012623          	sw	zero,12(sp)
   14d74:	d3818493          	add	s1,gp,-712 # 23708 <__global_locale>
   14d78:	02500913          	li	s2,37
   14d7c:	0000db97          	auipc	s7,0xd
   14d80:	2b8b8b93          	add	s7,s7,696 # 22034 <blanks.1+0x10>
   14d84:	0000db17          	auipc	s6,0xd
   14d88:	41cb0b13          	add	s6,s6,1052 # 221a0 <zeroes.0>
   14d8c:	000a0c13          	mv	s8,s4
   14d90:	000c8d93          	mv	s11,s9
   14d94:	0e44ad03          	lw	s10,228(s1)
   14d98:	50c030ef          	jal	182a4 <__locale_mb_cur_max>
   14d9c:	00050693          	mv	a3,a0
   14da0:	05010713          	add	a4,sp,80
   14da4:	000d8613          	mv	a2,s11
   14da8:	04810593          	add	a1,sp,72
   14dac:	00040513          	mv	a0,s0
   14db0:	000d00e7          	jalr	s10
   14db4:	2e050e63          	beqz	a0,150b0 <_vfiprintf_r+0x434>
   14db8:	2c054e63          	bltz	a0,15094 <_vfiprintf_r+0x418>
   14dbc:	04812783          	lw	a5,72(sp)
   14dc0:	01278663          	beq	a5,s2,14dcc <_vfiprintf_r+0x150>
   14dc4:	00ad8db3          	add	s11,s11,a0
   14dc8:	fcdff06f          	j	14d94 <_vfiprintf_r+0x118>
   14dcc:	00050d13          	mv	s10,a0
   14dd0:	419d87b3          	sub	a5,s11,s9
   14dd4:	2f9d9463          	bne	s11,s9,150bc <_vfiprintf_r+0x440>
   14dd8:	00000e13          	li	t3,0
   14ddc:	001dc683          	lbu	a3,1(s11)
   14de0:	001d8c93          	add	s9,s11,1
   14de4:	040101a3          	sb	zero,67(sp)
   14de8:	fff00713          	li	a4,-1
   14dec:	00000893          	li	a7,0
   14df0:	05a00d13          	li	s10,90
   14df4:	000e0d93          	mv	s11,t3
   14df8:	001c8c93          	add	s9,s9,1
   14dfc:	fe068793          	add	a5,a3,-32
   14e00:	04fd6663          	bltu	s10,a5,14e4c <_vfiprintf_r+0x1d0>
   14e04:	00279793          	sll	a5,a5,0x2
   14e08:	017787b3          	add	a5,a5,s7
   14e0c:	0007a783          	lw	a5,0(a5)
   14e10:	017787b3          	add	a5,a5,s7
   14e14:	00078067          	jr	a5
   14e18:	00000893          	li	a7,0
   14e1c:	fd068793          	add	a5,a3,-48
   14e20:	00900593          	li	a1,9
   14e24:	000cc683          	lbu	a3,0(s9)
   14e28:	00289613          	sll	a2,a7,0x2
   14e2c:	011608b3          	add	a7,a2,a7
   14e30:	00189893          	sll	a7,a7,0x1
   14e34:	011788b3          	add	a7,a5,a7
   14e38:	fd068793          	add	a5,a3,-48
   14e3c:	001c8c93          	add	s9,s9,1
   14e40:	fef5f2e3          	bgeu	a1,a5,14e24 <_vfiprintf_r+0x1a8>
   14e44:	fe068793          	add	a5,a3,-32
   14e48:	fafd7ee3          	bgeu	s10,a5,14e04 <_vfiprintf_r+0x188>
   14e4c:	000d8e13          	mv	t3,s11
   14e50:	2c068663          	beqz	a3,1511c <_vfiprintf_r+0x4a0>
   14e54:	0ad10623          	sb	a3,172(sp)
   14e58:	040101a3          	sb	zero,67(sp)
   14e5c:	00100e93          	li	t4,1
   14e60:	00100d13          	li	s10,1
   14e64:	0ac10813          	add	a6,sp,172
   14e68:	00012823          	sw	zero,16(sp)
   14e6c:	00000713          	li	a4,0
   14e70:	00000f93          	li	t6,0
   14e74:	06412603          	lw	a2,100(sp)
   14e78:	084e7293          	and	t0,t3,132
   14e7c:	06812783          	lw	a5,104(sp)
   14e80:	00160593          	add	a1,a2,1 # 2001 <exit-0xe093>
   14e84:	00058f13          	mv	t5,a1
   14e88:	00029663          	bnez	t0,14e94 <_vfiprintf_r+0x218>
   14e8c:	41d88db3          	sub	s11,a7,t4
   14e90:	47b046e3          	bgtz	s11,15afc <_vfiprintf_r+0xe80>
   14e94:	04314583          	lbu	a1,67(sp)
   14e98:	02058a63          	beqz	a1,14ecc <_vfiprintf_r+0x250>
   14e9c:	04310613          	add	a2,sp,67
   14ea0:	00178793          	add	a5,a5,1
   14ea4:	00100693          	li	a3,1
   14ea8:	00cc2023          	sw	a2,0(s8)
   14eac:	00dc2223          	sw	a3,4(s8)
   14eb0:	06f12423          	sw	a5,104(sp)
   14eb4:	07e12223          	sw	t5,100(sp)
   14eb8:	00700613          	li	a2,7
   14ebc:	35e64ce3          	blt	a2,t5,15a14 <_vfiprintf_r+0xd98>
   14ec0:	000f0613          	mv	a2,t5
   14ec4:	008c0c13          	add	s8,s8,8
   14ec8:	001f0f13          	add	t5,t5,1
   14ecc:	080f8063          	beqz	t6,14f4c <_vfiprintf_r+0x2d0>
   14ed0:	00200613          	li	a2,2
   14ed4:	00278793          	add	a5,a5,2
   14ed8:	04410693          	add	a3,sp,68
   14edc:	00cc2223          	sw	a2,4(s8)
   14ee0:	00dc2023          	sw	a3,0(s8)
   14ee4:	06f12423          	sw	a5,104(sp)
   14ee8:	07e12223          	sw	t5,100(sp)
   14eec:	00700613          	li	a2,7
   14ef0:	3be652e3          	bge	a2,t5,15a94 <_vfiprintf_r+0xe18>
   14ef4:	60078ae3          	beqz	a5,15d08 <_vfiprintf_r+0x108c>
   14ef8:	06010613          	add	a2,sp,96
   14efc:	00098593          	mv	a1,s3
   14f00:	00040513          	mv	a0,s0
   14f04:	03d12c23          	sw	t4,56(sp)
   14f08:	02e12423          	sw	a4,40(sp)
   14f0c:	03112223          	sw	a7,36(sp)
   14f10:	03012023          	sw	a6,32(sp)
   14f14:	00512e23          	sw	t0,28(sp)
   14f18:	01c12c23          	sw	t3,24(sp)
   14f1c:	c25ff0ef          	jal	14b40 <__sprint_r.part.0>
   14f20:	22051463          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   14f24:	06412603          	lw	a2,100(sp)
   14f28:	06812783          	lw	a5,104(sp)
   14f2c:	03812e83          	lw	t4,56(sp)
   14f30:	02812703          	lw	a4,40(sp)
   14f34:	02412883          	lw	a7,36(sp)
   14f38:	02012803          	lw	a6,32(sp)
   14f3c:	01c12283          	lw	t0,28(sp)
   14f40:	01812e03          	lw	t3,24(sp)
   14f44:	000a0c13          	mv	s8,s4
   14f48:	00160f13          	add	t5,a2,1
   14f4c:	08000593          	li	a1,128
   14f50:	06b286e3          	beq	t0,a1,157bc <_vfiprintf_r+0xb40>
   14f54:	41a70733          	sub	a4,a4,s10
   14f58:	1ae04ae3          	bgtz	a4,1590c <_vfiprintf_r+0xc90>
   14f5c:	00fd07b3          	add	a5,s10,a5
   14f60:	010c2023          	sw	a6,0(s8)
   14f64:	01ac2223          	sw	s10,4(s8)
   14f68:	06f12423          	sw	a5,104(sp)
   14f6c:	07e12223          	sw	t5,100(sp)
   14f70:	00700713          	li	a4,7
   14f74:	03e758e3          	bge	a4,t5,157a4 <_vfiprintf_r+0xb28>
   14f78:	24078063          	beqz	a5,151b8 <_vfiprintf_r+0x53c>
   14f7c:	06010613          	add	a2,sp,96
   14f80:	00098593          	mv	a1,s3
   14f84:	00040513          	mv	a0,s0
   14f88:	03d12023          	sw	t4,32(sp)
   14f8c:	01112e23          	sw	a7,28(sp)
   14f90:	01c12c23          	sw	t3,24(sp)
   14f94:	badff0ef          	jal	14b40 <__sprint_r.part.0>
   14f98:	1a051863          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   14f9c:	06812783          	lw	a5,104(sp)
   14fa0:	02012e83          	lw	t4,32(sp)
   14fa4:	01c12883          	lw	a7,28(sp)
   14fa8:	01812e03          	lw	t3,24(sp)
   14fac:	000a0c13          	mv	s8,s4
   14fb0:	004e7e13          	and	t3,t3,4
   14fb4:	000e0663          	beqz	t3,14fc0 <_vfiprintf_r+0x344>
   14fb8:	41d88db3          	sub	s11,a7,t4
   14fbc:	21b04a63          	bgtz	s11,151d0 <_vfiprintf_r+0x554>
   14fc0:	01d8d463          	bge	a7,t4,14fc8 <_vfiprintf_r+0x34c>
   14fc4:	000e8893          	mv	a7,t4
   14fc8:	00c12703          	lw	a4,12(sp)
   14fcc:	01170733          	add	a4,a4,a7
   14fd0:	00e12623          	sw	a4,12(sp)
   14fd4:	16079063          	bnez	a5,15134 <_vfiprintf_r+0x4b8>
   14fd8:	01012783          	lw	a5,16(sp)
   14fdc:	06012223          	sw	zero,100(sp)
   14fe0:	00078863          	beqz	a5,14ff0 <_vfiprintf_r+0x374>
   14fe4:	00078593          	mv	a1,a5
   14fe8:	00040513          	mv	a0,s0
   14fec:	ad0fc0ef          	jal	112bc <_free_r>
   14ff0:	000a0c13          	mv	s8,s4
   14ff4:	d9dff06f          	j	14d90 <_vfiprintf_r+0x114>
   14ff8:	00098593          	mv	a1,s3
   14ffc:	00040513          	mv	a0,s0
   15000:	7c9010ef          	jal	16fc8 <__swsetup_r>
   15004:	00050463          	beqz	a0,1500c <_vfiprintf_r+0x390>
   15008:	3840106f          	j	1638c <_vfiprintf_r+0x1710>
   1500c:	00c99783          	lh	a5,12(s3)
   15010:	00a00693          	li	a3,10
   15014:	01a7f713          	and	a4,a5,26
   15018:	d0d71ae3          	bne	a4,a3,14d2c <_vfiprintf_r+0xb0>
   1501c:	00e99703          	lh	a4,14(s3)
   15020:	d00746e3          	bltz	a4,14d2c <_vfiprintf_r+0xb0>
   15024:	0649a703          	lw	a4,100(s3)
   15028:	00177713          	and	a4,a4,1
   1502c:	00071863          	bnez	a4,1503c <_vfiprintf_r+0x3c0>
   15030:	2007f793          	and	a5,a5,512
   15034:	00079463          	bnez	a5,1503c <_vfiprintf_r+0x3c0>
   15038:	2ac0106f          	j	162e4 <_vfiprintf_r+0x1668>
   1503c:	000a8693          	mv	a3,s5
   15040:	000c0613          	mv	a2,s8
   15044:	00098593          	mv	a1,s3
   15048:	00040513          	mv	a0,s0
   1504c:	3f8010ef          	jal	16444 <__sbprintf>
   15050:	14c12083          	lw	ra,332(sp)
   15054:	14812403          	lw	s0,328(sp)
   15058:	00a12623          	sw	a0,12(sp)
   1505c:	00c12503          	lw	a0,12(sp)
   15060:	13c12983          	lw	s3,316(sp)
   15064:	13412a83          	lw	s5,308(sp)
   15068:	12812c03          	lw	s8,296(sp)
   1506c:	15010113          	add	sp,sp,336
   15070:	00008067          	ret
   15074:	000aa883          	lw	a7,0(s5)
   15078:	004a8a93          	add	s5,s5,4
   1507c:	3608cc63          	bltz	a7,153f4 <_vfiprintf_r+0x778>
   15080:	000cc683          	lbu	a3,0(s9)
   15084:	d75ff06f          	j	14df8 <_vfiprintf_r+0x17c>
   15088:	000cc683          	lbu	a3,0(s9)
   1508c:	020ded93          	or	s11,s11,32
   15090:	d69ff06f          	j	14df8 <_vfiprintf_r+0x17c>
   15094:	00800613          	li	a2,8
   15098:	00000593          	li	a1,0
   1509c:	05010513          	add	a0,sp,80
   150a0:	dd5fb0ef          	jal	10e74 <memset>
   150a4:	00100513          	li	a0,1
   150a8:	00ad8db3          	add	s11,s11,a0
   150ac:	ce9ff06f          	j	14d94 <_vfiprintf_r+0x118>
   150b0:	00050d13          	mv	s10,a0
   150b4:	419d87b3          	sub	a5,s11,s9
   150b8:	079d8263          	beq	s11,s9,1511c <_vfiprintf_r+0x4a0>
   150bc:	06812683          	lw	a3,104(sp)
   150c0:	06412703          	lw	a4,100(sp)
   150c4:	019c2023          	sw	s9,0(s8)
   150c8:	00d786b3          	add	a3,a5,a3
   150cc:	00170713          	add	a4,a4,1
   150d0:	00fc2223          	sw	a5,4(s8)
   150d4:	06d12423          	sw	a3,104(sp)
   150d8:	06e12223          	sw	a4,100(sp)
   150dc:	00700613          	li	a2,7
   150e0:	008c0c13          	add	s8,s8,8
   150e4:	02e65463          	bge	a2,a4,1510c <_vfiprintf_r+0x490>
   150e8:	38068ce3          	beqz	a3,15c80 <_vfiprintf_r+0x1004>
   150ec:	06010613          	add	a2,sp,96
   150f0:	00098593          	mv	a1,s3
   150f4:	00040513          	mv	a0,s0
   150f8:	00f12823          	sw	a5,16(sp)
   150fc:	a45ff0ef          	jal	14b40 <__sprint_r.part.0>
   15100:	01012783          	lw	a5,16(sp)
   15104:	04051c63          	bnez	a0,1515c <_vfiprintf_r+0x4e0>
   15108:	000a0c13          	mv	s8,s4
   1510c:	00c12703          	lw	a4,12(sp)
   15110:	00f707b3          	add	a5,a4,a5
   15114:	00f12623          	sw	a5,12(sp)
   15118:	cc0d10e3          	bnez	s10,14dd8 <_vfiprintf_r+0x15c>
   1511c:	06812783          	lw	a5,104(sp)
   15120:	00078463          	beqz	a5,15128 <_vfiprintf_r+0x4ac>
   15124:	22c0106f          	j	16350 <_vfiprintf_r+0x16d4>
   15128:	00c99783          	lh	a5,12(s3)
   1512c:	06012223          	sw	zero,100(sp)
   15130:	0300006f          	j	15160 <_vfiprintf_r+0x4e4>
   15134:	06010613          	add	a2,sp,96
   15138:	00098593          	mv	a1,s3
   1513c:	00040513          	mv	a0,s0
   15140:	a01ff0ef          	jal	14b40 <__sprint_r.part.0>
   15144:	e8050ae3          	beqz	a0,14fd8 <_vfiprintf_r+0x35c>
   15148:	01012783          	lw	a5,16(sp)
   1514c:	00078863          	beqz	a5,1515c <_vfiprintf_r+0x4e0>
   15150:	01012583          	lw	a1,16(sp)
   15154:	00040513          	mv	a0,s0
   15158:	964fc0ef          	jal	112bc <_free_r>
   1515c:	00c99783          	lh	a5,12(s3)
   15160:	0649a703          	lw	a4,100(s3)
   15164:	00177713          	and	a4,a4,1
   15168:	16070a63          	beqz	a4,152dc <_vfiprintf_r+0x660>
   1516c:	0407f793          	and	a5,a5,64
   15170:	14412483          	lw	s1,324(sp)
   15174:	14012903          	lw	s2,320(sp)
   15178:	13812a03          	lw	s4,312(sp)
   1517c:	13012b03          	lw	s6,304(sp)
   15180:	12c12b83          	lw	s7,300(sp)
   15184:	12412c83          	lw	s9,292(sp)
   15188:	12012d03          	lw	s10,288(sp)
   1518c:	11c12d83          	lw	s11,284(sp)
   15190:	00078463          	beqz	a5,15198 <_vfiprintf_r+0x51c>
   15194:	2180106f          	j	163ac <_vfiprintf_r+0x1730>
   15198:	14c12083          	lw	ra,332(sp)
   1519c:	14812403          	lw	s0,328(sp)
   151a0:	00c12503          	lw	a0,12(sp)
   151a4:	13c12983          	lw	s3,316(sp)
   151a8:	13412a83          	lw	s5,308(sp)
   151ac:	12812c03          	lw	s8,296(sp)
   151b0:	15010113          	add	sp,sp,336
   151b4:	00008067          	ret
   151b8:	06012223          	sw	zero,100(sp)
   151bc:	004e7e13          	and	t3,t3,4
   151c0:	240e0ee3          	beqz	t3,15c1c <_vfiprintf_r+0xfa0>
   151c4:	41d88db3          	sub	s11,a7,t4
   151c8:	25b05ae3          	blez	s11,15c1c <_vfiprintf_r+0xfa0>
   151cc:	000a0c13          	mv	s8,s4
   151d0:	01000713          	li	a4,16
   151d4:	06412683          	lw	a3,100(sp)
   151d8:	01b74463          	blt	a4,s11,151e0 <_vfiprintf_r+0x564>
   151dc:	1900106f          	j	1636c <_vfiprintf_r+0x16f0>
   151e0:	000a8713          	mv	a4,s5
   151e4:	0000d317          	auipc	t1,0xd
   151e8:	fcc30313          	add	t1,t1,-52 # 221b0 <blanks.1>
   151ec:	000c0593          	mv	a1,s8
   151f0:	000d8a93          	mv	s5,s11
   151f4:	01000813          	li	a6,16
   151f8:	00700d13          	li	s10,7
   151fc:	01112c23          	sw	a7,24(sp)
   15200:	01d12e23          	sw	t4,28(sp)
   15204:	00030c13          	mv	s8,t1
   15208:	00070d93          	mv	s11,a4
   1520c:	0180006f          	j	15224 <_vfiprintf_r+0x5a8>
   15210:	00268613          	add	a2,a3,2
   15214:	00858593          	add	a1,a1,8
   15218:	00070693          	mv	a3,a4
   1521c:	ff0a8a93          	add	s5,s5,-16
   15220:	05585a63          	bge	a6,s5,15274 <_vfiprintf_r+0x5f8>
   15224:	01078793          	add	a5,a5,16
   15228:	00168713          	add	a4,a3,1
   1522c:	0185a023          	sw	s8,0(a1)
   15230:	0105a223          	sw	a6,4(a1)
   15234:	06f12423          	sw	a5,104(sp)
   15238:	06e12223          	sw	a4,100(sp)
   1523c:	fced5ae3          	bge	s10,a4,15210 <_vfiprintf_r+0x594>
   15240:	56078663          	beqz	a5,157ac <_vfiprintf_r+0xb30>
   15244:	06010613          	add	a2,sp,96
   15248:	00098593          	mv	a1,s3
   1524c:	00040513          	mv	a0,s0
   15250:	8f1ff0ef          	jal	14b40 <__sprint_r.part.0>
   15254:	ee051ae3          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   15258:	06412683          	lw	a3,100(sp)
   1525c:	01000813          	li	a6,16
   15260:	ff0a8a93          	add	s5,s5,-16
   15264:	06812783          	lw	a5,104(sp)
   15268:	000a0593          	mv	a1,s4
   1526c:	00168613          	add	a2,a3,1
   15270:	fb584ae3          	blt	a6,s5,15224 <_vfiprintf_r+0x5a8>
   15274:	01812883          	lw	a7,24(sp)
   15278:	01c12e83          	lw	t4,28(sp)
   1527c:	000d8713          	mv	a4,s11
   15280:	000c0313          	mv	t1,s8
   15284:	000a8d93          	mv	s11,s5
   15288:	00058c13          	mv	s8,a1
   1528c:	00070a93          	mv	s5,a4
   15290:	01b787b3          	add	a5,a5,s11
   15294:	006c2023          	sw	t1,0(s8)
   15298:	01bc2223          	sw	s11,4(s8)
   1529c:	06f12423          	sw	a5,104(sp)
   152a0:	06c12223          	sw	a2,100(sp)
   152a4:	00700713          	li	a4,7
   152a8:	d0c75ce3          	bge	a4,a2,14fc0 <_vfiprintf_r+0x344>
   152ac:	160788e3          	beqz	a5,15c1c <_vfiprintf_r+0xfa0>
   152b0:	06010613          	add	a2,sp,96
   152b4:	00098593          	mv	a1,s3
   152b8:	00040513          	mv	a0,s0
   152bc:	01d12e23          	sw	t4,28(sp)
   152c0:	01112c23          	sw	a7,24(sp)
   152c4:	87dff0ef          	jal	14b40 <__sprint_r.part.0>
   152c8:	e80510e3          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   152cc:	06812783          	lw	a5,104(sp)
   152d0:	01c12e83          	lw	t4,28(sp)
   152d4:	01812883          	lw	a7,24(sp)
   152d8:	ce9ff06f          	j	14fc0 <_vfiprintf_r+0x344>
   152dc:	2007f713          	and	a4,a5,512
   152e0:	e80716e3          	bnez	a4,1516c <_vfiprintf_r+0x4f0>
   152e4:	0589a503          	lw	a0,88(s3)
   152e8:	b89fb0ef          	jal	10e70 <__retarget_lock_release_recursive>
   152ec:	00c99783          	lh	a5,12(s3)
   152f0:	e7dff06f          	j	1516c <_vfiprintf_r+0x4f0>
   152f4:	000aa803          	lw	a6,0(s5)
   152f8:	040101a3          	sb	zero,67(sp)
   152fc:	000d8e13          	mv	t3,s11
   15300:	004a8a93          	add	s5,s5,4
   15304:	68080ae3          	beqz	a6,16198 <_vfiprintf_r+0x151c>
   15308:	05300793          	li	a5,83
   1530c:	3cf68ce3          	beq	a3,a5,15ee4 <_vfiprintf_r+0x1268>
   15310:	010df793          	and	a5,s11,16
   15314:	3c0798e3          	bnez	a5,15ee4 <_vfiprintf_r+0x1268>
   15318:	00075463          	bgez	a4,15320 <_vfiprintf_r+0x6a4>
   1531c:	7fd0006f          	j	16318 <_vfiprintf_r+0x169c>
   15320:	00070613          	mv	a2,a4
   15324:	00080513          	mv	a0,a6
   15328:	00000593          	li	a1,0
   1532c:	03112223          	sw	a7,36(sp)
   15330:	00e12e23          	sw	a4,28(sp)
   15334:	01012c23          	sw	a6,24(sp)
   15338:	03b12023          	sw	s11,32(sp)
   1533c:	0e8020ef          	jal	17424 <memchr>
   15340:	00a12823          	sw	a0,16(sp)
   15344:	01812803          	lw	a6,24(sp)
   15348:	01c12703          	lw	a4,28(sp)
   1534c:	02012e03          	lw	t3,32(sp)
   15350:	02412883          	lw	a7,36(sp)
   15354:	00051463          	bnez	a0,1535c <_vfiprintf_r+0x6e0>
   15358:	7990006f          	j	162f0 <_vfiprintf_r+0x1674>
   1535c:	41050d33          	sub	s10,a0,a6
   15360:	fffd4e93          	not	t4,s10
   15364:	41fede93          	sra	t4,t4,0x1f
   15368:	01dd7eb3          	and	t4,s10,t4
   1536c:	00012823          	sw	zero,16(sp)
   15370:	6dd0006f          	j	1624c <_vfiprintf_r+0x15d0>
   15374:	04300793          	li	a5,67
   15378:	000d8e13          	mv	t3,s11
   1537c:	004a8d93          	add	s11,s5,4
   15380:	00f68663          	beq	a3,a5,1538c <_vfiprintf_r+0x710>
   15384:	010e7793          	and	a5,t3,16
   15388:	280788e3          	beqz	a5,15e18 <_vfiprintf_r+0x119c>
   1538c:	00800613          	li	a2,8
   15390:	00000593          	li	a1,0
   15394:	05810513          	add	a0,sp,88
   15398:	01112e23          	sw	a7,28(sp)
   1539c:	01c12c23          	sw	t3,24(sp)
   153a0:	ad5fb0ef          	jal	10e74 <memset>
   153a4:	000aa603          	lw	a2,0(s5)
   153a8:	0ac10593          	add	a1,sp,172
   153ac:	05810693          	add	a3,sp,88
   153b0:	00040513          	mv	a0,s0
   153b4:	00b12823          	sw	a1,16(sp)
   153b8:	6b0070ef          	jal	1ca68 <_wcrtomb_r>
   153bc:	fff00793          	li	a5,-1
   153c0:	01012583          	lw	a1,16(sp)
   153c4:	01812e03          	lw	t3,24(sp)
   153c8:	01c12883          	lw	a7,28(sp)
   153cc:	00050d13          	mv	s10,a0
   153d0:	00f51463          	bne	a0,a5,153d8 <_vfiprintf_r+0x75c>
   153d4:	0200106f          	j	163f4 <_vfiprintf_r+0x1778>
   153d8:	fff54e93          	not	t4,a0
   153dc:	41fede93          	sra	t4,t4,0x1f
   153e0:	01d57eb3          	and	t4,a0,t4
   153e4:	040101a3          	sb	zero,67(sp)
   153e8:	000d8a93          	mv	s5,s11
   153ec:	00058813          	mv	a6,a1
   153f0:	a79ff06f          	j	14e68 <_vfiprintf_r+0x1ec>
   153f4:	411008b3          	neg	a7,a7
   153f8:	000cc683          	lbu	a3,0(s9)
   153fc:	004ded93          	or	s11,s11,4
   15400:	9f9ff06f          	j	14df8 <_vfiprintf_r+0x17c>
   15404:	010dee13          	or	t3,s11,16
   15408:	020e7793          	and	a5,t3,32
   1540c:	0c0788e3          	beqz	a5,15cdc <_vfiprintf_r+0x1060>
   15410:	007a8a93          	add	s5,s5,7
   15414:	ff8afa93          	and	s5,s5,-8
   15418:	004aa683          	lw	a3,4(s5)
   1541c:	000aad83          	lw	s11,0(s5)
   15420:	008a8a93          	add	s5,s5,8
   15424:	00068d13          	mv	s10,a3
   15428:	3006c263          	bltz	a3,1572c <_vfiprintf_r+0xab0>
   1542c:	32074063          	bltz	a4,1574c <_vfiprintf_r+0xad0>
   15430:	01ade6b3          	or	a3,s11,s10
   15434:	f7fe7e13          	and	t3,t3,-129
   15438:	30069a63          	bnez	a3,1574c <_vfiprintf_r+0xad0>
   1543c:	68071ae3          	bnez	a4,162d0 <_vfiprintf_r+0x1654>
   15440:	04314783          	lbu	a5,67(sp)
   15444:	00012823          	sw	zero,16(sp)
   15448:	00000e93          	li	t4,0
   1544c:	00000d13          	li	s10,0
   15450:	11010813          	add	a6,sp,272
   15454:	00078463          	beqz	a5,1545c <_vfiprintf_r+0x7e0>
   15458:	001e8e93          	add	t4,t4,1
   1545c:	002e7f93          	and	t6,t3,2
   15460:	a00f8ae3          	beqz	t6,14e74 <_vfiprintf_r+0x1f8>
   15464:	002e8e93          	add	t4,t4,2
   15468:	00200f93          	li	t6,2
   1546c:	a09ff06f          	j	14e74 <_vfiprintf_r+0x1f8>
   15470:	000cc683          	lbu	a3,0(s9)
   15474:	06800793          	li	a5,104
   15478:	4ef686e3          	beq	a3,a5,16164 <_vfiprintf_r+0x14e8>
   1547c:	040ded93          	or	s11,s11,64
   15480:	979ff06f          	j	14df8 <_vfiprintf_r+0x17c>
   15484:	010de613          	or	a2,s11,16
   15488:	02067793          	and	a5,a2,32
   1548c:	000780e3          	beqz	a5,15c8c <_vfiprintf_r+0x1010>
   15490:	007a8a93          	add	s5,s5,7
   15494:	ff8afa93          	and	s5,s5,-8
   15498:	000aad83          	lw	s11,0(s5)
   1549c:	004aad03          	lw	s10,4(s5)
   154a0:	008a8a93          	add	s5,s5,8
   154a4:	040101a3          	sb	zero,67(sp)
   154a8:	00060e13          	mv	t3,a2
   154ac:	2a074063          	bltz	a4,1574c <_vfiprintf_r+0xad0>
   154b0:	01ade6b3          	or	a3,s11,s10
   154b4:	f7f67e13          	and	t3,a2,-129
   154b8:	28069a63          	bnez	a3,1574c <_vfiprintf_r+0xad0>
   154bc:	00100793          	li	a5,1
   154c0:	06071e63          	bnez	a4,1553c <_vfiprintf_r+0x8c0>
   154c4:	f6079ee3          	bnez	a5,15440 <_vfiprintf_r+0x7c4>
   154c8:	00167d13          	and	s10,a2,1
   154cc:	0a0d0ce3          	beqz	s10,15d84 <_vfiprintf_r+0x1108>
   154d0:	03000793          	li	a5,48
   154d4:	10f107a3          	sb	a5,271(sp)
   154d8:	000d0e93          	mv	t4,s10
   154dc:	10f10813          	add	a6,sp,271
   154e0:	2980006f          	j	15778 <_vfiprintf_r+0xafc>
   154e4:	02b00793          	li	a5,43
   154e8:	000cc683          	lbu	a3,0(s9)
   154ec:	04f101a3          	sb	a5,67(sp)
   154f0:	909ff06f          	j	14df8 <_vfiprintf_r+0x17c>
   154f4:	010de693          	or	a3,s11,16
   154f8:	0206f793          	and	a5,a3,32
   154fc:	7a078c63          	beqz	a5,15cb4 <_vfiprintf_r+0x1038>
   15500:	007a8a93          	add	s5,s5,7
   15504:	ff8afa93          	and	s5,s5,-8
   15508:	000aa783          	lw	a5,0(s5)
   1550c:	004aa583          	lw	a1,4(s5)
   15510:	008a8a93          	add	s5,s5,8
   15514:	040101a3          	sb	zero,67(sp)
   15518:	bff6fe13          	and	t3,a3,-1025
   1551c:	02074c63          	bltz	a4,15554 <_vfiprintf_r+0x8d8>
   15520:	00b7e633          	or	a2,a5,a1
   15524:	b7f6f693          	and	a3,a3,-1153
   15528:	420610e3          	bnez	a2,16148 <_vfiprintf_r+0x14cc>
   1552c:	000e0613          	mv	a2,t3
   15530:	00000793          	li	a5,0
   15534:	00068e13          	mv	t3,a3
   15538:	f80706e3          	beqz	a4,154c4 <_vfiprintf_r+0x848>
   1553c:	00100693          	li	a3,1
   15540:	58d788e3          	beq	a5,a3,162d0 <_vfiprintf_r+0x1654>
   15544:	00200693          	li	a3,2
   15548:	46d786e3          	beq	a5,a3,161b4 <_vfiprintf_r+0x1538>
   1554c:	00000793          	li	a5,0
   15550:	00000593          	li	a1,0
   15554:	11010813          	add	a6,sp,272
   15558:	01d59613          	sll	a2,a1,0x1d
   1555c:	0077f693          	and	a3,a5,7
   15560:	0037d793          	srl	a5,a5,0x3
   15564:	03068693          	add	a3,a3,48
   15568:	00f667b3          	or	a5,a2,a5
   1556c:	0035d593          	srl	a1,a1,0x3
   15570:	fed80fa3          	sb	a3,-1(a6)
   15574:	00b7e633          	or	a2,a5,a1
   15578:	00080513          	mv	a0,a6
   1557c:	fff80813          	add	a6,a6,-1
   15580:	fc061ce3          	bnez	a2,15558 <_vfiprintf_r+0x8dc>
   15584:	001e7793          	and	a5,t3,1
   15588:	54078e63          	beqz	a5,15ae4 <_vfiprintf_r+0xe68>
   1558c:	03000793          	li	a5,48
   15590:	54f68a63          	beq	a3,a5,15ae4 <_vfiprintf_r+0xe68>
   15594:	ffe50513          	add	a0,a0,-2
   15598:	fef80fa3          	sb	a5,-1(a6)
   1559c:	11010793          	add	a5,sp,272
   155a0:	40a78d33          	sub	s10,a5,a0
   155a4:	00070e93          	mv	t4,a4
   155a8:	09a744e3          	blt	a4,s10,15e30 <_vfiprintf_r+0x11b4>
   155ac:	00050813          	mv	a6,a0
   155b0:	1c80006f          	j	15778 <_vfiprintf_r+0xafc>
   155b4:	000086b7          	lui	a3,0x8
   155b8:	83068693          	add	a3,a3,-2000 # 7830 <exit-0x8864>
   155bc:	04d11223          	sh	a3,68(sp)
   155c0:	0000c697          	auipc	a3,0xc
   155c4:	58468693          	add	a3,a3,1412 # 21b44 <__clzsi2+0xd0>
   155c8:	000aa783          	lw	a5,0(s5)
   155cc:	00000593          	li	a1,0
   155d0:	002dee13          	or	t3,s11,2
   155d4:	004a8a93          	add	s5,s5,4
   155d8:	00d12a23          	sw	a3,20(sp)
   155dc:	040101a3          	sb	zero,67(sp)
   155e0:	4c074863          	bltz	a4,15ab0 <_vfiprintf_r+0xe34>
   155e4:	00b7e6b3          	or	a3,a5,a1
   155e8:	f7fe7513          	and	a0,t3,-129
   155ec:	4a069c63          	bnez	a3,15aa4 <_vfiprintf_r+0xe28>
   155f0:	000e0613          	mv	a2,t3
   155f4:	00200793          	li	a5,2
   155f8:	00050e13          	mv	t3,a0
   155fc:	ec5ff06f          	j	154c0 <_vfiprintf_r+0x844>
   15600:	00040513          	mv	a0,s0
   15604:	00e12c23          	sw	a4,24(sp)
   15608:	01112823          	sw	a7,16(sp)
   1560c:	4b9020ef          	jal	182c4 <_localeconv_r>
   15610:	00452783          	lw	a5,4(a0)
   15614:	00078513          	mv	a0,a5
   15618:	02f12a23          	sw	a5,52(sp)
   1561c:	7b9020ef          	jal	185d4 <strlen>
   15620:	00050793          	mv	a5,a0
   15624:	00040513          	mv	a0,s0
   15628:	02f12823          	sw	a5,48(sp)
   1562c:	499020ef          	jal	182c4 <_localeconv_r>
   15630:	00852703          	lw	a4,8(a0)
   15634:	03012783          	lw	a5,48(sp)
   15638:	01012883          	lw	a7,16(sp)
   1563c:	02e12623          	sw	a4,44(sp)
   15640:	01812703          	lw	a4,24(sp)
   15644:	a2078ee3          	beqz	a5,15080 <_vfiprintf_r+0x404>
   15648:	02c12783          	lw	a5,44(sp)
   1564c:	000cc683          	lbu	a3,0(s9)
   15650:	fa078463          	beqz	a5,14df8 <_vfiprintf_r+0x17c>
   15654:	0007c783          	lbu	a5,0(a5)
   15658:	fa078063          	beqz	a5,14df8 <_vfiprintf_r+0x17c>
   1565c:	400ded93          	or	s11,s11,1024
   15660:	f98ff06f          	j	14df8 <_vfiprintf_r+0x17c>
   15664:	020df793          	and	a5,s11,32
   15668:	78079263          	bnez	a5,15dec <_vfiprintf_r+0x1170>
   1566c:	010df793          	and	a5,s11,16
   15670:	30079ae3          	bnez	a5,16184 <_vfiprintf_r+0x1508>
   15674:	040df793          	and	a5,s11,64
   15678:	400796e3          	bnez	a5,16284 <_vfiprintf_r+0x1608>
   1567c:	200dfe13          	and	t3,s11,512
   15680:	300e02e3          	beqz	t3,16184 <_vfiprintf_r+0x1508>
   15684:	000aa783          	lw	a5,0(s5)
   15688:	00c12703          	lw	a4,12(sp)
   1568c:	004a8a93          	add	s5,s5,4
   15690:	00e78023          	sb	a4,0(a5)
   15694:	efcff06f          	j	14d90 <_vfiprintf_r+0x114>
   15698:	000cc683          	lbu	a3,0(s9)
   1569c:	06c00793          	li	a5,108
   156a0:	2cf68ae3          	beq	a3,a5,16174 <_vfiprintf_r+0x14f8>
   156a4:	010ded93          	or	s11,s11,16
   156a8:	f50ff06f          	j	14df8 <_vfiprintf_r+0x17c>
   156ac:	000cc683          	lbu	a3,0(s9)
   156b0:	080ded93          	or	s11,s11,128
   156b4:	f44ff06f          	j	14df8 <_vfiprintf_r+0x17c>
   156b8:	000cc683          	lbu	a3,0(s9)
   156bc:	02a00793          	li	a5,42
   156c0:	001c8593          	add	a1,s9,1
   156c4:	54f680e3          	beq	a3,a5,16404 <_vfiprintf_r+0x1788>
   156c8:	fd068793          	add	a5,a3,-48
   156cc:	00900613          	li	a2,9
   156d0:	00000713          	li	a4,0
   156d4:	00900513          	li	a0,9
   156d8:	02f66463          	bltu	a2,a5,15700 <_vfiprintf_r+0xa84>
   156dc:	0005c683          	lbu	a3,0(a1)
   156e0:	00271613          	sll	a2,a4,0x2
   156e4:	00e60733          	add	a4,a2,a4
   156e8:	00171713          	sll	a4,a4,0x1
   156ec:	00f70733          	add	a4,a4,a5
   156f0:	fd068793          	add	a5,a3,-48
   156f4:	00158593          	add	a1,a1,1
   156f8:	fef572e3          	bgeu	a0,a5,156dc <_vfiprintf_r+0xa60>
   156fc:	74074063          	bltz	a4,15e3c <_vfiprintf_r+0x11c0>
   15700:	00058c93          	mv	s9,a1
   15704:	ef8ff06f          	j	14dfc <_vfiprintf_r+0x180>
   15708:	000cc683          	lbu	a3,0(s9)
   1570c:	001ded93          	or	s11,s11,1
   15710:	ee8ff06f          	j	14df8 <_vfiprintf_r+0x17c>
   15714:	04314783          	lbu	a5,67(sp)
   15718:	000cc683          	lbu	a3,0(s9)
   1571c:	ec079e63          	bnez	a5,14df8 <_vfiprintf_r+0x17c>
   15720:	02000793          	li	a5,32
   15724:	04f101a3          	sb	a5,67(sp)
   15728:	ed0ff06f          	j	14df8 <_vfiprintf_r+0x17c>
   1572c:	02d00613          	li	a2,45
   15730:	01b036b3          	snez	a3,s11
   15734:	41a000b3          	neg	ra,s10
   15738:	04c101a3          	sb	a2,67(sp)
   1573c:	40d08d33          	sub	s10,ra,a3
   15740:	41b00db3          	neg	s11,s11
   15744:	00074463          	bltz	a4,1574c <_vfiprintf_r+0xad0>
   15748:	f7fe7e13          	and	t3,t3,-129
   1574c:	120d14e3          	bnez	s10,16074 <_vfiprintf_r+0x13f8>
   15750:	00900693          	li	a3,9
   15754:	13b6e0e3          	bltu	a3,s11,16074 <_vfiprintf_r+0x13f8>
   15758:	030d8793          	add	a5,s11,48
   1575c:	0ff7f793          	zext.b	a5,a5
   15760:	10f107a3          	sb	a5,271(sp)
   15764:	00070e93          	mv	t4,a4
   15768:	00e04463          	bgtz	a4,15770 <_vfiprintf_r+0xaf4>
   1576c:	00100e93          	li	t4,1
   15770:	00100d13          	li	s10,1
   15774:	10f10813          	add	a6,sp,271
   15778:	04314783          	lbu	a5,67(sp)
   1577c:	00012823          	sw	zero,16(sp)
   15780:	cc079ce3          	bnez	a5,15458 <_vfiprintf_r+0x7dc>
   15784:	cd9ff06f          	j	1545c <_vfiprintf_r+0x7e0>
   15788:	00100713          	li	a4,1
   1578c:	000d0793          	mv	a5,s10
   15790:	07012623          	sw	a6,108(sp)
   15794:	07a12823          	sw	s10,112(sp)
   15798:	07a12423          	sw	s10,104(sp)
   1579c:	06e12223          	sw	a4,100(sp)
   157a0:	000a0c13          	mv	s8,s4
   157a4:	008c0c13          	add	s8,s8,8
   157a8:	809ff06f          	j	14fb0 <_vfiprintf_r+0x334>
   157ac:	00100613          	li	a2,1
   157b0:	00000693          	li	a3,0
   157b4:	000a0593          	mv	a1,s4
   157b8:	a65ff06f          	j	1521c <_vfiprintf_r+0x5a0>
   157bc:	41d88db3          	sub	s11,a7,t4
   157c0:	f9b05a63          	blez	s11,14f54 <_vfiprintf_r+0x2d8>
   157c4:	01000593          	li	a1,16
   157c8:	3bb5dae3          	bge	a1,s11,1637c <_vfiprintf_r+0x1700>
   157cc:	0000df97          	auipc	t6,0xd
   157d0:	9d4f8f93          	add	t6,t6,-1580 # 221a0 <zeroes.0>
   157d4:	02e12223          	sw	a4,36(sp)
   157d8:	000a8713          	mv	a4,s5
   157dc:	000c0693          	mv	a3,s8
   157e0:	000d8a93          	mv	s5,s11
   157e4:	01000f13          	li	t5,16
   157e8:	00700293          	li	t0,7
   157ec:	01c12c23          	sw	t3,24(sp)
   157f0:	01012e23          	sw	a6,28(sp)
   157f4:	03112023          	sw	a7,32(sp)
   157f8:	03d12423          	sw	t4,40(sp)
   157fc:	000f8c13          	mv	s8,t6
   15800:	00070d93          	mv	s11,a4
   15804:	0180006f          	j	1581c <_vfiprintf_r+0xba0>
   15808:	00260513          	add	a0,a2,2
   1580c:	00868693          	add	a3,a3,8
   15810:	00070613          	mv	a2,a4
   15814:	ff0a8a93          	add	s5,s5,-16
   15818:	055f5c63          	bge	t5,s5,15870 <_vfiprintf_r+0xbf4>
   1581c:	01078793          	add	a5,a5,16
   15820:	00160713          	add	a4,a2,1
   15824:	0186a023          	sw	s8,0(a3)
   15828:	01e6a223          	sw	t5,4(a3)
   1582c:	06f12423          	sw	a5,104(sp)
   15830:	06e12223          	sw	a4,100(sp)
   15834:	fce2dae3          	bge	t0,a4,15808 <_vfiprintf_r+0xb8c>
   15838:	1c078663          	beqz	a5,15a04 <_vfiprintf_r+0xd88>
   1583c:	06010613          	add	a2,sp,96
   15840:	00098593          	mv	a1,s3
   15844:	00040513          	mv	a0,s0
   15848:	af8ff0ef          	jal	14b40 <__sprint_r.part.0>
   1584c:	8e051ee3          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   15850:	06412603          	lw	a2,100(sp)
   15854:	01000f13          	li	t5,16
   15858:	ff0a8a93          	add	s5,s5,-16
   1585c:	06812783          	lw	a5,104(sp)
   15860:	000a0693          	mv	a3,s4
   15864:	00160513          	add	a0,a2,1
   15868:	00700293          	li	t0,7
   1586c:	fb5f48e3          	blt	t5,s5,1581c <_vfiprintf_r+0xba0>
   15870:	01812e03          	lw	t3,24(sp)
   15874:	01c12803          	lw	a6,28(sp)
   15878:	02012883          	lw	a7,32(sp)
   1587c:	02412703          	lw	a4,36(sp)
   15880:	02812e83          	lw	t4,40(sp)
   15884:	000d8613          	mv	a2,s11
   15888:	000c0f93          	mv	t6,s8
   1588c:	000a8d93          	mv	s11,s5
   15890:	00068c13          	mv	s8,a3
   15894:	00060a93          	mv	s5,a2
   15898:	01b787b3          	add	a5,a5,s11
   1589c:	01fc2023          	sw	t6,0(s8)
   158a0:	01bc2223          	sw	s11,4(s8)
   158a4:	06f12423          	sw	a5,104(sp)
   158a8:	06a12223          	sw	a0,100(sp)
   158ac:	00700613          	li	a2,7
   158b0:	4ea65863          	bge	a2,a0,15da0 <_vfiprintf_r+0x1124>
   158b4:	1a0786e3          	beqz	a5,16260 <_vfiprintf_r+0x15e4>
   158b8:	06010613          	add	a2,sp,96
   158bc:	00098593          	mv	a1,s3
   158c0:	00040513          	mv	a0,s0
   158c4:	03d12423          	sw	t4,40(sp)
   158c8:	02e12223          	sw	a4,36(sp)
   158cc:	03112023          	sw	a7,32(sp)
   158d0:	01012e23          	sw	a6,28(sp)
   158d4:	01c12c23          	sw	t3,24(sp)
   158d8:	a68ff0ef          	jal	14b40 <__sprint_r.part.0>
   158dc:	860516e3          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   158e0:	02412703          	lw	a4,36(sp)
   158e4:	06412603          	lw	a2,100(sp)
   158e8:	06812783          	lw	a5,104(sp)
   158ec:	41a70733          	sub	a4,a4,s10
   158f0:	02812e83          	lw	t4,40(sp)
   158f4:	02012883          	lw	a7,32(sp)
   158f8:	01c12803          	lw	a6,28(sp)
   158fc:	01812e03          	lw	t3,24(sp)
   15900:	000a0c13          	mv	s8,s4
   15904:	00160f13          	add	t5,a2,1
   15908:	e4e05a63          	blez	a4,14f5c <_vfiprintf_r+0x2e0>
   1590c:	01000593          	li	a1,16
   15910:	0000df97          	auipc	t6,0xd
   15914:	890f8f93          	add	t6,t6,-1904 # 221a0 <zeroes.0>
   15918:	0ae5da63          	bge	a1,a4,159cc <_vfiprintf_r+0xd50>
   1591c:	000c0593          	mv	a1,s8
   15920:	03512423          	sw	s5,40(sp)
   15924:	01000d93          	li	s11,16
   15928:	00700293          	li	t0,7
   1592c:	01c12c23          	sw	t3,24(sp)
   15930:	01012e23          	sw	a6,28(sp)
   15934:	03112023          	sw	a7,32(sp)
   15938:	03d12223          	sw	t4,36(sp)
   1593c:	00070a93          	mv	s5,a4
   15940:	000b0c13          	mv	s8,s6
   15944:	0180006f          	j	1595c <_vfiprintf_r+0xce0>
   15948:	00260f13          	add	t5,a2,2
   1594c:	00858593          	add	a1,a1,8
   15950:	00068613          	mv	a2,a3
   15954:	ff0a8a93          	add	s5,s5,-16
   15958:	055dda63          	bge	s11,s5,159ac <_vfiprintf_r+0xd30>
   1595c:	01078793          	add	a5,a5,16
   15960:	00160693          	add	a3,a2,1
   15964:	0165a023          	sw	s6,0(a1)
   15968:	01b5a223          	sw	s11,4(a1)
   1596c:	06f12423          	sw	a5,104(sp)
   15970:	06d12223          	sw	a3,100(sp)
   15974:	fcd2dae3          	bge	t0,a3,15948 <_vfiprintf_r+0xccc>
   15978:	06078e63          	beqz	a5,159f4 <_vfiprintf_r+0xd78>
   1597c:	06010613          	add	a2,sp,96
   15980:	00098593          	mv	a1,s3
   15984:	00040513          	mv	a0,s0
   15988:	9b8ff0ef          	jal	14b40 <__sprint_r.part.0>
   1598c:	fa051e63          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   15990:	06412603          	lw	a2,100(sp)
   15994:	ff0a8a93          	add	s5,s5,-16
   15998:	06812783          	lw	a5,104(sp)
   1599c:	000a0593          	mv	a1,s4
   159a0:	00160f13          	add	t5,a2,1
   159a4:	00700293          	li	t0,7
   159a8:	fb5dcae3          	blt	s11,s5,1595c <_vfiprintf_r+0xce0>
   159ac:	000a8713          	mv	a4,s5
   159b0:	01812e03          	lw	t3,24(sp)
   159b4:	01c12803          	lw	a6,28(sp)
   159b8:	02012883          	lw	a7,32(sp)
   159bc:	02412e83          	lw	t4,36(sp)
   159c0:	02812a83          	lw	s5,40(sp)
   159c4:	000c0f93          	mv	t6,s8
   159c8:	00058c13          	mv	s8,a1
   159cc:	00e787b3          	add	a5,a5,a4
   159d0:	00ec2223          	sw	a4,4(s8)
   159d4:	01fc2023          	sw	t6,0(s8)
   159d8:	06f12423          	sw	a5,104(sp)
   159dc:	07e12223          	sw	t5,100(sp)
   159e0:	00700713          	li	a4,7
   159e4:	25e74863          	blt	a4,t5,15c34 <_vfiprintf_r+0xfb8>
   159e8:	008c0c13          	add	s8,s8,8
   159ec:	001f0f13          	add	t5,t5,1
   159f0:	d6cff06f          	j	14f5c <_vfiprintf_r+0x2e0>
   159f4:	00100f13          	li	t5,1
   159f8:	00000613          	li	a2,0
   159fc:	000a0593          	mv	a1,s4
   15a00:	f55ff06f          	j	15954 <_vfiprintf_r+0xcd8>
   15a04:	00100513          	li	a0,1
   15a08:	00000613          	li	a2,0
   15a0c:	000a0693          	mv	a3,s4
   15a10:	e05ff06f          	j	15814 <_vfiprintf_r+0xb98>
   15a14:	06078263          	beqz	a5,15a78 <_vfiprintf_r+0xdfc>
   15a18:	06010613          	add	a2,sp,96
   15a1c:	00098593          	mv	a1,s3
   15a20:	00040513          	mv	a0,s0
   15a24:	03d12e23          	sw	t4,60(sp)
   15a28:	02e12c23          	sw	a4,56(sp)
   15a2c:	03112423          	sw	a7,40(sp)
   15a30:	03012223          	sw	a6,36(sp)
   15a34:	02512023          	sw	t0,32(sp)
   15a38:	01f12e23          	sw	t6,28(sp)
   15a3c:	01c12c23          	sw	t3,24(sp)
   15a40:	900ff0ef          	jal	14b40 <__sprint_r.part.0>
   15a44:	f0051263          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   15a48:	06412603          	lw	a2,100(sp)
   15a4c:	06812783          	lw	a5,104(sp)
   15a50:	03c12e83          	lw	t4,60(sp)
   15a54:	03812703          	lw	a4,56(sp)
   15a58:	02812883          	lw	a7,40(sp)
   15a5c:	02412803          	lw	a6,36(sp)
   15a60:	02012283          	lw	t0,32(sp)
   15a64:	01c12f83          	lw	t6,28(sp)
   15a68:	01812e03          	lw	t3,24(sp)
   15a6c:	000a0c13          	mv	s8,s4
   15a70:	00160f13          	add	t5,a2,1
   15a74:	c58ff06f          	j	14ecc <_vfiprintf_r+0x250>
   15a78:	380f8863          	beqz	t6,15e08 <_vfiprintf_r+0x118c>
   15a7c:	04410793          	add	a5,sp,68
   15a80:	06f12623          	sw	a5,108(sp)
   15a84:	00200793          	li	a5,2
   15a88:	06f12823          	sw	a5,112(sp)
   15a8c:	00100f13          	li	t5,1
   15a90:	000a0c13          	mv	s8,s4
   15a94:	000f0613          	mv	a2,t5
   15a98:	008c0c13          	add	s8,s8,8
   15a9c:	001f0f13          	add	t5,t5,1
   15aa0:	cacff06f          	j	14f4c <_vfiprintf_r+0x2d0>
   15aa4:	00200693          	li	a3,2
   15aa8:	00050e13          	mv	t3,a0
   15aac:	aa0684e3          	beqz	a3,15554 <_vfiprintf_r+0x8d8>
   15ab0:	01412503          	lw	a0,20(sp)
   15ab4:	11010813          	add	a6,sp,272
   15ab8:	00f7f693          	and	a3,a5,15
   15abc:	00d506b3          	add	a3,a0,a3
   15ac0:	0006c603          	lbu	a2,0(a3)
   15ac4:	0047d793          	srl	a5,a5,0x4
   15ac8:	01c59693          	sll	a3,a1,0x1c
   15acc:	00f6e7b3          	or	a5,a3,a5
   15ad0:	0045d593          	srl	a1,a1,0x4
   15ad4:	fec80fa3          	sb	a2,-1(a6)
   15ad8:	00b7e6b3          	or	a3,a5,a1
   15adc:	fff80813          	add	a6,a6,-1
   15ae0:	fc069ce3          	bnez	a3,15ab8 <_vfiprintf_r+0xe3c>
   15ae4:	11010793          	add	a5,sp,272
   15ae8:	41078d33          	sub	s10,a5,a6
   15aec:	00070e93          	mv	t4,a4
   15af0:	c9a754e3          	bge	a4,s10,15778 <_vfiprintf_r+0xafc>
   15af4:	000d0e93          	mv	t4,s10
   15af8:	c81ff06f          	j	15778 <_vfiprintf_r+0xafc>
   15afc:	01000513          	li	a0,16
   15b00:	01b554e3          	bge	a0,s11,16308 <_vfiprintf_r+0x168c>
   15b04:	000a8693          	mv	a3,s5
   15b08:	0000c317          	auipc	t1,0xc
   15b0c:	6a830313          	add	t1,t1,1704 # 221b0 <blanks.1>
   15b10:	02e12c23          	sw	a4,56(sp)
   15b14:	000d8a93          	mv	s5,s11
   15b18:	000c0713          	mv	a4,s8
   15b1c:	01000f13          	li	t5,16
   15b20:	00700393          	li	t2,7
   15b24:	01c12c23          	sw	t3,24(sp)
   15b28:	01f12e23          	sw	t6,28(sp)
   15b2c:	02512023          	sw	t0,32(sp)
   15b30:	03012223          	sw	a6,36(sp)
   15b34:	03112423          	sw	a7,40(sp)
   15b38:	03d12e23          	sw	t4,60(sp)
   15b3c:	00030c13          	mv	s8,t1
   15b40:	00068d93          	mv	s11,a3
   15b44:	01c0006f          	j	15b60 <_vfiprintf_r+0xee4>
   15b48:	00260513          	add	a0,a2,2
   15b4c:	00870713          	add	a4,a4,8
   15b50:	00058613          	mv	a2,a1
   15b54:	ff0a8a93          	add	s5,s5,-16
   15b58:	055f5c63          	bge	t5,s5,15bb0 <_vfiprintf_r+0xf34>
   15b5c:	00160593          	add	a1,a2,1
   15b60:	01078793          	add	a5,a5,16
   15b64:	01872023          	sw	s8,0(a4)
   15b68:	01e72223          	sw	t5,4(a4)
   15b6c:	06f12423          	sw	a5,104(sp)
   15b70:	06b12223          	sw	a1,100(sp)
   15b74:	fcb3dae3          	bge	t2,a1,15b48 <_vfiprintf_r+0xecc>
   15b78:	08078a63          	beqz	a5,15c0c <_vfiprintf_r+0xf90>
   15b7c:	06010613          	add	a2,sp,96
   15b80:	00098593          	mv	a1,s3
   15b84:	00040513          	mv	a0,s0
   15b88:	fb9fe0ef          	jal	14b40 <__sprint_r.part.0>
   15b8c:	da051e63          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   15b90:	06412603          	lw	a2,100(sp)
   15b94:	01000f13          	li	t5,16
   15b98:	ff0a8a93          	add	s5,s5,-16
   15b9c:	06812783          	lw	a5,104(sp)
   15ba0:	000a0713          	mv	a4,s4
   15ba4:	00160513          	add	a0,a2,1
   15ba8:	00700393          	li	t2,7
   15bac:	fb5f48e3          	blt	t5,s5,15b5c <_vfiprintf_r+0xee0>
   15bb0:	000c0313          	mv	t1,s8
   15bb4:	01812e03          	lw	t3,24(sp)
   15bb8:	00070c13          	mv	s8,a4
   15bbc:	01c12f83          	lw	t6,28(sp)
   15bc0:	02012283          	lw	t0,32(sp)
   15bc4:	02412803          	lw	a6,36(sp)
   15bc8:	02812883          	lw	a7,40(sp)
   15bcc:	03c12e83          	lw	t4,60(sp)
   15bd0:	03812703          	lw	a4,56(sp)
   15bd4:	000d8693          	mv	a3,s11
   15bd8:	000a8d93          	mv	s11,s5
   15bdc:	00068a93          	mv	s5,a3
   15be0:	01b787b3          	add	a5,a5,s11
   15be4:	006c2023          	sw	t1,0(s8)
   15be8:	01bc2223          	sw	s11,4(s8)
   15bec:	06f12423          	sw	a5,104(sp)
   15bf0:	06a12223          	sw	a0,100(sp)
   15bf4:	00700613          	li	a2,7
   15bf8:	12a64063          	blt	a2,a0,15d18 <_vfiprintf_r+0x109c>
   15bfc:	008c0c13          	add	s8,s8,8
   15c00:	00150f13          	add	t5,a0,1
   15c04:	00050613          	mv	a2,a0
   15c08:	a8cff06f          	j	14e94 <_vfiprintf_r+0x218>
   15c0c:	00000613          	li	a2,0
   15c10:	00100513          	li	a0,1
   15c14:	000a0713          	mv	a4,s4
   15c18:	f3dff06f          	j	15b54 <_vfiprintf_r+0xed8>
   15c1c:	01d8d463          	bge	a7,t4,15c24 <_vfiprintf_r+0xfa8>
   15c20:	000e8893          	mv	a7,t4
   15c24:	00c12783          	lw	a5,12(sp)
   15c28:	011787b3          	add	a5,a5,a7
   15c2c:	00f12623          	sw	a5,12(sp)
   15c30:	ba8ff06f          	j	14fd8 <_vfiprintf_r+0x35c>
   15c34:	b4078ae3          	beqz	a5,15788 <_vfiprintf_r+0xb0c>
   15c38:	06010613          	add	a2,sp,96
   15c3c:	00098593          	mv	a1,s3
   15c40:	00040513          	mv	a0,s0
   15c44:	03d12223          	sw	t4,36(sp)
   15c48:	03112023          	sw	a7,32(sp)
   15c4c:	01012e23          	sw	a6,28(sp)
   15c50:	01c12c23          	sw	t3,24(sp)
   15c54:	eedfe0ef          	jal	14b40 <__sprint_r.part.0>
   15c58:	ce051863          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   15c5c:	06412f03          	lw	t5,100(sp)
   15c60:	06812783          	lw	a5,104(sp)
   15c64:	02412e83          	lw	t4,36(sp)
   15c68:	02012883          	lw	a7,32(sp)
   15c6c:	01c12803          	lw	a6,28(sp)
   15c70:	01812e03          	lw	t3,24(sp)
   15c74:	000a0c13          	mv	s8,s4
   15c78:	001f0f13          	add	t5,t5,1
   15c7c:	ae0ff06f          	j	14f5c <_vfiprintf_r+0x2e0>
   15c80:	06012223          	sw	zero,100(sp)
   15c84:	000a0c13          	mv	s8,s4
   15c88:	c84ff06f          	j	1510c <_vfiprintf_r+0x490>
   15c8c:	01067693          	and	a3,a2,16
   15c90:	000aa783          	lw	a5,0(s5)
   15c94:	004a8a93          	add	s5,s5,4
   15c98:	12069c63          	bnez	a3,15dd0 <_vfiprintf_r+0x1154>
   15c9c:	04067693          	and	a3,a2,64
   15ca0:	12068463          	beqz	a3,15dc8 <_vfiprintf_r+0x114c>
   15ca4:	01079d93          	sll	s11,a5,0x10
   15ca8:	010ddd93          	srl	s11,s11,0x10
   15cac:	00000d13          	li	s10,0
   15cb0:	ff4ff06f          	j	154a4 <_vfiprintf_r+0x828>
   15cb4:	0106f613          	and	a2,a3,16
   15cb8:	000aa783          	lw	a5,0(s5)
   15cbc:	004a8a93          	add	s5,s5,4
   15cc0:	12061263          	bnez	a2,15de4 <_vfiprintf_r+0x1168>
   15cc4:	0406f613          	and	a2,a3,64
   15cc8:	10060a63          	beqz	a2,15ddc <_vfiprintf_r+0x1160>
   15ccc:	01079793          	sll	a5,a5,0x10
   15cd0:	0107d793          	srl	a5,a5,0x10
   15cd4:	00000593          	li	a1,0
   15cd8:	83dff06f          	j	15514 <_vfiprintf_r+0x898>
   15cdc:	010e7693          	and	a3,t3,16
   15ce0:	000aa783          	lw	a5,0(s5)
   15ce4:	004a8a93          	add	s5,s5,4
   15ce8:	0c069863          	bnez	a3,15db8 <_vfiprintf_r+0x113c>
   15cec:	040e7693          	and	a3,t3,64
   15cf0:	0c068063          	beqz	a3,15db0 <_vfiprintf_r+0x1134>
   15cf4:	01079d93          	sll	s11,a5,0x10
   15cf8:	410ddd93          	sra	s11,s11,0x10
   15cfc:	41fddd13          	sra	s10,s11,0x1f
   15d00:	000d0693          	mv	a3,s10
   15d04:	f24ff06f          	j	15428 <_vfiprintf_r+0x7ac>
   15d08:	00100f13          	li	t5,1
   15d0c:	00000613          	li	a2,0
   15d10:	000a0c13          	mv	s8,s4
   15d14:	a38ff06f          	j	14f4c <_vfiprintf_r+0x2d0>
   15d18:	1a078463          	beqz	a5,15ec0 <_vfiprintf_r+0x1244>
   15d1c:	06010613          	add	a2,sp,96
   15d20:	00098593          	mv	a1,s3
   15d24:	00040513          	mv	a0,s0
   15d28:	03d12e23          	sw	t4,60(sp)
   15d2c:	02e12c23          	sw	a4,56(sp)
   15d30:	03112423          	sw	a7,40(sp)
   15d34:	03012223          	sw	a6,36(sp)
   15d38:	02512023          	sw	t0,32(sp)
   15d3c:	01f12e23          	sw	t6,28(sp)
   15d40:	01c12c23          	sw	t3,24(sp)
   15d44:	dfdfe0ef          	jal	14b40 <__sprint_r.part.0>
   15d48:	c0051063          	bnez	a0,15148 <_vfiprintf_r+0x4cc>
   15d4c:	06412603          	lw	a2,100(sp)
   15d50:	06812783          	lw	a5,104(sp)
   15d54:	03c12e83          	lw	t4,60(sp)
   15d58:	03812703          	lw	a4,56(sp)
   15d5c:	02812883          	lw	a7,40(sp)
   15d60:	02412803          	lw	a6,36(sp)
   15d64:	02012283          	lw	t0,32(sp)
   15d68:	01c12f83          	lw	t6,28(sp)
   15d6c:	01812e03          	lw	t3,24(sp)
   15d70:	000a0c13          	mv	s8,s4
   15d74:	00160f13          	add	t5,a2,1
   15d78:	91cff06f          	j	14e94 <_vfiprintf_r+0x218>
   15d7c:	000d8e13          	mv	t3,s11
   15d80:	e88ff06f          	j	15408 <_vfiprintf_r+0x78c>
   15d84:	00000e93          	li	t4,0
   15d88:	11010813          	add	a6,sp,272
   15d8c:	9edff06f          	j	15778 <_vfiprintf_r+0xafc>
   15d90:	0589a503          	lw	a0,88(s3)
   15d94:	8c4fb0ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   15d98:	00c99783          	lh	a5,12(s3)
   15d9c:	f45fe06f          	j	14ce0 <_vfiprintf_r+0x64>
   15da0:	008c0c13          	add	s8,s8,8
   15da4:	00150f13          	add	t5,a0,1
   15da8:	00050613          	mv	a2,a0
   15dac:	9a8ff06f          	j	14f54 <_vfiprintf_r+0x2d8>
   15db0:	200e7693          	and	a3,t3,512
   15db4:	50069463          	bnez	a3,162bc <_vfiprintf_r+0x1640>
   15db8:	41f7dd13          	sra	s10,a5,0x1f
   15dbc:	00078d93          	mv	s11,a5
   15dc0:	000d0693          	mv	a3,s10
   15dc4:	e64ff06f          	j	15428 <_vfiprintf_r+0x7ac>
   15dc8:	20067693          	and	a3,a2,512
   15dcc:	4c069663          	bnez	a3,16298 <_vfiprintf_r+0x161c>
   15dd0:	00078d93          	mv	s11,a5
   15dd4:	00000d13          	li	s10,0
   15dd8:	eccff06f          	j	154a4 <_vfiprintf_r+0x828>
   15ddc:	2006f613          	and	a2,a3,512
   15de0:	4c061863          	bnez	a2,162b0 <_vfiprintf_r+0x1634>
   15de4:	00000593          	li	a1,0
   15de8:	f2cff06f          	j	15514 <_vfiprintf_r+0x898>
   15dec:	00c12683          	lw	a3,12(sp)
   15df0:	000aa783          	lw	a5,0(s5)
   15df4:	004a8a93          	add	s5,s5,4
   15df8:	41f6d713          	sra	a4,a3,0x1f
   15dfc:	00d7a023          	sw	a3,0(a5)
   15e00:	00e7a223          	sw	a4,4(a5)
   15e04:	f8dfe06f          	j	14d90 <_vfiprintf_r+0x114>
   15e08:	00000613          	li	a2,0
   15e0c:	00100f13          	li	t5,1
   15e10:	000a0c13          	mv	s8,s4
   15e14:	938ff06f          	j	14f4c <_vfiprintf_r+0x2d0>
   15e18:	000aa783          	lw	a5,0(s5)
   15e1c:	00100e93          	li	t4,1
   15e20:	00100d13          	li	s10,1
   15e24:	0af10623          	sb	a5,172(sp)
   15e28:	0ac10593          	add	a1,sp,172
   15e2c:	db8ff06f          	j	153e4 <_vfiprintf_r+0x768>
   15e30:	000d0e93          	mv	t4,s10
   15e34:	00050813          	mv	a6,a0
   15e38:	941ff06f          	j	15778 <_vfiprintf_r+0xafc>
   15e3c:	fff00713          	li	a4,-1
   15e40:	00058c93          	mv	s9,a1
   15e44:	fb9fe06f          	j	14dfc <_vfiprintf_r+0x180>
   15e48:	000d8613          	mv	a2,s11
   15e4c:	e3cff06f          	j	15488 <_vfiprintf_r+0x80c>
   15e50:	0000c797          	auipc	a5,0xc
   15e54:	d0878793          	add	a5,a5,-760 # 21b58 <__clzsi2+0xe4>
   15e58:	000d8e13          	mv	t3,s11
   15e5c:	00f12a23          	sw	a5,20(sp)
   15e60:	020e7793          	and	a5,t3,32
   15e64:	1c078c63          	beqz	a5,1603c <_vfiprintf_r+0x13c0>
   15e68:	007a8a93          	add	s5,s5,7
   15e6c:	ff8afa93          	and	s5,s5,-8
   15e70:	000aa783          	lw	a5,0(s5)
   15e74:	004aa583          	lw	a1,4(s5)
   15e78:	008a8a93          	add	s5,s5,8
   15e7c:	001e7613          	and	a2,t3,1
   15e80:	00060e63          	beqz	a2,15e9c <_vfiprintf_r+0x1220>
   15e84:	00b7e633          	or	a2,a5,a1
   15e88:	00060a63          	beqz	a2,15e9c <_vfiprintf_r+0x1220>
   15e8c:	03000613          	li	a2,48
   15e90:	04c10223          	sb	a2,68(sp)
   15e94:	04d102a3          	sb	a3,69(sp)
   15e98:	002e6e13          	or	t3,t3,2
   15e9c:	bffe7e13          	and	t3,t3,-1025
   15ea0:	f3cff06f          	j	155dc <_vfiprintf_r+0x960>
   15ea4:	000d8693          	mv	a3,s11
   15ea8:	e50ff06f          	j	154f8 <_vfiprintf_r+0x87c>
   15eac:	0000c797          	auipc	a5,0xc
   15eb0:	c9878793          	add	a5,a5,-872 # 21b44 <__clzsi2+0xd0>
   15eb4:	000d8e13          	mv	t3,s11
   15eb8:	00f12a23          	sw	a5,20(sp)
   15ebc:	fa5ff06f          	j	15e60 <_vfiprintf_r+0x11e4>
   15ec0:	04314603          	lbu	a2,67(sp)
   15ec4:	3a060a63          	beqz	a2,16278 <_vfiprintf_r+0x15fc>
   15ec8:	04310793          	add	a5,sp,67
   15ecc:	06f12623          	sw	a5,108(sp)
   15ed0:	00100793          	li	a5,1
   15ed4:	06f12823          	sw	a5,112(sp)
   15ed8:	00100f13          	li	t5,1
   15edc:	000a0c13          	mv	s8,s4
   15ee0:	fe1fe06f          	j	14ec0 <_vfiprintf_r+0x244>
   15ee4:	00800613          	li	a2,8
   15ee8:	00000593          	li	a1,0
   15eec:	05810513          	add	a0,sp,88
   15ef0:	02e12023          	sw	a4,32(sp)
   15ef4:	01112e23          	sw	a7,28(sp)
   15ef8:	01c12c23          	sw	t3,24(sp)
   15efc:	05012623          	sw	a6,76(sp)
   15f00:	01012823          	sw	a6,16(sp)
   15f04:	f71fa0ef          	jal	10e74 <memset>
   15f08:	02012703          	lw	a4,32(sp)
   15f0c:	01012803          	lw	a6,16(sp)
   15f10:	01812e03          	lw	t3,24(sp)
   15f14:	01c12883          	lw	a7,28(sp)
   15f18:	2a074463          	bltz	a4,161c0 <_vfiprintf_r+0x1544>
   15f1c:	00000d93          	li	s11,0
   15f20:	00000d13          	li	s10,0
   15f24:	01812823          	sw	s8,16(sp)
   15f28:	01012e23          	sw	a6,28(sp)
   15f2c:	000d8c13          	mv	s8,s11
   15f30:	03112023          	sw	a7,32(sp)
   15f34:	000c8d93          	mv	s11,s9
   15f38:	000a8c93          	mv	s9,s5
   15f3c:	000d0a93          	mv	s5,s10
   15f40:	00098d13          	mv	s10,s3
   15f44:	00070993          	mv	s3,a4
   15f48:	0300006f          	j	15f78 <_vfiprintf_r+0x12fc>
   15f4c:	05810693          	add	a3,sp,88
   15f50:	0ac10593          	add	a1,sp,172
   15f54:	00040513          	mv	a0,s0
   15f58:	311060ef          	jal	1ca68 <_wcrtomb_r>
   15f5c:	fff00793          	li	a5,-1
   15f60:	48f50063          	beq	a0,a5,163e0 <_vfiprintf_r+0x1764>
   15f64:	00aa87b3          	add	a5,s5,a0
   15f68:	02f9c063          	blt	s3,a5,15f88 <_vfiprintf_r+0x130c>
   15f6c:	004c0c13          	add	s8,s8,4
   15f70:	45378463          	beq	a5,s3,163b8 <_vfiprintf_r+0x173c>
   15f74:	00078a93          	mv	s5,a5
   15f78:	04c12783          	lw	a5,76(sp)
   15f7c:	018787b3          	add	a5,a5,s8
   15f80:	0007a603          	lw	a2,0(a5)
   15f84:	fc0614e3          	bnez	a2,15f4c <_vfiprintf_r+0x12d0>
   15f88:	01012c03          	lw	s8,16(sp)
   15f8c:	01812e03          	lw	t3,24(sp)
   15f90:	01c12803          	lw	a6,28(sp)
   15f94:	02012883          	lw	a7,32(sp)
   15f98:	000d0993          	mv	s3,s10
   15f9c:	000a8d13          	mv	s10,s5
   15fa0:	000c8a93          	mv	s5,s9
   15fa4:	000d8c93          	mv	s9,s11
   15fa8:	280d0e63          	beqz	s10,16244 <_vfiprintf_r+0x15c8>
   15fac:	06300793          	li	a5,99
   15fb0:	33a7d463          	bge	a5,s10,162d8 <_vfiprintf_r+0x165c>
   15fb4:	001d0593          	add	a1,s10,1
   15fb8:	00040513          	mv	a0,s0
   15fbc:	01112c23          	sw	a7,24(sp)
   15fc0:	01c12823          	sw	t3,16(sp)
   15fc4:	dfcfb0ef          	jal	115c0 <_malloc_r>
   15fc8:	01012e03          	lw	t3,16(sp)
   15fcc:	01812883          	lw	a7,24(sp)
   15fd0:	00050813          	mv	a6,a0
   15fd4:	42050063          	beqz	a0,163f4 <_vfiprintf_r+0x1778>
   15fd8:	00a12823          	sw	a0,16(sp)
   15fdc:	00800613          	li	a2,8
   15fe0:	00000593          	li	a1,0
   15fe4:	05810513          	add	a0,sp,88
   15fe8:	03112023          	sw	a7,32(sp)
   15fec:	01c12e23          	sw	t3,28(sp)
   15ff0:	01012c23          	sw	a6,24(sp)
   15ff4:	e81fa0ef          	jal	10e74 <memset>
   15ff8:	01812803          	lw	a6,24(sp)
   15ffc:	05810713          	add	a4,sp,88
   16000:	000d0693          	mv	a3,s10
   16004:	00080593          	mv	a1,a6
   16008:	04c10613          	add	a2,sp,76
   1600c:	00040513          	mv	a0,s0
   16010:	37d060ef          	jal	1cb8c <_wcsrtombs_r>
   16014:	01812803          	lw	a6,24(sp)
   16018:	01c12e03          	lw	t3,28(sp)
   1601c:	02012883          	lw	a7,32(sp)
   16020:	40ad1063          	bne	s10,a0,16420 <_vfiprintf_r+0x17a4>
   16024:	fffd4e93          	not	t4,s10
   16028:	01a807b3          	add	a5,a6,s10
   1602c:	41fede93          	sra	t4,t4,0x1f
   16030:	00078023          	sb	zero,0(a5)
   16034:	01dd7eb3          	and	t4,s10,t4
   16038:	2140006f          	j	1624c <_vfiprintf_r+0x15d0>
   1603c:	010e7613          	and	a2,t3,16
   16040:	000aa783          	lw	a5,0(s5)
   16044:	004a8a93          	add	s5,s5,4
   16048:	02061263          	bnez	a2,1606c <_vfiprintf_r+0x13f0>
   1604c:	040e7613          	and	a2,t3,64
   16050:	00060a63          	beqz	a2,16064 <_vfiprintf_r+0x13e8>
   16054:	01079793          	sll	a5,a5,0x10
   16058:	0107d793          	srl	a5,a5,0x10
   1605c:	00000593          	li	a1,0
   16060:	e1dff06f          	j	15e7c <_vfiprintf_r+0x1200>
   16064:	200e7613          	and	a2,t3,512
   16068:	22061e63          	bnez	a2,162a4 <_vfiprintf_r+0x1628>
   1606c:	00000593          	li	a1,0
   16070:	e0dff06f          	j	15e7c <_vfiprintf_r+0x1200>
   16074:	400e7793          	and	a5,t3,1024
   16078:	00000693          	li	a3,0
   1607c:	11010e93          	add	t4,sp,272
   16080:	01812823          	sw	s8,16(sp)
   16084:	02812223          	sw	s0,36(sp)
   16088:	03912c23          	sw	s9,56(sp)
   1608c:	03512e23          	sw	s5,60(sp)
   16090:	02c12c83          	lw	s9,44(sp)
   16094:	01c12c23          	sw	t3,24(sp)
   16098:	01112e23          	sw	a7,28(sp)
   1609c:	02e12023          	sw	a4,32(sp)
   160a0:	00078c13          	mv	s8,a5
   160a4:	00068413          	mv	s0,a3
   160a8:	03312423          	sw	s3,40(sp)
   160ac:	000e8a93          	mv	s5,t4
   160b0:	0280006f          	j	160d8 <_vfiprintf_r+0x145c>
   160b4:	00a00613          	li	a2,10
   160b8:	00000693          	li	a3,0
   160bc:	000d8513          	mv	a0,s11
   160c0:	000d0593          	mv	a1,s10
   160c4:	104080ef          	jal	1e1c8 <__udivdi3>
   160c8:	220d0a63          	beqz	s10,162fc <_vfiprintf_r+0x1680>
   160cc:	00050d93          	mv	s11,a0
   160d0:	00058d13          	mv	s10,a1
   160d4:	00098a93          	mv	s5,s3
   160d8:	00a00613          	li	a2,10
   160dc:	00000693          	li	a3,0
   160e0:	000d8513          	mv	a0,s11
   160e4:	000d0593          	mv	a1,s10
   160e8:	78c080ef          	jal	1e874 <__umoddi3>
   160ec:	03050513          	add	a0,a0,48
   160f0:	feaa8fa3          	sb	a0,-1(s5)
   160f4:	fffa8993          	add	s3,s5,-1
   160f8:	00140413          	add	s0,s0,1
   160fc:	fa0c0ce3          	beqz	s8,160b4 <_vfiprintf_r+0x1438>
   16100:	000cc783          	lbu	a5,0(s9)
   16104:	fa8798e3          	bne	a5,s0,160b4 <_vfiprintf_r+0x1438>
   16108:	0ff00793          	li	a5,255
   1610c:	faf404e3          	beq	s0,a5,160b4 <_vfiprintf_r+0x1438>
   16110:	0e0d1a63          	bnez	s10,16204 <_vfiprintf_r+0x1588>
   16114:	00900793          	li	a5,9
   16118:	0fb7e663          	bltu	a5,s11,16204 <_vfiprintf_r+0x1588>
   1611c:	00098813          	mv	a6,s3
   16120:	03912623          	sw	s9,44(sp)
   16124:	01012c03          	lw	s8,16(sp)
   16128:	01812e03          	lw	t3,24(sp)
   1612c:	01c12883          	lw	a7,28(sp)
   16130:	02012703          	lw	a4,32(sp)
   16134:	02412403          	lw	s0,36(sp)
   16138:	02812983          	lw	s3,40(sp)
   1613c:	03812c83          	lw	s9,56(sp)
   16140:	03c12a83          	lw	s5,60(sp)
   16144:	9a1ff06f          	j	15ae4 <_vfiprintf_r+0xe68>
   16148:	00068e13          	mv	t3,a3
   1614c:	00000693          	li	a3,0
   16150:	c0068263          	beqz	a3,15554 <_vfiprintf_r+0x8d8>
   16154:	95dff06f          	j	15ab0 <_vfiprintf_r+0xe34>
   16158:	00040513          	mv	a0,s0
   1615c:	e54fa0ef          	jal	107b0 <__sinit>
   16160:	b65fe06f          	j	14cc4 <_vfiprintf_r+0x48>
   16164:	001cc683          	lbu	a3,1(s9)
   16168:	200ded93          	or	s11,s11,512
   1616c:	001c8c93          	add	s9,s9,1
   16170:	c89fe06f          	j	14df8 <_vfiprintf_r+0x17c>
   16174:	001cc683          	lbu	a3,1(s9)
   16178:	020ded93          	or	s11,s11,32
   1617c:	001c8c93          	add	s9,s9,1
   16180:	c79fe06f          	j	14df8 <_vfiprintf_r+0x17c>
   16184:	000aa783          	lw	a5,0(s5)
   16188:	00c12703          	lw	a4,12(sp)
   1618c:	004a8a93          	add	s5,s5,4
   16190:	00e7a023          	sw	a4,0(a5)
   16194:	bfdfe06f          	j	14d90 <_vfiprintf_r+0x114>
   16198:	00600793          	li	a5,6
   1619c:	00070d13          	mv	s10,a4
   161a0:	0ce7e863          	bltu	a5,a4,16270 <_vfiprintf_r+0x15f4>
   161a4:	000d0e93          	mv	t4,s10
   161a8:	0000c817          	auipc	a6,0xc
   161ac:	9c480813          	add	a6,a6,-1596 # 21b6c <__clzsi2+0xf8>
   161b0:	cb9fe06f          	j	14e68 <_vfiprintf_r+0x1ec>
   161b4:	00000793          	li	a5,0
   161b8:	00000593          	li	a1,0
   161bc:	8f5ff06f          	j	15ab0 <_vfiprintf_r+0xe34>
   161c0:	05810713          	add	a4,sp,88
   161c4:	00000693          	li	a3,0
   161c8:	04c10613          	add	a2,sp,76
   161cc:	00000593          	li	a1,0
   161d0:	00040513          	mv	a0,s0
   161d4:	01112e23          	sw	a7,28(sp)
   161d8:	01012c23          	sw	a6,24(sp)
   161dc:	01c12823          	sw	t3,16(sp)
   161e0:	1ad060ef          	jal	1cb8c <_wcsrtombs_r>
   161e4:	fff00793          	li	a5,-1
   161e8:	01012e03          	lw	t3,16(sp)
   161ec:	01812803          	lw	a6,24(sp)
   161f0:	01c12883          	lw	a7,28(sp)
   161f4:	00050d13          	mv	s10,a0
   161f8:	1ef50e63          	beq	a0,a5,163f4 <_vfiprintf_r+0x1778>
   161fc:	05012623          	sw	a6,76(sp)
   16200:	da9ff06f          	j	15fa8 <_vfiprintf_r+0x132c>
   16204:	03012783          	lw	a5,48(sp)
   16208:	03412583          	lw	a1,52(sp)
   1620c:	00000413          	li	s0,0
   16210:	40f989b3          	sub	s3,s3,a5
   16214:	00078613          	mv	a2,a5
   16218:	00098513          	mv	a0,s3
   1621c:	2cc010ef          	jal	174e8 <strncpy>
   16220:	001cc783          	lbu	a5,1(s9)
   16224:	00a00613          	li	a2,10
   16228:	00000693          	li	a3,0
   1622c:	00f037b3          	snez	a5,a5
   16230:	000d8513          	mv	a0,s11
   16234:	000d0593          	mv	a1,s10
   16238:	00fc8cb3          	add	s9,s9,a5
   1623c:	78d070ef          	jal	1e1c8 <__udivdi3>
   16240:	e8dff06f          	j	160cc <_vfiprintf_r+0x1450>
   16244:	00000e93          	li	t4,0
   16248:	00012823          	sw	zero,16(sp)
   1624c:	04314783          	lbu	a5,67(sp)
   16250:	00000713          	li	a4,0
   16254:	00000f93          	li	t6,0
   16258:	a0079063          	bnez	a5,15458 <_vfiprintf_r+0x7dc>
   1625c:	c19fe06f          	j	14e74 <_vfiprintf_r+0x1f8>
   16260:	00100f13          	li	t5,1
   16264:	00000613          	li	a2,0
   16268:	000a0c13          	mv	s8,s4
   1626c:	ce9fe06f          	j	14f54 <_vfiprintf_r+0x2d8>
   16270:	00600d13          	li	s10,6
   16274:	f31ff06f          	j	161a4 <_vfiprintf_r+0x1528>
   16278:	00100f13          	li	t5,1
   1627c:	000a0c13          	mv	s8,s4
   16280:	c4dfe06f          	j	14ecc <_vfiprintf_r+0x250>
   16284:	000aa783          	lw	a5,0(s5)
   16288:	00c12703          	lw	a4,12(sp)
   1628c:	004a8a93          	add	s5,s5,4
   16290:	00e79023          	sh	a4,0(a5)
   16294:	afdfe06f          	j	14d90 <_vfiprintf_r+0x114>
   16298:	0ff7fd93          	zext.b	s11,a5
   1629c:	00000d13          	li	s10,0
   162a0:	a04ff06f          	j	154a4 <_vfiprintf_r+0x828>
   162a4:	0ff7f793          	zext.b	a5,a5
   162a8:	00000593          	li	a1,0
   162ac:	bd1ff06f          	j	15e7c <_vfiprintf_r+0x1200>
   162b0:	0ff7f793          	zext.b	a5,a5
   162b4:	00000593          	li	a1,0
   162b8:	a5cff06f          	j	15514 <_vfiprintf_r+0x898>
   162bc:	01879d93          	sll	s11,a5,0x18
   162c0:	418ddd93          	sra	s11,s11,0x18
   162c4:	41fddd13          	sra	s10,s11,0x1f
   162c8:	000d0693          	mv	a3,s10
   162cc:	95cff06f          	j	15428 <_vfiprintf_r+0x7ac>
   162d0:	03000793          	li	a5,48
   162d4:	c8cff06f          	j	15760 <_vfiprintf_r+0xae4>
   162d8:	00012823          	sw	zero,16(sp)
   162dc:	0ac10813          	add	a6,sp,172
   162e0:	cfdff06f          	j	15fdc <_vfiprintf_r+0x1360>
   162e4:	0589a503          	lw	a0,88(s3)
   162e8:	b89fa0ef          	jal	10e70 <__retarget_lock_release_recursive>
   162ec:	d51fe06f          	j	1503c <_vfiprintf_r+0x3c0>
   162f0:	00070e93          	mv	t4,a4
   162f4:	00070d13          	mv	s10,a4
   162f8:	f55ff06f          	j	1624c <_vfiprintf_r+0x15d0>
   162fc:	00900793          	li	a5,9
   16300:	ddb7e6e3          	bltu	a5,s11,160cc <_vfiprintf_r+0x1450>
   16304:	e19ff06f          	j	1611c <_vfiprintf_r+0x14a0>
   16308:	00058513          	mv	a0,a1
   1630c:	0000c317          	auipc	t1,0xc
   16310:	ea430313          	add	t1,t1,-348 # 221b0 <blanks.1>
   16314:	8cdff06f          	j	15be0 <_vfiprintf_r+0xf64>
   16318:	00080513          	mv	a0,a6
   1631c:	03112023          	sw	a7,32(sp)
   16320:	01012c23          	sw	a6,24(sp)
   16324:	01b12e23          	sw	s11,28(sp)
   16328:	2ac020ef          	jal	185d4 <strlen>
   1632c:	fff54e93          	not	t4,a0
   16330:	41fede93          	sra	t4,t4,0x1f
   16334:	01812803          	lw	a6,24(sp)
   16338:	01c12e03          	lw	t3,28(sp)
   1633c:	02012883          	lw	a7,32(sp)
   16340:	00050d13          	mv	s10,a0
   16344:	01d57eb3          	and	t4,a0,t4
   16348:	00012823          	sw	zero,16(sp)
   1634c:	f01ff06f          	j	1624c <_vfiprintf_r+0x15d0>
   16350:	06010613          	add	a2,sp,96
   16354:	00098593          	mv	a1,s3
   16358:	00040513          	mv	a0,s0
   1635c:	fe4fe0ef          	jal	14b40 <__sprint_r.part.0>
   16360:	00051463          	bnez	a0,16368 <_vfiprintf_r+0x16ec>
   16364:	dc5fe06f          	j	15128 <_vfiprintf_r+0x4ac>
   16368:	df5fe06f          	j	1515c <_vfiprintf_r+0x4e0>
   1636c:	00168613          	add	a2,a3,1
   16370:	0000c317          	auipc	t1,0xc
   16374:	e4030313          	add	t1,t1,-448 # 221b0 <blanks.1>
   16378:	f19fe06f          	j	15290 <_vfiprintf_r+0x614>
   1637c:	000f0513          	mv	a0,t5
   16380:	0000cf97          	auipc	t6,0xc
   16384:	e20f8f93          	add	t6,t6,-480 # 221a0 <zeroes.0>
   16388:	d10ff06f          	j	15898 <_vfiprintf_r+0xc1c>
   1638c:	0649a783          	lw	a5,100(s3)
   16390:	0017f793          	and	a5,a5,1
   16394:	00079c63          	bnez	a5,163ac <_vfiprintf_r+0x1730>
   16398:	00c9d783          	lhu	a5,12(s3)
   1639c:	2007f793          	and	a5,a5,512
   163a0:	00079663          	bnez	a5,163ac <_vfiprintf_r+0x1730>
   163a4:	0589a503          	lw	a0,88(s3)
   163a8:	ac9fa0ef          	jal	10e70 <__retarget_lock_release_recursive>
   163ac:	fff00793          	li	a5,-1
   163b0:	00f12623          	sw	a5,12(sp)
   163b4:	de5fe06f          	j	15198 <_vfiprintf_r+0x51c>
   163b8:	00098713          	mv	a4,s3
   163bc:	000c8a93          	mv	s5,s9
   163c0:	000d0993          	mv	s3,s10
   163c4:	01012c03          	lw	s8,16(sp)
   163c8:	01812e03          	lw	t3,24(sp)
   163cc:	01c12803          	lw	a6,28(sp)
   163d0:	02012883          	lw	a7,32(sp)
   163d4:	000d8c93          	mv	s9,s11
   163d8:	00070d13          	mv	s10,a4
   163dc:	bcdff06f          	j	15fa8 <_vfiprintf_r+0x132c>
   163e0:	00cd1783          	lh	a5,12(s10)
   163e4:	000d0993          	mv	s3,s10
   163e8:	0407e793          	or	a5,a5,64
   163ec:	00fd1623          	sh	a5,12(s10)
   163f0:	d71fe06f          	j	15160 <_vfiprintf_r+0x4e4>
   163f4:	00c99783          	lh	a5,12(s3)
   163f8:	0407e793          	or	a5,a5,64
   163fc:	00f99623          	sh	a5,12(s3)
   16400:	d61fe06f          	j	15160 <_vfiprintf_r+0x4e4>
   16404:	000aa703          	lw	a4,0(s5)
   16408:	004a8a93          	add	s5,s5,4
   1640c:	00075463          	bgez	a4,16414 <_vfiprintf_r+0x1798>
   16410:	fff00713          	li	a4,-1
   16414:	001cc683          	lbu	a3,1(s9)
   16418:	00058c93          	mv	s9,a1
   1641c:	9ddfe06f          	j	14df8 <_vfiprintf_r+0x17c>
   16420:	00c9d783          	lhu	a5,12(s3)
   16424:	0407e793          	or	a5,a5,64
   16428:	00f99623          	sh	a5,12(s3)
   1642c:	d1dfe06f          	j	15148 <_vfiprintf_r+0x4cc>

00016430 <vfiprintf>:
   16430:	00060693          	mv	a3,a2
   16434:	00058613          	mv	a2,a1
   16438:	00050593          	mv	a1,a0
   1643c:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   16440:	83dfe06f          	j	14c7c <_vfiprintf_r>

00016444 <__sbprintf>:
   16444:	b7010113          	add	sp,sp,-1168
   16448:	00c59783          	lh	a5,12(a1)
   1644c:	00e5d703          	lhu	a4,14(a1)
   16450:	48812423          	sw	s0,1160(sp)
   16454:	00058413          	mv	s0,a1
   16458:	000105b7          	lui	a1,0x10
   1645c:	ffd58593          	add	a1,a1,-3 # fffd <exit-0x97>
   16460:	06442303          	lw	t1,100(s0)
   16464:	01c42883          	lw	a7,28(s0)
   16468:	02442803          	lw	a6,36(s0)
   1646c:	01071713          	sll	a4,a4,0x10
   16470:	00b7f7b3          	and	a5,a5,a1
   16474:	00e7e7b3          	or	a5,a5,a4
   16478:	40000593          	li	a1,1024
   1647c:	49212023          	sw	s2,1152(sp)
   16480:	00f12a23          	sw	a5,20(sp)
   16484:	00050913          	mv	s2,a0
   16488:	07010793          	add	a5,sp,112
   1648c:	06010513          	add	a0,sp,96
   16490:	48112623          	sw	ra,1164(sp)
   16494:	48912223          	sw	s1,1156(sp)
   16498:	47312e23          	sw	s3,1148(sp)
   1649c:	00060493          	mv	s1,a2
   164a0:	00068993          	mv	s3,a3
   164a4:	06612623          	sw	t1,108(sp)
   164a8:	03112223          	sw	a7,36(sp)
   164ac:	03012623          	sw	a6,44(sp)
   164b0:	00f12423          	sw	a5,8(sp)
   164b4:	00f12c23          	sw	a5,24(sp)
   164b8:	00b12823          	sw	a1,16(sp)
   164bc:	00b12e23          	sw	a1,28(sp)
   164c0:	02012023          	sw	zero,32(sp)
   164c4:	985fa0ef          	jal	10e48 <__retarget_lock_init_recursive>
   164c8:	00048613          	mv	a2,s1
   164cc:	00098693          	mv	a3,s3
   164d0:	00810593          	add	a1,sp,8
   164d4:	00090513          	mv	a0,s2
   164d8:	fa4fe0ef          	jal	14c7c <_vfiprintf_r>
   164dc:	00050493          	mv	s1,a0
   164e0:	04055263          	bgez	a0,16524 <__sbprintf+0xe0>
   164e4:	01415783          	lhu	a5,20(sp)
   164e8:	0407f793          	and	a5,a5,64
   164ec:	00078863          	beqz	a5,164fc <__sbprintf+0xb8>
   164f0:	00c45783          	lhu	a5,12(s0)
   164f4:	0407e793          	or	a5,a5,64
   164f8:	00f41623          	sh	a5,12(s0)
   164fc:	06012503          	lw	a0,96(sp)
   16500:	951fa0ef          	jal	10e50 <__retarget_lock_close_recursive>
   16504:	48c12083          	lw	ra,1164(sp)
   16508:	48812403          	lw	s0,1160(sp)
   1650c:	48012903          	lw	s2,1152(sp)
   16510:	47c12983          	lw	s3,1148(sp)
   16514:	00048513          	mv	a0,s1
   16518:	48412483          	lw	s1,1156(sp)
   1651c:	49010113          	add	sp,sp,1168
   16520:	00008067          	ret
   16524:	00810593          	add	a1,sp,8
   16528:	00090513          	mv	a0,s2
   1652c:	3d8000ef          	jal	16904 <_fflush_r>
   16530:	fa050ae3          	beqz	a0,164e4 <__sbprintf+0xa0>
   16534:	fff00493          	li	s1,-1
   16538:	fadff06f          	j	164e4 <__sbprintf+0xa0>

0001653c <_fclose_r>:
   1653c:	ff010113          	add	sp,sp,-16
   16540:	00112623          	sw	ra,12(sp)
   16544:	01212023          	sw	s2,0(sp)
   16548:	0e058263          	beqz	a1,1662c <_fclose_r+0xf0>
   1654c:	00812423          	sw	s0,8(sp)
   16550:	00912223          	sw	s1,4(sp)
   16554:	00058413          	mv	s0,a1
   16558:	00050493          	mv	s1,a0
   1655c:	00050663          	beqz	a0,16568 <_fclose_r+0x2c>
   16560:	03452783          	lw	a5,52(a0)
   16564:	10078063          	beqz	a5,16664 <_fclose_r+0x128>
   16568:	06442783          	lw	a5,100(s0)
   1656c:	00c41703          	lh	a4,12(s0)
   16570:	0017f793          	and	a5,a5,1
   16574:	0a079663          	bnez	a5,16620 <_fclose_r+0xe4>
   16578:	20077713          	and	a4,a4,512
   1657c:	0e070863          	beqz	a4,1666c <_fclose_r+0x130>
   16580:	00040593          	mv	a1,s0
   16584:	00048513          	mv	a0,s1
   16588:	130000ef          	jal	166b8 <__sflush_r>
   1658c:	02c42783          	lw	a5,44(s0)
   16590:	00050913          	mv	s2,a0
   16594:	00078a63          	beqz	a5,165a8 <_fclose_r+0x6c>
   16598:	01c42583          	lw	a1,28(s0)
   1659c:	00048513          	mv	a0,s1
   165a0:	000780e7          	jalr	a5
   165a4:	0a054063          	bltz	a0,16644 <_fclose_r+0x108>
   165a8:	00c45783          	lhu	a5,12(s0)
   165ac:	0807f793          	and	a5,a5,128
   165b0:	0a079263          	bnez	a5,16654 <_fclose_r+0x118>
   165b4:	03042583          	lw	a1,48(s0)
   165b8:	00058c63          	beqz	a1,165d0 <_fclose_r+0x94>
   165bc:	04040793          	add	a5,s0,64
   165c0:	00f58663          	beq	a1,a5,165cc <_fclose_r+0x90>
   165c4:	00048513          	mv	a0,s1
   165c8:	cf5fa0ef          	jal	112bc <_free_r>
   165cc:	02042823          	sw	zero,48(s0)
   165d0:	04442583          	lw	a1,68(s0)
   165d4:	00058863          	beqz	a1,165e4 <_fclose_r+0xa8>
   165d8:	00048513          	mv	a0,s1
   165dc:	ce1fa0ef          	jal	112bc <_free_r>
   165e0:	04042223          	sw	zero,68(s0)
   165e4:	a2cfa0ef          	jal	10810 <__sfp_lock_acquire>
   165e8:	06442783          	lw	a5,100(s0)
   165ec:	00041623          	sh	zero,12(s0)
   165f0:	0017f793          	and	a5,a5,1
   165f4:	0a078663          	beqz	a5,166a0 <_fclose_r+0x164>
   165f8:	05842503          	lw	a0,88(s0)
   165fc:	855fa0ef          	jal	10e50 <__retarget_lock_close_recursive>
   16600:	a18fa0ef          	jal	10818 <__sfp_lock_release>
   16604:	00c12083          	lw	ra,12(sp)
   16608:	00812403          	lw	s0,8(sp)
   1660c:	00412483          	lw	s1,4(sp)
   16610:	00090513          	mv	a0,s2
   16614:	00012903          	lw	s2,0(sp)
   16618:	01010113          	add	sp,sp,16
   1661c:	00008067          	ret
   16620:	f60710e3          	bnez	a4,16580 <_fclose_r+0x44>
   16624:	00812403          	lw	s0,8(sp)
   16628:	00412483          	lw	s1,4(sp)
   1662c:	00000913          	li	s2,0
   16630:	00c12083          	lw	ra,12(sp)
   16634:	00090513          	mv	a0,s2
   16638:	00012903          	lw	s2,0(sp)
   1663c:	01010113          	add	sp,sp,16
   16640:	00008067          	ret
   16644:	00c45783          	lhu	a5,12(s0)
   16648:	fff00913          	li	s2,-1
   1664c:	0807f793          	and	a5,a5,128
   16650:	f60782e3          	beqz	a5,165b4 <_fclose_r+0x78>
   16654:	01042583          	lw	a1,16(s0)
   16658:	00048513          	mv	a0,s1
   1665c:	c61fa0ef          	jal	112bc <_free_r>
   16660:	f55ff06f          	j	165b4 <_fclose_r+0x78>
   16664:	94cfa0ef          	jal	107b0 <__sinit>
   16668:	f01ff06f          	j	16568 <_fclose_r+0x2c>
   1666c:	05842503          	lw	a0,88(s0)
   16670:	fe8fa0ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   16674:	00c41783          	lh	a5,12(s0)
   16678:	f00794e3          	bnez	a5,16580 <_fclose_r+0x44>
   1667c:	06442783          	lw	a5,100(s0)
   16680:	0017f793          	and	a5,a5,1
   16684:	fa0790e3          	bnez	a5,16624 <_fclose_r+0xe8>
   16688:	05842503          	lw	a0,88(s0)
   1668c:	00000913          	li	s2,0
   16690:	fe0fa0ef          	jal	10e70 <__retarget_lock_release_recursive>
   16694:	00812403          	lw	s0,8(sp)
   16698:	00412483          	lw	s1,4(sp)
   1669c:	f95ff06f          	j	16630 <_fclose_r+0xf4>
   166a0:	05842503          	lw	a0,88(s0)
   166a4:	fccfa0ef          	jal	10e70 <__retarget_lock_release_recursive>
   166a8:	f51ff06f          	j	165f8 <_fclose_r+0xbc>

000166ac <fclose>:
   166ac:	00050593          	mv	a1,a0
   166b0:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   166b4:	e89ff06f          	j	1653c <_fclose_r>

000166b8 <__sflush_r>:
   166b8:	00c59703          	lh	a4,12(a1)
   166bc:	fe010113          	add	sp,sp,-32
   166c0:	00812c23          	sw	s0,24(sp)
   166c4:	01312623          	sw	s3,12(sp)
   166c8:	00112e23          	sw	ra,28(sp)
   166cc:	00877793          	and	a5,a4,8
   166d0:	00058413          	mv	s0,a1
   166d4:	00050993          	mv	s3,a0
   166d8:	12079063          	bnez	a5,167f8 <__sflush_r+0x140>
   166dc:	000017b7          	lui	a5,0x1
   166e0:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf894>
   166e4:	0045a683          	lw	a3,4(a1)
   166e8:	00f767b3          	or	a5,a4,a5
   166ec:	00f59623          	sh	a5,12(a1)
   166f0:	18d05263          	blez	a3,16874 <__sflush_r+0x1bc>
   166f4:	02842803          	lw	a6,40(s0)
   166f8:	0e080463          	beqz	a6,167e0 <__sflush_r+0x128>
   166fc:	00912a23          	sw	s1,20(sp)
   16700:	01371693          	sll	a3,a4,0x13
   16704:	0009a483          	lw	s1,0(s3)
   16708:	0009a023          	sw	zero,0(s3)
   1670c:	01c42583          	lw	a1,28(s0)
   16710:	1606ce63          	bltz	a3,1688c <__sflush_r+0x1d4>
   16714:	00000613          	li	a2,0
   16718:	00100693          	li	a3,1
   1671c:	00098513          	mv	a0,s3
   16720:	000800e7          	jalr	a6
   16724:	fff00793          	li	a5,-1
   16728:	00050613          	mv	a2,a0
   1672c:	1af50463          	beq	a0,a5,168d4 <__sflush_r+0x21c>
   16730:	00c41783          	lh	a5,12(s0)
   16734:	02842803          	lw	a6,40(s0)
   16738:	01c42583          	lw	a1,28(s0)
   1673c:	0047f793          	and	a5,a5,4
   16740:	00078e63          	beqz	a5,1675c <__sflush_r+0xa4>
   16744:	00442703          	lw	a4,4(s0)
   16748:	03042783          	lw	a5,48(s0)
   1674c:	40e60633          	sub	a2,a2,a4
   16750:	00078663          	beqz	a5,1675c <__sflush_r+0xa4>
   16754:	03c42783          	lw	a5,60(s0)
   16758:	40f60633          	sub	a2,a2,a5
   1675c:	00000693          	li	a3,0
   16760:	00098513          	mv	a0,s3
   16764:	000800e7          	jalr	a6
   16768:	fff00793          	li	a5,-1
   1676c:	12f51463          	bne	a0,a5,16894 <__sflush_r+0x1dc>
   16770:	0009a683          	lw	a3,0(s3)
   16774:	01d00793          	li	a5,29
   16778:	00c41703          	lh	a4,12(s0)
   1677c:	16d7ea63          	bltu	a5,a3,168f0 <__sflush_r+0x238>
   16780:	204007b7          	lui	a5,0x20400
   16784:	00178793          	add	a5,a5,1 # 20400001 <__BSS_END__+0x203dc0f1>
   16788:	00d7d7b3          	srl	a5,a5,a3
   1678c:	0017f793          	and	a5,a5,1
   16790:	16078063          	beqz	a5,168f0 <__sflush_r+0x238>
   16794:	01042603          	lw	a2,16(s0)
   16798:	fffff7b7          	lui	a5,0xfffff
   1679c:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffdb8ef>
   167a0:	00f777b3          	and	a5,a4,a5
   167a4:	00f41623          	sh	a5,12(s0)
   167a8:	00042223          	sw	zero,4(s0)
   167ac:	00c42023          	sw	a2,0(s0)
   167b0:	01371793          	sll	a5,a4,0x13
   167b4:	0007d463          	bgez	a5,167bc <__sflush_r+0x104>
   167b8:	10068263          	beqz	a3,168bc <__sflush_r+0x204>
   167bc:	03042583          	lw	a1,48(s0)
   167c0:	0099a023          	sw	s1,0(s3)
   167c4:	10058463          	beqz	a1,168cc <__sflush_r+0x214>
   167c8:	04040793          	add	a5,s0,64
   167cc:	00f58663          	beq	a1,a5,167d8 <__sflush_r+0x120>
   167d0:	00098513          	mv	a0,s3
   167d4:	ae9fa0ef          	jal	112bc <_free_r>
   167d8:	01412483          	lw	s1,20(sp)
   167dc:	02042823          	sw	zero,48(s0)
   167e0:	00000513          	li	a0,0
   167e4:	01c12083          	lw	ra,28(sp)
   167e8:	01812403          	lw	s0,24(sp)
   167ec:	00c12983          	lw	s3,12(sp)
   167f0:	02010113          	add	sp,sp,32
   167f4:	00008067          	ret
   167f8:	01212823          	sw	s2,16(sp)
   167fc:	0105a903          	lw	s2,16(a1)
   16800:	08090263          	beqz	s2,16884 <__sflush_r+0x1cc>
   16804:	00912a23          	sw	s1,20(sp)
   16808:	0005a483          	lw	s1,0(a1)
   1680c:	00377713          	and	a4,a4,3
   16810:	0125a023          	sw	s2,0(a1)
   16814:	412484b3          	sub	s1,s1,s2
   16818:	00000793          	li	a5,0
   1681c:	00071463          	bnez	a4,16824 <__sflush_r+0x16c>
   16820:	0145a783          	lw	a5,20(a1)
   16824:	00f42423          	sw	a5,8(s0)
   16828:	00904863          	bgtz	s1,16838 <__sflush_r+0x180>
   1682c:	0540006f          	j	16880 <__sflush_r+0x1c8>
   16830:	00a90933          	add	s2,s2,a0
   16834:	04905663          	blez	s1,16880 <__sflush_r+0x1c8>
   16838:	02442783          	lw	a5,36(s0)
   1683c:	01c42583          	lw	a1,28(s0)
   16840:	00048693          	mv	a3,s1
   16844:	00090613          	mv	a2,s2
   16848:	00098513          	mv	a0,s3
   1684c:	000780e7          	jalr	a5
   16850:	40a484b3          	sub	s1,s1,a0
   16854:	fca04ee3          	bgtz	a0,16830 <__sflush_r+0x178>
   16858:	00c41703          	lh	a4,12(s0)
   1685c:	01012903          	lw	s2,16(sp)
   16860:	04076713          	or	a4,a4,64
   16864:	01412483          	lw	s1,20(sp)
   16868:	00e41623          	sh	a4,12(s0)
   1686c:	fff00513          	li	a0,-1
   16870:	f75ff06f          	j	167e4 <__sflush_r+0x12c>
   16874:	03c5a683          	lw	a3,60(a1)
   16878:	e6d04ee3          	bgtz	a3,166f4 <__sflush_r+0x3c>
   1687c:	f65ff06f          	j	167e0 <__sflush_r+0x128>
   16880:	01412483          	lw	s1,20(sp)
   16884:	01012903          	lw	s2,16(sp)
   16888:	f59ff06f          	j	167e0 <__sflush_r+0x128>
   1688c:	05042603          	lw	a2,80(s0)
   16890:	eadff06f          	j	1673c <__sflush_r+0x84>
   16894:	00c41703          	lh	a4,12(s0)
   16898:	01042683          	lw	a3,16(s0)
   1689c:	fffff7b7          	lui	a5,0xfffff
   168a0:	7ff78793          	add	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffdb8ef>
   168a4:	00f777b3          	and	a5,a4,a5
   168a8:	00f41623          	sh	a5,12(s0)
   168ac:	00042223          	sw	zero,4(s0)
   168b0:	00d42023          	sw	a3,0(s0)
   168b4:	01371793          	sll	a5,a4,0x13
   168b8:	f007d2e3          	bgez	a5,167bc <__sflush_r+0x104>
   168bc:	03042583          	lw	a1,48(s0)
   168c0:	04a42823          	sw	a0,80(s0)
   168c4:	0099a023          	sw	s1,0(s3)
   168c8:	f00590e3          	bnez	a1,167c8 <__sflush_r+0x110>
   168cc:	01412483          	lw	s1,20(sp)
   168d0:	f11ff06f          	j	167e0 <__sflush_r+0x128>
   168d4:	0009a783          	lw	a5,0(s3)
   168d8:	e4078ce3          	beqz	a5,16730 <__sflush_r+0x78>
   168dc:	01d00713          	li	a4,29
   168e0:	00e78c63          	beq	a5,a4,168f8 <__sflush_r+0x240>
   168e4:	01600713          	li	a4,22
   168e8:	00e78863          	beq	a5,a4,168f8 <__sflush_r+0x240>
   168ec:	00c41703          	lh	a4,12(s0)
   168f0:	04076713          	or	a4,a4,64
   168f4:	f71ff06f          	j	16864 <__sflush_r+0x1ac>
   168f8:	0099a023          	sw	s1,0(s3)
   168fc:	01412483          	lw	s1,20(sp)
   16900:	ee1ff06f          	j	167e0 <__sflush_r+0x128>

00016904 <_fflush_r>:
   16904:	ff010113          	add	sp,sp,-16
   16908:	00812423          	sw	s0,8(sp)
   1690c:	00912223          	sw	s1,4(sp)
   16910:	00112623          	sw	ra,12(sp)
   16914:	01212023          	sw	s2,0(sp)
   16918:	00050493          	mv	s1,a0
   1691c:	00058413          	mv	s0,a1
   16920:	00050663          	beqz	a0,1692c <_fflush_r+0x28>
   16924:	03452783          	lw	a5,52(a0)
   16928:	0a078a63          	beqz	a5,169dc <_fflush_r+0xd8>
   1692c:	00c41783          	lh	a5,12(s0)
   16930:	00000913          	li	s2,0
   16934:	04078063          	beqz	a5,16974 <_fflush_r+0x70>
   16938:	06442703          	lw	a4,100(s0)
   1693c:	00177713          	and	a4,a4,1
   16940:	00071663          	bnez	a4,1694c <_fflush_r+0x48>
   16944:	2007f793          	and	a5,a5,512
   16948:	04078463          	beqz	a5,16990 <_fflush_r+0x8c>
   1694c:	00040593          	mv	a1,s0
   16950:	00048513          	mv	a0,s1
   16954:	d65ff0ef          	jal	166b8 <__sflush_r>
   16958:	06442783          	lw	a5,100(s0)
   1695c:	00050913          	mv	s2,a0
   16960:	0017f793          	and	a5,a5,1
   16964:	00079863          	bnez	a5,16974 <_fflush_r+0x70>
   16968:	00c45783          	lhu	a5,12(s0)
   1696c:	2007f793          	and	a5,a5,512
   16970:	04078463          	beqz	a5,169b8 <_fflush_r+0xb4>
   16974:	00c12083          	lw	ra,12(sp)
   16978:	00812403          	lw	s0,8(sp)
   1697c:	00412483          	lw	s1,4(sp)
   16980:	00090513          	mv	a0,s2
   16984:	00012903          	lw	s2,0(sp)
   16988:	01010113          	add	sp,sp,16
   1698c:	00008067          	ret
   16990:	05842503          	lw	a0,88(s0)
   16994:	cc4fa0ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   16998:	00040593          	mv	a1,s0
   1699c:	00048513          	mv	a0,s1
   169a0:	d19ff0ef          	jal	166b8 <__sflush_r>
   169a4:	06442783          	lw	a5,100(s0)
   169a8:	00050913          	mv	s2,a0
   169ac:	0017f793          	and	a5,a5,1
   169b0:	fc0792e3          	bnez	a5,16974 <_fflush_r+0x70>
   169b4:	fb5ff06f          	j	16968 <_fflush_r+0x64>
   169b8:	05842503          	lw	a0,88(s0)
   169bc:	cb4fa0ef          	jal	10e70 <__retarget_lock_release_recursive>
   169c0:	00c12083          	lw	ra,12(sp)
   169c4:	00812403          	lw	s0,8(sp)
   169c8:	00412483          	lw	s1,4(sp)
   169cc:	00090513          	mv	a0,s2
   169d0:	00012903          	lw	s2,0(sp)
   169d4:	01010113          	add	sp,sp,16
   169d8:	00008067          	ret
   169dc:	dd5f90ef          	jal	107b0 <__sinit>
   169e0:	f4dff06f          	j	1692c <_fflush_r+0x28>

000169e4 <fflush>:
   169e4:	0a050a63          	beqz	a0,16a98 <fflush+0xb4>
   169e8:	ff010113          	add	sp,sp,-16
   169ec:	00812423          	sw	s0,8(sp)
   169f0:	01212023          	sw	s2,0(sp)
   169f4:	00112623          	sw	ra,12(sp)
   169f8:	00912223          	sw	s1,4(sp)
   169fc:	f341a903          	lw	s2,-204(gp) # 23904 <_impure_ptr>
   16a00:	00050413          	mv	s0,a0
   16a04:	00090663          	beqz	s2,16a10 <fflush+0x2c>
   16a08:	03492783          	lw	a5,52(s2)
   16a0c:	06078463          	beqz	a5,16a74 <fflush+0x90>
   16a10:	00c41783          	lh	a5,12(s0)
   16a14:	00000493          	li	s1,0
   16a18:	04078063          	beqz	a5,16a58 <fflush+0x74>
   16a1c:	06442703          	lw	a4,100(s0)
   16a20:	00177713          	and	a4,a4,1
   16a24:	00071663          	bnez	a4,16a30 <fflush+0x4c>
   16a28:	2007f793          	and	a5,a5,512
   16a2c:	04078a63          	beqz	a5,16a80 <fflush+0x9c>
   16a30:	00040593          	mv	a1,s0
   16a34:	00090513          	mv	a0,s2
   16a38:	c81ff0ef          	jal	166b8 <__sflush_r>
   16a3c:	06442783          	lw	a5,100(s0)
   16a40:	00050493          	mv	s1,a0
   16a44:	0017f793          	and	a5,a5,1
   16a48:	00079863          	bnez	a5,16a58 <fflush+0x74>
   16a4c:	00c45783          	lhu	a5,12(s0)
   16a50:	2007f793          	and	a5,a5,512
   16a54:	02078c63          	beqz	a5,16a8c <fflush+0xa8>
   16a58:	00c12083          	lw	ra,12(sp)
   16a5c:	00812403          	lw	s0,8(sp)
   16a60:	00012903          	lw	s2,0(sp)
   16a64:	00048513          	mv	a0,s1
   16a68:	00412483          	lw	s1,4(sp)
   16a6c:	01010113          	add	sp,sp,16
   16a70:	00008067          	ret
   16a74:	00090513          	mv	a0,s2
   16a78:	d39f90ef          	jal	107b0 <__sinit>
   16a7c:	f95ff06f          	j	16a10 <fflush+0x2c>
   16a80:	05842503          	lw	a0,88(s0)
   16a84:	bd4fa0ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   16a88:	fa9ff06f          	j	16a30 <fflush+0x4c>
   16a8c:	05842503          	lw	a0,88(s0)
   16a90:	be0fa0ef          	jal	10e70 <__retarget_lock_release_recursive>
   16a94:	fc5ff06f          	j	16a58 <fflush+0x74>
   16a98:	0000c617          	auipc	a2,0xc
   16a9c:	73860613          	add	a2,a2,1848 # 231d0 <__sglue>
   16aa0:	00000597          	auipc	a1,0x0
   16aa4:	e6458593          	add	a1,a1,-412 # 16904 <_fflush_r>
   16aa8:	0000c517          	auipc	a0,0xc
   16aac:	73850513          	add	a0,a0,1848 # 231e0 <_impure_data>
   16ab0:	dd1f906f          	j	10880 <_fwalk_sglue>

00016ab4 <__sfvwrite_r>:
   16ab4:	00862783          	lw	a5,8(a2)
   16ab8:	2c078463          	beqz	a5,16d80 <__sfvwrite_r+0x2cc>
   16abc:	00c59683          	lh	a3,12(a1)
   16ac0:	fd010113          	add	sp,sp,-48
   16ac4:	02812423          	sw	s0,40(sp)
   16ac8:	01412c23          	sw	s4,24(sp)
   16acc:	01612823          	sw	s6,16(sp)
   16ad0:	02112623          	sw	ra,44(sp)
   16ad4:	0086f793          	and	a5,a3,8
   16ad8:	00060b13          	mv	s6,a2
   16adc:	00050a13          	mv	s4,a0
   16ae0:	00058413          	mv	s0,a1
   16ae4:	08078e63          	beqz	a5,16b80 <__sfvwrite_r+0xcc>
   16ae8:	0105a783          	lw	a5,16(a1)
   16aec:	08078a63          	beqz	a5,16b80 <__sfvwrite_r+0xcc>
   16af0:	02912223          	sw	s1,36(sp)
   16af4:	03212023          	sw	s2,32(sp)
   16af8:	01312e23          	sw	s3,28(sp)
   16afc:	01512a23          	sw	s5,20(sp)
   16b00:	0026f793          	and	a5,a3,2
   16b04:	000b2483          	lw	s1,0(s6)
   16b08:	0a078463          	beqz	a5,16bb0 <__sfvwrite_r+0xfc>
   16b0c:	02442783          	lw	a5,36(s0)
   16b10:	01c42583          	lw	a1,28(s0)
   16b14:	80000ab7          	lui	s5,0x80000
   16b18:	00000993          	li	s3,0
   16b1c:	00000913          	li	s2,0
   16b20:	c00a8a93          	add	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffdbcf0>
   16b24:	00098613          	mv	a2,s3
   16b28:	000a0513          	mv	a0,s4
   16b2c:	04090263          	beqz	s2,16b70 <__sfvwrite_r+0xbc>
   16b30:	00090693          	mv	a3,s2
   16b34:	012af463          	bgeu	s5,s2,16b3c <__sfvwrite_r+0x88>
   16b38:	000a8693          	mv	a3,s5
   16b3c:	000780e7          	jalr	a5
   16b40:	46a05263          	blez	a0,16fa4 <__sfvwrite_r+0x4f0>
   16b44:	008b2783          	lw	a5,8(s6)
   16b48:	00a989b3          	add	s3,s3,a0
   16b4c:	40a90933          	sub	s2,s2,a0
   16b50:	40a787b3          	sub	a5,a5,a0
   16b54:	00fb2423          	sw	a5,8(s6)
   16b58:	1a078663          	beqz	a5,16d04 <__sfvwrite_r+0x250>
   16b5c:	02442783          	lw	a5,36(s0)
   16b60:	01c42583          	lw	a1,28(s0)
   16b64:	00098613          	mv	a2,s3
   16b68:	000a0513          	mv	a0,s4
   16b6c:	fc0912e3          	bnez	s2,16b30 <__sfvwrite_r+0x7c>
   16b70:	0004a983          	lw	s3,0(s1)
   16b74:	0044a903          	lw	s2,4(s1)
   16b78:	00848493          	add	s1,s1,8
   16b7c:	fa9ff06f          	j	16b24 <__sfvwrite_r+0x70>
   16b80:	00040593          	mv	a1,s0
   16b84:	000a0513          	mv	a0,s4
   16b88:	440000ef          	jal	16fc8 <__swsetup_r>
   16b8c:	1c051c63          	bnez	a0,16d64 <__sfvwrite_r+0x2b0>
   16b90:	00c41683          	lh	a3,12(s0)
   16b94:	02912223          	sw	s1,36(sp)
   16b98:	03212023          	sw	s2,32(sp)
   16b9c:	01312e23          	sw	s3,28(sp)
   16ba0:	01512a23          	sw	s5,20(sp)
   16ba4:	0026f793          	and	a5,a3,2
   16ba8:	000b2483          	lw	s1,0(s6)
   16bac:	f60790e3          	bnez	a5,16b0c <__sfvwrite_r+0x58>
   16bb0:	01712623          	sw	s7,12(sp)
   16bb4:	01812423          	sw	s8,8(sp)
   16bb8:	0016f793          	and	a5,a3,1
   16bbc:	1c079663          	bnez	a5,16d88 <__sfvwrite_r+0x2d4>
   16bc0:	00042783          	lw	a5,0(s0)
   16bc4:	00842703          	lw	a4,8(s0)
   16bc8:	80000ab7          	lui	s5,0x80000
   16bcc:	01912223          	sw	s9,4(sp)
   16bd0:	00000b93          	li	s7,0
   16bd4:	00000993          	li	s3,0
   16bd8:	fffa8a93          	add	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffdc0ef>
   16bdc:	00078513          	mv	a0,a5
   16be0:	00070c13          	mv	s8,a4
   16be4:	10098263          	beqz	s3,16ce8 <__sfvwrite_r+0x234>
   16be8:	2006f613          	and	a2,a3,512
   16bec:	28060863          	beqz	a2,16e7c <__sfvwrite_r+0x3c8>
   16bf0:	00070c93          	mv	s9,a4
   16bf4:	32e9e863          	bltu	s3,a4,16f24 <__sfvwrite_r+0x470>
   16bf8:	4806f713          	and	a4,a3,1152
   16bfc:	08070a63          	beqz	a4,16c90 <__sfvwrite_r+0x1dc>
   16c00:	01442603          	lw	a2,20(s0)
   16c04:	01042583          	lw	a1,16(s0)
   16c08:	00161713          	sll	a4,a2,0x1
   16c0c:	00c70733          	add	a4,a4,a2
   16c10:	40b78933          	sub	s2,a5,a1
   16c14:	01f75c13          	srl	s8,a4,0x1f
   16c18:	00ec0c33          	add	s8,s8,a4
   16c1c:	00190793          	add	a5,s2,1
   16c20:	401c5c13          	sra	s8,s8,0x1
   16c24:	013787b3          	add	a5,a5,s3
   16c28:	000c0613          	mv	a2,s8
   16c2c:	00fc7663          	bgeu	s8,a5,16c38 <__sfvwrite_r+0x184>
   16c30:	00078c13          	mv	s8,a5
   16c34:	00078613          	mv	a2,a5
   16c38:	4006f693          	and	a3,a3,1024
   16c3c:	32068063          	beqz	a3,16f5c <__sfvwrite_r+0x4a8>
   16c40:	00060593          	mv	a1,a2
   16c44:	000a0513          	mv	a0,s4
   16c48:	979fa0ef          	jal	115c0 <_malloc_r>
   16c4c:	00050c93          	mv	s9,a0
   16c50:	34050e63          	beqz	a0,16fac <__sfvwrite_r+0x4f8>
   16c54:	01042583          	lw	a1,16(s0)
   16c58:	00090613          	mv	a2,s2
   16c5c:	7d4010ef          	jal	18430 <memcpy>
   16c60:	00c45783          	lhu	a5,12(s0)
   16c64:	b7f7f793          	and	a5,a5,-1153
   16c68:	0807e793          	or	a5,a5,128
   16c6c:	00f41623          	sh	a5,12(s0)
   16c70:	012c8533          	add	a0,s9,s2
   16c74:	412c07b3          	sub	a5,s8,s2
   16c78:	01942823          	sw	s9,16(s0)
   16c7c:	01842a23          	sw	s8,20(s0)
   16c80:	00a42023          	sw	a0,0(s0)
   16c84:	00098c13          	mv	s8,s3
   16c88:	00f42423          	sw	a5,8(s0)
   16c8c:	00098c93          	mv	s9,s3
   16c90:	000c8613          	mv	a2,s9
   16c94:	000b8593          	mv	a1,s7
   16c98:	68c010ef          	jal	18324 <memmove>
   16c9c:	00842703          	lw	a4,8(s0)
   16ca0:	00042783          	lw	a5,0(s0)
   16ca4:	00098913          	mv	s2,s3
   16ca8:	41870733          	sub	a4,a4,s8
   16cac:	019787b3          	add	a5,a5,s9
   16cb0:	00e42423          	sw	a4,8(s0)
   16cb4:	00f42023          	sw	a5,0(s0)
   16cb8:	00000993          	li	s3,0
   16cbc:	008b2783          	lw	a5,8(s6)
   16cc0:	012b8bb3          	add	s7,s7,s2
   16cc4:	412787b3          	sub	a5,a5,s2
   16cc8:	00fb2423          	sw	a5,8(s6)
   16ccc:	02078663          	beqz	a5,16cf8 <__sfvwrite_r+0x244>
   16cd0:	00042783          	lw	a5,0(s0)
   16cd4:	00842703          	lw	a4,8(s0)
   16cd8:	00c41683          	lh	a3,12(s0)
   16cdc:	00078513          	mv	a0,a5
   16ce0:	00070c13          	mv	s8,a4
   16ce4:	f00992e3          	bnez	s3,16be8 <__sfvwrite_r+0x134>
   16ce8:	0004ab83          	lw	s7,0(s1)
   16cec:	0044a983          	lw	s3,4(s1)
   16cf0:	00848493          	add	s1,s1,8
   16cf4:	ee9ff06f          	j	16bdc <__sfvwrite_r+0x128>
   16cf8:	00c12b83          	lw	s7,12(sp)
   16cfc:	00812c03          	lw	s8,8(sp)
   16d00:	00412c83          	lw	s9,4(sp)
   16d04:	02c12083          	lw	ra,44(sp)
   16d08:	02812403          	lw	s0,40(sp)
   16d0c:	02412483          	lw	s1,36(sp)
   16d10:	02012903          	lw	s2,32(sp)
   16d14:	01c12983          	lw	s3,28(sp)
   16d18:	01412a83          	lw	s5,20(sp)
   16d1c:	01812a03          	lw	s4,24(sp)
   16d20:	01012b03          	lw	s6,16(sp)
   16d24:	00000513          	li	a0,0
   16d28:	03010113          	add	sp,sp,48
   16d2c:	00008067          	ret
   16d30:	00040593          	mv	a1,s0
   16d34:	000a0513          	mv	a0,s4
   16d38:	bcdff0ef          	jal	16904 <_fflush_r>
   16d3c:	0a050e63          	beqz	a0,16df8 <__sfvwrite_r+0x344>
   16d40:	00c41783          	lh	a5,12(s0)
   16d44:	00c12b83          	lw	s7,12(sp)
   16d48:	00812c03          	lw	s8,8(sp)
   16d4c:	02412483          	lw	s1,36(sp)
   16d50:	02012903          	lw	s2,32(sp)
   16d54:	01c12983          	lw	s3,28(sp)
   16d58:	01412a83          	lw	s5,20(sp)
   16d5c:	0407e793          	or	a5,a5,64
   16d60:	00f41623          	sh	a5,12(s0)
   16d64:	02c12083          	lw	ra,44(sp)
   16d68:	02812403          	lw	s0,40(sp)
   16d6c:	01812a03          	lw	s4,24(sp)
   16d70:	01012b03          	lw	s6,16(sp)
   16d74:	fff00513          	li	a0,-1
   16d78:	03010113          	add	sp,sp,48
   16d7c:	00008067          	ret
   16d80:	00000513          	li	a0,0
   16d84:	00008067          	ret
   16d88:	00000a93          	li	s5,0
   16d8c:	00000513          	li	a0,0
   16d90:	00000c13          	li	s8,0
   16d94:	00000993          	li	s3,0
   16d98:	08098263          	beqz	s3,16e1c <__sfvwrite_r+0x368>
   16d9c:	08050a63          	beqz	a0,16e30 <__sfvwrite_r+0x37c>
   16da0:	000a8793          	mv	a5,s5
   16da4:	00098b93          	mv	s7,s3
   16da8:	0137f463          	bgeu	a5,s3,16db0 <__sfvwrite_r+0x2fc>
   16dac:	00078b93          	mv	s7,a5
   16db0:	00042503          	lw	a0,0(s0)
   16db4:	01042783          	lw	a5,16(s0)
   16db8:	00842903          	lw	s2,8(s0)
   16dbc:	01442683          	lw	a3,20(s0)
   16dc0:	00a7f663          	bgeu	a5,a0,16dcc <__sfvwrite_r+0x318>
   16dc4:	00d90933          	add	s2,s2,a3
   16dc8:	09794463          	blt	s2,s7,16e50 <__sfvwrite_r+0x39c>
   16dcc:	16dbc263          	blt	s7,a3,16f30 <__sfvwrite_r+0x47c>
   16dd0:	02442783          	lw	a5,36(s0)
   16dd4:	01c42583          	lw	a1,28(s0)
   16dd8:	000c0613          	mv	a2,s8
   16ddc:	000a0513          	mv	a0,s4
   16de0:	000780e7          	jalr	a5
   16de4:	00050913          	mv	s2,a0
   16de8:	f4a05ce3          	blez	a0,16d40 <__sfvwrite_r+0x28c>
   16dec:	412a8ab3          	sub	s5,s5,s2
   16df0:	00100513          	li	a0,1
   16df4:	f20a8ee3          	beqz	s5,16d30 <__sfvwrite_r+0x27c>
   16df8:	008b2783          	lw	a5,8(s6)
   16dfc:	012c0c33          	add	s8,s8,s2
   16e00:	412989b3          	sub	s3,s3,s2
   16e04:	412787b3          	sub	a5,a5,s2
   16e08:	00fb2423          	sw	a5,8(s6)
   16e0c:	f80796e3          	bnez	a5,16d98 <__sfvwrite_r+0x2e4>
   16e10:	00c12b83          	lw	s7,12(sp)
   16e14:	00812c03          	lw	s8,8(sp)
   16e18:	eedff06f          	j	16d04 <__sfvwrite_r+0x250>
   16e1c:	0044a983          	lw	s3,4(s1)
   16e20:	00048793          	mv	a5,s1
   16e24:	00848493          	add	s1,s1,8
   16e28:	fe098ae3          	beqz	s3,16e1c <__sfvwrite_r+0x368>
   16e2c:	0007ac03          	lw	s8,0(a5)
   16e30:	00098613          	mv	a2,s3
   16e34:	00a00593          	li	a1,10
   16e38:	000c0513          	mv	a0,s8
   16e3c:	5e8000ef          	jal	17424 <memchr>
   16e40:	14050c63          	beqz	a0,16f98 <__sfvwrite_r+0x4e4>
   16e44:	00150513          	add	a0,a0,1
   16e48:	41850ab3          	sub	s5,a0,s8
   16e4c:	f55ff06f          	j	16da0 <__sfvwrite_r+0x2ec>
   16e50:	000c0593          	mv	a1,s8
   16e54:	00090613          	mv	a2,s2
   16e58:	4cc010ef          	jal	18324 <memmove>
   16e5c:	00042783          	lw	a5,0(s0)
   16e60:	00040593          	mv	a1,s0
   16e64:	000a0513          	mv	a0,s4
   16e68:	012787b3          	add	a5,a5,s2
   16e6c:	00f42023          	sw	a5,0(s0)
   16e70:	a95ff0ef          	jal	16904 <_fflush_r>
   16e74:	f6050ce3          	beqz	a0,16dec <__sfvwrite_r+0x338>
   16e78:	ec9ff06f          	j	16d40 <__sfvwrite_r+0x28c>
   16e7c:	01042683          	lw	a3,16(s0)
   16e80:	04f6e463          	bltu	a3,a5,16ec8 <__sfvwrite_r+0x414>
   16e84:	01442583          	lw	a1,20(s0)
   16e88:	04b9e063          	bltu	s3,a1,16ec8 <__sfvwrite_r+0x414>
   16e8c:	00098913          	mv	s2,s3
   16e90:	013af463          	bgeu	s5,s3,16e98 <__sfvwrite_r+0x3e4>
   16e94:	000a8913          	mv	s2,s5
   16e98:	00090513          	mv	a0,s2
   16e9c:	3a90a0ef          	jal	21a44 <__modsi3>
   16ea0:	02442783          	lw	a5,36(s0)
   16ea4:	01c42583          	lw	a1,28(s0)
   16ea8:	40a906b3          	sub	a3,s2,a0
   16eac:	000b8613          	mv	a2,s7
   16eb0:	000a0513          	mv	a0,s4
   16eb4:	000780e7          	jalr	a5
   16eb8:	00050913          	mv	s2,a0
   16ebc:	04a05a63          	blez	a0,16f10 <__sfvwrite_r+0x45c>
   16ec0:	412989b3          	sub	s3,s3,s2
   16ec4:	df9ff06f          	j	16cbc <__sfvwrite_r+0x208>
   16ec8:	00070913          	mv	s2,a4
   16ecc:	00e9f463          	bgeu	s3,a4,16ed4 <__sfvwrite_r+0x420>
   16ed0:	00098913          	mv	s2,s3
   16ed4:	00078513          	mv	a0,a5
   16ed8:	00090613          	mv	a2,s2
   16edc:	000b8593          	mv	a1,s7
   16ee0:	444010ef          	jal	18324 <memmove>
   16ee4:	00842703          	lw	a4,8(s0)
   16ee8:	00042783          	lw	a5,0(s0)
   16eec:	41270733          	sub	a4,a4,s2
   16ef0:	012787b3          	add	a5,a5,s2
   16ef4:	00e42423          	sw	a4,8(s0)
   16ef8:	00f42023          	sw	a5,0(s0)
   16efc:	fc0712e3          	bnez	a4,16ec0 <__sfvwrite_r+0x40c>
   16f00:	00040593          	mv	a1,s0
   16f04:	000a0513          	mv	a0,s4
   16f08:	9fdff0ef          	jal	16904 <_fflush_r>
   16f0c:	fa050ae3          	beqz	a0,16ec0 <__sfvwrite_r+0x40c>
   16f10:	00c41783          	lh	a5,12(s0)
   16f14:	00c12b83          	lw	s7,12(sp)
   16f18:	00812c03          	lw	s8,8(sp)
   16f1c:	00412c83          	lw	s9,4(sp)
   16f20:	e2dff06f          	j	16d4c <__sfvwrite_r+0x298>
   16f24:	00098c13          	mv	s8,s3
   16f28:	00098c93          	mv	s9,s3
   16f2c:	d65ff06f          	j	16c90 <__sfvwrite_r+0x1dc>
   16f30:	000b8613          	mv	a2,s7
   16f34:	000c0593          	mv	a1,s8
   16f38:	3ec010ef          	jal	18324 <memmove>
   16f3c:	00842703          	lw	a4,8(s0)
   16f40:	00042783          	lw	a5,0(s0)
   16f44:	000b8913          	mv	s2,s7
   16f48:	41770733          	sub	a4,a4,s7
   16f4c:	017787b3          	add	a5,a5,s7
   16f50:	00e42423          	sw	a4,8(s0)
   16f54:	00f42023          	sw	a5,0(s0)
   16f58:	e95ff06f          	j	16dec <__sfvwrite_r+0x338>
   16f5c:	000a0513          	mv	a0,s4
   16f60:	7d1040ef          	jal	1bf30 <_realloc_r>
   16f64:	00050c93          	mv	s9,a0
   16f68:	d00514e3          	bnez	a0,16c70 <__sfvwrite_r+0x1bc>
   16f6c:	01042583          	lw	a1,16(s0)
   16f70:	000a0513          	mv	a0,s4
   16f74:	b48fa0ef          	jal	112bc <_free_r>
   16f78:	00c41783          	lh	a5,12(s0)
   16f7c:	00c00713          	li	a4,12
   16f80:	00c12b83          	lw	s7,12(sp)
   16f84:	00812c03          	lw	s8,8(sp)
   16f88:	00412c83          	lw	s9,4(sp)
   16f8c:	00ea2023          	sw	a4,0(s4)
   16f90:	f7f7f793          	and	a5,a5,-129
   16f94:	db9ff06f          	j	16d4c <__sfvwrite_r+0x298>
   16f98:	00198793          	add	a5,s3,1
   16f9c:	00078a93          	mv	s5,a5
   16fa0:	e05ff06f          	j	16da4 <__sfvwrite_r+0x2f0>
   16fa4:	00c41783          	lh	a5,12(s0)
   16fa8:	da5ff06f          	j	16d4c <__sfvwrite_r+0x298>
   16fac:	00c00713          	li	a4,12
   16fb0:	00c41783          	lh	a5,12(s0)
   16fb4:	00c12b83          	lw	s7,12(sp)
   16fb8:	00812c03          	lw	s8,8(sp)
   16fbc:	00412c83          	lw	s9,4(sp)
   16fc0:	00ea2023          	sw	a4,0(s4)
   16fc4:	d89ff06f          	j	16d4c <__sfvwrite_r+0x298>

00016fc8 <__swsetup_r>:
   16fc8:	ff010113          	add	sp,sp,-16
   16fcc:	00812423          	sw	s0,8(sp)
   16fd0:	00912223          	sw	s1,4(sp)
   16fd4:	00112623          	sw	ra,12(sp)
   16fd8:	f341a783          	lw	a5,-204(gp) # 23904 <_impure_ptr>
   16fdc:	00050493          	mv	s1,a0
   16fe0:	00058413          	mv	s0,a1
   16fe4:	00078663          	beqz	a5,16ff0 <__swsetup_r+0x28>
   16fe8:	0347a703          	lw	a4,52(a5)
   16fec:	0e070c63          	beqz	a4,170e4 <__swsetup_r+0x11c>
   16ff0:	00c41783          	lh	a5,12(s0)
   16ff4:	0087f713          	and	a4,a5,8
   16ff8:	06070a63          	beqz	a4,1706c <__swsetup_r+0xa4>
   16ffc:	01042703          	lw	a4,16(s0)
   17000:	08070663          	beqz	a4,1708c <__swsetup_r+0xc4>
   17004:	0017f693          	and	a3,a5,1
   17008:	02068863          	beqz	a3,17038 <__swsetup_r+0x70>
   1700c:	01442683          	lw	a3,20(s0)
   17010:	00042423          	sw	zero,8(s0)
   17014:	00000513          	li	a0,0
   17018:	40d006b3          	neg	a3,a3
   1701c:	00d42c23          	sw	a3,24(s0)
   17020:	02070a63          	beqz	a4,17054 <__swsetup_r+0x8c>
   17024:	00c12083          	lw	ra,12(sp)
   17028:	00812403          	lw	s0,8(sp)
   1702c:	00412483          	lw	s1,4(sp)
   17030:	01010113          	add	sp,sp,16
   17034:	00008067          	ret
   17038:	0027f693          	and	a3,a5,2
   1703c:	00000613          	li	a2,0
   17040:	00069463          	bnez	a3,17048 <__swsetup_r+0x80>
   17044:	01442603          	lw	a2,20(s0)
   17048:	00c42423          	sw	a2,8(s0)
   1704c:	00000513          	li	a0,0
   17050:	fc071ae3          	bnez	a4,17024 <__swsetup_r+0x5c>
   17054:	0807f713          	and	a4,a5,128
   17058:	fc0706e3          	beqz	a4,17024 <__swsetup_r+0x5c>
   1705c:	0407e793          	or	a5,a5,64
   17060:	00f41623          	sh	a5,12(s0)
   17064:	fff00513          	li	a0,-1
   17068:	fbdff06f          	j	17024 <__swsetup_r+0x5c>
   1706c:	0107f713          	and	a4,a5,16
   17070:	08070063          	beqz	a4,170f0 <__swsetup_r+0x128>
   17074:	0047f713          	and	a4,a5,4
   17078:	02071c63          	bnez	a4,170b0 <__swsetup_r+0xe8>
   1707c:	01042703          	lw	a4,16(s0)
   17080:	0087e793          	or	a5,a5,8
   17084:	00f41623          	sh	a5,12(s0)
   17088:	f6071ee3          	bnez	a4,17004 <__swsetup_r+0x3c>
   1708c:	2807f693          	and	a3,a5,640
   17090:	20000613          	li	a2,512
   17094:	f6c688e3          	beq	a3,a2,17004 <__swsetup_r+0x3c>
   17098:	00040593          	mv	a1,s0
   1709c:	00048513          	mv	a0,s1
   170a0:	329050ef          	jal	1cbc8 <__smakebuf_r>
   170a4:	00c41783          	lh	a5,12(s0)
   170a8:	01042703          	lw	a4,16(s0)
   170ac:	f59ff06f          	j	17004 <__swsetup_r+0x3c>
   170b0:	03042583          	lw	a1,48(s0)
   170b4:	00058e63          	beqz	a1,170d0 <__swsetup_r+0x108>
   170b8:	04040713          	add	a4,s0,64
   170bc:	00e58863          	beq	a1,a4,170cc <__swsetup_r+0x104>
   170c0:	00048513          	mv	a0,s1
   170c4:	9f8fa0ef          	jal	112bc <_free_r>
   170c8:	00c41783          	lh	a5,12(s0)
   170cc:	02042823          	sw	zero,48(s0)
   170d0:	01042703          	lw	a4,16(s0)
   170d4:	fdb7f793          	and	a5,a5,-37
   170d8:	00042223          	sw	zero,4(s0)
   170dc:	00e42023          	sw	a4,0(s0)
   170e0:	fa1ff06f          	j	17080 <__swsetup_r+0xb8>
   170e4:	00078513          	mv	a0,a5
   170e8:	ec8f90ef          	jal	107b0 <__sinit>
   170ec:	f05ff06f          	j	16ff0 <__swsetup_r+0x28>
   170f0:	00900713          	li	a4,9
   170f4:	00e4a023          	sw	a4,0(s1)
   170f8:	0407e793          	or	a5,a5,64
   170fc:	00f41623          	sh	a5,12(s0)
   17100:	fff00513          	li	a0,-1
   17104:	f21ff06f          	j	17024 <__swsetup_r+0x5c>

00017108 <__fputwc>:
   17108:	fc010113          	add	sp,sp,-64
   1710c:	02812c23          	sw	s0,56(sp)
   17110:	03412423          	sw	s4,40(sp)
   17114:	03512223          	sw	s5,36(sp)
   17118:	02112e23          	sw	ra,60(sp)
   1711c:	02912a23          	sw	s1,52(sp)
   17120:	03312623          	sw	s3,44(sp)
   17124:	00050a13          	mv	s4,a0
   17128:	00058a93          	mv	s5,a1
   1712c:	00060413          	mv	s0,a2
   17130:	174010ef          	jal	182a4 <__locale_mb_cur_max>
   17134:	00100793          	li	a5,1
   17138:	02f51663          	bne	a0,a5,17164 <__fputwc+0x5c>
   1713c:	fffa8793          	add	a5,s5,-1
   17140:	0fe00713          	li	a4,254
   17144:	02f76063          	bltu	a4,a5,17164 <__fputwc+0x5c>
   17148:	03212823          	sw	s2,48(sp)
   1714c:	03612023          	sw	s6,32(sp)
   17150:	01712e23          	sw	s7,28(sp)
   17154:	01510423          	sb	s5,8(sp)
   17158:	00100993          	li	s3,1
   1715c:	00810493          	add	s1,sp,8
   17160:	0380006f          	j	17198 <__fputwc+0x90>
   17164:	00810493          	add	s1,sp,8
   17168:	05c40693          	add	a3,s0,92
   1716c:	000a8613          	mv	a2,s5
   17170:	00048593          	mv	a1,s1
   17174:	000a0513          	mv	a0,s4
   17178:	0f1050ef          	jal	1ca68 <_wcrtomb_r>
   1717c:	fff00793          	li	a5,-1
   17180:	00050993          	mv	s3,a0
   17184:	0cf50a63          	beq	a0,a5,17258 <__fputwc+0x150>
   17188:	0a050663          	beqz	a0,17234 <__fputwc+0x12c>
   1718c:	03212823          	sw	s2,48(sp)
   17190:	03612023          	sw	s6,32(sp)
   17194:	01712e23          	sw	s7,28(sp)
   17198:	00000913          	li	s2,0
   1719c:	fff00b13          	li	s6,-1
   171a0:	00a00b93          	li	s7,10
   171a4:	0200006f          	j	171c4 <__fputwc+0xbc>
   171a8:	00042783          	lw	a5,0(s0)
   171ac:	00178693          	add	a3,a5,1
   171b0:	00d42023          	sw	a3,0(s0)
   171b4:	00e78023          	sb	a4,0(a5)
   171b8:	00190913          	add	s2,s2,1
   171bc:	00148493          	add	s1,s1,1
   171c0:	07397463          	bgeu	s2,s3,17228 <__fputwc+0x120>
   171c4:	00842783          	lw	a5,8(s0)
   171c8:	0004c703          	lbu	a4,0(s1)
   171cc:	fff78793          	add	a5,a5,-1
   171d0:	00f42423          	sw	a5,8(s0)
   171d4:	fc07dae3          	bgez	a5,171a8 <__fputwc+0xa0>
   171d8:	01842683          	lw	a3,24(s0)
   171dc:	00040613          	mv	a2,s0
   171e0:	00070593          	mv	a1,a4
   171e4:	000a0513          	mv	a0,s4
   171e8:	00d7c463          	blt	a5,a3,171f0 <__fputwc+0xe8>
   171ec:	fb771ee3          	bne	a4,s7,171a8 <__fputwc+0xa0>
   171f0:	449050ef          	jal	1ce38 <__swbuf_r>
   171f4:	fd6512e3          	bne	a0,s6,171b8 <__fputwc+0xb0>
   171f8:	03012903          	lw	s2,48(sp)
   171fc:	02012b03          	lw	s6,32(sp)
   17200:	01c12b83          	lw	s7,28(sp)
   17204:	03c12083          	lw	ra,60(sp)
   17208:	03812403          	lw	s0,56(sp)
   1720c:	03412483          	lw	s1,52(sp)
   17210:	02c12983          	lw	s3,44(sp)
   17214:	02812a03          	lw	s4,40(sp)
   17218:	02412a83          	lw	s5,36(sp)
   1721c:	fff00513          	li	a0,-1
   17220:	04010113          	add	sp,sp,64
   17224:	00008067          	ret
   17228:	03012903          	lw	s2,48(sp)
   1722c:	02012b03          	lw	s6,32(sp)
   17230:	01c12b83          	lw	s7,28(sp)
   17234:	03c12083          	lw	ra,60(sp)
   17238:	03812403          	lw	s0,56(sp)
   1723c:	03412483          	lw	s1,52(sp)
   17240:	02c12983          	lw	s3,44(sp)
   17244:	02812a03          	lw	s4,40(sp)
   17248:	000a8513          	mv	a0,s5
   1724c:	02412a83          	lw	s5,36(sp)
   17250:	04010113          	add	sp,sp,64
   17254:	00008067          	ret
   17258:	00c45783          	lhu	a5,12(s0)
   1725c:	0407e793          	or	a5,a5,64
   17260:	00f41623          	sh	a5,12(s0)
   17264:	fa1ff06f          	j	17204 <__fputwc+0xfc>

00017268 <_fputwc_r>:
   17268:	06462783          	lw	a5,100(a2)
   1726c:	fe010113          	add	sp,sp,-32
   17270:	00812c23          	sw	s0,24(sp)
   17274:	00912a23          	sw	s1,20(sp)
   17278:	0017f713          	and	a4,a5,1
   1727c:	00112e23          	sw	ra,28(sp)
   17280:	00c61783          	lh	a5,12(a2)
   17284:	00060413          	mv	s0,a2
   17288:	00050493          	mv	s1,a0
   1728c:	00071663          	bnez	a4,17298 <_fputwc_r+0x30>
   17290:	2007f713          	and	a4,a5,512
   17294:	08070463          	beqz	a4,1731c <_fputwc_r+0xb4>
   17298:	01279713          	sll	a4,a5,0x12
   1729c:	02074063          	bltz	a4,172bc <_fputwc_r+0x54>
   172a0:	06442703          	lw	a4,100(s0)
   172a4:	000026b7          	lui	a3,0x2
   172a8:	00d7e7b3          	or	a5,a5,a3
   172ac:	000026b7          	lui	a3,0x2
   172b0:	00d76733          	or	a4,a4,a3
   172b4:	00f41623          	sh	a5,12(s0)
   172b8:	06e42223          	sw	a4,100(s0)
   172bc:	00048513          	mv	a0,s1
   172c0:	00040613          	mv	a2,s0
   172c4:	e45ff0ef          	jal	17108 <__fputwc>
   172c8:	06442783          	lw	a5,100(s0)
   172cc:	00050493          	mv	s1,a0
   172d0:	0017f793          	and	a5,a5,1
   172d4:	00079863          	bnez	a5,172e4 <_fputwc_r+0x7c>
   172d8:	00c45783          	lhu	a5,12(s0)
   172dc:	2007f793          	and	a5,a5,512
   172e0:	00078e63          	beqz	a5,172fc <_fputwc_r+0x94>
   172e4:	01c12083          	lw	ra,28(sp)
   172e8:	01812403          	lw	s0,24(sp)
   172ec:	00048513          	mv	a0,s1
   172f0:	01412483          	lw	s1,20(sp)
   172f4:	02010113          	add	sp,sp,32
   172f8:	00008067          	ret
   172fc:	05842503          	lw	a0,88(s0)
   17300:	b71f90ef          	jal	10e70 <__retarget_lock_release_recursive>
   17304:	01c12083          	lw	ra,28(sp)
   17308:	01812403          	lw	s0,24(sp)
   1730c:	00048513          	mv	a0,s1
   17310:	01412483          	lw	s1,20(sp)
   17314:	02010113          	add	sp,sp,32
   17318:	00008067          	ret
   1731c:	05862503          	lw	a0,88(a2)
   17320:	00b12623          	sw	a1,12(sp)
   17324:	b35f90ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   17328:	00c41783          	lh	a5,12(s0)
   1732c:	00c12583          	lw	a1,12(sp)
   17330:	f69ff06f          	j	17298 <_fputwc_r+0x30>

00017334 <fputwc>:
   17334:	fe010113          	add	sp,sp,-32
   17338:	00812c23          	sw	s0,24(sp)
   1733c:	00912a23          	sw	s1,20(sp)
   17340:	00112e23          	sw	ra,28(sp)
   17344:	f341a483          	lw	s1,-204(gp) # 23904 <_impure_ptr>
   17348:	00058413          	mv	s0,a1
   1734c:	00050593          	mv	a1,a0
   17350:	00048663          	beqz	s1,1735c <fputwc+0x28>
   17354:	0344a783          	lw	a5,52(s1)
   17358:	0a078c63          	beqz	a5,17410 <fputwc+0xdc>
   1735c:	06442703          	lw	a4,100(s0)
   17360:	00c41783          	lh	a5,12(s0)
   17364:	00177713          	and	a4,a4,1
   17368:	00071663          	bnez	a4,17374 <fputwc+0x40>
   1736c:	2007f713          	and	a4,a5,512
   17370:	08070463          	beqz	a4,173f8 <fputwc+0xc4>
   17374:	01279713          	sll	a4,a5,0x12
   17378:	02074063          	bltz	a4,17398 <fputwc+0x64>
   1737c:	06442703          	lw	a4,100(s0)
   17380:	000026b7          	lui	a3,0x2
   17384:	00d7e7b3          	or	a5,a5,a3
   17388:	000026b7          	lui	a3,0x2
   1738c:	00d76733          	or	a4,a4,a3
   17390:	00f41623          	sh	a5,12(s0)
   17394:	06e42223          	sw	a4,100(s0)
   17398:	00048513          	mv	a0,s1
   1739c:	00040613          	mv	a2,s0
   173a0:	d69ff0ef          	jal	17108 <__fputwc>
   173a4:	06442783          	lw	a5,100(s0)
   173a8:	00050493          	mv	s1,a0
   173ac:	0017f793          	and	a5,a5,1
   173b0:	00079863          	bnez	a5,173c0 <fputwc+0x8c>
   173b4:	00c45783          	lhu	a5,12(s0)
   173b8:	2007f793          	and	a5,a5,512
   173bc:	00078e63          	beqz	a5,173d8 <fputwc+0xa4>
   173c0:	01c12083          	lw	ra,28(sp)
   173c4:	01812403          	lw	s0,24(sp)
   173c8:	00048513          	mv	a0,s1
   173cc:	01412483          	lw	s1,20(sp)
   173d0:	02010113          	add	sp,sp,32
   173d4:	00008067          	ret
   173d8:	05842503          	lw	a0,88(s0)
   173dc:	a95f90ef          	jal	10e70 <__retarget_lock_release_recursive>
   173e0:	01c12083          	lw	ra,28(sp)
   173e4:	01812403          	lw	s0,24(sp)
   173e8:	00048513          	mv	a0,s1
   173ec:	01412483          	lw	s1,20(sp)
   173f0:	02010113          	add	sp,sp,32
   173f4:	00008067          	ret
   173f8:	05842503          	lw	a0,88(s0)
   173fc:	00b12623          	sw	a1,12(sp)
   17400:	a59f90ef          	jal	10e58 <__retarget_lock_acquire_recursive>
   17404:	00c41783          	lh	a5,12(s0)
   17408:	00c12583          	lw	a1,12(sp)
   1740c:	f69ff06f          	j	17374 <fputwc+0x40>
   17410:	00a12623          	sw	a0,12(sp)
   17414:	00048513          	mv	a0,s1
   17418:	b98f90ef          	jal	107b0 <__sinit>
   1741c:	00c12583          	lw	a1,12(sp)
   17420:	f3dff06f          	j	1735c <fputwc+0x28>

00017424 <memchr>:
   17424:	00357793          	and	a5,a0,3
   17428:	0ff5f693          	zext.b	a3,a1
   1742c:	02078a63          	beqz	a5,17460 <memchr+0x3c>
   17430:	fff60793          	add	a5,a2,-1
   17434:	02060e63          	beqz	a2,17470 <memchr+0x4c>
   17438:	fff00613          	li	a2,-1
   1743c:	0180006f          	j	17454 <memchr+0x30>
   17440:	00150513          	add	a0,a0,1
   17444:	00357713          	and	a4,a0,3
   17448:	00070e63          	beqz	a4,17464 <memchr+0x40>
   1744c:	fff78793          	add	a5,a5,-1
   17450:	02c78063          	beq	a5,a2,17470 <memchr+0x4c>
   17454:	00054703          	lbu	a4,0(a0)
   17458:	fed714e3          	bne	a4,a3,17440 <memchr+0x1c>
   1745c:	00008067          	ret
   17460:	00060793          	mv	a5,a2
   17464:	00300713          	li	a4,3
   17468:	00f76863          	bltu	a4,a5,17478 <memchr+0x54>
   1746c:	06079063          	bnez	a5,174cc <memchr+0xa8>
   17470:	00000513          	li	a0,0
   17474:	00008067          	ret
   17478:	0ff5f593          	zext.b	a1,a1
   1747c:	00859713          	sll	a4,a1,0x8
   17480:	00b705b3          	add	a1,a4,a1
   17484:	01059713          	sll	a4,a1,0x10
   17488:	feff08b7          	lui	a7,0xfeff0
   1748c:	80808837          	lui	a6,0x80808
   17490:	00e585b3          	add	a1,a1,a4
   17494:	eff88893          	add	a7,a7,-257 # fefefeff <__BSS_END__+0xfefcbfef>
   17498:	08080813          	add	a6,a6,128 # 80808080 <__BSS_END__+0x807e4170>
   1749c:	00300313          	li	t1,3
   174a0:	0100006f          	j	174b0 <memchr+0x8c>
   174a4:	ffc78793          	add	a5,a5,-4
   174a8:	00450513          	add	a0,a0,4
   174ac:	fcf370e3          	bgeu	t1,a5,1746c <memchr+0x48>
   174b0:	00052703          	lw	a4,0(a0)
   174b4:	00e5c733          	xor	a4,a1,a4
   174b8:	01170633          	add	a2,a4,a7
   174bc:	fff74713          	not	a4,a4
   174c0:	00e67733          	and	a4,a2,a4
   174c4:	01077733          	and	a4,a4,a6
   174c8:	fc070ee3          	beqz	a4,174a4 <memchr+0x80>
   174cc:	00f507b3          	add	a5,a0,a5
   174d0:	00c0006f          	j	174dc <memchr+0xb8>
   174d4:	00150513          	add	a0,a0,1
   174d8:	f8f50ce3          	beq	a0,a5,17470 <memchr+0x4c>
   174dc:	00054703          	lbu	a4,0(a0)
   174e0:	fed71ae3          	bne	a4,a3,174d4 <memchr+0xb0>
   174e4:	00008067          	ret

000174e8 <strncpy>:
   174e8:	00a5e7b3          	or	a5,a1,a0
   174ec:	0037f793          	and	a5,a5,3
   174f0:	00079663          	bnez	a5,174fc <strncpy+0x14>
   174f4:	00300793          	li	a5,3
   174f8:	04c7e663          	bltu	a5,a2,17544 <strncpy+0x5c>
   174fc:	00050713          	mv	a4,a0
   17500:	01c0006f          	j	1751c <strncpy+0x34>
   17504:	fff5c683          	lbu	a3,-1(a1)
   17508:	fff60813          	add	a6,a2,-1
   1750c:	fed78fa3          	sb	a3,-1(a5)
   17510:	00068e63          	beqz	a3,1752c <strncpy+0x44>
   17514:	00078713          	mv	a4,a5
   17518:	00080613          	mv	a2,a6
   1751c:	00158593          	add	a1,a1,1
   17520:	00170793          	add	a5,a4,1
   17524:	fe0610e3          	bnez	a2,17504 <strncpy+0x1c>
   17528:	00008067          	ret
   1752c:	00c70733          	add	a4,a4,a2
   17530:	06080063          	beqz	a6,17590 <strncpy+0xa8>
   17534:	00178793          	add	a5,a5,1
   17538:	fe078fa3          	sb	zero,-1(a5)
   1753c:	fee79ce3          	bne	a5,a4,17534 <strncpy+0x4c>
   17540:	00008067          	ret
   17544:	feff0337          	lui	t1,0xfeff0
   17548:	808088b7          	lui	a7,0x80808
   1754c:	00050713          	mv	a4,a0
   17550:	eff30313          	add	t1,t1,-257 # fefefeff <__BSS_END__+0xfefcbfef>
   17554:	08088893          	add	a7,a7,128 # 80808080 <__BSS_END__+0x807e4170>
   17558:	00300e13          	li	t3,3
   1755c:	0180006f          	j	17574 <strncpy+0x8c>
   17560:	00d72023          	sw	a3,0(a4)
   17564:	ffc60613          	add	a2,a2,-4
   17568:	00470713          	add	a4,a4,4
   1756c:	00458593          	add	a1,a1,4
   17570:	face76e3          	bgeu	t3,a2,1751c <strncpy+0x34>
   17574:	0005a683          	lw	a3,0(a1)
   17578:	006687b3          	add	a5,a3,t1
   1757c:	fff6c813          	not	a6,a3
   17580:	0107f7b3          	and	a5,a5,a6
   17584:	0117f7b3          	and	a5,a5,a7
   17588:	fc078ce3          	beqz	a5,17560 <strncpy+0x78>
   1758c:	f91ff06f          	j	1751c <strncpy+0x34>
   17590:	00008067          	ret

00017594 <currentlocale>:
   17594:	fe010113          	add	sp,sp,-32
   17598:	00912a23          	sw	s1,20(sp)
   1759c:	d5818593          	add	a1,gp,-680 # 23728 <__global_locale+0x20>
   175a0:	45818513          	add	a0,gp,1112 # 23e28 <global_locale_string>
   175a4:	d7818493          	add	s1,gp,-648 # 23748 <__global_locale+0x40>
   175a8:	00812c23          	sw	s0,24(sp)
   175ac:	01212823          	sw	s2,16(sp)
   175b0:	01312623          	sw	s3,12(sp)
   175b4:	00112e23          	sw	ra,28(sp)
   175b8:	e1818913          	add	s2,gp,-488 # 237e8 <__global_locale+0xe0>
   175bc:	0a4010ef          	jal	18660 <strcpy>
   175c0:	00048413          	mv	s0,s1
   175c4:	d5818993          	add	s3,gp,-680 # 23728 <__global_locale+0x20>
   175c8:	00040593          	mv	a1,s0
   175cc:	00098513          	mv	a0,s3
   175d0:	140010ef          	jal	18710 <strcmp>
   175d4:	02040413          	add	s0,s0,32
   175d8:	02051463          	bnez	a0,17600 <currentlocale+0x6c>
   175dc:	ff2416e3          	bne	s0,s2,175c8 <currentlocale+0x34>
   175e0:	01c12083          	lw	ra,28(sp)
   175e4:	01812403          	lw	s0,24(sp)
   175e8:	01412483          	lw	s1,20(sp)
   175ec:	01012903          	lw	s2,16(sp)
   175f0:	00c12983          	lw	s3,12(sp)
   175f4:	45818513          	add	a0,gp,1112 # 23e28 <global_locale_string>
   175f8:	02010113          	add	sp,sp,32
   175fc:	00008067          	ret
   17600:	0000a997          	auipc	s3,0xa
   17604:	57898993          	add	s3,s3,1400 # 21b78 <__clzsi2+0x104>
   17608:	45818413          	add	s0,gp,1112 # 23e28 <global_locale_string>
   1760c:	00098593          	mv	a1,s3
   17610:	00040513          	mv	a0,s0
   17614:	231050ef          	jal	1d044 <strcat>
   17618:	00048593          	mv	a1,s1
   1761c:	00040513          	mv	a0,s0
   17620:	02048493          	add	s1,s1,32
   17624:	221050ef          	jal	1d044 <strcat>
   17628:	ff2492e3          	bne	s1,s2,1760c <currentlocale+0x78>
   1762c:	01c12083          	lw	ra,28(sp)
   17630:	01812403          	lw	s0,24(sp)
   17634:	01412483          	lw	s1,20(sp)
   17638:	01012903          	lw	s2,16(sp)
   1763c:	00c12983          	lw	s3,12(sp)
   17640:	45818513          	add	a0,gp,1112 # 23e28 <global_locale_string>
   17644:	02010113          	add	sp,sp,32
   17648:	00008067          	ret

0001764c <__loadlocale>:
   1764c:	fa010113          	add	sp,sp,-96
   17650:	04912a23          	sw	s1,84(sp)
   17654:	00559493          	sll	s1,a1,0x5
   17658:	009504b3          	add	s1,a0,s1
   1765c:	05212823          	sw	s2,80(sp)
   17660:	05312623          	sw	s3,76(sp)
   17664:	00050913          	mv	s2,a0
   17668:	00058993          	mv	s3,a1
   1766c:	00060513          	mv	a0,a2
   17670:	00048593          	mv	a1,s1
   17674:	04812c23          	sw	s0,88(sp)
   17678:	04112e23          	sw	ra,92(sp)
   1767c:	00060413          	mv	s0,a2
   17680:	090010ef          	jal	18710 <strcmp>
   17684:	02051263          	bnez	a0,176a8 <__loadlocale+0x5c>
   17688:	05c12083          	lw	ra,92(sp)
   1768c:	05812403          	lw	s0,88(sp)
   17690:	05012903          	lw	s2,80(sp)
   17694:	04c12983          	lw	s3,76(sp)
   17698:	00048513          	mv	a0,s1
   1769c:	05412483          	lw	s1,84(sp)
   176a0:	06010113          	add	sp,sp,96
   176a4:	00008067          	ret
   176a8:	0000a597          	auipc	a1,0xa
   176ac:	4d458593          	add	a1,a1,1236 # 21b7c <__clzsi2+0x108>
   176b0:	00040513          	mv	a0,s0
   176b4:	05412423          	sw	s4,72(sp)
   176b8:	05512223          	sw	s5,68(sp)
   176bc:	054010ef          	jal	18710 <strcmp>
   176c0:	08050663          	beqz	a0,1774c <__loadlocale+0x100>
   176c4:	0000a597          	auipc	a1,0xa
   176c8:	4c058593          	add	a1,a1,1216 # 21b84 <__clzsi2+0x110>
   176cc:	00040513          	mv	a0,s0
   176d0:	040010ef          	jal	18710 <strcmp>
   176d4:	08050e63          	beqz	a0,17770 <__loadlocale+0x124>
   176d8:	00044783          	lbu	a5,0(s0)
   176dc:	04300713          	li	a4,67
   176e0:	18e78063          	beq	a5,a4,17860 <__loadlocale+0x214>
   176e4:	f9f78793          	add	a5,a5,-97
   176e8:	0ff7f793          	zext.b	a5,a5
   176ec:	01900713          	li	a4,25
   176f0:	04f76063          	bltu	a4,a5,17730 <__loadlocale+0xe4>
   176f4:	00144783          	lbu	a5,1(s0)
   176f8:	f9f78793          	add	a5,a5,-97
   176fc:	0ff7f793          	zext.b	a5,a5
   17700:	02f76863          	bltu	a4,a5,17730 <__loadlocale+0xe4>
   17704:	00244783          	lbu	a5,2(s0)
   17708:	00240a93          	add	s5,s0,2
   1770c:	f9f78693          	add	a3,a5,-97
   17710:	0ff6f693          	zext.b	a3,a3
   17714:	02d77663          	bgeu	a4,a3,17740 <__loadlocale+0xf4>
   17718:	05f00713          	li	a4,95
   1771c:	1ee78e63          	beq	a5,a4,17918 <__loadlocale+0x2cc>
   17720:	02e00713          	li	a4,46
   17724:	66e78e63          	beq	a5,a4,17da0 <__loadlocale+0x754>
   17728:	0bf7f793          	and	a5,a5,191
   1772c:	18078463          	beqz	a5,178b4 <__loadlocale+0x268>
   17730:	04812a03          	lw	s4,72(sp)
   17734:	04412a83          	lw	s5,68(sp)
   17738:	00000493          	li	s1,0
   1773c:	f4dff06f          	j	17688 <__loadlocale+0x3c>
   17740:	00344783          	lbu	a5,3(s0)
   17744:	00340a93          	add	s5,s0,3
   17748:	fd1ff06f          	j	17718 <__loadlocale+0xcc>
   1774c:	0000a597          	auipc	a1,0xa
   17750:	43858593          	add	a1,a1,1080 # 21b84 <__clzsi2+0x110>
   17754:	00040513          	mv	a0,s0
   17758:	709000ef          	jal	18660 <strcpy>
   1775c:	0000a597          	auipc	a1,0xa
   17760:	42858593          	add	a1,a1,1064 # 21b84 <__clzsi2+0x110>
   17764:	00040513          	mv	a0,s0
   17768:	7a9000ef          	jal	18710 <strcmp>
   1776c:	f60516e3          	bnez	a0,176d8 <__loadlocale+0x8c>
   17770:	01010a13          	add	s4,sp,16
   17774:	0000a597          	auipc	a1,0xa
   17778:	41458593          	add	a1,a1,1044 # 21b88 <__clzsi2+0x114>
   1777c:	000a0513          	mv	a0,s4
   17780:	05612023          	sw	s6,64(sp)
   17784:	03712e23          	sw	s7,60(sp)
   17788:	6d9000ef          	jal	18660 <strcpy>
   1778c:	00000a93          	li	s5,0
   17790:	00000b13          	li	s6,0
   17794:	00000b93          	li	s7,0
   17798:	01014783          	lbu	a5,16(sp)
   1779c:	03400713          	li	a4,52
   177a0:	fbf78793          	add	a5,a5,-65
   177a4:	0ff7f793          	zext.b	a5,a5
   177a8:	16f76263          	bltu	a4,a5,1790c <__loadlocale+0x2c0>
   177ac:	0000b717          	auipc	a4,0xb
   177b0:	a1470713          	add	a4,a4,-1516 # 221c0 <blanks.1+0x10>
   177b4:	00279793          	sll	a5,a5,0x2
   177b8:	00e787b3          	add	a5,a5,a4
   177bc:	0007a783          	lw	a5,0(a5)
   177c0:	03812c23          	sw	s8,56(sp)
   177c4:	03912a23          	sw	s9,52(sp)
   177c8:	00e787b3          	add	a5,a5,a4
   177cc:	03a12823          	sw	s10,48(sp)
   177d0:	00078067          	jr	a5
   177d4:	01114783          	lbu	a5,17(sp)
   177d8:	05000713          	li	a4,80
   177dc:	0df7f793          	and	a5,a5,223
   177e0:	06e79463          	bne	a5,a4,17848 <__loadlocale+0x1fc>
   177e4:	00200613          	li	a2,2
   177e8:	0000a597          	auipc	a1,0xa
   177ec:	41858593          	add	a1,a1,1048 # 21c00 <__clzsi2+0x18c>
   177f0:	000a0513          	mv	a0,s4
   177f4:	cf5ff0ef          	jal	174e8 <strncpy>
   177f8:	00a00613          	li	a2,10
   177fc:	00c10593          	add	a1,sp,12
   17800:	01210513          	add	a0,sp,18
   17804:	73d040ef          	jal	1c740 <strtol>
   17808:	00c12783          	lw	a5,12(sp)
   1780c:	0007c783          	lbu	a5,0(a5)
   17810:	02079c63          	bnez	a5,17848 <__loadlocale+0x1fc>
   17814:	3a400793          	li	a5,932
   17818:	26f50863          	beq	a0,a5,17a88 <__loadlocale+0x43c>
   1781c:	5aa7c463          	blt	a5,a0,17dc4 <__loadlocale+0x778>
   17820:	36a00793          	li	a5,874
   17824:	02a7c263          	blt	a5,a0,17848 <__loadlocale+0x1fc>
   17828:	35100793          	li	a5,849
   1782c:	5aa7d863          	bge	a5,a0,17ddc <__loadlocale+0x790>
   17830:	010117b7          	lui	a5,0x1011
   17834:	cae50513          	add	a0,a0,-850
   17838:	1a578793          	add	a5,a5,421 # 10111a5 <__BSS_END__+0xfed295>
   1783c:	00a7d7b3          	srl	a5,a5,a0
   17840:	0017f793          	and	a5,a5,1
   17844:	20079463          	bnez	a5,17a4c <__loadlocale+0x400>
   17848:	04012b03          	lw	s6,64(sp)
   1784c:	03c12b83          	lw	s7,60(sp)
   17850:	03812c03          	lw	s8,56(sp)
   17854:	03412c83          	lw	s9,52(sp)
   17858:	03012d03          	lw	s10,48(sp)
   1785c:	ed5ff06f          	j	17730 <__loadlocale+0xe4>
   17860:	00144783          	lbu	a5,1(s0)
   17864:	00100713          	li	a4,1
   17868:	fd378793          	add	a5,a5,-45
   1786c:	0ff7f793          	zext.b	a5,a5
   17870:	ecf760e3          	bltu	a4,a5,17730 <__loadlocale+0xe4>
   17874:	05612023          	sw	s6,64(sp)
   17878:	03712e23          	sw	s7,60(sp)
   1787c:	00240a93          	add	s5,s0,2
   17880:	01010a13          	add	s4,sp,16
   17884:	000a8593          	mv	a1,s5
   17888:	000a0513          	mv	a0,s4
   1788c:	5d5000ef          	jal	18660 <strcpy>
   17890:	04000593          	li	a1,64
   17894:	000a0513          	mv	a0,s4
   17898:	035050ef          	jal	1d0cc <strchr>
   1789c:	00050463          	beqz	a0,178a4 <__loadlocale+0x258>
   178a0:	00050023          	sb	zero,0(a0)
   178a4:	000a0513          	mv	a0,s4
   178a8:	52d000ef          	jal	185d4 <strlen>
   178ac:	00aa8ab3          	add	s5,s5,a0
   178b0:	0200006f          	j	178d0 <__loadlocale+0x284>
   178b4:	01010a13          	add	s4,sp,16
   178b8:	0000a597          	auipc	a1,0xa
   178bc:	2d858593          	add	a1,a1,728 # 21b90 <__clzsi2+0x11c>
   178c0:	000a0513          	mv	a0,s4
   178c4:	05612023          	sw	s6,64(sp)
   178c8:	03712e23          	sw	s7,60(sp)
   178cc:	595000ef          	jal	18660 <strcpy>
   178d0:	000ac703          	lbu	a4,0(s5)
   178d4:	04000793          	li	a5,64
   178d8:	eaf71ae3          	bne	a4,a5,1778c <__loadlocale+0x140>
   178dc:	03812c23          	sw	s8,56(sp)
   178e0:	001a8c13          	add	s8,s5,1
   178e4:	0000a597          	auipc	a1,0xa
   178e8:	2b858593          	add	a1,a1,696 # 21b9c <__clzsi2+0x128>
   178ec:	000c0513          	mv	a0,s8
   178f0:	621000ef          	jal	18710 <strcmp>
   178f4:	00050b13          	mv	s6,a0
   178f8:	00000a93          	li	s5,0
   178fc:	00100b93          	li	s7,1
   17900:	40051463          	bnez	a0,17d08 <__loadlocale+0x6bc>
   17904:	03812c03          	lw	s8,56(sp)
   17908:	e91ff06f          	j	17798 <__loadlocale+0x14c>
   1790c:	04012b03          	lw	s6,64(sp)
   17910:	03c12b83          	lw	s7,60(sp)
   17914:	e1dff06f          	j	17730 <__loadlocale+0xe4>
   17918:	001ac783          	lbu	a5,1(s5)
   1791c:	01900713          	li	a4,25
   17920:	fbf78793          	add	a5,a5,-65
   17924:	0ff7f793          	zext.b	a5,a5
   17928:	e0f764e3          	bltu	a4,a5,17730 <__loadlocale+0xe4>
   1792c:	002ac783          	lbu	a5,2(s5)
   17930:	fbf78793          	add	a5,a5,-65
   17934:	0ff7f793          	zext.b	a5,a5
   17938:	def76ce3          	bltu	a4,a5,17730 <__loadlocale+0xe4>
   1793c:	003ac783          	lbu	a5,3(s5)
   17940:	003a8a93          	add	s5,s5,3
   17944:	dddff06f          	j	17720 <__loadlocale+0xd4>
   17948:	0000a597          	auipc	a1,0xa
   1794c:	27458593          	add	a1,a1,628 # 21bbc <__clzsi2+0x148>
   17950:	000a0513          	mv	a0,s4
   17954:	684050ef          	jal	1cfd8 <strcasecmp>
   17958:	00050c63          	beqz	a0,17970 <__loadlocale+0x324>
   1795c:	0000a597          	auipc	a1,0xa
   17960:	26858593          	add	a1,a1,616 # 21bc4 <__clzsi2+0x150>
   17964:	000a0513          	mv	a0,s4
   17968:	670050ef          	jal	1cfd8 <strcasecmp>
   1796c:	ec051ee3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17970:	0000a597          	auipc	a1,0xa
   17974:	24c58593          	add	a1,a1,588 # 21bbc <__clzsi2+0x148>
   17978:	000a0513          	mv	a0,s4
   1797c:	4e5000ef          	jal	18660 <strcpy>
   17980:	00003c97          	auipc	s9,0x3
   17984:	a60c8c93          	add	s9,s9,-1440 # 1a3e0 <__utf8_mbtowc>
   17988:	00005d17          	auipc	s10,0x5
   1798c:	e04d0d13          	add	s10,s10,-508 # 1c78c <__utf8_wctomb>
   17990:	00600c13          	li	s8,6
   17994:	00200793          	li	a5,2
   17998:	3af98863          	beq	s3,a5,17d48 <__loadlocale+0x6fc>
   1799c:	00600793          	li	a5,6
   179a0:	00f99863          	bne	s3,a5,179b0 <__loadlocale+0x364>
   179a4:	000a0593          	mv	a1,s4
   179a8:	14a90513          	add	a0,s2,330
   179ac:	4b5000ef          	jal	18660 <strcpy>
   179b0:	00040593          	mv	a1,s0
   179b4:	00048513          	mv	a0,s1
   179b8:	4a9000ef          	jal	18660 <strcpy>
   179bc:	05c12083          	lw	ra,92(sp)
   179c0:	05812403          	lw	s0,88(sp)
   179c4:	00050493          	mv	s1,a0
   179c8:	04812a03          	lw	s4,72(sp)
   179cc:	04412a83          	lw	s5,68(sp)
   179d0:	04012b03          	lw	s6,64(sp)
   179d4:	03c12b83          	lw	s7,60(sp)
   179d8:	03812c03          	lw	s8,56(sp)
   179dc:	03412c83          	lw	s9,52(sp)
   179e0:	03012d03          	lw	s10,48(sp)
   179e4:	05012903          	lw	s2,80(sp)
   179e8:	04c12983          	lw	s3,76(sp)
   179ec:	00048513          	mv	a0,s1
   179f0:	05412483          	lw	s1,84(sp)
   179f4:	06010113          	add	sp,sp,96
   179f8:	00008067          	ret
   179fc:	00300613          	li	a2,3
   17a00:	0000a597          	auipc	a1,0xa
   17a04:	24458593          	add	a1,a1,580 # 21c44 <__clzsi2+0x1d0>
   17a08:	000a0513          	mv	a0,s4
   17a0c:	045050ef          	jal	1d250 <strncasecmp>
   17a10:	e2051ce3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17a14:	01314503          	lbu	a0,19(sp)
   17a18:	0000a597          	auipc	a1,0xa
   17a1c:	23058593          	add	a1,a1,560 # 21c48 <__clzsi2+0x1d4>
   17a20:	fd350513          	add	a0,a0,-45
   17a24:	00153513          	seqz	a0,a0
   17a28:	03050793          	add	a5,a0,48
   17a2c:	00278533          	add	a0,a5,sp
   17a30:	fe350513          	add	a0,a0,-29
   17a34:	4dd000ef          	jal	18710 <strcmp>
   17a38:	e00518e3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17a3c:	0000a597          	auipc	a1,0xa
   17a40:	21058593          	add	a1,a1,528 # 21c4c <__clzsi2+0x1d8>
   17a44:	000a0513          	mv	a0,s4
   17a48:	419000ef          	jal	18660 <strcpy>
   17a4c:	00003c97          	auipc	s9,0x3
   17a50:	92cc8c93          	add	s9,s9,-1748 # 1a378 <__ascii_mbtowc>
   17a54:	00005d17          	auipc	s10,0x5
   17a58:	d08d0d13          	add	s10,s10,-760 # 1c75c <__ascii_wctomb>
   17a5c:	00100c13          	li	s8,1
   17a60:	f35ff06f          	j	17994 <__loadlocale+0x348>
   17a64:	0000a597          	auipc	a1,0xa
   17a68:	17c58593          	add	a1,a1,380 # 21be0 <__clzsi2+0x16c>
   17a6c:	000a0513          	mv	a0,s4
   17a70:	568050ef          	jal	1cfd8 <strcasecmp>
   17a74:	dc051ae3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17a78:	0000a597          	auipc	a1,0xa
   17a7c:	16858593          	add	a1,a1,360 # 21be0 <__clzsi2+0x16c>
   17a80:	000a0513          	mv	a0,s4
   17a84:	3dd000ef          	jal	18660 <strcpy>
   17a88:	00003c97          	auipc	s9,0x3
   17a8c:	c50c8c93          	add	s9,s9,-944 # 1a6d8 <__sjis_mbtowc>
   17a90:	00005d17          	auipc	s10,0x5
   17a94:	de8d0d13          	add	s10,s10,-536 # 1c878 <__sjis_wctomb>
   17a98:	00200c13          	li	s8,2
   17a9c:	ef9ff06f          	j	17994 <__loadlocale+0x348>
   17aa0:	0000a597          	auipc	a1,0xa
   17aa4:	19458593          	add	a1,a1,404 # 21c34 <__clzsi2+0x1c0>
   17aa8:	000a0513          	mv	a0,s4
   17aac:	52c050ef          	jal	1cfd8 <strcasecmp>
   17ab0:	d8051ce3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17ab4:	0000a597          	auipc	a1,0xa
   17ab8:	18858593          	add	a1,a1,392 # 21c3c <__clzsi2+0x1c8>
   17abc:	000a0513          	mv	a0,s4
   17ac0:	3a1000ef          	jal	18660 <strcpy>
   17ac4:	f89ff06f          	j	17a4c <__loadlocale+0x400>
   17ac8:	00400613          	li	a2,4
   17acc:	0000a597          	auipc	a1,0xa
   17ad0:	13858593          	add	a1,a1,312 # 21c04 <__clzsi2+0x190>
   17ad4:	000a0513          	mv	a0,s4
   17ad8:	778050ef          	jal	1d250 <strncasecmp>
   17adc:	d60516e3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17ae0:	01414783          	lbu	a5,20(sp)
   17ae4:	02d00713          	li	a4,45
   17ae8:	00e79463          	bne	a5,a4,17af0 <__loadlocale+0x4a4>
   17aec:	01514783          	lbu	a5,21(sp)
   17af0:	0df7f793          	and	a5,a5,223
   17af4:	05200713          	li	a4,82
   17af8:	2ae78c63          	beq	a5,a4,17db0 <__loadlocale+0x764>
   17afc:	05500713          	li	a4,85
   17b00:	d4e794e3          	bne	a5,a4,17848 <__loadlocale+0x1fc>
   17b04:	0000a597          	auipc	a1,0xa
   17b08:	11058593          	add	a1,a1,272 # 21c14 <__clzsi2+0x1a0>
   17b0c:	000a0513          	mv	a0,s4
   17b10:	351000ef          	jal	18660 <strcpy>
   17b14:	f39ff06f          	j	17a4c <__loadlocale+0x400>
   17b18:	0000a597          	auipc	a1,0xa
   17b1c:	0b458593          	add	a1,a1,180 # 21bcc <__clzsi2+0x158>
   17b20:	000a0513          	mv	a0,s4
   17b24:	4b4050ef          	jal	1cfd8 <strcasecmp>
   17b28:	d20510e3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17b2c:	0000a597          	auipc	a1,0xa
   17b30:	0a058593          	add	a1,a1,160 # 21bcc <__clzsi2+0x158>
   17b34:	000a0513          	mv	a0,s4
   17b38:	329000ef          	jal	18660 <strcpy>
   17b3c:	00003c97          	auipc	s9,0x3
   17b40:	f18c8c93          	add	s9,s9,-232 # 1aa54 <__jis_mbtowc>
   17b44:	00005d17          	auipc	s10,0x5
   17b48:	e64d0d13          	add	s10,s10,-412 # 1c9a8 <__jis_wctomb>
   17b4c:	00800c13          	li	s8,8
   17b50:	e45ff06f          	j	17994 <__loadlocale+0x348>
   17b54:	00300613          	li	a2,3
   17b58:	0000a597          	auipc	a1,0xa
   17b5c:	09058593          	add	a1,a1,144 # 21be8 <__clzsi2+0x174>
   17b60:	000a0513          	mv	a0,s4
   17b64:	6ec050ef          	jal	1d250 <strncasecmp>
   17b68:	ce0510e3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17b6c:	01314783          	lbu	a5,19(sp)
   17b70:	00400613          	li	a2,4
   17b74:	0000a597          	auipc	a1,0xa
   17b78:	07858593          	add	a1,a1,120 # 21bec <__clzsi2+0x178>
   17b7c:	fd378793          	add	a5,a5,-45
   17b80:	0017b793          	seqz	a5,a5
   17b84:	03078793          	add	a5,a5,48
   17b88:	002787b3          	add	a5,a5,sp
   17b8c:	fe378c13          	add	s8,a5,-29
   17b90:	000c0513          	mv	a0,s8
   17b94:	6bc050ef          	jal	1d250 <strncasecmp>
   17b98:	ca0518e3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17b9c:	004c4503          	lbu	a0,4(s8)
   17ba0:	00a00613          	li	a2,10
   17ba4:	00c10593          	add	a1,sp,12
   17ba8:	fd350513          	add	a0,a0,-45
   17bac:	00153513          	seqz	a0,a0
   17bb0:	00ac0533          	add	a0,s8,a0
   17bb4:	00450513          	add	a0,a0,4
   17bb8:	389040ef          	jal	1c740 <strtol>
   17bbc:	fff50713          	add	a4,a0,-1
   17bc0:	00f00793          	li	a5,15
   17bc4:	00050c13          	mv	s8,a0
   17bc8:	c8e7e0e3          	bltu	a5,a4,17848 <__loadlocale+0x1fc>
   17bcc:	00c00793          	li	a5,12
   17bd0:	c6f50ce3          	beq	a0,a5,17848 <__loadlocale+0x1fc>
   17bd4:	00c12783          	lw	a5,12(sp)
   17bd8:	0007c783          	lbu	a5,0(a5)
   17bdc:	c60796e3          	bnez	a5,17848 <__loadlocale+0x1fc>
   17be0:	0000a597          	auipc	a1,0xa
   17be4:	01458593          	add	a1,a1,20 # 21bf4 <__clzsi2+0x180>
   17be8:	000a0513          	mv	a0,s4
   17bec:	275000ef          	jal	18660 <strcpy>
   17bf0:	00a00793          	li	a5,10
   17bf4:	01910c93          	add	s9,sp,25
   17bf8:	0187d863          	bge	a5,s8,17c08 <__loadlocale+0x5bc>
   17bfc:	03100793          	li	a5,49
   17c00:	00f10ca3          	sb	a5,25(sp)
   17c04:	01a10c93          	add	s9,sp,26
   17c08:	00a00593          	li	a1,10
   17c0c:	000c0513          	mv	a0,s8
   17c10:	635090ef          	jal	21a44 <__modsi3>
   17c14:	03050793          	add	a5,a0,48
   17c18:	00fc8023          	sb	a5,0(s9)
   17c1c:	000c80a3          	sb	zero,1(s9)
   17c20:	e2dff06f          	j	17a4c <__loadlocale+0x400>
   17c24:	00800613          	li	a2,8
   17c28:	0000a597          	auipc	a1,0xa
   17c2c:	ff458593          	add	a1,a1,-12 # 21c1c <__clzsi2+0x1a8>
   17c30:	000a0513          	mv	a0,s4
   17c34:	61c050ef          	jal	1d250 <strncasecmp>
   17c38:	c00518e3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17c3c:	01814503          	lbu	a0,24(sp)
   17c40:	0000a597          	auipc	a1,0xa
   17c44:	fe858593          	add	a1,a1,-24 # 21c28 <__clzsi2+0x1b4>
   17c48:	fd350513          	add	a0,a0,-45
   17c4c:	00153513          	seqz	a0,a0
   17c50:	03050793          	add	a5,a0,48
   17c54:	00278533          	add	a0,a5,sp
   17c58:	fe850513          	add	a0,a0,-24
   17c5c:	37c050ef          	jal	1cfd8 <strcasecmp>
   17c60:	be0514e3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17c64:	0000a597          	auipc	a1,0xa
   17c68:	fc858593          	add	a1,a1,-56 # 21c2c <__clzsi2+0x1b8>
   17c6c:	000a0513          	mv	a0,s4
   17c70:	1f1000ef          	jal	18660 <strcpy>
   17c74:	dd9ff06f          	j	17a4c <__loadlocale+0x400>
   17c78:	00300613          	li	a2,3
   17c7c:	0000a597          	auipc	a1,0xa
   17c80:	f5458593          	add	a1,a1,-172 # 21bd0 <__clzsi2+0x15c>
   17c84:	000a0513          	mv	a0,s4
   17c88:	5c8050ef          	jal	1d250 <strncasecmp>
   17c8c:	ba051ee3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17c90:	01314503          	lbu	a0,19(sp)
   17c94:	0000a597          	auipc	a1,0xa
   17c98:	f4058593          	add	a1,a1,-192 # 21bd4 <__clzsi2+0x160>
   17c9c:	fd350513          	add	a0,a0,-45
   17ca0:	00153513          	seqz	a0,a0
   17ca4:	03050793          	add	a5,a0,48
   17ca8:	00278533          	add	a0,a5,sp
   17cac:	fe350513          	add	a0,a0,-29
   17cb0:	328050ef          	jal	1cfd8 <strcasecmp>
   17cb4:	b8051ae3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17cb8:	0000a597          	auipc	a1,0xa
   17cbc:	f2058593          	add	a1,a1,-224 # 21bd8 <__clzsi2+0x164>
   17cc0:	000a0513          	mv	a0,s4
   17cc4:	19d000ef          	jal	18660 <strcpy>
   17cc8:	00003c97          	auipc	s9,0x3
   17ccc:	b80c8c93          	add	s9,s9,-1152 # 1a848 <__eucjp_mbtowc>
   17cd0:	00005d17          	auipc	s10,0x5
   17cd4:	c2cd0d13          	add	s10,s10,-980 # 1c8fc <__eucjp_wctomb>
   17cd8:	00300c13          	li	s8,3
   17cdc:	cb9ff06f          	j	17994 <__loadlocale+0x348>
   17ce0:	0000a597          	auipc	a1,0xa
   17ce4:	ea858593          	add	a1,a1,-344 # 21b88 <__clzsi2+0x114>
   17ce8:	000a0513          	mv	a0,s4
   17cec:	2ec050ef          	jal	1cfd8 <strcasecmp>
   17cf0:	b4051ce3          	bnez	a0,17848 <__loadlocale+0x1fc>
   17cf4:	0000a597          	auipc	a1,0xa
   17cf8:	e9458593          	add	a1,a1,-364 # 21b88 <__clzsi2+0x114>
   17cfc:	000a0513          	mv	a0,s4
   17d00:	161000ef          	jal	18660 <strcpy>
   17d04:	d49ff06f          	j	17a4c <__loadlocale+0x400>
   17d08:	0000a597          	auipc	a1,0xa
   17d0c:	ea058593          	add	a1,a1,-352 # 21ba8 <__clzsi2+0x134>
   17d10:	000c0513          	mv	a0,s8
   17d14:	1fd000ef          	jal	18710 <strcmp>
   17d18:	00050a93          	mv	s5,a0
   17d1c:	00000b93          	li	s7,0
   17d20:	00100b13          	li	s6,1
   17d24:	be0500e3          	beqz	a0,17904 <__loadlocale+0x2b8>
   17d28:	000c0513          	mv	a0,s8
   17d2c:	0000a597          	auipc	a1,0xa
   17d30:	e8858593          	add	a1,a1,-376 # 21bb4 <__clzsi2+0x140>
   17d34:	1dd000ef          	jal	18710 <strcmp>
   17d38:	00153a93          	seqz	s5,a0
   17d3c:	03812c03          	lw	s8,56(sp)
   17d40:	00000b13          	li	s6,0
   17d44:	a55ff06f          	j	17798 <__loadlocale+0x14c>
   17d48:	000a0593          	mv	a1,s4
   17d4c:	12a90513          	add	a0,s2,298
   17d50:	111000ef          	jal	18660 <strcpy>
   17d54:	000a0593          	mv	a1,s4
   17d58:	13890423          	sb	s8,296(s2)
   17d5c:	0fa92023          	sw	s10,224(s2)
   17d60:	0f992223          	sw	s9,228(s2)
   17d64:	00090513          	mv	a0,s2
   17d68:	651040ef          	jal	1cbb8 <__set_ctype>
   17d6c:	000a9e63          	bnez	s5,17d88 <__loadlocale+0x73c>
   17d70:	000b1c63          	bnez	s6,17d88 <__loadlocale+0x73c>
   17d74:	00100793          	li	a5,1
   17d78:	00fc0863          	beq	s8,a5,17d88 <__loadlocale+0x73c>
   17d7c:	01014a83          	lbu	s5,16(sp)
   17d80:	faba8a93          	add	s5,s5,-85
   17d84:	01503ab3          	snez	s5,s5
   17d88:	000b9663          	bnez	s7,17d94 <__loadlocale+0x748>
   17d8c:	0f592423          	sw	s5,232(s2)
   17d90:	c21ff06f          	j	179b0 <__loadlocale+0x364>
   17d94:	fff00793          	li	a5,-1
   17d98:	0ef92423          	sw	a5,232(s2)
   17d9c:	c15ff06f          	j	179b0 <__loadlocale+0x364>
   17da0:	05612023          	sw	s6,64(sp)
   17da4:	03712e23          	sw	s7,60(sp)
   17da8:	001a8a93          	add	s5,s5,1
   17dac:	ad5ff06f          	j	17880 <__loadlocale+0x234>
   17db0:	0000a597          	auipc	a1,0xa
   17db4:	e5c58593          	add	a1,a1,-420 # 21c0c <__clzsi2+0x198>
   17db8:	000a0513          	mv	a0,s4
   17dbc:	0a5000ef          	jal	18660 <strcpy>
   17dc0:	c8dff06f          	j	17a4c <__loadlocale+0x400>
   17dc4:	46500793          	li	a5,1125
   17dc8:	c8f502e3          	beq	a0,a5,17a4c <__loadlocale+0x400>
   17dcc:	b1e50513          	add	a0,a0,-1250
   17dd0:	00800793          	li	a5,8
   17dd4:	c6a7fce3          	bgeu	a5,a0,17a4c <__loadlocale+0x400>
   17dd8:	a71ff06f          	j	17848 <__loadlocale+0x1fc>
   17ddc:	2e100793          	li	a5,737
   17de0:	c6f506e3          	beq	a0,a5,17a4c <__loadlocale+0x400>
   17de4:	00a7cc63          	blt	a5,a0,17dfc <__loadlocale+0x7b0>
   17de8:	1b500793          	li	a5,437
   17dec:	c6f500e3          	beq	a0,a5,17a4c <__loadlocale+0x400>
   17df0:	2d000793          	li	a5,720
   17df4:	a4f51ae3          	bne	a0,a5,17848 <__loadlocale+0x1fc>
   17df8:	c55ff06f          	j	17a4c <__loadlocale+0x400>
   17dfc:	30700793          	li	a5,775
   17e00:	a4f514e3          	bne	a0,a5,17848 <__loadlocale+0x1fc>
   17e04:	c49ff06f          	j	17a4c <__loadlocale+0x400>

00017e08 <__get_locale_env>:
   17e08:	ff010113          	add	sp,sp,-16
   17e0c:	00812423          	sw	s0,8(sp)
   17e10:	00058413          	mv	s0,a1
   17e14:	0000a597          	auipc	a1,0xa
   17e18:	e4058593          	add	a1,a1,-448 # 21c54 <__clzsi2+0x1e0>
   17e1c:	00912223          	sw	s1,4(sp)
   17e20:	00112623          	sw	ra,12(sp)
   17e24:	00050493          	mv	s1,a0
   17e28:	52c020ef          	jal	1a354 <_getenv_r>
   17e2c:	00050663          	beqz	a0,17e38 <__get_locale_env+0x30>
   17e30:	00054783          	lbu	a5,0(a0)
   17e34:	04079663          	bnez	a5,17e80 <__get_locale_env+0x78>
   17e38:	00241793          	sll	a5,s0,0x2
   17e3c:	0000a717          	auipc	a4,0xa
   17e40:	5c470713          	add	a4,a4,1476 # 22400 <categories>
   17e44:	00f707b3          	add	a5,a4,a5
   17e48:	0007a583          	lw	a1,0(a5)
   17e4c:	00048513          	mv	a0,s1
   17e50:	504020ef          	jal	1a354 <_getenv_r>
   17e54:	00050663          	beqz	a0,17e60 <__get_locale_env+0x58>
   17e58:	00054783          	lbu	a5,0(a0)
   17e5c:	02079263          	bnez	a5,17e80 <__get_locale_env+0x78>
   17e60:	0000a597          	auipc	a1,0xa
   17e64:	dfc58593          	add	a1,a1,-516 # 21c5c <__clzsi2+0x1e8>
   17e68:	00048513          	mv	a0,s1
   17e6c:	4e8020ef          	jal	1a354 <_getenv_r>
   17e70:	00050663          	beqz	a0,17e7c <__get_locale_env+0x74>
   17e74:	00054783          	lbu	a5,0(a0)
   17e78:	00079463          	bnez	a5,17e80 <__get_locale_env+0x78>
   17e7c:	ea418513          	add	a0,gp,-348 # 23874 <__default_locale>
   17e80:	00c12083          	lw	ra,12(sp)
   17e84:	00812403          	lw	s0,8(sp)
   17e88:	00412483          	lw	s1,4(sp)
   17e8c:	01010113          	add	sp,sp,16
   17e90:	00008067          	ret

00017e94 <_setlocale_r>:
   17e94:	fd010113          	add	sp,sp,-48
   17e98:	01312e23          	sw	s3,28(sp)
   17e9c:	02112623          	sw	ra,44(sp)
   17ea0:	01512a23          	sw	s5,20(sp)
   17ea4:	00600793          	li	a5,6
   17ea8:	00050993          	mv	s3,a0
   17eac:	1ab7e063          	bltu	a5,a1,1804c <_setlocale_r+0x1b8>
   17eb0:	01612823          	sw	s6,16(sp)
   17eb4:	01712623          	sw	s7,12(sp)
   17eb8:	00060b13          	mv	s6,a2
   17ebc:	00058b93          	mv	s7,a1
   17ec0:	28060863          	beqz	a2,18150 <_setlocale_r+0x2bc>
   17ec4:	03212023          	sw	s2,32(sp)
   17ec8:	01412c23          	sw	s4,24(sp)
   17ecc:	d5818913          	add	s2,gp,-680 # 23728 <__global_locale+0x20>
   17ed0:	39818a13          	add	s4,gp,920 # 23d68 <new_categories.1+0x20>
   17ed4:	02812423          	sw	s0,40(sp)
   17ed8:	02912223          	sw	s1,36(sp)
   17edc:	45818a93          	add	s5,gp,1112 # 23e28 <global_locale_string>
   17ee0:	00090493          	mv	s1,s2
   17ee4:	000a0413          	mv	s0,s4
   17ee8:	00048593          	mv	a1,s1
   17eec:	00040513          	mv	a0,s0
   17ef0:	02040413          	add	s0,s0,32
   17ef4:	76c000ef          	jal	18660 <strcpy>
   17ef8:	02048493          	add	s1,s1,32
   17efc:	ff5416e3          	bne	s0,s5,17ee8 <_setlocale_r+0x54>
   17f00:	000b4783          	lbu	a5,0(s6)
   17f04:	0c079663          	bnez	a5,17fd0 <_setlocale_r+0x13c>
   17f08:	260b9a63          	bnez	s7,1817c <_setlocale_r+0x2e8>
   17f0c:	39818a93          	add	s5,gp,920 # 23d68 <new_categories.1+0x20>
   17f10:	00100413          	li	s0,1
   17f14:	01f00b13          	li	s6,31
   17f18:	00700b93          	li	s7,7
   17f1c:	00040593          	mv	a1,s0
   17f20:	00098513          	mv	a0,s3
   17f24:	ee5ff0ef          	jal	17e08 <__get_locale_env>
   17f28:	00050493          	mv	s1,a0
   17f2c:	6a8000ef          	jal	185d4 <strlen>
   17f30:	00050793          	mv	a5,a0
   17f34:	00048593          	mv	a1,s1
   17f38:	000a8513          	mv	a0,s5
   17f3c:	0efb6c63          	bltu	s6,a5,18034 <_setlocale_r+0x1a0>
   17f40:	00140413          	add	s0,s0,1
   17f44:	71c000ef          	jal	18660 <strcpy>
   17f48:	020a8a93          	add	s5,s5,32
   17f4c:	fd7418e3          	bne	s0,s7,17f1c <_setlocale_r+0x88>
   17f50:	01812423          	sw	s8,8(sp)
   17f54:	2b818c13          	add	s8,gp,696 # 23c88 <saved_categories.0+0x20>
   17f58:	39818a93          	add	s5,gp,920 # 23d68 <new_categories.1+0x20>
   17f5c:	000c0493          	mv	s1,s8
   17f60:	00100413          	li	s0,1
   17f64:	d3818b93          	add	s7,gp,-712 # 23708 <__global_locale>
   17f68:	00700b13          	li	s6,7
   17f6c:	00090593          	mv	a1,s2
   17f70:	00048513          	mv	a0,s1
   17f74:	6ec000ef          	jal	18660 <strcpy>
   17f78:	000a8613          	mv	a2,s5
   17f7c:	00040593          	mv	a1,s0
   17f80:	000b8513          	mv	a0,s7
   17f84:	ec8ff0ef          	jal	1764c <__loadlocale>
   17f88:	22050663          	beqz	a0,181b4 <_setlocale_r+0x320>
   17f8c:	00140413          	add	s0,s0,1
   17f90:	02048493          	add	s1,s1,32
   17f94:	02090913          	add	s2,s2,32
   17f98:	020a8a93          	add	s5,s5,32
   17f9c:	fd6418e3          	bne	s0,s6,17f6c <_setlocale_r+0xd8>
   17fa0:	02812403          	lw	s0,40(sp)
   17fa4:	02412483          	lw	s1,36(sp)
   17fa8:	02012903          	lw	s2,32(sp)
   17fac:	01812a03          	lw	s4,24(sp)
   17fb0:	01012b03          	lw	s6,16(sp)
   17fb4:	00c12b83          	lw	s7,12(sp)
   17fb8:	00812c03          	lw	s8,8(sp)
   17fbc:	02c12083          	lw	ra,44(sp)
   17fc0:	01c12983          	lw	s3,28(sp)
   17fc4:	01412a83          	lw	s5,20(sp)
   17fc8:	03010113          	add	sp,sp,48
   17fcc:	dc8ff06f          	j	17594 <currentlocale>
   17fd0:	080b8e63          	beqz	s7,1806c <_setlocale_r+0x1d8>
   17fd4:	000b0513          	mv	a0,s6
   17fd8:	5fc000ef          	jal	185d4 <strlen>
   17fdc:	01f00793          	li	a5,31
   17fe0:	04a7ea63          	bltu	a5,a0,18034 <_setlocale_r+0x1a0>
   17fe4:	005b9413          	sll	s0,s7,0x5
   17fe8:	37818793          	add	a5,gp,888 # 23d48 <new_categories.1>
   17fec:	00f40433          	add	s0,s0,a5
   17ff0:	000b0593          	mv	a1,s6
   17ff4:	00040513          	mv	a0,s0
   17ff8:	668000ef          	jal	18660 <strcpy>
   17ffc:	00040613          	mv	a2,s0
   18000:	02812403          	lw	s0,40(sp)
   18004:	02412483          	lw	s1,36(sp)
   18008:	02012903          	lw	s2,32(sp)
   1800c:	01812a03          	lw	s4,24(sp)
   18010:	01012b03          	lw	s6,16(sp)
   18014:	02c12083          	lw	ra,44(sp)
   18018:	01c12983          	lw	s3,28(sp)
   1801c:	01412a83          	lw	s5,20(sp)
   18020:	000b8593          	mv	a1,s7
   18024:	00c12b83          	lw	s7,12(sp)
   18028:	d3818513          	add	a0,gp,-712 # 23708 <__global_locale>
   1802c:	03010113          	add	sp,sp,48
   18030:	e1cff06f          	j	1764c <__loadlocale>
   18034:	02812403          	lw	s0,40(sp)
   18038:	02412483          	lw	s1,36(sp)
   1803c:	02012903          	lw	s2,32(sp)
   18040:	01812a03          	lw	s4,24(sp)
   18044:	01012b03          	lw	s6,16(sp)
   18048:	00c12b83          	lw	s7,12(sp)
   1804c:	01600a93          	li	s5,22
   18050:	02c12083          	lw	ra,44(sp)
   18054:	0159a023          	sw	s5,0(s3)
   18058:	00000513          	li	a0,0
   1805c:	01c12983          	lw	s3,28(sp)
   18060:	01412a83          	lw	s5,20(sp)
   18064:	03010113          	add	sp,sp,48
   18068:	00008067          	ret
   1806c:	02f00593          	li	a1,47
   18070:	000b0513          	mv	a0,s6
   18074:	058050ef          	jal	1d0cc <strchr>
   18078:	00050413          	mv	s0,a0
   1807c:	1c050863          	beqz	a0,1824c <_setlocale_r+0x3b8>
   18080:	00154783          	lbu	a5,1(a0)
   18084:	02f00693          	li	a3,47
   18088:	02f00713          	li	a4,47
   1808c:	00d79863          	bne	a5,a3,1809c <_setlocale_r+0x208>
   18090:	00244783          	lbu	a5,2(s0)
   18094:	00140413          	add	s0,s0,1
   18098:	fee78ce3          	beq	a5,a4,18090 <_setlocale_r+0x1fc>
   1809c:	f8078ce3          	beqz	a5,18034 <_setlocale_r+0x1a0>
   180a0:	01812423          	sw	s8,8(sp)
   180a4:	01912223          	sw	s9,4(sp)
   180a8:	01a12023          	sw	s10,0(sp)
   180ac:	00100c93          	li	s9,1
   180b0:	39818d13          	add	s10,gp,920 # 23d68 <new_categories.1+0x20>
   180b4:	01f00b93          	li	s7,31
   180b8:	02f00493          	li	s1,47
   180bc:	00700c13          	li	s8,7
   180c0:	41640633          	sub	a2,s0,s6
   180c4:	1acbcc63          	blt	s7,a2,1827c <_setlocale_r+0x3e8>
   180c8:	00160613          	add	a2,a2,1
   180cc:	000b0593          	mv	a1,s6
   180d0:	000d0513          	mv	a0,s10
   180d4:	138050ef          	jal	1d20c <strlcpy>
   180d8:	00044783          	lbu	a5,0(s0)
   180dc:	001c8c93          	add	s9,s9,1
   180e0:	00979863          	bne	a5,s1,180f0 <_setlocale_r+0x25c>
   180e4:	00144783          	lbu	a5,1(s0)
   180e8:	00140413          	add	s0,s0,1
   180ec:	fe978ce3          	beq	a5,s1,180e4 <_setlocale_r+0x250>
   180f0:	02078663          	beqz	a5,1811c <_setlocale_r+0x288>
   180f4:	00040793          	mv	a5,s0
   180f8:	0017c703          	lbu	a4,1(a5)
   180fc:	00178793          	add	a5,a5,1
   18100:	00070463          	beqz	a4,18108 <_setlocale_r+0x274>
   18104:	fe971ae3          	bne	a4,s1,180f8 <_setlocale_r+0x264>
   18108:	020d0d13          	add	s10,s10,32
   1810c:	038c8c63          	beq	s9,s8,18144 <_setlocale_r+0x2b0>
   18110:	00040b13          	mv	s6,s0
   18114:	00078413          	mv	s0,a5
   18118:	fa9ff06f          	j	180c0 <_setlocale_r+0x22c>
   1811c:	00700793          	li	a5,7
   18120:	02fc8263          	beq	s9,a5,18144 <_setlocale_r+0x2b0>
   18124:	005c9413          	sll	s0,s9,0x5
   18128:	37818793          	add	a5,gp,888 # 23d48 <new_categories.1>
   1812c:	00f40433          	add	s0,s0,a5
   18130:	fe040593          	add	a1,s0,-32
   18134:	00040513          	mv	a0,s0
   18138:	02040413          	add	s0,s0,32
   1813c:	524000ef          	jal	18660 <strcpy>
   18140:	ff5418e3          	bne	s0,s5,18130 <_setlocale_r+0x29c>
   18144:	00412c83          	lw	s9,4(sp)
   18148:	00012d03          	lw	s10,0(sp)
   1814c:	e09ff06f          	j	17f54 <_setlocale_r+0xc0>
   18150:	0e058863          	beqz	a1,18240 <_setlocale_r+0x3ac>
   18154:	02c12083          	lw	ra,44(sp)
   18158:	00559513          	sll	a0,a1,0x5
   1815c:	d3818793          	add	a5,gp,-712 # 23708 <__global_locale>
   18160:	01012b03          	lw	s6,16(sp)
   18164:	00c12b83          	lw	s7,12(sp)
   18168:	01c12983          	lw	s3,28(sp)
   1816c:	01412a83          	lw	s5,20(sp)
   18170:	00f50533          	add	a0,a0,a5
   18174:	03010113          	add	sp,sp,48
   18178:	00008067          	ret
   1817c:	000b8593          	mv	a1,s7
   18180:	00098513          	mv	a0,s3
   18184:	c85ff0ef          	jal	17e08 <__get_locale_env>
   18188:	00050493          	mv	s1,a0
   1818c:	448000ef          	jal	185d4 <strlen>
   18190:	01f00793          	li	a5,31
   18194:	eaa7e0e3          	bltu	a5,a0,18034 <_setlocale_r+0x1a0>
   18198:	005b9413          	sll	s0,s7,0x5
   1819c:	37818793          	add	a5,gp,888 # 23d48 <new_categories.1>
   181a0:	00f40433          	add	s0,s0,a5
   181a4:	00048593          	mv	a1,s1
   181a8:	00040513          	mv	a0,s0
   181ac:	4b4000ef          	jal	18660 <strcpy>
   181b0:	e4dff06f          	j	17ffc <_setlocale_r+0x168>
   181b4:	00100493          	li	s1,1
   181b8:	0009aa83          	lw	s5,0(s3)
   181bc:	d3818913          	add	s2,gp,-712 # 23708 <__global_locale>
   181c0:	0000ab17          	auipc	s6,0xa
   181c4:	9c4b0b13          	add	s6,s6,-1596 # 21b84 <__clzsi2+0x110>
   181c8:	00941c63          	bne	s0,s1,181e0 <_setlocale_r+0x34c>
   181cc:	0540006f          	j	18220 <_setlocale_r+0x38c>
   181d0:	00148493          	add	s1,s1,1
   181d4:	020a0a13          	add	s4,s4,32
   181d8:	020c0c13          	add	s8,s8,32
   181dc:	04848263          	beq	s1,s0,18220 <_setlocale_r+0x38c>
   181e0:	000c0593          	mv	a1,s8
   181e4:	000a0513          	mv	a0,s4
   181e8:	478000ef          	jal	18660 <strcpy>
   181ec:	000a0613          	mv	a2,s4
   181f0:	00048593          	mv	a1,s1
   181f4:	00090513          	mv	a0,s2
   181f8:	c54ff0ef          	jal	1764c <__loadlocale>
   181fc:	fc051ae3          	bnez	a0,181d0 <_setlocale_r+0x33c>
   18200:	000b0593          	mv	a1,s6
   18204:	000a0513          	mv	a0,s4
   18208:	458000ef          	jal	18660 <strcpy>
   1820c:	000a0613          	mv	a2,s4
   18210:	00048593          	mv	a1,s1
   18214:	00090513          	mv	a0,s2
   18218:	c34ff0ef          	jal	1764c <__loadlocale>
   1821c:	fb5ff06f          	j	181d0 <_setlocale_r+0x33c>
   18220:	02812403          	lw	s0,40(sp)
   18224:	02412483          	lw	s1,36(sp)
   18228:	02012903          	lw	s2,32(sp)
   1822c:	01812a03          	lw	s4,24(sp)
   18230:	01012b03          	lw	s6,16(sp)
   18234:	00c12b83          	lw	s7,12(sp)
   18238:	00812c03          	lw	s8,8(sp)
   1823c:	e15ff06f          	j	18050 <_setlocale_r+0x1bc>
   18240:	01012b03          	lw	s6,16(sp)
   18244:	00c12b83          	lw	s7,12(sp)
   18248:	d75ff06f          	j	17fbc <_setlocale_r+0x128>
   1824c:	000b0513          	mv	a0,s6
   18250:	384000ef          	jal	185d4 <strlen>
   18254:	01f00793          	li	a5,31
   18258:	dca7eee3          	bltu	a5,a0,18034 <_setlocale_r+0x1a0>
   1825c:	01812423          	sw	s8,8(sp)
   18260:	39818413          	add	s0,gp,920 # 23d68 <new_categories.1+0x20>
   18264:	00040513          	mv	a0,s0
   18268:	000b0593          	mv	a1,s6
   1826c:	02040413          	add	s0,s0,32
   18270:	3f0000ef          	jal	18660 <strcpy>
   18274:	ff5418e3          	bne	s0,s5,18264 <_setlocale_r+0x3d0>
   18278:	cddff06f          	j	17f54 <_setlocale_r+0xc0>
   1827c:	02812403          	lw	s0,40(sp)
   18280:	02412483          	lw	s1,36(sp)
   18284:	02012903          	lw	s2,32(sp)
   18288:	01812a03          	lw	s4,24(sp)
   1828c:	01012b03          	lw	s6,16(sp)
   18290:	00c12b83          	lw	s7,12(sp)
   18294:	00812c03          	lw	s8,8(sp)
   18298:	00412c83          	lw	s9,4(sp)
   1829c:	00012d03          	lw	s10,0(sp)
   182a0:	dadff06f          	j	1804c <_setlocale_r+0x1b8>

000182a4 <__locale_mb_cur_max>:
   182a4:	e601c503          	lbu	a0,-416(gp) # 23830 <__global_locale+0x128>
   182a8:	00008067          	ret

000182ac <setlocale>:
   182ac:	00058613          	mv	a2,a1
   182b0:	00050593          	mv	a1,a0
   182b4:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   182b8:	bddff06f          	j	17e94 <_setlocale_r>

000182bc <__localeconv_l>:
   182bc:	0f050513          	add	a0,a0,240
   182c0:	00008067          	ret

000182c4 <_localeconv_r>:
   182c4:	e2818513          	add	a0,gp,-472 # 237f8 <__global_locale+0xf0>
   182c8:	00008067          	ret

000182cc <localeconv>:
   182cc:	e2818513          	add	a0,gp,-472 # 237f8 <__global_locale+0xf0>
   182d0:	00008067          	ret

000182d4 <_sbrk_r>:
   182d4:	ff010113          	add	sp,sp,-16
   182d8:	00812423          	sw	s0,8(sp)
   182dc:	00050413          	mv	s0,a0
   182e0:	00058513          	mv	a0,a1
   182e4:	f401a823          	sw	zero,-176(gp) # 23920 <errno>
   182e8:	00112623          	sw	ra,12(sp)
   182ec:	575050ef          	jal	1e060 <_sbrk>
   182f0:	fff00793          	li	a5,-1
   182f4:	00f50a63          	beq	a0,a5,18308 <_sbrk_r+0x34>
   182f8:	00c12083          	lw	ra,12(sp)
   182fc:	00812403          	lw	s0,8(sp)
   18300:	01010113          	add	sp,sp,16
   18304:	00008067          	ret
   18308:	f501a783          	lw	a5,-176(gp) # 23920 <errno>
   1830c:	fe0786e3          	beqz	a5,182f8 <_sbrk_r+0x24>
   18310:	00c12083          	lw	ra,12(sp)
   18314:	00f42023          	sw	a5,0(s0)
   18318:	00812403          	lw	s0,8(sp)
   1831c:	01010113          	add	sp,sp,16
   18320:	00008067          	ret

00018324 <memmove>:
   18324:	02a5f663          	bgeu	a1,a0,18350 <memmove+0x2c>
   18328:	00c58733          	add	a4,a1,a2
   1832c:	02e57263          	bgeu	a0,a4,18350 <memmove+0x2c>
   18330:	00c507b3          	add	a5,a0,a2
   18334:	04060663          	beqz	a2,18380 <memmove+0x5c>
   18338:	fff74683          	lbu	a3,-1(a4)
   1833c:	fff78793          	add	a5,a5,-1
   18340:	fff70713          	add	a4,a4,-1
   18344:	00d78023          	sb	a3,0(a5)
   18348:	fef518e3          	bne	a0,a5,18338 <memmove+0x14>
   1834c:	00008067          	ret
   18350:	00f00793          	li	a5,15
   18354:	02c7e863          	bltu	a5,a2,18384 <memmove+0x60>
   18358:	00050793          	mv	a5,a0
   1835c:	fff60693          	add	a3,a2,-1
   18360:	0c060263          	beqz	a2,18424 <memmove+0x100>
   18364:	00168693          	add	a3,a3,1 # 2001 <exit-0xe093>
   18368:	00d786b3          	add	a3,a5,a3
   1836c:	0005c703          	lbu	a4,0(a1)
   18370:	00178793          	add	a5,a5,1
   18374:	00158593          	add	a1,a1,1
   18378:	fee78fa3          	sb	a4,-1(a5)
   1837c:	fed798e3          	bne	a5,a3,1836c <memmove+0x48>
   18380:	00008067          	ret
   18384:	00b567b3          	or	a5,a0,a1
   18388:	0037f793          	and	a5,a5,3
   1838c:	08079663          	bnez	a5,18418 <memmove+0xf4>
   18390:	ff060893          	add	a7,a2,-16
   18394:	ff08f893          	and	a7,a7,-16
   18398:	01088893          	add	a7,a7,16
   1839c:	011506b3          	add	a3,a0,a7
   183a0:	00058713          	mv	a4,a1
   183a4:	00050793          	mv	a5,a0
   183a8:	00072803          	lw	a6,0(a4)
   183ac:	01070713          	add	a4,a4,16
   183b0:	01078793          	add	a5,a5,16
   183b4:	ff07a823          	sw	a6,-16(a5)
   183b8:	ff472803          	lw	a6,-12(a4)
   183bc:	ff07aa23          	sw	a6,-12(a5)
   183c0:	ff872803          	lw	a6,-8(a4)
   183c4:	ff07ac23          	sw	a6,-8(a5)
   183c8:	ffc72803          	lw	a6,-4(a4)
   183cc:	ff07ae23          	sw	a6,-4(a5)
   183d0:	fcd79ce3          	bne	a5,a3,183a8 <memmove+0x84>
   183d4:	00c67813          	and	a6,a2,12
   183d8:	011585b3          	add	a1,a1,a7
   183dc:	00f67713          	and	a4,a2,15
   183e0:	04080463          	beqz	a6,18428 <memmove+0x104>
   183e4:	ffc70813          	add	a6,a4,-4
   183e8:	ffc87813          	and	a6,a6,-4
   183ec:	00480813          	add	a6,a6,4
   183f0:	010687b3          	add	a5,a3,a6
   183f4:	00058713          	mv	a4,a1
   183f8:	00072883          	lw	a7,0(a4)
   183fc:	00468693          	add	a3,a3,4
   18400:	00470713          	add	a4,a4,4
   18404:	ff16ae23          	sw	a7,-4(a3)
   18408:	fef698e3          	bne	a3,a5,183f8 <memmove+0xd4>
   1840c:	00367613          	and	a2,a2,3
   18410:	010585b3          	add	a1,a1,a6
   18414:	f49ff06f          	j	1835c <memmove+0x38>
   18418:	fff60693          	add	a3,a2,-1
   1841c:	00050793          	mv	a5,a0
   18420:	f45ff06f          	j	18364 <memmove+0x40>
   18424:	00008067          	ret
   18428:	00070613          	mv	a2,a4
   1842c:	f31ff06f          	j	1835c <memmove+0x38>

00018430 <memcpy>:
   18430:	00a5c7b3          	xor	a5,a1,a0
   18434:	0037f793          	and	a5,a5,3
   18438:	00c508b3          	add	a7,a0,a2
   1843c:	06079463          	bnez	a5,184a4 <memcpy+0x74>
   18440:	00300793          	li	a5,3
   18444:	06c7f063          	bgeu	a5,a2,184a4 <memcpy+0x74>
   18448:	00357793          	and	a5,a0,3
   1844c:	00050713          	mv	a4,a0
   18450:	06079a63          	bnez	a5,184c4 <memcpy+0x94>
   18454:	ffc8f613          	and	a2,a7,-4
   18458:	40e606b3          	sub	a3,a2,a4
   1845c:	02000793          	li	a5,32
   18460:	08d7ce63          	blt	a5,a3,184fc <memcpy+0xcc>
   18464:	00058693          	mv	a3,a1
   18468:	00070793          	mv	a5,a4
   1846c:	02c77863          	bgeu	a4,a2,1849c <memcpy+0x6c>
   18470:	0006a803          	lw	a6,0(a3)
   18474:	00478793          	add	a5,a5,4
   18478:	00468693          	add	a3,a3,4
   1847c:	ff07ae23          	sw	a6,-4(a5)
   18480:	fec7e8e3          	bltu	a5,a2,18470 <memcpy+0x40>
   18484:	fff60793          	add	a5,a2,-1
   18488:	40e787b3          	sub	a5,a5,a4
   1848c:	ffc7f793          	and	a5,a5,-4
   18490:	00478793          	add	a5,a5,4
   18494:	00f70733          	add	a4,a4,a5
   18498:	00f585b3          	add	a1,a1,a5
   1849c:	01176863          	bltu	a4,a7,184ac <memcpy+0x7c>
   184a0:	00008067          	ret
   184a4:	00050713          	mv	a4,a0
   184a8:	05157863          	bgeu	a0,a7,184f8 <memcpy+0xc8>
   184ac:	0005c783          	lbu	a5,0(a1)
   184b0:	00170713          	add	a4,a4,1
   184b4:	00158593          	add	a1,a1,1
   184b8:	fef70fa3          	sb	a5,-1(a4)
   184bc:	fee898e3          	bne	a7,a4,184ac <memcpy+0x7c>
   184c0:	00008067          	ret
   184c4:	0005c683          	lbu	a3,0(a1)
   184c8:	00170713          	add	a4,a4,1
   184cc:	00377793          	and	a5,a4,3
   184d0:	fed70fa3          	sb	a3,-1(a4)
   184d4:	00158593          	add	a1,a1,1
   184d8:	f6078ee3          	beqz	a5,18454 <memcpy+0x24>
   184dc:	0005c683          	lbu	a3,0(a1)
   184e0:	00170713          	add	a4,a4,1
   184e4:	00377793          	and	a5,a4,3
   184e8:	fed70fa3          	sb	a3,-1(a4)
   184ec:	00158593          	add	a1,a1,1
   184f0:	fc079ae3          	bnez	a5,184c4 <memcpy+0x94>
   184f4:	f61ff06f          	j	18454 <memcpy+0x24>
   184f8:	00008067          	ret
   184fc:	ff010113          	add	sp,sp,-16
   18500:	00812623          	sw	s0,12(sp)
   18504:	02000413          	li	s0,32
   18508:	0005a383          	lw	t2,0(a1)
   1850c:	0045a283          	lw	t0,4(a1)
   18510:	0085af83          	lw	t6,8(a1)
   18514:	00c5af03          	lw	t5,12(a1)
   18518:	0105ae83          	lw	t4,16(a1)
   1851c:	0145ae03          	lw	t3,20(a1)
   18520:	0185a303          	lw	t1,24(a1)
   18524:	01c5a803          	lw	a6,28(a1)
   18528:	0205a683          	lw	a3,32(a1)
   1852c:	02470713          	add	a4,a4,36
   18530:	40e607b3          	sub	a5,a2,a4
   18534:	fc772e23          	sw	t2,-36(a4)
   18538:	fe572023          	sw	t0,-32(a4)
   1853c:	fff72223          	sw	t6,-28(a4)
   18540:	ffe72423          	sw	t5,-24(a4)
   18544:	ffd72623          	sw	t4,-20(a4)
   18548:	ffc72823          	sw	t3,-16(a4)
   1854c:	fe672a23          	sw	t1,-12(a4)
   18550:	ff072c23          	sw	a6,-8(a4)
   18554:	fed72e23          	sw	a3,-4(a4)
   18558:	02458593          	add	a1,a1,36
   1855c:	faf446e3          	blt	s0,a5,18508 <memcpy+0xd8>
   18560:	00058693          	mv	a3,a1
   18564:	00070793          	mv	a5,a4
   18568:	02c77863          	bgeu	a4,a2,18598 <memcpy+0x168>
   1856c:	0006a803          	lw	a6,0(a3)
   18570:	00478793          	add	a5,a5,4
   18574:	00468693          	add	a3,a3,4
   18578:	ff07ae23          	sw	a6,-4(a5)
   1857c:	fec7e8e3          	bltu	a5,a2,1856c <memcpy+0x13c>
   18580:	fff60793          	add	a5,a2,-1
   18584:	40e787b3          	sub	a5,a5,a4
   18588:	ffc7f793          	and	a5,a5,-4
   1858c:	00478793          	add	a5,a5,4
   18590:	00f70733          	add	a4,a4,a5
   18594:	00f585b3          	add	a1,a1,a5
   18598:	01176863          	bltu	a4,a7,185a8 <memcpy+0x178>
   1859c:	00c12403          	lw	s0,12(sp)
   185a0:	01010113          	add	sp,sp,16
   185a4:	00008067          	ret
   185a8:	0005c783          	lbu	a5,0(a1)
   185ac:	00170713          	add	a4,a4,1
   185b0:	00158593          	add	a1,a1,1
   185b4:	fef70fa3          	sb	a5,-1(a4)
   185b8:	fee882e3          	beq	a7,a4,1859c <memcpy+0x16c>
   185bc:	0005c783          	lbu	a5,0(a1)
   185c0:	00170713          	add	a4,a4,1
   185c4:	00158593          	add	a1,a1,1
   185c8:	fef70fa3          	sb	a5,-1(a4)
   185cc:	fce89ee3          	bne	a7,a4,185a8 <memcpy+0x178>
   185d0:	fcdff06f          	j	1859c <memcpy+0x16c>

000185d4 <strlen>:
   185d4:	00357793          	and	a5,a0,3
   185d8:	00050713          	mv	a4,a0
   185dc:	04079c63          	bnez	a5,18634 <strlen+0x60>
   185e0:	7f7f86b7          	lui	a3,0x7f7f8
   185e4:	f7f68693          	add	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d406f>
   185e8:	fff00593          	li	a1,-1
   185ec:	00072603          	lw	a2,0(a4)
   185f0:	00470713          	add	a4,a4,4
   185f4:	00d677b3          	and	a5,a2,a3
   185f8:	00d787b3          	add	a5,a5,a3
   185fc:	00c7e7b3          	or	a5,a5,a2
   18600:	00d7e7b3          	or	a5,a5,a3
   18604:	feb784e3          	beq	a5,a1,185ec <strlen+0x18>
   18608:	ffc74683          	lbu	a3,-4(a4)
   1860c:	40a707b3          	sub	a5,a4,a0
   18610:	04068463          	beqz	a3,18658 <strlen+0x84>
   18614:	ffd74683          	lbu	a3,-3(a4)
   18618:	02068c63          	beqz	a3,18650 <strlen+0x7c>
   1861c:	ffe74503          	lbu	a0,-2(a4)
   18620:	00a03533          	snez	a0,a0
   18624:	00f50533          	add	a0,a0,a5
   18628:	ffe50513          	add	a0,a0,-2
   1862c:	00008067          	ret
   18630:	fa0688e3          	beqz	a3,185e0 <strlen+0xc>
   18634:	00074783          	lbu	a5,0(a4)
   18638:	00170713          	add	a4,a4,1
   1863c:	00377693          	and	a3,a4,3
   18640:	fe0798e3          	bnez	a5,18630 <strlen+0x5c>
   18644:	40a70733          	sub	a4,a4,a0
   18648:	fff70513          	add	a0,a4,-1
   1864c:	00008067          	ret
   18650:	ffd78513          	add	a0,a5,-3
   18654:	00008067          	ret
   18658:	ffc78513          	add	a0,a5,-4
   1865c:	00008067          	ret

00018660 <strcpy>:
   18660:	00b567b3          	or	a5,a0,a1
   18664:	0037f793          	and	a5,a5,3
   18668:	08079263          	bnez	a5,186ec <strcpy+0x8c>
   1866c:	0005a703          	lw	a4,0(a1)
   18670:	7f7f86b7          	lui	a3,0x7f7f8
   18674:	f7f68693          	add	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d406f>
   18678:	00d777b3          	and	a5,a4,a3
   1867c:	00d787b3          	add	a5,a5,a3
   18680:	00e7e7b3          	or	a5,a5,a4
   18684:	00d7e7b3          	or	a5,a5,a3
   18688:	fff00613          	li	a2,-1
   1868c:	06c79e63          	bne	a5,a2,18708 <strcpy+0xa8>
   18690:	00050613          	mv	a2,a0
   18694:	fff00813          	li	a6,-1
   18698:	00e62023          	sw	a4,0(a2)
   1869c:	0045a703          	lw	a4,4(a1)
   186a0:	00458593          	add	a1,a1,4
   186a4:	00460613          	add	a2,a2,4
   186a8:	00d777b3          	and	a5,a4,a3
   186ac:	00d787b3          	add	a5,a5,a3
   186b0:	00e7e7b3          	or	a5,a5,a4
   186b4:	00d7e7b3          	or	a5,a5,a3
   186b8:	ff0780e3          	beq	a5,a6,18698 <strcpy+0x38>
   186bc:	0005c783          	lbu	a5,0(a1)
   186c0:	0015c703          	lbu	a4,1(a1)
   186c4:	0025c683          	lbu	a3,2(a1)
   186c8:	00f60023          	sb	a5,0(a2)
   186cc:	00078a63          	beqz	a5,186e0 <strcpy+0x80>
   186d0:	00e600a3          	sb	a4,1(a2)
   186d4:	00070663          	beqz	a4,186e0 <strcpy+0x80>
   186d8:	00d60123          	sb	a3,2(a2)
   186dc:	00069463          	bnez	a3,186e4 <strcpy+0x84>
   186e0:	00008067          	ret
   186e4:	000601a3          	sb	zero,3(a2)
   186e8:	00008067          	ret
   186ec:	00050793          	mv	a5,a0
   186f0:	0005c703          	lbu	a4,0(a1)
   186f4:	00178793          	add	a5,a5,1
   186f8:	00158593          	add	a1,a1,1
   186fc:	fee78fa3          	sb	a4,-1(a5)
   18700:	fe0718e3          	bnez	a4,186f0 <strcpy+0x90>
   18704:	00008067          	ret
   18708:	00050613          	mv	a2,a0
   1870c:	fb1ff06f          	j	186bc <strcpy+0x5c>

00018710 <strcmp>:
   18710:	00b56733          	or	a4,a0,a1
   18714:	fff00393          	li	t2,-1
   18718:	00377713          	and	a4,a4,3
   1871c:	10071063          	bnez	a4,1881c <strcmp+0x10c>
   18720:	7f7f87b7          	lui	a5,0x7f7f8
   18724:	f7f78793          	add	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7d406f>
   18728:	00052603          	lw	a2,0(a0)
   1872c:	0005a683          	lw	a3,0(a1)
   18730:	00f672b3          	and	t0,a2,a5
   18734:	00f66333          	or	t1,a2,a5
   18738:	00f282b3          	add	t0,t0,a5
   1873c:	0062e2b3          	or	t0,t0,t1
   18740:	10729263          	bne	t0,t2,18844 <strcmp+0x134>
   18744:	08d61663          	bne	a2,a3,187d0 <strcmp+0xc0>
   18748:	00452603          	lw	a2,4(a0)
   1874c:	0045a683          	lw	a3,4(a1)
   18750:	00f672b3          	and	t0,a2,a5
   18754:	00f66333          	or	t1,a2,a5
   18758:	00f282b3          	add	t0,t0,a5
   1875c:	0062e2b3          	or	t0,t0,t1
   18760:	0c729e63          	bne	t0,t2,1883c <strcmp+0x12c>
   18764:	06d61663          	bne	a2,a3,187d0 <strcmp+0xc0>
   18768:	00852603          	lw	a2,8(a0)
   1876c:	0085a683          	lw	a3,8(a1)
   18770:	00f672b3          	and	t0,a2,a5
   18774:	00f66333          	or	t1,a2,a5
   18778:	00f282b3          	add	t0,t0,a5
   1877c:	0062e2b3          	or	t0,t0,t1
   18780:	0c729863          	bne	t0,t2,18850 <strcmp+0x140>
   18784:	04d61663          	bne	a2,a3,187d0 <strcmp+0xc0>
   18788:	00c52603          	lw	a2,12(a0)
   1878c:	00c5a683          	lw	a3,12(a1)
   18790:	00f672b3          	and	t0,a2,a5
   18794:	00f66333          	or	t1,a2,a5
   18798:	00f282b3          	add	t0,t0,a5
   1879c:	0062e2b3          	or	t0,t0,t1
   187a0:	0c729263          	bne	t0,t2,18864 <strcmp+0x154>
   187a4:	02d61663          	bne	a2,a3,187d0 <strcmp+0xc0>
   187a8:	01052603          	lw	a2,16(a0)
   187ac:	0105a683          	lw	a3,16(a1)
   187b0:	00f672b3          	and	t0,a2,a5
   187b4:	00f66333          	or	t1,a2,a5
   187b8:	00f282b3          	add	t0,t0,a5
   187bc:	0062e2b3          	or	t0,t0,t1
   187c0:	0a729c63          	bne	t0,t2,18878 <strcmp+0x168>
   187c4:	01450513          	add	a0,a0,20
   187c8:	01458593          	add	a1,a1,20
   187cc:	f4d60ee3          	beq	a2,a3,18728 <strcmp+0x18>
   187d0:	01061713          	sll	a4,a2,0x10
   187d4:	01069793          	sll	a5,a3,0x10
   187d8:	00f71e63          	bne	a4,a5,187f4 <strcmp+0xe4>
   187dc:	01065713          	srl	a4,a2,0x10
   187e0:	0106d793          	srl	a5,a3,0x10
   187e4:	40f70533          	sub	a0,a4,a5
   187e8:	0ff57593          	zext.b	a1,a0
   187ec:	02059063          	bnez	a1,1880c <strcmp+0xfc>
   187f0:	00008067          	ret
   187f4:	01075713          	srl	a4,a4,0x10
   187f8:	0107d793          	srl	a5,a5,0x10
   187fc:	40f70533          	sub	a0,a4,a5
   18800:	0ff57593          	zext.b	a1,a0
   18804:	00059463          	bnez	a1,1880c <strcmp+0xfc>
   18808:	00008067          	ret
   1880c:	0ff77713          	zext.b	a4,a4
   18810:	0ff7f793          	zext.b	a5,a5
   18814:	40f70533          	sub	a0,a4,a5
   18818:	00008067          	ret
   1881c:	00054603          	lbu	a2,0(a0)
   18820:	0005c683          	lbu	a3,0(a1)
   18824:	00150513          	add	a0,a0,1
   18828:	00158593          	add	a1,a1,1
   1882c:	00d61463          	bne	a2,a3,18834 <strcmp+0x124>
   18830:	fe0616e3          	bnez	a2,1881c <strcmp+0x10c>
   18834:	40d60533          	sub	a0,a2,a3
   18838:	00008067          	ret
   1883c:	00450513          	add	a0,a0,4
   18840:	00458593          	add	a1,a1,4
   18844:	fcd61ce3          	bne	a2,a3,1881c <strcmp+0x10c>
   18848:	00000513          	li	a0,0
   1884c:	00008067          	ret
   18850:	00850513          	add	a0,a0,8
   18854:	00858593          	add	a1,a1,8
   18858:	fcd612e3          	bne	a2,a3,1881c <strcmp+0x10c>
   1885c:	00000513          	li	a0,0
   18860:	00008067          	ret
   18864:	00c50513          	add	a0,a0,12
   18868:	00c58593          	add	a1,a1,12
   1886c:	fad618e3          	bne	a2,a3,1881c <strcmp+0x10c>
   18870:	00000513          	li	a0,0
   18874:	00008067          	ret
   18878:	01050513          	add	a0,a0,16
   1887c:	01058593          	add	a1,a1,16
   18880:	f8d61ee3          	bne	a2,a3,1881c <strcmp+0x10c>
   18884:	00000513          	li	a0,0
   18888:	00008067          	ret

0001888c <frexp>:
   1888c:	ff010113          	add	sp,sp,-16
   18890:	00912223          	sw	s1,4(sp)
   18894:	800004b7          	lui	s1,0x80000
   18898:	00812423          	sw	s0,8(sp)
   1889c:	00112623          	sw	ra,12(sp)
   188a0:	fff48493          	add	s1,s1,-1 # 7fffffff <__BSS_END__+0x7ffdc0ef>
   188a4:	00060413          	mv	s0,a2
   188a8:	00062023          	sw	zero,0(a2)
   188ac:	00b4f6b3          	and	a3,s1,a1
   188b0:	7ff00637          	lui	a2,0x7ff00
   188b4:	00058793          	mv	a5,a1
   188b8:	00050713          	mv	a4,a0
   188bc:	04c6f063          	bgeu	a3,a2,188fc <frexp+0x70>
   188c0:	00a6e633          	or	a2,a3,a0
   188c4:	02060c63          	beqz	a2,188fc <frexp+0x70>
   188c8:	0145d613          	srl	a2,a1,0x14
   188cc:	7ff67613          	and	a2,a2,2047
   188d0:	04060463          	beqz	a2,18918 <frexp+0x8c>
   188d4:	00000593          	li	a1,0
   188d8:	80100637          	lui	a2,0x80100
   188dc:	4146d693          	sra	a3,a3,0x14
   188e0:	fff60613          	add	a2,a2,-1 # 800fffff <__BSS_END__+0x800dc0ef>
   188e4:	c0268693          	add	a3,a3,-1022
   188e8:	00c7f7b3          	and	a5,a5,a2
   188ec:	00b686b3          	add	a3,a3,a1
   188f0:	3fe00637          	lui	a2,0x3fe00
   188f4:	00c7e7b3          	or	a5,a5,a2
   188f8:	00d42023          	sw	a3,0(s0)
   188fc:	00c12083          	lw	ra,12(sp)
   18900:	00812403          	lw	s0,8(sp)
   18904:	00412483          	lw	s1,4(sp)
   18908:	00070513          	mv	a0,a4
   1890c:	00078593          	mv	a1,a5
   18910:	01010113          	add	sp,sp,16
   18914:	00008067          	ret
   18918:	0000b797          	auipc	a5,0xb
   1891c:	fa078793          	add	a5,a5,-96 # 238b8 <__SDATA_BEGIN__+0x20>
   18920:	0047a683          	lw	a3,4(a5)
   18924:	0007a603          	lw	a2,0(a5)
   18928:	1ad070ef          	jal	202d4 <__muldf3>
   1892c:	00058793          	mv	a5,a1
   18930:	00b4f6b3          	and	a3,s1,a1
   18934:	00050713          	mv	a4,a0
   18938:	fca00593          	li	a1,-54
   1893c:	f9dff06f          	j	188d8 <frexp+0x4c>

00018940 <quorem>:
   18940:	fb010113          	add	sp,sp,-80
   18944:	04912223          	sw	s1,68(sp)
   18948:	01052783          	lw	a5,16(a0)
   1894c:	0105a483          	lw	s1,16(a1)
   18950:	04112623          	sw	ra,76(sp)
   18954:	00b12423          	sw	a1,8(sp)
   18958:	2097ca63          	blt	a5,s1,18b6c <quorem+0x22c>
   1895c:	fff48493          	add	s1,s1,-1
   18960:	03512a23          	sw	s5,52(sp)
   18964:	03812423          	sw	s8,40(sp)
   18968:	00249a93          	sll	s5,s1,0x2
   1896c:	01458c13          	add	s8,a1,20
   18970:	05212023          	sw	s2,64(sp)
   18974:	03312e23          	sw	s3,60(sp)
   18978:	015c0933          	add	s2,s8,s5
   1897c:	01450993          	add	s3,a0,20
   18980:	015987b3          	add	a5,s3,s5
   18984:	03712623          	sw	s7,44(sp)
   18988:	00092b83          	lw	s7,0(s2)
   1898c:	03912223          	sw	s9,36(sp)
   18990:	0007ac83          	lw	s9,0(a5)
   18994:	001b8b93          	add	s7,s7,1
   18998:	03412c23          	sw	s4,56(sp)
   1899c:	000b8593          	mv	a1,s7
   189a0:	00050a13          	mv	s4,a0
   189a4:	000c8513          	mv	a0,s9
   189a8:	04812423          	sw	s0,72(sp)
   189ac:	00f12623          	sw	a5,12(sp)
   189b0:	018090ef          	jal	219c8 <__hidden___udivsi3>
   189b4:	00050413          	mv	s0,a0
   189b8:	0d7cee63          	bltu	s9,s7,18a94 <quorem+0x154>
   189bc:	03a12023          	sw	s10,32(sp)
   189c0:	00010d37          	lui	s10,0x10
   189c4:	01b12e23          	sw	s11,28(sp)
   189c8:	03612823          	sw	s6,48(sp)
   189cc:	000c0a93          	mv	s5,s8
   189d0:	00098d93          	mv	s11,s3
   189d4:	00000c93          	li	s9,0
   189d8:	00000b93          	li	s7,0
   189dc:	fffd0d13          	add	s10,s10,-1 # ffff <exit-0x95>
   189e0:	000aab03          	lw	s6,0(s5)
   189e4:	00040593          	mv	a1,s0
   189e8:	004d8d93          	add	s11,s11,4
   189ec:	01ab7533          	and	a0,s6,s10
   189f0:	7ad080ef          	jal	2199c <__mulsi3>
   189f4:	00050793          	mv	a5,a0
   189f8:	00040593          	mv	a1,s0
   189fc:	010b5513          	srl	a0,s6,0x10
   18a00:	01978cb3          	add	s9,a5,s9
   18a04:	799080ef          	jal	2199c <__mulsi3>
   18a08:	ffcda603          	lw	a2,-4(s11)
   18a0c:	01acf733          	and	a4,s9,s10
   18a10:	010cdc93          	srl	s9,s9,0x10
   18a14:	01a677b3          	and	a5,a2,s10
   18a18:	40e787b3          	sub	a5,a5,a4
   18a1c:	017787b3          	add	a5,a5,s7
   18a20:	01950533          	add	a0,a0,s9
   18a24:	4107d713          	sra	a4,a5,0x10
   18a28:	01a575b3          	and	a1,a0,s10
   18a2c:	01065613          	srl	a2,a2,0x10
   18a30:	40b70733          	sub	a4,a4,a1
   18a34:	00c70733          	add	a4,a4,a2
   18a38:	01a7f7b3          	and	a5,a5,s10
   18a3c:	01071613          	sll	a2,a4,0x10
   18a40:	00c7e7b3          	or	a5,a5,a2
   18a44:	004a8a93          	add	s5,s5,4
   18a48:	fefdae23          	sw	a5,-4(s11)
   18a4c:	01055c93          	srl	s9,a0,0x10
   18a50:	41075b93          	sra	s7,a4,0x10
   18a54:	f95976e3          	bgeu	s2,s5,189e0 <quorem+0xa0>
   18a58:	00c12703          	lw	a4,12(sp)
   18a5c:	00072783          	lw	a5,0(a4)
   18a60:	12079063          	bnez	a5,18b80 <quorem+0x240>
   18a64:	ffc70a93          	add	s5,a4,-4
   18a68:	0159e863          	bltu	s3,s5,18a78 <quorem+0x138>
   18a6c:	0180006f          	j	18a84 <quorem+0x144>
   18a70:	fff48493          	add	s1,s1,-1
   18a74:	0159f863          	bgeu	s3,s5,18a84 <quorem+0x144>
   18a78:	000aa783          	lw	a5,0(s5)
   18a7c:	ffca8a93          	add	s5,s5,-4
   18a80:	fe0788e3          	beqz	a5,18a70 <quorem+0x130>
   18a84:	03012b03          	lw	s6,48(sp)
   18a88:	02012d03          	lw	s10,32(sp)
   18a8c:	01c12d83          	lw	s11,28(sp)
   18a90:	009a2823          	sw	s1,16(s4)
   18a94:	00812583          	lw	a1,8(sp)
   18a98:	000a0513          	mv	a0,s4
   18a9c:	4e9020ef          	jal	1b784 <__mcmp>
   18aa0:	08054c63          	bltz	a0,18b38 <quorem+0x1f8>
   18aa4:	00010537          	lui	a0,0x10
   18aa8:	00098593          	mv	a1,s3
   18aac:	00000713          	li	a4,0
   18ab0:	fff50513          	add	a0,a0,-1 # ffff <exit-0x95>
   18ab4:	0005a683          	lw	a3,0(a1)
   18ab8:	000c2603          	lw	a2,0(s8)
   18abc:	00458593          	add	a1,a1,4
   18ac0:	00a6f7b3          	and	a5,a3,a0
   18ac4:	00a67833          	and	a6,a2,a0
   18ac8:	410787b3          	sub	a5,a5,a6
   18acc:	00e787b3          	add	a5,a5,a4
   18ad0:	4107d713          	sra	a4,a5,0x10
   18ad4:	01065613          	srl	a2,a2,0x10
   18ad8:	0106d693          	srl	a3,a3,0x10
   18adc:	40c70733          	sub	a4,a4,a2
   18ae0:	00d70733          	add	a4,a4,a3
   18ae4:	01071693          	sll	a3,a4,0x10
   18ae8:	00a7f7b3          	and	a5,a5,a0
   18aec:	00d7e7b3          	or	a5,a5,a3
   18af0:	004c0c13          	add	s8,s8,4
   18af4:	fef5ae23          	sw	a5,-4(a1)
   18af8:	41075713          	sra	a4,a4,0x10
   18afc:	fb897ce3          	bgeu	s2,s8,18ab4 <quorem+0x174>
   18b00:	00249793          	sll	a5,s1,0x2
   18b04:	00f987b3          	add	a5,s3,a5
   18b08:	0007a703          	lw	a4,0(a5)
   18b0c:	02071463          	bnez	a4,18b34 <quorem+0x1f4>
   18b10:	ffc78793          	add	a5,a5,-4
   18b14:	00f9e863          	bltu	s3,a5,18b24 <quorem+0x1e4>
   18b18:	0180006f          	j	18b30 <quorem+0x1f0>
   18b1c:	fff48493          	add	s1,s1,-1
   18b20:	00f9f863          	bgeu	s3,a5,18b30 <quorem+0x1f0>
   18b24:	0007a703          	lw	a4,0(a5)
   18b28:	ffc78793          	add	a5,a5,-4
   18b2c:	fe0708e3          	beqz	a4,18b1c <quorem+0x1dc>
   18b30:	009a2823          	sw	s1,16(s4)
   18b34:	00140413          	add	s0,s0,1
   18b38:	04c12083          	lw	ra,76(sp)
   18b3c:	00040513          	mv	a0,s0
   18b40:	04812403          	lw	s0,72(sp)
   18b44:	04012903          	lw	s2,64(sp)
   18b48:	03c12983          	lw	s3,60(sp)
   18b4c:	03812a03          	lw	s4,56(sp)
   18b50:	03412a83          	lw	s5,52(sp)
   18b54:	02c12b83          	lw	s7,44(sp)
   18b58:	02812c03          	lw	s8,40(sp)
   18b5c:	02412c83          	lw	s9,36(sp)
   18b60:	04412483          	lw	s1,68(sp)
   18b64:	05010113          	add	sp,sp,80
   18b68:	00008067          	ret
   18b6c:	04c12083          	lw	ra,76(sp)
   18b70:	04412483          	lw	s1,68(sp)
   18b74:	00000513          	li	a0,0
   18b78:	05010113          	add	sp,sp,80
   18b7c:	00008067          	ret
   18b80:	00812583          	lw	a1,8(sp)
   18b84:	000a0513          	mv	a0,s4
   18b88:	03012b03          	lw	s6,48(sp)
   18b8c:	02012d03          	lw	s10,32(sp)
   18b90:	01c12d83          	lw	s11,28(sp)
   18b94:	3f1020ef          	jal	1b784 <__mcmp>
   18b98:	f00556e3          	bgez	a0,18aa4 <quorem+0x164>
   18b9c:	f9dff06f          	j	18b38 <quorem+0x1f8>

00018ba0 <_dtoa_r>:
   18ba0:	03852303          	lw	t1,56(a0)
   18ba4:	f5010113          	add	sp,sp,-176
   18ba8:	0a812423          	sw	s0,168(sp)
   18bac:	0a912223          	sw	s1,164(sp)
   18bb0:	0b212023          	sw	s2,160(sp)
   18bb4:	09412c23          	sw	s4,152(sp)
   18bb8:	07b12e23          	sw	s11,124(sp)
   18bbc:	0a112623          	sw	ra,172(sp)
   18bc0:	09312e23          	sw	s3,156(sp)
   18bc4:	09512a23          	sw	s5,148(sp)
   18bc8:	00e12a23          	sw	a4,20(sp)
   18bcc:	00f12623          	sw	a5,12(sp)
   18bd0:	01112423          	sw	a7,8(sp)
   18bd4:	02b12223          	sw	a1,36(sp)
   18bd8:	00c12023          	sw	a2,0(sp)
   18bdc:	00050413          	mv	s0,a0
   18be0:	00058d93          	mv	s11,a1
   18be4:	00060493          	mv	s1,a2
   18be8:	00068a13          	mv	s4,a3
   18bec:	00080913          	mv	s2,a6
   18bf0:	02030263          	beqz	t1,18c14 <_dtoa_r+0x74>
   18bf4:	03c52703          	lw	a4,60(a0)
   18bf8:	00100793          	li	a5,1
   18bfc:	00030593          	mv	a1,t1
   18c00:	00e797b3          	sll	a5,a5,a4
   18c04:	00e32223          	sw	a4,4(t1)
   18c08:	00f32423          	sw	a5,8(t1)
   18c0c:	0e4020ef          	jal	1acf0 <_Bfree>
   18c10:	02042c23          	sw	zero,56(s0)
   18c14:	00048993          	mv	s3,s1
   18c18:	00000693          	li	a3,0
   18c1c:	0004dc63          	bgez	s1,18c34 <_dtoa_r+0x94>
   18c20:	00149493          	sll	s1,s1,0x1
   18c24:	0014d793          	srl	a5,s1,0x1
   18c28:	00f12023          	sw	a5,0(sp)
   18c2c:	00078993          	mv	s3,a5
   18c30:	00100693          	li	a3,1
   18c34:	7ff00737          	lui	a4,0x7ff00
   18c38:	00d92023          	sw	a3,0(s2)
   18c3c:	00e9f6b3          	and	a3,s3,a4
   18c40:	64e68463          	beq	a3,a4,19288 <_dtoa_r+0x6e8>
   18c44:	00012483          	lw	s1,0(sp)
   18c48:	000d8513          	mv	a0,s11
   18c4c:	00000613          	li	a2,0
   18c50:	00048593          	mv	a1,s1
   18c54:	00000693          	li	a3,0
   18c58:	01b12c23          	sw	s11,24(sp)
   18c5c:	00912e23          	sw	s1,28(sp)
   18c60:	3e0070ef          	jal	20040 <__eqdf2>
   18c64:	04051c63          	bnez	a0,18cbc <_dtoa_r+0x11c>
   18c68:	00c12703          	lw	a4,12(sp)
   18c6c:	00100793          	li	a5,1
   18c70:	00f72023          	sw	a5,0(a4) # 7ff00000 <__BSS_END__+0x7fedc0f0>
   18c74:	00812703          	lw	a4,8(sp)
   18c78:	00070863          	beqz	a4,18c88 <_dtoa_r+0xe8>
   18c7c:	00009797          	auipc	a5,0x9
   18c80:	ef978793          	add	a5,a5,-263 # 21b75 <__clzsi2+0x101>
   18c84:	00f72023          	sw	a5,0(a4)
   18c88:	00009a97          	auipc	s5,0x9
   18c8c:	eeca8a93          	add	s5,s5,-276 # 21b74 <__clzsi2+0x100>
   18c90:	0ac12083          	lw	ra,172(sp)
   18c94:	0a812403          	lw	s0,168(sp)
   18c98:	0a412483          	lw	s1,164(sp)
   18c9c:	0a012903          	lw	s2,160(sp)
   18ca0:	09c12983          	lw	s3,156(sp)
   18ca4:	09812a03          	lw	s4,152(sp)
   18ca8:	07c12d83          	lw	s11,124(sp)
   18cac:	000a8513          	mv	a0,s5
   18cb0:	09412a83          	lw	s5,148(sp)
   18cb4:	0b010113          	add	sp,sp,176
   18cb8:	00008067          	ret
   18cbc:	00048613          	mv	a2,s1
   18cc0:	06810713          	add	a4,sp,104
   18cc4:	06c10693          	add	a3,sp,108
   18cc8:	000d8593          	mv	a1,s11
   18ccc:	00040513          	mv	a0,s0
   18cd0:	09612823          	sw	s6,144(sp)
   18cd4:	09712623          	sw	s7,140(sp)
   18cd8:	09812423          	sw	s8,136(sp)
   18cdc:	09912223          	sw	s9,132(sp)
   18ce0:	09a12023          	sw	s10,128(sp)
   18ce4:	0149d913          	srl	s2,s3,0x14
   18ce8:	6d9020ef          	jal	1bbc0 <__d2b>
   18cec:	00050493          	mv	s1,a0
   18cf0:	5c091e63          	bnez	s2,192cc <_dtoa_r+0x72c>
   18cf4:	06812a83          	lw	s5,104(sp)
   18cf8:	06c12903          	lw	s2,108(sp)
   18cfc:	02000793          	li	a5,32
   18d00:	012a8933          	add	s2,s5,s2
   18d04:	43290713          	add	a4,s2,1074
   18d08:	36e7dae3          	bge	a5,a4,1987c <_dtoa_r+0xcdc>
   18d0c:	04000793          	li	a5,64
   18d10:	40e787b3          	sub	a5,a5,a4
   18d14:	41290513          	add	a0,s2,1042
   18d18:	00f997b3          	sll	a5,s3,a5
   18d1c:	00add533          	srl	a0,s11,a0
   18d20:	00a7e533          	or	a0,a5,a0
   18d24:	7d8080ef          	jal	214fc <__floatunsidf>
   18d28:	fe1007b7          	lui	a5,0xfe100
   18d2c:	00100693          	li	a3,1
   18d30:	00050713          	mv	a4,a0
   18d34:	00b787b3          	add	a5,a5,a1
   18d38:	fff90913          	add	s2,s2,-1
   18d3c:	02d12c23          	sw	a3,56(sp)
   18d40:	0000b697          	auipc	a3,0xb
   18d44:	b8068693          	add	a3,a3,-1152 # 238c0 <__SDATA_BEGIN__+0x28>
   18d48:	0006a603          	lw	a2,0(a3)
   18d4c:	0046a683          	lw	a3,4(a3)
   18d50:	00070513          	mv	a0,a4
   18d54:	00078593          	mv	a1,a5
   18d58:	50d070ef          	jal	20a64 <__subdf3>
   18d5c:	0000b797          	auipc	a5,0xb
   18d60:	b6c78793          	add	a5,a5,-1172 # 238c8 <__SDATA_BEGIN__+0x30>
   18d64:	0007a603          	lw	a2,0(a5)
   18d68:	0047a683          	lw	a3,4(a5)
   18d6c:	568070ef          	jal	202d4 <__muldf3>
   18d70:	0000b797          	auipc	a5,0xb
   18d74:	b6078793          	add	a5,a5,-1184 # 238d0 <__SDATA_BEGIN__+0x38>
   18d78:	0007a603          	lw	a2,0(a5)
   18d7c:	0047a683          	lw	a3,4(a5)
   18d80:	14c060ef          	jal	1eecc <__adddf3>
   18d84:	00050b13          	mv	s6,a0
   18d88:	00090513          	mv	a0,s2
   18d8c:	00058993          	mv	s3,a1
   18d90:	6b4080ef          	jal	21444 <__floatsidf>
   18d94:	0000b797          	auipc	a5,0xb
   18d98:	b4478793          	add	a5,a5,-1212 # 238d8 <__SDATA_BEGIN__+0x40>
   18d9c:	0007a603          	lw	a2,0(a5)
   18da0:	0047a683          	lw	a3,4(a5)
   18da4:	530070ef          	jal	202d4 <__muldf3>
   18da8:	00050613          	mv	a2,a0
   18dac:	00058693          	mv	a3,a1
   18db0:	000b0513          	mv	a0,s6
   18db4:	00098593          	mv	a1,s3
   18db8:	114060ef          	jal	1eecc <__adddf3>
   18dbc:	00050b93          	mv	s7,a0
   18dc0:	00058b13          	mv	s6,a1
   18dc4:	5fc080ef          	jal	213c0 <__fixdfsi>
   18dc8:	00050993          	mv	s3,a0
   18dcc:	000b0593          	mv	a1,s6
   18dd0:	000b8513          	mv	a0,s7
   18dd4:	00000613          	li	a2,0
   18dd8:	00000693          	li	a3,0
   18ddc:	3f0070ef          	jal	201cc <__ledf2>
   18de0:	02055063          	bgez	a0,18e00 <_dtoa_r+0x260>
   18de4:	00098513          	mv	a0,s3
   18de8:	65c080ef          	jal	21444 <__floatsidf>
   18dec:	000b8613          	mv	a2,s7
   18df0:	000b0693          	mv	a3,s6
   18df4:	24c070ef          	jal	20040 <__eqdf2>
   18df8:	00a03533          	snez	a0,a0
   18dfc:	40a989b3          	sub	s3,s3,a0
   18e00:	412a8ab3          	sub	s5,s5,s2
   18e04:	01600793          	li	a5,22
   18e08:	fffa8b13          	add	s6,s5,-1
   18e0c:	2137e2e3          	bltu	a5,s3,19810 <_dtoa_r+0xc70>
   18e10:	00399713          	sll	a4,s3,0x3
   18e14:	00009797          	auipc	a5,0x9
   18e18:	7cc78793          	add	a5,a5,1996 # 225e0 <__mprec_tens>
   18e1c:	00e787b3          	add	a5,a5,a4
   18e20:	0007a603          	lw	a2,0(a5)
   18e24:	0047a683          	lw	a3,4(a5)
   18e28:	01812503          	lw	a0,24(sp)
   18e2c:	01c12583          	lw	a1,28(sp)
   18e30:	39c070ef          	jal	201cc <__ledf2>
   18e34:	220554e3          	bgez	a0,1985c <_dtoa_r+0xcbc>
   18e38:	fff98993          	add	s3,s3,-1
   18e3c:	02012a23          	sw	zero,52(sp)
   18e40:	00012823          	sw	zero,16(sp)
   18e44:	4a0b4863          	bltz	s6,192f4 <_dtoa_r+0x754>
   18e48:	4c09d063          	bgez	s3,19308 <_dtoa_r+0x768>
   18e4c:	01012783          	lw	a5,16(sp)
   18e50:	03312023          	sw	s3,32(sp)
   18e54:	413787b3          	sub	a5,a5,s3
   18e58:	00f12823          	sw	a5,16(sp)
   18e5c:	413007b3          	neg	a5,s3
   18e60:	02f12823          	sw	a5,48(sp)
   18e64:	00900793          	li	a5,9
   18e68:	00000993          	li	s3,0
   18e6c:	4b47e863          	bltu	a5,s4,1931c <_dtoa_r+0x77c>
   18e70:	00500793          	li	a5,5
   18e74:	2147dae3          	bge	a5,s4,19888 <_dtoa_r+0xce8>
   18e78:	ffca0a13          	add	s4,s4,-4
   18e7c:	00300793          	li	a5,3
   18e80:	00000913          	li	s2,0
   18e84:	66fa02e3          	beq	s4,a5,19ce8 <_dtoa_r+0x1148>
   18e88:	6147dae3          	bge	a5,s4,19c9c <_dtoa_r+0x10fc>
   18e8c:	00400793          	li	a5,4
   18e90:	54fa1ae3          	bne	s4,a5,19be4 <_dtoa_r+0x1044>
   18e94:	00100793          	li	a5,1
   18e98:	02f12423          	sw	a5,40(sp)
   18e9c:	01412603          	lw	a2,20(sp)
   18ea0:	62c05ce3          	blez	a2,19cd8 <_dtoa_r+0x1138>
   18ea4:	02c12e23          	sw	a2,60(sp)
   18ea8:	00060c13          	mv	s8,a2
   18eac:	01700693          	li	a3,23
   18eb0:	00100713          	li	a4,1
   18eb4:	00400793          	li	a5,4
   18eb8:	00c6c463          	blt	a3,a2,18ec0 <_dtoa_r+0x320>
   18ebc:	3540106f          	j	1a210 <_dtoa_r+0x1670>
   18ec0:	00179793          	sll	a5,a5,0x1
   18ec4:	01478693          	add	a3,a5,20
   18ec8:	00070593          	mv	a1,a4
   18ecc:	00170713          	add	a4,a4,1
   18ed0:	fed678e3          	bgeu	a2,a3,18ec0 <_dtoa_r+0x320>
   18ed4:	02b42e23          	sw	a1,60(s0)
   18ed8:	00040513          	mv	a0,s0
   18edc:	561010ef          	jal	1ac3c <_Balloc>
   18ee0:	00050a93          	mv	s5,a0
   18ee4:	00051463          	bnez	a0,18eec <_dtoa_r+0x34c>
   18ee8:	30c0106f          	j	1a1f4 <_dtoa_r+0x1654>
   18eec:	02a42c23          	sw	a0,56(s0)
   18ef0:	00e00793          	li	a5,14
   18ef4:	5187ea63          	bltu	a5,s8,19408 <_dtoa_r+0x868>
   18ef8:	50090863          	beqz	s2,19408 <_dtoa_r+0x868>
   18efc:	02012783          	lw	a5,32(sp)
   18f00:	62f054e3          	blez	a5,19d28 <_dtoa_r+0x1188>
   18f04:	00f7f713          	and	a4,a5,15
   18f08:	00371713          	sll	a4,a4,0x3
   18f0c:	4047dc93          	sra	s9,a5,0x4
   18f10:	00009797          	auipc	a5,0x9
   18f14:	6d078793          	add	a5,a5,1744 # 225e0 <__mprec_tens>
   18f18:	00e787b3          	add	a5,a5,a4
   18f1c:	010cf693          	and	a3,s9,16
   18f20:	0007a803          	lw	a6,0(a5)
   18f24:	0047a703          	lw	a4,4(a5)
   18f28:	560682e3          	beqz	a3,19c8c <_dtoa_r+0x10ec>
   18f2c:	00009797          	auipc	a5,0x9
   18f30:	68c78793          	add	a5,a5,1676 # 225b8 <__mprec_bigtens>
   18f34:	0207a603          	lw	a2,32(a5)
   18f38:	0247a683          	lw	a3,36(a5)
   18f3c:	01812503          	lw	a0,24(sp)
   18f40:	01c12583          	lw	a1,28(sp)
   18f44:	04e12423          	sw	a4,72(sp)
   18f48:	05012023          	sw	a6,64(sp)
   18f4c:	049060ef          	jal	1f794 <__divdf3>
   18f50:	04012803          	lw	a6,64(sp)
   18f54:	04812703          	lw	a4,72(sp)
   18f58:	00fcfc93          	and	s9,s9,15
   18f5c:	00050313          	mv	t1,a0
   18f60:	00058d13          	mv	s10,a1
   18f64:	00300913          	li	s2,3
   18f68:	040c8c63          	beqz	s9,18fc0 <_dtoa_r+0x420>
   18f6c:	04812023          	sw	s0,64(sp)
   18f70:	00009b97          	auipc	s7,0x9
   18f74:	648b8b93          	add	s7,s7,1608 # 225b8 <__mprec_bigtens>
   18f78:	00090413          	mv	s0,s2
   18f7c:	00070593          	mv	a1,a4
   18f80:	00030913          	mv	s2,t1
   18f84:	001cf793          	and	a5,s9,1
   18f88:	00078e63          	beqz	a5,18fa4 <_dtoa_r+0x404>
   18f8c:	000ba603          	lw	a2,0(s7)
   18f90:	004ba683          	lw	a3,4(s7)
   18f94:	00080513          	mv	a0,a6
   18f98:	00140413          	add	s0,s0,1
   18f9c:	338070ef          	jal	202d4 <__muldf3>
   18fa0:	00050813          	mv	a6,a0
   18fa4:	401cdc93          	sra	s9,s9,0x1
   18fa8:	008b8b93          	add	s7,s7,8
   18fac:	fc0c9ce3          	bnez	s9,18f84 <_dtoa_r+0x3e4>
   18fb0:	00090313          	mv	t1,s2
   18fb4:	00040913          	mv	s2,s0
   18fb8:	04012403          	lw	s0,64(sp)
   18fbc:	00058713          	mv	a4,a1
   18fc0:	00070693          	mv	a3,a4
   18fc4:	00080613          	mv	a2,a6
   18fc8:	00030513          	mv	a0,t1
   18fcc:	000d0593          	mv	a1,s10
   18fd0:	7c4060ef          	jal	1f794 <__divdf3>
   18fd4:	00050713          	mv	a4,a0
   18fd8:	00058793          	mv	a5,a1
   18fdc:	03412683          	lw	a3,52(sp)
   18fe0:	02068c63          	beqz	a3,19018 <_dtoa_r+0x478>
   18fe4:	0000b697          	auipc	a3,0xb
   18fe8:	8fc68693          	add	a3,a3,-1796 # 238e0 <__SDATA_BEGIN__+0x48>
   18fec:	0006a603          	lw	a2,0(a3)
   18ff0:	0046a683          	lw	a3,4(a3)
   18ff4:	00070513          	mv	a0,a4
   18ff8:	00078593          	mv	a1,a5
   18ffc:	04e12423          	sw	a4,72(sp)
   19000:	04f12023          	sw	a5,64(sp)
   19004:	1c8070ef          	jal	201cc <__ledf2>
   19008:	04012783          	lw	a5,64(sp)
   1900c:	04812703          	lw	a4,72(sp)
   19010:	00055463          	bgez	a0,19018 <_dtoa_r+0x478>
   19014:	04c0106f          	j	1a060 <_dtoa_r+0x14c0>
   19018:	00090513          	mv	a0,s2
   1901c:	04f12623          	sw	a5,76(sp)
   19020:	04e12023          	sw	a4,64(sp)
   19024:	420080ef          	jal	21444 <__floatsidf>
   19028:	04012703          	lw	a4,64(sp)
   1902c:	04c12783          	lw	a5,76(sp)
   19030:	00070613          	mv	a2,a4
   19034:	00078693          	mv	a3,a5
   19038:	04e12423          	sw	a4,72(sp)
   1903c:	04f12023          	sw	a5,64(sp)
   19040:	294070ef          	jal	202d4 <__muldf3>
   19044:	0000b697          	auipc	a3,0xb
   19048:	8ac68693          	add	a3,a3,-1876 # 238f0 <__SDATA_BEGIN__+0x58>
   1904c:	0006a603          	lw	a2,0(a3)
   19050:	0046a683          	lw	a3,4(a3)
   19054:	679050ef          	jal	1eecc <__adddf3>
   19058:	fcc006b7          	lui	a3,0xfcc00
   1905c:	04012783          	lw	a5,64(sp)
   19060:	04812703          	lw	a4,72(sp)
   19064:	00050c93          	mv	s9,a0
   19068:	00b68bb3          	add	s7,a3,a1
   1906c:	340c0463          	beqz	s8,193b4 <_dtoa_r+0x814>
   19070:	02012683          	lw	a3,32(sp)
   19074:	05812423          	sw	s8,72(sp)
   19078:	04d12e23          	sw	a3,92(sp)
   1907c:	00070513          	mv	a0,a4
   19080:	00078593          	mv	a1,a5
   19084:	04e12623          	sw	a4,76(sp)
   19088:	04f12023          	sw	a5,64(sp)
   1908c:	334080ef          	jal	213c0 <__fixdfsi>
   19090:	04812783          	lw	a5,72(sp)
   19094:	00050913          	mv	s2,a0
   19098:	05912c23          	sw	s9,88(sp)
   1909c:	fff78693          	add	a3,a5,-1
   190a0:	00369693          	sll	a3,a3,0x3
   190a4:	00009797          	auipc	a5,0x9
   190a8:	53c78793          	add	a5,a5,1340 # 225e0 <__mprec_tens>
   190ac:	00d786b3          	add	a3,a5,a3
   190b0:	0006a783          	lw	a5,0(a3) # fcc00000 <__BSS_END__+0xfcbdc0f0>
   190b4:	0046a803          	lw	a6,4(a3)
   190b8:	001a8d13          	add	s10,s5,1
   190bc:	04f12823          	sw	a5,80(sp)
   190c0:	05012a23          	sw	a6,84(sp)
   190c4:	380080ef          	jal	21444 <__floatsidf>
   190c8:	04c12703          	lw	a4,76(sp)
   190cc:	04012783          	lw	a5,64(sp)
   190d0:	00050613          	mv	a2,a0
   190d4:	00058693          	mv	a3,a1
   190d8:	00070513          	mv	a0,a4
   190dc:	00078593          	mv	a1,a5
   190e0:	185070ef          	jal	20a64 <__subdf3>
   190e4:	02812703          	lw	a4,40(sp)
   190e8:	03090313          	add	t1,s2,48
   190ec:	05a12023          	sw	s10,64(sp)
   190f0:	00050c93          	mv	s9,a0
   190f4:	0ff37313          	zext.b	t1,t1
   190f8:	5c0706e3          	beqz	a4,19ec4 <_dtoa_r+0x1324>
   190fc:	0000a797          	auipc	a5,0xa
   19100:	7b478793          	add	a5,a5,1972 # 238b0 <__SDATA_BEGIN__+0x18>
   19104:	0007a503          	lw	a0,0(a5)
   19108:	05012603          	lw	a2,80(sp)
   1910c:	05412683          	lw	a3,84(sp)
   19110:	04b12023          	sw	a1,64(sp)
   19114:	0047a583          	lw	a1,4(a5)
   19118:	04612623          	sw	t1,76(sp)
   1911c:	678060ef          	jal	1f794 <__divdf3>
   19120:	05812603          	lw	a2,88(sp)
   19124:	000b8693          	mv	a3,s7
   19128:	13d070ef          	jal	20a64 <__subdf3>
   1912c:	04012883          	lw	a7,64(sp)
   19130:	04c12303          	lw	t1,76(sp)
   19134:	000c8613          	mv	a2,s9
   19138:	00088693          	mv	a3,a7
   1913c:	006a8023          	sb	t1,0(s5)
   19140:	00050913          	mv	s2,a0
   19144:	00058b93          	mv	s7,a1
   19148:	785060ef          	jal	200cc <__gedf2>
   1914c:	04012883          	lw	a7,64(sp)
   19150:	00a05463          	blez	a0,19158 <_dtoa_r+0x5b8>
   19154:	7c90006f          	j	1a11c <_dtoa_r+0x157c>
   19158:	0000a697          	auipc	a3,0xa
   1915c:	78868693          	add	a3,a3,1928 # 238e0 <__SDATA_BEGIN__+0x48>
   19160:	0006a783          	lw	a5,0(a3)
   19164:	0046a803          	lw	a6,4(a3)
   19168:	05312623          	sw	s3,76(sp)
   1916c:	04f12023          	sw	a5,64(sp)
   19170:	00000793          	li	a5,0
   19174:	05612823          	sw	s6,80(sp)
   19178:	05812c23          	sw	s8,88(sp)
   1917c:	05012223          	sw	a6,68(sp)
   19180:	04812c03          	lw	s8,72(sp)
   19184:	00078b13          	mv	s6,a5
   19188:	05412423          	sw	s4,72(sp)
   1918c:	00088993          	mv	s3,a7
   19190:	0980006f          	j	19228 <_dtoa_r+0x688>
   19194:	001b0b13          	add	s6,s6,1
   19198:	018b4463          	blt	s6,s8,191a0 <_dtoa_r+0x600>
   1919c:	7d10006f          	j	1a16c <_dtoa_r+0x15cc>
   191a0:	0000aa17          	auipc	s4,0xa
   191a4:	748a0a13          	add	s4,s4,1864 # 238e8 <__SDATA_BEGIN__+0x50>
   191a8:	000a2603          	lw	a2,0(s4)
   191ac:	004a2683          	lw	a3,4(s4)
   191b0:	00090513          	mv	a0,s2
   191b4:	000b8593          	mv	a1,s7
   191b8:	11c070ef          	jal	202d4 <__muldf3>
   191bc:	000a2603          	lw	a2,0(s4)
   191c0:	004a2683          	lw	a3,4(s4)
   191c4:	00050913          	mv	s2,a0
   191c8:	00058b93          	mv	s7,a1
   191cc:	000c8513          	mv	a0,s9
   191d0:	00098593          	mv	a1,s3
   191d4:	100070ef          	jal	202d4 <__muldf3>
   191d8:	00058c93          	mv	s9,a1
   191dc:	00050a13          	mv	s4,a0
   191e0:	1e0080ef          	jal	213c0 <__fixdfsi>
   191e4:	00050993          	mv	s3,a0
   191e8:	25c080ef          	jal	21444 <__floatsidf>
   191ec:	00050613          	mv	a2,a0
   191f0:	00058693          	mv	a3,a1
   191f4:	000a0513          	mv	a0,s4
   191f8:	000c8593          	mv	a1,s9
   191fc:	069070ef          	jal	20a64 <__subdf3>
   19200:	03098793          	add	a5,s3,48
   19204:	00090613          	mv	a2,s2
   19208:	000b8693          	mv	a3,s7
   1920c:	00fd0023          	sb	a5,0(s10)
   19210:	001d0d13          	add	s10,s10,1
   19214:	00050c93          	mv	s9,a0
   19218:	00058993          	mv	s3,a1
   1921c:	7b1060ef          	jal	201cc <__ledf2>
   19220:	00055463          	bgez	a0,19228 <_dtoa_r+0x688>
   19224:	6f90006f          	j	1a11c <_dtoa_r+0x157c>
   19228:	04012503          	lw	a0,64(sp)
   1922c:	04412583          	lw	a1,68(sp)
   19230:	000c8613          	mv	a2,s9
   19234:	00098693          	mv	a3,s3
   19238:	02d070ef          	jal	20a64 <__subdf3>
   1923c:	00090613          	mv	a2,s2
   19240:	000b8693          	mv	a3,s7
   19244:	789060ef          	jal	201cc <__ledf2>
   19248:	f40556e3          	bgez	a0,19194 <_dtoa_r+0x5f4>
   1924c:	05c12783          	lw	a5,92(sp)
   19250:	000d0b93          	mv	s7,s10
   19254:	00178c13          	add	s8,a5,1
   19258:	03900613          	li	a2,57
   1925c:	0080006f          	j	19264 <_dtoa_r+0x6c4>
   19260:	697a88e3          	beq	s5,s7,1a0f0 <_dtoa_r+0x1550>
   19264:	fffbc683          	lbu	a3,-1(s7)
   19268:	000b8d13          	mv	s10,s7
   1926c:	fffb8b93          	add	s7,s7,-1
   19270:	fec688e3          	beq	a3,a2,19260 <_dtoa_r+0x6c0>
   19274:	00168693          	add	a3,a3,1
   19278:	0ff6f693          	zext.b	a3,a3
   1927c:	00db8023          	sb	a3,0(s7)
   19280:	000c0a13          	mv	s4,s8
   19284:	4f00006f          	j	19774 <_dtoa_r+0xbd4>
   19288:	00c12683          	lw	a3,12(sp)
   1928c:	00002737          	lui	a4,0x2
   19290:	00c99793          	sll	a5,s3,0xc
   19294:	70f70713          	add	a4,a4,1807 # 270f <exit-0xd985>
   19298:	00c7d793          	srl	a5,a5,0xc
   1929c:	00e6a023          	sw	a4,0(a3)
   192a0:	01b7e7b3          	or	a5,a5,s11
   192a4:	0a078063          	beqz	a5,19344 <_dtoa_r+0x7a4>
   192a8:	00812783          	lw	a5,8(sp)
   192ac:	00009a97          	auipc	s5,0x9
   192b0:	a0ca8a93          	add	s5,s5,-1524 # 21cb8 <__clzsi2+0x244>
   192b4:	9c078ee3          	beqz	a5,18c90 <_dtoa_r+0xf0>
   192b8:	00009797          	auipc	a5,0x9
   192bc:	a0378793          	add	a5,a5,-1533 # 21cbb <__clzsi2+0x247>
   192c0:	00812703          	lw	a4,8(sp)
   192c4:	00f72023          	sw	a5,0(a4)
   192c8:	9c9ff06f          	j	18c90 <_dtoa_r+0xf0>
   192cc:	01c12783          	lw	a5,28(sp)
   192d0:	3ff006b7          	lui	a3,0x3ff00
   192d4:	06812a83          	lw	s5,104(sp)
   192d8:	00c79793          	sll	a5,a5,0xc
   192dc:	00c7d793          	srl	a5,a5,0xc
   192e0:	01812703          	lw	a4,24(sp)
   192e4:	00d7e7b3          	or	a5,a5,a3
   192e8:	c0190913          	add	s2,s2,-1023
   192ec:	02012c23          	sw	zero,56(sp)
   192f0:	a51ff06f          	j	18d40 <_dtoa_r+0x1a0>
   192f4:	00100793          	li	a5,1
   192f8:	415787b3          	sub	a5,a5,s5
   192fc:	00f12823          	sw	a5,16(sp)
   19300:	00000b13          	li	s6,0
   19304:	b409c4e3          	bltz	s3,18e4c <_dtoa_r+0x2ac>
   19308:	03312023          	sw	s3,32(sp)
   1930c:	02012823          	sw	zero,48(sp)
   19310:	00900793          	li	a5,9
   19314:	013b0b33          	add	s6,s6,s3
   19318:	b547fce3          	bgeu	a5,s4,18e70 <_dtoa_r+0x2d0>
   1931c:	00100793          	li	a5,1
   19320:	00100913          	li	s2,1
   19324:	00000a13          	li	s4,0
   19328:	02f12423          	sw	a5,40(sp)
   1932c:	fff00c13          	li	s8,-1
   19330:	00012a23          	sw	zero,20(sp)
   19334:	02042e23          	sw	zero,60(s0)
   19338:	03812e23          	sw	s8,60(sp)
   1933c:	00000593          	li	a1,0
   19340:	b99ff06f          	j	18ed8 <_dtoa_r+0x338>
   19344:	00812703          	lw	a4,8(sp)
   19348:	00009a97          	auipc	s5,0x9
   1934c:	964a8a93          	add	s5,s5,-1692 # 21cac <__clzsi2+0x238>
   19350:	00009797          	auipc	a5,0x9
   19354:	96478793          	add	a5,a5,-1692 # 21cb4 <__clzsi2+0x240>
   19358:	f60714e3          	bnez	a4,192c0 <_dtoa_r+0x720>
   1935c:	935ff06f          	j	18c90 <_dtoa_r+0xf0>
   19360:	00090513          	mv	a0,s2
   19364:	04f12623          	sw	a5,76(sp)
   19368:	04e12023          	sw	a4,64(sp)
   1936c:	0d8080ef          	jal	21444 <__floatsidf>
   19370:	04012703          	lw	a4,64(sp)
   19374:	04c12783          	lw	a5,76(sp)
   19378:	00070613          	mv	a2,a4
   1937c:	00078693          	mv	a3,a5
   19380:	04e12423          	sw	a4,72(sp)
   19384:	04f12023          	sw	a5,64(sp)
   19388:	74d060ef          	jal	202d4 <__muldf3>
   1938c:	0000a697          	auipc	a3,0xa
   19390:	56468693          	add	a3,a3,1380 # 238f0 <__SDATA_BEGIN__+0x58>
   19394:	0006a603          	lw	a2,0(a3)
   19398:	0046a683          	lw	a3,4(a3)
   1939c:	331050ef          	jal	1eecc <__adddf3>
   193a0:	04012783          	lw	a5,64(sp)
   193a4:	04812703          	lw	a4,72(sp)
   193a8:	fcc006b7          	lui	a3,0xfcc00
   193ac:	00050c93          	mv	s9,a0
   193b0:	00b68bb3          	add	s7,a3,a1
   193b4:	0000a697          	auipc	a3,0xa
   193b8:	54468693          	add	a3,a3,1348 # 238f8 <__SDATA_BEGIN__+0x60>
   193bc:	0006a603          	lw	a2,0(a3)
   193c0:	0046a683          	lw	a3,4(a3)
   193c4:	00070513          	mv	a0,a4
   193c8:	00078593          	mv	a1,a5
   193cc:	698070ef          	jal	20a64 <__subdf3>
   193d0:	000c8613          	mv	a2,s9
   193d4:	000b8693          	mv	a3,s7
   193d8:	00050d13          	mv	s10,a0
   193dc:	00058913          	mv	s2,a1
   193e0:	4ed060ef          	jal	200cc <__gedf2>
   193e4:	50a04ce3          	bgtz	a0,1a0fc <_dtoa_r+0x155c>
   193e8:	800007b7          	lui	a5,0x80000
   193ec:	0177c7b3          	xor	a5,a5,s7
   193f0:	000c8613          	mv	a2,s9
   193f4:	000d0513          	mv	a0,s10
   193f8:	00078693          	mv	a3,a5
   193fc:	00090593          	mv	a1,s2
   19400:	5cd060ef          	jal	201cc <__ledf2>
   19404:	06054c63          	bltz	a0,1947c <_dtoa_r+0x8dc>
   19408:	06c12783          	lw	a5,108(sp)
   1940c:	1a07c663          	bltz	a5,195b8 <_dtoa_r+0xa18>
   19410:	02012683          	lw	a3,32(sp)
   19414:	00e00713          	li	a4,14
   19418:	1ad74063          	blt	a4,a3,195b8 <_dtoa_r+0xa18>
   1941c:	02012783          	lw	a5,32(sp)
   19420:	00379713          	sll	a4,a5,0x3
   19424:	00009797          	auipc	a5,0x9
   19428:	1bc78793          	add	a5,a5,444 # 225e0 <__mprec_tens>
   1942c:	00e787b3          	add	a5,a5,a4
   19430:	0007a903          	lw	s2,0(a5)
   19434:	0047a983          	lw	s3,4(a5)
   19438:	01412783          	lw	a5,20(sp)
   1943c:	0407dc63          	bgez	a5,19494 <_dtoa_r+0x8f4>
   19440:	05804a63          	bgtz	s8,19494 <_dtoa_r+0x8f4>
   19444:	020c1c63          	bnez	s8,1947c <_dtoa_r+0x8dc>
   19448:	0000a797          	auipc	a5,0xa
   1944c:	4b078793          	add	a5,a5,1200 # 238f8 <__SDATA_BEGIN__+0x60>
   19450:	0007a603          	lw	a2,0(a5)
   19454:	0047a683          	lw	a3,4(a5)
   19458:	00090513          	mv	a0,s2
   1945c:	00098593          	mv	a1,s3
   19460:	675060ef          	jal	202d4 <__muldf3>
   19464:	00050613          	mv	a2,a0
   19468:	00058693          	mv	a3,a1
   1946c:	01812503          	lw	a0,24(sp)
   19470:	01c12583          	lw	a1,28(sp)
   19474:	559060ef          	jal	201cc <__ledf2>
   19478:	48a042e3          	bgtz	a0,1a0fc <_dtoa_r+0x155c>
   1947c:	000a8d13          	mv	s10,s5
   19480:	00012c23          	sw	zero,24(sp)
   19484:	00000913          	li	s2,0
   19488:	01412783          	lw	a5,20(sp)
   1948c:	fff7ca13          	not	s4,a5
   19490:	6980006f          	j	19b28 <_dtoa_r+0xf88>
   19494:	001a8793          	add	a5,s5,1
   19498:	04f12023          	sw	a5,64(sp)
   1949c:	01812b03          	lw	s6,24(sp)
   194a0:	01c12a03          	lw	s4,28(sp)
   194a4:	00090613          	mv	a2,s2
   194a8:	00098693          	mv	a3,s3
   194ac:	000b0513          	mv	a0,s6
   194b0:	000a0593          	mv	a1,s4
   194b4:	2e0060ef          	jal	1f794 <__divdf3>
   194b8:	709070ef          	jal	213c0 <__fixdfsi>
   194bc:	00050d13          	mv	s10,a0
   194c0:	785070ef          	jal	21444 <__floatsidf>
   194c4:	00090613          	mv	a2,s2
   194c8:	00098693          	mv	a3,s3
   194cc:	609060ef          	jal	202d4 <__muldf3>
   194d0:	00050613          	mv	a2,a0
   194d4:	00058693          	mv	a3,a1
   194d8:	000b0513          	mv	a0,s6
   194dc:	000a0593          	mv	a1,s4
   194e0:	584070ef          	jal	20a64 <__subdf3>
   194e4:	030d0793          	add	a5,s10,48
   194e8:	00fa8023          	sb	a5,0(s5)
   194ec:	00100613          	li	a2,1
   194f0:	04012b83          	lw	s7,64(sp)
   194f4:	00050713          	mv	a4,a0
   194f8:	00058693          	mv	a3,a1
   194fc:	0ccc0ee3          	beq	s8,a2,19dd8 <_dtoa_r+0x1238>
   19500:	0000a617          	auipc	a2,0xa
   19504:	3e860613          	add	a2,a2,1000 # 238e8 <__SDATA_BEGIN__+0x50>
   19508:	00062783          	lw	a5,0(a2)
   1950c:	00462803          	lw	a6,4(a2)
   19510:	00100d93          	li	s11,1
   19514:	00f12023          	sw	a5,0(sp)
   19518:	01012223          	sw	a6,4(sp)
   1951c:	0600006f          	j	1957c <_dtoa_r+0x9dc>
   19520:	00090613          	mv	a2,s2
   19524:	00098693          	mv	a3,s3
   19528:	000b0513          	mv	a0,s6
   1952c:	000a0593          	mv	a1,s4
   19530:	264060ef          	jal	1f794 <__divdf3>
   19534:	68d070ef          	jal	213c0 <__fixdfsi>
   19538:	00050d13          	mv	s10,a0
   1953c:	709070ef          	jal	21444 <__floatsidf>
   19540:	00090613          	mv	a2,s2
   19544:	00098693          	mv	a3,s3
   19548:	58d060ef          	jal	202d4 <__muldf3>
   1954c:	00058693          	mv	a3,a1
   19550:	00050613          	mv	a2,a0
   19554:	000a0593          	mv	a1,s4
   19558:	000b0513          	mv	a0,s6
   1955c:	508070ef          	jal	20a64 <__subdf3>
   19560:	001b8b93          	add	s7,s7,1
   19564:	030d0793          	add	a5,s10,48
   19568:	001d8d93          	add	s11,s11,1
   1956c:	fefb8fa3          	sb	a5,-1(s7)
   19570:	00050713          	mv	a4,a0
   19574:	00058693          	mv	a3,a1
   19578:	07bc00e3          	beq	s8,s11,19dd8 <_dtoa_r+0x1238>
   1957c:	00012603          	lw	a2,0(sp)
   19580:	00068593          	mv	a1,a3
   19584:	00412683          	lw	a3,4(sp)
   19588:	00070513          	mv	a0,a4
   1958c:	549060ef          	jal	202d4 <__muldf3>
   19590:	00000613          	li	a2,0
   19594:	00000693          	li	a3,0
   19598:	00050b13          	mv	s6,a0
   1959c:	00058a13          	mv	s4,a1
   195a0:	2a1060ef          	jal	20040 <__eqdf2>
   195a4:	f6051ee3          	bnez	a0,19520 <_dtoa_r+0x980>
   195a8:	02012783          	lw	a5,32(sp)
   195ac:	000b8d13          	mv	s10,s7
   195b0:	00178a13          	add	s4,a5,1
   195b4:	1c00006f          	j	19774 <_dtoa_r+0xbd4>
   195b8:	02812703          	lw	a4,40(sp)
   195bc:	26071463          	bnez	a4,19824 <_dtoa_r+0xc84>
   195c0:	03012b83          	lw	s7,48(sp)
   195c4:	01012c83          	lw	s9,16(sp)
   195c8:	02012423          	sw	zero,40(sp)
   195cc:	00000913          	li	s2,0
   195d0:	020c8263          	beqz	s9,195f4 <_dtoa_r+0xa54>
   195d4:	03605063          	blez	s6,195f4 <_dtoa_r+0xa54>
   195d8:	000c8793          	mv	a5,s9
   195dc:	679b4263          	blt	s6,s9,19c40 <_dtoa_r+0x10a0>
   195e0:	01012703          	lw	a4,16(sp)
   195e4:	40fc8cb3          	sub	s9,s9,a5
   195e8:	40fb0b33          	sub	s6,s6,a5
   195ec:	40f70733          	sub	a4,a4,a5
   195f0:	00e12823          	sw	a4,16(sp)
   195f4:	03012783          	lw	a5,48(sp)
   195f8:	02078263          	beqz	a5,1961c <_dtoa_r+0xa7c>
   195fc:	02812783          	lw	a5,40(sp)
   19600:	00078463          	beqz	a5,19608 <_dtoa_r+0xa68>
   19604:	060b9ae3          	bnez	s7,19e78 <_dtoa_r+0x12d8>
   19608:	03012603          	lw	a2,48(sp)
   1960c:	00048593          	mv	a1,s1
   19610:	00040513          	mv	a0,s0
   19614:	691010ef          	jal	1b4a4 <__pow5mult>
   19618:	00050493          	mv	s1,a0
   1961c:	00100593          	li	a1,1
   19620:	00040513          	mv	a0,s0
   19624:	309010ef          	jal	1b12c <__i2b>
   19628:	00a12c23          	sw	a0,24(sp)
   1962c:	50099a63          	bnez	s3,19b40 <_dtoa_r+0xfa0>
   19630:	00100793          	li	a5,1
   19634:	5547da63          	bge	a5,s4,19b88 <_dtoa_r+0xfe8>
   19638:	016787b3          	add	a5,a5,s6
   1963c:	01f7f793          	and	a5,a5,31
   19640:	1c078e63          	beqz	a5,1981c <_dtoa_r+0xc7c>
   19644:	02000713          	li	a4,32
   19648:	40f70733          	sub	a4,a4,a5
   1964c:	00400693          	li	a3,4
   19650:	58e6d263          	bge	a3,a4,19bd4 <_dtoa_r+0x1034>
   19654:	01c00713          	li	a4,28
   19658:	40f707b3          	sub	a5,a4,a5
   1965c:	01012703          	lw	a4,16(sp)
   19660:	00fc8cb3          	add	s9,s9,a5
   19664:	00fb0b33          	add	s6,s6,a5
   19668:	00f70733          	add	a4,a4,a5
   1966c:	00e12823          	sw	a4,16(sp)
   19670:	01012783          	lw	a5,16(sp)
   19674:	12f04e63          	bgtz	a5,197b0 <_dtoa_r+0xc10>
   19678:	01605c63          	blez	s6,19690 <_dtoa_r+0xaf0>
   1967c:	01812583          	lw	a1,24(sp)
   19680:	000b0613          	mv	a2,s6
   19684:	00040513          	mv	a0,s0
   19688:	76d010ef          	jal	1b5f4 <__lshift>
   1968c:	00a12c23          	sw	a0,24(sp)
   19690:	03412783          	lw	a5,52(sp)
   19694:	12079a63          	bnez	a5,197c8 <_dtoa_r+0xc28>
   19698:	45805263          	blez	s8,19adc <_dtoa_r+0xf3c>
   1969c:	02812783          	lw	a5,40(sp)
   196a0:	24079e63          	bnez	a5,198fc <_dtoa_r+0xd5c>
   196a4:	02012783          	lw	a5,32(sp)
   196a8:	00178a13          	add	s4,a5,1
   196ac:	01812b03          	lw	s6,24(sp)
   196b0:	00100993          	li	s3,1
   196b4:	0200006f          	j	196d4 <_dtoa_r+0xb34>
   196b8:	00048593          	mv	a1,s1
   196bc:	00000693          	li	a3,0
   196c0:	00a00613          	li	a2,10
   196c4:	00040513          	mv	a0,s0
   196c8:	64c010ef          	jal	1ad14 <__multadd>
   196cc:	00050493          	mv	s1,a0
   196d0:	00198993          	add	s3,s3,1
   196d4:	000b0593          	mv	a1,s6
   196d8:	00048513          	mv	a0,s1
   196dc:	a64ff0ef          	jal	18940 <quorem>
   196e0:	03050b93          	add	s7,a0,48
   196e4:	013a87b3          	add	a5,s5,s3
   196e8:	ff778fa3          	sb	s7,-1(a5)
   196ec:	fd89c6e3          	blt	s3,s8,196b8 <_dtoa_r+0xb18>
   196f0:	00100993          	li	s3,1
   196f4:	55804263          	bgtz	s8,19c38 <_dtoa_r+0x1098>
   196f8:	013a89b3          	add	s3,s5,s3
   196fc:	00000c13          	li	s8,0
   19700:	00048593          	mv	a1,s1
   19704:	00100613          	li	a2,1
   19708:	00040513          	mv	a0,s0
   1970c:	6e9010ef          	jal	1b5f4 <__lshift>
   19710:	01812583          	lw	a1,24(sp)
   19714:	00050493          	mv	s1,a0
   19718:	06c020ef          	jal	1b784 <__mcmp>
   1971c:	4ea05c63          	blez	a0,19c14 <_dtoa_r+0x1074>
   19720:	03900693          	li	a3,57
   19724:	0080006f          	j	1972c <_dtoa_r+0xb8c>
   19728:	5f3a8863          	beq	s5,s3,19d18 <_dtoa_r+0x1178>
   1972c:	fff9c783          	lbu	a5,-1(s3)
   19730:	00098d13          	mv	s10,s3
   19734:	fff98993          	add	s3,s3,-1
   19738:	fed788e3          	beq	a5,a3,19728 <_dtoa_r+0xb88>
   1973c:	00178793          	add	a5,a5,1
   19740:	00f98023          	sb	a5,0(s3)
   19744:	01812583          	lw	a1,24(sp)
   19748:	00040513          	mv	a0,s0
   1974c:	5a4010ef          	jal	1acf0 <_Bfree>
   19750:	02090263          	beqz	s2,19774 <_dtoa_r+0xbd4>
   19754:	000c0a63          	beqz	s8,19768 <_dtoa_r+0xbc8>
   19758:	012c0863          	beq	s8,s2,19768 <_dtoa_r+0xbc8>
   1975c:	000c0593          	mv	a1,s8
   19760:	00040513          	mv	a0,s0
   19764:	58c010ef          	jal	1acf0 <_Bfree>
   19768:	00090593          	mv	a1,s2
   1976c:	00040513          	mv	a0,s0
   19770:	580010ef          	jal	1acf0 <_Bfree>
   19774:	00048593          	mv	a1,s1
   19778:	00040513          	mv	a0,s0
   1977c:	574010ef          	jal	1acf0 <_Bfree>
   19780:	00c12783          	lw	a5,12(sp)
   19784:	000d0023          	sb	zero,0(s10)
   19788:	0147a023          	sw	s4,0(a5)
   1978c:	00812783          	lw	a5,8(sp)
   19790:	00078463          	beqz	a5,19798 <_dtoa_r+0xbf8>
   19794:	01a7a023          	sw	s10,0(a5)
   19798:	09012b03          	lw	s6,144(sp)
   1979c:	08c12b83          	lw	s7,140(sp)
   197a0:	08812c03          	lw	s8,136(sp)
   197a4:	08412c83          	lw	s9,132(sp)
   197a8:	08012d03          	lw	s10,128(sp)
   197ac:	ce4ff06f          	j	18c90 <_dtoa_r+0xf0>
   197b0:	00048593          	mv	a1,s1
   197b4:	00078613          	mv	a2,a5
   197b8:	00040513          	mv	a0,s0
   197bc:	639010ef          	jal	1b5f4 <__lshift>
   197c0:	00050493          	mv	s1,a0
   197c4:	eb5ff06f          	j	19678 <_dtoa_r+0xad8>
   197c8:	01812583          	lw	a1,24(sp)
   197cc:	00048513          	mv	a0,s1
   197d0:	7b5010ef          	jal	1b784 <__mcmp>
   197d4:	ec0552e3          	bgez	a0,19698 <_dtoa_r+0xaf8>
   197d8:	02012783          	lw	a5,32(sp)
   197dc:	00048593          	mv	a1,s1
   197e0:	00000693          	li	a3,0
   197e4:	00a00613          	li	a2,10
   197e8:	00040513          	mv	a0,s0
   197ec:	fff78b13          	add	s6,a5,-1
   197f0:	524010ef          	jal	1ad14 <__multadd>
   197f4:	02812783          	lw	a5,40(sp)
   197f8:	00050493          	mv	s1,a0
   197fc:	0c079e63          	bnez	a5,198d8 <_dtoa_r+0xd38>
   19800:	03c12c03          	lw	s8,60(sp)
   19804:	17805ee3          	blez	s8,1a180 <_dtoa_r+0x15e0>
   19808:	02012a03          	lw	s4,32(sp)
   1980c:	ea1ff06f          	j	196ac <_dtoa_r+0xb0c>
   19810:	00100793          	li	a5,1
   19814:	02f12a23          	sw	a5,52(sp)
   19818:	e28ff06f          	j	18e40 <_dtoa_r+0x2a0>
   1981c:	01c00793          	li	a5,28
   19820:	e3dff06f          	j	1965c <_dtoa_r+0xabc>
   19824:	00100713          	li	a4,1
   19828:	4d475463          	bge	a4,s4,19cf0 <_dtoa_r+0x1150>
   1982c:	03012783          	lw	a5,48(sp)
   19830:	fffc0b93          	add	s7,s8,-1
   19834:	4177ca63          	blt	a5,s7,19c48 <_dtoa_r+0x10a8>
   19838:	41778bb3          	sub	s7,a5,s7
   1983c:	01012783          	lw	a5,16(sp)
   19840:	41878cb3          	sub	s9,a5,s8
   19844:	100c54e3          	bgez	s8,1a14c <_dtoa_r+0x15ac>
   19848:	00100593          	li	a1,1
   1984c:	00040513          	mv	a0,s0
   19850:	0dd010ef          	jal	1b12c <__i2b>
   19854:	00050913          	mv	s2,a0
   19858:	d79ff06f          	j	195d0 <_dtoa_r+0xa30>
   1985c:	02012a23          	sw	zero,52(sp)
   19860:	00012823          	sw	zero,16(sp)
   19864:	ab5042e3          	bgtz	s5,19308 <_dtoa_r+0x768>
   19868:	00100793          	li	a5,1
   1986c:	415787b3          	sub	a5,a5,s5
   19870:	00f12823          	sw	a5,16(sp)
   19874:	00000b13          	li	s6,0
   19878:	a91ff06f          	j	19308 <_dtoa_r+0x768>
   1987c:	40e787b3          	sub	a5,a5,a4
   19880:	00fd9533          	sll	a0,s11,a5
   19884:	ca0ff06f          	j	18d24 <_dtoa_r+0x184>
   19888:	00300793          	li	a5,3
   1988c:	00100913          	li	s2,1
   19890:	44fa0c63          	beq	s4,a5,19ce8 <_dtoa_r+0x1148>
   19894:	df47cc63          	blt	a5,s4,18e8c <_dtoa_r+0x2ec>
   19898:	00200793          	li	a5,2
   1989c:	18fa00e3          	beq	s4,a5,1a21c <_dtoa_r+0x167c>
   198a0:	02042e23          	sw	zero,60(s0)
   198a4:	00000593          	li	a1,0
   198a8:	00040513          	mv	a0,s0
   198ac:	390010ef          	jal	1ac3c <_Balloc>
   198b0:	00050a93          	mv	s5,a0
   198b4:	140500e3          	beqz	a0,1a1f4 <_dtoa_r+0x1654>
   198b8:	00100793          	li	a5,1
   198bc:	02f12423          	sw	a5,40(sp)
   198c0:	fff00793          	li	a5,-1
   198c4:	02a42c23          	sw	a0,56(s0)
   198c8:	02f12e23          	sw	a5,60(sp)
   198cc:	fff00c13          	li	s8,-1
   198d0:	00012a23          	sw	zero,20(sp)
   198d4:	b35ff06f          	j	19408 <_dtoa_r+0x868>
   198d8:	00090593          	mv	a1,s2
   198dc:	00000693          	li	a3,0
   198e0:	00a00613          	li	a2,10
   198e4:	00040513          	mv	a0,s0
   198e8:	42c010ef          	jal	1ad14 <__multadd>
   198ec:	03c12c03          	lw	s8,60(sp)
   198f0:	00050913          	mv	s2,a0
   198f4:	0b805ae3          	blez	s8,1a1a8 <_dtoa_r+0x1608>
   198f8:	03612023          	sw	s6,32(sp)
   198fc:	01905c63          	blez	s9,19914 <_dtoa_r+0xd74>
   19900:	00090593          	mv	a1,s2
   19904:	000c8613          	mv	a2,s9
   19908:	00040513          	mv	a0,s0
   1990c:	4e9010ef          	jal	1b5f4 <__lshift>
   19910:	00050913          	mv	s2,a0
   19914:	00090b13          	mv	s6,s2
   19918:	50099e63          	bnez	s3,19e34 <_dtoa_r+0x1294>
   1991c:	02412783          	lw	a5,36(sp)
   19920:	fffa8d13          	add	s10,s5,-1
   19924:	000a8c93          	mv	s9,s5
   19928:	01512823          	sw	s5,16(sp)
   1992c:	01812a83          	lw	s5,24(sp)
   19930:	0017f793          	and	a5,a5,1
   19934:	018d0d33          	add	s10,s10,s8
   19938:	00f12023          	sw	a5,0(sp)
   1993c:	01b12a23          	sw	s11,20(sp)
   19940:	000a8593          	mv	a1,s5
   19944:	00048513          	mv	a0,s1
   19948:	ff9fe0ef          	jal	18940 <quorem>
   1994c:	00050c13          	mv	s8,a0
   19950:	00090593          	mv	a1,s2
   19954:	00048513          	mv	a0,s1
   19958:	62d010ef          	jal	1b784 <__mcmp>
   1995c:	00050993          	mv	s3,a0
   19960:	000b0613          	mv	a2,s6
   19964:	000a8593          	mv	a1,s5
   19968:	00040513          	mv	a0,s0
   1996c:	671010ef          	jal	1b7dc <__mdiff>
   19970:	00c52703          	lw	a4,12(a0)
   19974:	030c0b93          	add	s7,s8,48
   19978:	00050d93          	mv	s11,a0
   1997c:	08071c63          	bnez	a4,19a14 <_dtoa_r+0xe74>
   19980:	00050593          	mv	a1,a0
   19984:	00048513          	mv	a0,s1
   19988:	5fd010ef          	jal	1b784 <__mcmp>
   1998c:	00050713          	mv	a4,a0
   19990:	000d8593          	mv	a1,s11
   19994:	00040513          	mv	a0,s0
   19998:	00070d93          	mv	s11,a4
   1999c:	354010ef          	jal	1acf0 <_Bfree>
   199a0:	014de6b3          	or	a3,s11,s4
   199a4:	0e069a63          	bnez	a3,19a98 <_dtoa_r+0xef8>
   199a8:	00012783          	lw	a5,0(sp)
   199ac:	76078e63          	beqz	a5,1a128 <_dtoa_r+0x1588>
   199b0:	7809c663          	bltz	s3,1a13c <_dtoa_r+0x159c>
   199b4:	017c8023          	sb	s7,0(s9)
   199b8:	001c8993          	add	s3,s9,1
   199bc:	679d0e63          	beq	s10,s9,1a038 <_dtoa_r+0x1498>
   199c0:	00048593          	mv	a1,s1
   199c4:	00000693          	li	a3,0
   199c8:	00a00613          	li	a2,10
   199cc:	00040513          	mv	a0,s0
   199d0:	344010ef          	jal	1ad14 <__multadd>
   199d4:	00050493          	mv	s1,a0
   199d8:	00000693          	li	a3,0
   199dc:	00a00613          	li	a2,10
   199e0:	00090593          	mv	a1,s2
   199e4:	00040513          	mv	a0,s0
   199e8:	09690e63          	beq	s2,s6,19a84 <_dtoa_r+0xee4>
   199ec:	328010ef          	jal	1ad14 <__multadd>
   199f0:	000b0593          	mv	a1,s6
   199f4:	00050913          	mv	s2,a0
   199f8:	00000693          	li	a3,0
   199fc:	00a00613          	li	a2,10
   19a00:	00040513          	mv	a0,s0
   19a04:	310010ef          	jal	1ad14 <__multadd>
   19a08:	00050b13          	mv	s6,a0
   19a0c:	00098c93          	mv	s9,s3
   19a10:	f31ff06f          	j	19940 <_dtoa_r+0xda0>
   19a14:	00050593          	mv	a1,a0
   19a18:	00040513          	mv	a0,s0
   19a1c:	01012a83          	lw	s5,16(sp)
   19a20:	01412d83          	lw	s11,20(sp)
   19a24:	2cc010ef          	jal	1acf0 <_Bfree>
   19a28:	0009ca63          	bltz	s3,19a3c <_dtoa_r+0xe9c>
   19a2c:	001df713          	and	a4,s11,1
   19a30:	0149e9b3          	or	s3,s3,s4
   19a34:	01376733          	or	a4,a4,s3
   19a38:	06071e63          	bnez	a4,19ab4 <_dtoa_r+0xf14>
   19a3c:	00048593          	mv	a1,s1
   19a40:	00100613          	li	a2,1
   19a44:	00040513          	mv	a0,s0
   19a48:	3ad010ef          	jal	1b5f4 <__lshift>
   19a4c:	01812583          	lw	a1,24(sp)
   19a50:	00050493          	mv	s1,a0
   19a54:	531010ef          	jal	1b784 <__mcmp>
   19a58:	24a05863          	blez	a0,19ca8 <_dtoa_r+0x1108>
   19a5c:	03900713          	li	a4,57
   19a60:	24eb8c63          	beq	s7,a4,19cb8 <_dtoa_r+0x1118>
   19a64:	031c0b93          	add	s7,s8,49
   19a68:	02012783          	lw	a5,32(sp)
   19a6c:	00090c13          	mv	s8,s2
   19a70:	001c8d13          	add	s10,s9,1
   19a74:	017c8023          	sb	s7,0(s9)
   19a78:	00178a13          	add	s4,a5,1
   19a7c:	000b0913          	mv	s2,s6
   19a80:	cc5ff06f          	j	19744 <_dtoa_r+0xba4>
   19a84:	290010ef          	jal	1ad14 <__multadd>
   19a88:	00050913          	mv	s2,a0
   19a8c:	00050b13          	mv	s6,a0
   19a90:	00098c93          	mv	s9,s3
   19a94:	eadff06f          	j	19940 <_dtoa_r+0xda0>
   19a98:	7409c863          	bltz	s3,1a1e8 <_dtoa_r+0x1648>
   19a9c:	00012783          	lw	a5,0(sp)
   19aa0:	0149e9b3          	or	s3,s3,s4
   19aa4:	0137e9b3          	or	s3,a5,s3
   19aa8:	74098063          	beqz	s3,1a1e8 <_dtoa_r+0x1648>
   19aac:	f1b054e3          	blez	s11,199b4 <_dtoa_r+0xe14>
   19ab0:	01012a83          	lw	s5,16(sp)
   19ab4:	03900713          	li	a4,57
   19ab8:	20eb8063          	beq	s7,a4,19cb8 <_dtoa_r+0x1118>
   19abc:	02012703          	lw	a4,32(sp)
   19ac0:	001b8793          	add	a5,s7,1
   19ac4:	00090c13          	mv	s8,s2
   19ac8:	001c8d13          	add	s10,s9,1
   19acc:	00170a13          	add	s4,a4,1
   19ad0:	00fc8023          	sb	a5,0(s9)
   19ad4:	000b0913          	mv	s2,s6
   19ad8:	c6dff06f          	j	19744 <_dtoa_r+0xba4>
   19adc:	00200793          	li	a5,2
   19ae0:	bb47dee3          	bge	a5,s4,1969c <_dtoa_r+0xafc>
   19ae4:	000a8d13          	mv	s10,s5
   19ae8:	9a0c10e3          	bnez	s8,19488 <_dtoa_r+0x8e8>
   19aec:	01812583          	lw	a1,24(sp)
   19af0:	00000693          	li	a3,0
   19af4:	00500613          	li	a2,5
   19af8:	00040513          	mv	a0,s0
   19afc:	218010ef          	jal	1ad14 <__multadd>
   19b00:	00050593          	mv	a1,a0
   19b04:	00a12c23          	sw	a0,24(sp)
   19b08:	00048513          	mv	a0,s1
   19b0c:	479010ef          	jal	1b784 <__mcmp>
   19b10:	96a05ce3          	blez	a0,19488 <_dtoa_r+0x8e8>
   19b14:	03100793          	li	a5,49
   19b18:	00fa8023          	sb	a5,0(s5)
   19b1c:	02012783          	lw	a5,32(sp)
   19b20:	001a8d13          	add	s10,s5,1
   19b24:	00178a13          	add	s4,a5,1
   19b28:	01812583          	lw	a1,24(sp)
   19b2c:	00040513          	mv	a0,s0
   19b30:	001a0a13          	add	s4,s4,1
   19b34:	1bc010ef          	jal	1acf0 <_Bfree>
   19b38:	c20918e3          	bnez	s2,19768 <_dtoa_r+0xbc8>
   19b3c:	c39ff06f          	j	19774 <_dtoa_r+0xbd4>
   19b40:	00050593          	mv	a1,a0
   19b44:	00098613          	mv	a2,s3
   19b48:	00040513          	mv	a0,s0
   19b4c:	159010ef          	jal	1b4a4 <__pow5mult>
   19b50:	00100793          	li	a5,1
   19b54:	00a12c23          	sw	a0,24(sp)
   19b58:	1147de63          	bge	a5,s4,19c74 <_dtoa_r+0x10d4>
   19b5c:	00000993          	li	s3,0
   19b60:	01812703          	lw	a4,24(sp)
   19b64:	01072783          	lw	a5,16(a4)
   19b68:	00378793          	add	a5,a5,3
   19b6c:	00279793          	sll	a5,a5,0x2
   19b70:	00f707b3          	add	a5,a4,a5
   19b74:	0047a503          	lw	a0,4(a5)
   19b78:	45c010ef          	jal	1afd4 <__hi0bits>
   19b7c:	02000793          	li	a5,32
   19b80:	40a787b3          	sub	a5,a5,a0
   19b84:	ab5ff06f          	j	19638 <_dtoa_r+0xa98>
   19b88:	02412783          	lw	a5,36(sp)
   19b8c:	04079063          	bnez	a5,19bcc <_dtoa_r+0x102c>
   19b90:	00012783          	lw	a5,0(sp)
   19b94:	00c79793          	sll	a5,a5,0xc
   19b98:	02079a63          	bnez	a5,19bcc <_dtoa_r+0x102c>
   19b9c:	00012683          	lw	a3,0(sp)
   19ba0:	00000793          	li	a5,0
   19ba4:	0146d713          	srl	a4,a3,0x14
   19ba8:	7ff77713          	and	a4,a4,2047
   19bac:	00070c63          	beqz	a4,19bc4 <_dtoa_r+0x1024>
   19bb0:	01012783          	lw	a5,16(sp)
   19bb4:	001b0b13          	add	s6,s6,1
   19bb8:	00178793          	add	a5,a5,1
   19bbc:	00f12823          	sw	a5,16(sp)
   19bc0:	00100793          	li	a5,1
   19bc4:	58099063          	bnez	s3,1a144 <_dtoa_r+0x15a4>
   19bc8:	00078993          	mv	s3,a5
   19bcc:	00100793          	li	a5,1
   19bd0:	a69ff06f          	j	19638 <_dtoa_r+0xa98>
   19bd4:	a8d70ee3          	beq	a4,a3,19670 <_dtoa_r+0xad0>
   19bd8:	03c00713          	li	a4,60
   19bdc:	40f707b3          	sub	a5,a4,a5
   19be0:	a7dff06f          	j	1965c <_dtoa_r+0xabc>
   19be4:	00100793          	li	a5,1
   19be8:	00500a13          	li	s4,5
   19bec:	02f12423          	sw	a5,40(sp)
   19bf0:	01412783          	lw	a5,20(sp)
   19bf4:	02012703          	lw	a4,32(sp)
   19bf8:	00e787b3          	add	a5,a5,a4
   19bfc:	00178c13          	add	s8,a5,1
   19c00:	02f12e23          	sw	a5,60(sp)
   19c04:	000c0613          	mv	a2,s8
   19c08:	ab804263          	bgtz	s8,18eac <_dtoa_r+0x30c>
   19c0c:	00100613          	li	a2,1
   19c10:	a9cff06f          	j	18eac <_dtoa_r+0x30c>
   19c14:	00051663          	bnez	a0,19c20 <_dtoa_r+0x1080>
   19c18:	001bf793          	and	a5,s7,1
   19c1c:	b00792e3          	bnez	a5,19720 <_dtoa_r+0xb80>
   19c20:	03000693          	li	a3,48
   19c24:	fff9c783          	lbu	a5,-1(s3)
   19c28:	00098d13          	mv	s10,s3
   19c2c:	fff98993          	add	s3,s3,-1
   19c30:	fed78ae3          	beq	a5,a3,19c24 <_dtoa_r+0x1084>
   19c34:	b11ff06f          	j	19744 <_dtoa_r+0xba4>
   19c38:	000c0993          	mv	s3,s8
   19c3c:	abdff06f          	j	196f8 <_dtoa_r+0xb58>
   19c40:	000b0793          	mv	a5,s6
   19c44:	99dff06f          	j	195e0 <_dtoa_r+0xa40>
   19c48:	03012783          	lw	a5,48(sp)
   19c4c:	01012703          	lw	a4,16(sp)
   19c50:	03712823          	sw	s7,48(sp)
   19c54:	40fb87b3          	sub	a5,s7,a5
   19c58:	00f989b3          	add	s3,s3,a5
   19c5c:	018707b3          	add	a5,a4,s8
   19c60:	00070c93          	mv	s9,a4
   19c64:	018b0b33          	add	s6,s6,s8
   19c68:	00f12823          	sw	a5,16(sp)
   19c6c:	00000b93          	li	s7,0
   19c70:	bd9ff06f          	j	19848 <_dtoa_r+0xca8>
   19c74:	02412783          	lw	a5,36(sp)
   19c78:	ee0792e3          	bnez	a5,19b5c <_dtoa_r+0xfbc>
   19c7c:	00012783          	lw	a5,0(sp)
   19c80:	00c79793          	sll	a5,a5,0xc
   19c84:	ec079ce3          	bnez	a5,19b5c <_dtoa_r+0xfbc>
   19c88:	f15ff06f          	j	19b9c <_dtoa_r+0xffc>
   19c8c:	01812303          	lw	t1,24(sp)
   19c90:	01c12d03          	lw	s10,28(sp)
   19c94:	00200913          	li	s2,2
   19c98:	ad0ff06f          	j	18f68 <_dtoa_r+0x3c8>
   19c9c:	00200a13          	li	s4,2
   19ca0:	02012423          	sw	zero,40(sp)
   19ca4:	9f8ff06f          	j	18e9c <_dtoa_r+0x2fc>
   19ca8:	dc0510e3          	bnez	a0,19a68 <_dtoa_r+0xec8>
   19cac:	001bf713          	and	a4,s7,1
   19cb0:	da0716e3          	bnez	a4,19a5c <_dtoa_r+0xebc>
   19cb4:	db5ff06f          	j	19a68 <_dtoa_r+0xec8>
   19cb8:	03900793          	li	a5,57
   19cbc:	00fc8023          	sb	a5,0(s9)
   19cc0:	02012783          	lw	a5,32(sp)
   19cc4:	00090c13          	mv	s8,s2
   19cc8:	001c8993          	add	s3,s9,1
   19ccc:	00178a13          	add	s4,a5,1
   19cd0:	000b0913          	mv	s2,s6
   19cd4:	a4dff06f          	j	19720 <_dtoa_r+0xb80>
   19cd8:	00100793          	li	a5,1
   19cdc:	00100c13          	li	s8,1
   19ce0:	00f12a23          	sw	a5,20(sp)
   19ce4:	e50ff06f          	j	19334 <_dtoa_r+0x794>
   19ce8:	02012423          	sw	zero,40(sp)
   19cec:	f05ff06f          	j	19bf0 <_dtoa_r+0x1050>
   19cf0:	03812703          	lw	a4,56(sp)
   19cf4:	30070e63          	beqz	a4,1a010 <_dtoa_r+0x1470>
   19cf8:	01012703          	lw	a4,16(sp)
   19cfc:	43378793          	add	a5,a5,1075
   19d00:	00fb0b33          	add	s6,s6,a5
   19d04:	00f707b3          	add	a5,a4,a5
   19d08:	03012b83          	lw	s7,48(sp)
   19d0c:	00070c93          	mv	s9,a4
   19d10:	00f12823          	sw	a5,16(sp)
   19d14:	b35ff06f          	j	19848 <_dtoa_r+0xca8>
   19d18:	03100793          	li	a5,49
   19d1c:	00fa8023          	sb	a5,0(s5)
   19d20:	001a0a13          	add	s4,s4,1
   19d24:	a21ff06f          	j	19744 <_dtoa_r+0xba4>
   19d28:	02012783          	lw	a5,32(sp)
   19d2c:	32078263          	beqz	a5,1a050 <_dtoa_r+0x14b0>
   19d30:	40f00bb3          	neg	s7,a5
   19d34:	00fbf713          	and	a4,s7,15
   19d38:	00371713          	sll	a4,a4,0x3
   19d3c:	00009797          	auipc	a5,0x9
   19d40:	8a478793          	add	a5,a5,-1884 # 225e0 <__mprec_tens>
   19d44:	00e787b3          	add	a5,a5,a4
   19d48:	0007a603          	lw	a2,0(a5)
   19d4c:	0047a683          	lw	a3,4(a5)
   19d50:	01812503          	lw	a0,24(sp)
   19d54:	01c12583          	lw	a1,28(sp)
   19d58:	404bdb93          	sra	s7,s7,0x4
   19d5c:	578060ef          	jal	202d4 <__muldf3>
   19d60:	00058d13          	mv	s10,a1
   19d64:	440b8c63          	beqz	s7,1a1bc <_dtoa_r+0x161c>
   19d68:	00200913          	li	s2,2
   19d6c:	04812023          	sw	s0,64(sp)
   19d70:	00009c97          	auipc	s9,0x9
   19d74:	848c8c93          	add	s9,s9,-1976 # 225b8 <__mprec_bigtens>
   19d78:	00090413          	mv	s0,s2
   19d7c:	00050713          	mv	a4,a0
   19d80:	00000613          	li	a2,0
   19d84:	00050913          	mv	s2,a0
   19d88:	001bf693          	and	a3,s7,1
   19d8c:	02068063          	beqz	a3,19dac <_dtoa_r+0x120c>
   19d90:	000ca603          	lw	a2,0(s9)
   19d94:	004ca683          	lw	a3,4(s9)
   19d98:	00070513          	mv	a0,a4
   19d9c:	00140413          	add	s0,s0,1
   19da0:	534060ef          	jal	202d4 <__muldf3>
   19da4:	00050713          	mv	a4,a0
   19da8:	00100613          	li	a2,1
   19dac:	401bdb93          	sra	s7,s7,0x1
   19db0:	008c8c93          	add	s9,s9,8
   19db4:	fc0b9ae3          	bnez	s7,19d88 <_dtoa_r+0x11e8>
   19db8:	00090513          	mv	a0,s2
   19dbc:	00058793          	mv	a5,a1
   19dc0:	00040913          	mv	s2,s0
   19dc4:	04012403          	lw	s0,64(sp)
   19dc8:	a0061a63          	bnez	a2,18fdc <_dtoa_r+0x43c>
   19dcc:	00050713          	mv	a4,a0
   19dd0:	000d0793          	mv	a5,s10
   19dd4:	a08ff06f          	j	18fdc <_dtoa_r+0x43c>
   19dd8:	00068593          	mv	a1,a3
   19ddc:	00070613          	mv	a2,a4
   19de0:	00070513          	mv	a0,a4
   19de4:	0e8050ef          	jal	1eecc <__adddf3>
   19de8:	02012783          	lw	a5,32(sp)
   19dec:	00090613          	mv	a2,s2
   19df0:	00098693          	mv	a3,s3
   19df4:	00178a13          	add	s4,a5,1
   19df8:	00050c93          	mv	s9,a0
   19dfc:	00058b13          	mv	s6,a1
   19e00:	000a0c13          	mv	s8,s4
   19e04:	2c8060ef          	jal	200cc <__gedf2>
   19e08:	c4a04863          	bgtz	a0,19258 <_dtoa_r+0x6b8>
   19e0c:	000c8513          	mv	a0,s9
   19e10:	000b0593          	mv	a1,s6
   19e14:	00090613          	mv	a2,s2
   19e18:	00098693          	mv	a3,s3
   19e1c:	224060ef          	jal	20040 <__eqdf2>
   19e20:	00051663          	bnez	a0,19e2c <_dtoa_r+0x128c>
   19e24:	001d7d13          	and	s10,s10,1
   19e28:	c20d1863          	bnez	s10,19258 <_dtoa_r+0x6b8>
   19e2c:	000b8d13          	mv	s10,s7
   19e30:	945ff06f          	j	19774 <_dtoa_r+0xbd4>
   19e34:	00492583          	lw	a1,4(s2)
   19e38:	00040513          	mv	a0,s0
   19e3c:	601000ef          	jal	1ac3c <_Balloc>
   19e40:	00050993          	mv	s3,a0
   19e44:	38050463          	beqz	a0,1a1cc <_dtoa_r+0x162c>
   19e48:	01092603          	lw	a2,16(s2)
   19e4c:	00c90593          	add	a1,s2,12
   19e50:	00c50513          	add	a0,a0,12
   19e54:	00260613          	add	a2,a2,2
   19e58:	00261613          	sll	a2,a2,0x2
   19e5c:	dd4fe0ef          	jal	18430 <memcpy>
   19e60:	00100613          	li	a2,1
   19e64:	00098593          	mv	a1,s3
   19e68:	00040513          	mv	a0,s0
   19e6c:	788010ef          	jal	1b5f4 <__lshift>
   19e70:	00050b13          	mv	s6,a0
   19e74:	aa9ff06f          	j	1991c <_dtoa_r+0xd7c>
   19e78:	00090593          	mv	a1,s2
   19e7c:	000b8613          	mv	a2,s7
   19e80:	00040513          	mv	a0,s0
   19e84:	620010ef          	jal	1b4a4 <__pow5mult>
   19e88:	00048613          	mv	a2,s1
   19e8c:	00050593          	mv	a1,a0
   19e90:	00050913          	mv	s2,a0
   19e94:	00040513          	mv	a0,s0
   19e98:	344010ef          	jal	1b1dc <__multiply>
   19e9c:	00050793          	mv	a5,a0
   19ea0:	00048593          	mv	a1,s1
   19ea4:	00040513          	mv	a0,s0
   19ea8:	00078493          	mv	s1,a5
   19eac:	645000ef          	jal	1acf0 <_Bfree>
   19eb0:	03012783          	lw	a5,48(sp)
   19eb4:	417787b3          	sub	a5,a5,s7
   19eb8:	02f12823          	sw	a5,48(sp)
   19ebc:	f6078063          	beqz	a5,1961c <_dtoa_r+0xa7c>
   19ec0:	f48ff06f          	j	19608 <_dtoa_r+0xa68>
   19ec4:	05012603          	lw	a2,80(sp)
   19ec8:	05412683          	lw	a3,84(sp)
   19ecc:	05812503          	lw	a0,88(sp)
   19ed0:	04b12623          	sw	a1,76(sp)
   19ed4:	000b8593          	mv	a1,s7
   19ed8:	02612423          	sw	t1,40(sp)
   19edc:	3f8060ef          	jal	202d4 <__muldf3>
   19ee0:	02812303          	lw	t1,40(sp)
   19ee4:	04812783          	lw	a5,72(sp)
   19ee8:	00100693          	li	a3,1
   19eec:	006a8023          	sb	t1,0(s5)
   19ef0:	02a12c23          	sw	a0,56(sp)
   19ef4:	04c12883          	lw	a7,76(sp)
   19ef8:	00058913          	mv	s2,a1
   19efc:	00fa8bb3          	add	s7,s5,a5
   19f00:	0000a617          	auipc	a2,0xa
   19f04:	9e860613          	add	a2,a2,-1560 # 238e8 <__SDATA_BEGIN__+0x50>
   19f08:	28d78c63          	beq	a5,a3,1a1a0 <_dtoa_r+0x1600>
   19f0c:	00062783          	lw	a5,0(a2)
   19f10:	00462803          	lw	a6,4(a2)
   19f14:	04912423          	sw	s1,72(sp)
   19f18:	02f12423          	sw	a5,40(sp)
   19f1c:	03012623          	sw	a6,44(sp)
   19f20:	04812623          	sw	s0,76(sp)
   19f24:	000c8513          	mv	a0,s9
   19f28:	00088593          	mv	a1,a7
   19f2c:	02812603          	lw	a2,40(sp)
   19f30:	02c12683          	lw	a3,44(sp)
   19f34:	001d0d13          	add	s10,s10,1
   19f38:	39c060ef          	jal	202d4 <__muldf3>
   19f3c:	00058413          	mv	s0,a1
   19f40:	00050493          	mv	s1,a0
   19f44:	47c070ef          	jal	213c0 <__fixdfsi>
   19f48:	00050c93          	mv	s9,a0
   19f4c:	4f8070ef          	jal	21444 <__floatsidf>
   19f50:	00050613          	mv	a2,a0
   19f54:	00058693          	mv	a3,a1
   19f58:	00048513          	mv	a0,s1
   19f5c:	00040593          	mv	a1,s0
   19f60:	030c8c93          	add	s9,s9,48
   19f64:	301060ef          	jal	20a64 <__subdf3>
   19f68:	ff9d0fa3          	sb	s9,-1(s10)
   19f6c:	fdab90e3          	bne	s7,s10,19f2c <_dtoa_r+0x138c>
   19f70:	04812483          	lw	s1,72(sp)
   19f74:	04c12403          	lw	s0,76(sp)
   19f78:	00050c93          	mv	s9,a0
   19f7c:	00058893          	mv	a7,a1
   19f80:	0000ad17          	auipc	s10,0xa
   19f84:	930d0d13          	add	s10,s10,-1744 # 238b0 <__SDATA_BEGIN__+0x18>
   19f88:	000d2603          	lw	a2,0(s10)
   19f8c:	004d2683          	lw	a3,4(s10)
   19f90:	03812503          	lw	a0,56(sp)
   19f94:	00090593          	mv	a1,s2
   19f98:	03112423          	sw	a7,40(sp)
   19f9c:	731040ef          	jal	1eecc <__adddf3>
   19fa0:	02812883          	lw	a7,40(sp)
   19fa4:	000c8613          	mv	a2,s9
   19fa8:	00088693          	mv	a3,a7
   19fac:	220060ef          	jal	201cc <__ledf2>
   19fb0:	1a054863          	bltz	a0,1a160 <_dtoa_r+0x15c0>
   19fb4:	03812603          	lw	a2,56(sp)
   19fb8:	000d2503          	lw	a0,0(s10)
   19fbc:	004d2583          	lw	a1,4(s10)
   19fc0:	00090693          	mv	a3,s2
   19fc4:	2a1060ef          	jal	20a64 <__subdf3>
   19fc8:	02812883          	lw	a7,40(sp)
   19fcc:	000c8613          	mv	a2,s9
   19fd0:	00088693          	mv	a3,a7
   19fd4:	0f8060ef          	jal	200cc <__gedf2>
   19fd8:	12a04863          	bgtz	a0,1a108 <_dtoa_r+0x1568>
   19fdc:	06c12783          	lw	a5,108(sp)
   19fe0:	de07c063          	bltz	a5,195c0 <_dtoa_r+0xa20>
   19fe4:	02012703          	lw	a4,32(sp)
   19fe8:	00e00793          	li	a5,14
   19fec:	dce7ca63          	blt	a5,a4,195c0 <_dtoa_r+0xa20>
   19ff0:	02012783          	lw	a5,32(sp)
   19ff4:	00008717          	auipc	a4,0x8
   19ff8:	5ec70713          	add	a4,a4,1516 # 225e0 <__mprec_tens>
   19ffc:	00379793          	sll	a5,a5,0x3
   1a000:	00f707b3          	add	a5,a4,a5
   1a004:	0007a903          	lw	s2,0(a5)
   1a008:	0047a983          	lw	s3,4(a5)
   1a00c:	c90ff06f          	j	1949c <_dtoa_r+0x8fc>
   1a010:	06812703          	lw	a4,104(sp)
   1a014:	01012683          	lw	a3,16(sp)
   1a018:	03600793          	li	a5,54
   1a01c:	40e787b3          	sub	a5,a5,a4
   1a020:	00fb0b33          	add	s6,s6,a5
   1a024:	00f687b3          	add	a5,a3,a5
   1a028:	03012b83          	lw	s7,48(sp)
   1a02c:	00068c93          	mv	s9,a3
   1a030:	00f12823          	sw	a5,16(sp)
   1a034:	815ff06f          	j	19848 <_dtoa_r+0xca8>
   1a038:	02012783          	lw	a5,32(sp)
   1a03c:	00090c13          	mv	s8,s2
   1a040:	01012a83          	lw	s5,16(sp)
   1a044:	00178a13          	add	s4,a5,1
   1a048:	000b0913          	mv	s2,s6
   1a04c:	eb4ff06f          	j	19700 <_dtoa_r+0xb60>
   1a050:	01812703          	lw	a4,24(sp)
   1a054:	01c12783          	lw	a5,28(sp)
   1a058:	00200913          	li	s2,2
   1a05c:	f81fe06f          	j	18fdc <_dtoa_r+0x43c>
   1a060:	b00c0063          	beqz	s8,19360 <_dtoa_r+0x7c0>
   1a064:	03c12d03          	lw	s10,60(sp)
   1a068:	bba05063          	blez	s10,19408 <_dtoa_r+0x868>
   1a06c:	0000a617          	auipc	a2,0xa
   1a070:	87c60613          	add	a2,a2,-1924 # 238e8 <__SDATA_BEGIN__+0x50>
   1a074:	00078593          	mv	a1,a5
   1a078:	02012783          	lw	a5,32(sp)
   1a07c:	00462683          	lw	a3,4(a2)
   1a080:	00062603          	lw	a2,0(a2)
   1a084:	fff78793          	add	a5,a5,-1
   1a088:	00070513          	mv	a0,a4
   1a08c:	04f12e23          	sw	a5,92(sp)
   1a090:	244060ef          	jal	202d4 <__muldf3>
   1a094:	00050713          	mv	a4,a0
   1a098:	00190513          	add	a0,s2,1
   1a09c:	04e12423          	sw	a4,72(sp)
   1a0a0:	04b12023          	sw	a1,64(sp)
   1a0a4:	3a0070ef          	jal	21444 <__floatsidf>
   1a0a8:	04812703          	lw	a4,72(sp)
   1a0ac:	04012783          	lw	a5,64(sp)
   1a0b0:	00070613          	mv	a2,a4
   1a0b4:	00078693          	mv	a3,a5
   1a0b8:	04e12623          	sw	a4,76(sp)
   1a0bc:	218060ef          	jal	202d4 <__muldf3>
   1a0c0:	0000a697          	auipc	a3,0xa
   1a0c4:	83068693          	add	a3,a3,-2000 # 238f0 <__SDATA_BEGIN__+0x58>
   1a0c8:	0006a603          	lw	a2,0(a3)
   1a0cc:	0046a683          	lw	a3,4(a3)
   1a0d0:	5fd040ef          	jal	1eecc <__adddf3>
   1a0d4:	fcc006b7          	lui	a3,0xfcc00
   1a0d8:	04012783          	lw	a5,64(sp)
   1a0dc:	04c12703          	lw	a4,76(sp)
   1a0e0:	00050c93          	mv	s9,a0
   1a0e4:	00b68bb3          	add	s7,a3,a1
   1a0e8:	05a12423          	sw	s10,72(sp)
   1a0ec:	f91fe06f          	j	1907c <_dtoa_r+0x4dc>
   1a0f0:	03100693          	li	a3,49
   1a0f4:	001c0c13          	add	s8,s8,1
   1a0f8:	984ff06f          	j	1927c <_dtoa_r+0x6dc>
   1a0fc:	00012c23          	sw	zero,24(sp)
   1a100:	00000913          	li	s2,0
   1a104:	a11ff06f          	j	19b14 <_dtoa_r+0xf74>
   1a108:	03000613          	li	a2,48
   1a10c:	fffbc783          	lbu	a5,-1(s7)
   1a110:	000b8d13          	mv	s10,s7
   1a114:	fffb8b93          	add	s7,s7,-1
   1a118:	fec78ae3          	beq	a5,a2,1a10c <_dtoa_r+0x156c>
   1a11c:	05c12783          	lw	a5,92(sp)
   1a120:	00178a13          	add	s4,a5,1
   1a124:	e50ff06f          	j	19774 <_dtoa_r+0xbd4>
   1a128:	03900713          	li	a4,57
   1a12c:	01012a83          	lw	s5,16(sp)
   1a130:	b8eb84e3          	beq	s7,a4,19cb8 <_dtoa_r+0x1118>
   1a134:	933048e3          	bgtz	s3,19a64 <_dtoa_r+0xec4>
   1a138:	931ff06f          	j	19a68 <_dtoa_r+0xec8>
   1a13c:	01012a83          	lw	s5,16(sp)
   1a140:	929ff06f          	j	19a68 <_dtoa_r+0xec8>
   1a144:	00078993          	mv	s3,a5
   1a148:	a19ff06f          	j	19b60 <_dtoa_r+0xfc0>
   1a14c:	00078c93          	mv	s9,a5
   1a150:	018787b3          	add	a5,a5,s8
   1a154:	018b0b33          	add	s6,s6,s8
   1a158:	00f12823          	sw	a5,16(sp)
   1a15c:	eecff06f          	j	19848 <_dtoa_r+0xca8>
   1a160:	05c12783          	lw	a5,92(sp)
   1a164:	00178c13          	add	s8,a5,1
   1a168:	8f0ff06f          	j	19258 <_dtoa_r+0x6b8>
   1a16c:	04c12983          	lw	s3,76(sp)
   1a170:	05012b03          	lw	s6,80(sp)
   1a174:	05812c03          	lw	s8,88(sp)
   1a178:	04812a03          	lw	s4,72(sp)
   1a17c:	a8cff06f          	j	19408 <_dtoa_r+0x868>
   1a180:	00200793          	li	a5,2
   1a184:	0147c863          	blt	a5,s4,1a194 <_dtoa_r+0x15f4>
   1a188:	02012a03          	lw	s4,32(sp)
   1a18c:	03c12c03          	lw	s8,60(sp)
   1a190:	d1cff06f          	j	196ac <_dtoa_r+0xb0c>
   1a194:	03c12c03          	lw	s8,60(sp)
   1a198:	03612023          	sw	s6,32(sp)
   1a19c:	949ff06f          	j	19ae4 <_dtoa_r+0xf44>
   1a1a0:	04012b83          	lw	s7,64(sp)
   1a1a4:	dddff06f          	j	19f80 <_dtoa_r+0x13e0>
   1a1a8:	00200793          	li	a5,2
   1a1ac:	ff47c4e3          	blt	a5,s4,1a194 <_dtoa_r+0x15f4>
   1a1b0:	03c12c03          	lw	s8,60(sp)
   1a1b4:	03612023          	sw	s6,32(sp)
   1a1b8:	f44ff06f          	j	198fc <_dtoa_r+0xd5c>
   1a1bc:	00050713          	mv	a4,a0
   1a1c0:	00058793          	mv	a5,a1
   1a1c4:	00200913          	li	s2,2
   1a1c8:	e15fe06f          	j	18fdc <_dtoa_r+0x43c>
   1a1cc:	00008697          	auipc	a3,0x8
   1a1d0:	af068693          	add	a3,a3,-1296 # 21cbc <__clzsi2+0x248>
   1a1d4:	00000613          	li	a2,0
   1a1d8:	2ef00593          	li	a1,751
   1a1dc:	00008517          	auipc	a0,0x8
   1a1e0:	af450513          	add	a0,a0,-1292 # 21cd0 <__clzsi2+0x25c>
   1a1e4:	260030ef          	jal	1d444 <__assert_func>
   1a1e8:	01012a83          	lw	s5,16(sp)
   1a1ec:	85b048e3          	bgtz	s11,19a3c <_dtoa_r+0xe9c>
   1a1f0:	879ff06f          	j	19a68 <_dtoa_r+0xec8>
   1a1f4:	00008697          	auipc	a3,0x8
   1a1f8:	ac868693          	add	a3,a3,-1336 # 21cbc <__clzsi2+0x248>
   1a1fc:	00000613          	li	a2,0
   1a200:	1af00593          	li	a1,431
   1a204:	00008517          	auipc	a0,0x8
   1a208:	acc50513          	add	a0,a0,-1332 # 21cd0 <__clzsi2+0x25c>
   1a20c:	238030ef          	jal	1d444 <__assert_func>
   1a210:	02042e23          	sw	zero,60(s0)
   1a214:	00000593          	li	a1,0
   1a218:	cc1fe06f          	j	18ed8 <_dtoa_r+0x338>
   1a21c:	02012423          	sw	zero,40(sp)
   1a220:	c7dfe06f          	j	18e9c <_dtoa_r+0x2fc>

0001a224 <_findenv_r>:
   1a224:	fd010113          	add	sp,sp,-48
   1a228:	01612823          	sw	s6,16(sp)
   1a22c:	f4418b13          	add	s6,gp,-188 # 23914 <environ>
   1a230:	02912223          	sw	s1,36(sp)
   1a234:	01312e23          	sw	s3,28(sp)
   1a238:	01412c23          	sw	s4,24(sp)
   1a23c:	01512a23          	sw	s5,20(sp)
   1a240:	02112623          	sw	ra,44(sp)
   1a244:	00050a93          	mv	s5,a0
   1a248:	00058993          	mv	s3,a1
   1a24c:	00060a13          	mv	s4,a2
   1a250:	418030ef          	jal	1d668 <__env_lock>
   1a254:	000b2483          	lw	s1,0(s6)
   1a258:	02048a63          	beqz	s1,1a28c <_findenv_r+0x68>
   1a25c:	02812423          	sw	s0,40(sp)
   1a260:	0009c703          	lbu	a4,0(s3)
   1a264:	00098793          	mv	a5,s3
   1a268:	03d00693          	li	a3,61
   1a26c:	00000413          	li	s0,0
   1a270:	00071863          	bnez	a4,1a280 <_findenv_r+0x5c>
   1a274:	0480006f          	j	1a2bc <_findenv_r+0x98>
   1a278:	0007c703          	lbu	a4,0(a5)
   1a27c:	02070e63          	beqz	a4,1a2b8 <_findenv_r+0x94>
   1a280:	00178793          	add	a5,a5,1
   1a284:	fed71ae3          	bne	a4,a3,1a278 <_findenv_r+0x54>
   1a288:	02812403          	lw	s0,40(sp)
   1a28c:	000a8513          	mv	a0,s5
   1a290:	3e0030ef          	jal	1d670 <__env_unlock>
   1a294:	02c12083          	lw	ra,44(sp)
   1a298:	02412483          	lw	s1,36(sp)
   1a29c:	01c12983          	lw	s3,28(sp)
   1a2a0:	01812a03          	lw	s4,24(sp)
   1a2a4:	01412a83          	lw	s5,20(sp)
   1a2a8:	01012b03          	lw	s6,16(sp)
   1a2ac:	00000513          	li	a0,0
   1a2b0:	03010113          	add	sp,sp,48
   1a2b4:	00008067          	ret
   1a2b8:	41378433          	sub	s0,a5,s3
   1a2bc:	0004a503          	lw	a0,0(s1)
   1a2c0:	fc0504e3          	beqz	a0,1a288 <_findenv_r+0x64>
   1a2c4:	01712623          	sw	s7,12(sp)
   1a2c8:	03212023          	sw	s2,32(sp)
   1a2cc:	03d00b93          	li	s7,61
   1a2d0:	00040613          	mv	a2,s0
   1a2d4:	00098593          	mv	a1,s3
   1a2d8:	7f5020ef          	jal	1d2cc <strncmp>
   1a2dc:	00051a63          	bnez	a0,1a2f0 <_findenv_r+0xcc>
   1a2e0:	0004a903          	lw	s2,0(s1)
   1a2e4:	00890933          	add	s2,s2,s0
   1a2e8:	00094783          	lbu	a5,0(s2)
   1a2ec:	03778063          	beq	a5,s7,1a30c <_findenv_r+0xe8>
   1a2f0:	0044a503          	lw	a0,4(s1)
   1a2f4:	00448493          	add	s1,s1,4
   1a2f8:	fc051ce3          	bnez	a0,1a2d0 <_findenv_r+0xac>
   1a2fc:	02812403          	lw	s0,40(sp)
   1a300:	02012903          	lw	s2,32(sp)
   1a304:	00c12b83          	lw	s7,12(sp)
   1a308:	f85ff06f          	j	1a28c <_findenv_r+0x68>
   1a30c:	000b2783          	lw	a5,0(s6)
   1a310:	000a8513          	mv	a0,s5
   1a314:	40f484b3          	sub	s1,s1,a5
   1a318:	4024d493          	sra	s1,s1,0x2
   1a31c:	009a2023          	sw	s1,0(s4)
   1a320:	350030ef          	jal	1d670 <__env_unlock>
   1a324:	02c12083          	lw	ra,44(sp)
   1a328:	02812403          	lw	s0,40(sp)
   1a32c:	00c12b83          	lw	s7,12(sp)
   1a330:	02412483          	lw	s1,36(sp)
   1a334:	01c12983          	lw	s3,28(sp)
   1a338:	01812a03          	lw	s4,24(sp)
   1a33c:	01412a83          	lw	s5,20(sp)
   1a340:	01012b03          	lw	s6,16(sp)
   1a344:	00190513          	add	a0,s2,1
   1a348:	02012903          	lw	s2,32(sp)
   1a34c:	03010113          	add	sp,sp,48
   1a350:	00008067          	ret

0001a354 <_getenv_r>:
   1a354:	fe010113          	add	sp,sp,-32
   1a358:	00c10613          	add	a2,sp,12
   1a35c:	00112e23          	sw	ra,28(sp)
   1a360:	ec5ff0ef          	jal	1a224 <_findenv_r>
   1a364:	01c12083          	lw	ra,28(sp)
   1a368:	02010113          	add	sp,sp,32
   1a36c:	00008067          	ret

0001a370 <_mbtowc_r>:
   1a370:	e1c1a783          	lw	a5,-484(gp) # 237ec <__global_locale+0xe4>
   1a374:	00078067          	jr	a5

0001a378 <__ascii_mbtowc>:
   1a378:	02058063          	beqz	a1,1a398 <__ascii_mbtowc+0x20>
   1a37c:	04060263          	beqz	a2,1a3c0 <__ascii_mbtowc+0x48>
   1a380:	04068863          	beqz	a3,1a3d0 <__ascii_mbtowc+0x58>
   1a384:	00064783          	lbu	a5,0(a2)
   1a388:	00f5a023          	sw	a5,0(a1)
   1a38c:	00064503          	lbu	a0,0(a2)
   1a390:	00a03533          	snez	a0,a0
   1a394:	00008067          	ret
   1a398:	ff010113          	add	sp,sp,-16
   1a39c:	00c10593          	add	a1,sp,12
   1a3a0:	02060463          	beqz	a2,1a3c8 <__ascii_mbtowc+0x50>
   1a3a4:	02068a63          	beqz	a3,1a3d8 <__ascii_mbtowc+0x60>
   1a3a8:	00064783          	lbu	a5,0(a2)
   1a3ac:	00f5a023          	sw	a5,0(a1)
   1a3b0:	00064503          	lbu	a0,0(a2)
   1a3b4:	00a03533          	snez	a0,a0
   1a3b8:	01010113          	add	sp,sp,16
   1a3bc:	00008067          	ret
   1a3c0:	00000513          	li	a0,0
   1a3c4:	00008067          	ret
   1a3c8:	00000513          	li	a0,0
   1a3cc:	fedff06f          	j	1a3b8 <__ascii_mbtowc+0x40>
   1a3d0:	ffe00513          	li	a0,-2
   1a3d4:	00008067          	ret
   1a3d8:	ffe00513          	li	a0,-2
   1a3dc:	fddff06f          	j	1a3b8 <__ascii_mbtowc+0x40>

0001a3e0 <__utf8_mbtowc>:
   1a3e0:	ff010113          	add	sp,sp,-16
   1a3e4:	00050e13          	mv	t3,a0
   1a3e8:	0a058463          	beqz	a1,1a490 <__utf8_mbtowc+0xb0>
   1a3ec:	08060c63          	beqz	a2,1a484 <__utf8_mbtowc+0xa4>
   1a3f0:	28068663          	beqz	a3,1a67c <__utf8_mbtowc+0x29c>
   1a3f4:	00072803          	lw	a6,0(a4)
   1a3f8:	06081c63          	bnez	a6,1a470 <__utf8_mbtowc+0x90>
   1a3fc:	00064783          	lbu	a5,0(a2)
   1a400:	00100513          	li	a0,1
   1a404:	06078c63          	beqz	a5,1a47c <__utf8_mbtowc+0x9c>
   1a408:	07f00893          	li	a7,127
   1a40c:	12f8d263          	bge	a7,a5,1a530 <__utf8_mbtowc+0x150>
   1a410:	f4078893          	add	a7,a5,-192
   1a414:	01f00313          	li	t1,31
   1a418:	09136063          	bltu	t1,a7,1a498 <__utf8_mbtowc+0xb8>
   1a41c:	00f70223          	sb	a5,4(a4)
   1a420:	00081863          	bnez	a6,1a430 <__utf8_mbtowc+0x50>
   1a424:	00100813          	li	a6,1
   1a428:	01072023          	sw	a6,0(a4)
   1a42c:	25068863          	beq	a3,a6,1a67c <__utf8_mbtowc+0x29c>
   1a430:	00a60633          	add	a2,a2,a0
   1a434:	00064683          	lbu	a3,0(a2)
   1a438:	03f00613          	li	a2,63
   1a43c:	00150513          	add	a0,a0,1
   1a440:	f8068813          	add	a6,a3,-128
   1a444:	21066e63          	bltu	a2,a6,1a660 <__utf8_mbtowc+0x280>
   1a448:	0c100613          	li	a2,193
   1a44c:	20f65a63          	bge	a2,a5,1a660 <__utf8_mbtowc+0x280>
   1a450:	00679793          	sll	a5,a5,0x6
   1a454:	7c07f793          	and	a5,a5,1984
   1a458:	03f6f693          	and	a3,a3,63
   1a45c:	00072023          	sw	zero,0(a4)
   1a460:	00d7e7b3          	or	a5,a5,a3
   1a464:	00f5a023          	sw	a5,0(a1)
   1a468:	01010113          	add	sp,sp,16
   1a46c:	00008067          	ret
   1a470:	00474783          	lbu	a5,4(a4)
   1a474:	00000513          	li	a0,0
   1a478:	f80798e3          	bnez	a5,1a408 <__utf8_mbtowc+0x28>
   1a47c:	0005a023          	sw	zero,0(a1)
   1a480:	00072023          	sw	zero,0(a4)
   1a484:	00000513          	li	a0,0
   1a488:	01010113          	add	sp,sp,16
   1a48c:	00008067          	ret
   1a490:	00c10593          	add	a1,sp,12
   1a494:	f59ff06f          	j	1a3ec <__utf8_mbtowc+0xc>
   1a498:	f2078893          	add	a7,a5,-224
   1a49c:	00f00313          	li	t1,15
   1a4a0:	0b136263          	bltu	t1,a7,1a544 <__utf8_mbtowc+0x164>
   1a4a4:	00f70223          	sb	a5,4(a4)
   1a4a8:	16080863          	beqz	a6,1a618 <__utf8_mbtowc+0x238>
   1a4ac:	00168893          	add	a7,a3,1
   1a4b0:	011038b3          	snez	a7,a7
   1a4b4:	00100313          	li	t1,1
   1a4b8:	011686b3          	add	a3,a3,a7
   1a4bc:	16680463          	beq	a6,t1,1a624 <__utf8_mbtowc+0x244>
   1a4c0:	00574883          	lbu	a7,5(a4)
   1a4c4:	0e000313          	li	t1,224
   1a4c8:	18678863          	beq	a5,t1,1a658 <__utf8_mbtowc+0x278>
   1a4cc:	f8088313          	add	t1,a7,-128
   1a4d0:	03f00e93          	li	t4,63
   1a4d4:	186ee663          	bltu	t4,t1,1a660 <__utf8_mbtowc+0x280>
   1a4d8:	011702a3          	sb	a7,5(a4)
   1a4dc:	00100313          	li	t1,1
   1a4e0:	18680863          	beq	a6,t1,1a670 <__utf8_mbtowc+0x290>
   1a4e4:	00a60633          	add	a2,a2,a0
   1a4e8:	00064683          	lbu	a3,0(a2)
   1a4ec:	03f00613          	li	a2,63
   1a4f0:	00150513          	add	a0,a0,1
   1a4f4:	f8068813          	add	a6,a3,-128
   1a4f8:	17066463          	bltu	a2,a6,1a660 <__utf8_mbtowc+0x280>
   1a4fc:	00001637          	lui	a2,0x1
   1a500:	00c79793          	sll	a5,a5,0xc
   1a504:	00689893          	sll	a7,a7,0x6
   1a508:	fc060613          	add	a2,a2,-64 # fc0 <exit-0xf0d4>
   1a50c:	0000f837          	lui	a6,0xf
   1a510:	0107f7b3          	and	a5,a5,a6
   1a514:	00c8f8b3          	and	a7,a7,a2
   1a518:	0117e7b3          	or	a5,a5,a7
   1a51c:	03f6f693          	and	a3,a3,63
   1a520:	00072023          	sw	zero,0(a4)
   1a524:	00d7e7b3          	or	a5,a5,a3
   1a528:	00f5a023          	sw	a5,0(a1)
   1a52c:	f5dff06f          	j	1a488 <__utf8_mbtowc+0xa8>
   1a530:	00072023          	sw	zero,0(a4)
   1a534:	00f5a023          	sw	a5,0(a1)
   1a538:	00100513          	li	a0,1
   1a53c:	01010113          	add	sp,sp,16
   1a540:	00008067          	ret
   1a544:	f1078893          	add	a7,a5,-240
   1a548:	00400313          	li	t1,4
   1a54c:	11136a63          	bltu	t1,a7,1a660 <__utf8_mbtowc+0x280>
   1a550:	00f70223          	sb	a5,4(a4)
   1a554:	0e080263          	beqz	a6,1a638 <__utf8_mbtowc+0x258>
   1a558:	00168893          	add	a7,a3,1
   1a55c:	011038b3          	snez	a7,a7
   1a560:	00100313          	li	t1,1
   1a564:	011686b3          	add	a3,a3,a7
   1a568:	0c680e63          	beq	a6,t1,1a644 <__utf8_mbtowc+0x264>
   1a56c:	00574883          	lbu	a7,5(a4)
   1a570:	0f000313          	li	t1,240
   1a574:	10678863          	beq	a5,t1,1a684 <__utf8_mbtowc+0x2a4>
   1a578:	0f400313          	li	t1,244
   1a57c:	14678863          	beq	a5,t1,1a6cc <__utf8_mbtowc+0x2ec>
   1a580:	f8088313          	add	t1,a7,-128
   1a584:	03f00e93          	li	t4,63
   1a588:	0c6eec63          	bltu	t4,t1,1a660 <__utf8_mbtowc+0x280>
   1a58c:	011702a3          	sb	a7,5(a4)
   1a590:	00100313          	li	t1,1
   1a594:	0e680e63          	beq	a6,t1,1a690 <__utf8_mbtowc+0x2b0>
   1a598:	00072f03          	lw	t5,0(a4)
   1a59c:	00168813          	add	a6,a3,1
   1a5a0:	01003833          	snez	a6,a6
   1a5a4:	00200313          	li	t1,2
   1a5a8:	010686b3          	add	a3,a3,a6
   1a5ac:	0e6f0863          	beq	t5,t1,1a69c <__utf8_mbtowc+0x2bc>
   1a5b0:	00674803          	lbu	a6,6(a4)
   1a5b4:	f8080693          	add	a3,a6,-128 # ef80 <exit-0x1114>
   1a5b8:	0adee463          	bltu	t4,a3,1a660 <__utf8_mbtowc+0x280>
   1a5bc:	00a60633          	add	a2,a2,a0
   1a5c0:	00064683          	lbu	a3,0(a2)
   1a5c4:	03f00613          	li	a2,63
   1a5c8:	00150513          	add	a0,a0,1
   1a5cc:	f8068313          	add	t1,a3,-128
   1a5d0:	08666863          	bltu	a2,t1,1a660 <__utf8_mbtowc+0x280>
   1a5d4:	001c0337          	lui	t1,0x1c0
   1a5d8:	01279793          	sll	a5,a5,0x12
   1a5dc:	0067f7b3          	and	a5,a5,t1
   1a5e0:	00c89893          	sll	a7,a7,0xc
   1a5e4:	00001637          	lui	a2,0x1
   1a5e8:	0003f337          	lui	t1,0x3f
   1a5ec:	0068f8b3          	and	a7,a7,t1
   1a5f0:	00681813          	sll	a6,a6,0x6
   1a5f4:	fc060613          	add	a2,a2,-64 # fc0 <exit-0xf0d4>
   1a5f8:	0117e7b3          	or	a5,a5,a7
   1a5fc:	00c87833          	and	a6,a6,a2
   1a600:	0107e7b3          	or	a5,a5,a6
   1a604:	03f6f693          	and	a3,a3,63
   1a608:	00d7e7b3          	or	a5,a5,a3
   1a60c:	00f5a023          	sw	a5,0(a1)
   1a610:	00072023          	sw	zero,0(a4)
   1a614:	e75ff06f          	j	1a488 <__utf8_mbtowc+0xa8>
   1a618:	00100813          	li	a6,1
   1a61c:	01072023          	sw	a6,0(a4)
   1a620:	05068e63          	beq	a3,a6,1a67c <__utf8_mbtowc+0x29c>
   1a624:	00a60833          	add	a6,a2,a0
   1a628:	00084883          	lbu	a7,0(a6)
   1a62c:	00150513          	add	a0,a0,1
   1a630:	00100813          	li	a6,1
   1a634:	e91ff06f          	j	1a4c4 <__utf8_mbtowc+0xe4>
   1a638:	00100813          	li	a6,1
   1a63c:	01072023          	sw	a6,0(a4)
   1a640:	03068e63          	beq	a3,a6,1a67c <__utf8_mbtowc+0x29c>
   1a644:	00a60833          	add	a6,a2,a0
   1a648:	00084883          	lbu	a7,0(a6)
   1a64c:	00150513          	add	a0,a0,1
   1a650:	00100813          	li	a6,1
   1a654:	f1dff06f          	j	1a570 <__utf8_mbtowc+0x190>
   1a658:	09f00313          	li	t1,159
   1a65c:	e71348e3          	blt	t1,a7,1a4cc <__utf8_mbtowc+0xec>
   1a660:	08a00793          	li	a5,138
   1a664:	00fe2023          	sw	a5,0(t3)
   1a668:	fff00513          	li	a0,-1
   1a66c:	e1dff06f          	j	1a488 <__utf8_mbtowc+0xa8>
   1a670:	00200813          	li	a6,2
   1a674:	01072023          	sw	a6,0(a4)
   1a678:	e70696e3          	bne	a3,a6,1a4e4 <__utf8_mbtowc+0x104>
   1a67c:	ffe00513          	li	a0,-2
   1a680:	e09ff06f          	j	1a488 <__utf8_mbtowc+0xa8>
   1a684:	08f00313          	li	t1,143
   1a688:	ef134ce3          	blt	t1,a7,1a580 <__utf8_mbtowc+0x1a0>
   1a68c:	fd5ff06f          	j	1a660 <__utf8_mbtowc+0x280>
   1a690:	00200813          	li	a6,2
   1a694:	01072023          	sw	a6,0(a4)
   1a698:	ff0682e3          	beq	a3,a6,1a67c <__utf8_mbtowc+0x29c>
   1a69c:	00a60833          	add	a6,a2,a0
   1a6a0:	00084803          	lbu	a6,0(a6)
   1a6a4:	03f00313          	li	t1,63
   1a6a8:	00150513          	add	a0,a0,1
   1a6ac:	f8080e93          	add	t4,a6,-128
   1a6b0:	fbd368e3          	bltu	t1,t4,1a660 <__utf8_mbtowc+0x280>
   1a6b4:	00300313          	li	t1,3
   1a6b8:	01070323          	sb	a6,6(a4)
   1a6bc:	00672023          	sw	t1,0(a4)
   1a6c0:	ee669ee3          	bne	a3,t1,1a5bc <__utf8_mbtowc+0x1dc>
   1a6c4:	ffe00513          	li	a0,-2
   1a6c8:	dc1ff06f          	j	1a488 <__utf8_mbtowc+0xa8>
   1a6cc:	08f00313          	li	t1,143
   1a6d0:	eb1358e3          	bge	t1,a7,1a580 <__utf8_mbtowc+0x1a0>
   1a6d4:	f8dff06f          	j	1a660 <__utf8_mbtowc+0x280>

0001a6d8 <__sjis_mbtowc>:
   1a6d8:	00050813          	mv	a6,a0
   1a6dc:	08058263          	beqz	a1,1a760 <__sjis_mbtowc+0x88>
   1a6e0:	12060463          	beqz	a2,1a808 <__sjis_mbtowc+0x130>
   1a6e4:	12068a63          	beqz	a3,1a818 <__sjis_mbtowc+0x140>
   1a6e8:	00072503          	lw	a0,0(a4)
   1a6ec:	00064783          	lbu	a5,0(a2)
   1a6f0:	00050e63          	beqz	a0,1a70c <__sjis_mbtowc+0x34>
   1a6f4:	00100693          	li	a3,1
   1a6f8:	02d50c63          	beq	a0,a3,1a730 <__sjis_mbtowc+0x58>
   1a6fc:	00f5a023          	sw	a5,0(a1)
   1a700:	00064503          	lbu	a0,0(a2)
   1a704:	00a03533          	snez	a0,a0
   1a708:	00008067          	ret
   1a70c:	f7f78513          	add	a0,a5,-129
   1a710:	01e00893          	li	a7,30
   1a714:	08a8e263          	bltu	a7,a0,1a798 <__sjis_mbtowc+0xc0>
   1a718:	00100513          	li	a0,1
   1a71c:	00f70223          	sb	a5,4(a4)
   1a720:	00a72023          	sw	a0,0(a4)
   1a724:	0ea68a63          	beq	a3,a0,1a818 <__sjis_mbtowc+0x140>
   1a728:	00164783          	lbu	a5,1(a2)
   1a72c:	00200513          	li	a0,2
   1a730:	fc078693          	add	a3,a5,-64
   1a734:	03e00613          	li	a2,62
   1a738:	00d67863          	bgeu	a2,a3,1a748 <__sjis_mbtowc+0x70>
   1a73c:	f8078693          	add	a3,a5,-128
   1a740:	07c00613          	li	a2,124
   1a744:	0ed66263          	bltu	a2,a3,1a828 <__sjis_mbtowc+0x150>
   1a748:	00474683          	lbu	a3,4(a4)
   1a74c:	00869693          	sll	a3,a3,0x8
   1a750:	00f687b3          	add	a5,a3,a5
   1a754:	00f5a023          	sw	a5,0(a1)
   1a758:	00072023          	sw	zero,0(a4)
   1a75c:	00008067          	ret
   1a760:	ff010113          	add	sp,sp,-16
   1a764:	00c10593          	add	a1,sp,12
   1a768:	0a060463          	beqz	a2,1a810 <__sjis_mbtowc+0x138>
   1a76c:	0a068a63          	beqz	a3,1a820 <__sjis_mbtowc+0x148>
   1a770:	00072503          	lw	a0,0(a4)
   1a774:	00064783          	lbu	a5,0(a2)
   1a778:	02050863          	beqz	a0,1a7a8 <__sjis_mbtowc+0xd0>
   1a77c:	00100693          	li	a3,1
   1a780:	04d50c63          	beq	a0,a3,1a7d8 <__sjis_mbtowc+0x100>
   1a784:	00f5a023          	sw	a5,0(a1)
   1a788:	00064503          	lbu	a0,0(a2)
   1a78c:	00a03533          	snez	a0,a0
   1a790:	01010113          	add	sp,sp,16
   1a794:	00008067          	ret
   1a798:	f2078513          	add	a0,a5,-224
   1a79c:	00f00893          	li	a7,15
   1a7a0:	f4a8eee3          	bltu	a7,a0,1a6fc <__sjis_mbtowc+0x24>
   1a7a4:	f75ff06f          	j	1a718 <__sjis_mbtowc+0x40>
   1a7a8:	f7f78513          	add	a0,a5,-129
   1a7ac:	01e00893          	li	a7,30
   1a7b0:	00a8f863          	bgeu	a7,a0,1a7c0 <__sjis_mbtowc+0xe8>
   1a7b4:	f2078513          	add	a0,a5,-224
   1a7b8:	00f00893          	li	a7,15
   1a7bc:	fca8e4e3          	bltu	a7,a0,1a784 <__sjis_mbtowc+0xac>
   1a7c0:	00100513          	li	a0,1
   1a7c4:	00f70223          	sb	a5,4(a4)
   1a7c8:	00a72023          	sw	a0,0(a4)
   1a7cc:	04a68a63          	beq	a3,a0,1a820 <__sjis_mbtowc+0x148>
   1a7d0:	00164783          	lbu	a5,1(a2)
   1a7d4:	00200513          	li	a0,2
   1a7d8:	fc078693          	add	a3,a5,-64
   1a7dc:	03e00613          	li	a2,62
   1a7e0:	00d67863          	bgeu	a2,a3,1a7f0 <__sjis_mbtowc+0x118>
   1a7e4:	f8078693          	add	a3,a5,-128
   1a7e8:	07c00613          	li	a2,124
   1a7ec:	04d66663          	bltu	a2,a3,1a838 <__sjis_mbtowc+0x160>
   1a7f0:	00474683          	lbu	a3,4(a4)
   1a7f4:	00869693          	sll	a3,a3,0x8
   1a7f8:	00f687b3          	add	a5,a3,a5
   1a7fc:	00f5a023          	sw	a5,0(a1)
   1a800:	00072023          	sw	zero,0(a4)
   1a804:	f8dff06f          	j	1a790 <__sjis_mbtowc+0xb8>
   1a808:	00000513          	li	a0,0
   1a80c:	00008067          	ret
   1a810:	00000513          	li	a0,0
   1a814:	f7dff06f          	j	1a790 <__sjis_mbtowc+0xb8>
   1a818:	ffe00513          	li	a0,-2
   1a81c:	00008067          	ret
   1a820:	ffe00513          	li	a0,-2
   1a824:	f6dff06f          	j	1a790 <__sjis_mbtowc+0xb8>
   1a828:	08a00793          	li	a5,138
   1a82c:	00f82023          	sw	a5,0(a6)
   1a830:	fff00513          	li	a0,-1
   1a834:	00008067          	ret
   1a838:	08a00793          	li	a5,138
   1a83c:	00f82023          	sw	a5,0(a6)
   1a840:	fff00513          	li	a0,-1
   1a844:	f4dff06f          	j	1a790 <__sjis_mbtowc+0xb8>

0001a848 <__eucjp_mbtowc>:
   1a848:	00050813          	mv	a6,a0
   1a84c:	0c058263          	beqz	a1,1a910 <__eucjp_mbtowc+0xc8>
   1a850:	18060663          	beqz	a2,1a9dc <__eucjp_mbtowc+0x194>
   1a854:	1c068463          	beqz	a3,1aa1c <__eucjp_mbtowc+0x1d4>
   1a858:	00072503          	lw	a0,0(a4)
   1a85c:	00064783          	lbu	a5,0(a2)
   1a860:	02050263          	beqz	a0,1a884 <__eucjp_mbtowc+0x3c>
   1a864:	00100893          	li	a7,1
   1a868:	05150663          	beq	a0,a7,1a8b4 <__eucjp_mbtowc+0x6c>
   1a86c:	00200693          	li	a3,2
   1a870:	18d50463          	beq	a0,a3,1a9f8 <__eucjp_mbtowc+0x1b0>
   1a874:	00f5a023          	sw	a5,0(a1)
   1a878:	00064503          	lbu	a0,0(a2)
   1a87c:	00a03533          	snez	a0,a0
   1a880:	00008067          	ret
   1a884:	f7278513          	add	a0,a5,-142
   1a888:	00100893          	li	a7,1
   1a88c:	00a8f863          	bgeu	a7,a0,1a89c <__eucjp_mbtowc+0x54>
   1a890:	f5f78513          	add	a0,a5,-161
   1a894:	05d00893          	li	a7,93
   1a898:	fca8eee3          	bltu	a7,a0,1a874 <__eucjp_mbtowc+0x2c>
   1a89c:	00100513          	li	a0,1
   1a8a0:	00f70223          	sb	a5,4(a4)
   1a8a4:	00a72023          	sw	a0,0(a4)
   1a8a8:	16a68a63          	beq	a3,a0,1aa1c <__eucjp_mbtowc+0x1d4>
   1a8ac:	00164783          	lbu	a5,1(a2)
   1a8b0:	00200513          	li	a0,2
   1a8b4:	f5f78893          	add	a7,a5,-161
   1a8b8:	05d00313          	li	t1,93
   1a8bc:	17136863          	bltu	t1,a7,1aa2c <__eucjp_mbtowc+0x1e4>
   1a8c0:	00474883          	lbu	a7,4(a4)
   1a8c4:	08f00313          	li	t1,143
   1a8c8:	10689e63          	bne	a7,t1,1a9e4 <__eucjp_mbtowc+0x19c>
   1a8cc:	00f702a3          	sb	a5,5(a4)
   1a8d0:	00200793          	li	a5,2
   1a8d4:	00f72023          	sw	a5,0(a4)
   1a8d8:	14d57263          	bgeu	a0,a3,1aa1c <__eucjp_mbtowc+0x1d4>
   1a8dc:	00a60633          	add	a2,a2,a0
   1a8e0:	00064783          	lbu	a5,0(a2)
   1a8e4:	00150513          	add	a0,a0,1
   1a8e8:	f5f78693          	add	a3,a5,-161
   1a8ec:	05d00613          	li	a2,93
   1a8f0:	12d66e63          	bltu	a2,a3,1aa2c <__eucjp_mbtowc+0x1e4>
   1a8f4:	00574683          	lbu	a3,5(a4)
   1a8f8:	07f7f793          	and	a5,a5,127
   1a8fc:	00869693          	sll	a3,a3,0x8
   1a900:	00f687b3          	add	a5,a3,a5
   1a904:	00f5a023          	sw	a5,0(a1)
   1a908:	00072023          	sw	zero,0(a4)
   1a90c:	00008067          	ret
   1a910:	ff010113          	add	sp,sp,-16
   1a914:	00c10593          	add	a1,sp,12
   1a918:	0e060463          	beqz	a2,1aa00 <__eucjp_mbtowc+0x1b8>
   1a91c:	12068063          	beqz	a3,1aa3c <__eucjp_mbtowc+0x1f4>
   1a920:	00072503          	lw	a0,0(a4)
   1a924:	00064783          	lbu	a5,0(a2)
   1a928:	02050463          	beqz	a0,1a950 <__eucjp_mbtowc+0x108>
   1a92c:	00100893          	li	a7,1
   1a930:	05150863          	beq	a0,a7,1a980 <__eucjp_mbtowc+0x138>
   1a934:	00200693          	li	a3,2
   1a938:	0ed50663          	beq	a0,a3,1aa24 <__eucjp_mbtowc+0x1dc>
   1a93c:	00f5a023          	sw	a5,0(a1)
   1a940:	00064503          	lbu	a0,0(a2)
   1a944:	00a03533          	snez	a0,a0
   1a948:	01010113          	add	sp,sp,16
   1a94c:	00008067          	ret
   1a950:	f7278513          	add	a0,a5,-142
   1a954:	00100893          	li	a7,1
   1a958:	00a8f863          	bgeu	a7,a0,1a968 <__eucjp_mbtowc+0x120>
   1a95c:	f5f78513          	add	a0,a5,-161
   1a960:	05d00893          	li	a7,93
   1a964:	fca8ece3          	bltu	a7,a0,1a93c <__eucjp_mbtowc+0xf4>
   1a968:	00100513          	li	a0,1
   1a96c:	00f70223          	sb	a5,4(a4)
   1a970:	00a72023          	sw	a0,0(a4)
   1a974:	0ca68463          	beq	a3,a0,1aa3c <__eucjp_mbtowc+0x1f4>
   1a978:	00164783          	lbu	a5,1(a2)
   1a97c:	00200513          	li	a0,2
   1a980:	f5f78893          	add	a7,a5,-161
   1a984:	05d00313          	li	t1,93
   1a988:	0b136e63          	bltu	t1,a7,1aa44 <__eucjp_mbtowc+0x1fc>
   1a98c:	00474883          	lbu	a7,4(a4)
   1a990:	08f00313          	li	t1,143
   1a994:	06689a63          	bne	a7,t1,1aa08 <__eucjp_mbtowc+0x1c0>
   1a998:	00f702a3          	sb	a5,5(a4)
   1a99c:	00200793          	li	a5,2
   1a9a0:	00f72023          	sw	a5,0(a4)
   1a9a4:	08d57c63          	bgeu	a0,a3,1aa3c <__eucjp_mbtowc+0x1f4>
   1a9a8:	00a60633          	add	a2,a2,a0
   1a9ac:	00064783          	lbu	a5,0(a2)
   1a9b0:	00150513          	add	a0,a0,1
   1a9b4:	f5f78693          	add	a3,a5,-161
   1a9b8:	05d00613          	li	a2,93
   1a9bc:	08d66463          	bltu	a2,a3,1aa44 <__eucjp_mbtowc+0x1fc>
   1a9c0:	00574683          	lbu	a3,5(a4)
   1a9c4:	07f7f793          	and	a5,a5,127
   1a9c8:	00869693          	sll	a3,a3,0x8
   1a9cc:	00f687b3          	add	a5,a3,a5
   1a9d0:	00f5a023          	sw	a5,0(a1)
   1a9d4:	00072023          	sw	zero,0(a4)
   1a9d8:	f71ff06f          	j	1a948 <__eucjp_mbtowc+0x100>
   1a9dc:	00000513          	li	a0,0
   1a9e0:	00008067          	ret
   1a9e4:	00889893          	sll	a7,a7,0x8
   1a9e8:	00f888b3          	add	a7,a7,a5
   1a9ec:	0115a023          	sw	a7,0(a1)
   1a9f0:	00072023          	sw	zero,0(a4)
   1a9f4:	00008067          	ret
   1a9f8:	00100513          	li	a0,1
   1a9fc:	eedff06f          	j	1a8e8 <__eucjp_mbtowc+0xa0>
   1aa00:	00000513          	li	a0,0
   1aa04:	f45ff06f          	j	1a948 <__eucjp_mbtowc+0x100>
   1aa08:	00889893          	sll	a7,a7,0x8
   1aa0c:	00f888b3          	add	a7,a7,a5
   1aa10:	0115a023          	sw	a7,0(a1)
   1aa14:	00072023          	sw	zero,0(a4)
   1aa18:	f31ff06f          	j	1a948 <__eucjp_mbtowc+0x100>
   1aa1c:	ffe00513          	li	a0,-2
   1aa20:	00008067          	ret
   1aa24:	00100513          	li	a0,1
   1aa28:	f8dff06f          	j	1a9b4 <__eucjp_mbtowc+0x16c>
   1aa2c:	08a00793          	li	a5,138
   1aa30:	00f82023          	sw	a5,0(a6)
   1aa34:	fff00513          	li	a0,-1
   1aa38:	00008067          	ret
   1aa3c:	ffe00513          	li	a0,-2
   1aa40:	f09ff06f          	j	1a948 <__eucjp_mbtowc+0x100>
   1aa44:	08a00793          	li	a5,138
   1aa48:	00f82023          	sw	a5,0(a6)
   1aa4c:	fff00513          	li	a0,-1
   1aa50:	ef9ff06f          	j	1a948 <__eucjp_mbtowc+0x100>

0001aa54 <__jis_mbtowc>:
   1aa54:	fe010113          	add	sp,sp,-32
   1aa58:	06058e63          	beqz	a1,1aad4 <__jis_mbtowc+0x80>
   1aa5c:	08060063          	beqz	a2,1aadc <__jis_mbtowc+0x88>
   1aa60:	1c068a63          	beqz	a3,1ac34 <__jis_mbtowc+0x1e0>
   1aa64:	00812e23          	sw	s0,28(sp)
   1aa68:	00912c23          	sw	s1,24(sp)
   1aa6c:	01212a23          	sw	s2,20(sp)
   1aa70:	01312823          	sw	s3,16(sp)
   1aa74:	00060e93          	mv	t4,a2
   1aa78:	000ec303          	lbu	t1,0(t4)
   1aa7c:	00074903          	lbu	s2,0(a4)
   1aa80:	00060493          	mv	s1,a2
   1aa84:	00100893          	li	a7,1
   1aa88:	00008397          	auipc	t2,0x8
   1aa8c:	ab438393          	add	t2,t2,-1356 # 2253c <JIS_state_table>
   1aa90:	00008297          	auipc	t0,0x8
   1aa94:	a6428293          	add	t0,t0,-1436 # 224f4 <JIS_action_table>
   1aa98:	02f00413          	li	s0,47
   1aa9c:	00008f17          	auipc	t5,0x8
   1aaa0:	980f0f13          	add	t5,t5,-1664 # 2241c <categories+0x1c>
   1aaa4:	00500f93          	li	t6,5
   1aaa8:	00008e17          	auipc	t3,0x8
   1aaac:	a34e0e13          	add	t3,t3,-1484 # 224dc <categories+0xdc>
   1aab0:	0a030063          	beqz	t1,1ab50 <__jis_mbtowc+0xfc>
   1aab4:	fe530793          	add	a5,t1,-27 # 3efe5 <__BSS_END__+0x1b0d5>
   1aab8:	0ff7f793          	zext.b	a5,a5
   1aabc:	02f46863          	bltu	s0,a5,1aaec <__jis_mbtowc+0x98>
   1aac0:	00279793          	sll	a5,a5,0x2
   1aac4:	01e787b3          	add	a5,a5,t5
   1aac8:	0007a783          	lw	a5,0(a5)
   1aacc:	01e787b3          	add	a5,a5,t5
   1aad0:	00078067          	jr	a5
   1aad4:	00c10593          	add	a1,sp,12
   1aad8:	f80614e3          	bnez	a2,1aa60 <__jis_mbtowc+0xc>
   1aadc:	00072023          	sw	zero,0(a4)
   1aae0:	00100513          	li	a0,1
   1aae4:	02010113          	add	sp,sp,32
   1aae8:	00008067          	ret
   1aaec:	fdf30993          	add	s3,t1,-33
   1aaf0:	05d00793          	li	a5,93
   1aaf4:	0137b9b3          	sltu	s3,a5,s3
   1aaf8:	00798993          	add	s3,s3,7
   1aafc:	00391793          	sll	a5,s2,0x3
   1ab00:	012787b3          	add	a5,a5,s2
   1ab04:	00f28833          	add	a6,t0,a5
   1ab08:	01380833          	add	a6,a6,s3
   1ab0c:	00084803          	lbu	a6,0(a6)
   1ab10:	00f387b3          	add	a5,t2,a5
   1ab14:	013787b3          	add	a5,a5,s3
   1ab18:	0007c903          	lbu	s2,0(a5)
   1ab1c:	0d0fe863          	bltu	t6,a6,1abec <__jis_mbtowc+0x198>
   1ab20:	00281813          	sll	a6,a6,0x2
   1ab24:	01c80833          	add	a6,a6,t3
   1ab28:	00082783          	lw	a5,0(a6)
   1ab2c:	01c787b3          	add	a5,a5,t3
   1ab30:	00078067          	jr	a5
   1ab34:	00670223          	sb	t1,4(a4)
   1ab38:	001e8e93          	add	t4,t4,1
   1ab3c:	00188793          	add	a5,a7,1
   1ab40:	0ed8f063          	bgeu	a7,a3,1ac20 <__jis_mbtowc+0x1cc>
   1ab44:	000ec303          	lbu	t1,0(t4)
   1ab48:	00078893          	mv	a7,a5
   1ab4c:	f60314e3          	bnez	t1,1aab4 <__jis_mbtowc+0x60>
   1ab50:	00600993          	li	s3,6
   1ab54:	fa9ff06f          	j	1aafc <__jis_mbtowc+0xa8>
   1ab58:	01148633          	add	a2,s1,a7
   1ab5c:	fddff06f          	j	1ab38 <__jis_mbtowc+0xe4>
   1ab60:	00100693          	li	a3,1
   1ab64:	00474783          	lbu	a5,4(a4)
   1ab68:	00d72023          	sw	a3,0(a4)
   1ab6c:	000ec703          	lbu	a4,0(t4)
   1ab70:	00879793          	sll	a5,a5,0x8
   1ab74:	00088513          	mv	a0,a7
   1ab78:	00e787b3          	add	a5,a5,a4
   1ab7c:	01c12403          	lw	s0,28(sp)
   1ab80:	01812483          	lw	s1,24(sp)
   1ab84:	01412903          	lw	s2,20(sp)
   1ab88:	01012983          	lw	s3,16(sp)
   1ab8c:	00f5a023          	sw	a5,0(a1)
   1ab90:	02010113          	add	sp,sp,32
   1ab94:	00008067          	ret
   1ab98:	00072023          	sw	zero,0(a4)
   1ab9c:	00064783          	lbu	a5,0(a2)
   1aba0:	00088513          	mv	a0,a7
   1aba4:	fd9ff06f          	j	1ab7c <__jis_mbtowc+0x128>
   1aba8:	01c12403          	lw	s0,28(sp)
   1abac:	00072023          	sw	zero,0(a4)
   1abb0:	0005a023          	sw	zero,0(a1)
   1abb4:	01812483          	lw	s1,24(sp)
   1abb8:	01412903          	lw	s2,20(sp)
   1abbc:	01012983          	lw	s3,16(sp)
   1abc0:	00000513          	li	a0,0
   1abc4:	02010113          	add	sp,sp,32
   1abc8:	00008067          	ret
   1abcc:	00200993          	li	s3,2
   1abd0:	f2dff06f          	j	1aafc <__jis_mbtowc+0xa8>
   1abd4:	00300993          	li	s3,3
   1abd8:	f25ff06f          	j	1aafc <__jis_mbtowc+0xa8>
   1abdc:	00400993          	li	s3,4
   1abe0:	f1dff06f          	j	1aafc <__jis_mbtowc+0xa8>
   1abe4:	00500993          	li	s3,5
   1abe8:	f15ff06f          	j	1aafc <__jis_mbtowc+0xa8>
   1abec:	01c12403          	lw	s0,28(sp)
   1abf0:	08a00793          	li	a5,138
   1abf4:	00f52023          	sw	a5,0(a0)
   1abf8:	01812483          	lw	s1,24(sp)
   1abfc:	01412903          	lw	s2,20(sp)
   1ac00:	01012983          	lw	s3,16(sp)
   1ac04:	fff00513          	li	a0,-1
   1ac08:	02010113          	add	sp,sp,32
   1ac0c:	00008067          	ret
   1ac10:	00100993          	li	s3,1
   1ac14:	ee9ff06f          	j	1aafc <__jis_mbtowc+0xa8>
   1ac18:	00000993          	li	s3,0
   1ac1c:	ee1ff06f          	j	1aafc <__jis_mbtowc+0xa8>
   1ac20:	01272023          	sw	s2,0(a4)
   1ac24:	01c12403          	lw	s0,28(sp)
   1ac28:	01812483          	lw	s1,24(sp)
   1ac2c:	01412903          	lw	s2,20(sp)
   1ac30:	01012983          	lw	s3,16(sp)
   1ac34:	ffe00513          	li	a0,-2
   1ac38:	f59ff06f          	j	1ab90 <__jis_mbtowc+0x13c>

0001ac3c <_Balloc>:
   1ac3c:	04452783          	lw	a5,68(a0)
   1ac40:	ff010113          	add	sp,sp,-16
   1ac44:	00812423          	sw	s0,8(sp)
   1ac48:	00912223          	sw	s1,4(sp)
   1ac4c:	00112623          	sw	ra,12(sp)
   1ac50:	00050413          	mv	s0,a0
   1ac54:	00058493          	mv	s1,a1
   1ac58:	02078c63          	beqz	a5,1ac90 <_Balloc+0x54>
   1ac5c:	00249713          	sll	a4,s1,0x2
   1ac60:	00e787b3          	add	a5,a5,a4
   1ac64:	0007a503          	lw	a0,0(a5)
   1ac68:	04050463          	beqz	a0,1acb0 <_Balloc+0x74>
   1ac6c:	00052703          	lw	a4,0(a0)
   1ac70:	00e7a023          	sw	a4,0(a5)
   1ac74:	00052823          	sw	zero,16(a0)
   1ac78:	00052623          	sw	zero,12(a0)
   1ac7c:	00c12083          	lw	ra,12(sp)
   1ac80:	00812403          	lw	s0,8(sp)
   1ac84:	00412483          	lw	s1,4(sp)
   1ac88:	01010113          	add	sp,sp,16
   1ac8c:	00008067          	ret
   1ac90:	02100613          	li	a2,33
   1ac94:	00400593          	li	a1,4
   1ac98:	015020ef          	jal	1d4ac <_calloc_r>
   1ac9c:	04a42223          	sw	a0,68(s0)
   1aca0:	00050793          	mv	a5,a0
   1aca4:	fa051ce3          	bnez	a0,1ac5c <_Balloc+0x20>
   1aca8:	00000513          	li	a0,0
   1acac:	fd1ff06f          	j	1ac7c <_Balloc+0x40>
   1acb0:	01212023          	sw	s2,0(sp)
   1acb4:	00100913          	li	s2,1
   1acb8:	00991933          	sll	s2,s2,s1
   1acbc:	00590613          	add	a2,s2,5
   1acc0:	00261613          	sll	a2,a2,0x2
   1acc4:	00100593          	li	a1,1
   1acc8:	00040513          	mv	a0,s0
   1accc:	7e0020ef          	jal	1d4ac <_calloc_r>
   1acd0:	00050a63          	beqz	a0,1ace4 <_Balloc+0xa8>
   1acd4:	01252423          	sw	s2,8(a0)
   1acd8:	00952223          	sw	s1,4(a0)
   1acdc:	00012903          	lw	s2,0(sp)
   1ace0:	f95ff06f          	j	1ac74 <_Balloc+0x38>
   1ace4:	00012903          	lw	s2,0(sp)
   1ace8:	00000513          	li	a0,0
   1acec:	f91ff06f          	j	1ac7c <_Balloc+0x40>

0001acf0 <_Bfree>:
   1acf0:	02058063          	beqz	a1,1ad10 <_Bfree+0x20>
   1acf4:	0045a703          	lw	a4,4(a1)
   1acf8:	04452783          	lw	a5,68(a0)
   1acfc:	00271713          	sll	a4,a4,0x2
   1ad00:	00e787b3          	add	a5,a5,a4
   1ad04:	0007a703          	lw	a4,0(a5)
   1ad08:	00e5a023          	sw	a4,0(a1)
   1ad0c:	00b7a023          	sw	a1,0(a5)
   1ad10:	00008067          	ret

0001ad14 <__multadd>:
   1ad14:	fd010113          	add	sp,sp,-48
   1ad18:	01412c23          	sw	s4,24(sp)
   1ad1c:	0105aa03          	lw	s4,16(a1)
   1ad20:	01912223          	sw	s9,4(sp)
   1ad24:	00010cb7          	lui	s9,0x10
   1ad28:	02912223          	sw	s1,36(sp)
   1ad2c:	03212023          	sw	s2,32(sp)
   1ad30:	01312e23          	sw	s3,28(sp)
   1ad34:	01512a23          	sw	s5,20(sp)
   1ad38:	01612823          	sw	s6,16(sp)
   1ad3c:	01712623          	sw	s7,12(sp)
   1ad40:	02112623          	sw	ra,44(sp)
   1ad44:	02812423          	sw	s0,40(sp)
   1ad48:	01812423          	sw	s8,8(sp)
   1ad4c:	00058a93          	mv	s5,a1
   1ad50:	00050b13          	mv	s6,a0
   1ad54:	00060993          	mv	s3,a2
   1ad58:	00068493          	mv	s1,a3
   1ad5c:	01458913          	add	s2,a1,20
   1ad60:	00000b93          	li	s7,0
   1ad64:	fffc8c93          	add	s9,s9,-1 # ffff <exit-0x95>
   1ad68:	00092c03          	lw	s8,0(s2)
   1ad6c:	00098593          	mv	a1,s3
   1ad70:	00490913          	add	s2,s2,4
   1ad74:	019c7533          	and	a0,s8,s9
   1ad78:	425060ef          	jal	2199c <__mulsi3>
   1ad7c:	00050413          	mv	s0,a0
   1ad80:	00098593          	mv	a1,s3
   1ad84:	010c5513          	srl	a0,s8,0x10
   1ad88:	00940433          	add	s0,s0,s1
   1ad8c:	411060ef          	jal	2199c <__mulsi3>
   1ad90:	01045793          	srl	a5,s0,0x10
   1ad94:	00f50533          	add	a0,a0,a5
   1ad98:	01051793          	sll	a5,a0,0x10
   1ad9c:	01947433          	and	s0,s0,s9
   1ada0:	008787b3          	add	a5,a5,s0
   1ada4:	fef92e23          	sw	a5,-4(s2)
   1ada8:	001b8b93          	add	s7,s7,1
   1adac:	01055493          	srl	s1,a0,0x10
   1adb0:	fb4bcce3          	blt	s7,s4,1ad68 <__multadd+0x54>
   1adb4:	02048263          	beqz	s1,1add8 <__multadd+0xc4>
   1adb8:	008aa783          	lw	a5,8(s5)
   1adbc:	04fa5a63          	bge	s4,a5,1ae10 <__multadd+0xfc>
   1adc0:	004a0793          	add	a5,s4,4
   1adc4:	00279793          	sll	a5,a5,0x2
   1adc8:	00fa87b3          	add	a5,s5,a5
   1adcc:	0097a223          	sw	s1,4(a5)
   1add0:	001a0a13          	add	s4,s4,1
   1add4:	014aa823          	sw	s4,16(s5)
   1add8:	02c12083          	lw	ra,44(sp)
   1addc:	02812403          	lw	s0,40(sp)
   1ade0:	02412483          	lw	s1,36(sp)
   1ade4:	02012903          	lw	s2,32(sp)
   1ade8:	01c12983          	lw	s3,28(sp)
   1adec:	01812a03          	lw	s4,24(sp)
   1adf0:	01012b03          	lw	s6,16(sp)
   1adf4:	00c12b83          	lw	s7,12(sp)
   1adf8:	00812c03          	lw	s8,8(sp)
   1adfc:	00412c83          	lw	s9,4(sp)
   1ae00:	000a8513          	mv	a0,s5
   1ae04:	01412a83          	lw	s5,20(sp)
   1ae08:	03010113          	add	sp,sp,48
   1ae0c:	00008067          	ret
   1ae10:	004aa583          	lw	a1,4(s5)
   1ae14:	000b0513          	mv	a0,s6
   1ae18:	00158593          	add	a1,a1,1
   1ae1c:	e21ff0ef          	jal	1ac3c <_Balloc>
   1ae20:	00050413          	mv	s0,a0
   1ae24:	04050c63          	beqz	a0,1ae7c <__multadd+0x168>
   1ae28:	010aa603          	lw	a2,16(s5)
   1ae2c:	00ca8593          	add	a1,s5,12
   1ae30:	00c50513          	add	a0,a0,12
   1ae34:	00260613          	add	a2,a2,2
   1ae38:	00261613          	sll	a2,a2,0x2
   1ae3c:	df4fd0ef          	jal	18430 <memcpy>
   1ae40:	004aa703          	lw	a4,4(s5)
   1ae44:	044b2783          	lw	a5,68(s6)
   1ae48:	00271713          	sll	a4,a4,0x2
   1ae4c:	00e787b3          	add	a5,a5,a4
   1ae50:	0007a703          	lw	a4,0(a5)
   1ae54:	00eaa023          	sw	a4,0(s5)
   1ae58:	0157a023          	sw	s5,0(a5)
   1ae5c:	004a0793          	add	a5,s4,4
   1ae60:	00040a93          	mv	s5,s0
   1ae64:	00279793          	sll	a5,a5,0x2
   1ae68:	00fa87b3          	add	a5,s5,a5
   1ae6c:	0097a223          	sw	s1,4(a5)
   1ae70:	001a0a13          	add	s4,s4,1
   1ae74:	014aa823          	sw	s4,16(s5)
   1ae78:	f61ff06f          	j	1add8 <__multadd+0xc4>
   1ae7c:	00007697          	auipc	a3,0x7
   1ae80:	e4068693          	add	a3,a3,-448 # 21cbc <__clzsi2+0x248>
   1ae84:	00000613          	li	a2,0
   1ae88:	0ba00593          	li	a1,186
   1ae8c:	00007517          	auipc	a0,0x7
   1ae90:	ec450513          	add	a0,a0,-316 # 21d50 <__clzsi2+0x2dc>
   1ae94:	5b0020ef          	jal	1d444 <__assert_func>

0001ae98 <__s2b>:
   1ae98:	fe010113          	add	sp,sp,-32
   1ae9c:	00812c23          	sw	s0,24(sp)
   1aea0:	01212823          	sw	s2,16(sp)
   1aea4:	00058413          	mv	s0,a1
   1aea8:	00050913          	mv	s2,a0
   1aeac:	00900593          	li	a1,9
   1aeb0:	00868513          	add	a0,a3,8
   1aeb4:	00912a23          	sw	s1,20(sp)
   1aeb8:	01312623          	sw	s3,12(sp)
   1aebc:	01412423          	sw	s4,8(sp)
   1aec0:	00112e23          	sw	ra,28(sp)
   1aec4:	00068493          	mv	s1,a3
   1aec8:	00060993          	mv	s3,a2
   1aecc:	00070a13          	mv	s4,a4
   1aed0:	2f1060ef          	jal	219c0 <__divsi3>
   1aed4:	00900793          	li	a5,9
   1aed8:	0c97da63          	bge	a5,s1,1afac <__s2b+0x114>
   1aedc:	00100793          	li	a5,1
   1aee0:	00000593          	li	a1,0
   1aee4:	00179793          	sll	a5,a5,0x1
   1aee8:	00158593          	add	a1,a1,1
   1aeec:	fea7cce3          	blt	a5,a0,1aee4 <__s2b+0x4c>
   1aef0:	00090513          	mv	a0,s2
   1aef4:	d49ff0ef          	jal	1ac3c <_Balloc>
   1aef8:	00050593          	mv	a1,a0
   1aefc:	0a050c63          	beqz	a0,1afb4 <__s2b+0x11c>
   1af00:	00100793          	li	a5,1
   1af04:	00f52823          	sw	a5,16(a0)
   1af08:	01452a23          	sw	s4,20(a0)
   1af0c:	00900793          	li	a5,9
   1af10:	0937d863          	bge	a5,s3,1afa0 <__s2b+0x108>
   1af14:	01512223          	sw	s5,4(sp)
   1af18:	00940a93          	add	s5,s0,9
   1af1c:	01340a33          	add	s4,s0,s3
   1af20:	000a8413          	mv	s0,s5
   1af24:	00044683          	lbu	a3,0(s0)
   1af28:	00a00613          	li	a2,10
   1af2c:	00090513          	mv	a0,s2
   1af30:	fd068693          	add	a3,a3,-48
   1af34:	de1ff0ef          	jal	1ad14 <__multadd>
   1af38:	00140413          	add	s0,s0,1
   1af3c:	00050593          	mv	a1,a0
   1af40:	ff4412e3          	bne	s0,s4,1af24 <__s2b+0x8c>
   1af44:	ff898413          	add	s0,s3,-8
   1af48:	008a8433          	add	s0,s5,s0
   1af4c:	00412a83          	lw	s5,4(sp)
   1af50:	0299d663          	bge	s3,s1,1af7c <__s2b+0xe4>
   1af54:	413484b3          	sub	s1,s1,s3
   1af58:	009404b3          	add	s1,s0,s1
   1af5c:	00044683          	lbu	a3,0(s0)
   1af60:	00a00613          	li	a2,10
   1af64:	00090513          	mv	a0,s2
   1af68:	fd068693          	add	a3,a3,-48
   1af6c:	da9ff0ef          	jal	1ad14 <__multadd>
   1af70:	00140413          	add	s0,s0,1
   1af74:	00050593          	mv	a1,a0
   1af78:	fe9412e3          	bne	s0,s1,1af5c <__s2b+0xc4>
   1af7c:	01c12083          	lw	ra,28(sp)
   1af80:	01812403          	lw	s0,24(sp)
   1af84:	01412483          	lw	s1,20(sp)
   1af88:	01012903          	lw	s2,16(sp)
   1af8c:	00c12983          	lw	s3,12(sp)
   1af90:	00812a03          	lw	s4,8(sp)
   1af94:	00058513          	mv	a0,a1
   1af98:	02010113          	add	sp,sp,32
   1af9c:	00008067          	ret
   1afa0:	00a40413          	add	s0,s0,10
   1afa4:	00900993          	li	s3,9
   1afa8:	fa9ff06f          	j	1af50 <__s2b+0xb8>
   1afac:	00000593          	li	a1,0
   1afb0:	f41ff06f          	j	1aef0 <__s2b+0x58>
   1afb4:	00007697          	auipc	a3,0x7
   1afb8:	d0868693          	add	a3,a3,-760 # 21cbc <__clzsi2+0x248>
   1afbc:	00000613          	li	a2,0
   1afc0:	0d300593          	li	a1,211
   1afc4:	00007517          	auipc	a0,0x7
   1afc8:	d8c50513          	add	a0,a0,-628 # 21d50 <__clzsi2+0x2dc>
   1afcc:	01512223          	sw	s5,4(sp)
   1afd0:	474020ef          	jal	1d444 <__assert_func>

0001afd4 <__hi0bits>:
   1afd4:	00050793          	mv	a5,a0
   1afd8:	00010737          	lui	a4,0x10
   1afdc:	00000513          	li	a0,0
   1afe0:	00e7f663          	bgeu	a5,a4,1afec <__hi0bits+0x18>
   1afe4:	01079793          	sll	a5,a5,0x10
   1afe8:	01000513          	li	a0,16
   1afec:	01000737          	lui	a4,0x1000
   1aff0:	00e7f663          	bgeu	a5,a4,1affc <__hi0bits+0x28>
   1aff4:	00850513          	add	a0,a0,8
   1aff8:	00879793          	sll	a5,a5,0x8
   1affc:	10000737          	lui	a4,0x10000
   1b000:	00e7f663          	bgeu	a5,a4,1b00c <__hi0bits+0x38>
   1b004:	00450513          	add	a0,a0,4
   1b008:	00479793          	sll	a5,a5,0x4
   1b00c:	40000737          	lui	a4,0x40000
   1b010:	00e7ea63          	bltu	a5,a4,1b024 <__hi0bits+0x50>
   1b014:	fff7c793          	not	a5,a5
   1b018:	01f7d793          	srl	a5,a5,0x1f
   1b01c:	00f50533          	add	a0,a0,a5
   1b020:	00008067          	ret
   1b024:	00279793          	sll	a5,a5,0x2
   1b028:	0007ca63          	bltz	a5,1b03c <__hi0bits+0x68>
   1b02c:	00179713          	sll	a4,a5,0x1
   1b030:	00074a63          	bltz	a4,1b044 <__hi0bits+0x70>
   1b034:	02000513          	li	a0,32
   1b038:	00008067          	ret
   1b03c:	00250513          	add	a0,a0,2
   1b040:	00008067          	ret
   1b044:	00350513          	add	a0,a0,3
   1b048:	00008067          	ret

0001b04c <__lo0bits>:
   1b04c:	00052783          	lw	a5,0(a0)
   1b050:	00050713          	mv	a4,a0
   1b054:	0077f693          	and	a3,a5,7
   1b058:	02068463          	beqz	a3,1b080 <__lo0bits+0x34>
   1b05c:	0017f693          	and	a3,a5,1
   1b060:	00000513          	li	a0,0
   1b064:	04069e63          	bnez	a3,1b0c0 <__lo0bits+0x74>
   1b068:	0027f693          	and	a3,a5,2
   1b06c:	0a068863          	beqz	a3,1b11c <__lo0bits+0xd0>
   1b070:	0017d793          	srl	a5,a5,0x1
   1b074:	00f72023          	sw	a5,0(a4) # 40000000 <__BSS_END__+0x3ffdc0f0>
   1b078:	00100513          	li	a0,1
   1b07c:	00008067          	ret
   1b080:	01079693          	sll	a3,a5,0x10
   1b084:	0106d693          	srl	a3,a3,0x10
   1b088:	00000513          	li	a0,0
   1b08c:	06068e63          	beqz	a3,1b108 <__lo0bits+0xbc>
   1b090:	0ff7f693          	zext.b	a3,a5
   1b094:	06068063          	beqz	a3,1b0f4 <__lo0bits+0xa8>
   1b098:	00f7f693          	and	a3,a5,15
   1b09c:	04068263          	beqz	a3,1b0e0 <__lo0bits+0x94>
   1b0a0:	0037f693          	and	a3,a5,3
   1b0a4:	02068463          	beqz	a3,1b0cc <__lo0bits+0x80>
   1b0a8:	0017f693          	and	a3,a5,1
   1b0ac:	00069c63          	bnez	a3,1b0c4 <__lo0bits+0x78>
   1b0b0:	0017d793          	srl	a5,a5,0x1
   1b0b4:	00150513          	add	a0,a0,1
   1b0b8:	00079663          	bnez	a5,1b0c4 <__lo0bits+0x78>
   1b0bc:	02000513          	li	a0,32
   1b0c0:	00008067          	ret
   1b0c4:	00f72023          	sw	a5,0(a4)
   1b0c8:	00008067          	ret
   1b0cc:	0027d793          	srl	a5,a5,0x2
   1b0d0:	0017f693          	and	a3,a5,1
   1b0d4:	00250513          	add	a0,a0,2
   1b0d8:	fe0696e3          	bnez	a3,1b0c4 <__lo0bits+0x78>
   1b0dc:	fd5ff06f          	j	1b0b0 <__lo0bits+0x64>
   1b0e0:	0047d793          	srl	a5,a5,0x4
   1b0e4:	0037f693          	and	a3,a5,3
   1b0e8:	00450513          	add	a0,a0,4
   1b0ec:	fa069ee3          	bnez	a3,1b0a8 <__lo0bits+0x5c>
   1b0f0:	fddff06f          	j	1b0cc <__lo0bits+0x80>
   1b0f4:	0087d793          	srl	a5,a5,0x8
   1b0f8:	00f7f693          	and	a3,a5,15
   1b0fc:	00850513          	add	a0,a0,8
   1b100:	fa0690e3          	bnez	a3,1b0a0 <__lo0bits+0x54>
   1b104:	fddff06f          	j	1b0e0 <__lo0bits+0x94>
   1b108:	0107d793          	srl	a5,a5,0x10
   1b10c:	0ff7f693          	zext.b	a3,a5
   1b110:	01000513          	li	a0,16
   1b114:	f80692e3          	bnez	a3,1b098 <__lo0bits+0x4c>
   1b118:	fddff06f          	j	1b0f4 <__lo0bits+0xa8>
   1b11c:	0027d793          	srl	a5,a5,0x2
   1b120:	00f72023          	sw	a5,0(a4)
   1b124:	00200513          	li	a0,2
   1b128:	00008067          	ret

0001b12c <__i2b>:
   1b12c:	04452783          	lw	a5,68(a0)
   1b130:	ff010113          	add	sp,sp,-16
   1b134:	00812423          	sw	s0,8(sp)
   1b138:	00912223          	sw	s1,4(sp)
   1b13c:	00112623          	sw	ra,12(sp)
   1b140:	00050413          	mv	s0,a0
   1b144:	00058493          	mv	s1,a1
   1b148:	02078c63          	beqz	a5,1b180 <__i2b+0x54>
   1b14c:	0047a503          	lw	a0,4(a5)
   1b150:	06050263          	beqz	a0,1b1b4 <__i2b+0x88>
   1b154:	00052703          	lw	a4,0(a0)
   1b158:	00e7a223          	sw	a4,4(a5)
   1b15c:	00c12083          	lw	ra,12(sp)
   1b160:	00812403          	lw	s0,8(sp)
   1b164:	00100793          	li	a5,1
   1b168:	00952a23          	sw	s1,20(a0)
   1b16c:	00052623          	sw	zero,12(a0)
   1b170:	00f52823          	sw	a5,16(a0)
   1b174:	00412483          	lw	s1,4(sp)
   1b178:	01010113          	add	sp,sp,16
   1b17c:	00008067          	ret
   1b180:	02100613          	li	a2,33
   1b184:	00400593          	li	a1,4
   1b188:	324020ef          	jal	1d4ac <_calloc_r>
   1b18c:	04a42223          	sw	a0,68(s0)
   1b190:	00050793          	mv	a5,a0
   1b194:	fa051ce3          	bnez	a0,1b14c <__i2b+0x20>
   1b198:	00007697          	auipc	a3,0x7
   1b19c:	b2468693          	add	a3,a3,-1244 # 21cbc <__clzsi2+0x248>
   1b1a0:	00000613          	li	a2,0
   1b1a4:	14500593          	li	a1,325
   1b1a8:	00007517          	auipc	a0,0x7
   1b1ac:	ba850513          	add	a0,a0,-1112 # 21d50 <__clzsi2+0x2dc>
   1b1b0:	294020ef          	jal	1d444 <__assert_func>
   1b1b4:	01c00613          	li	a2,28
   1b1b8:	00100593          	li	a1,1
   1b1bc:	00040513          	mv	a0,s0
   1b1c0:	2ec020ef          	jal	1d4ac <_calloc_r>
   1b1c4:	fc050ae3          	beqz	a0,1b198 <__i2b+0x6c>
   1b1c8:	00100793          	li	a5,1
   1b1cc:	00f52223          	sw	a5,4(a0)
   1b1d0:	00200793          	li	a5,2
   1b1d4:	00f52423          	sw	a5,8(a0)
   1b1d8:	f85ff06f          	j	1b15c <__i2b+0x30>

0001b1dc <__multiply>:
   1b1dc:	fb010113          	add	sp,sp,-80
   1b1e0:	03312e23          	sw	s3,60(sp)
   1b1e4:	03812423          	sw	s8,40(sp)
   1b1e8:	01062983          	lw	s3,16(a2)
   1b1ec:	0105ac03          	lw	s8,16(a1)
   1b1f0:	04812423          	sw	s0,72(sp)
   1b1f4:	03412c23          	sw	s4,56(sp)
   1b1f8:	04112623          	sw	ra,76(sp)
   1b1fc:	03712623          	sw	s7,44(sp)
   1b200:	00058a13          	mv	s4,a1
   1b204:	00060413          	mv	s0,a2
   1b208:	013c4c63          	blt	s8,s3,1b220 <__multiply+0x44>
   1b20c:	00098713          	mv	a4,s3
   1b210:	00058413          	mv	s0,a1
   1b214:	000c0993          	mv	s3,s8
   1b218:	00060a13          	mv	s4,a2
   1b21c:	00070c13          	mv	s8,a4
   1b220:	00842783          	lw	a5,8(s0)
   1b224:	00442583          	lw	a1,4(s0)
   1b228:	01898bb3          	add	s7,s3,s8
   1b22c:	0177a7b3          	slt	a5,a5,s7
   1b230:	00f585b3          	add	a1,a1,a5
   1b234:	a09ff0ef          	jal	1ac3c <_Balloc>
   1b238:	00a12623          	sw	a0,12(sp)
   1b23c:	22050863          	beqz	a0,1b46c <__multiply+0x290>
   1b240:	00c12783          	lw	a5,12(sp)
   1b244:	03512a23          	sw	s5,52(sp)
   1b248:	03612823          	sw	s6,48(sp)
   1b24c:	002b9a93          	sll	s5,s7,0x2
   1b250:	01478b13          	add	s6,a5,20
   1b254:	015b0ab3          	add	s5,s6,s5
   1b258:	000b0793          	mv	a5,s6
   1b25c:	015b7863          	bgeu	s6,s5,1b26c <__multiply+0x90>
   1b260:	0007a023          	sw	zero,0(a5)
   1b264:	00478793          	add	a5,a5,4
   1b268:	ff57ece3          	bltu	a5,s5,1b260 <__multiply+0x84>
   1b26c:	014a0a13          	add	s4,s4,20
   1b270:	002c1c13          	sll	s8,s8,0x2
   1b274:	01440793          	add	a5,s0,20
   1b278:	018a0733          	add	a4,s4,s8
   1b27c:	00299993          	sll	s3,s3,0x2
   1b280:	00f12423          	sw	a5,8(sp)
   1b284:	00e12023          	sw	a4,0(sp)
   1b288:	013789b3          	add	s3,a5,s3
   1b28c:	16ea7c63          	bgeu	s4,a4,1b404 <__multiply+0x228>
   1b290:	00400713          	li	a4,4
   1b294:	04912223          	sw	s1,68(sp)
   1b298:	05212023          	sw	s2,64(sp)
   1b29c:	03912223          	sw	s9,36(sp)
   1b2a0:	03a12023          	sw	s10,32(sp)
   1b2a4:	01b12e23          	sw	s11,28(sp)
   1b2a8:	01540793          	add	a5,s0,21
   1b2ac:	00e12223          	sw	a4,4(sp)
   1b2b0:	1af9f263          	bgeu	s3,a5,1b454 <__multiply+0x278>
   1b2b4:	00010437          	lui	s0,0x10
   1b2b8:	fff40413          	add	s0,s0,-1 # ffff <exit-0x95>
   1b2bc:	01c0006f          	j	1b2d8 <__multiply+0xfc>
   1b2c0:	01095913          	srl	s2,s2,0x10
   1b2c4:	0a091063          	bnez	s2,1b364 <__multiply+0x188>
   1b2c8:	00012783          	lw	a5,0(sp)
   1b2cc:	004a0a13          	add	s4,s4,4
   1b2d0:	004b0b13          	add	s6,s6,4
   1b2d4:	10fa7e63          	bgeu	s4,a5,1b3f0 <__multiply+0x214>
   1b2d8:	000a2903          	lw	s2,0(s4)
   1b2dc:	008974b3          	and	s1,s2,s0
   1b2e0:	fe0480e3          	beqz	s1,1b2c0 <__multiply+0xe4>
   1b2e4:	00812c83          	lw	s9,8(sp)
   1b2e8:	000b0d13          	mv	s10,s6
   1b2ec:	00000c13          	li	s8,0
   1b2f0:	000cad83          	lw	s11,0(s9)
   1b2f4:	000d2903          	lw	s2,0(s10)
   1b2f8:	00048593          	mv	a1,s1
   1b2fc:	008df533          	and	a0,s11,s0
   1b300:	69c060ef          	jal	2199c <__mulsi3>
   1b304:	00897733          	and	a4,s2,s0
   1b308:	00e50733          	add	a4,a0,a4
   1b30c:	00048593          	mv	a1,s1
   1b310:	010dd513          	srl	a0,s11,0x10
   1b314:	01870c33          	add	s8,a4,s8
   1b318:	01095913          	srl	s2,s2,0x10
   1b31c:	680060ef          	jal	2199c <__mulsi3>
   1b320:	010c5713          	srl	a4,s8,0x10
   1b324:	01250533          	add	a0,a0,s2
   1b328:	00e50533          	add	a0,a0,a4
   1b32c:	008c77b3          	and	a5,s8,s0
   1b330:	01051713          	sll	a4,a0,0x10
   1b334:	004d0d13          	add	s10,s10,4
   1b338:	00f767b3          	or	a5,a4,a5
   1b33c:	004c8c93          	add	s9,s9,4
   1b340:	fefd2e23          	sw	a5,-4(s10)
   1b344:	01055c13          	srl	s8,a0,0x10
   1b348:	fb3ce4e3          	bltu	s9,s3,1b2f0 <__multiply+0x114>
   1b34c:	00412783          	lw	a5,4(sp)
   1b350:	00fb0733          	add	a4,s6,a5
   1b354:	01872023          	sw	s8,0(a4)
   1b358:	000a2903          	lw	s2,0(s4)
   1b35c:	01095913          	srl	s2,s2,0x10
   1b360:	f60904e3          	beqz	s2,1b2c8 <__multiply+0xec>
   1b364:	000b2c83          	lw	s9,0(s6)
   1b368:	00812d03          	lw	s10,8(sp)
   1b36c:	000b0c13          	mv	s8,s6
   1b370:	000c8493          	mv	s1,s9
   1b374:	00000d93          	li	s11,0
   1b378:	000d2503          	lw	a0,0(s10)
   1b37c:	00090593          	mv	a1,s2
   1b380:	0104d493          	srl	s1,s1,0x10
   1b384:	00857533          	and	a0,a0,s0
   1b388:	614060ef          	jal	2199c <__mulsi3>
   1b38c:	01b50733          	add	a4,a0,s11
   1b390:	00970db3          	add	s11,a4,s1
   1b394:	010d9593          	sll	a1,s11,0x10
   1b398:	008cf7b3          	and	a5,s9,s0
   1b39c:	00f5e7b3          	or	a5,a1,a5
   1b3a0:	00fc2023          	sw	a5,0(s8)
   1b3a4:	002d5503          	lhu	a0,2(s10)
   1b3a8:	004c2483          	lw	s1,4(s8)
   1b3ac:	00090593          	mv	a1,s2
   1b3b0:	5ec060ef          	jal	2199c <__mulsi3>
   1b3b4:	0084f7b3          	and	a5,s1,s0
   1b3b8:	010dd713          	srl	a4,s11,0x10
   1b3bc:	00f507b3          	add	a5,a0,a5
   1b3c0:	004d0d13          	add	s10,s10,4
   1b3c4:	00e78cb3          	add	s9,a5,a4
   1b3c8:	004c0c13          	add	s8,s8,4
   1b3cc:	010cdd93          	srl	s11,s9,0x10
   1b3d0:	fb3d64e3          	bltu	s10,s3,1b378 <__multiply+0x19c>
   1b3d4:	00412783          	lw	a5,4(sp)
   1b3d8:	004a0a13          	add	s4,s4,4
   1b3dc:	00fb0733          	add	a4,s6,a5
   1b3e0:	00012783          	lw	a5,0(sp)
   1b3e4:	01972023          	sw	s9,0(a4)
   1b3e8:	004b0b13          	add	s6,s6,4
   1b3ec:	eefa66e3          	bltu	s4,a5,1b2d8 <__multiply+0xfc>
   1b3f0:	04412483          	lw	s1,68(sp)
   1b3f4:	04012903          	lw	s2,64(sp)
   1b3f8:	02412c83          	lw	s9,36(sp)
   1b3fc:	02012d03          	lw	s10,32(sp)
   1b400:	01c12d83          	lw	s11,28(sp)
   1b404:	01704863          	bgtz	s7,1b414 <__multiply+0x238>
   1b408:	0180006f          	j	1b420 <__multiply+0x244>
   1b40c:	fffb8b93          	add	s7,s7,-1
   1b410:	000b8863          	beqz	s7,1b420 <__multiply+0x244>
   1b414:	ffcaa783          	lw	a5,-4(s5)
   1b418:	ffca8a93          	add	s5,s5,-4
   1b41c:	fe0788e3          	beqz	a5,1b40c <__multiply+0x230>
   1b420:	00c12783          	lw	a5,12(sp)
   1b424:	04c12083          	lw	ra,76(sp)
   1b428:	04812403          	lw	s0,72(sp)
   1b42c:	0177a823          	sw	s7,16(a5)
   1b430:	03412a83          	lw	s5,52(sp)
   1b434:	03012b03          	lw	s6,48(sp)
   1b438:	03c12983          	lw	s3,60(sp)
   1b43c:	03812a03          	lw	s4,56(sp)
   1b440:	02c12b83          	lw	s7,44(sp)
   1b444:	02812c03          	lw	s8,40(sp)
   1b448:	00078513          	mv	a0,a5
   1b44c:	05010113          	add	sp,sp,80
   1b450:	00008067          	ret
   1b454:	408987b3          	sub	a5,s3,s0
   1b458:	feb78793          	add	a5,a5,-21
   1b45c:	ffc7f793          	and	a5,a5,-4
   1b460:	00478793          	add	a5,a5,4
   1b464:	00f12223          	sw	a5,4(sp)
   1b468:	e4dff06f          	j	1b2b4 <__multiply+0xd8>
   1b46c:	00007697          	auipc	a3,0x7
   1b470:	85068693          	add	a3,a3,-1968 # 21cbc <__clzsi2+0x248>
   1b474:	00000613          	li	a2,0
   1b478:	16200593          	li	a1,354
   1b47c:	00007517          	auipc	a0,0x7
   1b480:	8d450513          	add	a0,a0,-1836 # 21d50 <__clzsi2+0x2dc>
   1b484:	04912223          	sw	s1,68(sp)
   1b488:	05212023          	sw	s2,64(sp)
   1b48c:	03512a23          	sw	s5,52(sp)
   1b490:	03612823          	sw	s6,48(sp)
   1b494:	03912223          	sw	s9,36(sp)
   1b498:	03a12023          	sw	s10,32(sp)
   1b49c:	01b12e23          	sw	s11,28(sp)
   1b4a0:	7a5010ef          	jal	1d444 <__assert_func>

0001b4a4 <__pow5mult>:
   1b4a4:	fe010113          	add	sp,sp,-32
   1b4a8:	00812c23          	sw	s0,24(sp)
   1b4ac:	01212823          	sw	s2,16(sp)
   1b4b0:	01312623          	sw	s3,12(sp)
   1b4b4:	00112e23          	sw	ra,28(sp)
   1b4b8:	00367793          	and	a5,a2,3
   1b4bc:	00060413          	mv	s0,a2
   1b4c0:	00050993          	mv	s3,a0
   1b4c4:	00058913          	mv	s2,a1
   1b4c8:	0a079c63          	bnez	a5,1b580 <__pow5mult+0xdc>
   1b4cc:	40245413          	sra	s0,s0,0x2
   1b4d0:	06040a63          	beqz	s0,1b544 <__pow5mult+0xa0>
   1b4d4:	00912a23          	sw	s1,20(sp)
   1b4d8:	0409a483          	lw	s1,64(s3)
   1b4dc:	0c048663          	beqz	s1,1b5a8 <__pow5mult+0x104>
   1b4e0:	00147793          	and	a5,s0,1
   1b4e4:	02079063          	bnez	a5,1b504 <__pow5mult+0x60>
   1b4e8:	40145413          	sra	s0,s0,0x1
   1b4ec:	04040a63          	beqz	s0,1b540 <__pow5mult+0x9c>
   1b4f0:	0004a503          	lw	a0,0(s1)
   1b4f4:	06050663          	beqz	a0,1b560 <__pow5mult+0xbc>
   1b4f8:	00050493          	mv	s1,a0
   1b4fc:	00147793          	and	a5,s0,1
   1b500:	fe0784e3          	beqz	a5,1b4e8 <__pow5mult+0x44>
   1b504:	00048613          	mv	a2,s1
   1b508:	00090593          	mv	a1,s2
   1b50c:	00098513          	mv	a0,s3
   1b510:	ccdff0ef          	jal	1b1dc <__multiply>
   1b514:	02090063          	beqz	s2,1b534 <__pow5mult+0x90>
   1b518:	00492703          	lw	a4,4(s2)
   1b51c:	0449a783          	lw	a5,68(s3)
   1b520:	00271713          	sll	a4,a4,0x2
   1b524:	00e787b3          	add	a5,a5,a4
   1b528:	0007a703          	lw	a4,0(a5)
   1b52c:	00e92023          	sw	a4,0(s2)
   1b530:	0127a023          	sw	s2,0(a5)
   1b534:	40145413          	sra	s0,s0,0x1
   1b538:	00050913          	mv	s2,a0
   1b53c:	fa041ae3          	bnez	s0,1b4f0 <__pow5mult+0x4c>
   1b540:	01412483          	lw	s1,20(sp)
   1b544:	01c12083          	lw	ra,28(sp)
   1b548:	01812403          	lw	s0,24(sp)
   1b54c:	00c12983          	lw	s3,12(sp)
   1b550:	00090513          	mv	a0,s2
   1b554:	01012903          	lw	s2,16(sp)
   1b558:	02010113          	add	sp,sp,32
   1b55c:	00008067          	ret
   1b560:	00048613          	mv	a2,s1
   1b564:	00048593          	mv	a1,s1
   1b568:	00098513          	mv	a0,s3
   1b56c:	c71ff0ef          	jal	1b1dc <__multiply>
   1b570:	00a4a023          	sw	a0,0(s1)
   1b574:	00052023          	sw	zero,0(a0)
   1b578:	00050493          	mv	s1,a0
   1b57c:	f81ff06f          	j	1b4fc <__pow5mult+0x58>
   1b580:	fff78793          	add	a5,a5,-1
   1b584:	00007717          	auipc	a4,0x7
   1b588:	00070713          	mv	a4,a4
   1b58c:	00279793          	sll	a5,a5,0x2
   1b590:	00f707b3          	add	a5,a4,a5
   1b594:	0007a603          	lw	a2,0(a5)
   1b598:	00000693          	li	a3,0
   1b59c:	f78ff0ef          	jal	1ad14 <__multadd>
   1b5a0:	00050913          	mv	s2,a0
   1b5a4:	f29ff06f          	j	1b4cc <__pow5mult+0x28>
   1b5a8:	00100593          	li	a1,1
   1b5ac:	00098513          	mv	a0,s3
   1b5b0:	e8cff0ef          	jal	1ac3c <_Balloc>
   1b5b4:	00050493          	mv	s1,a0
   1b5b8:	02050063          	beqz	a0,1b5d8 <__pow5mult+0x134>
   1b5bc:	27100793          	li	a5,625
   1b5c0:	00f52a23          	sw	a5,20(a0)
   1b5c4:	00100793          	li	a5,1
   1b5c8:	00f52823          	sw	a5,16(a0)
   1b5cc:	04a9a023          	sw	a0,64(s3)
   1b5d0:	00052023          	sw	zero,0(a0)
   1b5d4:	f0dff06f          	j	1b4e0 <__pow5mult+0x3c>
   1b5d8:	00006697          	auipc	a3,0x6
   1b5dc:	6e468693          	add	a3,a3,1764 # 21cbc <__clzsi2+0x248>
   1b5e0:	00000613          	li	a2,0
   1b5e4:	14500593          	li	a1,325
   1b5e8:	00006517          	auipc	a0,0x6
   1b5ec:	76850513          	add	a0,a0,1896 # 21d50 <__clzsi2+0x2dc>
   1b5f0:	655010ef          	jal	1d444 <__assert_func>

0001b5f4 <__lshift>:
   1b5f4:	fe010113          	add	sp,sp,-32
   1b5f8:	01512223          	sw	s5,4(sp)
   1b5fc:	0105aa83          	lw	s5,16(a1)
   1b600:	0085a783          	lw	a5,8(a1)
   1b604:	01312623          	sw	s3,12(sp)
   1b608:	40565993          	sra	s3,a2,0x5
   1b60c:	01598ab3          	add	s5,s3,s5
   1b610:	00812c23          	sw	s0,24(sp)
   1b614:	00912a23          	sw	s1,20(sp)
   1b618:	01212823          	sw	s2,16(sp)
   1b61c:	01412423          	sw	s4,8(sp)
   1b620:	00112e23          	sw	ra,28(sp)
   1b624:	001a8913          	add	s2,s5,1
   1b628:	00058493          	mv	s1,a1
   1b62c:	00060413          	mv	s0,a2
   1b630:	0045a583          	lw	a1,4(a1)
   1b634:	00050a13          	mv	s4,a0
   1b638:	0127d863          	bge	a5,s2,1b648 <__lshift+0x54>
   1b63c:	00179793          	sll	a5,a5,0x1
   1b640:	00158593          	add	a1,a1,1
   1b644:	ff27cce3          	blt	a5,s2,1b63c <__lshift+0x48>
   1b648:	000a0513          	mv	a0,s4
   1b64c:	df0ff0ef          	jal	1ac3c <_Balloc>
   1b650:	10050c63          	beqz	a0,1b768 <__lshift+0x174>
   1b654:	01450813          	add	a6,a0,20
   1b658:	03305463          	blez	s3,1b680 <__lshift+0x8c>
   1b65c:	00598993          	add	s3,s3,5
   1b660:	00299993          	sll	s3,s3,0x2
   1b664:	01350733          	add	a4,a0,s3
   1b668:	00080793          	mv	a5,a6
   1b66c:	00478793          	add	a5,a5,4
   1b670:	fe07ae23          	sw	zero,-4(a5)
   1b674:	fee79ce3          	bne	a5,a4,1b66c <__lshift+0x78>
   1b678:	fec98993          	add	s3,s3,-20
   1b67c:	01380833          	add	a6,a6,s3
   1b680:	0104a883          	lw	a7,16(s1)
   1b684:	01448793          	add	a5,s1,20
   1b688:	01f47613          	and	a2,s0,31
   1b68c:	00289893          	sll	a7,a7,0x2
   1b690:	011788b3          	add	a7,a5,a7
   1b694:	0a060463          	beqz	a2,1b73c <__lshift+0x148>
   1b698:	02000593          	li	a1,32
   1b69c:	40c585b3          	sub	a1,a1,a2
   1b6a0:	00080313          	mv	t1,a6
   1b6a4:	00000693          	li	a3,0
   1b6a8:	0007a703          	lw	a4,0(a5)
   1b6ac:	00430313          	add	t1,t1,4
   1b6b0:	00478793          	add	a5,a5,4
   1b6b4:	00c71733          	sll	a4,a4,a2
   1b6b8:	00d76733          	or	a4,a4,a3
   1b6bc:	fee32e23          	sw	a4,-4(t1)
   1b6c0:	ffc7a683          	lw	a3,-4(a5)
   1b6c4:	00b6d6b3          	srl	a3,a3,a1
   1b6c8:	ff17e0e3          	bltu	a5,a7,1b6a8 <__lshift+0xb4>
   1b6cc:	01548793          	add	a5,s1,21
   1b6d0:	00400713          	li	a4,4
   1b6d4:	00f8ea63          	bltu	a7,a5,1b6e8 <__lshift+0xf4>
   1b6d8:	409887b3          	sub	a5,a7,s1
   1b6dc:	feb78793          	add	a5,a5,-21
   1b6e0:	ffc7f793          	and	a5,a5,-4
   1b6e4:	00478713          	add	a4,a5,4
   1b6e8:	00e80833          	add	a6,a6,a4
   1b6ec:	00d82023          	sw	a3,0(a6)
   1b6f0:	00069463          	bnez	a3,1b6f8 <__lshift+0x104>
   1b6f4:	000a8913          	mv	s2,s5
   1b6f8:	0044a703          	lw	a4,4(s1)
   1b6fc:	044a2783          	lw	a5,68(s4)
   1b700:	01c12083          	lw	ra,28(sp)
   1b704:	00271713          	sll	a4,a4,0x2
   1b708:	00e787b3          	add	a5,a5,a4
   1b70c:	0007a703          	lw	a4,0(a5)
   1b710:	01252823          	sw	s2,16(a0)
   1b714:	01812403          	lw	s0,24(sp)
   1b718:	00e4a023          	sw	a4,0(s1)
   1b71c:	0097a023          	sw	s1,0(a5)
   1b720:	01012903          	lw	s2,16(sp)
   1b724:	01412483          	lw	s1,20(sp)
   1b728:	00c12983          	lw	s3,12(sp)
   1b72c:	00812a03          	lw	s4,8(sp)
   1b730:	00412a83          	lw	s5,4(sp)
   1b734:	02010113          	add	sp,sp,32
   1b738:	00008067          	ret
   1b73c:	0007a703          	lw	a4,0(a5)
   1b740:	00478793          	add	a5,a5,4
   1b744:	00480813          	add	a6,a6,4
   1b748:	fee82e23          	sw	a4,-4(a6)
   1b74c:	fb17f4e3          	bgeu	a5,a7,1b6f4 <__lshift+0x100>
   1b750:	0007a703          	lw	a4,0(a5)
   1b754:	00478793          	add	a5,a5,4
   1b758:	00480813          	add	a6,a6,4
   1b75c:	fee82e23          	sw	a4,-4(a6)
   1b760:	fd17eee3          	bltu	a5,a7,1b73c <__lshift+0x148>
   1b764:	f91ff06f          	j	1b6f4 <__lshift+0x100>
   1b768:	00006697          	auipc	a3,0x6
   1b76c:	55468693          	add	a3,a3,1364 # 21cbc <__clzsi2+0x248>
   1b770:	00000613          	li	a2,0
   1b774:	1de00593          	li	a1,478
   1b778:	00006517          	auipc	a0,0x6
   1b77c:	5d850513          	add	a0,a0,1496 # 21d50 <__clzsi2+0x2dc>
   1b780:	4c5010ef          	jal	1d444 <__assert_func>

0001b784 <__mcmp>:
   1b784:	01052703          	lw	a4,16(a0)
   1b788:	0105a783          	lw	a5,16(a1)
   1b78c:	00050813          	mv	a6,a0
   1b790:	40f70533          	sub	a0,a4,a5
   1b794:	04f71263          	bne	a4,a5,1b7d8 <__mcmp+0x54>
   1b798:	00279793          	sll	a5,a5,0x2
   1b79c:	01480813          	add	a6,a6,20
   1b7a0:	01458593          	add	a1,a1,20
   1b7a4:	00f80733          	add	a4,a6,a5
   1b7a8:	00f587b3          	add	a5,a1,a5
   1b7ac:	0080006f          	j	1b7b4 <__mcmp+0x30>
   1b7b0:	02e87463          	bgeu	a6,a4,1b7d8 <__mcmp+0x54>
   1b7b4:	ffc72603          	lw	a2,-4(a4) # 22580 <JIS_state_table+0x44>
   1b7b8:	ffc7a683          	lw	a3,-4(a5)
   1b7bc:	ffc70713          	add	a4,a4,-4
   1b7c0:	ffc78793          	add	a5,a5,-4
   1b7c4:	fed606e3          	beq	a2,a3,1b7b0 <__mcmp+0x2c>
   1b7c8:	00100513          	li	a0,1
   1b7cc:	00d67663          	bgeu	a2,a3,1b7d8 <__mcmp+0x54>
   1b7d0:	fff00513          	li	a0,-1
   1b7d4:	00008067          	ret
   1b7d8:	00008067          	ret

0001b7dc <__mdiff>:
   1b7dc:	0105a703          	lw	a4,16(a1)
   1b7e0:	01062783          	lw	a5,16(a2)
   1b7e4:	ff010113          	add	sp,sp,-16
   1b7e8:	00812423          	sw	s0,8(sp)
   1b7ec:	00912223          	sw	s1,4(sp)
   1b7f0:	00112623          	sw	ra,12(sp)
   1b7f4:	01212023          	sw	s2,0(sp)
   1b7f8:	00058413          	mv	s0,a1
   1b7fc:	00060493          	mv	s1,a2
   1b800:	40f706b3          	sub	a3,a4,a5
   1b804:	18f71e63          	bne	a4,a5,1b9a0 <__mdiff+0x1c4>
   1b808:	00279693          	sll	a3,a5,0x2
   1b80c:	01458613          	add	a2,a1,20
   1b810:	01448713          	add	a4,s1,20
   1b814:	00d607b3          	add	a5,a2,a3
   1b818:	00d70733          	add	a4,a4,a3
   1b81c:	0080006f          	j	1b824 <__mdiff+0x48>
   1b820:	18f67c63          	bgeu	a2,a5,1b9b8 <__mdiff+0x1dc>
   1b824:	ffc7a583          	lw	a1,-4(a5)
   1b828:	ffc72683          	lw	a3,-4(a4)
   1b82c:	ffc78793          	add	a5,a5,-4
   1b830:	ffc70713          	add	a4,a4,-4
   1b834:	fed586e3          	beq	a1,a3,1b820 <__mdiff+0x44>
   1b838:	00100913          	li	s2,1
   1b83c:	00d5ea63          	bltu	a1,a3,1b850 <__mdiff+0x74>
   1b840:	00048793          	mv	a5,s1
   1b844:	00000913          	li	s2,0
   1b848:	00040493          	mv	s1,s0
   1b84c:	00078413          	mv	s0,a5
   1b850:	0044a583          	lw	a1,4(s1)
   1b854:	be8ff0ef          	jal	1ac3c <_Balloc>
   1b858:	1a050663          	beqz	a0,1ba04 <__mdiff+0x228>
   1b85c:	0104a883          	lw	a7,16(s1)
   1b860:	01042283          	lw	t0,16(s0)
   1b864:	01448f93          	add	t6,s1,20
   1b868:	00289313          	sll	t1,a7,0x2
   1b86c:	01440813          	add	a6,s0,20
   1b870:	00229293          	sll	t0,t0,0x2
   1b874:	01450593          	add	a1,a0,20
   1b878:	00010e37          	lui	t3,0x10
   1b87c:	01252623          	sw	s2,12(a0)
   1b880:	006f8333          	add	t1,t6,t1
   1b884:	005802b3          	add	t0,a6,t0
   1b888:	00058f13          	mv	t5,a1
   1b88c:	000f8e93          	mv	t4,t6
   1b890:	00000693          	li	a3,0
   1b894:	fffe0e13          	add	t3,t3,-1 # ffff <exit-0x95>
   1b898:	000ea703          	lw	a4,0(t4)
   1b89c:	00082603          	lw	a2,0(a6)
   1b8a0:	004f0f13          	add	t5,t5,4
   1b8a4:	01c777b3          	and	a5,a4,t3
   1b8a8:	01c673b3          	and	t2,a2,t3
   1b8ac:	407787b3          	sub	a5,a5,t2
   1b8b0:	00d787b3          	add	a5,a5,a3
   1b8b4:	01075713          	srl	a4,a4,0x10
   1b8b8:	01065613          	srl	a2,a2,0x10
   1b8bc:	4107d693          	sra	a3,a5,0x10
   1b8c0:	40c70733          	sub	a4,a4,a2
   1b8c4:	00d70733          	add	a4,a4,a3
   1b8c8:	01071693          	sll	a3,a4,0x10
   1b8cc:	01c7f7b3          	and	a5,a5,t3
   1b8d0:	00d7e7b3          	or	a5,a5,a3
   1b8d4:	00480813          	add	a6,a6,4
   1b8d8:	feff2e23          	sw	a5,-4(t5)
   1b8dc:	004e8e93          	add	t4,t4,4
   1b8e0:	41075693          	sra	a3,a4,0x10
   1b8e4:	fa586ae3          	bltu	a6,t0,1b898 <__mdiff+0xbc>
   1b8e8:	01540713          	add	a4,s0,21
   1b8ec:	40828433          	sub	s0,t0,s0
   1b8f0:	feb40413          	add	s0,s0,-21
   1b8f4:	00e2b2b3          	sltu	t0,t0,a4
   1b8f8:	0012cf13          	xor	t5,t0,1
   1b8fc:	00245413          	srl	s0,s0,0x2
   1b900:	00400713          	li	a4,4
   1b904:	0a028463          	beqz	t0,1b9ac <__mdiff+0x1d0>
   1b908:	00ef8fb3          	add	t6,t6,a4
   1b90c:	00e58833          	add	a6,a1,a4
   1b910:	00010eb7          	lui	t4,0x10
   1b914:	00080e13          	mv	t3,a6
   1b918:	000f8613          	mv	a2,t6
   1b91c:	fffe8e93          	add	t4,t4,-1 # ffff <exit-0x95>
   1b920:	0c6ff463          	bgeu	t6,t1,1b9e8 <__mdiff+0x20c>
   1b924:	00062783          	lw	a5,0(a2)
   1b928:	004e0e13          	add	t3,t3,4
   1b92c:	00460613          	add	a2,a2,4
   1b930:	01d7f733          	and	a4,a5,t4
   1b934:	00d70733          	add	a4,a4,a3
   1b938:	0107d593          	srl	a1,a5,0x10
   1b93c:	41075713          	sra	a4,a4,0x10
   1b940:	00b70733          	add	a4,a4,a1
   1b944:	00d787b3          	add	a5,a5,a3
   1b948:	01d7f7b3          	and	a5,a5,t4
   1b94c:	01071693          	sll	a3,a4,0x10
   1b950:	00d7e7b3          	or	a5,a5,a3
   1b954:	fefe2e23          	sw	a5,-4(t3)
   1b958:	41075693          	sra	a3,a4,0x10
   1b95c:	fc6664e3          	bltu	a2,t1,1b924 <__mdiff+0x148>
   1b960:	fff30313          	add	t1,t1,-1
   1b964:	41f30333          	sub	t1,t1,t6
   1b968:	ffc37313          	and	t1,t1,-4
   1b96c:	00680733          	add	a4,a6,t1
   1b970:	00079a63          	bnez	a5,1b984 <__mdiff+0x1a8>
   1b974:	ffc72783          	lw	a5,-4(a4)
   1b978:	fff88893          	add	a7,a7,-1
   1b97c:	ffc70713          	add	a4,a4,-4
   1b980:	fe078ae3          	beqz	a5,1b974 <__mdiff+0x198>
   1b984:	00c12083          	lw	ra,12(sp)
   1b988:	00812403          	lw	s0,8(sp)
   1b98c:	01152823          	sw	a7,16(a0)
   1b990:	00412483          	lw	s1,4(sp)
   1b994:	00012903          	lw	s2,0(sp)
   1b998:	01010113          	add	sp,sp,16
   1b99c:	00008067          	ret
   1b9a0:	00100913          	li	s2,1
   1b9a4:	e806dee3          	bgez	a3,1b840 <__mdiff+0x64>
   1b9a8:	ea9ff06f          	j	1b850 <__mdiff+0x74>
   1b9ac:	00140713          	add	a4,s0,1
   1b9b0:	00271713          	sll	a4,a4,0x2
   1b9b4:	f55ff06f          	j	1b908 <__mdiff+0x12c>
   1b9b8:	00000593          	li	a1,0
   1b9bc:	a80ff0ef          	jal	1ac3c <_Balloc>
   1b9c0:	06050063          	beqz	a0,1ba20 <__mdiff+0x244>
   1b9c4:	00c12083          	lw	ra,12(sp)
   1b9c8:	00812403          	lw	s0,8(sp)
   1b9cc:	00100793          	li	a5,1
   1b9d0:	00f52823          	sw	a5,16(a0)
   1b9d4:	00052a23          	sw	zero,20(a0)
   1b9d8:	00412483          	lw	s1,4(sp)
   1b9dc:	00012903          	lw	s2,0(sp)
   1b9e0:	01010113          	add	sp,sp,16
   1b9e4:	00008067          	ret
   1b9e8:	00000713          	li	a4,0
   1b9ec:	000f1663          	bnez	t5,1b9f8 <__mdiff+0x21c>
   1b9f0:	00e58733          	add	a4,a1,a4
   1b9f4:	f7dff06f          	j	1b970 <__mdiff+0x194>
   1b9f8:	00241713          	sll	a4,s0,0x2
   1b9fc:	00e58733          	add	a4,a1,a4
   1ba00:	f71ff06f          	j	1b970 <__mdiff+0x194>
   1ba04:	00006697          	auipc	a3,0x6
   1ba08:	2b868693          	add	a3,a3,696 # 21cbc <__clzsi2+0x248>
   1ba0c:	00000613          	li	a2,0
   1ba10:	24500593          	li	a1,581
   1ba14:	00006517          	auipc	a0,0x6
   1ba18:	33c50513          	add	a0,a0,828 # 21d50 <__clzsi2+0x2dc>
   1ba1c:	229010ef          	jal	1d444 <__assert_func>
   1ba20:	00006697          	auipc	a3,0x6
   1ba24:	29c68693          	add	a3,a3,668 # 21cbc <__clzsi2+0x248>
   1ba28:	00000613          	li	a2,0
   1ba2c:	23700593          	li	a1,567
   1ba30:	00006517          	auipc	a0,0x6
   1ba34:	32050513          	add	a0,a0,800 # 21d50 <__clzsi2+0x2dc>
   1ba38:	20d010ef          	jal	1d444 <__assert_func>

0001ba3c <__ulp>:
   1ba3c:	7ff007b7          	lui	a5,0x7ff00
   1ba40:	00b7f5b3          	and	a1,a5,a1
   1ba44:	fcc007b7          	lui	a5,0xfcc00
   1ba48:	00f585b3          	add	a1,a1,a5
   1ba4c:	00000793          	li	a5,0
   1ba50:	00b05663          	blez	a1,1ba5c <__ulp+0x20>
   1ba54:	00078513          	mv	a0,a5
   1ba58:	00008067          	ret
   1ba5c:	40b005b3          	neg	a1,a1
   1ba60:	4145d593          	sra	a1,a1,0x14
   1ba64:	01300793          	li	a5,19
   1ba68:	00b7cc63          	blt	a5,a1,1ba80 <__ulp+0x44>
   1ba6c:	000807b7          	lui	a5,0x80
   1ba70:	40b7d5b3          	sra	a1,a5,a1
   1ba74:	00000793          	li	a5,0
   1ba78:	00078513          	mv	a0,a5
   1ba7c:	00008067          	ret
   1ba80:	fec58593          	add	a1,a1,-20
   1ba84:	01e00713          	li	a4,30
   1ba88:	00100793          	li	a5,1
   1ba8c:	00b74663          	blt	a4,a1,1ba98 <__ulp+0x5c>
   1ba90:	800007b7          	lui	a5,0x80000
   1ba94:	00b7d7b3          	srl	a5,a5,a1
   1ba98:	00000593          	li	a1,0
   1ba9c:	00078513          	mv	a0,a5
   1baa0:	00008067          	ret

0001baa4 <__b2d>:
   1baa4:	fe010113          	add	sp,sp,-32
   1baa8:	00912a23          	sw	s1,20(sp)
   1baac:	01052483          	lw	s1,16(a0)
   1bab0:	00812c23          	sw	s0,24(sp)
   1bab4:	01450413          	add	s0,a0,20
   1bab8:	00249493          	sll	s1,s1,0x2
   1babc:	009404b3          	add	s1,s0,s1
   1bac0:	01212823          	sw	s2,16(sp)
   1bac4:	ffc4a903          	lw	s2,-4(s1)
   1bac8:	01312623          	sw	s3,12(sp)
   1bacc:	01412423          	sw	s4,8(sp)
   1bad0:	00090513          	mv	a0,s2
   1bad4:	00058993          	mv	s3,a1
   1bad8:	00112e23          	sw	ra,28(sp)
   1badc:	cf8ff0ef          	jal	1afd4 <__hi0bits>
   1bae0:	02000713          	li	a4,32
   1bae4:	40a707b3          	sub	a5,a4,a0
   1bae8:	00f9a023          	sw	a5,0(s3)
   1baec:	00a00793          	li	a5,10
   1baf0:	ffc48a13          	add	s4,s1,-4
   1baf4:	08a7dc63          	bge	a5,a0,1bb8c <__b2d+0xe8>
   1baf8:	ff550613          	add	a2,a0,-11
   1bafc:	05447063          	bgeu	s0,s4,1bb3c <__b2d+0x98>
   1bb00:	ff84a783          	lw	a5,-8(s1)
   1bb04:	04060c63          	beqz	a2,1bb5c <__b2d+0xb8>
   1bb08:	40c706b3          	sub	a3,a4,a2
   1bb0c:	00d7d733          	srl	a4,a5,a3
   1bb10:	00c91933          	sll	s2,s2,a2
   1bb14:	00e96933          	or	s2,s2,a4
   1bb18:	ff848593          	add	a1,s1,-8
   1bb1c:	3ff00737          	lui	a4,0x3ff00
   1bb20:	00e96733          	or	a4,s2,a4
   1bb24:	00c797b3          	sll	a5,a5,a2
   1bb28:	02b47e63          	bgeu	s0,a1,1bb64 <__b2d+0xc0>
   1bb2c:	ff44a603          	lw	a2,-12(s1)
   1bb30:	00d656b3          	srl	a3,a2,a3
   1bb34:	00d7e7b3          	or	a5,a5,a3
   1bb38:	02c0006f          	j	1bb64 <__b2d+0xc0>
   1bb3c:	00b00793          	li	a5,11
   1bb40:	00f50c63          	beq	a0,a5,1bb58 <__b2d+0xb4>
   1bb44:	00c91933          	sll	s2,s2,a2
   1bb48:	3ff00737          	lui	a4,0x3ff00
   1bb4c:	00e96733          	or	a4,s2,a4
   1bb50:	00000793          	li	a5,0
   1bb54:	0100006f          	j	1bb64 <__b2d+0xc0>
   1bb58:	00000793          	li	a5,0
   1bb5c:	3ff00737          	lui	a4,0x3ff00
   1bb60:	00e96733          	or	a4,s2,a4
   1bb64:	01c12083          	lw	ra,28(sp)
   1bb68:	01812403          	lw	s0,24(sp)
   1bb6c:	01412483          	lw	s1,20(sp)
   1bb70:	01012903          	lw	s2,16(sp)
   1bb74:	00c12983          	lw	s3,12(sp)
   1bb78:	00812a03          	lw	s4,8(sp)
   1bb7c:	00078513          	mv	a0,a5
   1bb80:	00070593          	mv	a1,a4
   1bb84:	02010113          	add	sp,sp,32
   1bb88:	00008067          	ret
   1bb8c:	00b00693          	li	a3,11
   1bb90:	40a686b3          	sub	a3,a3,a0
   1bb94:	3ff007b7          	lui	a5,0x3ff00
   1bb98:	00d95733          	srl	a4,s2,a3
   1bb9c:	00f76733          	or	a4,a4,a5
   1bba0:	00000793          	li	a5,0
   1bba4:	01447663          	bgeu	s0,s4,1bbb0 <__b2d+0x10c>
   1bba8:	ff84a783          	lw	a5,-8(s1)
   1bbac:	00d7d7b3          	srl	a5,a5,a3
   1bbb0:	01550513          	add	a0,a0,21
   1bbb4:	00a91933          	sll	s2,s2,a0
   1bbb8:	00f967b3          	or	a5,s2,a5
   1bbbc:	fa9ff06f          	j	1bb64 <__b2d+0xc0>

0001bbc0 <__d2b>:
   1bbc0:	fd010113          	add	sp,sp,-48
   1bbc4:	01512a23          	sw	s5,20(sp)
   1bbc8:	00058a93          	mv	s5,a1
   1bbcc:	00100593          	li	a1,1
   1bbd0:	02912223          	sw	s1,36(sp)
   1bbd4:	01312e23          	sw	s3,28(sp)
   1bbd8:	01412c23          	sw	s4,24(sp)
   1bbdc:	02112623          	sw	ra,44(sp)
   1bbe0:	02812423          	sw	s0,40(sp)
   1bbe4:	03212023          	sw	s2,32(sp)
   1bbe8:	00060493          	mv	s1,a2
   1bbec:	00068a13          	mv	s4,a3
   1bbf0:	00070993          	mv	s3,a4
   1bbf4:	848ff0ef          	jal	1ac3c <_Balloc>
   1bbf8:	10050263          	beqz	a0,1bcfc <__d2b+0x13c>
   1bbfc:	00100737          	lui	a4,0x100
   1bc00:	0144d913          	srl	s2,s1,0x14
   1bc04:	fff70793          	add	a5,a4,-1 # fffff <__BSS_END__+0xdc0ef>
   1bc08:	7ff97913          	and	s2,s2,2047
   1bc0c:	00050413          	mv	s0,a0
   1bc10:	0097f7b3          	and	a5,a5,s1
   1bc14:	00090463          	beqz	s2,1bc1c <__d2b+0x5c>
   1bc18:	00e7e7b3          	or	a5,a5,a4
   1bc1c:	00f12623          	sw	a5,12(sp)
   1bc20:	060a9263          	bnez	s5,1bc84 <__d2b+0xc4>
   1bc24:	00c10513          	add	a0,sp,12
   1bc28:	c24ff0ef          	jal	1b04c <__lo0bits>
   1bc2c:	00c12703          	lw	a4,12(sp)
   1bc30:	00100493          	li	s1,1
   1bc34:	00942823          	sw	s1,16(s0)
   1bc38:	00e42a23          	sw	a4,20(s0)
   1bc3c:	02050793          	add	a5,a0,32
   1bc40:	08090863          	beqz	s2,1bcd0 <__d2b+0x110>
   1bc44:	bcd90913          	add	s2,s2,-1075
   1bc48:	00f90933          	add	s2,s2,a5
   1bc4c:	03500493          	li	s1,53
   1bc50:	012a2023          	sw	s2,0(s4)
   1bc54:	40f48533          	sub	a0,s1,a5
   1bc58:	00a9a023          	sw	a0,0(s3)
   1bc5c:	02c12083          	lw	ra,44(sp)
   1bc60:	00040513          	mv	a0,s0
   1bc64:	02812403          	lw	s0,40(sp)
   1bc68:	02412483          	lw	s1,36(sp)
   1bc6c:	02012903          	lw	s2,32(sp)
   1bc70:	01c12983          	lw	s3,28(sp)
   1bc74:	01812a03          	lw	s4,24(sp)
   1bc78:	01412a83          	lw	s5,20(sp)
   1bc7c:	03010113          	add	sp,sp,48
   1bc80:	00008067          	ret
   1bc84:	00810513          	add	a0,sp,8
   1bc88:	01512423          	sw	s5,8(sp)
   1bc8c:	bc0ff0ef          	jal	1b04c <__lo0bits>
   1bc90:	00c12703          	lw	a4,12(sp)
   1bc94:	00050793          	mv	a5,a0
   1bc98:	04050e63          	beqz	a0,1bcf4 <__d2b+0x134>
   1bc9c:	00812603          	lw	a2,8(sp)
   1bca0:	02000693          	li	a3,32
   1bca4:	40a686b3          	sub	a3,a3,a0
   1bca8:	00d716b3          	sll	a3,a4,a3
   1bcac:	00a75733          	srl	a4,a4,a0
   1bcb0:	00c6e6b3          	or	a3,a3,a2
   1bcb4:	00e12623          	sw	a4,12(sp)
   1bcb8:	00e034b3          	snez	s1,a4
   1bcbc:	00148493          	add	s1,s1,1
   1bcc0:	00d42a23          	sw	a3,20(s0)
   1bcc4:	00e42c23          	sw	a4,24(s0)
   1bcc8:	00942823          	sw	s1,16(s0)
   1bccc:	f6091ce3          	bnez	s2,1bc44 <__d2b+0x84>
   1bcd0:	00249713          	sll	a4,s1,0x2
   1bcd4:	00e40733          	add	a4,s0,a4
   1bcd8:	01072503          	lw	a0,16(a4)
   1bcdc:	bce78793          	add	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fedbcbe>
   1bce0:	00fa2023          	sw	a5,0(s4)
   1bce4:	af0ff0ef          	jal	1afd4 <__hi0bits>
   1bce8:	00549493          	sll	s1,s1,0x5
   1bcec:	40a48533          	sub	a0,s1,a0
   1bcf0:	f69ff06f          	j	1bc58 <__d2b+0x98>
   1bcf4:	00812683          	lw	a3,8(sp)
   1bcf8:	fc1ff06f          	j	1bcb8 <__d2b+0xf8>
   1bcfc:	00006697          	auipc	a3,0x6
   1bd00:	fc068693          	add	a3,a3,-64 # 21cbc <__clzsi2+0x248>
   1bd04:	00000613          	li	a2,0
   1bd08:	30f00593          	li	a1,783
   1bd0c:	00006517          	auipc	a0,0x6
   1bd10:	04450513          	add	a0,a0,68 # 21d50 <__clzsi2+0x2dc>
   1bd14:	730010ef          	jal	1d444 <__assert_func>

0001bd18 <__ratio>:
   1bd18:	fd010113          	add	sp,sp,-48
   1bd1c:	03212023          	sw	s2,32(sp)
   1bd20:	00058913          	mv	s2,a1
   1bd24:	00810593          	add	a1,sp,8
   1bd28:	02112623          	sw	ra,44(sp)
   1bd2c:	02812423          	sw	s0,40(sp)
   1bd30:	02912223          	sw	s1,36(sp)
   1bd34:	01312e23          	sw	s3,28(sp)
   1bd38:	00050993          	mv	s3,a0
   1bd3c:	d69ff0ef          	jal	1baa4 <__b2d>
   1bd40:	00050493          	mv	s1,a0
   1bd44:	00058413          	mv	s0,a1
   1bd48:	00090513          	mv	a0,s2
   1bd4c:	00c10593          	add	a1,sp,12
   1bd50:	d55ff0ef          	jal	1baa4 <__b2d>
   1bd54:	01092703          	lw	a4,16(s2)
   1bd58:	0109a783          	lw	a5,16(s3)
   1bd5c:	00c12683          	lw	a3,12(sp)
   1bd60:	40e787b3          	sub	a5,a5,a4
   1bd64:	00812703          	lw	a4,8(sp)
   1bd68:	00579793          	sll	a5,a5,0x5
   1bd6c:	40d70733          	sub	a4,a4,a3
   1bd70:	00e787b3          	add	a5,a5,a4
   1bd74:	00050713          	mv	a4,a0
   1bd78:	02f05e63          	blez	a5,1bdb4 <__ratio+0x9c>
   1bd7c:	01479793          	sll	a5,a5,0x14
   1bd80:	00878433          	add	s0,a5,s0
   1bd84:	00058693          	mv	a3,a1
   1bd88:	00048513          	mv	a0,s1
   1bd8c:	00040593          	mv	a1,s0
   1bd90:	00070613          	mv	a2,a4
   1bd94:	201030ef          	jal	1f794 <__divdf3>
   1bd98:	02c12083          	lw	ra,44(sp)
   1bd9c:	02812403          	lw	s0,40(sp)
   1bda0:	02412483          	lw	s1,36(sp)
   1bda4:	02012903          	lw	s2,32(sp)
   1bda8:	01c12983          	lw	s3,28(sp)
   1bdac:	03010113          	add	sp,sp,48
   1bdb0:	00008067          	ret
   1bdb4:	01479793          	sll	a5,a5,0x14
   1bdb8:	40f585b3          	sub	a1,a1,a5
   1bdbc:	fc9ff06f          	j	1bd84 <__ratio+0x6c>

0001bdc0 <_mprec_log10>:
   1bdc0:	ff010113          	add	sp,sp,-16
   1bdc4:	01212023          	sw	s2,0(sp)
   1bdc8:	00112623          	sw	ra,12(sp)
   1bdcc:	01700793          	li	a5,23
   1bdd0:	00050913          	mv	s2,a0
   1bdd4:	06a7d263          	bge	a5,a0,1be38 <_mprec_log10+0x78>
   1bdd8:	00008717          	auipc	a4,0x8
   1bddc:	b0870713          	add	a4,a4,-1272 # 238e0 <__SDATA_BEGIN__+0x48>
   1bde0:	00072783          	lw	a5,0(a4)
   1bde4:	00472583          	lw	a1,4(a4)
   1bde8:	00008717          	auipc	a4,0x8
   1bdec:	b0070713          	add	a4,a4,-1280 # 238e8 <__SDATA_BEGIN__+0x50>
   1bdf0:	00812423          	sw	s0,8(sp)
   1bdf4:	00912223          	sw	s1,4(sp)
   1bdf8:	00072403          	lw	s0,0(a4)
   1bdfc:	00472483          	lw	s1,4(a4)
   1be00:	00078513          	mv	a0,a5
   1be04:	00040613          	mv	a2,s0
   1be08:	00048693          	mv	a3,s1
   1be0c:	4c8040ef          	jal	202d4 <__muldf3>
   1be10:	fff90913          	add	s2,s2,-1
   1be14:	00050793          	mv	a5,a0
   1be18:	fe0914e3          	bnez	s2,1be00 <_mprec_log10+0x40>
   1be1c:	00812403          	lw	s0,8(sp)
   1be20:	00c12083          	lw	ra,12(sp)
   1be24:	00412483          	lw	s1,4(sp)
   1be28:	00012903          	lw	s2,0(sp)
   1be2c:	00078513          	mv	a0,a5
   1be30:	01010113          	add	sp,sp,16
   1be34:	00008067          	ret
   1be38:	00351913          	sll	s2,a0,0x3
   1be3c:	00006717          	auipc	a4,0x6
   1be40:	7a470713          	add	a4,a4,1956 # 225e0 <__mprec_tens>
   1be44:	01270733          	add	a4,a4,s2
   1be48:	00072783          	lw	a5,0(a4)
   1be4c:	00c12083          	lw	ra,12(sp)
   1be50:	00472583          	lw	a1,4(a4)
   1be54:	00012903          	lw	s2,0(sp)
   1be58:	00078513          	mv	a0,a5
   1be5c:	01010113          	add	sp,sp,16
   1be60:	00008067          	ret

0001be64 <__copybits>:
   1be64:	01062683          	lw	a3,16(a2)
   1be68:	fff58593          	add	a1,a1,-1
   1be6c:	4055d593          	sra	a1,a1,0x5
   1be70:	00158593          	add	a1,a1,1
   1be74:	01460793          	add	a5,a2,20
   1be78:	00269693          	sll	a3,a3,0x2
   1be7c:	00259593          	sll	a1,a1,0x2
   1be80:	00d786b3          	add	a3,a5,a3
   1be84:	00b505b3          	add	a1,a0,a1
   1be88:	02d7f863          	bgeu	a5,a3,1beb8 <__copybits+0x54>
   1be8c:	00050713          	mv	a4,a0
   1be90:	0007a803          	lw	a6,0(a5)
   1be94:	00478793          	add	a5,a5,4
   1be98:	00470713          	add	a4,a4,4
   1be9c:	ff072e23          	sw	a6,-4(a4)
   1bea0:	fed7e8e3          	bltu	a5,a3,1be90 <__copybits+0x2c>
   1bea4:	40c687b3          	sub	a5,a3,a2
   1bea8:	feb78793          	add	a5,a5,-21
   1beac:	ffc7f793          	and	a5,a5,-4
   1beb0:	00478793          	add	a5,a5,4
   1beb4:	00f50533          	add	a0,a0,a5
   1beb8:	00b57863          	bgeu	a0,a1,1bec8 <__copybits+0x64>
   1bebc:	00450513          	add	a0,a0,4
   1bec0:	fe052e23          	sw	zero,-4(a0)
   1bec4:	feb56ce3          	bltu	a0,a1,1bebc <__copybits+0x58>
   1bec8:	00008067          	ret

0001becc <__any_on>:
   1becc:	01052703          	lw	a4,16(a0)
   1bed0:	4055d613          	sra	a2,a1,0x5
   1bed4:	01450693          	add	a3,a0,20
   1bed8:	02c75263          	bge	a4,a2,1befc <__any_on+0x30>
   1bedc:	00271713          	sll	a4,a4,0x2
   1bee0:	00e687b3          	add	a5,a3,a4
   1bee4:	04f6f263          	bgeu	a3,a5,1bf28 <__any_on+0x5c>
   1bee8:	ffc7a703          	lw	a4,-4(a5)
   1beec:	ffc78793          	add	a5,a5,-4
   1bef0:	fe070ae3          	beqz	a4,1bee4 <__any_on+0x18>
   1bef4:	00100513          	li	a0,1
   1bef8:	00008067          	ret
   1befc:	00261793          	sll	a5,a2,0x2
   1bf00:	00f687b3          	add	a5,a3,a5
   1bf04:	fee650e3          	bge	a2,a4,1bee4 <__any_on+0x18>
   1bf08:	01f5f593          	and	a1,a1,31
   1bf0c:	fc058ce3          	beqz	a1,1bee4 <__any_on+0x18>
   1bf10:	0007a603          	lw	a2,0(a5)
   1bf14:	00100513          	li	a0,1
   1bf18:	00b65733          	srl	a4,a2,a1
   1bf1c:	00b71733          	sll	a4,a4,a1
   1bf20:	fce602e3          	beq	a2,a4,1bee4 <__any_on+0x18>
   1bf24:	00008067          	ret
   1bf28:	00000513          	li	a0,0
   1bf2c:	00008067          	ret

0001bf30 <_realloc_r>:
   1bf30:	fd010113          	add	sp,sp,-48
   1bf34:	02912223          	sw	s1,36(sp)
   1bf38:	02112623          	sw	ra,44(sp)
   1bf3c:	00060493          	mv	s1,a2
   1bf40:	1e058863          	beqz	a1,1c130 <_realloc_r+0x200>
   1bf44:	02812423          	sw	s0,40(sp)
   1bf48:	03212023          	sw	s2,32(sp)
   1bf4c:	00058413          	mv	s0,a1
   1bf50:	01312e23          	sw	s3,28(sp)
   1bf54:	01512a23          	sw	s5,20(sp)
   1bf58:	01412c23          	sw	s4,24(sp)
   1bf5c:	00050913          	mv	s2,a0
   1bf60:	e29f50ef          	jal	11d88 <__malloc_lock>
   1bf64:	ffc42703          	lw	a4,-4(s0)
   1bf68:	00b48793          	add	a5,s1,11
   1bf6c:	01600693          	li	a3,22
   1bf70:	ff840a93          	add	s5,s0,-8
   1bf74:	ffc77993          	and	s3,a4,-4
   1bf78:	10f6f263          	bgeu	a3,a5,1c07c <_realloc_r+0x14c>
   1bf7c:	ff87fa13          	and	s4,a5,-8
   1bf80:	1007c263          	bltz	a5,1c084 <_realloc_r+0x154>
   1bf84:	109a6063          	bltu	s4,s1,1c084 <_realloc_r+0x154>
   1bf88:	1349d263          	bge	s3,s4,1c0ac <_realloc_r+0x17c>
   1bf8c:	01812423          	sw	s8,8(sp)
   1bf90:	00007c17          	auipc	s8,0x7
   1bf94:	370c0c13          	add	s8,s8,880 # 23300 <__malloc_av_>
   1bf98:	008c2603          	lw	a2,8(s8)
   1bf9c:	013a86b3          	add	a3,s5,s3
   1bfa0:	0046a783          	lw	a5,4(a3)
   1bfa4:	1cd60863          	beq	a2,a3,1c174 <_realloc_r+0x244>
   1bfa8:	ffe7f613          	and	a2,a5,-2
   1bfac:	00c68633          	add	a2,a3,a2
   1bfb0:	00462603          	lw	a2,4(a2)
   1bfb4:	00167613          	and	a2,a2,1
   1bfb8:	14061a63          	bnez	a2,1c10c <_realloc_r+0x1dc>
   1bfbc:	ffc7f793          	and	a5,a5,-4
   1bfc0:	00f98633          	add	a2,s3,a5
   1bfc4:	0d465863          	bge	a2,s4,1c094 <_realloc_r+0x164>
   1bfc8:	00177713          	and	a4,a4,1
   1bfcc:	02071c63          	bnez	a4,1c004 <_realloc_r+0xd4>
   1bfd0:	01712623          	sw	s7,12(sp)
   1bfd4:	ff842b83          	lw	s7,-8(s0)
   1bfd8:	01612823          	sw	s6,16(sp)
   1bfdc:	417a8bb3          	sub	s7,s5,s7
   1bfe0:	004ba703          	lw	a4,4(s7)
   1bfe4:	ffc77713          	and	a4,a4,-4
   1bfe8:	00e787b3          	add	a5,a5,a4
   1bfec:	01378b33          	add	s6,a5,s3
   1bff0:	334b5c63          	bge	s6,s4,1c328 <_realloc_r+0x3f8>
   1bff4:	00e98b33          	add	s6,s3,a4
   1bff8:	294b5863          	bge	s6,s4,1c288 <_realloc_r+0x358>
   1bffc:	01012b03          	lw	s6,16(sp)
   1c000:	00c12b83          	lw	s7,12(sp)
   1c004:	00048593          	mv	a1,s1
   1c008:	00090513          	mv	a0,s2
   1c00c:	db4f50ef          	jal	115c0 <_malloc_r>
   1c010:	00050493          	mv	s1,a0
   1c014:	40050863          	beqz	a0,1c424 <_realloc_r+0x4f4>
   1c018:	ffc42783          	lw	a5,-4(s0)
   1c01c:	ff850713          	add	a4,a0,-8
   1c020:	ffe7f793          	and	a5,a5,-2
   1c024:	00fa87b3          	add	a5,s5,a5
   1c028:	24e78663          	beq	a5,a4,1c274 <_realloc_r+0x344>
   1c02c:	ffc98613          	add	a2,s3,-4
   1c030:	02400793          	li	a5,36
   1c034:	2ec7e463          	bltu	a5,a2,1c31c <_realloc_r+0x3ec>
   1c038:	01300713          	li	a4,19
   1c03c:	20c76a63          	bltu	a4,a2,1c250 <_realloc_r+0x320>
   1c040:	00050793          	mv	a5,a0
   1c044:	00040713          	mv	a4,s0
   1c048:	00072683          	lw	a3,0(a4)
   1c04c:	00d7a023          	sw	a3,0(a5)
   1c050:	00472683          	lw	a3,4(a4)
   1c054:	00d7a223          	sw	a3,4(a5)
   1c058:	00872703          	lw	a4,8(a4)
   1c05c:	00e7a423          	sw	a4,8(a5)
   1c060:	00040593          	mv	a1,s0
   1c064:	00090513          	mv	a0,s2
   1c068:	a54f50ef          	jal	112bc <_free_r>
   1c06c:	00090513          	mv	a0,s2
   1c070:	d21f50ef          	jal	11d90 <__malloc_unlock>
   1c074:	00812c03          	lw	s8,8(sp)
   1c078:	06c0006f          	j	1c0e4 <_realloc_r+0x1b4>
   1c07c:	01000a13          	li	s4,16
   1c080:	f09a74e3          	bgeu	s4,s1,1bf88 <_realloc_r+0x58>
   1c084:	00c00793          	li	a5,12
   1c088:	00f92023          	sw	a5,0(s2)
   1c08c:	00000493          	li	s1,0
   1c090:	0540006f          	j	1c0e4 <_realloc_r+0x1b4>
   1c094:	00c6a783          	lw	a5,12(a3)
   1c098:	0086a703          	lw	a4,8(a3)
   1c09c:	00812c03          	lw	s8,8(sp)
   1c0a0:	00060993          	mv	s3,a2
   1c0a4:	00f72623          	sw	a5,12(a4)
   1c0a8:	00e7a423          	sw	a4,8(a5)
   1c0ac:	004aa783          	lw	a5,4(s5)
   1c0b0:	414986b3          	sub	a3,s3,s4
   1c0b4:	00f00613          	li	a2,15
   1c0b8:	0017f793          	and	a5,a5,1
   1c0bc:	013a8733          	add	a4,s5,s3
   1c0c0:	08d66263          	bltu	a2,a3,1c144 <_realloc_r+0x214>
   1c0c4:	0137e7b3          	or	a5,a5,s3
   1c0c8:	00faa223          	sw	a5,4(s5)
   1c0cc:	00472783          	lw	a5,4(a4)
   1c0d0:	0017e793          	or	a5,a5,1
   1c0d4:	00f72223          	sw	a5,4(a4)
   1c0d8:	00090513          	mv	a0,s2
   1c0dc:	cb5f50ef          	jal	11d90 <__malloc_unlock>
   1c0e0:	00040493          	mv	s1,s0
   1c0e4:	02812403          	lw	s0,40(sp)
   1c0e8:	02c12083          	lw	ra,44(sp)
   1c0ec:	02012903          	lw	s2,32(sp)
   1c0f0:	01c12983          	lw	s3,28(sp)
   1c0f4:	01812a03          	lw	s4,24(sp)
   1c0f8:	01412a83          	lw	s5,20(sp)
   1c0fc:	00048513          	mv	a0,s1
   1c100:	02412483          	lw	s1,36(sp)
   1c104:	03010113          	add	sp,sp,48
   1c108:	00008067          	ret
   1c10c:	00177713          	and	a4,a4,1
   1c110:	ee071ae3          	bnez	a4,1c004 <_realloc_r+0xd4>
   1c114:	01712623          	sw	s7,12(sp)
   1c118:	ff842b83          	lw	s7,-8(s0)
   1c11c:	01612823          	sw	s6,16(sp)
   1c120:	417a8bb3          	sub	s7,s5,s7
   1c124:	004ba703          	lw	a4,4(s7)
   1c128:	ffc77713          	and	a4,a4,-4
   1c12c:	ec9ff06f          	j	1bff4 <_realloc_r+0xc4>
   1c130:	02c12083          	lw	ra,44(sp)
   1c134:	02412483          	lw	s1,36(sp)
   1c138:	00060593          	mv	a1,a2
   1c13c:	03010113          	add	sp,sp,48
   1c140:	c80f506f          	j	115c0 <_malloc_r>
   1c144:	0147e7b3          	or	a5,a5,s4
   1c148:	00faa223          	sw	a5,4(s5)
   1c14c:	014a85b3          	add	a1,s5,s4
   1c150:	0016e693          	or	a3,a3,1
   1c154:	00d5a223          	sw	a3,4(a1)
   1c158:	00472783          	lw	a5,4(a4)
   1c15c:	00858593          	add	a1,a1,8
   1c160:	00090513          	mv	a0,s2
   1c164:	0017e793          	or	a5,a5,1
   1c168:	00f72223          	sw	a5,4(a4)
   1c16c:	950f50ef          	jal	112bc <_free_r>
   1c170:	f69ff06f          	j	1c0d8 <_realloc_r+0x1a8>
   1c174:	ffc7f793          	and	a5,a5,-4
   1c178:	013786b3          	add	a3,a5,s3
   1c17c:	010a0613          	add	a2,s4,16
   1c180:	26c6d063          	bge	a3,a2,1c3e0 <_realloc_r+0x4b0>
   1c184:	00177713          	and	a4,a4,1
   1c188:	e6071ee3          	bnez	a4,1c004 <_realloc_r+0xd4>
   1c18c:	01712623          	sw	s7,12(sp)
   1c190:	ff842b83          	lw	s7,-8(s0)
   1c194:	01612823          	sw	s6,16(sp)
   1c198:	417a8bb3          	sub	s7,s5,s7
   1c19c:	004ba703          	lw	a4,4(s7)
   1c1a0:	ffc77713          	and	a4,a4,-4
   1c1a4:	00e787b3          	add	a5,a5,a4
   1c1a8:	01378b33          	add	s6,a5,s3
   1c1ac:	e4cb44e3          	blt	s6,a2,1bff4 <_realloc_r+0xc4>
   1c1b0:	00cba783          	lw	a5,12(s7)
   1c1b4:	008ba703          	lw	a4,8(s7)
   1c1b8:	ffc98613          	add	a2,s3,-4
   1c1bc:	02400693          	li	a3,36
   1c1c0:	00f72623          	sw	a5,12(a4)
   1c1c4:	00e7a423          	sw	a4,8(a5)
   1c1c8:	008b8493          	add	s1,s7,8
   1c1cc:	28c6e463          	bltu	a3,a2,1c454 <_realloc_r+0x524>
   1c1d0:	01300713          	li	a4,19
   1c1d4:	00048793          	mv	a5,s1
   1c1d8:	02c77263          	bgeu	a4,a2,1c1fc <_realloc_r+0x2cc>
   1c1dc:	00042703          	lw	a4,0(s0)
   1c1e0:	01b00793          	li	a5,27
   1c1e4:	00eba423          	sw	a4,8(s7)
   1c1e8:	00442703          	lw	a4,4(s0)
   1c1ec:	00eba623          	sw	a4,12(s7)
   1c1f0:	26c7ea63          	bltu	a5,a2,1c464 <_realloc_r+0x534>
   1c1f4:	00840413          	add	s0,s0,8
   1c1f8:	010b8793          	add	a5,s7,16
   1c1fc:	00042703          	lw	a4,0(s0)
   1c200:	00e7a023          	sw	a4,0(a5)
   1c204:	00442703          	lw	a4,4(s0)
   1c208:	00e7a223          	sw	a4,4(a5)
   1c20c:	00842703          	lw	a4,8(s0)
   1c210:	00e7a423          	sw	a4,8(a5)
   1c214:	014b8733          	add	a4,s7,s4
   1c218:	414b07b3          	sub	a5,s6,s4
   1c21c:	00ec2423          	sw	a4,8(s8)
   1c220:	0017e793          	or	a5,a5,1
   1c224:	00f72223          	sw	a5,4(a4)
   1c228:	004ba783          	lw	a5,4(s7)
   1c22c:	00090513          	mv	a0,s2
   1c230:	0017f793          	and	a5,a5,1
   1c234:	0147e7b3          	or	a5,a5,s4
   1c238:	00fba223          	sw	a5,4(s7)
   1c23c:	b55f50ef          	jal	11d90 <__malloc_unlock>
   1c240:	01012b03          	lw	s6,16(sp)
   1c244:	00c12b83          	lw	s7,12(sp)
   1c248:	00812c03          	lw	s8,8(sp)
   1c24c:	e99ff06f          	j	1c0e4 <_realloc_r+0x1b4>
   1c250:	00042683          	lw	a3,0(s0)
   1c254:	01b00713          	li	a4,27
   1c258:	00d52023          	sw	a3,0(a0)
   1c25c:	00442683          	lw	a3,4(s0)
   1c260:	00d52223          	sw	a3,4(a0)
   1c264:	14c76e63          	bltu	a4,a2,1c3c0 <_realloc_r+0x490>
   1c268:	00840713          	add	a4,s0,8
   1c26c:	00850793          	add	a5,a0,8
   1c270:	dd9ff06f          	j	1c048 <_realloc_r+0x118>
   1c274:	ffc52783          	lw	a5,-4(a0)
   1c278:	00812c03          	lw	s8,8(sp)
   1c27c:	ffc7f793          	and	a5,a5,-4
   1c280:	00f989b3          	add	s3,s3,a5
   1c284:	e29ff06f          	j	1c0ac <_realloc_r+0x17c>
   1c288:	00cba783          	lw	a5,12(s7)
   1c28c:	008ba703          	lw	a4,8(s7)
   1c290:	ffc98613          	add	a2,s3,-4
   1c294:	02400693          	li	a3,36
   1c298:	00f72623          	sw	a5,12(a4)
   1c29c:	00e7a423          	sw	a4,8(a5)
   1c2a0:	008b8493          	add	s1,s7,8
   1c2a4:	10c6e663          	bltu	a3,a2,1c3b0 <_realloc_r+0x480>
   1c2a8:	01300713          	li	a4,19
   1c2ac:	00048793          	mv	a5,s1
   1c2b0:	02c77c63          	bgeu	a4,a2,1c2e8 <_realloc_r+0x3b8>
   1c2b4:	00042703          	lw	a4,0(s0)
   1c2b8:	01b00793          	li	a5,27
   1c2bc:	00eba423          	sw	a4,8(s7)
   1c2c0:	00442703          	lw	a4,4(s0)
   1c2c4:	00eba623          	sw	a4,12(s7)
   1c2c8:	14c7f863          	bgeu	a5,a2,1c418 <_realloc_r+0x4e8>
   1c2cc:	00842783          	lw	a5,8(s0)
   1c2d0:	00fba823          	sw	a5,16(s7)
   1c2d4:	00c42783          	lw	a5,12(s0)
   1c2d8:	00fbaa23          	sw	a5,20(s7)
   1c2dc:	0ad60c63          	beq	a2,a3,1c394 <_realloc_r+0x464>
   1c2e0:	01040413          	add	s0,s0,16
   1c2e4:	018b8793          	add	a5,s7,24
   1c2e8:	00042703          	lw	a4,0(s0)
   1c2ec:	00e7a023          	sw	a4,0(a5)
   1c2f0:	00442703          	lw	a4,4(s0)
   1c2f4:	00e7a223          	sw	a4,4(a5)
   1c2f8:	00842703          	lw	a4,8(s0)
   1c2fc:	00e7a423          	sw	a4,8(a5)
   1c300:	000b0993          	mv	s3,s6
   1c304:	000b8a93          	mv	s5,s7
   1c308:	01012b03          	lw	s6,16(sp)
   1c30c:	00c12b83          	lw	s7,12(sp)
   1c310:	00812c03          	lw	s8,8(sp)
   1c314:	00048413          	mv	s0,s1
   1c318:	d95ff06f          	j	1c0ac <_realloc_r+0x17c>
   1c31c:	00040593          	mv	a1,s0
   1c320:	804fc0ef          	jal	18324 <memmove>
   1c324:	d3dff06f          	j	1c060 <_realloc_r+0x130>
   1c328:	00c6a783          	lw	a5,12(a3)
   1c32c:	0086a703          	lw	a4,8(a3)
   1c330:	ffc98613          	add	a2,s3,-4
   1c334:	02400693          	li	a3,36
   1c338:	00f72623          	sw	a5,12(a4)
   1c33c:	00e7a423          	sw	a4,8(a5)
   1c340:	008ba703          	lw	a4,8(s7)
   1c344:	00cba783          	lw	a5,12(s7)
   1c348:	008b8493          	add	s1,s7,8
   1c34c:	00f72623          	sw	a5,12(a4)
   1c350:	00e7a423          	sw	a4,8(a5)
   1c354:	04c6ee63          	bltu	a3,a2,1c3b0 <_realloc_r+0x480>
   1c358:	01300713          	li	a4,19
   1c35c:	00048793          	mv	a5,s1
   1c360:	f8c774e3          	bgeu	a4,a2,1c2e8 <_realloc_r+0x3b8>
   1c364:	00042703          	lw	a4,0(s0)
   1c368:	01b00793          	li	a5,27
   1c36c:	00eba423          	sw	a4,8(s7)
   1c370:	00442703          	lw	a4,4(s0)
   1c374:	00eba623          	sw	a4,12(s7)
   1c378:	0ac7f063          	bgeu	a5,a2,1c418 <_realloc_r+0x4e8>
   1c37c:	00842703          	lw	a4,8(s0)
   1c380:	02400793          	li	a5,36
   1c384:	00eba823          	sw	a4,16(s7)
   1c388:	00c42703          	lw	a4,12(s0)
   1c38c:	00ebaa23          	sw	a4,20(s7)
   1c390:	f4f618e3          	bne	a2,a5,1c2e0 <_realloc_r+0x3b0>
   1c394:	01042703          	lw	a4,16(s0)
   1c398:	020b8793          	add	a5,s7,32
   1c39c:	01840413          	add	s0,s0,24
   1c3a0:	00ebac23          	sw	a4,24(s7)
   1c3a4:	ffc42703          	lw	a4,-4(s0)
   1c3a8:	00ebae23          	sw	a4,28(s7)
   1c3ac:	f3dff06f          	j	1c2e8 <_realloc_r+0x3b8>
   1c3b0:	00040593          	mv	a1,s0
   1c3b4:	00048513          	mv	a0,s1
   1c3b8:	f6dfb0ef          	jal	18324 <memmove>
   1c3bc:	f45ff06f          	j	1c300 <_realloc_r+0x3d0>
   1c3c0:	00842703          	lw	a4,8(s0)
   1c3c4:	00e52423          	sw	a4,8(a0)
   1c3c8:	00c42703          	lw	a4,12(s0)
   1c3cc:	00e52623          	sw	a4,12(a0)
   1c3d0:	06f60463          	beq	a2,a5,1c438 <_realloc_r+0x508>
   1c3d4:	01040713          	add	a4,s0,16
   1c3d8:	01050793          	add	a5,a0,16
   1c3dc:	c6dff06f          	j	1c048 <_realloc_r+0x118>
   1c3e0:	014a8ab3          	add	s5,s5,s4
   1c3e4:	414687b3          	sub	a5,a3,s4
   1c3e8:	015c2423          	sw	s5,8(s8)
   1c3ec:	0017e793          	or	a5,a5,1
   1c3f0:	00faa223          	sw	a5,4(s5)
   1c3f4:	ffc42783          	lw	a5,-4(s0)
   1c3f8:	00090513          	mv	a0,s2
   1c3fc:	00040493          	mv	s1,s0
   1c400:	0017f793          	and	a5,a5,1
   1c404:	0147e7b3          	or	a5,a5,s4
   1c408:	fef42e23          	sw	a5,-4(s0)
   1c40c:	985f50ef          	jal	11d90 <__malloc_unlock>
   1c410:	00812c03          	lw	s8,8(sp)
   1c414:	cd1ff06f          	j	1c0e4 <_realloc_r+0x1b4>
   1c418:	00840413          	add	s0,s0,8
   1c41c:	010b8793          	add	a5,s7,16
   1c420:	ec9ff06f          	j	1c2e8 <_realloc_r+0x3b8>
   1c424:	00090513          	mv	a0,s2
   1c428:	969f50ef          	jal	11d90 <__malloc_unlock>
   1c42c:	00000493          	li	s1,0
   1c430:	00812c03          	lw	s8,8(sp)
   1c434:	cb1ff06f          	j	1c0e4 <_realloc_r+0x1b4>
   1c438:	01042683          	lw	a3,16(s0)
   1c43c:	01840713          	add	a4,s0,24
   1c440:	01850793          	add	a5,a0,24
   1c444:	00d52823          	sw	a3,16(a0)
   1c448:	01442683          	lw	a3,20(s0)
   1c44c:	00d52a23          	sw	a3,20(a0)
   1c450:	bf9ff06f          	j	1c048 <_realloc_r+0x118>
   1c454:	00040593          	mv	a1,s0
   1c458:	00048513          	mv	a0,s1
   1c45c:	ec9fb0ef          	jal	18324 <memmove>
   1c460:	db5ff06f          	j	1c214 <_realloc_r+0x2e4>
   1c464:	00842783          	lw	a5,8(s0)
   1c468:	00fba823          	sw	a5,16(s7)
   1c46c:	00c42783          	lw	a5,12(s0)
   1c470:	00fbaa23          	sw	a5,20(s7)
   1c474:	00d60863          	beq	a2,a3,1c484 <_realloc_r+0x554>
   1c478:	01040413          	add	s0,s0,16
   1c47c:	018b8793          	add	a5,s7,24
   1c480:	d7dff06f          	j	1c1fc <_realloc_r+0x2cc>
   1c484:	01042703          	lw	a4,16(s0)
   1c488:	020b8793          	add	a5,s7,32
   1c48c:	01840413          	add	s0,s0,24
   1c490:	00ebac23          	sw	a4,24(s7)
   1c494:	ffc42703          	lw	a4,-4(s0)
   1c498:	00ebae23          	sw	a4,28(s7)
   1c49c:	d61ff06f          	j	1c1fc <_realloc_r+0x2cc>

0001c4a0 <_strtol_l.isra.0>:
   1c4a0:	fb010113          	add	sp,sp,-80
   1c4a4:	04112623          	sw	ra,76(sp)
   1c4a8:	02400793          	li	a5,36
   1c4ac:	00a12423          	sw	a0,8(sp)
   1c4b0:	18d7ec63          	bltu	a5,a3,1c648 <_strtol_l.isra.0+0x1a8>
   1c4b4:	04812423          	sw	s0,72(sp)
   1c4b8:	05212023          	sw	s2,64(sp)
   1c4bc:	03312e23          	sw	s3,60(sp)
   1c4c0:	03412c23          	sw	s4,56(sp)
   1c4c4:	03912223          	sw	s9,36(sp)
   1c4c8:	00100793          	li	a5,1
   1c4cc:	00068c93          	mv	s9,a3
   1c4d0:	00058913          	mv	s2,a1
   1c4d4:	00060a13          	mv	s4,a2
   1c4d8:	00068993          	mv	s3,a3
   1c4dc:	00058413          	mv	s0,a1
   1c4e0:	00006717          	auipc	a4,0x6
   1c4e4:	1c970713          	add	a4,a4,457 # 226a9 <_ctype_+0x1>
   1c4e8:	14f68663          	beq	a3,a5,1c634 <_strtol_l.isra.0+0x194>
   1c4ec:	04912223          	sw	s1,68(sp)
   1c4f0:	03512a23          	sw	s5,52(sp)
   1c4f4:	03612823          	sw	s6,48(sp)
   1c4f8:	03712623          	sw	s7,44(sp)
   1c4fc:	03812423          	sw	s8,40(sp)
   1c500:	03a12023          	sw	s10,32(sp)
   1c504:	01b12e23          	sw	s11,28(sp)
   1c508:	00044483          	lbu	s1,0(s0)
   1c50c:	00040693          	mv	a3,s0
   1c510:	00140413          	add	s0,s0,1
   1c514:	009707b3          	add	a5,a4,s1
   1c518:	0007c783          	lbu	a5,0(a5)
   1c51c:	0087f793          	and	a5,a5,8
   1c520:	fe0794e3          	bnez	a5,1c508 <_strtol_l.isra.0+0x68>
   1c524:	02d00793          	li	a5,45
   1c528:	1af48263          	beq	s1,a5,1c6cc <_strtol_l.isra.0+0x22c>
   1c52c:	02b00793          	li	a5,43
   1c530:	12f48a63          	beq	s1,a5,1c664 <_strtol_l.isra.0+0x1c4>
   1c534:	80000b37          	lui	s6,0x80000
   1c538:	fffb0b13          	add	s6,s6,-1 # 7fffffff <__BSS_END__+0x7ffdc0ef>
   1c53c:	00012623          	sw	zero,12(sp)
   1c540:	120c9e63          	bnez	s9,1c67c <_strtol_l.isra.0+0x1dc>
   1c544:	03000793          	li	a5,48
   1c548:	1af48e63          	beq	s1,a5,1c704 <_strtol_l.isra.0+0x264>
   1c54c:	00a00993          	li	s3,10
   1c550:	00a00c93          	li	s9,10
   1c554:	00098593          	mv	a1,s3
   1c558:	000b0513          	mv	a0,s6
   1c55c:	4b4050ef          	jal	21a10 <__umodsi3>
   1c560:	00050b93          	mv	s7,a0
   1c564:	00098593          	mv	a1,s3
   1c568:	000b0513          	mv	a0,s6
   1c56c:	45c050ef          	jal	219c8 <__hidden___udivsi3>
   1c570:	00900d93          	li	s11,9
   1c574:	fd048793          	add	a5,s1,-48
   1c578:	00050d13          	mv	s10,a0
   1c57c:	00000713          	li	a4,0
   1c580:	00000513          	li	a0,0
   1c584:	01900a93          	li	s5,25
   1c588:	fff00c13          	li	s8,-1
   1c58c:	02fdee63          	bltu	s11,a5,1c5c8 <_strtol_l.isra.0+0x128>
   1c590:	00078493          	mv	s1,a5
   1c594:	0594d263          	bge	s1,s9,1c5d8 <_strtol_l.isra.0+0x138>
   1c598:	03870063          	beq	a4,s8,1c5b8 <_strtol_l.isra.0+0x118>
   1c59c:	fff00713          	li	a4,-1
   1c5a0:	00ad6c63          	bltu	s10,a0,1c5b8 <_strtol_l.isra.0+0x118>
   1c5a4:	12ad0063          	beq	s10,a0,1c6c4 <_strtol_l.isra.0+0x224>
   1c5a8:	00098593          	mv	a1,s3
   1c5ac:	3f0050ef          	jal	2199c <__mulsi3>
   1c5b0:	00a48533          	add	a0,s1,a0
   1c5b4:	00100713          	li	a4,1
   1c5b8:	00044483          	lbu	s1,0(s0)
   1c5bc:	00140413          	add	s0,s0,1
   1c5c0:	fd048793          	add	a5,s1,-48
   1c5c4:	fcfdf6e3          	bgeu	s11,a5,1c590 <_strtol_l.isra.0+0xf0>
   1c5c8:	fbf48793          	add	a5,s1,-65
   1c5cc:	0efae463          	bltu	s5,a5,1c6b4 <_strtol_l.isra.0+0x214>
   1c5d0:	fc948493          	add	s1,s1,-55
   1c5d4:	fd94c2e3          	blt	s1,s9,1c598 <_strtol_l.isra.0+0xf8>
   1c5d8:	fff00793          	li	a5,-1
   1c5dc:	10f70463          	beq	a4,a5,1c6e4 <_strtol_l.isra.0+0x244>
   1c5e0:	00c12783          	lw	a5,12(sp)
   1c5e4:	00078463          	beqz	a5,1c5ec <_strtol_l.isra.0+0x14c>
   1c5e8:	40a00533          	neg	a0,a0
   1c5ec:	000a0663          	beqz	s4,1c5f8 <_strtol_l.isra.0+0x158>
   1c5f0:	12071863          	bnez	a4,1c720 <_strtol_l.isra.0+0x280>
   1c5f4:	012a2023          	sw	s2,0(s4)
   1c5f8:	04812403          	lw	s0,72(sp)
   1c5fc:	04c12083          	lw	ra,76(sp)
   1c600:	04412483          	lw	s1,68(sp)
   1c604:	04012903          	lw	s2,64(sp)
   1c608:	03c12983          	lw	s3,60(sp)
   1c60c:	03812a03          	lw	s4,56(sp)
   1c610:	03412a83          	lw	s5,52(sp)
   1c614:	03012b03          	lw	s6,48(sp)
   1c618:	02c12b83          	lw	s7,44(sp)
   1c61c:	02812c03          	lw	s8,40(sp)
   1c620:	02412c83          	lw	s9,36(sp)
   1c624:	02012d03          	lw	s10,32(sp)
   1c628:	01c12d83          	lw	s11,28(sp)
   1c62c:	05010113          	add	sp,sp,80
   1c630:	00008067          	ret
   1c634:	04812403          	lw	s0,72(sp)
   1c638:	04012903          	lw	s2,64(sp)
   1c63c:	03c12983          	lw	s3,60(sp)
   1c640:	03812a03          	lw	s4,56(sp)
   1c644:	02412c83          	lw	s9,36(sp)
   1c648:	5f5000ef          	jal	1d43c <__errno>
   1c64c:	04c12083          	lw	ra,76(sp)
   1c650:	01600793          	li	a5,22
   1c654:	00f52023          	sw	a5,0(a0)
   1c658:	00000513          	li	a0,0
   1c65c:	05010113          	add	sp,sp,80
   1c660:	00008067          	ret
   1c664:	80000b37          	lui	s6,0x80000
   1c668:	00012623          	sw	zero,12(sp)
   1c66c:	00044483          	lbu	s1,0(s0)
   1c670:	fffb0b13          	add	s6,s6,-1 # 7fffffff <__BSS_END__+0x7ffdc0ef>
   1c674:	00268413          	add	s0,a3,2
   1c678:	ec0c86e3          	beqz	s9,1c544 <_strtol_l.isra.0+0xa4>
   1c67c:	01000793          	li	a5,16
   1c680:	ecfc9ae3          	bne	s9,a5,1c554 <_strtol_l.isra.0+0xb4>
   1c684:	03000793          	li	a5,48
   1c688:	01000993          	li	s3,16
   1c68c:	ecf494e3          	bne	s1,a5,1c554 <_strtol_l.isra.0+0xb4>
   1c690:	00044783          	lbu	a5,0(s0)
   1c694:	05800713          	li	a4,88
   1c698:	0df7f793          	and	a5,a5,223
   1c69c:	eae79ce3          	bne	a5,a4,1c554 <_strtol_l.isra.0+0xb4>
   1c6a0:	00144483          	lbu	s1,1(s0)
   1c6a4:	01000993          	li	s3,16
   1c6a8:	00240413          	add	s0,s0,2
   1c6ac:	01000c93          	li	s9,16
   1c6b0:	ea5ff06f          	j	1c554 <_strtol_l.isra.0+0xb4>
   1c6b4:	f9f48793          	add	a5,s1,-97
   1c6b8:	f2fae0e3          	bltu	s5,a5,1c5d8 <_strtol_l.isra.0+0x138>
   1c6bc:	fa948493          	add	s1,s1,-87
   1c6c0:	ed5ff06f          	j	1c594 <_strtol_l.isra.0+0xf4>
   1c6c4:	ee9bcae3          	blt	s7,s1,1c5b8 <_strtol_l.isra.0+0x118>
   1c6c8:	ee1ff06f          	j	1c5a8 <_strtol_l.isra.0+0x108>
   1c6cc:	00100793          	li	a5,1
   1c6d0:	00044483          	lbu	s1,0(s0)
   1c6d4:	80000b37          	lui	s6,0x80000
   1c6d8:	00268413          	add	s0,a3,2
   1c6dc:	00f12623          	sw	a5,12(sp)
   1c6e0:	e61ff06f          	j	1c540 <_strtol_l.isra.0+0xa0>
   1c6e4:	00812703          	lw	a4,8(sp)
   1c6e8:	02200793          	li	a5,34
   1c6ec:	000b0513          	mv	a0,s6
   1c6f0:	00f72023          	sw	a5,0(a4)
   1c6f4:	f00a02e3          	beqz	s4,1c5f8 <_strtol_l.isra.0+0x158>
   1c6f8:	fff40913          	add	s2,s0,-1
   1c6fc:	000b0513          	mv	a0,s6
   1c700:	ef5ff06f          	j	1c5f4 <_strtol_l.isra.0+0x154>
   1c704:	00044783          	lbu	a5,0(s0)
   1c708:	05800713          	li	a4,88
   1c70c:	00800993          	li	s3,8
   1c710:	0df7f793          	and	a5,a5,223
   1c714:	00800c93          	li	s9,8
   1c718:	e2e79ee3          	bne	a5,a4,1c554 <_strtol_l.isra.0+0xb4>
   1c71c:	f85ff06f          	j	1c6a0 <_strtol_l.isra.0+0x200>
   1c720:	00050b13          	mv	s6,a0
   1c724:	fd5ff06f          	j	1c6f8 <_strtol_l.isra.0+0x258>

0001c728 <_strtol_r>:
   1c728:	d79ff06f          	j	1c4a0 <_strtol_l.isra.0>

0001c72c <strtol_l>:
   1c72c:	00060693          	mv	a3,a2
   1c730:	00058613          	mv	a2,a1
   1c734:	00050593          	mv	a1,a0
   1c738:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   1c73c:	d65ff06f          	j	1c4a0 <_strtol_l.isra.0>

0001c740 <strtol>:
   1c740:	00060693          	mv	a3,a2
   1c744:	00058613          	mv	a2,a1
   1c748:	00050593          	mv	a1,a0
   1c74c:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   1c750:	d51ff06f          	j	1c4a0 <_strtol_l.isra.0>

0001c754 <_wctomb_r>:
   1c754:	e181a783          	lw	a5,-488(gp) # 237e8 <__global_locale+0xe0>
   1c758:	00078067          	jr	a5

0001c75c <__ascii_wctomb>:
   1c75c:	02058463          	beqz	a1,1c784 <__ascii_wctomb+0x28>
   1c760:	0ff00793          	li	a5,255
   1c764:	00c7e863          	bltu	a5,a2,1c774 <__ascii_wctomb+0x18>
   1c768:	00c58023          	sb	a2,0(a1)
   1c76c:	00100513          	li	a0,1
   1c770:	00008067          	ret
   1c774:	08a00793          	li	a5,138
   1c778:	00f52023          	sw	a5,0(a0)
   1c77c:	fff00513          	li	a0,-1
   1c780:	00008067          	ret
   1c784:	00000513          	li	a0,0
   1c788:	00008067          	ret

0001c78c <__utf8_wctomb>:
   1c78c:	0a058263          	beqz	a1,1c830 <__utf8_wctomb+0xa4>
   1c790:	07f00793          	li	a5,127
   1c794:	06c7f863          	bgeu	a5,a2,1c804 <__utf8_wctomb+0x78>
   1c798:	f8060793          	add	a5,a2,-128
   1c79c:	77f00713          	li	a4,1919
   1c7a0:	06f77863          	bgeu	a4,a5,1c810 <__utf8_wctomb+0x84>
   1c7a4:	0000f7b7          	lui	a5,0xf
   1c7a8:	80060713          	add	a4,a2,-2048
   1c7ac:	7ff78793          	add	a5,a5,2047 # f7ff <exit-0x895>
   1c7b0:	08e7f463          	bgeu	a5,a4,1c838 <__utf8_wctomb+0xac>
   1c7b4:	ffff07b7          	lui	a5,0xffff0
   1c7b8:	00f607b3          	add	a5,a2,a5
   1c7bc:	00100737          	lui	a4,0x100
   1c7c0:	0ae7f463          	bgeu	a5,a4,1c868 <__utf8_wctomb+0xdc>
   1c7c4:	00c65713          	srl	a4,a2,0xc
   1c7c8:	00665793          	srl	a5,a2,0x6
   1c7cc:	01265693          	srl	a3,a2,0x12
   1c7d0:	03f77713          	and	a4,a4,63
   1c7d4:	03f7f793          	and	a5,a5,63
   1c7d8:	03f67613          	and	a2,a2,63
   1c7dc:	ff06e693          	or	a3,a3,-16
   1c7e0:	f8076713          	or	a4,a4,-128
   1c7e4:	f807e793          	or	a5,a5,-128
   1c7e8:	f8066613          	or	a2,a2,-128
   1c7ec:	00d58023          	sb	a3,0(a1)
   1c7f0:	00e580a3          	sb	a4,1(a1)
   1c7f4:	00f58123          	sb	a5,2(a1)
   1c7f8:	00c581a3          	sb	a2,3(a1)
   1c7fc:	00400513          	li	a0,4
   1c800:	00008067          	ret
   1c804:	00c58023          	sb	a2,0(a1)
   1c808:	00100513          	li	a0,1
   1c80c:	00008067          	ret
   1c810:	00665793          	srl	a5,a2,0x6
   1c814:	03f67613          	and	a2,a2,63
   1c818:	fc07e793          	or	a5,a5,-64
   1c81c:	f8066613          	or	a2,a2,-128
   1c820:	00f58023          	sb	a5,0(a1)
   1c824:	00c580a3          	sb	a2,1(a1)
   1c828:	00200513          	li	a0,2
   1c82c:	00008067          	ret
   1c830:	00000513          	li	a0,0
   1c834:	00008067          	ret
   1c838:	00665793          	srl	a5,a2,0x6
   1c83c:	00c65713          	srl	a4,a2,0xc
   1c840:	03f7f793          	and	a5,a5,63
   1c844:	03f67613          	and	a2,a2,63
   1c848:	fe076713          	or	a4,a4,-32
   1c84c:	f807e793          	or	a5,a5,-128
   1c850:	f8066613          	or	a2,a2,-128
   1c854:	00e58023          	sb	a4,0(a1)
   1c858:	00f580a3          	sb	a5,1(a1)
   1c85c:	00c58123          	sb	a2,2(a1)
   1c860:	00300513          	li	a0,3
   1c864:	00008067          	ret
   1c868:	08a00793          	li	a5,138
   1c86c:	00f52023          	sw	a5,0(a0)
   1c870:	fff00513          	li	a0,-1
   1c874:	00008067          	ret

0001c878 <__sjis_wctomb>:
   1c878:	00865793          	srl	a5,a2,0x8
   1c87c:	0ff7f793          	zext.b	a5,a5
   1c880:	0ff67613          	zext.b	a2,a2
   1c884:	06058063          	beqz	a1,1c8e4 <__sjis_wctomb+0x6c>
   1c888:	04078863          	beqz	a5,1c8d8 <__sjis_wctomb+0x60>
   1c88c:	07f78713          	add	a4,a5,127 # ffff007f <__BSS_END__+0xfffcc16f>
   1c890:	0ff77713          	zext.b	a4,a4
   1c894:	01e00693          	li	a3,30
   1c898:	00e6fa63          	bgeu	a3,a4,1c8ac <__sjis_wctomb+0x34>
   1c89c:	02078713          	add	a4,a5,32
   1c8a0:	0ff77713          	zext.b	a4,a4
   1c8a4:	00f00693          	li	a3,15
   1c8a8:	04e6e263          	bltu	a3,a4,1c8ec <__sjis_wctomb+0x74>
   1c8ac:	fc060713          	add	a4,a2,-64
   1c8b0:	0ff77713          	zext.b	a4,a4
   1c8b4:	03e00693          	li	a3,62
   1c8b8:	00e6f863          	bgeu	a3,a4,1c8c8 <__sjis_wctomb+0x50>
   1c8bc:	08064713          	xor	a4,a2,128
   1c8c0:	07c00693          	li	a3,124
   1c8c4:	02e6e463          	bltu	a3,a4,1c8ec <__sjis_wctomb+0x74>
   1c8c8:	00f58023          	sb	a5,0(a1)
   1c8cc:	00c580a3          	sb	a2,1(a1)
   1c8d0:	00200513          	li	a0,2
   1c8d4:	00008067          	ret
   1c8d8:	00c58023          	sb	a2,0(a1)
   1c8dc:	00100513          	li	a0,1
   1c8e0:	00008067          	ret
   1c8e4:	00000513          	li	a0,0
   1c8e8:	00008067          	ret
   1c8ec:	08a00793          	li	a5,138
   1c8f0:	00f52023          	sw	a5,0(a0)
   1c8f4:	fff00513          	li	a0,-1
   1c8f8:	00008067          	ret

0001c8fc <__eucjp_wctomb>:
   1c8fc:	00865793          	srl	a5,a2,0x8
   1c900:	0ff7f793          	zext.b	a5,a5
   1c904:	0ff67613          	zext.b	a2,a2
   1c908:	06058c63          	beqz	a1,1c980 <__eucjp_wctomb+0x84>
   1c90c:	04078c63          	beqz	a5,1c964 <__eucjp_wctomb+0x68>
   1c910:	07278713          	add	a4,a5,114
   1c914:	0ff77713          	zext.b	a4,a4
   1c918:	00100693          	li	a3,1
   1c91c:	06e6f663          	bgeu	a3,a4,1c988 <__eucjp_wctomb+0x8c>
   1c920:	05f78713          	add	a4,a5,95
   1c924:	0ff77713          	zext.b	a4,a4
   1c928:	05d00693          	li	a3,93
   1c92c:	06e6e663          	bltu	a3,a4,1c998 <__eucjp_wctomb+0x9c>
   1c930:	05f60713          	add	a4,a2,95
   1c934:	0ff77713          	zext.b	a4,a4
   1c938:	02e6fc63          	bgeu	a3,a4,1c970 <__eucjp_wctomb+0x74>
   1c93c:	08066613          	or	a2,a2,128
   1c940:	05f60713          	add	a4,a2,95
   1c944:	0ff77713          	zext.b	a4,a4
   1c948:	04e6e863          	bltu	a3,a4,1c998 <__eucjp_wctomb+0x9c>
   1c94c:	f8f00713          	li	a4,-113
   1c950:	00e58023          	sb	a4,0(a1)
   1c954:	00f580a3          	sb	a5,1(a1)
   1c958:	00c58123          	sb	a2,2(a1)
   1c95c:	00300513          	li	a0,3
   1c960:	00008067          	ret
   1c964:	00c58023          	sb	a2,0(a1)
   1c968:	00100513          	li	a0,1
   1c96c:	00008067          	ret
   1c970:	00f58023          	sb	a5,0(a1)
   1c974:	00c580a3          	sb	a2,1(a1)
   1c978:	00200513          	li	a0,2
   1c97c:	00008067          	ret
   1c980:	00000513          	li	a0,0
   1c984:	00008067          	ret
   1c988:	05f60713          	add	a4,a2,95
   1c98c:	0ff77713          	zext.b	a4,a4
   1c990:	05d00693          	li	a3,93
   1c994:	fce6fee3          	bgeu	a3,a4,1c970 <__eucjp_wctomb+0x74>
   1c998:	08a00793          	li	a5,138
   1c99c:	00f52023          	sw	a5,0(a0)
   1c9a0:	fff00513          	li	a0,-1
   1c9a4:	00008067          	ret

0001c9a8 <__jis_wctomb>:
   1c9a8:	00865793          	srl	a5,a2,0x8
   1c9ac:	0ff7f793          	zext.b	a5,a5
   1c9b0:	0ff67613          	zext.b	a2,a2
   1c9b4:	08058e63          	beqz	a1,1ca50 <__jis_wctomb+0xa8>
   1c9b8:	06078063          	beqz	a5,1ca18 <__jis_wctomb+0x70>
   1c9bc:	fdf78713          	add	a4,a5,-33
   1c9c0:	0ff77713          	zext.b	a4,a4
   1c9c4:	05d00813          	li	a6,93
   1c9c8:	08e86863          	bltu	a6,a4,1ca58 <__jis_wctomb+0xb0>
   1c9cc:	fdf60713          	add	a4,a2,-33
   1c9d0:	0ff77713          	zext.b	a4,a4
   1c9d4:	08e86263          	bltu	a6,a4,1ca58 <__jis_wctomb+0xb0>
   1c9d8:	0006a703          	lw	a4,0(a3)
   1c9dc:	00200513          	li	a0,2
   1c9e0:	02071663          	bnez	a4,1ca0c <__jis_wctomb+0x64>
   1c9e4:	00100713          	li	a4,1
   1c9e8:	00e6a023          	sw	a4,0(a3)
   1c9ec:	01b00713          	li	a4,27
   1c9f0:	00e58023          	sb	a4,0(a1)
   1c9f4:	02400713          	li	a4,36
   1c9f8:	00e580a3          	sb	a4,1(a1)
   1c9fc:	04200713          	li	a4,66
   1ca00:	00e58123          	sb	a4,2(a1)
   1ca04:	00500513          	li	a0,5
   1ca08:	00358593          	add	a1,a1,3
   1ca0c:	00f58023          	sb	a5,0(a1)
   1ca10:	00c580a3          	sb	a2,1(a1)
   1ca14:	00008067          	ret
   1ca18:	0006a783          	lw	a5,0(a3)
   1ca1c:	00100513          	li	a0,1
   1ca20:	02078463          	beqz	a5,1ca48 <__jis_wctomb+0xa0>
   1ca24:	0006a023          	sw	zero,0(a3)
   1ca28:	01b00793          	li	a5,27
   1ca2c:	00f58023          	sb	a5,0(a1)
   1ca30:	02800793          	li	a5,40
   1ca34:	00f580a3          	sb	a5,1(a1)
   1ca38:	04200793          	li	a5,66
   1ca3c:	00f58123          	sb	a5,2(a1)
   1ca40:	00400513          	li	a0,4
   1ca44:	00358593          	add	a1,a1,3
   1ca48:	00c58023          	sb	a2,0(a1)
   1ca4c:	00008067          	ret
   1ca50:	00100513          	li	a0,1
   1ca54:	00008067          	ret
   1ca58:	08a00793          	li	a5,138
   1ca5c:	00f52023          	sw	a5,0(a0)
   1ca60:	fff00513          	li	a0,-1
   1ca64:	00008067          	ret

0001ca68 <_wcrtomb_r>:
   1ca68:	fe010113          	add	sp,sp,-32
   1ca6c:	00812c23          	sw	s0,24(sp)
   1ca70:	00912a23          	sw	s1,20(sp)
   1ca74:	00112e23          	sw	ra,28(sp)
   1ca78:	00050493          	mv	s1,a0
   1ca7c:	10450413          	add	s0,a0,260
   1ca80:	00068463          	beqz	a3,1ca88 <_wcrtomb_r+0x20>
   1ca84:	00068413          	mv	s0,a3
   1ca88:	e181a783          	lw	a5,-488(gp) # 237e8 <__global_locale+0xe0>
   1ca8c:	00040693          	mv	a3,s0
   1ca90:	02058463          	beqz	a1,1cab8 <_wcrtomb_r+0x50>
   1ca94:	00048513          	mv	a0,s1
   1ca98:	000780e7          	jalr	a5
   1ca9c:	fff00793          	li	a5,-1
   1caa0:	02f50863          	beq	a0,a5,1cad0 <_wcrtomb_r+0x68>
   1caa4:	01c12083          	lw	ra,28(sp)
   1caa8:	01812403          	lw	s0,24(sp)
   1caac:	01412483          	lw	s1,20(sp)
   1cab0:	02010113          	add	sp,sp,32
   1cab4:	00008067          	ret
   1cab8:	00000613          	li	a2,0
   1cabc:	00410593          	add	a1,sp,4
   1cac0:	00048513          	mv	a0,s1
   1cac4:	000780e7          	jalr	a5
   1cac8:	fff00793          	li	a5,-1
   1cacc:	fcf51ce3          	bne	a0,a5,1caa4 <_wcrtomb_r+0x3c>
   1cad0:	00042023          	sw	zero,0(s0)
   1cad4:	01c12083          	lw	ra,28(sp)
   1cad8:	01812403          	lw	s0,24(sp)
   1cadc:	08a00793          	li	a5,138
   1cae0:	00f4a023          	sw	a5,0(s1)
   1cae4:	01412483          	lw	s1,20(sp)
   1cae8:	02010113          	add	sp,sp,32
   1caec:	00008067          	ret

0001caf0 <wcrtomb>:
   1caf0:	fe010113          	add	sp,sp,-32
   1caf4:	00812c23          	sw	s0,24(sp)
   1caf8:	00912a23          	sw	s1,20(sp)
   1cafc:	00060413          	mv	s0,a2
   1cb00:	00112e23          	sw	ra,28(sp)
   1cb04:	00058613          	mv	a2,a1
   1cb08:	f341a483          	lw	s1,-204(gp) # 23904 <_impure_ptr>
   1cb0c:	02040c63          	beqz	s0,1cb44 <wcrtomb+0x54>
   1cb10:	e181a783          	lw	a5,-488(gp) # 237e8 <__global_locale+0xe0>
   1cb14:	00040693          	mv	a3,s0
   1cb18:	02050e63          	beqz	a0,1cb54 <wcrtomb+0x64>
   1cb1c:	00050593          	mv	a1,a0
   1cb20:	00048513          	mv	a0,s1
   1cb24:	000780e7          	jalr	a5
   1cb28:	fff00793          	li	a5,-1
   1cb2c:	04f50063          	beq	a0,a5,1cb6c <wcrtomb+0x7c>
   1cb30:	01c12083          	lw	ra,28(sp)
   1cb34:	01812403          	lw	s0,24(sp)
   1cb38:	01412483          	lw	s1,20(sp)
   1cb3c:	02010113          	add	sp,sp,32
   1cb40:	00008067          	ret
   1cb44:	10448413          	add	s0,s1,260
   1cb48:	e181a783          	lw	a5,-488(gp) # 237e8 <__global_locale+0xe0>
   1cb4c:	00040693          	mv	a3,s0
   1cb50:	fc0516e3          	bnez	a0,1cb1c <wcrtomb+0x2c>
   1cb54:	00000613          	li	a2,0
   1cb58:	00410593          	add	a1,sp,4
   1cb5c:	00048513          	mv	a0,s1
   1cb60:	000780e7          	jalr	a5
   1cb64:	fff00793          	li	a5,-1
   1cb68:	fcf514e3          	bne	a0,a5,1cb30 <wcrtomb+0x40>
   1cb6c:	00042023          	sw	zero,0(s0)
   1cb70:	01c12083          	lw	ra,28(sp)
   1cb74:	01812403          	lw	s0,24(sp)
   1cb78:	08a00793          	li	a5,138
   1cb7c:	00f4a023          	sw	a5,0(s1)
   1cb80:	01412483          	lw	s1,20(sp)
   1cb84:	02010113          	add	sp,sp,32
   1cb88:	00008067          	ret

0001cb8c <_wcsrtombs_r>:
   1cb8c:	00070793          	mv	a5,a4
   1cb90:	00068713          	mv	a4,a3
   1cb94:	fff00693          	li	a3,-1
   1cb98:	4a10006f          	j	1d838 <_wcsnrtombs_r>

0001cb9c <wcsrtombs>:
   1cb9c:	00060713          	mv	a4,a2
   1cba0:	00068793          	mv	a5,a3
   1cba4:	00058613          	mv	a2,a1
   1cba8:	fff00693          	li	a3,-1
   1cbac:	00050593          	mv	a1,a0
   1cbb0:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   1cbb4:	4850006f          	j	1d838 <_wcsnrtombs_r>

0001cbb8 <__set_ctype>:
   1cbb8:	00006797          	auipc	a5,0x6
   1cbbc:	af078793          	add	a5,a5,-1296 # 226a8 <_ctype_>
   1cbc0:	0ef52623          	sw	a5,236(a0)
   1cbc4:	00008067          	ret

0001cbc8 <__smakebuf_r>:
   1cbc8:	00c59783          	lh	a5,12(a1)
   1cbcc:	f8010113          	add	sp,sp,-128
   1cbd0:	06812c23          	sw	s0,120(sp)
   1cbd4:	06112e23          	sw	ra,124(sp)
   1cbd8:	0027f713          	and	a4,a5,2
   1cbdc:	00058413          	mv	s0,a1
   1cbe0:	02070463          	beqz	a4,1cc08 <__smakebuf_r+0x40>
   1cbe4:	04358793          	add	a5,a1,67
   1cbe8:	00f5a023          	sw	a5,0(a1)
   1cbec:	00f5a823          	sw	a5,16(a1)
   1cbf0:	00100793          	li	a5,1
   1cbf4:	00f5aa23          	sw	a5,20(a1)
   1cbf8:	07c12083          	lw	ra,124(sp)
   1cbfc:	07812403          	lw	s0,120(sp)
   1cc00:	08010113          	add	sp,sp,128
   1cc04:	00008067          	ret
   1cc08:	00e59583          	lh	a1,14(a1)
   1cc0c:	06912a23          	sw	s1,116(sp)
   1cc10:	07212823          	sw	s2,112(sp)
   1cc14:	07312623          	sw	s3,108(sp)
   1cc18:	07412423          	sw	s4,104(sp)
   1cc1c:	00050493          	mv	s1,a0
   1cc20:	0805c663          	bltz	a1,1ccac <__smakebuf_r+0xe4>
   1cc24:	00810613          	add	a2,sp,8
   1cc28:	76c000ef          	jal	1d394 <_fstat_r>
   1cc2c:	06054e63          	bltz	a0,1cca8 <__smakebuf_r+0xe0>
   1cc30:	00c12783          	lw	a5,12(sp)
   1cc34:	0000f937          	lui	s2,0xf
   1cc38:	000019b7          	lui	s3,0x1
   1cc3c:	00f97933          	and	s2,s2,a5
   1cc40:	ffffe7b7          	lui	a5,0xffffe
   1cc44:	00f90933          	add	s2,s2,a5
   1cc48:	00193913          	seqz	s2,s2
   1cc4c:	40000a13          	li	s4,1024
   1cc50:	80098993          	add	s3,s3,-2048 # 800 <exit-0xf894>
   1cc54:	000a0593          	mv	a1,s4
   1cc58:	00048513          	mv	a0,s1
   1cc5c:	965f40ef          	jal	115c0 <_malloc_r>
   1cc60:	00c41783          	lh	a5,12(s0)
   1cc64:	06050863          	beqz	a0,1ccd4 <__smakebuf_r+0x10c>
   1cc68:	0807e793          	or	a5,a5,128
   1cc6c:	00a42023          	sw	a0,0(s0)
   1cc70:	00a42823          	sw	a0,16(s0)
   1cc74:	00f41623          	sh	a5,12(s0)
   1cc78:	01442a23          	sw	s4,20(s0)
   1cc7c:	0a091063          	bnez	s2,1cd1c <__smakebuf_r+0x154>
   1cc80:	0137e7b3          	or	a5,a5,s3
   1cc84:	07c12083          	lw	ra,124(sp)
   1cc88:	00f41623          	sh	a5,12(s0)
   1cc8c:	07812403          	lw	s0,120(sp)
   1cc90:	07412483          	lw	s1,116(sp)
   1cc94:	07012903          	lw	s2,112(sp)
   1cc98:	06c12983          	lw	s3,108(sp)
   1cc9c:	06812a03          	lw	s4,104(sp)
   1cca0:	08010113          	add	sp,sp,128
   1cca4:	00008067          	ret
   1cca8:	00c41783          	lh	a5,12(s0)
   1ccac:	0807f793          	and	a5,a5,128
   1ccb0:	00000913          	li	s2,0
   1ccb4:	04078e63          	beqz	a5,1cd10 <__smakebuf_r+0x148>
   1ccb8:	04000a13          	li	s4,64
   1ccbc:	000a0593          	mv	a1,s4
   1ccc0:	00048513          	mv	a0,s1
   1ccc4:	8fdf40ef          	jal	115c0 <_malloc_r>
   1ccc8:	00c41783          	lh	a5,12(s0)
   1cccc:	00000993          	li	s3,0
   1ccd0:	f8051ce3          	bnez	a0,1cc68 <__smakebuf_r+0xa0>
   1ccd4:	2007f713          	and	a4,a5,512
   1ccd8:	04071e63          	bnez	a4,1cd34 <__smakebuf_r+0x16c>
   1ccdc:	ffc7f793          	and	a5,a5,-4
   1cce0:	0027e793          	or	a5,a5,2
   1cce4:	04340713          	add	a4,s0,67
   1cce8:	00f41623          	sh	a5,12(s0)
   1ccec:	00100793          	li	a5,1
   1ccf0:	07412483          	lw	s1,116(sp)
   1ccf4:	07012903          	lw	s2,112(sp)
   1ccf8:	06c12983          	lw	s3,108(sp)
   1ccfc:	06812a03          	lw	s4,104(sp)
   1cd00:	00e42023          	sw	a4,0(s0)
   1cd04:	00e42823          	sw	a4,16(s0)
   1cd08:	00f42a23          	sw	a5,20(s0)
   1cd0c:	eedff06f          	j	1cbf8 <__smakebuf_r+0x30>
   1cd10:	40000a13          	li	s4,1024
   1cd14:	00000993          	li	s3,0
   1cd18:	f3dff06f          	j	1cc54 <__smakebuf_r+0x8c>
   1cd1c:	00e41583          	lh	a1,14(s0)
   1cd20:	00048513          	mv	a0,s1
   1cd24:	6c8000ef          	jal	1d3ec <_isatty_r>
   1cd28:	02051063          	bnez	a0,1cd48 <__smakebuf_r+0x180>
   1cd2c:	00c41783          	lh	a5,12(s0)
   1cd30:	f51ff06f          	j	1cc80 <__smakebuf_r+0xb8>
   1cd34:	07412483          	lw	s1,116(sp)
   1cd38:	07012903          	lw	s2,112(sp)
   1cd3c:	06c12983          	lw	s3,108(sp)
   1cd40:	06812a03          	lw	s4,104(sp)
   1cd44:	eb5ff06f          	j	1cbf8 <__smakebuf_r+0x30>
   1cd48:	00c45783          	lhu	a5,12(s0)
   1cd4c:	ffc7f793          	and	a5,a5,-4
   1cd50:	0017e793          	or	a5,a5,1
   1cd54:	01079793          	sll	a5,a5,0x10
   1cd58:	4107d793          	sra	a5,a5,0x10
   1cd5c:	f25ff06f          	j	1cc80 <__smakebuf_r+0xb8>

0001cd60 <__swhatbuf_r>:
   1cd60:	f9010113          	add	sp,sp,-112
   1cd64:	06812423          	sw	s0,104(sp)
   1cd68:	00058413          	mv	s0,a1
   1cd6c:	00e59583          	lh	a1,14(a1)
   1cd70:	06912223          	sw	s1,100(sp)
   1cd74:	07212023          	sw	s2,96(sp)
   1cd78:	06112623          	sw	ra,108(sp)
   1cd7c:	00060493          	mv	s1,a2
   1cd80:	00068913          	mv	s2,a3
   1cd84:	0405ca63          	bltz	a1,1cdd8 <__swhatbuf_r+0x78>
   1cd88:	00810613          	add	a2,sp,8
   1cd8c:	608000ef          	jal	1d394 <_fstat_r>
   1cd90:	04054463          	bltz	a0,1cdd8 <__swhatbuf_r+0x78>
   1cd94:	00c12703          	lw	a4,12(sp)
   1cd98:	0000f7b7          	lui	a5,0xf
   1cd9c:	06c12083          	lw	ra,108(sp)
   1cda0:	00e7f7b3          	and	a5,a5,a4
   1cda4:	ffffe737          	lui	a4,0xffffe
   1cda8:	00e787b3          	add	a5,a5,a4
   1cdac:	06812403          	lw	s0,104(sp)
   1cdb0:	0017b793          	seqz	a5,a5
   1cdb4:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   1cdb8:	40000713          	li	a4,1024
   1cdbc:	00e4a023          	sw	a4,0(s1)
   1cdc0:	00001537          	lui	a0,0x1
   1cdc4:	06412483          	lw	s1,100(sp)
   1cdc8:	06012903          	lw	s2,96(sp)
   1cdcc:	80050513          	add	a0,a0,-2048 # 800 <exit-0xf894>
   1cdd0:	07010113          	add	sp,sp,112
   1cdd4:	00008067          	ret
   1cdd8:	00c45783          	lhu	a5,12(s0)
   1cddc:	0807f793          	and	a5,a5,128
   1cde0:	02078863          	beqz	a5,1ce10 <__swhatbuf_r+0xb0>
   1cde4:	06c12083          	lw	ra,108(sp)
   1cde8:	06812403          	lw	s0,104(sp)
   1cdec:	00000793          	li	a5,0
   1cdf0:	00f92023          	sw	a5,0(s2)
   1cdf4:	04000713          	li	a4,64
   1cdf8:	00e4a023          	sw	a4,0(s1)
   1cdfc:	06012903          	lw	s2,96(sp)
   1ce00:	06412483          	lw	s1,100(sp)
   1ce04:	00000513          	li	a0,0
   1ce08:	07010113          	add	sp,sp,112
   1ce0c:	00008067          	ret
   1ce10:	06c12083          	lw	ra,108(sp)
   1ce14:	06812403          	lw	s0,104(sp)
   1ce18:	00f92023          	sw	a5,0(s2)
   1ce1c:	40000713          	li	a4,1024
   1ce20:	00e4a023          	sw	a4,0(s1)
   1ce24:	06012903          	lw	s2,96(sp)
   1ce28:	06412483          	lw	s1,100(sp)
   1ce2c:	00000513          	li	a0,0
   1ce30:	07010113          	add	sp,sp,112
   1ce34:	00008067          	ret

0001ce38 <__swbuf_r>:
   1ce38:	fe010113          	add	sp,sp,-32
   1ce3c:	00812c23          	sw	s0,24(sp)
   1ce40:	00912a23          	sw	s1,20(sp)
   1ce44:	01212823          	sw	s2,16(sp)
   1ce48:	00112e23          	sw	ra,28(sp)
   1ce4c:	00050913          	mv	s2,a0
   1ce50:	00058493          	mv	s1,a1
   1ce54:	00060413          	mv	s0,a2
   1ce58:	00050663          	beqz	a0,1ce64 <__swbuf_r+0x2c>
   1ce5c:	03452783          	lw	a5,52(a0)
   1ce60:	16078063          	beqz	a5,1cfc0 <__swbuf_r+0x188>
   1ce64:	01842783          	lw	a5,24(s0)
   1ce68:	00c41703          	lh	a4,12(s0)
   1ce6c:	00f42423          	sw	a5,8(s0)
   1ce70:	00877793          	and	a5,a4,8
   1ce74:	08078063          	beqz	a5,1cef4 <__swbuf_r+0xbc>
   1ce78:	01042783          	lw	a5,16(s0)
   1ce7c:	06078c63          	beqz	a5,1cef4 <__swbuf_r+0xbc>
   1ce80:	01312623          	sw	s3,12(sp)
   1ce84:	01271693          	sll	a3,a4,0x12
   1ce88:	0ff4f993          	zext.b	s3,s1
   1ce8c:	0ff4f493          	zext.b	s1,s1
   1ce90:	0806d863          	bgez	a3,1cf20 <__swbuf_r+0xe8>
   1ce94:	00042703          	lw	a4,0(s0)
   1ce98:	01442683          	lw	a3,20(s0)
   1ce9c:	40f707b3          	sub	a5,a4,a5
   1cea0:	0ad7d863          	bge	a5,a3,1cf50 <__swbuf_r+0x118>
   1cea4:	00842683          	lw	a3,8(s0)
   1cea8:	00170613          	add	a2,a4,1 # ffffe001 <__BSS_END__+0xfffda0f1>
   1ceac:	00c42023          	sw	a2,0(s0)
   1ceb0:	fff68693          	add	a3,a3,-1
   1ceb4:	00d42423          	sw	a3,8(s0)
   1ceb8:	01370023          	sb	s3,0(a4)
   1cebc:	01442703          	lw	a4,20(s0)
   1cec0:	00178793          	add	a5,a5,1 # f001 <exit-0x1093>
   1cec4:	0cf70263          	beq	a4,a5,1cf88 <__swbuf_r+0x150>
   1cec8:	00c45783          	lhu	a5,12(s0)
   1cecc:	0017f793          	and	a5,a5,1
   1ced0:	0c079a63          	bnez	a5,1cfa4 <__swbuf_r+0x16c>
   1ced4:	00c12983          	lw	s3,12(sp)
   1ced8:	01c12083          	lw	ra,28(sp)
   1cedc:	01812403          	lw	s0,24(sp)
   1cee0:	01012903          	lw	s2,16(sp)
   1cee4:	00048513          	mv	a0,s1
   1cee8:	01412483          	lw	s1,20(sp)
   1ceec:	02010113          	add	sp,sp,32
   1cef0:	00008067          	ret
   1cef4:	00040593          	mv	a1,s0
   1cef8:	00090513          	mv	a0,s2
   1cefc:	8ccfa0ef          	jal	16fc8 <__swsetup_r>
   1cf00:	08051e63          	bnez	a0,1cf9c <__swbuf_r+0x164>
   1cf04:	00c41703          	lh	a4,12(s0)
   1cf08:	01312623          	sw	s3,12(sp)
   1cf0c:	01042783          	lw	a5,16(s0)
   1cf10:	01271693          	sll	a3,a4,0x12
   1cf14:	0ff4f993          	zext.b	s3,s1
   1cf18:	0ff4f493          	zext.b	s1,s1
   1cf1c:	f606cce3          	bltz	a3,1ce94 <__swbuf_r+0x5c>
   1cf20:	06442683          	lw	a3,100(s0)
   1cf24:	ffffe637          	lui	a2,0xffffe
   1cf28:	000025b7          	lui	a1,0x2
   1cf2c:	00b76733          	or	a4,a4,a1
   1cf30:	fff60613          	add	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffda0ef>
   1cf34:	00c6f6b3          	and	a3,a3,a2
   1cf38:	00e41623          	sh	a4,12(s0)
   1cf3c:	00042703          	lw	a4,0(s0)
   1cf40:	06d42223          	sw	a3,100(s0)
   1cf44:	01442683          	lw	a3,20(s0)
   1cf48:	40f707b3          	sub	a5,a4,a5
   1cf4c:	f4d7cce3          	blt	a5,a3,1cea4 <__swbuf_r+0x6c>
   1cf50:	00040593          	mv	a1,s0
   1cf54:	00090513          	mv	a0,s2
   1cf58:	9adf90ef          	jal	16904 <_fflush_r>
   1cf5c:	02051e63          	bnez	a0,1cf98 <__swbuf_r+0x160>
   1cf60:	00042703          	lw	a4,0(s0)
   1cf64:	00842683          	lw	a3,8(s0)
   1cf68:	00100793          	li	a5,1
   1cf6c:	00170613          	add	a2,a4,1
   1cf70:	fff68693          	add	a3,a3,-1
   1cf74:	00c42023          	sw	a2,0(s0)
   1cf78:	00d42423          	sw	a3,8(s0)
   1cf7c:	01370023          	sb	s3,0(a4)
   1cf80:	01442703          	lw	a4,20(s0)
   1cf84:	f4f712e3          	bne	a4,a5,1cec8 <__swbuf_r+0x90>
   1cf88:	00040593          	mv	a1,s0
   1cf8c:	00090513          	mv	a0,s2
   1cf90:	975f90ef          	jal	16904 <_fflush_r>
   1cf94:	f40500e3          	beqz	a0,1ced4 <__swbuf_r+0x9c>
   1cf98:	00c12983          	lw	s3,12(sp)
   1cf9c:	fff00493          	li	s1,-1
   1cfa0:	f39ff06f          	j	1ced8 <__swbuf_r+0xa0>
   1cfa4:	00a00793          	li	a5,10
   1cfa8:	f2f496e3          	bne	s1,a5,1ced4 <__swbuf_r+0x9c>
   1cfac:	00040593          	mv	a1,s0
   1cfb0:	00090513          	mv	a0,s2
   1cfb4:	951f90ef          	jal	16904 <_fflush_r>
   1cfb8:	f0050ee3          	beqz	a0,1ced4 <__swbuf_r+0x9c>
   1cfbc:	fddff06f          	j	1cf98 <__swbuf_r+0x160>
   1cfc0:	ff0f30ef          	jal	107b0 <__sinit>
   1cfc4:	ea1ff06f          	j	1ce64 <__swbuf_r+0x2c>

0001cfc8 <__swbuf>:
   1cfc8:	00058613          	mv	a2,a1
   1cfcc:	00050593          	mv	a1,a0
   1cfd0:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   1cfd4:	e65ff06f          	j	1ce38 <__swbuf_r>

0001cfd8 <strcasecmp>:
   1cfd8:	00050693          	mv	a3,a0
   1cfdc:	00005817          	auipc	a6,0x5
   1cfe0:	6cd80813          	add	a6,a6,1741 # 226a9 <_ctype_+0x1>
   1cfe4:	00100613          	li	a2,1
   1cfe8:	0006c783          	lbu	a5,0(a3)
   1cfec:	00158593          	add	a1,a1,1 # 2001 <exit-0xe093>
   1cff0:	00168693          	add	a3,a3,1
   1cff4:	00f80733          	add	a4,a6,a5
   1cff8:	00074703          	lbu	a4,0(a4)
   1cffc:	00377713          	and	a4,a4,3
   1d000:	00c71463          	bne	a4,a2,1d008 <strcasecmp+0x30>
   1d004:	02078793          	add	a5,a5,32
   1d008:	fff5c503          	lbu	a0,-1(a1)
   1d00c:	00a80733          	add	a4,a6,a0
   1d010:	00074703          	lbu	a4,0(a4)
   1d014:	40a788b3          	sub	a7,a5,a0
   1d018:	00377713          	and	a4,a4,3
   1d01c:	00c70863          	beq	a4,a2,1d02c <strcasecmp+0x54>
   1d020:	00a79e63          	bne	a5,a0,1d03c <strcasecmp+0x64>
   1d024:	fc0512e3          	bnez	a0,1cfe8 <strcasecmp+0x10>
   1d028:	00008067          	ret
   1d02c:	02050713          	add	a4,a0,32
   1d030:	40e78533          	sub	a0,a5,a4
   1d034:	fae78ae3          	beq	a5,a4,1cfe8 <strcasecmp+0x10>
   1d038:	00008067          	ret
   1d03c:	00088513          	mv	a0,a7
   1d040:	00008067          	ret

0001d044 <strcat>:
   1d044:	ff010113          	add	sp,sp,-16
   1d048:	00812423          	sw	s0,8(sp)
   1d04c:	00112623          	sw	ra,12(sp)
   1d050:	00357793          	and	a5,a0,3
   1d054:	00050413          	mv	s0,a0
   1d058:	04079463          	bnez	a5,1d0a0 <strcat+0x5c>
   1d05c:	00052703          	lw	a4,0(a0)
   1d060:	feff0637          	lui	a2,0xfeff0
   1d064:	eff60613          	add	a2,a2,-257 # fefefeff <__BSS_END__+0xfefcbfef>
   1d068:	00c707b3          	add	a5,a4,a2
   1d06c:	808086b7          	lui	a3,0x80808
   1d070:	fff74713          	not	a4,a4
   1d074:	00e7f7b3          	and	a5,a5,a4
   1d078:	08068693          	add	a3,a3,128 # 80808080 <__BSS_END__+0x807e4170>
   1d07c:	00d7f7b3          	and	a5,a5,a3
   1d080:	02079063          	bnez	a5,1d0a0 <strcat+0x5c>
   1d084:	00452703          	lw	a4,4(a0)
   1d088:	00450513          	add	a0,a0,4
   1d08c:	00c707b3          	add	a5,a4,a2
   1d090:	fff74713          	not	a4,a4
   1d094:	00e7f7b3          	and	a5,a5,a4
   1d098:	00d7f7b3          	and	a5,a5,a3
   1d09c:	fe0784e3          	beqz	a5,1d084 <strcat+0x40>
   1d0a0:	00054783          	lbu	a5,0(a0)
   1d0a4:	00078863          	beqz	a5,1d0b4 <strcat+0x70>
   1d0a8:	00154783          	lbu	a5,1(a0)
   1d0ac:	00150513          	add	a0,a0,1
   1d0b0:	fe079ce3          	bnez	a5,1d0a8 <strcat+0x64>
   1d0b4:	dacfb0ef          	jal	18660 <strcpy>
   1d0b8:	00c12083          	lw	ra,12(sp)
   1d0bc:	00040513          	mv	a0,s0
   1d0c0:	00812403          	lw	s0,8(sp)
   1d0c4:	01010113          	add	sp,sp,16
   1d0c8:	00008067          	ret

0001d0cc <strchr>:
   1d0cc:	0ff5f693          	zext.b	a3,a1
   1d0d0:	00357793          	and	a5,a0,3
   1d0d4:	0c068063          	beqz	a3,1d194 <strchr+0xc8>
   1d0d8:	00078e63          	beqz	a5,1d0f4 <strchr+0x28>
   1d0dc:	00054783          	lbu	a5,0(a0)
   1d0e0:	0a078663          	beqz	a5,1d18c <strchr+0xc0>
   1d0e4:	0ad78663          	beq	a5,a3,1d190 <strchr+0xc4>
   1d0e8:	00150513          	add	a0,a0,1
   1d0ec:	00357793          	and	a5,a0,3
   1d0f0:	fe0796e3          	bnez	a5,1d0dc <strchr+0x10>
   1d0f4:	0ff5f593          	zext.b	a1,a1
   1d0f8:	00859893          	sll	a7,a1,0x8
   1d0fc:	00052703          	lw	a4,0(a0)
   1d100:	00b888b3          	add	a7,a7,a1
   1d104:	01089793          	sll	a5,a7,0x10
   1d108:	00f888b3          	add	a7,a7,a5
   1d10c:	feff0837          	lui	a6,0xfeff0
   1d110:	00e8c633          	xor	a2,a7,a4
   1d114:	eff80813          	add	a6,a6,-257 # fefefeff <__BSS_END__+0xfefcbfef>
   1d118:	010707b3          	add	a5,a4,a6
   1d11c:	010605b3          	add	a1,a2,a6
   1d120:	fff74713          	not	a4,a4
   1d124:	fff64613          	not	a2,a2
   1d128:	00e7f7b3          	and	a5,a5,a4
   1d12c:	80808337          	lui	t1,0x80808
   1d130:	00c5f733          	and	a4,a1,a2
   1d134:	00e7e7b3          	or	a5,a5,a4
   1d138:	08030313          	add	t1,t1,128 # 80808080 <__BSS_END__+0x807e4170>
   1d13c:	0067f7b3          	and	a5,a5,t1
   1d140:	02079a63          	bnez	a5,1d174 <strchr+0xa8>
   1d144:	00452703          	lw	a4,4(a0)
   1d148:	00450513          	add	a0,a0,4
   1d14c:	01174633          	xor	a2,a4,a7
   1d150:	010707b3          	add	a5,a4,a6
   1d154:	010605b3          	add	a1,a2,a6
   1d158:	fff74713          	not	a4,a4
   1d15c:	fff64613          	not	a2,a2
   1d160:	00e7f7b3          	and	a5,a5,a4
   1d164:	00c5f733          	and	a4,a1,a2
   1d168:	00e7e7b3          	or	a5,a5,a4
   1d16c:	0067f7b3          	and	a5,a5,t1
   1d170:	fc078ae3          	beqz	a5,1d144 <strchr+0x78>
   1d174:	00054783          	lbu	a5,0(a0)
   1d178:	00078a63          	beqz	a5,1d18c <strchr+0xc0>
   1d17c:	08f68663          	beq	a3,a5,1d208 <strchr+0x13c>
   1d180:	00154783          	lbu	a5,1(a0)
   1d184:	00150513          	add	a0,a0,1
   1d188:	fe079ae3          	bnez	a5,1d17c <strchr+0xb0>
   1d18c:	00000513          	li	a0,0
   1d190:	00008067          	ret
   1d194:	00078c63          	beqz	a5,1d1ac <strchr+0xe0>
   1d198:	00054783          	lbu	a5,0(a0)
   1d19c:	fe078ae3          	beqz	a5,1d190 <strchr+0xc4>
   1d1a0:	00150513          	add	a0,a0,1
   1d1a4:	00357793          	and	a5,a0,3
   1d1a8:	fe0798e3          	bnez	a5,1d198 <strchr+0xcc>
   1d1ac:	00052703          	lw	a4,0(a0)
   1d1b0:	feff0637          	lui	a2,0xfeff0
   1d1b4:	eff60613          	add	a2,a2,-257 # fefefeff <__BSS_END__+0xfefcbfef>
   1d1b8:	00c707b3          	add	a5,a4,a2
   1d1bc:	808086b7          	lui	a3,0x80808
   1d1c0:	fff74713          	not	a4,a4
   1d1c4:	00e7f7b3          	and	a5,a5,a4
   1d1c8:	08068693          	add	a3,a3,128 # 80808080 <__BSS_END__+0x807e4170>
   1d1cc:	00d7f7b3          	and	a5,a5,a3
   1d1d0:	02079063          	bnez	a5,1d1f0 <strchr+0x124>
   1d1d4:	00452703          	lw	a4,4(a0)
   1d1d8:	00450513          	add	a0,a0,4
   1d1dc:	00c707b3          	add	a5,a4,a2
   1d1e0:	fff74713          	not	a4,a4
   1d1e4:	00e7f7b3          	and	a5,a5,a4
   1d1e8:	00d7f7b3          	and	a5,a5,a3
   1d1ec:	fe0784e3          	beqz	a5,1d1d4 <strchr+0x108>
   1d1f0:	00054783          	lbu	a5,0(a0)
   1d1f4:	f8078ee3          	beqz	a5,1d190 <strchr+0xc4>
   1d1f8:	00154783          	lbu	a5,1(a0)
   1d1fc:	00150513          	add	a0,a0,1
   1d200:	fe079ce3          	bnez	a5,1d1f8 <strchr+0x12c>
   1d204:	00008067          	ret
   1d208:	00008067          	ret

0001d20c <strlcpy>:
   1d20c:	00058793          	mv	a5,a1
   1d210:	00061e63          	bnez	a2,1d22c <strlcpy+0x20>
   1d214:	0240006f          	j	1d238 <strlcpy+0x2c>
   1d218:	0007c703          	lbu	a4,0(a5)
   1d21c:	00150513          	add	a0,a0,1
   1d220:	00178793          	add	a5,a5,1
   1d224:	fee50fa3          	sb	a4,-1(a0)
   1d228:	00070e63          	beqz	a4,1d244 <strlcpy+0x38>
   1d22c:	fff60613          	add	a2,a2,-1
   1d230:	fe0614e3          	bnez	a2,1d218 <strlcpy+0xc>
   1d234:	00050023          	sb	zero,0(a0)
   1d238:	0007c703          	lbu	a4,0(a5)
   1d23c:	00178793          	add	a5,a5,1
   1d240:	fe071ce3          	bnez	a4,1d238 <strlcpy+0x2c>
   1d244:	40b78533          	sub	a0,a5,a1
   1d248:	fff50513          	add	a0,a0,-1
   1d24c:	00008067          	ret

0001d250 <strncasecmp>:
   1d250:	00050693          	mv	a3,a0
   1d254:	04060c63          	beqz	a2,1d2ac <strncasecmp+0x5c>
   1d258:	00c58633          	add	a2,a1,a2
   1d25c:	00005897          	auipc	a7,0x5
   1d260:	44d88893          	add	a7,a7,1101 # 226a9 <_ctype_+0x1>
   1d264:	00100813          	li	a6,1
   1d268:	0006c783          	lbu	a5,0(a3)
   1d26c:	00158593          	add	a1,a1,1
   1d270:	00168693          	add	a3,a3,1
   1d274:	00f88733          	add	a4,a7,a5
   1d278:	00074703          	lbu	a4,0(a4)
   1d27c:	00377713          	and	a4,a4,3
   1d280:	01071463          	bne	a4,a6,1d288 <strncasecmp+0x38>
   1d284:	02078793          	add	a5,a5,32
   1d288:	fff5c503          	lbu	a0,-1(a1)
   1d28c:	00a88733          	add	a4,a7,a0
   1d290:	00074703          	lbu	a4,0(a4)
   1d294:	40a78333          	sub	t1,a5,a0
   1d298:	00377713          	and	a4,a4,3
   1d29c:	03070063          	beq	a4,a6,1d2bc <strncasecmp+0x6c>
   1d2a0:	00a79a63          	bne	a5,a0,1d2b4 <strncasecmp+0x64>
   1d2a4:	00050a63          	beqz	a0,1d2b8 <strncasecmp+0x68>
   1d2a8:	fcc590e3          	bne	a1,a2,1d268 <strncasecmp+0x18>
   1d2ac:	00000513          	li	a0,0
   1d2b0:	00008067          	ret
   1d2b4:	00030513          	mv	a0,t1
   1d2b8:	00008067          	ret
   1d2bc:	02050713          	add	a4,a0,32
   1d2c0:	40e78533          	sub	a0,a5,a4
   1d2c4:	fee782e3          	beq	a5,a4,1d2a8 <strncasecmp+0x58>
   1d2c8:	00008067          	ret

0001d2cc <strncmp>:
   1d2cc:	04060a63          	beqz	a2,1d320 <strncmp+0x54>
   1d2d0:	00b567b3          	or	a5,a0,a1
   1d2d4:	0037f793          	and	a5,a5,3
   1d2d8:	04078863          	beqz	a5,1d328 <strncmp+0x5c>
   1d2dc:	00054703          	lbu	a4,0(a0)
   1d2e0:	0005c683          	lbu	a3,0(a1)
   1d2e4:	0ad71463          	bne	a4,a3,1d38c <strncmp+0xc0>
   1d2e8:	00100793          	li	a5,1
   1d2ec:	02f60a63          	beq	a2,a5,1d320 <strncmp+0x54>
   1d2f0:	00050813          	mv	a6,a0
   1d2f4:	0140006f          	j	1d308 <strncmp+0x3c>
   1d2f8:	00054703          	lbu	a4,0(a0)
   1d2fc:	0005c683          	lbu	a3,0(a1)
   1d300:	08d71663          	bne	a4,a3,1d38c <strncmp+0xc0>
   1d304:	00078e63          	beqz	a5,1d320 <strncmp+0x54>
   1d308:	00150513          	add	a0,a0,1
   1d30c:	40a607b3          	sub	a5,a2,a0
   1d310:	fff78793          	add	a5,a5,-1
   1d314:	00158593          	add	a1,a1,1
   1d318:	00f807b3          	add	a5,a6,a5
   1d31c:	fc071ee3          	bnez	a4,1d2f8 <strncmp+0x2c>
   1d320:	00000513          	li	a0,0
   1d324:	00008067          	ret
   1d328:	feff0337          	lui	t1,0xfeff0
   1d32c:	808088b7          	lui	a7,0x80808
   1d330:	00300793          	li	a5,3
   1d334:	eff30313          	add	t1,t1,-257 # fefefeff <__BSS_END__+0xfefcbfef>
   1d338:	08088893          	add	a7,a7,128 # 80808080 <__BSS_END__+0x807e4170>
   1d33c:	00300e13          	li	t3,3
   1d340:	02c7e063          	bltu	a5,a2,1d360 <strncmp+0x94>
   1d344:	f99ff06f          	j	1d2dc <strncmp+0x10>
   1d348:	ffc60613          	add	a2,a2,-4
   1d34c:	fc060ae3          	beqz	a2,1d320 <strncmp+0x54>
   1d350:	fc0798e3          	bnez	a5,1d320 <strncmp+0x54>
   1d354:	00450513          	add	a0,a0,4
   1d358:	00458593          	add	a1,a1,4
   1d35c:	f8ce70e3          	bgeu	t3,a2,1d2dc <strncmp+0x10>
   1d360:	00052703          	lw	a4,0(a0)
   1d364:	0005a683          	lw	a3,0(a1)
   1d368:	006707b3          	add	a5,a4,t1
   1d36c:	fff74813          	not	a6,a4
   1d370:	0107f7b3          	and	a5,a5,a6
   1d374:	0117f7b3          	and	a5,a5,a7
   1d378:	fcd708e3          	beq	a4,a3,1d348 <strncmp+0x7c>
   1d37c:	00054703          	lbu	a4,0(a0)
   1d380:	0005c683          	lbu	a3,0(a1)
   1d384:	00050813          	mv	a6,a0
   1d388:	f8d700e3          	beq	a4,a3,1d308 <strncmp+0x3c>
   1d38c:	40d70533          	sub	a0,a4,a3
   1d390:	00008067          	ret

0001d394 <_fstat_r>:
   1d394:	ff010113          	add	sp,sp,-16
   1d398:	00058713          	mv	a4,a1
   1d39c:	00812423          	sw	s0,8(sp)
   1d3a0:	00060593          	mv	a1,a2
   1d3a4:	00050413          	mv	s0,a0
   1d3a8:	00070513          	mv	a0,a4
   1d3ac:	f401a823          	sw	zero,-176(gp) # 23920 <errno>
   1d3b0:	00112623          	sw	ra,12(sp)
   1d3b4:	359000ef          	jal	1df0c <_fstat>
   1d3b8:	fff00793          	li	a5,-1
   1d3bc:	00f50a63          	beq	a0,a5,1d3d0 <_fstat_r+0x3c>
   1d3c0:	00c12083          	lw	ra,12(sp)
   1d3c4:	00812403          	lw	s0,8(sp)
   1d3c8:	01010113          	add	sp,sp,16
   1d3cc:	00008067          	ret
   1d3d0:	f501a783          	lw	a5,-176(gp) # 23920 <errno>
   1d3d4:	fe0786e3          	beqz	a5,1d3c0 <_fstat_r+0x2c>
   1d3d8:	00c12083          	lw	ra,12(sp)
   1d3dc:	00f42023          	sw	a5,0(s0)
   1d3e0:	00812403          	lw	s0,8(sp)
   1d3e4:	01010113          	add	sp,sp,16
   1d3e8:	00008067          	ret

0001d3ec <_isatty_r>:
   1d3ec:	ff010113          	add	sp,sp,-16
   1d3f0:	00812423          	sw	s0,8(sp)
   1d3f4:	00050413          	mv	s0,a0
   1d3f8:	00058513          	mv	a0,a1
   1d3fc:	f401a823          	sw	zero,-176(gp) # 23920 <errno>
   1d400:	00112623          	sw	ra,12(sp)
   1d404:	371000ef          	jal	1df74 <_isatty>
   1d408:	fff00793          	li	a5,-1
   1d40c:	00f50a63          	beq	a0,a5,1d420 <_isatty_r+0x34>
   1d410:	00c12083          	lw	ra,12(sp)
   1d414:	00812403          	lw	s0,8(sp)
   1d418:	01010113          	add	sp,sp,16
   1d41c:	00008067          	ret
   1d420:	f501a783          	lw	a5,-176(gp) # 23920 <errno>
   1d424:	fe0786e3          	beqz	a5,1d410 <_isatty_r+0x24>
   1d428:	00c12083          	lw	ra,12(sp)
   1d42c:	00f42023          	sw	a5,0(s0)
   1d430:	00812403          	lw	s0,8(sp)
   1d434:	01010113          	add	sp,sp,16
   1d438:	00008067          	ret

0001d43c <__errno>:
   1d43c:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   1d440:	00008067          	ret

0001d444 <__assert_func>:
   1d444:	ff010113          	add	sp,sp,-16
   1d448:	00068793          	mv	a5,a3
   1d44c:	f341a703          	lw	a4,-204(gp) # 23904 <_impure_ptr>
   1d450:	00060813          	mv	a6,a2
   1d454:	00112623          	sw	ra,12(sp)
   1d458:	00c72883          	lw	a7,12(a4)
   1d45c:	00078613          	mv	a2,a5
   1d460:	00050693          	mv	a3,a0
   1d464:	00058713          	mv	a4,a1
   1d468:	00005797          	auipc	a5,0x5
   1d46c:	96878793          	add	a5,a5,-1688 # 21dd0 <__clzsi2+0x35c>
   1d470:	00080c63          	beqz	a6,1d488 <__assert_func+0x44>
   1d474:	00005597          	auipc	a1,0x5
   1d478:	96c58593          	add	a1,a1,-1684 # 21de0 <__clzsi2+0x36c>
   1d47c:	00088513          	mv	a0,a7
   1d480:	41c000ef          	jal	1d89c <fiprintf>
   1d484:	460000ef          	jal	1d8e4 <abort>
   1d488:	00005797          	auipc	a5,0x5
   1d48c:	95478793          	add	a5,a5,-1708 # 21ddc <__clzsi2+0x368>
   1d490:	00078813          	mv	a6,a5
   1d494:	fe1ff06f          	j	1d474 <__assert_func+0x30>

0001d498 <__assert>:
   1d498:	ff010113          	add	sp,sp,-16
   1d49c:	00060693          	mv	a3,a2
   1d4a0:	00000613          	li	a2,0
   1d4a4:	00112623          	sw	ra,12(sp)
   1d4a8:	f9dff0ef          	jal	1d444 <__assert_func>

0001d4ac <_calloc_r>:
   1d4ac:	fe010113          	add	sp,sp,-32
   1d4b0:	00812c23          	sw	s0,24(sp)
   1d4b4:	00112e23          	sw	ra,28(sp)
   1d4b8:	0105d693          	srl	a3,a1,0x10
   1d4bc:	00058793          	mv	a5,a1
   1d4c0:	00050413          	mv	s0,a0
   1d4c4:	01065713          	srl	a4,a2,0x10
   1d4c8:	0c069063          	bnez	a3,1d588 <_calloc_r+0xdc>
   1d4cc:	14071a63          	bnez	a4,1d620 <_calloc_r+0x174>
   1d4d0:	01061593          	sll	a1,a2,0x10
   1d4d4:	01079513          	sll	a0,a5,0x10
   1d4d8:	0105d593          	srl	a1,a1,0x10
   1d4dc:	01055513          	srl	a0,a0,0x10
   1d4e0:	4bc040ef          	jal	2199c <__mulsi3>
   1d4e4:	00050593          	mv	a1,a0
   1d4e8:	00040513          	mv	a0,s0
   1d4ec:	8d4f40ef          	jal	115c0 <_malloc_r>
   1d4f0:	00050413          	mv	s0,a0
   1d4f4:	10050a63          	beqz	a0,1d608 <_calloc_r+0x15c>
   1d4f8:	ffc52603          	lw	a2,-4(a0)
   1d4fc:	02400713          	li	a4,36
   1d500:	ffc67613          	and	a2,a2,-4
   1d504:	ffc60613          	add	a2,a2,-4
   1d508:	04c76863          	bltu	a4,a2,1d558 <_calloc_r+0xac>
   1d50c:	01300693          	li	a3,19
   1d510:	00050793          	mv	a5,a0
   1d514:	02c6f263          	bgeu	a3,a2,1d538 <_calloc_r+0x8c>
   1d518:	00052023          	sw	zero,0(a0)
   1d51c:	00052223          	sw	zero,4(a0)
   1d520:	01b00793          	li	a5,27
   1d524:	04c7f863          	bgeu	a5,a2,1d574 <_calloc_r+0xc8>
   1d528:	00052423          	sw	zero,8(a0)
   1d52c:	00052623          	sw	zero,12(a0)
   1d530:	01050793          	add	a5,a0,16
   1d534:	10e60263          	beq	a2,a4,1d638 <_calloc_r+0x18c>
   1d538:	0007a023          	sw	zero,0(a5)
   1d53c:	0007a223          	sw	zero,4(a5)
   1d540:	0007a423          	sw	zero,8(a5)
   1d544:	01c12083          	lw	ra,28(sp)
   1d548:	00040513          	mv	a0,s0
   1d54c:	01812403          	lw	s0,24(sp)
   1d550:	02010113          	add	sp,sp,32
   1d554:	00008067          	ret
   1d558:	00000593          	li	a1,0
   1d55c:	919f30ef          	jal	10e74 <memset>
   1d560:	01c12083          	lw	ra,28(sp)
   1d564:	00040513          	mv	a0,s0
   1d568:	01812403          	lw	s0,24(sp)
   1d56c:	02010113          	add	sp,sp,32
   1d570:	00008067          	ret
   1d574:	00850793          	add	a5,a0,8
   1d578:	0007a023          	sw	zero,0(a5)
   1d57c:	0007a223          	sw	zero,4(a5)
   1d580:	0007a423          	sw	zero,8(a5)
   1d584:	fc1ff06f          	j	1d544 <_calloc_r+0x98>
   1d588:	0c071663          	bnez	a4,1d654 <_calloc_r+0x1a8>
   1d58c:	01212823          	sw	s2,16(sp)
   1d590:	01312623          	sw	s3,12(sp)
   1d594:	00912a23          	sw	s1,20(sp)
   1d598:	00068913          	mv	s2,a3
   1d59c:	00060993          	mv	s3,a2
   1d5a0:	01079513          	sll	a0,a5,0x10
   1d5a4:	01061593          	sll	a1,a2,0x10
   1d5a8:	0105d593          	srl	a1,a1,0x10
   1d5ac:	01055513          	srl	a0,a0,0x10
   1d5b0:	3ec040ef          	jal	2199c <__mulsi3>
   1d5b4:	00050493          	mv	s1,a0
   1d5b8:	01091593          	sll	a1,s2,0x10
   1d5bc:	01099513          	sll	a0,s3,0x10
   1d5c0:	0105d593          	srl	a1,a1,0x10
   1d5c4:	01055513          	srl	a0,a0,0x10
   1d5c8:	3d4040ef          	jal	2199c <__mulsi3>
   1d5cc:	0104d793          	srl	a5,s1,0x10
   1d5d0:	00f505b3          	add	a1,a0,a5
   1d5d4:	0105d793          	srl	a5,a1,0x10
   1d5d8:	06079863          	bnez	a5,1d648 <_calloc_r+0x19c>
   1d5dc:	01049493          	sll	s1,s1,0x10
   1d5e0:	0104d493          	srl	s1,s1,0x10
   1d5e4:	01059593          	sll	a1,a1,0x10
   1d5e8:	0095e5b3          	or	a1,a1,s1
   1d5ec:	00040513          	mv	a0,s0
   1d5f0:	01412483          	lw	s1,20(sp)
   1d5f4:	01012903          	lw	s2,16(sp)
   1d5f8:	00c12983          	lw	s3,12(sp)
   1d5fc:	fc5f30ef          	jal	115c0 <_malloc_r>
   1d600:	00050413          	mv	s0,a0
   1d604:	ee051ae3          	bnez	a0,1d4f8 <_calloc_r+0x4c>
   1d608:	00000413          	li	s0,0
   1d60c:	01c12083          	lw	ra,28(sp)
   1d610:	00040513          	mv	a0,s0
   1d614:	01812403          	lw	s0,24(sp)
   1d618:	02010113          	add	sp,sp,32
   1d61c:	00008067          	ret
   1d620:	01212823          	sw	s2,16(sp)
   1d624:	01312623          	sw	s3,12(sp)
   1d628:	00912a23          	sw	s1,20(sp)
   1d62c:	00070913          	mv	s2,a4
   1d630:	00058993          	mv	s3,a1
   1d634:	f6dff06f          	j	1d5a0 <_calloc_r+0xf4>
   1d638:	00052823          	sw	zero,16(a0)
   1d63c:	01850793          	add	a5,a0,24
   1d640:	00052a23          	sw	zero,20(a0)
   1d644:	ef5ff06f          	j	1d538 <_calloc_r+0x8c>
   1d648:	01412483          	lw	s1,20(sp)
   1d64c:	01012903          	lw	s2,16(sp)
   1d650:	00c12983          	lw	s3,12(sp)
   1d654:	de9ff0ef          	jal	1d43c <__errno>
   1d658:	00c00793          	li	a5,12
   1d65c:	00f52023          	sw	a5,0(a0)
   1d660:	00000413          	li	s0,0
   1d664:	fa9ff06f          	j	1d60c <_calloc_r+0x160>

0001d668 <__env_lock>:
   1d668:	f6018513          	add	a0,gp,-160 # 23930 <__lock___env_recursive_mutex>
   1d66c:	fecf306f          	j	10e58 <__retarget_lock_acquire_recursive>

0001d670 <__env_unlock>:
   1d670:	f6018513          	add	a0,gp,-160 # 23930 <__lock___env_recursive_mutex>
   1d674:	ffcf306f          	j	10e70 <__retarget_lock_release_recursive>

0001d678 <_wcsnrtombs_l>:
   1d678:	fa010113          	add	sp,sp,-96
   1d67c:	04912a23          	sw	s1,84(sp)
   1d680:	05212823          	sw	s2,80(sp)
   1d684:	05312623          	sw	s3,76(sp)
   1d688:	05412423          	sw	s4,72(sp)
   1d68c:	05512223          	sw	s5,68(sp)
   1d690:	04112e23          	sw	ra,92(sp)
   1d694:	03912a23          	sw	s9,52(sp)
   1d698:	03a12823          	sw	s10,48(sp)
   1d69c:	00a12623          	sw	a0,12(sp)
   1d6a0:	00058a13          	mv	s4,a1
   1d6a4:	00060a93          	mv	s5,a2
   1d6a8:	00070913          	mv	s2,a4
   1d6ac:	00080993          	mv	s3,a6
   1d6b0:	00078493          	mv	s1,a5
   1d6b4:	12078063          	beqz	a5,1d7d4 <_wcsnrtombs_l+0x15c>
   1d6b8:	000aac83          	lw	s9,0(s5)
   1d6bc:	120a0263          	beqz	s4,1d7e0 <_wcsnrtombs_l+0x168>
   1d6c0:	14090e63          	beqz	s2,1d81c <_wcsnrtombs_l+0x1a4>
   1d6c4:	05612023          	sw	s6,64(sp)
   1d6c8:	fff68b13          	add	s6,a3,-1
   1d6cc:	16068063          	beqz	a3,1d82c <_wcsnrtombs_l+0x1b4>
   1d6d0:	04812c23          	sw	s0,88(sp)
   1d6d4:	03b12623          	sw	s11,44(sp)
   1d6d8:	03712e23          	sw	s7,60(sp)
   1d6dc:	03812c23          	sw	s8,56(sp)
   1d6e0:	000a0413          	mv	s0,s4
   1d6e4:	00000d13          	li	s10,0
   1d6e8:	fff00d93          	li	s11,-1
   1d6ec:	0240006f          	j	1d710 <_wcsnrtombs_l+0x98>
   1d6f0:	080a1a63          	bnez	s4,1d784 <_wcsnrtombs_l+0x10c>
   1d6f4:	000ca783          	lw	a5,0(s9)
   1d6f8:	004c8c93          	add	s9,s9,4
   1d6fc:	0c078263          	beqz	a5,1d7c0 <_wcsnrtombs_l+0x148>
   1d700:	1326f263          	bgeu	a3,s2,1d824 <_wcsnrtombs_l+0x1ac>
   1d704:	fffb0b13          	add	s6,s6,-1 # 7fffffff <__BSS_END__+0x7ffdc0ef>
   1d708:	00068d13          	mv	s10,a3
   1d70c:	03bb0c63          	beq	s6,s11,1d744 <_wcsnrtombs_l+0xcc>
   1d710:	0e09a783          	lw	a5,224(s3)
   1d714:	000ca603          	lw	a2,0(s9)
   1d718:	00c12503          	lw	a0,12(sp)
   1d71c:	00048693          	mv	a3,s1
   1d720:	01410593          	add	a1,sp,20
   1d724:	0004ac03          	lw	s8,0(s1)
   1d728:	0044ab83          	lw	s7,4(s1)
   1d72c:	000780e7          	jalr	a5
   1d730:	0bb50e63          	beq	a0,s11,1d7ec <_wcsnrtombs_l+0x174>
   1d734:	01a506b3          	add	a3,a0,s10
   1d738:	fad97ce3          	bgeu	s2,a3,1d6f0 <_wcsnrtombs_l+0x78>
   1d73c:	0184a023          	sw	s8,0(s1)
   1d740:	0174a223          	sw	s7,4(s1)
   1d744:	05812403          	lw	s0,88(sp)
   1d748:	04012b03          	lw	s6,64(sp)
   1d74c:	03c12b83          	lw	s7,60(sp)
   1d750:	03812c03          	lw	s8,56(sp)
   1d754:	02c12d83          	lw	s11,44(sp)
   1d758:	05c12083          	lw	ra,92(sp)
   1d75c:	05412483          	lw	s1,84(sp)
   1d760:	05012903          	lw	s2,80(sp)
   1d764:	04c12983          	lw	s3,76(sp)
   1d768:	04812a03          	lw	s4,72(sp)
   1d76c:	04412a83          	lw	s5,68(sp)
   1d770:	03412c83          	lw	s9,52(sp)
   1d774:	000d0513          	mv	a0,s10
   1d778:	03012d03          	lw	s10,48(sp)
   1d77c:	06010113          	add	sp,sp,96
   1d780:	00008067          	ret
   1d784:	08a05063          	blez	a0,1d804 <_wcsnrtombs_l+0x18c>
   1d788:	01410893          	add	a7,sp,20
   1d78c:	00a40533          	add	a0,s0,a0
   1d790:	0008c783          	lbu	a5,0(a7)
   1d794:	00140413          	add	s0,s0,1
   1d798:	00188893          	add	a7,a7,1
   1d79c:	fef40fa3          	sb	a5,-1(s0)
   1d7a0:	fe8518e3          	bne	a0,s0,1d790 <_wcsnrtombs_l+0x118>
   1d7a4:	000aa783          	lw	a5,0(s5)
   1d7a8:	00050413          	mv	s0,a0
   1d7ac:	00478793          	add	a5,a5,4
   1d7b0:	00faa023          	sw	a5,0(s5)
   1d7b4:	000ca783          	lw	a5,0(s9)
   1d7b8:	004c8c93          	add	s9,s9,4
   1d7bc:	f40792e3          	bnez	a5,1d700 <_wcsnrtombs_l+0x88>
   1d7c0:	000a0463          	beqz	s4,1d7c8 <_wcsnrtombs_l+0x150>
   1d7c4:	000aa023          	sw	zero,0(s5)
   1d7c8:	0004a023          	sw	zero,0(s1)
   1d7cc:	fff68d13          	add	s10,a3,-1
   1d7d0:	f75ff06f          	j	1d744 <_wcsnrtombs_l+0xcc>
   1d7d4:	000aac83          	lw	s9,0(s5)
   1d7d8:	10c50493          	add	s1,a0,268
   1d7dc:	ee0a12e3          	bnez	s4,1d6c0 <_wcsnrtombs_l+0x48>
   1d7e0:	05612023          	sw	s6,64(sp)
   1d7e4:	fff00913          	li	s2,-1
   1d7e8:	ee1ff06f          	j	1d6c8 <_wcsnrtombs_l+0x50>
   1d7ec:	00c12703          	lw	a4,12(sp)
   1d7f0:	08a00793          	li	a5,138
   1d7f4:	fff00d13          	li	s10,-1
   1d7f8:	00f72023          	sw	a5,0(a4)
   1d7fc:	0004a023          	sw	zero,0(s1)
   1d800:	f45ff06f          	j	1d744 <_wcsnrtombs_l+0xcc>
   1d804:	000aa783          	lw	a5,0(s5)
   1d808:	00040513          	mv	a0,s0
   1d80c:	00050413          	mv	s0,a0
   1d810:	00478793          	add	a5,a5,4
   1d814:	00faa023          	sw	a5,0(s5)
   1d818:	f9dff06f          	j	1d7b4 <_wcsnrtombs_l+0x13c>
   1d81c:	00000d13          	li	s10,0
   1d820:	f39ff06f          	j	1d758 <_wcsnrtombs_l+0xe0>
   1d824:	00068d13          	mv	s10,a3
   1d828:	f1dff06f          	j	1d744 <_wcsnrtombs_l+0xcc>
   1d82c:	04012b03          	lw	s6,64(sp)
   1d830:	00000d13          	li	s10,0
   1d834:	f25ff06f          	j	1d758 <_wcsnrtombs_l+0xe0>

0001d838 <_wcsnrtombs_r>:
   1d838:	d3818813          	add	a6,gp,-712 # 23708 <__global_locale>
   1d83c:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   1d840:	e39ff06f          	j	1d678 <_wcsnrtombs_l>

0001d844 <wcsnrtombs>:
   1d844:	00070793          	mv	a5,a4
   1d848:	d3818813          	add	a6,gp,-712 # 23708 <__global_locale>
   1d84c:	00068713          	mv	a4,a3
   1d850:	00060693          	mv	a3,a2
   1d854:	00058613          	mv	a2,a1
   1d858:	00050593          	mv	a1,a0
   1d85c:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   1d860:	e19ff06f          	j	1d678 <_wcsnrtombs_l>

0001d864 <_fiprintf_r>:
   1d864:	fc010113          	add	sp,sp,-64
   1d868:	02c10313          	add	t1,sp,44
   1d86c:	02d12623          	sw	a3,44(sp)
   1d870:	00030693          	mv	a3,t1
   1d874:	00112e23          	sw	ra,28(sp)
   1d878:	02e12823          	sw	a4,48(sp)
   1d87c:	02f12a23          	sw	a5,52(sp)
   1d880:	03012c23          	sw	a6,56(sp)
   1d884:	03112e23          	sw	a7,60(sp)
   1d888:	00612623          	sw	t1,12(sp)
   1d88c:	bf0f70ef          	jal	14c7c <_vfiprintf_r>
   1d890:	01c12083          	lw	ra,28(sp)
   1d894:	04010113          	add	sp,sp,64
   1d898:	00008067          	ret

0001d89c <fiprintf>:
   1d89c:	fc010113          	add	sp,sp,-64
   1d8a0:	02810313          	add	t1,sp,40
   1d8a4:	02c12423          	sw	a2,40(sp)
   1d8a8:	02d12623          	sw	a3,44(sp)
   1d8ac:	00058613          	mv	a2,a1
   1d8b0:	00030693          	mv	a3,t1
   1d8b4:	00050593          	mv	a1,a0
   1d8b8:	f341a503          	lw	a0,-204(gp) # 23904 <_impure_ptr>
   1d8bc:	00112e23          	sw	ra,28(sp)
   1d8c0:	02e12823          	sw	a4,48(sp)
   1d8c4:	02f12a23          	sw	a5,52(sp)
   1d8c8:	03012c23          	sw	a6,56(sp)
   1d8cc:	03112e23          	sw	a7,60(sp)
   1d8d0:	00612623          	sw	t1,12(sp)
   1d8d4:	ba8f70ef          	jal	14c7c <_vfiprintf_r>
   1d8d8:	01c12083          	lw	ra,28(sp)
   1d8dc:	04010113          	add	sp,sp,64
   1d8e0:	00008067          	ret

0001d8e4 <abort>:
   1d8e4:	ff010113          	add	sp,sp,-16
   1d8e8:	00600513          	li	a0,6
   1d8ec:	00112623          	sw	ra,12(sp)
   1d8f0:	2a8000ef          	jal	1db98 <raise>
   1d8f4:	00100513          	li	a0,1
   1d8f8:	5e4000ef          	jal	1dedc <_exit>

0001d8fc <_init_signal_r>:
   1d8fc:	11852783          	lw	a5,280(a0)
   1d900:	00078663          	beqz	a5,1d90c <_init_signal_r+0x10>
   1d904:	00000513          	li	a0,0
   1d908:	00008067          	ret
   1d90c:	ff010113          	add	sp,sp,-16
   1d910:	08000593          	li	a1,128
   1d914:	00812423          	sw	s0,8(sp)
   1d918:	00112623          	sw	ra,12(sp)
   1d91c:	00050413          	mv	s0,a0
   1d920:	ca1f30ef          	jal	115c0 <_malloc_r>
   1d924:	10a42c23          	sw	a0,280(s0)
   1d928:	02050463          	beqz	a0,1d950 <_init_signal_r+0x54>
   1d92c:	08050793          	add	a5,a0,128
   1d930:	00052023          	sw	zero,0(a0)
   1d934:	00450513          	add	a0,a0,4
   1d938:	fef51ce3          	bne	a0,a5,1d930 <_init_signal_r+0x34>
   1d93c:	00000513          	li	a0,0
   1d940:	00c12083          	lw	ra,12(sp)
   1d944:	00812403          	lw	s0,8(sp)
   1d948:	01010113          	add	sp,sp,16
   1d94c:	00008067          	ret
   1d950:	fff00513          	li	a0,-1
   1d954:	fedff06f          	j	1d940 <_init_signal_r+0x44>

0001d958 <_signal_r>:
   1d958:	fe010113          	add	sp,sp,-32
   1d95c:	00912a23          	sw	s1,20(sp)
   1d960:	00112e23          	sw	ra,28(sp)
   1d964:	01f00793          	li	a5,31
   1d968:	00050493          	mv	s1,a0
   1d96c:	02b7ec63          	bltu	a5,a1,1d9a4 <_signal_r+0x4c>
   1d970:	11852783          	lw	a5,280(a0)
   1d974:	00812c23          	sw	s0,24(sp)
   1d978:	00058413          	mv	s0,a1
   1d97c:	02078c63          	beqz	a5,1d9b4 <_signal_r+0x5c>
   1d980:	00241413          	sll	s0,s0,0x2
   1d984:	008787b3          	add	a5,a5,s0
   1d988:	01812403          	lw	s0,24(sp)
   1d98c:	0007a503          	lw	a0,0(a5)
   1d990:	00c7a023          	sw	a2,0(a5)
   1d994:	01c12083          	lw	ra,28(sp)
   1d998:	01412483          	lw	s1,20(sp)
   1d99c:	02010113          	add	sp,sp,32
   1d9a0:	00008067          	ret
   1d9a4:	01600793          	li	a5,22
   1d9a8:	00f52023          	sw	a5,0(a0)
   1d9ac:	fff00513          	li	a0,-1
   1d9b0:	fe5ff06f          	j	1d994 <_signal_r+0x3c>
   1d9b4:	08000593          	li	a1,128
   1d9b8:	00c12623          	sw	a2,12(sp)
   1d9bc:	c05f30ef          	jal	115c0 <_malloc_r>
   1d9c0:	10a4ac23          	sw	a0,280(s1)
   1d9c4:	00c12603          	lw	a2,12(sp)
   1d9c8:	00050793          	mv	a5,a0
   1d9cc:	00050713          	mv	a4,a0
   1d9d0:	08050693          	add	a3,a0,128
   1d9d4:	00050a63          	beqz	a0,1d9e8 <_signal_r+0x90>
   1d9d8:	00072023          	sw	zero,0(a4)
   1d9dc:	00470713          	add	a4,a4,4
   1d9e0:	fed71ce3          	bne	a4,a3,1d9d8 <_signal_r+0x80>
   1d9e4:	f9dff06f          	j	1d980 <_signal_r+0x28>
   1d9e8:	01812403          	lw	s0,24(sp)
   1d9ec:	fff00513          	li	a0,-1
   1d9f0:	fa5ff06f          	j	1d994 <_signal_r+0x3c>

0001d9f4 <_raise_r>:
   1d9f4:	ff010113          	add	sp,sp,-16
   1d9f8:	00912223          	sw	s1,4(sp)
   1d9fc:	00112623          	sw	ra,12(sp)
   1da00:	01f00793          	li	a5,31
   1da04:	00050493          	mv	s1,a0
   1da08:	0ab7e063          	bltu	a5,a1,1daa8 <_raise_r+0xb4>
   1da0c:	11852783          	lw	a5,280(a0)
   1da10:	00812423          	sw	s0,8(sp)
   1da14:	00058413          	mv	s0,a1
   1da18:	04078463          	beqz	a5,1da60 <_raise_r+0x6c>
   1da1c:	00259713          	sll	a4,a1,0x2
   1da20:	00e787b3          	add	a5,a5,a4
   1da24:	0007a703          	lw	a4,0(a5)
   1da28:	02070c63          	beqz	a4,1da60 <_raise_r+0x6c>
   1da2c:	00100693          	li	a3,1
   1da30:	00d70c63          	beq	a4,a3,1da48 <_raise_r+0x54>
   1da34:	fff00693          	li	a3,-1
   1da38:	04d70863          	beq	a4,a3,1da88 <_raise_r+0x94>
   1da3c:	0007a023          	sw	zero,0(a5)
   1da40:	00058513          	mv	a0,a1
   1da44:	000700e7          	jalr	a4
   1da48:	00812403          	lw	s0,8(sp)
   1da4c:	00000513          	li	a0,0
   1da50:	00c12083          	lw	ra,12(sp)
   1da54:	00412483          	lw	s1,4(sp)
   1da58:	01010113          	add	sp,sp,16
   1da5c:	00008067          	ret
   1da60:	00048513          	mv	a0,s1
   1da64:	430000ef          	jal	1de94 <_getpid_r>
   1da68:	00040613          	mv	a2,s0
   1da6c:	00812403          	lw	s0,8(sp)
   1da70:	00c12083          	lw	ra,12(sp)
   1da74:	00050593          	mv	a1,a0
   1da78:	00048513          	mv	a0,s1
   1da7c:	00412483          	lw	s1,4(sp)
   1da80:	01010113          	add	sp,sp,16
   1da84:	3b80006f          	j	1de3c <_kill_r>
   1da88:	00812403          	lw	s0,8(sp)
   1da8c:	00c12083          	lw	ra,12(sp)
   1da90:	01600793          	li	a5,22
   1da94:	00f52023          	sw	a5,0(a0)
   1da98:	00412483          	lw	s1,4(sp)
   1da9c:	00100513          	li	a0,1
   1daa0:	01010113          	add	sp,sp,16
   1daa4:	00008067          	ret
   1daa8:	01600793          	li	a5,22
   1daac:	00f52023          	sw	a5,0(a0)
   1dab0:	fff00513          	li	a0,-1
   1dab4:	f9dff06f          	j	1da50 <_raise_r+0x5c>

0001dab8 <__sigtramp_r>:
   1dab8:	01f00793          	li	a5,31
   1dabc:	0cb7ea63          	bltu	a5,a1,1db90 <__sigtramp_r+0xd8>
   1dac0:	11852783          	lw	a5,280(a0)
   1dac4:	ff010113          	add	sp,sp,-16
   1dac8:	00812423          	sw	s0,8(sp)
   1dacc:	00912223          	sw	s1,4(sp)
   1dad0:	00112623          	sw	ra,12(sp)
   1dad4:	00058413          	mv	s0,a1
   1dad8:	00050493          	mv	s1,a0
   1dadc:	08078063          	beqz	a5,1db5c <__sigtramp_r+0xa4>
   1dae0:	00241713          	sll	a4,s0,0x2
   1dae4:	00e787b3          	add	a5,a5,a4
   1dae8:	0007a703          	lw	a4,0(a5)
   1daec:	02070c63          	beqz	a4,1db24 <__sigtramp_r+0x6c>
   1daf0:	fff00693          	li	a3,-1
   1daf4:	06d70063          	beq	a4,a3,1db54 <__sigtramp_r+0x9c>
   1daf8:	00100693          	li	a3,1
   1dafc:	04d70063          	beq	a4,a3,1db3c <__sigtramp_r+0x84>
   1db00:	00040513          	mv	a0,s0
   1db04:	0007a023          	sw	zero,0(a5)
   1db08:	000700e7          	jalr	a4
   1db0c:	00000513          	li	a0,0
   1db10:	00c12083          	lw	ra,12(sp)
   1db14:	00812403          	lw	s0,8(sp)
   1db18:	00412483          	lw	s1,4(sp)
   1db1c:	01010113          	add	sp,sp,16
   1db20:	00008067          	ret
   1db24:	00c12083          	lw	ra,12(sp)
   1db28:	00812403          	lw	s0,8(sp)
   1db2c:	00412483          	lw	s1,4(sp)
   1db30:	00100513          	li	a0,1
   1db34:	01010113          	add	sp,sp,16
   1db38:	00008067          	ret
   1db3c:	00c12083          	lw	ra,12(sp)
   1db40:	00812403          	lw	s0,8(sp)
   1db44:	00412483          	lw	s1,4(sp)
   1db48:	00300513          	li	a0,3
   1db4c:	01010113          	add	sp,sp,16
   1db50:	00008067          	ret
   1db54:	00200513          	li	a0,2
   1db58:	fb9ff06f          	j	1db10 <__sigtramp_r+0x58>
   1db5c:	08000593          	li	a1,128
   1db60:	a61f30ef          	jal	115c0 <_malloc_r>
   1db64:	10a4ac23          	sw	a0,280(s1)
   1db68:	00050793          	mv	a5,a0
   1db6c:	00050e63          	beqz	a0,1db88 <__sigtramp_r+0xd0>
   1db70:	00050713          	mv	a4,a0
   1db74:	08050693          	add	a3,a0,128
   1db78:	00072023          	sw	zero,0(a4)
   1db7c:	00470713          	add	a4,a4,4
   1db80:	fed71ce3          	bne	a4,a3,1db78 <__sigtramp_r+0xc0>
   1db84:	f5dff06f          	j	1dae0 <__sigtramp_r+0x28>
   1db88:	fff00513          	li	a0,-1
   1db8c:	f85ff06f          	j	1db10 <__sigtramp_r+0x58>
   1db90:	fff00513          	li	a0,-1
   1db94:	00008067          	ret

0001db98 <raise>:
   1db98:	ff010113          	add	sp,sp,-16
   1db9c:	00912223          	sw	s1,4(sp)
   1dba0:	00112623          	sw	ra,12(sp)
   1dba4:	01f00793          	li	a5,31
   1dba8:	f341a483          	lw	s1,-204(gp) # 23904 <_impure_ptr>
   1dbac:	08a7ee63          	bltu	a5,a0,1dc48 <raise+0xb0>
   1dbb0:	1184a783          	lw	a5,280(s1)
   1dbb4:	00812423          	sw	s0,8(sp)
   1dbb8:	00050413          	mv	s0,a0
   1dbbc:	04078263          	beqz	a5,1dc00 <raise+0x68>
   1dbc0:	00251713          	sll	a4,a0,0x2
   1dbc4:	00e787b3          	add	a5,a5,a4
   1dbc8:	0007a703          	lw	a4,0(a5)
   1dbcc:	02070a63          	beqz	a4,1dc00 <raise+0x68>
   1dbd0:	00100693          	li	a3,1
   1dbd4:	00d70a63          	beq	a4,a3,1dbe8 <raise+0x50>
   1dbd8:	fff00693          	li	a3,-1
   1dbdc:	04d70663          	beq	a4,a3,1dc28 <raise+0x90>
   1dbe0:	0007a023          	sw	zero,0(a5)
   1dbe4:	000700e7          	jalr	a4
   1dbe8:	00812403          	lw	s0,8(sp)
   1dbec:	00000513          	li	a0,0
   1dbf0:	00c12083          	lw	ra,12(sp)
   1dbf4:	00412483          	lw	s1,4(sp)
   1dbf8:	01010113          	add	sp,sp,16
   1dbfc:	00008067          	ret
   1dc00:	00048513          	mv	a0,s1
   1dc04:	290000ef          	jal	1de94 <_getpid_r>
   1dc08:	00040613          	mv	a2,s0
   1dc0c:	00812403          	lw	s0,8(sp)
   1dc10:	00c12083          	lw	ra,12(sp)
   1dc14:	00050593          	mv	a1,a0
   1dc18:	00048513          	mv	a0,s1
   1dc1c:	00412483          	lw	s1,4(sp)
   1dc20:	01010113          	add	sp,sp,16
   1dc24:	2180006f          	j	1de3c <_kill_r>
   1dc28:	00812403          	lw	s0,8(sp)
   1dc2c:	00c12083          	lw	ra,12(sp)
   1dc30:	01600793          	li	a5,22
   1dc34:	00f4a023          	sw	a5,0(s1)
   1dc38:	00100513          	li	a0,1
   1dc3c:	00412483          	lw	s1,4(sp)
   1dc40:	01010113          	add	sp,sp,16
   1dc44:	00008067          	ret
   1dc48:	01600793          	li	a5,22
   1dc4c:	00f4a023          	sw	a5,0(s1)
   1dc50:	fff00513          	li	a0,-1
   1dc54:	f9dff06f          	j	1dbf0 <raise+0x58>

0001dc58 <signal>:
   1dc58:	ff010113          	add	sp,sp,-16
   1dc5c:	01212023          	sw	s2,0(sp)
   1dc60:	00112623          	sw	ra,12(sp)
   1dc64:	01f00793          	li	a5,31
   1dc68:	f341a903          	lw	s2,-204(gp) # 23904 <_impure_ptr>
   1dc6c:	04a7e263          	bltu	a5,a0,1dcb0 <signal+0x58>
   1dc70:	00812423          	sw	s0,8(sp)
   1dc74:	00050413          	mv	s0,a0
   1dc78:	11892503          	lw	a0,280(s2)
   1dc7c:	00912223          	sw	s1,4(sp)
   1dc80:	00058493          	mv	s1,a1
   1dc84:	02050e63          	beqz	a0,1dcc0 <signal+0x68>
   1dc88:	00241413          	sll	s0,s0,0x2
   1dc8c:	008507b3          	add	a5,a0,s0
   1dc90:	0007a503          	lw	a0,0(a5)
   1dc94:	00812403          	lw	s0,8(sp)
   1dc98:	0097a023          	sw	s1,0(a5)
   1dc9c:	00412483          	lw	s1,4(sp)
   1dca0:	00c12083          	lw	ra,12(sp)
   1dca4:	00012903          	lw	s2,0(sp)
   1dca8:	01010113          	add	sp,sp,16
   1dcac:	00008067          	ret
   1dcb0:	01600793          	li	a5,22
   1dcb4:	00f92023          	sw	a5,0(s2)
   1dcb8:	fff00513          	li	a0,-1
   1dcbc:	fe5ff06f          	j	1dca0 <signal+0x48>
   1dcc0:	08000593          	li	a1,128
   1dcc4:	00090513          	mv	a0,s2
   1dcc8:	8f9f30ef          	jal	115c0 <_malloc_r>
   1dccc:	10a92c23          	sw	a0,280(s2)
   1dcd0:	00050793          	mv	a5,a0
   1dcd4:	08050713          	add	a4,a0,128
   1dcd8:	00050a63          	beqz	a0,1dcec <signal+0x94>
   1dcdc:	0007a023          	sw	zero,0(a5)
   1dce0:	00478793          	add	a5,a5,4
   1dce4:	fef71ce3          	bne	a4,a5,1dcdc <signal+0x84>
   1dce8:	fa1ff06f          	j	1dc88 <signal+0x30>
   1dcec:	00812403          	lw	s0,8(sp)
   1dcf0:	00412483          	lw	s1,4(sp)
   1dcf4:	fff00513          	li	a0,-1
   1dcf8:	fa9ff06f          	j	1dca0 <signal+0x48>

0001dcfc <_init_signal>:
   1dcfc:	ff010113          	add	sp,sp,-16
   1dd00:	00812423          	sw	s0,8(sp)
   1dd04:	f341a403          	lw	s0,-204(gp) # 23904 <_impure_ptr>
   1dd08:	11842783          	lw	a5,280(s0)
   1dd0c:	00112623          	sw	ra,12(sp)
   1dd10:	00078c63          	beqz	a5,1dd28 <_init_signal+0x2c>
   1dd14:	00000513          	li	a0,0
   1dd18:	00c12083          	lw	ra,12(sp)
   1dd1c:	00812403          	lw	s0,8(sp)
   1dd20:	01010113          	add	sp,sp,16
   1dd24:	00008067          	ret
   1dd28:	08000593          	li	a1,128
   1dd2c:	00040513          	mv	a0,s0
   1dd30:	891f30ef          	jal	115c0 <_malloc_r>
   1dd34:	10a42c23          	sw	a0,280(s0)
   1dd38:	00050c63          	beqz	a0,1dd50 <_init_signal+0x54>
   1dd3c:	08050793          	add	a5,a0,128
   1dd40:	00052023          	sw	zero,0(a0)
   1dd44:	00450513          	add	a0,a0,4
   1dd48:	fef51ce3          	bne	a0,a5,1dd40 <_init_signal+0x44>
   1dd4c:	fc9ff06f          	j	1dd14 <_init_signal+0x18>
   1dd50:	fff00513          	li	a0,-1
   1dd54:	fc5ff06f          	j	1dd18 <_init_signal+0x1c>

0001dd58 <__sigtramp>:
   1dd58:	ff010113          	add	sp,sp,-16
   1dd5c:	00912223          	sw	s1,4(sp)
   1dd60:	00112623          	sw	ra,12(sp)
   1dd64:	01f00793          	li	a5,31
   1dd68:	f341a483          	lw	s1,-204(gp) # 23904 <_impure_ptr>
   1dd6c:	0ca7e463          	bltu	a5,a0,1de34 <__sigtramp+0xdc>
   1dd70:	1184a783          	lw	a5,280(s1)
   1dd74:	00812423          	sw	s0,8(sp)
   1dd78:	00050413          	mv	s0,a0
   1dd7c:	08078263          	beqz	a5,1de00 <__sigtramp+0xa8>
   1dd80:	00241713          	sll	a4,s0,0x2
   1dd84:	00e787b3          	add	a5,a5,a4
   1dd88:	0007a703          	lw	a4,0(a5)
   1dd8c:	02070c63          	beqz	a4,1ddc4 <__sigtramp+0x6c>
   1dd90:	fff00693          	li	a3,-1
   1dd94:	06d70063          	beq	a4,a3,1ddf4 <__sigtramp+0x9c>
   1dd98:	00100693          	li	a3,1
   1dd9c:	04d70063          	beq	a4,a3,1dddc <__sigtramp+0x84>
   1dda0:	00040513          	mv	a0,s0
   1dda4:	0007a023          	sw	zero,0(a5)
   1dda8:	000700e7          	jalr	a4
   1ddac:	00812403          	lw	s0,8(sp)
   1ddb0:	00000513          	li	a0,0
   1ddb4:	00c12083          	lw	ra,12(sp)
   1ddb8:	00412483          	lw	s1,4(sp)
   1ddbc:	01010113          	add	sp,sp,16
   1ddc0:	00008067          	ret
   1ddc4:	00812403          	lw	s0,8(sp)
   1ddc8:	00c12083          	lw	ra,12(sp)
   1ddcc:	00412483          	lw	s1,4(sp)
   1ddd0:	00100513          	li	a0,1
   1ddd4:	01010113          	add	sp,sp,16
   1ddd8:	00008067          	ret
   1dddc:	00812403          	lw	s0,8(sp)
   1dde0:	00c12083          	lw	ra,12(sp)
   1dde4:	00412483          	lw	s1,4(sp)
   1dde8:	00300513          	li	a0,3
   1ddec:	01010113          	add	sp,sp,16
   1ddf0:	00008067          	ret
   1ddf4:	00812403          	lw	s0,8(sp)
   1ddf8:	00200513          	li	a0,2
   1ddfc:	fb9ff06f          	j	1ddb4 <__sigtramp+0x5c>
   1de00:	08000593          	li	a1,128
   1de04:	00048513          	mv	a0,s1
   1de08:	fb8f30ef          	jal	115c0 <_malloc_r>
   1de0c:	10a4ac23          	sw	a0,280(s1)
   1de10:	00050793          	mv	a5,a0
   1de14:	00050e63          	beqz	a0,1de30 <__sigtramp+0xd8>
   1de18:	00050713          	mv	a4,a0
   1de1c:	08050693          	add	a3,a0,128
   1de20:	00072023          	sw	zero,0(a4)
   1de24:	00470713          	add	a4,a4,4
   1de28:	fee69ce3          	bne	a3,a4,1de20 <__sigtramp+0xc8>
   1de2c:	f55ff06f          	j	1dd80 <__sigtramp+0x28>
   1de30:	00812403          	lw	s0,8(sp)
   1de34:	fff00513          	li	a0,-1
   1de38:	f7dff06f          	j	1ddb4 <__sigtramp+0x5c>

0001de3c <_kill_r>:
   1de3c:	ff010113          	add	sp,sp,-16
   1de40:	00058713          	mv	a4,a1
   1de44:	00812423          	sw	s0,8(sp)
   1de48:	00060593          	mv	a1,a2
   1de4c:	00050413          	mv	s0,a0
   1de50:	00070513          	mv	a0,a4
   1de54:	f401a823          	sw	zero,-176(gp) # 23920 <errno>
   1de58:	00112623          	sw	ra,12(sp)
   1de5c:	158000ef          	jal	1dfb4 <_kill>
   1de60:	fff00793          	li	a5,-1
   1de64:	00f50a63          	beq	a0,a5,1de78 <_kill_r+0x3c>
   1de68:	00c12083          	lw	ra,12(sp)
   1de6c:	00812403          	lw	s0,8(sp)
   1de70:	01010113          	add	sp,sp,16
   1de74:	00008067          	ret
   1de78:	f501a783          	lw	a5,-176(gp) # 23920 <errno>
   1de7c:	fe0786e3          	beqz	a5,1de68 <_kill_r+0x2c>
   1de80:	00c12083          	lw	ra,12(sp)
   1de84:	00f42023          	sw	a5,0(s0)
   1de88:	00812403          	lw	s0,8(sp)
   1de8c:	01010113          	add	sp,sp,16
   1de90:	00008067          	ret

0001de94 <_getpid_r>:
   1de94:	0d80006f          	j	1df6c <_getpid>

0001de98 <_close>:
   1de98:	ff010113          	add	sp,sp,-16
   1de9c:	00112623          	sw	ra,12(sp)
   1dea0:	00812423          	sw	s0,8(sp)
   1dea4:	03900893          	li	a7,57
   1dea8:	00000073          	ecall
   1deac:	00050413          	mv	s0,a0
   1deb0:	00054c63          	bltz	a0,1dec8 <_close+0x30>
   1deb4:	00c12083          	lw	ra,12(sp)
   1deb8:	00040513          	mv	a0,s0
   1debc:	00812403          	lw	s0,8(sp)
   1dec0:	01010113          	add	sp,sp,16
   1dec4:	00008067          	ret
   1dec8:	40800433          	neg	s0,s0
   1decc:	d70ff0ef          	jal	1d43c <__errno>
   1ded0:	00852023          	sw	s0,0(a0)
   1ded4:	fff00413          	li	s0,-1
   1ded8:	fddff06f          	j	1deb4 <_close+0x1c>

0001dedc <_exit>:
   1dedc:	05d00893          	li	a7,93
   1dee0:	00000073          	ecall
   1dee4:	00054463          	bltz	a0,1deec <_exit+0x10>
   1dee8:	0000006f          	j	1dee8 <_exit+0xc>
   1deec:	ff010113          	add	sp,sp,-16
   1def0:	00812423          	sw	s0,8(sp)
   1def4:	00050413          	mv	s0,a0
   1def8:	00112623          	sw	ra,12(sp)
   1defc:	40800433          	neg	s0,s0
   1df00:	d3cff0ef          	jal	1d43c <__errno>
   1df04:	00852023          	sw	s0,0(a0)
   1df08:	0000006f          	j	1df08 <_exit+0x2c>

0001df0c <_fstat>:
   1df0c:	f7010113          	add	sp,sp,-144
   1df10:	08912223          	sw	s1,132(sp)
   1df14:	08112623          	sw	ra,140(sp)
   1df18:	00058493          	mv	s1,a1
   1df1c:	08812423          	sw	s0,136(sp)
   1df20:	05000893          	li	a7,80
   1df24:	00010593          	mv	a1,sp
   1df28:	00000073          	ecall
   1df2c:	00050413          	mv	s0,a0
   1df30:	02054463          	bltz	a0,1df58 <_fstat+0x4c>
   1df34:	00048513          	mv	a0,s1
   1df38:	00010593          	mv	a1,sp
   1df3c:	1e4000ef          	jal	1e120 <_conv_stat>
   1df40:	08c12083          	lw	ra,140(sp)
   1df44:	00040513          	mv	a0,s0
   1df48:	08812403          	lw	s0,136(sp)
   1df4c:	08412483          	lw	s1,132(sp)
   1df50:	09010113          	add	sp,sp,144
   1df54:	00008067          	ret
   1df58:	40800433          	neg	s0,s0
   1df5c:	ce0ff0ef          	jal	1d43c <__errno>
   1df60:	00852023          	sw	s0,0(a0)
   1df64:	fff00413          	li	s0,-1
   1df68:	fcdff06f          	j	1df34 <_fstat+0x28>

0001df6c <_getpid>:
   1df6c:	00100513          	li	a0,1
   1df70:	00008067          	ret

0001df74 <_isatty>:
   1df74:	f9010113          	add	sp,sp,-112
   1df78:	00810593          	add	a1,sp,8
   1df7c:	06112623          	sw	ra,108(sp)
   1df80:	f8dff0ef          	jal	1df0c <_fstat>
   1df84:	fff00793          	li	a5,-1
   1df88:	00f50e63          	beq	a0,a5,1dfa4 <_isatty+0x30>
   1df8c:	00c12503          	lw	a0,12(sp)
   1df90:	06c12083          	lw	ra,108(sp)
   1df94:	00d55513          	srl	a0,a0,0xd
   1df98:	00157513          	and	a0,a0,1
   1df9c:	07010113          	add	sp,sp,112
   1dfa0:	00008067          	ret
   1dfa4:	06c12083          	lw	ra,108(sp)
   1dfa8:	00000513          	li	a0,0
   1dfac:	07010113          	add	sp,sp,112
   1dfb0:	00008067          	ret

0001dfb4 <_kill>:
   1dfb4:	ff010113          	add	sp,sp,-16
   1dfb8:	00112623          	sw	ra,12(sp)
   1dfbc:	c80ff0ef          	jal	1d43c <__errno>
   1dfc0:	00c12083          	lw	ra,12(sp)
   1dfc4:	01600793          	li	a5,22
   1dfc8:	00f52023          	sw	a5,0(a0)
   1dfcc:	fff00513          	li	a0,-1
   1dfd0:	01010113          	add	sp,sp,16
   1dfd4:	00008067          	ret

0001dfd8 <_lseek>:
   1dfd8:	ff010113          	add	sp,sp,-16
   1dfdc:	00112623          	sw	ra,12(sp)
   1dfe0:	00812423          	sw	s0,8(sp)
   1dfe4:	03e00893          	li	a7,62
   1dfe8:	00000073          	ecall
   1dfec:	00050413          	mv	s0,a0
   1dff0:	00054c63          	bltz	a0,1e008 <_lseek+0x30>
   1dff4:	00c12083          	lw	ra,12(sp)
   1dff8:	00040513          	mv	a0,s0
   1dffc:	00812403          	lw	s0,8(sp)
   1e000:	01010113          	add	sp,sp,16
   1e004:	00008067          	ret
   1e008:	40800433          	neg	s0,s0
   1e00c:	c30ff0ef          	jal	1d43c <__errno>
   1e010:	00852023          	sw	s0,0(a0)
   1e014:	fff00413          	li	s0,-1
   1e018:	fddff06f          	j	1dff4 <_lseek+0x1c>

0001e01c <_read>:
   1e01c:	ff010113          	add	sp,sp,-16
   1e020:	00112623          	sw	ra,12(sp)
   1e024:	00812423          	sw	s0,8(sp)
   1e028:	03f00893          	li	a7,63
   1e02c:	00000073          	ecall
   1e030:	00050413          	mv	s0,a0
   1e034:	00054c63          	bltz	a0,1e04c <_read+0x30>
   1e038:	00c12083          	lw	ra,12(sp)
   1e03c:	00040513          	mv	a0,s0
   1e040:	00812403          	lw	s0,8(sp)
   1e044:	01010113          	add	sp,sp,16
   1e048:	00008067          	ret
   1e04c:	40800433          	neg	s0,s0
   1e050:	becff0ef          	jal	1d43c <__errno>
   1e054:	00852023          	sw	s0,0(a0)
   1e058:	fff00413          	li	s0,-1
   1e05c:	fddff06f          	j	1e038 <_read+0x1c>

0001e060 <_sbrk>:
   1e060:	f8c18693          	add	a3,gp,-116 # 2395c <heap_end.0>
   1e064:	0006a703          	lw	a4,0(a3)
   1e068:	ff010113          	add	sp,sp,-16
   1e06c:	00112623          	sw	ra,12(sp)
   1e070:	00050793          	mv	a5,a0
   1e074:	02071063          	bnez	a4,1e094 <_sbrk+0x34>
   1e078:	0d600893          	li	a7,214
   1e07c:	00000513          	li	a0,0
   1e080:	00000073          	ecall
   1e084:	fff00613          	li	a2,-1
   1e088:	00050713          	mv	a4,a0
   1e08c:	02c50a63          	beq	a0,a2,1e0c0 <_sbrk+0x60>
   1e090:	00a6a023          	sw	a0,0(a3)
   1e094:	0d600893          	li	a7,214
   1e098:	00e78533          	add	a0,a5,a4
   1e09c:	00000073          	ecall
   1e0a0:	0006a703          	lw	a4,0(a3)
   1e0a4:	00e787b3          	add	a5,a5,a4
   1e0a8:	00f51c63          	bne	a0,a5,1e0c0 <_sbrk+0x60>
   1e0ac:	00c12083          	lw	ra,12(sp)
   1e0b0:	00a6a023          	sw	a0,0(a3)
   1e0b4:	00070513          	mv	a0,a4
   1e0b8:	01010113          	add	sp,sp,16
   1e0bc:	00008067          	ret
   1e0c0:	b7cff0ef          	jal	1d43c <__errno>
   1e0c4:	00c12083          	lw	ra,12(sp)
   1e0c8:	00c00793          	li	a5,12
   1e0cc:	00f52023          	sw	a5,0(a0)
   1e0d0:	fff00513          	li	a0,-1
   1e0d4:	01010113          	add	sp,sp,16
   1e0d8:	00008067          	ret

0001e0dc <_write>:
   1e0dc:	ff010113          	add	sp,sp,-16
   1e0e0:	00112623          	sw	ra,12(sp)
   1e0e4:	00812423          	sw	s0,8(sp)
   1e0e8:	04000893          	li	a7,64
   1e0ec:	00000073          	ecall
   1e0f0:	00050413          	mv	s0,a0
   1e0f4:	00054c63          	bltz	a0,1e10c <_write+0x30>
   1e0f8:	00c12083          	lw	ra,12(sp)
   1e0fc:	00040513          	mv	a0,s0
   1e100:	00812403          	lw	s0,8(sp)
   1e104:	01010113          	add	sp,sp,16
   1e108:	00008067          	ret
   1e10c:	40800433          	neg	s0,s0
   1e110:	b2cff0ef          	jal	1d43c <__errno>
   1e114:	00852023          	sw	s0,0(a0)
   1e118:	fff00413          	li	s0,-1
   1e11c:	fddff06f          	j	1e0f8 <_write+0x1c>

0001e120 <_conv_stat>:
   1e120:	0185d703          	lhu	a4,24(a1)
   1e124:	0145d783          	lhu	a5,20(a1)
   1e128:	ff010113          	add	sp,sp,-16
   1e12c:	01c5a283          	lw	t0,28(a1)
   1e130:	0205af83          	lw	t6,32(a1)
   1e134:	0305af03          	lw	t5,48(a1)
   1e138:	0405ae83          	lw	t4,64(a1)
   1e13c:	0385ae03          	lw	t3,56(a1)
   1e140:	0485a303          	lw	t1,72(a1)
   1e144:	04c5a383          	lw	t2,76(a1)
   1e148:	0585a803          	lw	a6,88(a1)
   1e14c:	05c5a883          	lw	a7,92(a1)
   1e150:	00812623          	sw	s0,12(sp)
   1e154:	00912423          	sw	s1,8(sp)
   1e158:	0105a403          	lw	s0,16(a1)
   1e15c:	0085a483          	lw	s1,8(a1)
   1e160:	01212223          	sw	s2,4(sp)
   1e164:	0005a903          	lw	s2,0(a1)
   1e168:	0685a603          	lw	a2,104(a1)
   1e16c:	01071713          	sll	a4,a4,0x10
   1e170:	00e7e7b3          	or	a5,a5,a4
   1e174:	06c5a683          	lw	a3,108(a1)
   1e178:	01251023          	sh	s2,0(a0)
   1e17c:	00951123          	sh	s1,2(a0)
   1e180:	00852223          	sw	s0,4(a0)
   1e184:	00f52423          	sw	a5,8(a0)
   1e188:	00551623          	sh	t0,12(a0)
   1e18c:	01f51723          	sh	t6,14(a0)
   1e190:	01e52823          	sw	t5,16(a0)
   1e194:	05d52623          	sw	t4,76(a0)
   1e198:	05c52423          	sw	t3,72(a0)
   1e19c:	00652c23          	sw	t1,24(a0)
   1e1a0:	00752e23          	sw	t2,28(a0)
   1e1a4:	03052423          	sw	a6,40(a0)
   1e1a8:	03152623          	sw	a7,44(a0)
   1e1ac:	02c52c23          	sw	a2,56(a0)
   1e1b0:	00c12403          	lw	s0,12(sp)
   1e1b4:	02d52e23          	sw	a3,60(a0)
   1e1b8:	00812483          	lw	s1,8(sp)
   1e1bc:	00412903          	lw	s2,4(sp)
   1e1c0:	01010113          	add	sp,sp,16
   1e1c4:	00008067          	ret

0001e1c8 <__udivdi3>:
   1e1c8:	fd010113          	add	sp,sp,-48
   1e1cc:	01312e23          	sw	s3,28(sp)
   1e1d0:	02112623          	sw	ra,44(sp)
   1e1d4:	01612823          	sw	s6,16(sp)
   1e1d8:	00050993          	mv	s3,a0
   1e1dc:	16069663          	bnez	a3,1e348 <__udivdi3+0x180>
   1e1e0:	02812423          	sw	s0,40(sp)
   1e1e4:	01512a23          	sw	s5,20(sp)
   1e1e8:	02912223          	sw	s1,36(sp)
   1e1ec:	03212023          	sw	s2,32(sp)
   1e1f0:	01412c23          	sw	s4,24(sp)
   1e1f4:	00060a93          	mv	s5,a2
   1e1f8:	00050413          	mv	s0,a0
   1e1fc:	1cc5f063          	bgeu	a1,a2,1e3bc <__udivdi3+0x1f4>
   1e200:	000107b7          	lui	a5,0x10
   1e204:	00058493          	mv	s1,a1
   1e208:	2af66e63          	bltu	a2,a5,1e4c4 <__udivdi3+0x2fc>
   1e20c:	010007b7          	lui	a5,0x1000
   1e210:	01800713          	li	a4,24
   1e214:	00f67463          	bgeu	a2,a5,1e21c <__udivdi3+0x54>
   1e218:	01000713          	li	a4,16
   1e21c:	00e656b3          	srl	a3,a2,a4
   1e220:	00004797          	auipc	a5,0x4
   1e224:	5cc78793          	add	a5,a5,1484 # 227ec <__clz_tab>
   1e228:	00d787b3          	add	a5,a5,a3
   1e22c:	0007c783          	lbu	a5,0(a5)
   1e230:	02000693          	li	a3,32
   1e234:	00e787b3          	add	a5,a5,a4
   1e238:	40f68733          	sub	a4,a3,a5
   1e23c:	00f68c63          	beq	a3,a5,1e254 <__udivdi3+0x8c>
   1e240:	00e594b3          	sll	s1,a1,a4
   1e244:	00f9d7b3          	srl	a5,s3,a5
   1e248:	00e61ab3          	sll	s5,a2,a4
   1e24c:	0097e4b3          	or	s1,a5,s1
   1e250:	00e99433          	sll	s0,s3,a4
   1e254:	010ada13          	srl	s4,s5,0x10
   1e258:	000a0593          	mv	a1,s4
   1e25c:	00048513          	mv	a0,s1
   1e260:	010a9b13          	sll	s6,s5,0x10
   1e264:	764030ef          	jal	219c8 <__hidden___udivsi3>
   1e268:	010b5b13          	srl	s6,s6,0x10
   1e26c:	00050593          	mv	a1,a0
   1e270:	00050913          	mv	s2,a0
   1e274:	000b0513          	mv	a0,s6
   1e278:	724030ef          	jal	2199c <__mulsi3>
   1e27c:	00050793          	mv	a5,a0
   1e280:	000a0593          	mv	a1,s4
   1e284:	00048513          	mv	a0,s1
   1e288:	00078493          	mv	s1,a5
   1e28c:	784030ef          	jal	21a10 <__umodsi3>
   1e290:	01051513          	sll	a0,a0,0x10
   1e294:	01045793          	srl	a5,s0,0x10
   1e298:	00a7e7b3          	or	a5,a5,a0
   1e29c:	0097fc63          	bgeu	a5,s1,1e2b4 <__udivdi3+0xec>
   1e2a0:	00fa87b3          	add	a5,s5,a5
   1e2a4:	fff90713          	add	a4,s2,-1
   1e2a8:	0157e463          	bltu	a5,s5,1e2b0 <__udivdi3+0xe8>
   1e2ac:	5a97e863          	bltu	a5,s1,1e85c <__udivdi3+0x694>
   1e2b0:	00070913          	mv	s2,a4
   1e2b4:	409784b3          	sub	s1,a5,s1
   1e2b8:	000a0593          	mv	a1,s4
   1e2bc:	00048513          	mv	a0,s1
   1e2c0:	708030ef          	jal	219c8 <__hidden___udivsi3>
   1e2c4:	00050593          	mv	a1,a0
   1e2c8:	00050993          	mv	s3,a0
   1e2cc:	000b0513          	mv	a0,s6
   1e2d0:	6cc030ef          	jal	2199c <__mulsi3>
   1e2d4:	00050793          	mv	a5,a0
   1e2d8:	000a0593          	mv	a1,s4
   1e2dc:	00048513          	mv	a0,s1
   1e2e0:	01041413          	sll	s0,s0,0x10
   1e2e4:	00078493          	mv	s1,a5
   1e2e8:	728030ef          	jal	21a10 <__umodsi3>
   1e2ec:	01051513          	sll	a0,a0,0x10
   1e2f0:	01045413          	srl	s0,s0,0x10
   1e2f4:	00a46433          	or	s0,s0,a0
   1e2f8:	00947c63          	bgeu	s0,s1,1e310 <__udivdi3+0x148>
   1e2fc:	008a8433          	add	s0,s5,s0
   1e300:	fff98793          	add	a5,s3,-1
   1e304:	4d546e63          	bltu	s0,s5,1e7e0 <__udivdi3+0x618>
   1e308:	ffe98993          	add	s3,s3,-2
   1e30c:	4c947a63          	bgeu	s0,s1,1e7e0 <__udivdi3+0x618>
   1e310:	01091613          	sll	a2,s2,0x10
   1e314:	01366533          	or	a0,a2,s3
   1e318:	00000b13          	li	s6,0
   1e31c:	02812403          	lw	s0,40(sp)
   1e320:	02c12083          	lw	ra,44(sp)
   1e324:	02412483          	lw	s1,36(sp)
   1e328:	02012903          	lw	s2,32(sp)
   1e32c:	01812a03          	lw	s4,24(sp)
   1e330:	01412a83          	lw	s5,20(sp)
   1e334:	01c12983          	lw	s3,28(sp)
   1e338:	000b0593          	mv	a1,s6
   1e33c:	01012b03          	lw	s6,16(sp)
   1e340:	03010113          	add	sp,sp,48
   1e344:	00008067          	ret
   1e348:	02d5f263          	bgeu	a1,a3,1e36c <__udivdi3+0x1a4>
   1e34c:	00000b13          	li	s6,0
   1e350:	00000513          	li	a0,0
   1e354:	02c12083          	lw	ra,44(sp)
   1e358:	01c12983          	lw	s3,28(sp)
   1e35c:	000b0593          	mv	a1,s6
   1e360:	01012b03          	lw	s6,16(sp)
   1e364:	03010113          	add	sp,sp,48
   1e368:	00008067          	ret
   1e36c:	000107b7          	lui	a5,0x10
   1e370:	26f6ee63          	bltu	a3,a5,1e5ec <__udivdi3+0x424>
   1e374:	01000737          	lui	a4,0x1000
   1e378:	01800793          	li	a5,24
   1e37c:	00e6f463          	bgeu	a3,a4,1e384 <__udivdi3+0x1bc>
   1e380:	01000793          	li	a5,16
   1e384:	00f6d533          	srl	a0,a3,a5
   1e388:	00004717          	auipc	a4,0x4
   1e38c:	46470713          	add	a4,a4,1124 # 227ec <__clz_tab>
   1e390:	00a70733          	add	a4,a4,a0
   1e394:	00074703          	lbu	a4,0(a4)
   1e398:	02000513          	li	a0,32
   1e39c:	00f70733          	add	a4,a4,a5
   1e3a0:	40e50b33          	sub	s6,a0,a4
   1e3a4:	26e51c63          	bne	a0,a4,1e61c <__udivdi3+0x454>
   1e3a8:	46b6ee63          	bltu	a3,a1,1e824 <__udivdi3+0x65c>
   1e3ac:	00c9b533          	sltu	a0,s3,a2
   1e3b0:	00153513          	seqz	a0,a0
   1e3b4:	00000b13          	li	s6,0
   1e3b8:	f9dff06f          	j	1e354 <__udivdi3+0x18c>
   1e3bc:	10060c63          	beqz	a2,1e4d4 <__udivdi3+0x30c>
   1e3c0:	000107b7          	lui	a5,0x10
   1e3c4:	44f67663          	bgeu	a2,a5,1e810 <__udivdi3+0x648>
   1e3c8:	10063713          	sltiu	a4,a2,256
   1e3cc:	00173713          	seqz	a4,a4
   1e3d0:	00371713          	sll	a4,a4,0x3
   1e3d4:	00e656b3          	srl	a3,a2,a4
   1e3d8:	00004797          	auipc	a5,0x4
   1e3dc:	41478793          	add	a5,a5,1044 # 227ec <__clz_tab>
   1e3e0:	00d787b3          	add	a5,a5,a3
   1e3e4:	0007c483          	lbu	s1,0(a5)
   1e3e8:	02000793          	li	a5,32
   1e3ec:	00e484b3          	add	s1,s1,a4
   1e3f0:	40978733          	sub	a4,a5,s1
   1e3f4:	10979463          	bne	a5,s1,1e4fc <__udivdi3+0x334>
   1e3f8:	01061a13          	sll	s4,a2,0x10
   1e3fc:	40c584b3          	sub	s1,a1,a2
   1e400:	01065913          	srl	s2,a2,0x10
   1e404:	010a5a13          	srl	s4,s4,0x10
   1e408:	00100b13          	li	s6,1
   1e40c:	00090593          	mv	a1,s2
   1e410:	00048513          	mv	a0,s1
   1e414:	5b4030ef          	jal	219c8 <__hidden___udivsi3>
   1e418:	000a0593          	mv	a1,s4
   1e41c:	00050993          	mv	s3,a0
   1e420:	57c030ef          	jal	2199c <__mulsi3>
   1e424:	00050793          	mv	a5,a0
   1e428:	00090593          	mv	a1,s2
   1e42c:	00048513          	mv	a0,s1
   1e430:	00078493          	mv	s1,a5
   1e434:	5dc030ef          	jal	21a10 <__umodsi3>
   1e438:	01051513          	sll	a0,a0,0x10
   1e43c:	01045793          	srl	a5,s0,0x10
   1e440:	00a7e7b3          	or	a5,a5,a0
   1e444:	0097fc63          	bgeu	a5,s1,1e45c <__udivdi3+0x294>
   1e448:	00fa87b3          	add	a5,s5,a5
   1e44c:	fff98713          	add	a4,s3,-1
   1e450:	0157e463          	bltu	a5,s5,1e458 <__udivdi3+0x290>
   1e454:	3e97ee63          	bltu	a5,s1,1e850 <__udivdi3+0x688>
   1e458:	00070993          	mv	s3,a4
   1e45c:	409784b3          	sub	s1,a5,s1
   1e460:	00090593          	mv	a1,s2
   1e464:	00048513          	mv	a0,s1
   1e468:	560030ef          	jal	219c8 <__hidden___udivsi3>
   1e46c:	000a0593          	mv	a1,s4
   1e470:	00050a13          	mv	s4,a0
   1e474:	528030ef          	jal	2199c <__mulsi3>
   1e478:	00050793          	mv	a5,a0
   1e47c:	00090593          	mv	a1,s2
   1e480:	00048513          	mv	a0,s1
   1e484:	01041413          	sll	s0,s0,0x10
   1e488:	00078493          	mv	s1,a5
   1e48c:	584030ef          	jal	21a10 <__umodsi3>
   1e490:	01051513          	sll	a0,a0,0x10
   1e494:	01045413          	srl	s0,s0,0x10
   1e498:	00a46433          	or	s0,s0,a0
   1e49c:	00947e63          	bgeu	s0,s1,1e4b8 <__udivdi3+0x2f0>
   1e4a0:	008a8433          	add	s0,s5,s0
   1e4a4:	fffa0793          	add	a5,s4,-1
   1e4a8:	01546663          	bltu	s0,s5,1e4b4 <__udivdi3+0x2ec>
   1e4ac:	ffea0a13          	add	s4,s4,-2
   1e4b0:	00946463          	bltu	s0,s1,1e4b8 <__udivdi3+0x2f0>
   1e4b4:	00078a13          	mv	s4,a5
   1e4b8:	01099613          	sll	a2,s3,0x10
   1e4bc:	01466533          	or	a0,a2,s4
   1e4c0:	e5dff06f          	j	1e31c <__udivdi3+0x154>
   1e4c4:	10063713          	sltiu	a4,a2,256
   1e4c8:	00173713          	seqz	a4,a4
   1e4cc:	00371713          	sll	a4,a4,0x3
   1e4d0:	d4dff06f          	j	1e21c <__udivdi3+0x54>
   1e4d4:	00000693          	li	a3,0
   1e4d8:	00004797          	auipc	a5,0x4
   1e4dc:	31478793          	add	a5,a5,788 # 227ec <__clz_tab>
   1e4e0:	00d787b3          	add	a5,a5,a3
   1e4e4:	0007c483          	lbu	s1,0(a5)
   1e4e8:	00000713          	li	a4,0
   1e4ec:	02000793          	li	a5,32
   1e4f0:	00e484b3          	add	s1,s1,a4
   1e4f4:	40978733          	sub	a4,a5,s1
   1e4f8:	f09780e3          	beq	a5,s1,1e3f8 <__udivdi3+0x230>
   1e4fc:	00e61ab3          	sll	s5,a2,a4
   1e500:	01712623          	sw	s7,12(sp)
   1e504:	010ad913          	srl	s2,s5,0x10
   1e508:	0095dbb3          	srl	s7,a1,s1
   1e50c:	00e597b3          	sll	a5,a1,a4
   1e510:	0099d4b3          	srl	s1,s3,s1
   1e514:	00090593          	mv	a1,s2
   1e518:	000b8513          	mv	a0,s7
   1e51c:	010a9a13          	sll	s4,s5,0x10
   1e520:	00f4e4b3          	or	s1,s1,a5
   1e524:	00e99433          	sll	s0,s3,a4
   1e528:	010a5a13          	srl	s4,s4,0x10
   1e52c:	49c030ef          	jal	219c8 <__hidden___udivsi3>
   1e530:	00050593          	mv	a1,a0
   1e534:	00050b13          	mv	s6,a0
   1e538:	000a0513          	mv	a0,s4
   1e53c:	460030ef          	jal	2199c <__mulsi3>
   1e540:	00050993          	mv	s3,a0
   1e544:	00090593          	mv	a1,s2
   1e548:	000b8513          	mv	a0,s7
   1e54c:	4c4030ef          	jal	21a10 <__umodsi3>
   1e550:	01051513          	sll	a0,a0,0x10
   1e554:	0104d793          	srl	a5,s1,0x10
   1e558:	00a7e7b3          	or	a5,a5,a0
   1e55c:	0137fe63          	bgeu	a5,s3,1e578 <__udivdi3+0x3b0>
   1e560:	00fa87b3          	add	a5,s5,a5
   1e564:	fffb0713          	add	a4,s6,-1
   1e568:	2d57ec63          	bltu	a5,s5,1e840 <__udivdi3+0x678>
   1e56c:	2d37fa63          	bgeu	a5,s3,1e840 <__udivdi3+0x678>
   1e570:	ffeb0b13          	add	s6,s6,-2
   1e574:	015787b3          	add	a5,a5,s5
   1e578:	413789b3          	sub	s3,a5,s3
   1e57c:	00090593          	mv	a1,s2
   1e580:	00098513          	mv	a0,s3
   1e584:	444030ef          	jal	219c8 <__hidden___udivsi3>
   1e588:	00050593          	mv	a1,a0
   1e58c:	00050b93          	mv	s7,a0
   1e590:	000a0513          	mv	a0,s4
   1e594:	408030ef          	jal	2199c <__mulsi3>
   1e598:	00050793          	mv	a5,a0
   1e59c:	00090593          	mv	a1,s2
   1e5a0:	00098513          	mv	a0,s3
   1e5a4:	01049493          	sll	s1,s1,0x10
   1e5a8:	00078993          	mv	s3,a5
   1e5ac:	464030ef          	jal	21a10 <__umodsi3>
   1e5b0:	01051513          	sll	a0,a0,0x10
   1e5b4:	0104d493          	srl	s1,s1,0x10
   1e5b8:	00a4e4b3          	or	s1,s1,a0
   1e5bc:	0134fe63          	bgeu	s1,s3,1e5d8 <__udivdi3+0x410>
   1e5c0:	009a84b3          	add	s1,s5,s1
   1e5c4:	fffb8793          	add	a5,s7,-1
   1e5c8:	2754e463          	bltu	s1,s5,1e830 <__udivdi3+0x668>
   1e5cc:	2734f263          	bgeu	s1,s3,1e830 <__udivdi3+0x668>
   1e5d0:	ffeb8b93          	add	s7,s7,-2
   1e5d4:	015484b3          	add	s1,s1,s5
   1e5d8:	010b1b13          	sll	s6,s6,0x10
   1e5dc:	017b6b33          	or	s6,s6,s7
   1e5e0:	413484b3          	sub	s1,s1,s3
   1e5e4:	00c12b83          	lw	s7,12(sp)
   1e5e8:	e25ff06f          	j	1e40c <__udivdi3+0x244>
   1e5ec:	1006b793          	sltiu	a5,a3,256
   1e5f0:	0017b793          	seqz	a5,a5
   1e5f4:	00379793          	sll	a5,a5,0x3
   1e5f8:	00f6d533          	srl	a0,a3,a5
   1e5fc:	00004717          	auipc	a4,0x4
   1e600:	1f070713          	add	a4,a4,496 # 227ec <__clz_tab>
   1e604:	00a70733          	add	a4,a4,a0
   1e608:	00074703          	lbu	a4,0(a4)
   1e60c:	02000513          	li	a0,32
   1e610:	00f70733          	add	a4,a4,a5
   1e614:	40e50b33          	sub	s6,a0,a4
   1e618:	d8e508e3          	beq	a0,a4,1e3a8 <__udivdi3+0x1e0>
   1e61c:	016696b3          	sll	a3,a3,s6
   1e620:	01912223          	sw	s9,4(sp)
   1e624:	00e65cb3          	srl	s9,a2,a4
   1e628:	00dcecb3          	or	s9,s9,a3
   1e62c:	01512a23          	sw	s5,20(sp)
   1e630:	01712623          	sw	s7,12(sp)
   1e634:	010cda93          	srl	s5,s9,0x10
   1e638:	00e5dbb3          	srl	s7,a1,a4
   1e63c:	016597b3          	sll	a5,a1,s6
   1e640:	00e9d733          	srl	a4,s3,a4
   1e644:	01812423          	sw	s8,8(sp)
   1e648:	000a8593          	mv	a1,s5
   1e64c:	000b8513          	mv	a0,s7
   1e650:	010c9c13          	sll	s8,s9,0x10
   1e654:	02812423          	sw	s0,40(sp)
   1e658:	02912223          	sw	s1,36(sp)
   1e65c:	03212023          	sw	s2,32(sp)
   1e660:	00f764b3          	or	s1,a4,a5
   1e664:	01661933          	sll	s2,a2,s6
   1e668:	01412c23          	sw	s4,24(sp)
   1e66c:	010c5c13          	srl	s8,s8,0x10
   1e670:	358030ef          	jal	219c8 <__hidden___udivsi3>
   1e674:	00050593          	mv	a1,a0
   1e678:	00050413          	mv	s0,a0
   1e67c:	000c0513          	mv	a0,s8
   1e680:	31c030ef          	jal	2199c <__mulsi3>
   1e684:	00050a13          	mv	s4,a0
   1e688:	000a8593          	mv	a1,s5
   1e68c:	000b8513          	mv	a0,s7
   1e690:	380030ef          	jal	21a10 <__umodsi3>
   1e694:	01051513          	sll	a0,a0,0x10
   1e698:	0104d793          	srl	a5,s1,0x10
   1e69c:	00a7e7b3          	or	a5,a5,a0
   1e6a0:	0147fe63          	bgeu	a5,s4,1e6bc <__udivdi3+0x4f4>
   1e6a4:	00fc87b3          	add	a5,s9,a5
   1e6a8:	fff40713          	add	a4,s0,-1
   1e6ac:	1997ee63          	bltu	a5,s9,1e848 <__udivdi3+0x680>
   1e6b0:	1947fc63          	bgeu	a5,s4,1e848 <__udivdi3+0x680>
   1e6b4:	ffe40413          	add	s0,s0,-2
   1e6b8:	019787b3          	add	a5,a5,s9
   1e6bc:	41478a33          	sub	s4,a5,s4
   1e6c0:	000a8593          	mv	a1,s5
   1e6c4:	000a0513          	mv	a0,s4
   1e6c8:	300030ef          	jal	219c8 <__hidden___udivsi3>
   1e6cc:	00050593          	mv	a1,a0
   1e6d0:	00050b93          	mv	s7,a0
   1e6d4:	000c0513          	mv	a0,s8
   1e6d8:	2c4030ef          	jal	2199c <__mulsi3>
   1e6dc:	00050793          	mv	a5,a0
   1e6e0:	000a8593          	mv	a1,s5
   1e6e4:	000a0513          	mv	a0,s4
   1e6e8:	00078a13          	mv	s4,a5
   1e6ec:	324030ef          	jal	21a10 <__umodsi3>
   1e6f0:	01049713          	sll	a4,s1,0x10
   1e6f4:	01051513          	sll	a0,a0,0x10
   1e6f8:	01075713          	srl	a4,a4,0x10
   1e6fc:	00a76733          	or	a4,a4,a0
   1e700:	01477e63          	bgeu	a4,s4,1e71c <__udivdi3+0x554>
   1e704:	00ec8733          	add	a4,s9,a4
   1e708:	fffb8793          	add	a5,s7,-1
   1e70c:	13976663          	bltu	a4,s9,1e838 <__udivdi3+0x670>
   1e710:	13477463          	bgeu	a4,s4,1e838 <__udivdi3+0x670>
   1e714:	ffeb8b93          	add	s7,s7,-2
   1e718:	01970733          	add	a4,a4,s9
   1e71c:	00010e37          	lui	t3,0x10
   1e720:	01041413          	sll	s0,s0,0x10
   1e724:	01746433          	or	s0,s0,s7
   1e728:	fffe0793          	add	a5,t3,-1 # ffff <exit-0x95>
   1e72c:	00f47833          	and	a6,s0,a5
   1e730:	00f977b3          	and	a5,s2,a5
   1e734:	41470733          	sub	a4,a4,s4
   1e738:	01045e93          	srl	t4,s0,0x10
   1e73c:	01095913          	srl	s2,s2,0x10
   1e740:	00080513          	mv	a0,a6
   1e744:	00078593          	mv	a1,a5
   1e748:	254030ef          	jal	2199c <__mulsi3>
   1e74c:	00050313          	mv	t1,a0
   1e750:	00090593          	mv	a1,s2
   1e754:	00080513          	mv	a0,a6
   1e758:	244030ef          	jal	2199c <__mulsi3>
   1e75c:	00050813          	mv	a6,a0
   1e760:	00078593          	mv	a1,a5
   1e764:	000e8513          	mv	a0,t4
   1e768:	234030ef          	jal	2199c <__mulsi3>
   1e76c:	00050893          	mv	a7,a0
   1e770:	00090593          	mv	a1,s2
   1e774:	000e8513          	mv	a0,t4
   1e778:	224030ef          	jal	2199c <__mulsi3>
   1e77c:	01035793          	srl	a5,t1,0x10
   1e780:	01180833          	add	a6,a6,a7
   1e784:	010787b3          	add	a5,a5,a6
   1e788:	0117f463          	bgeu	a5,a7,1e790 <__udivdi3+0x5c8>
   1e78c:	01c50533          	add	a0,a0,t3
   1e790:	0107d693          	srl	a3,a5,0x10
   1e794:	00a686b3          	add	a3,a3,a0
   1e798:	06d76863          	bltu	a4,a3,1e808 <__udivdi3+0x640>
   1e79c:	04d70663          	beq	a4,a3,1e7e8 <__udivdi3+0x620>
   1e7a0:	00040513          	mv	a0,s0
   1e7a4:	02812403          	lw	s0,40(sp)
   1e7a8:	02c12083          	lw	ra,44(sp)
   1e7ac:	00000b13          	li	s6,0
   1e7b0:	02412483          	lw	s1,36(sp)
   1e7b4:	02012903          	lw	s2,32(sp)
   1e7b8:	01812a03          	lw	s4,24(sp)
   1e7bc:	01412a83          	lw	s5,20(sp)
   1e7c0:	00c12b83          	lw	s7,12(sp)
   1e7c4:	00812c03          	lw	s8,8(sp)
   1e7c8:	00412c83          	lw	s9,4(sp)
   1e7cc:	01c12983          	lw	s3,28(sp)
   1e7d0:	000b0593          	mv	a1,s6
   1e7d4:	01012b03          	lw	s6,16(sp)
   1e7d8:	03010113          	add	sp,sp,48
   1e7dc:	00008067          	ret
   1e7e0:	00078993          	mv	s3,a5
   1e7e4:	b2dff06f          	j	1e310 <__udivdi3+0x148>
   1e7e8:	00010737          	lui	a4,0x10
   1e7ec:	fff70713          	add	a4,a4,-1 # ffff <exit-0x95>
   1e7f0:	00e7f7b3          	and	a5,a5,a4
   1e7f4:	01079793          	sll	a5,a5,0x10
   1e7f8:	00e37333          	and	t1,t1,a4
   1e7fc:	01699533          	sll	a0,s3,s6
   1e800:	006787b3          	add	a5,a5,t1
   1e804:	f8f57ee3          	bgeu	a0,a5,1e7a0 <__udivdi3+0x5d8>
   1e808:	fff40513          	add	a0,s0,-1
   1e80c:	f99ff06f          	j	1e7a4 <__udivdi3+0x5dc>
   1e810:	010007b7          	lui	a5,0x1000
   1e814:	04f67a63          	bgeu	a2,a5,1e868 <__udivdi3+0x6a0>
   1e818:	01065693          	srl	a3,a2,0x10
   1e81c:	01000713          	li	a4,16
   1e820:	bb9ff06f          	j	1e3d8 <__udivdi3+0x210>
   1e824:	00000b13          	li	s6,0
   1e828:	00100513          	li	a0,1
   1e82c:	b29ff06f          	j	1e354 <__udivdi3+0x18c>
   1e830:	00078b93          	mv	s7,a5
   1e834:	da5ff06f          	j	1e5d8 <__udivdi3+0x410>
   1e838:	00078b93          	mv	s7,a5
   1e83c:	ee1ff06f          	j	1e71c <__udivdi3+0x554>
   1e840:	00070b13          	mv	s6,a4
   1e844:	d35ff06f          	j	1e578 <__udivdi3+0x3b0>
   1e848:	00070413          	mv	s0,a4
   1e84c:	e71ff06f          	j	1e6bc <__udivdi3+0x4f4>
   1e850:	ffe98993          	add	s3,s3,-2
   1e854:	015787b3          	add	a5,a5,s5
   1e858:	c05ff06f          	j	1e45c <__udivdi3+0x294>
   1e85c:	ffe90913          	add	s2,s2,-2
   1e860:	015787b3          	add	a5,a5,s5
   1e864:	a51ff06f          	j	1e2b4 <__udivdi3+0xec>
   1e868:	01865693          	srl	a3,a2,0x18
   1e86c:	01800713          	li	a4,24
   1e870:	b69ff06f          	j	1e3d8 <__udivdi3+0x210>

0001e874 <__umoddi3>:
   1e874:	fd010113          	add	sp,sp,-48
   1e878:	02112623          	sw	ra,44(sp)
   1e87c:	00050793          	mv	a5,a0
   1e880:	14069663          	bnez	a3,1e9cc <__umoddi3+0x158>
   1e884:	03212023          	sw	s2,32(sp)
   1e888:	01412c23          	sw	s4,24(sp)
   1e88c:	02812423          	sw	s0,40(sp)
   1e890:	02912223          	sw	s1,36(sp)
   1e894:	01312e23          	sw	s3,28(sp)
   1e898:	01512a23          	sw	s5,20(sp)
   1e89c:	00060a13          	mv	s4,a2
   1e8a0:	00050913          	mv	s2,a0
   1e8a4:	1ac5f663          	bgeu	a1,a2,1ea50 <__umoddi3+0x1dc>
   1e8a8:	01612823          	sw	s6,16(sp)
   1e8ac:	00010737          	lui	a4,0x10
   1e8b0:	00058993          	mv	s3,a1
   1e8b4:	28e66063          	bltu	a2,a4,1eb34 <__umoddi3+0x2c0>
   1e8b8:	01000737          	lui	a4,0x1000
   1e8bc:	01800693          	li	a3,24
   1e8c0:	00e67463          	bgeu	a2,a4,1e8c8 <__umoddi3+0x54>
   1e8c4:	01000693          	li	a3,16
   1e8c8:	00d65533          	srl	a0,a2,a3
   1e8cc:	00004717          	auipc	a4,0x4
   1e8d0:	f2070713          	add	a4,a4,-224 # 227ec <__clz_tab>
   1e8d4:	00a70733          	add	a4,a4,a0
   1e8d8:	00074703          	lbu	a4,0(a4)
   1e8dc:	02000513          	li	a0,32
   1e8e0:	00d70733          	add	a4,a4,a3
   1e8e4:	40e504b3          	sub	s1,a0,a4
   1e8e8:	00e50c63          	beq	a0,a4,1e900 <__umoddi3+0x8c>
   1e8ec:	009599b3          	sll	s3,a1,s1
   1e8f0:	00e7d733          	srl	a4,a5,a4
   1e8f4:	00961a33          	sll	s4,a2,s1
   1e8f8:	013769b3          	or	s3,a4,s3
   1e8fc:	00979933          	sll	s2,a5,s1
   1e900:	010a5a93          	srl	s5,s4,0x10
   1e904:	000a8593          	mv	a1,s5
   1e908:	00098513          	mv	a0,s3
   1e90c:	010a1b13          	sll	s6,s4,0x10
   1e910:	0b8030ef          	jal	219c8 <__hidden___udivsi3>
   1e914:	010b5b13          	srl	s6,s6,0x10
   1e918:	000b0593          	mv	a1,s6
   1e91c:	080030ef          	jal	2199c <__mulsi3>
   1e920:	00050413          	mv	s0,a0
   1e924:	000a8593          	mv	a1,s5
   1e928:	00098513          	mv	a0,s3
   1e92c:	0e4030ef          	jal	21a10 <__umodsi3>
   1e930:	01051513          	sll	a0,a0,0x10
   1e934:	01095793          	srl	a5,s2,0x10
   1e938:	00a7e7b3          	or	a5,a5,a0
   1e93c:	0087f863          	bgeu	a5,s0,1e94c <__umoddi3+0xd8>
   1e940:	00fa07b3          	add	a5,s4,a5
   1e944:	0147e463          	bltu	a5,s4,1e94c <__umoddi3+0xd8>
   1e948:	5687e863          	bltu	a5,s0,1eeb8 <__umoddi3+0x644>
   1e94c:	40878433          	sub	s0,a5,s0
   1e950:	000a8593          	mv	a1,s5
   1e954:	00040513          	mv	a0,s0
   1e958:	070030ef          	jal	219c8 <__hidden___udivsi3>
   1e95c:	000b0593          	mv	a1,s6
   1e960:	03c030ef          	jal	2199c <__mulsi3>
   1e964:	00050793          	mv	a5,a0
   1e968:	000a8593          	mv	a1,s5
   1e96c:	00040513          	mv	a0,s0
   1e970:	00078413          	mv	s0,a5
   1e974:	09c030ef          	jal	21a10 <__umodsi3>
   1e978:	01091793          	sll	a5,s2,0x10
   1e97c:	01051513          	sll	a0,a0,0x10
   1e980:	0107d793          	srl	a5,a5,0x10
   1e984:	00a7e7b3          	or	a5,a5,a0
   1e988:	0087f863          	bgeu	a5,s0,1e998 <__umoddi3+0x124>
   1e98c:	00fa07b3          	add	a5,s4,a5
   1e990:	0147e463          	bltu	a5,s4,1e998 <__umoddi3+0x124>
   1e994:	5087ea63          	bltu	a5,s0,1eea8 <__umoddi3+0x634>
   1e998:	01012b03          	lw	s6,16(sp)
   1e99c:	408787b3          	sub	a5,a5,s0
   1e9a0:	0097d533          	srl	a0,a5,s1
   1e9a4:	02812403          	lw	s0,40(sp)
   1e9a8:	02412483          	lw	s1,36(sp)
   1e9ac:	02012903          	lw	s2,32(sp)
   1e9b0:	01c12983          	lw	s3,28(sp)
   1e9b4:	01812a03          	lw	s4,24(sp)
   1e9b8:	01412a83          	lw	s5,20(sp)
   1e9bc:	00000593          	li	a1,0
   1e9c0:	02c12083          	lw	ra,44(sp)
   1e9c4:	03010113          	add	sp,sp,48
   1e9c8:	00008067          	ret
   1e9cc:	00050893          	mv	a7,a0
   1e9d0:	fed5e8e3          	bltu	a1,a3,1e9c0 <__umoddi3+0x14c>
   1e9d4:	03212023          	sw	s2,32(sp)
   1e9d8:	01312e23          	sw	s3,28(sp)
   1e9dc:	00010737          	lui	a4,0x10
   1e9e0:	00058813          	mv	a6,a1
   1e9e4:	24e6ec63          	bltu	a3,a4,1ec3c <__umoddi3+0x3c8>
   1e9e8:	01000737          	lui	a4,0x1000
   1e9ec:	01800513          	li	a0,24
   1e9f0:	00e6f463          	bgeu	a3,a4,1e9f8 <__umoddi3+0x184>
   1e9f4:	01000513          	li	a0,16
   1e9f8:	00a6d333          	srl	t1,a3,a0
   1e9fc:	00004717          	auipc	a4,0x4
   1ea00:	df070713          	add	a4,a4,-528 # 227ec <__clz_tab>
   1ea04:	00670733          	add	a4,a4,t1
   1ea08:	00074703          	lbu	a4,0(a4)
   1ea0c:	02000313          	li	t1,32
   1ea10:	00a709b3          	add	s3,a4,a0
   1ea14:	41330933          	sub	s2,t1,s3
   1ea18:	25331a63          	bne	t1,s3,1ec6c <__umoddi3+0x3f8>
   1ea1c:	00b6e463          	bltu	a3,a1,1ea24 <__umoddi3+0x1b0>
   1ea20:	00c7ea63          	bltu	a5,a2,1ea34 <__umoddi3+0x1c0>
   1ea24:	40c788b3          	sub	a7,a5,a2
   1ea28:	40d586b3          	sub	a3,a1,a3
   1ea2c:	0117b833          	sltu	a6,a5,a7
   1ea30:	41068833          	sub	a6,a3,a6
   1ea34:	02c12083          	lw	ra,44(sp)
   1ea38:	02012903          	lw	s2,32(sp)
   1ea3c:	01c12983          	lw	s3,28(sp)
   1ea40:	00088513          	mv	a0,a7
   1ea44:	00080593          	mv	a1,a6
   1ea48:	03010113          	add	sp,sp,48
   1ea4c:	00008067          	ret
   1ea50:	0e060a63          	beqz	a2,1eb44 <__umoddi3+0x2d0>
   1ea54:	00010737          	lui	a4,0x10
   1ea58:	42e67663          	bgeu	a2,a4,1ee84 <__umoddi3+0x610>
   1ea5c:	10063693          	sltiu	a3,a2,256
   1ea60:	0016b693          	seqz	a3,a3
   1ea64:	00369693          	sll	a3,a3,0x3
   1ea68:	00d65533          	srl	a0,a2,a3
   1ea6c:	00004717          	auipc	a4,0x4
   1ea70:	d8070713          	add	a4,a4,-640 # 227ec <__clz_tab>
   1ea74:	00a70733          	add	a4,a4,a0
   1ea78:	00074983          	lbu	s3,0(a4)
   1ea7c:	02000713          	li	a4,32
   1ea80:	00d989b3          	add	s3,s3,a3
   1ea84:	413704b3          	sub	s1,a4,s3
   1ea88:	0f371263          	bne	a4,s3,1eb6c <__umoddi3+0x2f8>
   1ea8c:	01061413          	sll	s0,a2,0x10
   1ea90:	40c589b3          	sub	s3,a1,a2
   1ea94:	01065a93          	srl	s5,a2,0x10
   1ea98:	01045413          	srl	s0,s0,0x10
   1ea9c:	000a8593          	mv	a1,s5
   1eaa0:	00098513          	mv	a0,s3
   1eaa4:	725020ef          	jal	219c8 <__hidden___udivsi3>
   1eaa8:	00040593          	mv	a1,s0
   1eaac:	6f1020ef          	jal	2199c <__mulsi3>
   1eab0:	00050793          	mv	a5,a0
   1eab4:	000a8593          	mv	a1,s5
   1eab8:	00098513          	mv	a0,s3
   1eabc:	00078993          	mv	s3,a5
   1eac0:	751020ef          	jal	21a10 <__umodsi3>
   1eac4:	01051513          	sll	a0,a0,0x10
   1eac8:	01095793          	srl	a5,s2,0x10
   1eacc:	00a7e7b3          	or	a5,a5,a0
   1ead0:	0137f863          	bgeu	a5,s3,1eae0 <__umoddi3+0x26c>
   1ead4:	00fa07b3          	add	a5,s4,a5
   1ead8:	0147e463          	bltu	a5,s4,1eae0 <__umoddi3+0x26c>
   1eadc:	3d37ea63          	bltu	a5,s3,1eeb0 <__umoddi3+0x63c>
   1eae0:	413789b3          	sub	s3,a5,s3
   1eae4:	000a8593          	mv	a1,s5
   1eae8:	00098513          	mv	a0,s3
   1eaec:	6dd020ef          	jal	219c8 <__hidden___udivsi3>
   1eaf0:	00040593          	mv	a1,s0
   1eaf4:	6a9020ef          	jal	2199c <__mulsi3>
   1eaf8:	00050413          	mv	s0,a0
   1eafc:	000a8593          	mv	a1,s5
   1eb00:	00098513          	mv	a0,s3
   1eb04:	70d020ef          	jal	21a10 <__umodsi3>
   1eb08:	01091913          	sll	s2,s2,0x10
   1eb0c:	01051793          	sll	a5,a0,0x10
   1eb10:	01095913          	srl	s2,s2,0x10
   1eb14:	00f967b3          	or	a5,s2,a5
   1eb18:	0087fa63          	bgeu	a5,s0,1eb2c <__umoddi3+0x2b8>
   1eb1c:	00fa07b3          	add	a5,s4,a5
   1eb20:	0147e663          	bltu	a5,s4,1eb2c <__umoddi3+0x2b8>
   1eb24:	0087f463          	bgeu	a5,s0,1eb2c <__umoddi3+0x2b8>
   1eb28:	014787b3          	add	a5,a5,s4
   1eb2c:	408787b3          	sub	a5,a5,s0
   1eb30:	e71ff06f          	j	1e9a0 <__umoddi3+0x12c>
   1eb34:	10063693          	sltiu	a3,a2,256
   1eb38:	0016b693          	seqz	a3,a3
   1eb3c:	00369693          	sll	a3,a3,0x3
   1eb40:	d89ff06f          	j	1e8c8 <__umoddi3+0x54>
   1eb44:	00000513          	li	a0,0
   1eb48:	00004717          	auipc	a4,0x4
   1eb4c:	ca470713          	add	a4,a4,-860 # 227ec <__clz_tab>
   1eb50:	00a70733          	add	a4,a4,a0
   1eb54:	00074983          	lbu	s3,0(a4)
   1eb58:	00000693          	li	a3,0
   1eb5c:	02000713          	li	a4,32
   1eb60:	00d989b3          	add	s3,s3,a3
   1eb64:	413704b3          	sub	s1,a4,s3
   1eb68:	f33702e3          	beq	a4,s3,1ea8c <__umoddi3+0x218>
   1eb6c:	00961a33          	sll	s4,a2,s1
   1eb70:	01712623          	sw	s7,12(sp)
   1eb74:	010a5a93          	srl	s5,s4,0x10
   1eb78:	0135dbb3          	srl	s7,a1,s3
   1eb7c:	00959733          	sll	a4,a1,s1
   1eb80:	0137d9b3          	srl	s3,a5,s3
   1eb84:	000a8593          	mv	a1,s5
   1eb88:	000b8513          	mv	a0,s7
   1eb8c:	010a1413          	sll	s0,s4,0x10
   1eb90:	00e9e9b3          	or	s3,s3,a4
   1eb94:	00979933          	sll	s2,a5,s1
   1eb98:	01612823          	sw	s6,16(sp)
   1eb9c:	01045413          	srl	s0,s0,0x10
   1eba0:	629020ef          	jal	219c8 <__hidden___udivsi3>
   1eba4:	00040593          	mv	a1,s0
   1eba8:	5f5020ef          	jal	2199c <__mulsi3>
   1ebac:	00050b13          	mv	s6,a0
   1ebb0:	000a8593          	mv	a1,s5
   1ebb4:	000b8513          	mv	a0,s7
   1ebb8:	659020ef          	jal	21a10 <__umodsi3>
   1ebbc:	01051513          	sll	a0,a0,0x10
   1ebc0:	0109d793          	srl	a5,s3,0x10
   1ebc4:	00a7e7b3          	or	a5,a5,a0
   1ebc8:	0167fa63          	bgeu	a5,s6,1ebdc <__umoddi3+0x368>
   1ebcc:	00fa07b3          	add	a5,s4,a5
   1ebd0:	0147e663          	bltu	a5,s4,1ebdc <__umoddi3+0x368>
   1ebd4:	0167f463          	bgeu	a5,s6,1ebdc <__umoddi3+0x368>
   1ebd8:	014787b3          	add	a5,a5,s4
   1ebdc:	41678b33          	sub	s6,a5,s6
   1ebe0:	000a8593          	mv	a1,s5
   1ebe4:	000b0513          	mv	a0,s6
   1ebe8:	5e1020ef          	jal	219c8 <__hidden___udivsi3>
   1ebec:	00040593          	mv	a1,s0
   1ebf0:	5ad020ef          	jal	2199c <__mulsi3>
   1ebf4:	00050793          	mv	a5,a0
   1ebf8:	000a8593          	mv	a1,s5
   1ebfc:	000b0513          	mv	a0,s6
   1ec00:	01099993          	sll	s3,s3,0x10
   1ec04:	00078b13          	mv	s6,a5
   1ec08:	609020ef          	jal	21a10 <__umodsi3>
   1ec0c:	01051513          	sll	a0,a0,0x10
   1ec10:	0109d993          	srl	s3,s3,0x10
   1ec14:	00a9e9b3          	or	s3,s3,a0
   1ec18:	0169fa63          	bgeu	s3,s6,1ec2c <__umoddi3+0x3b8>
   1ec1c:	013a09b3          	add	s3,s4,s3
   1ec20:	0149e663          	bltu	s3,s4,1ec2c <__umoddi3+0x3b8>
   1ec24:	0169f463          	bgeu	s3,s6,1ec2c <__umoddi3+0x3b8>
   1ec28:	014989b3          	add	s3,s3,s4
   1ec2c:	416989b3          	sub	s3,s3,s6
   1ec30:	00c12b83          	lw	s7,12(sp)
   1ec34:	01012b03          	lw	s6,16(sp)
   1ec38:	e65ff06f          	j	1ea9c <__umoddi3+0x228>
   1ec3c:	1006b513          	sltiu	a0,a3,256
   1ec40:	00153513          	seqz	a0,a0
   1ec44:	00351513          	sll	a0,a0,0x3
   1ec48:	00a6d333          	srl	t1,a3,a0
   1ec4c:	00004717          	auipc	a4,0x4
   1ec50:	ba070713          	add	a4,a4,-1120 # 227ec <__clz_tab>
   1ec54:	00670733          	add	a4,a4,t1
   1ec58:	00074703          	lbu	a4,0(a4)
   1ec5c:	02000313          	li	t1,32
   1ec60:	00a709b3          	add	s3,a4,a0
   1ec64:	41330933          	sub	s2,t1,s3
   1ec68:	db330ae3          	beq	t1,s3,1ea1c <__umoddi3+0x1a8>
   1ec6c:	01512a23          	sw	s5,20(sp)
   1ec70:	012696b3          	sll	a3,a3,s2
   1ec74:	01365ab3          	srl	s5,a2,s3
   1ec78:	00daeab3          	or	s5,s5,a3
   1ec7c:	01712623          	sw	s7,12(sp)
   1ec80:	01a12023          	sw	s10,0(sp)
   1ec84:	010adb93          	srl	s7,s5,0x10
   1ec88:	0135dd33          	srl	s10,a1,s3
   1ec8c:	01259733          	sll	a4,a1,s2
   1ec90:	0137d6b3          	srl	a3,a5,s3
   1ec94:	01912223          	sw	s9,4(sp)
   1ec98:	000b8593          	mv	a1,s7
   1ec9c:	000d0513          	mv	a0,s10
   1eca0:	010a9c93          	sll	s9,s5,0x10
   1eca4:	02812423          	sw	s0,40(sp)
   1eca8:	02912223          	sw	s1,36(sp)
   1ecac:	01261433          	sll	s0,a2,s2
   1ecb0:	012794b3          	sll	s1,a5,s2
   1ecb4:	01412c23          	sw	s4,24(sp)
   1ecb8:	01612823          	sw	s6,16(sp)
   1ecbc:	00e6ea33          	or	s4,a3,a4
   1ecc0:	01812423          	sw	s8,8(sp)
   1ecc4:	010cdc93          	srl	s9,s9,0x10
   1ecc8:	501020ef          	jal	219c8 <__hidden___udivsi3>
   1eccc:	00050593          	mv	a1,a0
   1ecd0:	00050b13          	mv	s6,a0
   1ecd4:	000c8513          	mv	a0,s9
   1ecd8:	4c5020ef          	jal	2199c <__mulsi3>
   1ecdc:	00050c13          	mv	s8,a0
   1ece0:	000b8593          	mv	a1,s7
   1ece4:	000d0513          	mv	a0,s10
   1ece8:	529020ef          	jal	21a10 <__umodsi3>
   1ecec:	01051513          	sll	a0,a0,0x10
   1ecf0:	010a5793          	srl	a5,s4,0x10
   1ecf4:	00a7e7b3          	or	a5,a5,a0
   1ecf8:	0187fe63          	bgeu	a5,s8,1ed14 <__umoddi3+0x4a0>
   1ecfc:	00fa87b3          	add	a5,s5,a5
   1ed00:	fffb0713          	add	a4,s6,-1
   1ed04:	1957ee63          	bltu	a5,s5,1eea0 <__umoddi3+0x62c>
   1ed08:	1987fc63          	bgeu	a5,s8,1eea0 <__umoddi3+0x62c>
   1ed0c:	ffeb0b13          	add	s6,s6,-2
   1ed10:	015787b3          	add	a5,a5,s5
   1ed14:	41878c33          	sub	s8,a5,s8
   1ed18:	000b8593          	mv	a1,s7
   1ed1c:	000c0513          	mv	a0,s8
   1ed20:	4a9020ef          	jal	219c8 <__hidden___udivsi3>
   1ed24:	00050593          	mv	a1,a0
   1ed28:	00050d13          	mv	s10,a0
   1ed2c:	000c8513          	mv	a0,s9
   1ed30:	46d020ef          	jal	2199c <__mulsi3>
   1ed34:	00050793          	mv	a5,a0
   1ed38:	000b8593          	mv	a1,s7
   1ed3c:	000c0513          	mv	a0,s8
   1ed40:	00078b93          	mv	s7,a5
   1ed44:	4cd020ef          	jal	21a10 <__umodsi3>
   1ed48:	010a1593          	sll	a1,s4,0x10
   1ed4c:	01051513          	sll	a0,a0,0x10
   1ed50:	0105d593          	srl	a1,a1,0x10
   1ed54:	00a5e5b3          	or	a1,a1,a0
   1ed58:	0175fe63          	bgeu	a1,s7,1ed74 <__umoddi3+0x500>
   1ed5c:	00ba85b3          	add	a1,s5,a1
   1ed60:	fffd0793          	add	a5,s10,-1
   1ed64:	1355ea63          	bltu	a1,s5,1ee98 <__umoddi3+0x624>
   1ed68:	1375f863          	bgeu	a1,s7,1ee98 <__umoddi3+0x624>
   1ed6c:	ffed0d13          	add	s10,s10,-2
   1ed70:	015585b3          	add	a1,a1,s5
   1ed74:	010b1793          	sll	a5,s6,0x10
   1ed78:	00010e37          	lui	t3,0x10
   1ed7c:	01a7e7b3          	or	a5,a5,s10
   1ed80:	fffe0313          	add	t1,t3,-1 # ffff <exit-0x95>
   1ed84:	0067f8b3          	and	a7,a5,t1
   1ed88:	00647333          	and	t1,s0,t1
   1ed8c:	41758733          	sub	a4,a1,s7
   1ed90:	0107d793          	srl	a5,a5,0x10
   1ed94:	01045e93          	srl	t4,s0,0x10
   1ed98:	00088513          	mv	a0,a7
   1ed9c:	00030593          	mv	a1,t1
   1eda0:	3fd020ef          	jal	2199c <__mulsi3>
   1eda4:	00050813          	mv	a6,a0
   1eda8:	000e8593          	mv	a1,t4
   1edac:	00088513          	mv	a0,a7
   1edb0:	3ed020ef          	jal	2199c <__mulsi3>
   1edb4:	00050893          	mv	a7,a0
   1edb8:	00030593          	mv	a1,t1
   1edbc:	00078513          	mv	a0,a5
   1edc0:	3dd020ef          	jal	2199c <__mulsi3>
   1edc4:	00050313          	mv	t1,a0
   1edc8:	000e8593          	mv	a1,t4
   1edcc:	00078513          	mv	a0,a5
   1edd0:	3cd020ef          	jal	2199c <__mulsi3>
   1edd4:	01085793          	srl	a5,a6,0x10
   1edd8:	006888b3          	add	a7,a7,t1
   1eddc:	011787b3          	add	a5,a5,a7
   1ede0:	0067f463          	bgeu	a5,t1,1ede8 <__umoddi3+0x574>
   1ede4:	01c50533          	add	a0,a0,t3
   1ede8:	00010637          	lui	a2,0x10
   1edec:	fff60613          	add	a2,a2,-1 # ffff <exit-0x95>
   1edf0:	0107d693          	srl	a3,a5,0x10
   1edf4:	00c7f7b3          	and	a5,a5,a2
   1edf8:	01079793          	sll	a5,a5,0x10
   1edfc:	00c87833          	and	a6,a6,a2
   1ee00:	00a686b3          	add	a3,a3,a0
   1ee04:	010787b3          	add	a5,a5,a6
   1ee08:	06d76263          	bltu	a4,a3,1ee6c <__umoddi3+0x5f8>
   1ee0c:	04d70e63          	beq	a4,a3,1ee68 <__umoddi3+0x5f4>
   1ee10:	40f487b3          	sub	a5,s1,a5
   1ee14:	00f4b4b3          	sltu	s1,s1,a5
   1ee18:	02812403          	lw	s0,40(sp)
   1ee1c:	02c12083          	lw	ra,44(sp)
   1ee20:	40d705b3          	sub	a1,a4,a3
   1ee24:	409585b3          	sub	a1,a1,s1
   1ee28:	01359733          	sll	a4,a1,s3
   1ee2c:	0127d7b3          	srl	a5,a5,s2
   1ee30:	02412483          	lw	s1,36(sp)
   1ee34:	01c12983          	lw	s3,28(sp)
   1ee38:	01812a03          	lw	s4,24(sp)
   1ee3c:	01412a83          	lw	s5,20(sp)
   1ee40:	01012b03          	lw	s6,16(sp)
   1ee44:	00c12b83          	lw	s7,12(sp)
   1ee48:	00812c03          	lw	s8,8(sp)
   1ee4c:	00412c83          	lw	s9,4(sp)
   1ee50:	00012d03          	lw	s10,0(sp)
   1ee54:	0125d5b3          	srl	a1,a1,s2
   1ee58:	00f76533          	or	a0,a4,a5
   1ee5c:	02012903          	lw	s2,32(sp)
   1ee60:	03010113          	add	sp,sp,48
   1ee64:	00008067          	ret
   1ee68:	faf4f4e3          	bgeu	s1,a5,1ee10 <__umoddi3+0x59c>
   1ee6c:	40878433          	sub	s0,a5,s0
   1ee70:	0087b7b3          	sltu	a5,a5,s0
   1ee74:	01578ab3          	add	s5,a5,s5
   1ee78:	415686b3          	sub	a3,a3,s5
   1ee7c:	00040793          	mv	a5,s0
   1ee80:	f91ff06f          	j	1ee10 <__umoddi3+0x59c>
   1ee84:	01000737          	lui	a4,0x1000
   1ee88:	02e67c63          	bgeu	a2,a4,1eec0 <__umoddi3+0x64c>
   1ee8c:	01065513          	srl	a0,a2,0x10
   1ee90:	01000693          	li	a3,16
   1ee94:	bd9ff06f          	j	1ea6c <__umoddi3+0x1f8>
   1ee98:	00078d13          	mv	s10,a5
   1ee9c:	ed9ff06f          	j	1ed74 <__umoddi3+0x500>
   1eea0:	00070b13          	mv	s6,a4
   1eea4:	e71ff06f          	j	1ed14 <__umoddi3+0x4a0>
   1eea8:	014787b3          	add	a5,a5,s4
   1eeac:	aedff06f          	j	1e998 <__umoddi3+0x124>
   1eeb0:	014787b3          	add	a5,a5,s4
   1eeb4:	c2dff06f          	j	1eae0 <__umoddi3+0x26c>
   1eeb8:	014787b3          	add	a5,a5,s4
   1eebc:	a91ff06f          	j	1e94c <__umoddi3+0xd8>
   1eec0:	01865513          	srl	a0,a2,0x18
   1eec4:	01800693          	li	a3,24
   1eec8:	ba5ff06f          	j	1ea6c <__umoddi3+0x1f8>

0001eecc <__adddf3>:
   1eecc:	001007b7          	lui	a5,0x100
   1eed0:	fe010113          	add	sp,sp,-32
   1eed4:	fff78e93          	add	t4,a5,-1 # fffff <__BSS_END__+0xdc0ef>
   1eed8:	00bef833          	and	a6,t4,a1
   1eedc:	00def7b3          	and	a5,t4,a3
   1eee0:	0146d313          	srl	t1,a3,0x14
   1eee4:	01212823          	sw	s2,16(sp)
   1eee8:	0145d913          	srl	s2,a1,0x14
   1eeec:	00379793          	sll	a5,a5,0x3
   1eef0:	00812c23          	sw	s0,24(sp)
   1eef4:	00381813          	sll	a6,a6,0x3
   1eef8:	01f5d413          	srl	s0,a1,0x1f
   1eefc:	01d55713          	srl	a4,a0,0x1d
   1ef00:	01d65893          	srl	a7,a2,0x1d
   1ef04:	7ff97913          	and	s2,s2,2047
   1ef08:	7ff37313          	and	t1,t1,2047
   1ef0c:	00112e23          	sw	ra,28(sp)
   1ef10:	00912a23          	sw	s1,20(sp)
   1ef14:	01312623          	sw	s3,12(sp)
   1ef18:	01f6d693          	srl	a3,a3,0x1f
   1ef1c:	00f8e8b3          	or	a7,a7,a5
   1ef20:	01076733          	or	a4,a4,a6
   1ef24:	00351593          	sll	a1,a0,0x3
   1ef28:	00361f13          	sll	t5,a2,0x3
   1ef2c:	406907b3          	sub	a5,s2,t1
   1ef30:	1ed40463          	beq	s0,a3,1f118 <__adddf3+0x24c>
   1ef34:	16f05263          	blez	a5,1f098 <__adddf3+0x1cc>
   1ef38:	28030663          	beqz	t1,1f1c4 <__adddf3+0x2f8>
   1ef3c:	7ff00693          	li	a3,2047
   1ef40:	42d90663          	beq	s2,a3,1f36c <__adddf3+0x4a0>
   1ef44:	03800693          	li	a3,56
   1ef48:	00100613          	li	a2,1
   1ef4c:	02f6ce63          	blt	a3,a5,1ef88 <__adddf3+0xbc>
   1ef50:	008006b7          	lui	a3,0x800
   1ef54:	00d8e8b3          	or	a7,a7,a3
   1ef58:	01f00693          	li	a3,31
   1ef5c:	52f6ce63          	blt	a3,a5,1f498 <__adddf3+0x5cc>
   1ef60:	02000693          	li	a3,32
   1ef64:	40f686b3          	sub	a3,a3,a5
   1ef68:	00d89633          	sll	a2,a7,a3
   1ef6c:	00ff5533          	srl	a0,t5,a5
   1ef70:	00df16b3          	sll	a3,t5,a3
   1ef74:	00a66633          	or	a2,a2,a0
   1ef78:	00d036b3          	snez	a3,a3
   1ef7c:	00f8d8b3          	srl	a7,a7,a5
   1ef80:	00d66633          	or	a2,a2,a3
   1ef84:	41170733          	sub	a4,a4,a7
   1ef88:	40c58633          	sub	a2,a1,a2
   1ef8c:	00c5b5b3          	sltu	a1,a1,a2
   1ef90:	00060493          	mv	s1,a2
   1ef94:	40b709b3          	sub	s3,a4,a1
   1ef98:	00899793          	sll	a5,s3,0x8
   1ef9c:	3207da63          	bgez	a5,1f2d0 <__adddf3+0x404>
   1efa0:	008007b7          	lui	a5,0x800
   1efa4:	fff78793          	add	a5,a5,-1 # 7fffff <__BSS_END__+0x7dc0ef>
   1efa8:	00f9f9b3          	and	s3,s3,a5
   1efac:	2c098863          	beqz	s3,1f27c <__adddf3+0x3b0>
   1efb0:	00098513          	mv	a0,s3
   1efb4:	2c1020ef          	jal	21a74 <__clzsi2>
   1efb8:	ff850793          	add	a5,a0,-8
   1efbc:	02000693          	li	a3,32
   1efc0:	40f68733          	sub	a4,a3,a5
   1efc4:	00e4d733          	srl	a4,s1,a4
   1efc8:	00f999b3          	sll	s3,s3,a5
   1efcc:	01376733          	or	a4,a4,s3
   1efd0:	00f494b3          	sll	s1,s1,a5
   1efd4:	4b27c863          	blt	a5,s2,1f484 <__adddf3+0x5b8>
   1efd8:	412787b3          	sub	a5,a5,s2
   1efdc:	00178793          	add	a5,a5,1
   1efe0:	40f686b3          	sub	a3,a3,a5
   1efe4:	00d49633          	sll	a2,s1,a3
   1efe8:	00f4d9b3          	srl	s3,s1,a5
   1efec:	00c03633          	snez	a2,a2
   1eff0:	01366633          	or	a2,a2,s3
   1eff4:	00d716b3          	sll	a3,a4,a3
   1eff8:	00c6e4b3          	or	s1,a3,a2
   1effc:	00f759b3          	srl	s3,a4,a5
   1f000:	00000913          	li	s2,0
   1f004:	0074f793          	and	a5,s1,7
   1f008:	02078063          	beqz	a5,1f028 <__adddf3+0x15c>
   1f00c:	00f4f793          	and	a5,s1,15
   1f010:	00400713          	li	a4,4
   1f014:	00e78a63          	beq	a5,a4,1f028 <__adddf3+0x15c>
   1f018:	00448793          	add	a5,s1,4
   1f01c:	0097b633          	sltu	a2,a5,s1
   1f020:	00c989b3          	add	s3,s3,a2
   1f024:	00078493          	mv	s1,a5
   1f028:	00899793          	sll	a5,s3,0x8
   1f02c:	6e07da63          	bgez	a5,1f720 <__adddf3+0x854>
   1f030:	00190793          	add	a5,s2,1
   1f034:	7ff00713          	li	a4,2047
   1f038:	00040e13          	mv	t3,s0
   1f03c:	2ae78663          	beq	a5,a4,1f2e8 <__adddf3+0x41c>
   1f040:	ff800737          	lui	a4,0xff800
   1f044:	fff70713          	add	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   1f048:	00e9f733          	and	a4,s3,a4
   1f04c:	7ff7f793          	and	a5,a5,2047
   1f050:	01d71813          	sll	a6,a4,0x1d
   1f054:	0034d613          	srl	a2,s1,0x3
   1f058:	00971713          	sll	a4,a4,0x9
   1f05c:	00c86833          	or	a6,a6,a2
   1f060:	00c75713          	srl	a4,a4,0xc
   1f064:	01c12083          	lw	ra,28(sp)
   1f068:	01812403          	lw	s0,24(sp)
   1f06c:	01479793          	sll	a5,a5,0x14
   1f070:	00e7e7b3          	or	a5,a5,a4
   1f074:	01fe1713          	sll	a4,t3,0x1f
   1f078:	00e7e7b3          	or	a5,a5,a4
   1f07c:	01412483          	lw	s1,20(sp)
   1f080:	01012903          	lw	s2,16(sp)
   1f084:	00c12983          	lw	s3,12(sp)
   1f088:	00080513          	mv	a0,a6
   1f08c:	00078593          	mv	a1,a5
   1f090:	02010113          	add	sp,sp,32
   1f094:	00008067          	ret
   1f098:	14078c63          	beqz	a5,1f1f0 <__adddf3+0x324>
   1f09c:	412307b3          	sub	a5,t1,s2
   1f0a0:	3c091263          	bnez	s2,1f464 <__adddf3+0x598>
   1f0a4:	00b76533          	or	a0,a4,a1
   1f0a8:	4c050463          	beqz	a0,1f570 <__adddf3+0x6a4>
   1f0ac:	fff78513          	add	a0,a5,-1
   1f0b0:	60050263          	beqz	a0,1f6b4 <__adddf3+0x7e8>
   1f0b4:	7ff00813          	li	a6,2047
   1f0b8:	57078663          	beq	a5,a6,1f624 <__adddf3+0x758>
   1f0bc:	03800793          	li	a5,56
   1f0c0:	00100613          	li	a2,1
   1f0c4:	02a7cc63          	blt	a5,a0,1f0fc <__adddf3+0x230>
   1f0c8:	00050793          	mv	a5,a0
   1f0cc:	01f00613          	li	a2,31
   1f0d0:	56f64c63          	blt	a2,a5,1f648 <__adddf3+0x77c>
   1f0d4:	02000513          	li	a0,32
   1f0d8:	40f50533          	sub	a0,a0,a5
   1f0dc:	00a71633          	sll	a2,a4,a0
   1f0e0:	00f5d833          	srl	a6,a1,a5
   1f0e4:	00a59533          	sll	a0,a1,a0
   1f0e8:	01066633          	or	a2,a2,a6
   1f0ec:	00a03533          	snez	a0,a0
   1f0f0:	00f75733          	srl	a4,a4,a5
   1f0f4:	00a66633          	or	a2,a2,a0
   1f0f8:	40e888b3          	sub	a7,a7,a4
   1f0fc:	40cf0633          	sub	a2,t5,a2
   1f100:	00cf3733          	sltu	a4,t5,a2
   1f104:	00060493          	mv	s1,a2
   1f108:	40e889b3          	sub	s3,a7,a4
   1f10c:	00030913          	mv	s2,t1
   1f110:	00068413          	mv	s0,a3
   1f114:	e85ff06f          	j	1ef98 <__adddf3+0xcc>
   1f118:	1ef05063          	blez	a5,1f2f8 <__adddf3+0x42c>
   1f11c:	14031063          	bnez	t1,1f25c <__adddf3+0x390>
   1f120:	01e8e6b3          	or	a3,a7,t5
   1f124:	26068c63          	beqz	a3,1f39c <__adddf3+0x4d0>
   1f128:	fff78693          	add	a3,a5,-1
   1f12c:	48068063          	beqz	a3,1f5ac <__adddf3+0x6e0>
   1f130:	7ff00613          	li	a2,2047
   1f134:	22c78c63          	beq	a5,a2,1f36c <__adddf3+0x4a0>
   1f138:	03800793          	li	a5,56
   1f13c:	00100993          	li	s3,1
   1f140:	02d7cc63          	blt	a5,a3,1f178 <__adddf3+0x2ac>
   1f144:	00068793          	mv	a5,a3
   1f148:	01f00693          	li	a3,31
   1f14c:	4af6c063          	blt	a3,a5,1f5ec <__adddf3+0x720>
   1f150:	02000693          	li	a3,32
   1f154:	40f686b3          	sub	a3,a3,a5
   1f158:	00d899b3          	sll	s3,a7,a3
   1f15c:	00ff5633          	srl	a2,t5,a5
   1f160:	00df16b3          	sll	a3,t5,a3
   1f164:	00c9e9b3          	or	s3,s3,a2
   1f168:	00d036b3          	snez	a3,a3
   1f16c:	00f8d8b3          	srl	a7,a7,a5
   1f170:	00d9e9b3          	or	s3,s3,a3
   1f174:	01170733          	add	a4,a4,a7
   1f178:	00b985b3          	add	a1,s3,a1
   1f17c:	0135b9b3          	sltu	s3,a1,s3
   1f180:	00058493          	mv	s1,a1
   1f184:	00e989b3          	add	s3,s3,a4
   1f188:	00899793          	sll	a5,s3,0x8
   1f18c:	1407d263          	bgez	a5,1f2d0 <__adddf3+0x404>
   1f190:	00190913          	add	s2,s2,1
   1f194:	7ff00793          	li	a5,2047
   1f198:	36f90c63          	beq	s2,a5,1f510 <__adddf3+0x644>
   1f19c:	ff8007b7          	lui	a5,0xff800
   1f1a0:	fff78793          	add	a5,a5,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   1f1a4:	0014f613          	and	a2,s1,1
   1f1a8:	00f9f7b3          	and	a5,s3,a5
   1f1ac:	0014d713          	srl	a4,s1,0x1
   1f1b0:	00c76733          	or	a4,a4,a2
   1f1b4:	01f79613          	sll	a2,a5,0x1f
   1f1b8:	00e664b3          	or	s1,a2,a4
   1f1bc:	0017d993          	srl	s3,a5,0x1
   1f1c0:	e45ff06f          	j	1f004 <__adddf3+0x138>
   1f1c4:	01e8e6b3          	or	a3,a7,t5
   1f1c8:	1c068a63          	beqz	a3,1f39c <__adddf3+0x4d0>
   1f1cc:	fff78693          	add	a3,a5,-1
   1f1d0:	40068063          	beqz	a3,1f5d0 <__adddf3+0x704>
   1f1d4:	7ff00613          	li	a2,2047
   1f1d8:	18c78a63          	beq	a5,a2,1f36c <__adddf3+0x4a0>
   1f1dc:	03800793          	li	a5,56
   1f1e0:	00100613          	li	a2,1
   1f1e4:	dad7c2e3          	blt	a5,a3,1ef88 <__adddf3+0xbc>
   1f1e8:	00068793          	mv	a5,a3
   1f1ec:	d6dff06f          	j	1ef58 <__adddf3+0x8c>
   1f1f0:	00190813          	add	a6,s2,1
   1f1f4:	7fe87813          	and	a6,a6,2046
   1f1f8:	22081c63          	bnez	a6,1f430 <__adddf3+0x564>
   1f1fc:	00b76333          	or	t1,a4,a1
   1f200:	01e8e833          	or	a6,a7,t5
   1f204:	38091063          	bnez	s2,1f584 <__adddf3+0x6b8>
   1f208:	46030e63          	beqz	t1,1f684 <__adddf3+0x7b8>
   1f20c:	40080663          	beqz	a6,1f618 <__adddf3+0x74c>
   1f210:	41e589b3          	sub	s3,a1,t5
   1f214:	0135b533          	sltu	a0,a1,s3
   1f218:	41170633          	sub	a2,a4,a7
   1f21c:	40a60633          	sub	a2,a2,a0
   1f220:	00861513          	sll	a0,a2,0x8
   1f224:	50055e63          	bgez	a0,1f740 <__adddf3+0x874>
   1f228:	40bf05b3          	sub	a1,t5,a1
   1f22c:	40e88733          	sub	a4,a7,a4
   1f230:	00bf3f33          	sltu	t5,t5,a1
   1f234:	41e70733          	sub	a4,a4,t5
   1f238:	00871613          	sll	a2,a4,0x8
   1f23c:	00058493          	mv	s1,a1
   1f240:	52065e63          	bgez	a2,1f77c <__adddf3+0x8b0>
   1f244:	ff8007b7          	lui	a5,0xff800
   1f248:	fff78793          	add	a5,a5,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   1f24c:	00f77733          	and	a4,a4,a5
   1f250:	00068e13          	mv	t3,a3
   1f254:	00100793          	li	a5,1
   1f258:	df9ff06f          	j	1f050 <__adddf3+0x184>
   1f25c:	7ff00693          	li	a3,2047
   1f260:	10d90663          	beq	s2,a3,1f36c <__adddf3+0x4a0>
   1f264:	03800693          	li	a3,56
   1f268:	00100993          	li	s3,1
   1f26c:	f0f6c6e3          	blt	a3,a5,1f178 <__adddf3+0x2ac>
   1f270:	008006b7          	lui	a3,0x800
   1f274:	00d8e8b3          	or	a7,a7,a3
   1f278:	ed1ff06f          	j	1f148 <__adddf3+0x27c>
   1f27c:	00048513          	mv	a0,s1
   1f280:	7f4020ef          	jal	21a74 <__clzsi2>
   1f284:	01850793          	add	a5,a0,24
   1f288:	01f00693          	li	a3,31
   1f28c:	d2f6d8e3          	bge	a3,a5,1efbc <__adddf3+0xf0>
   1f290:	ff850713          	add	a4,a0,-8
   1f294:	00e49733          	sll	a4,s1,a4
   1f298:	2327c663          	blt	a5,s2,1f4c4 <__adddf3+0x5f8>
   1f29c:	41278933          	sub	s2,a5,s2
   1f2a0:	00190793          	add	a5,s2,1
   1f2a4:	48f6d663          	bge	a3,a5,1f730 <__adddf3+0x864>
   1f2a8:	fe190913          	add	s2,s2,-31
   1f2ac:	02000693          	li	a3,32
   1f2b0:	012754b3          	srl	s1,a4,s2
   1f2b4:	00d78c63          	beq	a5,a3,1f2cc <__adddf3+0x400>
   1f2b8:	04000693          	li	a3,64
   1f2bc:	40f687b3          	sub	a5,a3,a5
   1f2c0:	00f71733          	sll	a4,a4,a5
   1f2c4:	00e03733          	snez	a4,a4
   1f2c8:	00e4e4b3          	or	s1,s1,a4
   1f2cc:	00000913          	li	s2,0
   1f2d0:	0074f793          	and	a5,s1,7
   1f2d4:	d2079ce3          	bnez	a5,1f00c <__adddf3+0x140>
   1f2d8:	00090793          	mv	a5,s2
   1f2dc:	0034d613          	srl	a2,s1,0x3
   1f2e0:	00098713          	mv	a4,s3
   1f2e4:	0c00006f          	j	1f3a4 <__adddf3+0x4d8>
   1f2e8:	7ff00793          	li	a5,2047
   1f2ec:	00000713          	li	a4,0
   1f2f0:	00000813          	li	a6,0
   1f2f4:	d71ff06f          	j	1f064 <__adddf3+0x198>
   1f2f8:	0c078a63          	beqz	a5,1f3cc <__adddf3+0x500>
   1f2fc:	412307b3          	sub	a5,t1,s2
   1f300:	1e090263          	beqz	s2,1f4e4 <__adddf3+0x618>
   1f304:	7ff00693          	li	a3,2047
   1f308:	32d30863          	beq	t1,a3,1f638 <__adddf3+0x76c>
   1f30c:	03800693          	li	a3,56
   1f310:	00100993          	li	s3,1
   1f314:	02f6ce63          	blt	a3,a5,1f350 <__adddf3+0x484>
   1f318:	008006b7          	lui	a3,0x800
   1f31c:	00d76733          	or	a4,a4,a3
   1f320:	01f00693          	li	a3,31
   1f324:	3cf6c863          	blt	a3,a5,1f6f4 <__adddf3+0x828>
   1f328:	02000693          	li	a3,32
   1f32c:	40f686b3          	sub	a3,a3,a5
   1f330:	00d719b3          	sll	s3,a4,a3
   1f334:	00f5d633          	srl	a2,a1,a5
   1f338:	00d596b3          	sll	a3,a1,a3
   1f33c:	00c9e9b3          	or	s3,s3,a2
   1f340:	00d036b3          	snez	a3,a3
   1f344:	00f75733          	srl	a4,a4,a5
   1f348:	00d9e9b3          	or	s3,s3,a3
   1f34c:	00e888b3          	add	a7,a7,a4
   1f350:	01e98733          	add	a4,s3,t5
   1f354:	013739b3          	sltu	s3,a4,s3
   1f358:	00070493          	mv	s1,a4
   1f35c:	011989b3          	add	s3,s3,a7
   1f360:	00030913          	mv	s2,t1
   1f364:	e25ff06f          	j	1f188 <__adddf3+0x2bc>
   1f368:	02081063          	bnez	a6,1f388 <__adddf3+0x4bc>
   1f36c:	00351613          	sll	a2,a0,0x3
   1f370:	00365613          	srl	a2,a2,0x3
   1f374:	01d71813          	sll	a6,a4,0x1d
   1f378:	00c86833          	or	a6,a6,a2
   1f37c:	00375713          	srl	a4,a4,0x3
   1f380:	01076733          	or	a4,a4,a6
   1f384:	18070663          	beqz	a4,1f510 <__adddf3+0x644>
   1f388:	00000e13          	li	t3,0
   1f38c:	7ff00793          	li	a5,2047
   1f390:	00080737          	lui	a4,0x80
   1f394:	00000813          	li	a6,0
   1f398:	ccdff06f          	j	1f064 <__adddf3+0x198>
   1f39c:	00351613          	sll	a2,a0,0x3
   1f3a0:	00365613          	srl	a2,a2,0x3
   1f3a4:	01d71813          	sll	a6,a4,0x1d
   1f3a8:	7ff00693          	li	a3,2047
   1f3ac:	00c86833          	or	a6,a6,a2
   1f3b0:	00375713          	srl	a4,a4,0x3
   1f3b4:	fcd786e3          	beq	a5,a3,1f380 <__adddf3+0x4b4>
   1f3b8:	00c71713          	sll	a4,a4,0xc
   1f3bc:	00c75713          	srl	a4,a4,0xc
   1f3c0:	7ff7f793          	and	a5,a5,2047
   1f3c4:	00040e13          	mv	t3,s0
   1f3c8:	c9dff06f          	j	1f064 <__adddf3+0x198>
   1f3cc:	00190693          	add	a3,s2,1
   1f3d0:	7fe6f813          	and	a6,a3,2046
   1f3d4:	14081863          	bnez	a6,1f524 <__adddf3+0x658>
   1f3d8:	00b766b3          	or	a3,a4,a1
   1f3dc:	28091c63          	bnez	s2,1f674 <__adddf3+0x7a8>
   1f3e0:	30068263          	beqz	a3,1f6e4 <__adddf3+0x818>
   1f3e4:	01e8e6b3          	or	a3,a7,t5
   1f3e8:	22068863          	beqz	a3,1f618 <__adddf3+0x74c>
   1f3ec:	01e587b3          	add	a5,a1,t5
   1f3f0:	00b7b5b3          	sltu	a1,a5,a1
   1f3f4:	01170733          	add	a4,a4,a7
   1f3f8:	00b70733          	add	a4,a4,a1
   1f3fc:	0037d813          	srl	a6,a5,0x3
   1f400:	00871793          	sll	a5,a4,0x8
   1f404:	00040e13          	mv	t3,s0
   1f408:	3407de63          	bgez	a5,1f764 <__adddf3+0x898>
   1f40c:	ff8007b7          	lui	a5,0xff800
   1f410:	fff78793          	add	a5,a5,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   1f414:	00f77733          	and	a4,a4,a5
   1f418:	01d71793          	sll	a5,a4,0x1d
   1f41c:	00375713          	srl	a4,a4,0x3
   1f420:	0107e833          	or	a6,a5,a6
   1f424:	01d77733          	and	a4,a4,t4
   1f428:	00100793          	li	a5,1
   1f42c:	c39ff06f          	j	1f064 <__adddf3+0x198>
   1f430:	41e58833          	sub	a6,a1,t5
   1f434:	0105b7b3          	sltu	a5,a1,a6
   1f438:	411709b3          	sub	s3,a4,a7
   1f43c:	40f989b3          	sub	s3,s3,a5
   1f440:	00899793          	sll	a5,s3,0x8
   1f444:	00080493          	mv	s1,a6
   1f448:	1007c663          	bltz	a5,1f554 <__adddf3+0x688>
   1f44c:	01386833          	or	a6,a6,s3
   1f450:	b4081ee3          	bnez	a6,1efac <__adddf3+0xe0>
   1f454:	00000e13          	li	t3,0
   1f458:	00000793          	li	a5,0
   1f45c:	00000713          	li	a4,0
   1f460:	c05ff06f          	j	1f064 <__adddf3+0x198>
   1f464:	7ff00513          	li	a0,2047
   1f468:	1aa30e63          	beq	t1,a0,1f624 <__adddf3+0x758>
   1f46c:	03800513          	li	a0,56
   1f470:	00100613          	li	a2,1
   1f474:	c8f544e3          	blt	a0,a5,1f0fc <__adddf3+0x230>
   1f478:	00800637          	lui	a2,0x800
   1f47c:	00c76733          	or	a4,a4,a2
   1f480:	c4dff06f          	j	1f0cc <__adddf3+0x200>
   1f484:	ff8009b7          	lui	s3,0xff800
   1f488:	fff98993          	add	s3,s3,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   1f48c:	40f90933          	sub	s2,s2,a5
   1f490:	013779b3          	and	s3,a4,s3
   1f494:	b71ff06f          	j	1f004 <__adddf3+0x138>
   1f498:	fe078693          	add	a3,a5,-32
   1f49c:	02000613          	li	a2,32
   1f4a0:	00d8d6b3          	srl	a3,a7,a3
   1f4a4:	00c78a63          	beq	a5,a2,1f4b8 <__adddf3+0x5ec>
   1f4a8:	04000613          	li	a2,64
   1f4ac:	40f607b3          	sub	a5,a2,a5
   1f4b0:	00f897b3          	sll	a5,a7,a5
   1f4b4:	00ff6f33          	or	t5,t5,a5
   1f4b8:	01e03633          	snez	a2,t5
   1f4bc:	00d66633          	or	a2,a2,a3
   1f4c0:	ac9ff06f          	j	1ef88 <__adddf3+0xbc>
   1f4c4:	ff8006b7          	lui	a3,0xff800
   1f4c8:	fff68693          	add	a3,a3,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   1f4cc:	40f907b3          	sub	a5,s2,a5
   1f4d0:	00d77733          	and	a4,a4,a3
   1f4d4:	01d71813          	sll	a6,a4,0x1d
   1f4d8:	01386833          	or	a6,a6,s3
   1f4dc:	00375713          	srl	a4,a4,0x3
   1f4e0:	ed9ff06f          	j	1f3b8 <__adddf3+0x4ec>
   1f4e4:	00b766b3          	or	a3,a4,a1
   1f4e8:	1e068663          	beqz	a3,1f6d4 <__adddf3+0x808>
   1f4ec:	fff78693          	add	a3,a5,-1
   1f4f0:	0a068e63          	beqz	a3,1f5ac <__adddf3+0x6e0>
   1f4f4:	7ff00513          	li	a0,2047
   1f4f8:	14a78063          	beq	a5,a0,1f638 <__adddf3+0x76c>
   1f4fc:	03800793          	li	a5,56
   1f500:	00100993          	li	s3,1
   1f504:	e4d7c6e3          	blt	a5,a3,1f350 <__adddf3+0x484>
   1f508:	00068793          	mv	a5,a3
   1f50c:	e15ff06f          	j	1f320 <__adddf3+0x454>
   1f510:	00040e13          	mv	t3,s0
   1f514:	7ff00793          	li	a5,2047
   1f518:	00000713          	li	a4,0
   1f51c:	00000813          	li	a6,0
   1f520:	b45ff06f          	j	1f064 <__adddf3+0x198>
   1f524:	7ff00793          	li	a5,2047
   1f528:	fef684e3          	beq	a3,a5,1f510 <__adddf3+0x644>
   1f52c:	01e58f33          	add	t5,a1,t5
   1f530:	00bf35b3          	sltu	a1,t5,a1
   1f534:	011707b3          	add	a5,a4,a7
   1f538:	00b787b3          	add	a5,a5,a1
   1f53c:	01f79613          	sll	a2,a5,0x1f
   1f540:	001f5f13          	srl	t5,t5,0x1
   1f544:	01e664b3          	or	s1,a2,t5
   1f548:	0017d993          	srl	s3,a5,0x1
   1f54c:	00068913          	mv	s2,a3
   1f550:	ab5ff06f          	j	1f004 <__adddf3+0x138>
   1f554:	40bf0633          	sub	a2,t5,a1
   1f558:	40e887b3          	sub	a5,a7,a4
   1f55c:	00cf3733          	sltu	a4,t5,a2
   1f560:	00060493          	mv	s1,a2
   1f564:	40e789b3          	sub	s3,a5,a4
   1f568:	00068413          	mv	s0,a3
   1f56c:	a41ff06f          	j	1efac <__adddf3+0xe0>
   1f570:	00361613          	sll	a2,a2,0x3
   1f574:	00365613          	srl	a2,a2,0x3
   1f578:	00068413          	mv	s0,a3
   1f57c:	00088713          	mv	a4,a7
   1f580:	e25ff06f          	j	1f3a4 <__adddf3+0x4d8>
   1f584:	de0312e3          	bnez	t1,1f368 <__adddf3+0x49c>
   1f588:	1c080663          	beqz	a6,1f754 <__adddf3+0x888>
   1f58c:	0038d713          	srl	a4,a7,0x3
   1f590:	00361613          	sll	a2,a2,0x3
   1f594:	01d89893          	sll	a7,a7,0x1d
   1f598:	01176733          	or	a4,a4,a7
   1f59c:	00365613          	srl	a2,a2,0x3
   1f5a0:	00c76733          	or	a4,a4,a2
   1f5a4:	00068413          	mv	s0,a3
   1f5a8:	dddff06f          	j	1f384 <__adddf3+0x4b8>
   1f5ac:	01e58f33          	add	t5,a1,t5
   1f5b0:	011708b3          	add	a7,a4,a7
   1f5b4:	00bf35b3          	sltu	a1,t5,a1
   1f5b8:	00b889b3          	add	s3,a7,a1
   1f5bc:	00899793          	sll	a5,s3,0x8
   1f5c0:	000f0493          	mv	s1,t5
   1f5c4:	0e07d463          	bgez	a5,1f6ac <__adddf3+0x7e0>
   1f5c8:	00200913          	li	s2,2
   1f5cc:	bd1ff06f          	j	1f19c <__adddf3+0x2d0>
   1f5d0:	41e58f33          	sub	t5,a1,t5
   1f5d4:	411708b3          	sub	a7,a4,a7
   1f5d8:	01e5b5b3          	sltu	a1,a1,t5
   1f5dc:	000f0493          	mv	s1,t5
   1f5e0:	40b889b3          	sub	s3,a7,a1
   1f5e4:	00100913          	li	s2,1
   1f5e8:	9b1ff06f          	j	1ef98 <__adddf3+0xcc>
   1f5ec:	fe078693          	add	a3,a5,-32
   1f5f0:	02000613          	li	a2,32
   1f5f4:	00d8d6b3          	srl	a3,a7,a3
   1f5f8:	00c78a63          	beq	a5,a2,1f60c <__adddf3+0x740>
   1f5fc:	04000613          	li	a2,64
   1f600:	40f607b3          	sub	a5,a2,a5
   1f604:	00f897b3          	sll	a5,a7,a5
   1f608:	00ff6f33          	or	t5,t5,a5
   1f60c:	01e039b3          	snez	s3,t5
   1f610:	00d9e9b3          	or	s3,s3,a3
   1f614:	b65ff06f          	j	1f178 <__adddf3+0x2ac>
   1f618:	00351613          	sll	a2,a0,0x3
   1f61c:	00365993          	srl	s3,a2,0x3
   1f620:	eb5ff06f          	j	1f4d4 <__adddf3+0x608>
   1f624:	00361613          	sll	a2,a2,0x3
   1f628:	00365613          	srl	a2,a2,0x3
   1f62c:	00068413          	mv	s0,a3
   1f630:	00088713          	mv	a4,a7
   1f634:	d41ff06f          	j	1f374 <__adddf3+0x4a8>
   1f638:	00361613          	sll	a2,a2,0x3
   1f63c:	00365613          	srl	a2,a2,0x3
   1f640:	00088713          	mv	a4,a7
   1f644:	d31ff06f          	j	1f374 <__adddf3+0x4a8>
   1f648:	fe078513          	add	a0,a5,-32
   1f64c:	02000613          	li	a2,32
   1f650:	00a75533          	srl	a0,a4,a0
   1f654:	00c78a63          	beq	a5,a2,1f668 <__adddf3+0x79c>
   1f658:	04000613          	li	a2,64
   1f65c:	40f607b3          	sub	a5,a2,a5
   1f660:	00f717b3          	sll	a5,a4,a5
   1f664:	00f5e5b3          	or	a1,a1,a5
   1f668:	00b03633          	snez	a2,a1
   1f66c:	00a66633          	or	a2,a2,a0
   1f670:	a8dff06f          	j	1f0fc <__adddf3+0x230>
   1f674:	fc0682e3          	beqz	a3,1f638 <__adddf3+0x76c>
   1f678:	01e8ef33          	or	t5,a7,t5
   1f67c:	d00f16e3          	bnez	t5,1f388 <__adddf3+0x4bc>
   1f680:	cedff06f          	j	1f36c <__adddf3+0x4a0>
   1f684:	dc0808e3          	beqz	a6,1f454 <__adddf3+0x588>
   1f688:	00361813          	sll	a6,a2,0x3
   1f68c:	01d89793          	sll	a5,a7,0x1d
   1f690:	00385813          	srl	a6,a6,0x3
   1f694:	0038d713          	srl	a4,a7,0x3
   1f698:	00f86833          	or	a6,a6,a5
   1f69c:	01d77733          	and	a4,a4,t4
   1f6a0:	00068e13          	mv	t3,a3
   1f6a4:	00000793          	li	a5,0
   1f6a8:	9bdff06f          	j	1f064 <__adddf3+0x198>
   1f6ac:	00100793          	li	a5,1
   1f6b0:	c2dff06f          	j	1f2dc <__adddf3+0x410>
   1f6b4:	40bf05b3          	sub	a1,t5,a1
   1f6b8:	40e888b3          	sub	a7,a7,a4
   1f6bc:	00bf3733          	sltu	a4,t5,a1
   1f6c0:	00058493          	mv	s1,a1
   1f6c4:	40e889b3          	sub	s3,a7,a4
   1f6c8:	00068413          	mv	s0,a3
   1f6cc:	00100913          	li	s2,1
   1f6d0:	8c9ff06f          	j	1ef98 <__adddf3+0xcc>
   1f6d4:	00361613          	sll	a2,a2,0x3
   1f6d8:	00365613          	srl	a2,a2,0x3
   1f6dc:	00088713          	mv	a4,a7
   1f6e0:	cc5ff06f          	j	1f3a4 <__adddf3+0x4d8>
   1f6e4:	00361613          	sll	a2,a2,0x3
   1f6e8:	00365993          	srl	s3,a2,0x3
   1f6ec:	00088713          	mv	a4,a7
   1f6f0:	de5ff06f          	j	1f4d4 <__adddf3+0x608>
   1f6f4:	fe078693          	add	a3,a5,-32
   1f6f8:	02000613          	li	a2,32
   1f6fc:	00d756b3          	srl	a3,a4,a3
   1f700:	00c78a63          	beq	a5,a2,1f714 <__adddf3+0x848>
   1f704:	04000613          	li	a2,64
   1f708:	40f607b3          	sub	a5,a2,a5
   1f70c:	00f717b3          	sll	a5,a4,a5
   1f710:	00f5e5b3          	or	a1,a1,a5
   1f714:	00b039b3          	snez	s3,a1
   1f718:	00d9e9b3          	or	s3,s3,a3
   1f71c:	c35ff06f          	j	1f350 <__adddf3+0x484>
   1f720:	0034d613          	srl	a2,s1,0x3
   1f724:	00090793          	mv	a5,s2
   1f728:	00098713          	mv	a4,s3
   1f72c:	c79ff06f          	j	1f3a4 <__adddf3+0x4d8>
   1f730:	02000693          	li	a3,32
   1f734:	40f686b3          	sub	a3,a3,a5
   1f738:	00000613          	li	a2,0
   1f73c:	8b5ff06f          	j	1eff0 <__adddf3+0x124>
   1f740:	00c9e833          	or	a6,s3,a2
   1f744:	d00808e3          	beqz	a6,1f454 <__adddf3+0x588>
   1f748:	0039d993          	srl	s3,s3,0x3
   1f74c:	00060713          	mv	a4,a2
   1f750:	d85ff06f          	j	1f4d4 <__adddf3+0x608>
   1f754:	00000e13          	li	t3,0
   1f758:	7ff00793          	li	a5,2047
   1f75c:	00080737          	lui	a4,0x80
   1f760:	905ff06f          	j	1f064 <__adddf3+0x198>
   1f764:	01d71793          	sll	a5,a4,0x1d
   1f768:	00375713          	srl	a4,a4,0x3
   1f76c:	0107e833          	or	a6,a5,a6
   1f770:	01d77733          	and	a4,a4,t4
   1f774:	00000793          	li	a5,0
   1f778:	8edff06f          	j	1f064 <__adddf3+0x198>
   1f77c:	01d71813          	sll	a6,a4,0x1d
   1f780:	0035d593          	srl	a1,a1,0x3
   1f784:	00b86833          	or	a6,a6,a1
   1f788:	00375713          	srl	a4,a4,0x3
   1f78c:	00068413          	mv	s0,a3
   1f790:	c29ff06f          	j	1f3b8 <__adddf3+0x4ec>

0001f794 <__divdf3>:
   1f794:	fb010113          	add	sp,sp,-80
   1f798:	0145d793          	srl	a5,a1,0x14
   1f79c:	04812423          	sw	s0,72(sp)
   1f7a0:	04912223          	sw	s1,68(sp)
   1f7a4:	05212023          	sw	s2,64(sp)
   1f7a8:	03412c23          	sw	s4,56(sp)
   1f7ac:	03512a23          	sw	s5,52(sp)
   1f7b0:	00c59493          	sll	s1,a1,0xc
   1f7b4:	04112623          	sw	ra,76(sp)
   1f7b8:	03312e23          	sw	s3,60(sp)
   1f7bc:	03612823          	sw	s6,48(sp)
   1f7c0:	03712623          	sw	s7,44(sp)
   1f7c4:	03812423          	sw	s8,40(sp)
   1f7c8:	7ff7f793          	and	a5,a5,2047
   1f7cc:	00050413          	mv	s0,a0
   1f7d0:	00060a13          	mv	s4,a2
   1f7d4:	00068913          	mv	s2,a3
   1f7d8:	00c4d493          	srl	s1,s1,0xc
   1f7dc:	01f5da93          	srl	s5,a1,0x1f
   1f7e0:	18078c63          	beqz	a5,1f978 <__divdf3+0x1e4>
   1f7e4:	7ff00713          	li	a4,2047
   1f7e8:	08e78a63          	beq	a5,a4,1f87c <__divdf3+0xe8>
   1f7ec:	01d55b13          	srl	s6,a0,0x1d
   1f7f0:	00349493          	sll	s1,s1,0x3
   1f7f4:	009b64b3          	or	s1,s6,s1
   1f7f8:	00800737          	lui	a4,0x800
   1f7fc:	00e4eb33          	or	s6,s1,a4
   1f800:	00351b93          	sll	s7,a0,0x3
   1f804:	c0178993          	add	s3,a5,-1023
   1f808:	00000493          	li	s1,0
   1f80c:	00000c13          	li	s8,0
   1f810:	01495793          	srl	a5,s2,0x14
   1f814:	00c91413          	sll	s0,s2,0xc
   1f818:	7ff7f793          	and	a5,a5,2047
   1f81c:	00c45413          	srl	s0,s0,0xc
   1f820:	01f95913          	srl	s2,s2,0x1f
   1f824:	08078463          	beqz	a5,1f8ac <__divdf3+0x118>
   1f828:	7ff00713          	li	a4,2047
   1f82c:	18e78c63          	beq	a5,a4,1f9c4 <__divdf3+0x230>
   1f830:	00341413          	sll	s0,s0,0x3
   1f834:	01da5713          	srl	a4,s4,0x1d
   1f838:	00876733          	or	a4,a4,s0
   1f83c:	c0178793          	add	a5,a5,-1023
   1f840:	00800437          	lui	s0,0x800
   1f844:	40f989b3          	sub	s3,s3,a5
   1f848:	00876433          	or	s0,a4,s0
   1f84c:	003a1813          	sll	a6,s4,0x3
   1f850:	00000793          	li	a5,0
   1f854:	00f00713          	li	a4,15
   1f858:	012aca33          	xor	s4,s5,s2
   1f85c:	24976663          	bltu	a4,s1,1faa8 <__divdf3+0x314>
   1f860:	00003697          	auipc	a3,0x3
   1f864:	f4c68693          	add	a3,a3,-180 # 227ac <_ctype_+0x104>
   1f868:	00249493          	sll	s1,s1,0x2
   1f86c:	00d484b3          	add	s1,s1,a3
   1f870:	0004a703          	lw	a4,0(s1)
   1f874:	00d70733          	add	a4,a4,a3
   1f878:	00070067          	jr	a4 # 800000 <__BSS_END__+0x7dc0f0>
   1f87c:	00a4eb33          	or	s6,s1,a0
   1f880:	1c0b1e63          	bnez	s6,1fa5c <__divdf3+0x2c8>
   1f884:	01495793          	srl	a5,s2,0x14
   1f888:	00c91413          	sll	s0,s2,0xc
   1f88c:	7ff7f793          	and	a5,a5,2047
   1f890:	00000b93          	li	s7,0
   1f894:	00800493          	li	s1,8
   1f898:	7ff00993          	li	s3,2047
   1f89c:	00200c13          	li	s8,2
   1f8a0:	00c45413          	srl	s0,s0,0xc
   1f8a4:	01f95913          	srl	s2,s2,0x1f
   1f8a8:	f80790e3          	bnez	a5,1f828 <__divdf3+0x94>
   1f8ac:	01446833          	or	a6,s0,s4
   1f8b0:	1c080263          	beqz	a6,1fa74 <__divdf3+0x2e0>
   1f8b4:	5c040663          	beqz	s0,1fe80 <__divdf3+0x6ec>
   1f8b8:	00040513          	mv	a0,s0
   1f8bc:	1b8020ef          	jal	21a74 <__clzsi2>
   1f8c0:	00050793          	mv	a5,a0
   1f8c4:	ff550693          	add	a3,a0,-11
   1f8c8:	01d00713          	li	a4,29
   1f8cc:	ff878813          	add	a6,a5,-8
   1f8d0:	40d70733          	sub	a4,a4,a3
   1f8d4:	01041433          	sll	s0,s0,a6
   1f8d8:	00ea5733          	srl	a4,s4,a4
   1f8dc:	00876433          	or	s0,a4,s0
   1f8e0:	010a1833          	sll	a6,s4,a6
   1f8e4:	013787b3          	add	a5,a5,s3
   1f8e8:	3f378993          	add	s3,a5,1011
   1f8ec:	00000793          	li	a5,0
   1f8f0:	f65ff06f          	j	1f854 <__divdf3+0xc0>
   1f8f4:	40f70733          	sub	a4,a4,a5
   1f8f8:	03800693          	li	a3,56
   1f8fc:	60e6d063          	bge	a3,a4,1fefc <__divdf3+0x768>
   1f900:	00000793          	li	a5,0
   1f904:	00000693          	li	a3,0
   1f908:	00000713          	li	a4,0
   1f90c:	04c12083          	lw	ra,76(sp)
   1f910:	04812403          	lw	s0,72(sp)
   1f914:	01479793          	sll	a5,a5,0x14
   1f918:	00d7e7b3          	or	a5,a5,a3
   1f91c:	01fa1693          	sll	a3,s4,0x1f
   1f920:	00d7e7b3          	or	a5,a5,a3
   1f924:	04412483          	lw	s1,68(sp)
   1f928:	04012903          	lw	s2,64(sp)
   1f92c:	03c12983          	lw	s3,60(sp)
   1f930:	03812a03          	lw	s4,56(sp)
   1f934:	03412a83          	lw	s5,52(sp)
   1f938:	03012b03          	lw	s6,48(sp)
   1f93c:	02c12b83          	lw	s7,44(sp)
   1f940:	02812c03          	lw	s8,40(sp)
   1f944:	00070513          	mv	a0,a4
   1f948:	00078593          	mv	a1,a5
   1f94c:	05010113          	add	sp,sp,80
   1f950:	00008067          	ret
   1f954:	7ff00793          	li	a5,2047
   1f958:	00000693          	li	a3,0
   1f95c:	00000713          	li	a4,0
   1f960:	fadff06f          	j	1f90c <__divdf3+0x178>
   1f964:	00000a13          	li	s4,0
   1f968:	7ff00793          	li	a5,2047
   1f96c:	000806b7          	lui	a3,0x80
   1f970:	00000713          	li	a4,0
   1f974:	f99ff06f          	j	1f90c <__divdf3+0x178>
   1f978:	00a4eb33          	or	s6,s1,a0
   1f97c:	100b0c63          	beqz	s6,1fa94 <__divdf3+0x300>
   1f980:	52048463          	beqz	s1,1fea8 <__divdf3+0x714>
   1f984:	00048513          	mv	a0,s1
   1f988:	0ec020ef          	jal	21a74 <__clzsi2>
   1f98c:	00050713          	mv	a4,a0
   1f990:	ff550793          	add	a5,a0,-11
   1f994:	01d00b13          	li	s6,29
   1f998:	ff870b93          	add	s7,a4,-8
   1f99c:	40fb0b33          	sub	s6,s6,a5
   1f9a0:	017494b3          	sll	s1,s1,s7
   1f9a4:	01645b33          	srl	s6,s0,s6
   1f9a8:	009b6b33          	or	s6,s6,s1
   1f9ac:	01741bb3          	sll	s7,s0,s7
   1f9b0:	c0d00793          	li	a5,-1011
   1f9b4:	40e789b3          	sub	s3,a5,a4
   1f9b8:	00000493          	li	s1,0
   1f9bc:	00000c13          	li	s8,0
   1f9c0:	e51ff06f          	j	1f810 <__divdf3+0x7c>
   1f9c4:	01446833          	or	a6,s0,s4
   1f9c8:	80198993          	add	s3,s3,-2047
   1f9cc:	0a081c63          	bnez	a6,1fa84 <__divdf3+0x2f0>
   1f9d0:	0024e493          	or	s1,s1,2
   1f9d4:	00000413          	li	s0,0
   1f9d8:	00200793          	li	a5,2
   1f9dc:	e79ff06f          	j	1f854 <__divdf3+0xc0>
   1f9e0:	000a8913          	mv	s2,s5
   1f9e4:	000b0413          	mv	s0,s6
   1f9e8:	000b8813          	mv	a6,s7
   1f9ec:	00200793          	li	a5,2
   1f9f0:	60fc0863          	beq	s8,a5,20000 <__divdf3+0x86c>
   1f9f4:	00300793          	li	a5,3
   1f9f8:	f6fc06e3          	beq	s8,a5,1f964 <__divdf3+0x1d0>
   1f9fc:	00100793          	li	a5,1
   1fa00:	00090a13          	mv	s4,s2
   1fa04:	eefc0ee3          	beq	s8,a5,1f900 <__divdf3+0x16c>
   1fa08:	3ff98793          	add	a5,s3,1023
   1fa0c:	3cf05263          	blez	a5,1fdd0 <__divdf3+0x63c>
   1fa10:	00787713          	and	a4,a6,7
   1fa14:	5c071663          	bnez	a4,1ffe0 <__divdf3+0x84c>
   1fa18:	00741713          	sll	a4,s0,0x7
   1fa1c:	00075a63          	bgez	a4,1fa30 <__divdf3+0x29c>
   1fa20:	ff0007b7          	lui	a5,0xff000
   1fa24:	fff78793          	add	a5,a5,-1 # feffffff <__BSS_END__+0xfefdc0ef>
   1fa28:	00f47433          	and	s0,s0,a5
   1fa2c:	40098793          	add	a5,s3,1024
   1fa30:	7fe00713          	li	a4,2046
   1fa34:	f2f740e3          	blt	a4,a5,1f954 <__divdf3+0x1c0>
   1fa38:	00385813          	srl	a6,a6,0x3
   1fa3c:	01d41713          	sll	a4,s0,0x1d
   1fa40:	00941693          	sll	a3,s0,0x9
   1fa44:	01076733          	or	a4,a4,a6
   1fa48:	00c6d693          	srl	a3,a3,0xc
   1fa4c:	7ff7f793          	and	a5,a5,2047
   1fa50:	ebdff06f          	j	1f90c <__divdf3+0x178>
   1fa54:	00078c13          	mv	s8,a5
   1fa58:	f95ff06f          	j	1f9ec <__divdf3+0x258>
   1fa5c:	00048b13          	mv	s6,s1
   1fa60:	00050b93          	mv	s7,a0
   1fa64:	00c00493          	li	s1,12
   1fa68:	7ff00993          	li	s3,2047
   1fa6c:	00300c13          	li	s8,3
   1fa70:	da1ff06f          	j	1f810 <__divdf3+0x7c>
   1fa74:	0014e493          	or	s1,s1,1
   1fa78:	00000413          	li	s0,0
   1fa7c:	00100793          	li	a5,1
   1fa80:	dd5ff06f          	j	1f854 <__divdf3+0xc0>
   1fa84:	0034e493          	or	s1,s1,3
   1fa88:	000a0813          	mv	a6,s4
   1fa8c:	00300793          	li	a5,3
   1fa90:	dc5ff06f          	j	1f854 <__divdf3+0xc0>
   1fa94:	00000b93          	li	s7,0
   1fa98:	00400493          	li	s1,4
   1fa9c:	00000993          	li	s3,0
   1faa0:	00100c13          	li	s8,1
   1faa4:	d6dff06f          	j	1f810 <__divdf3+0x7c>
   1faa8:	03912223          	sw	s9,36(sp)
   1faac:	03a12023          	sw	s10,32(sp)
   1fab0:	01b12e23          	sw	s11,28(sp)
   1fab4:	3b646a63          	bltu	s0,s6,1fe68 <__divdf3+0x6d4>
   1fab8:	3a8b0663          	beq	s6,s0,1fe64 <__divdf3+0x6d0>
   1fabc:	fff98993          	add	s3,s3,-1
   1fac0:	000b8c13          	mv	s8,s7
   1fac4:	000b0493          	mv	s1,s6
   1fac8:	00000d13          	li	s10,0
   1facc:	01885c93          	srl	s9,a6,0x18
   1fad0:	00841413          	sll	s0,s0,0x8
   1fad4:	01045913          	srl	s2,s0,0x10
   1fad8:	008cecb3          	or	s9,s9,s0
   1fadc:	00090593          	mv	a1,s2
   1fae0:	00048513          	mv	a0,s1
   1fae4:	010c9b13          	sll	s6,s9,0x10
   1fae8:	00881a93          	sll	s5,a6,0x8
   1faec:	010b5b13          	srl	s6,s6,0x10
   1faf0:	6d9010ef          	jal	219c8 <__hidden___udivsi3>
   1faf4:	00050593          	mv	a1,a0
   1faf8:	00050413          	mv	s0,a0
   1fafc:	000b0513          	mv	a0,s6
   1fb00:	69d010ef          	jal	2199c <__mulsi3>
   1fb04:	00050793          	mv	a5,a0
   1fb08:	00090593          	mv	a1,s2
   1fb0c:	00048513          	mv	a0,s1
   1fb10:	00078493          	mv	s1,a5
   1fb14:	6fd010ef          	jal	21a10 <__umodsi3>
   1fb18:	01051513          	sll	a0,a0,0x10
   1fb1c:	010c5793          	srl	a5,s8,0x10
   1fb20:	00a7e7b3          	or	a5,a5,a0
   1fb24:	0097fa63          	bgeu	a5,s1,1fb38 <__divdf3+0x3a4>
   1fb28:	00fc87b3          	add	a5,s9,a5
   1fb2c:	fff40713          	add	a4,s0,-1 # 7fffff <__BSS_END__+0x7dc0ef>
   1fb30:	3b97fe63          	bgeu	a5,s9,1feec <__divdf3+0x758>
   1fb34:	00070413          	mv	s0,a4
   1fb38:	409784b3          	sub	s1,a5,s1
   1fb3c:	00090593          	mv	a1,s2
   1fb40:	00048513          	mv	a0,s1
   1fb44:	685010ef          	jal	219c8 <__hidden___udivsi3>
   1fb48:	00050593          	mv	a1,a0
   1fb4c:	00050b93          	mv	s7,a0
   1fb50:	000b0513          	mv	a0,s6
   1fb54:	649010ef          	jal	2199c <__mulsi3>
   1fb58:	00050793          	mv	a5,a0
   1fb5c:	00090593          	mv	a1,s2
   1fb60:	00048513          	mv	a0,s1
   1fb64:	00078493          	mv	s1,a5
   1fb68:	6a9010ef          	jal	21a10 <__umodsi3>
   1fb6c:	010c1793          	sll	a5,s8,0x10
   1fb70:	01051513          	sll	a0,a0,0x10
   1fb74:	0107d793          	srl	a5,a5,0x10
   1fb78:	00a7e7b3          	or	a5,a5,a0
   1fb7c:	0097fa63          	bgeu	a5,s1,1fb90 <__divdf3+0x3fc>
   1fb80:	00fc87b3          	add	a5,s9,a5
   1fb84:	fffb8713          	add	a4,s7,-1
   1fb88:	3597fa63          	bgeu	a5,s9,1fedc <__divdf3+0x748>
   1fb8c:	00070b93          	mv	s7,a4
   1fb90:	00010337          	lui	t1,0x10
   1fb94:	01041413          	sll	s0,s0,0x10
   1fb98:	01746433          	or	s0,s0,s7
   1fb9c:	fff30d93          	add	s11,t1,-1 # ffff <exit-0x95>
   1fba0:	01b478b3          	and	a7,s0,s11
   1fba4:	01bafdb3          	and	s11,s5,s11
   1fba8:	40978bb3          	sub	s7,a5,s1
   1fbac:	010adc13          	srl	s8,s5,0x10
   1fbb0:	01045793          	srl	a5,s0,0x10
   1fbb4:	00088513          	mv	a0,a7
   1fbb8:	000d8593          	mv	a1,s11
   1fbbc:	5e1010ef          	jal	2199c <__mulsi3>
   1fbc0:	00050813          	mv	a6,a0
   1fbc4:	000c0593          	mv	a1,s8
   1fbc8:	00088513          	mv	a0,a7
   1fbcc:	5d1010ef          	jal	2199c <__mulsi3>
   1fbd0:	00050893          	mv	a7,a0
   1fbd4:	000d8593          	mv	a1,s11
   1fbd8:	00078513          	mv	a0,a5
   1fbdc:	5c1010ef          	jal	2199c <__mulsi3>
   1fbe0:	00050e13          	mv	t3,a0
   1fbe4:	000c0593          	mv	a1,s8
   1fbe8:	00078513          	mv	a0,a5
   1fbec:	5b1010ef          	jal	2199c <__mulsi3>
   1fbf0:	01085793          	srl	a5,a6,0x10
   1fbf4:	01c888b3          	add	a7,a7,t3
   1fbf8:	011787b3          	add	a5,a5,a7
   1fbfc:	01c7f463          	bgeu	a5,t3,1fc04 <__divdf3+0x470>
   1fc00:	00650533          	add	a0,a0,t1
   1fc04:	00010637          	lui	a2,0x10
   1fc08:	fff60613          	add	a2,a2,-1 # ffff <exit-0x95>
   1fc0c:	00c7f4b3          	and	s1,a5,a2
   1fc10:	0107d693          	srl	a3,a5,0x10
   1fc14:	01049493          	sll	s1,s1,0x10
   1fc18:	00c87833          	and	a6,a6,a2
   1fc1c:	00a687b3          	add	a5,a3,a0
   1fc20:	010484b3          	add	s1,s1,a6
   1fc24:	20fbea63          	bltu	s7,a5,1fe38 <__divdf3+0x6a4>
   1fc28:	20fb8663          	beq	s7,a5,1fe34 <__divdf3+0x6a0>
   1fc2c:	409d04b3          	sub	s1,s10,s1
   1fc30:	40fb8bb3          	sub	s7,s7,a5
   1fc34:	009d3d33          	sltu	s10,s10,s1
   1fc38:	41ab8bb3          	sub	s7,s7,s10
   1fc3c:	377c8a63          	beq	s9,s7,1ffb0 <__divdf3+0x81c>
   1fc40:	00090593          	mv	a1,s2
   1fc44:	000b8513          	mv	a0,s7
   1fc48:	581010ef          	jal	219c8 <__hidden___udivsi3>
   1fc4c:	00050593          	mv	a1,a0
   1fc50:	00a12623          	sw	a0,12(sp)
   1fc54:	00050d13          	mv	s10,a0
   1fc58:	000b0513          	mv	a0,s6
   1fc5c:	541010ef          	jal	2199c <__mulsi3>
   1fc60:	00050793          	mv	a5,a0
   1fc64:	00090593          	mv	a1,s2
   1fc68:	000b8513          	mv	a0,s7
   1fc6c:	00078b93          	mv	s7,a5
   1fc70:	5a1010ef          	jal	21a10 <__umodsi3>
   1fc74:	01051513          	sll	a0,a0,0x10
   1fc78:	0104d793          	srl	a5,s1,0x10
   1fc7c:	00a7e7b3          	or	a5,a5,a0
   1fc80:	0377f063          	bgeu	a5,s7,1fca0 <__divdf3+0x50c>
   1fc84:	00fc87b3          	add	a5,s9,a5
   1fc88:	fffd0693          	add	a3,s10,-1
   1fc8c:	3797e263          	bltu	a5,s9,1fff0 <__divdf3+0x85c>
   1fc90:	3777f063          	bgeu	a5,s7,1fff0 <__divdf3+0x85c>
   1fc94:	ffed0713          	add	a4,s10,-2
   1fc98:	00e12623          	sw	a4,12(sp)
   1fc9c:	019787b3          	add	a5,a5,s9
   1fca0:	41778bb3          	sub	s7,a5,s7
   1fca4:	00090593          	mv	a1,s2
   1fca8:	000b8513          	mv	a0,s7
   1fcac:	51d010ef          	jal	219c8 <__hidden___udivsi3>
   1fcb0:	00050593          	mv	a1,a0
   1fcb4:	00050d13          	mv	s10,a0
   1fcb8:	000b0513          	mv	a0,s6
   1fcbc:	4e1010ef          	jal	2199c <__mulsi3>
   1fcc0:	00050793          	mv	a5,a0
   1fcc4:	00090593          	mv	a1,s2
   1fcc8:	000b8513          	mv	a0,s7
   1fccc:	00078913          	mv	s2,a5
   1fcd0:	01049493          	sll	s1,s1,0x10
   1fcd4:	53d010ef          	jal	21a10 <__umodsi3>
   1fcd8:	01051513          	sll	a0,a0,0x10
   1fcdc:	0104d493          	srl	s1,s1,0x10
   1fce0:	00a4e4b3          	or	s1,s1,a0
   1fce4:	0124fe63          	bgeu	s1,s2,1fd00 <__divdf3+0x56c>
   1fce8:	009c84b3          	add	s1,s9,s1
   1fcec:	fffd0793          	add	a5,s10,-1
   1fcf0:	3194e463          	bltu	s1,s9,1fff8 <__divdf3+0x864>
   1fcf4:	3124f263          	bgeu	s1,s2,1fff8 <__divdf3+0x864>
   1fcf8:	ffed0d13          	add	s10,s10,-2
   1fcfc:	019484b3          	add	s1,s1,s9
   1fd00:	00c12783          	lw	a5,12(sp)
   1fd04:	412484b3          	sub	s1,s1,s2
   1fd08:	000d8593          	mv	a1,s11
   1fd0c:	01079813          	sll	a6,a5,0x10
   1fd10:	01a86833          	or	a6,a6,s10
   1fd14:	01081313          	sll	t1,a6,0x10
   1fd18:	01035313          	srl	t1,t1,0x10
   1fd1c:	01085793          	srl	a5,a6,0x10
   1fd20:	00030513          	mv	a0,t1
   1fd24:	479010ef          	jal	2199c <__mulsi3>
   1fd28:	00050893          	mv	a7,a0
   1fd2c:	000c0593          	mv	a1,s8
   1fd30:	00030513          	mv	a0,t1
   1fd34:	469010ef          	jal	2199c <__mulsi3>
   1fd38:	00050313          	mv	t1,a0
   1fd3c:	000d8593          	mv	a1,s11
   1fd40:	00078513          	mv	a0,a5
   1fd44:	459010ef          	jal	2199c <__mulsi3>
   1fd48:	00050e13          	mv	t3,a0
   1fd4c:	000c0593          	mv	a1,s8
   1fd50:	00078513          	mv	a0,a5
   1fd54:	449010ef          	jal	2199c <__mulsi3>
   1fd58:	0108d793          	srl	a5,a7,0x10
   1fd5c:	01c30333          	add	t1,t1,t3
   1fd60:	006787b3          	add	a5,a5,t1
   1fd64:	01c7f663          	bgeu	a5,t3,1fd70 <__divdf3+0x5dc>
   1fd68:	00010737          	lui	a4,0x10
   1fd6c:	00e50533          	add	a0,a0,a4
   1fd70:	000106b7          	lui	a3,0x10
   1fd74:	fff68693          	add	a3,a3,-1 # ffff <exit-0x95>
   1fd78:	0107d713          	srl	a4,a5,0x10
   1fd7c:	00d7f7b3          	and	a5,a5,a3
   1fd80:	01079793          	sll	a5,a5,0x10
   1fd84:	00d8f8b3          	and	a7,a7,a3
   1fd88:	00a70733          	add	a4,a4,a0
   1fd8c:	011787b3          	add	a5,a5,a7
   1fd90:	02e4e063          	bltu	s1,a4,1fdb0 <__divdf3+0x61c>
   1fd94:	00e48c63          	beq	s1,a4,1fdac <__divdf3+0x618>
   1fd98:	02412c83          	lw	s9,36(sp)
   1fd9c:	02012d03          	lw	s10,32(sp)
   1fda0:	01c12d83          	lw	s11,28(sp)
   1fda4:	00186813          	or	a6,a6,1
   1fda8:	c61ff06f          	j	1fa08 <__divdf3+0x274>
   1fdac:	1c078a63          	beqz	a5,1ff80 <__divdf3+0x7ec>
   1fdb0:	009c84b3          	add	s1,s9,s1
   1fdb4:	fff80613          	add	a2,a6,-1
   1fdb8:	00048693          	mv	a3,s1
   1fdbc:	1b94ec63          	bltu	s1,s9,1ff74 <__divdf3+0x7e0>
   1fdc0:	24e4ea63          	bltu	s1,a4,20014 <__divdf3+0x880>
   1fdc4:	26e48863          	beq	s1,a4,20034 <__divdf3+0x8a0>
   1fdc8:	00060813          	mv	a6,a2
   1fdcc:	fcdff06f          	j	1fd98 <__divdf3+0x604>
   1fdd0:	00100713          	li	a4,1
   1fdd4:	b20790e3          	bnez	a5,1f8f4 <__divdf3+0x160>
   1fdd8:	41e98793          	add	a5,s3,1054
   1fddc:	00f816b3          	sll	a3,a6,a5
   1fde0:	00d036b3          	snez	a3,a3
   1fde4:	00f417b3          	sll	a5,s0,a5
   1fde8:	00f6e7b3          	or	a5,a3,a5
   1fdec:	00e85833          	srl	a6,a6,a4
   1fdf0:	00f86833          	or	a6,a6,a5
   1fdf4:	00787793          	and	a5,a6,7
   1fdf8:	00e45433          	srl	s0,s0,a4
   1fdfc:	02078063          	beqz	a5,1fe1c <__divdf3+0x688>
   1fe00:	00f87793          	and	a5,a6,15
   1fe04:	00400713          	li	a4,4
   1fe08:	00e78a63          	beq	a5,a4,1fe1c <__divdf3+0x688>
   1fe0c:	00480793          	add	a5,a6,4
   1fe10:	0107b833          	sltu	a6,a5,a6
   1fe14:	01040433          	add	s0,s0,a6
   1fe18:	00078813          	mv	a6,a5
   1fe1c:	00841613          	sll	a2,s0,0x8
   1fe20:	00100793          	li	a5,1
   1fe24:	00000693          	li	a3,0
   1fe28:	00000713          	li	a4,0
   1fe2c:	ae0640e3          	bltz	a2,1f90c <__divdf3+0x178>
   1fe30:	1280006f          	j	1ff58 <__divdf3+0x7c4>
   1fe34:	de9d7ce3          	bgeu	s10,s1,1fc2c <__divdf3+0x498>
   1fe38:	015d06b3          	add	a3,s10,s5
   1fe3c:	01a6b633          	sltu	a2,a3,s10
   1fe40:	019605b3          	add	a1,a2,s9
   1fe44:	00bb8bb3          	add	s7,s7,a1
   1fe48:	00068d13          	mv	s10,a3
   1fe4c:	fff40593          	add	a1,s0,-1
   1fe50:	077cfe63          	bgeu	s9,s7,1fecc <__divdf3+0x738>
   1fe54:	14fbe063          	bltu	s7,a5,1ff94 <__divdf3+0x800>
   1fe58:	13778c63          	beq	a5,s7,1ff90 <__divdf3+0x7fc>
   1fe5c:	00058413          	mv	s0,a1
   1fe60:	dcdff06f          	j	1fc2c <__divdf3+0x498>
   1fe64:	c50bece3          	bltu	s7,a6,1fabc <__divdf3+0x328>
   1fe68:	01fb1c13          	sll	s8,s6,0x1f
   1fe6c:	001bd713          	srl	a4,s7,0x1
   1fe70:	001b5493          	srl	s1,s6,0x1
   1fe74:	00ec6c33          	or	s8,s8,a4
   1fe78:	01fb9d13          	sll	s10,s7,0x1f
   1fe7c:	c51ff06f          	j	1facc <__divdf3+0x338>
   1fe80:	000a0513          	mv	a0,s4
   1fe84:	3f1010ef          	jal	21a74 <__clzsi2>
   1fe88:	01550693          	add	a3,a0,21
   1fe8c:	01c00713          	li	a4,28
   1fe90:	02050793          	add	a5,a0,32
   1fe94:	a2d75ae3          	bge	a4,a3,1f8c8 <__divdf3+0x134>
   1fe98:	ff850513          	add	a0,a0,-8
   1fe9c:	00000813          	li	a6,0
   1fea0:	00aa1433          	sll	s0,s4,a0
   1fea4:	a41ff06f          	j	1f8e4 <__divdf3+0x150>
   1fea8:	3cd010ef          	jal	21a74 <__clzsi2>
   1feac:	01550793          	add	a5,a0,21
   1feb0:	01c00693          	li	a3,28
   1feb4:	02050713          	add	a4,a0,32
   1feb8:	acf6dee3          	bge	a3,a5,1f994 <__divdf3+0x200>
   1febc:	ff850493          	add	s1,a0,-8
   1fec0:	00941b33          	sll	s6,s0,s1
   1fec4:	00000b93          	li	s7,0
   1fec8:	ae9ff06f          	j	1f9b0 <__divdf3+0x21c>
   1fecc:	f97c98e3          	bne	s9,s7,1fe5c <__divdf3+0x6c8>
   1fed0:	f80602e3          	beqz	a2,1fe54 <__divdf3+0x6c0>
   1fed4:	00058413          	mv	s0,a1
   1fed8:	d55ff06f          	j	1fc2c <__divdf3+0x498>
   1fedc:	ca97f8e3          	bgeu	a5,s1,1fb8c <__divdf3+0x3f8>
   1fee0:	ffeb8b93          	add	s7,s7,-2
   1fee4:	019787b3          	add	a5,a5,s9
   1fee8:	ca9ff06f          	j	1fb90 <__divdf3+0x3fc>
   1feec:	c497f4e3          	bgeu	a5,s1,1fb34 <__divdf3+0x3a0>
   1fef0:	ffe40413          	add	s0,s0,-2
   1fef4:	019787b3          	add	a5,a5,s9
   1fef8:	c41ff06f          	j	1fb38 <__divdf3+0x3a4>
   1fefc:	01f00693          	li	a3,31
   1ff00:	ece6dce3          	bge	a3,a4,1fdd8 <__divdf3+0x644>
   1ff04:	fe100693          	li	a3,-31
   1ff08:	40f686b3          	sub	a3,a3,a5
   1ff0c:	02000793          	li	a5,32
   1ff10:	00d456b3          	srl	a3,s0,a3
   1ff14:	00f70863          	beq	a4,a5,1ff24 <__divdf3+0x790>
   1ff18:	43e98793          	add	a5,s3,1086
   1ff1c:	00f417b3          	sll	a5,s0,a5
   1ff20:	00f86833          	or	a6,a6,a5
   1ff24:	01003833          	snez	a6,a6
   1ff28:	00d86833          	or	a6,a6,a3
   1ff2c:	00787713          	and	a4,a6,7
   1ff30:	00000693          	li	a3,0
   1ff34:	02070863          	beqz	a4,1ff64 <__divdf3+0x7d0>
   1ff38:	00f87793          	and	a5,a6,15
   1ff3c:	00400713          	li	a4,4
   1ff40:	00000413          	li	s0,0
   1ff44:	00e78a63          	beq	a5,a4,1ff58 <__divdf3+0x7c4>
   1ff48:	00480793          	add	a5,a6,4
   1ff4c:	0107b833          	sltu	a6,a5,a6
   1ff50:	01003433          	snez	s0,a6
   1ff54:	00078813          	mv	a6,a5
   1ff58:	00941693          	sll	a3,s0,0x9
   1ff5c:	01d41713          	sll	a4,s0,0x1d
   1ff60:	00c6d693          	srl	a3,a3,0xc
   1ff64:	00385813          	srl	a6,a6,0x3
   1ff68:	00e86733          	or	a4,a6,a4
   1ff6c:	00000793          	li	a5,0
   1ff70:	99dff06f          	j	1f90c <__divdf3+0x178>
   1ff74:	00060813          	mv	a6,a2
   1ff78:	e2e690e3          	bne	a3,a4,1fd98 <__divdf3+0x604>
   1ff7c:	e1579ee3          	bne	a5,s5,1fd98 <__divdf3+0x604>
   1ff80:	02412c83          	lw	s9,36(sp)
   1ff84:	02012d03          	lw	s10,32(sp)
   1ff88:	01c12d83          	lw	s11,28(sp)
   1ff8c:	a7dff06f          	j	1fa08 <__divdf3+0x274>
   1ff90:	ec96f6e3          	bgeu	a3,s1,1fe5c <__divdf3+0x6c8>
   1ff94:	00da86b3          	add	a3,s5,a3
   1ff98:	0156b633          	sltu	a2,a3,s5
   1ff9c:	01960633          	add	a2,a2,s9
   1ffa0:	ffe40413          	add	s0,s0,-2
   1ffa4:	00068d13          	mv	s10,a3
   1ffa8:	00cb8bb3          	add	s7,s7,a2
   1ffac:	c81ff06f          	j	1fc2c <__divdf3+0x498>
   1ffb0:	c0200713          	li	a4,-1022
   1ffb4:	02412c83          	lw	s9,36(sp)
   1ffb8:	02012d03          	lw	s10,32(sp)
   1ffbc:	01c12d83          	lw	s11,28(sp)
   1ffc0:	3ff98793          	add	a5,s3,1023
   1ffc4:	fff00813          	li	a6,-1
   1ffc8:	e0e9c4e3          	blt	s3,a4,1fdd0 <__divdf3+0x63c>
   1ffcc:	00480713          	add	a4,a6,4
   1ffd0:	01073833          	sltu	a6,a4,a6
   1ffd4:	01040433          	add	s0,s0,a6
   1ffd8:	00070813          	mv	a6,a4
   1ffdc:	a3dff06f          	j	1fa18 <__divdf3+0x284>
   1ffe0:	00f87713          	and	a4,a6,15
   1ffe4:	00400693          	li	a3,4
   1ffe8:	a2d708e3          	beq	a4,a3,1fa18 <__divdf3+0x284>
   1ffec:	fe1ff06f          	j	1ffcc <__divdf3+0x838>
   1fff0:	00d12623          	sw	a3,12(sp)
   1fff4:	cadff06f          	j	1fca0 <__divdf3+0x50c>
   1fff8:	00078d13          	mv	s10,a5
   1fffc:	d05ff06f          	j	1fd00 <__divdf3+0x56c>
   20000:	00090a13          	mv	s4,s2
   20004:	7ff00793          	li	a5,2047
   20008:	00000693          	li	a3,0
   2000c:	00000713          	li	a4,0
   20010:	8fdff06f          	j	1f90c <__divdf3+0x178>
   20014:	001a9613          	sll	a2,s5,0x1
   20018:	015636b3          	sltu	a3,a2,s5
   2001c:	019686b3          	add	a3,a3,s9
   20020:	00d486b3          	add	a3,s1,a3
   20024:	ffe80813          	add	a6,a6,-2
   20028:	00060a93          	mv	s5,a2
   2002c:	f4e688e3          	beq	a3,a4,1ff7c <__divdf3+0x7e8>
   20030:	d69ff06f          	j	1fd98 <__divdf3+0x604>
   20034:	fefae0e3          	bltu	s5,a5,20014 <__divdf3+0x880>
   20038:	00060813          	mv	a6,a2
   2003c:	f41ff06f          	j	1ff7c <__divdf3+0x7e8>

00020040 <__eqdf2>:
   20040:	0145d713          	srl	a4,a1,0x14
   20044:	001007b7          	lui	a5,0x100
   20048:	fff78793          	add	a5,a5,-1 # fffff <__BSS_END__+0xdc0ef>
   2004c:	0146d813          	srl	a6,a3,0x14
   20050:	7ff77713          	and	a4,a4,2047
   20054:	7ff00313          	li	t1,2047
   20058:	00b7fe33          	and	t3,a5,a1
   2005c:	00050893          	mv	a7,a0
   20060:	00d7f7b3          	and	a5,a5,a3
   20064:	01f5d593          	srl	a1,a1,0x1f
   20068:	7ff87813          	and	a6,a6,2047
   2006c:	01f6d693          	srl	a3,a3,0x1f
   20070:	00100513          	li	a0,1
   20074:	00670c63          	beq	a4,t1,2008c <__eqdf2+0x4c>
   20078:	00680863          	beq	a6,t1,20088 <__eqdf2+0x48>
   2007c:	01071463          	bne	a4,a6,20084 <__eqdf2+0x44>
   20080:	02fe0663          	beq	t3,a5,200ac <__eqdf2+0x6c>
   20084:	00008067          	ret
   20088:	00008067          	ret
   2008c:	fee81ce3          	bne	a6,a4,20084 <__eqdf2+0x44>
   20090:	00fe67b3          	or	a5,t3,a5
   20094:	00c7e7b3          	or	a5,a5,a2
   20098:	0117e7b3          	or	a5,a5,a7
   2009c:	fe0794e3          	bnez	a5,20084 <__eqdf2+0x44>
   200a0:	40d585b3          	sub	a1,a1,a3
   200a4:	00b03533          	snez	a0,a1
   200a8:	00008067          	ret
   200ac:	fcc89ce3          	bne	a7,a2,20084 <__eqdf2+0x44>
   200b0:	00d58a63          	beq	a1,a3,200c4 <__eqdf2+0x84>
   200b4:	fc0718e3          	bnez	a4,20084 <__eqdf2+0x44>
   200b8:	011e6e33          	or	t3,t3,a7
   200bc:	01c03533          	snez	a0,t3
   200c0:	00008067          	ret
   200c4:	00000513          	li	a0,0
   200c8:	00008067          	ret

000200cc <__gedf2>:
   200cc:	0145d893          	srl	a7,a1,0x14
   200d0:	001007b7          	lui	a5,0x100
   200d4:	fff78793          	add	a5,a5,-1 # fffff <__BSS_END__+0xdc0ef>
   200d8:	0146d713          	srl	a4,a3,0x14
   200dc:	7ff8f893          	and	a7,a7,2047
   200e0:	7ff00e13          	li	t3,2047
   200e4:	00b7f333          	and	t1,a5,a1
   200e8:	00050813          	mv	a6,a0
   200ec:	00050e93          	mv	t4,a0
   200f0:	00d7f7b3          	and	a5,a5,a3
   200f4:	01f5d593          	srl	a1,a1,0x1f
   200f8:	00060f13          	mv	t5,a2
   200fc:	7ff77513          	and	a0,a4,2047
   20100:	01f6d693          	srl	a3,a3,0x1f
   20104:	05c88863          	beq	a7,t3,20154 <__gedf2+0x88>
   20108:	03c50463          	beq	a0,t3,20130 <__gedf2+0x64>
   2010c:	06089a63          	bnez	a7,20180 <__gedf2+0xb4>
   20110:	01036833          	or	a6,t1,a6
   20114:	06051063          	bnez	a0,20174 <__gedf2+0xa8>
   20118:	00c7e633          	or	a2,a5,a2
   2011c:	08060c63          	beqz	a2,201b4 <__gedf2+0xe8>
   20120:	0a081263          	bnez	a6,201c4 <__gedf2+0xf8>
   20124:	00100513          	li	a0,1
   20128:	08068263          	beqz	a3,201ac <__gedf2+0xe0>
   2012c:	00008067          	ret
   20130:	00c7e633          	or	a2,a5,a2
   20134:	08061463          	bnez	a2,201bc <__gedf2+0xf0>
   20138:	00089663          	bnez	a7,20144 <__gedf2+0x78>
   2013c:	01036333          	or	t1,t1,a6
   20140:	fe0302e3          	beqz	t1,20124 <__gedf2+0x58>
   20144:	06d58063          	beq	a1,a3,201a4 <__gedf2+0xd8>
   20148:	06059263          	bnez	a1,201ac <__gedf2+0xe0>
   2014c:	00100513          	li	a0,1
   20150:	00008067          	ret
   20154:	01036333          	or	t1,t1,a6
   20158:	06031263          	bnez	t1,201bc <__gedf2+0xf0>
   2015c:	ff1516e3          	bne	a0,a7,20148 <__gedf2+0x7c>
   20160:	00c7e7b3          	or	a5,a5,a2
   20164:	04079c63          	bnez	a5,201bc <__gedf2+0xf0>
   20168:	fed590e3          	bne	a1,a3,20148 <__gedf2+0x7c>
   2016c:	00000513          	li	a0,0
   20170:	00008067          	ret
   20174:	fa0808e3          	beqz	a6,20124 <__gedf2+0x58>
   20178:	fcd598e3          	bne	a1,a3,20148 <__gedf2+0x7c>
   2017c:	0280006f          	j	201a4 <__gedf2+0xd8>
   20180:	fc0504e3          	beqz	a0,20148 <__gedf2+0x7c>
   20184:	fcd592e3          	bne	a1,a3,20148 <__gedf2+0x7c>
   20188:	fd1540e3          	blt	a0,a7,20148 <__gedf2+0x7c>
   2018c:	00a8cc63          	blt	a7,a0,201a4 <__gedf2+0xd8>
   20190:	fa67ece3          	bltu	a5,t1,20148 <__gedf2+0x7c>
   20194:	00f31863          	bne	t1,a5,201a4 <__gedf2+0xd8>
   20198:	fbdf68e3          	bltu	t5,t4,20148 <__gedf2+0x7c>
   2019c:	00000513          	li	a0,0
   201a0:	f9eef6e3          	bgeu	t4,t5,2012c <__gedf2+0x60>
   201a4:	00100513          	li	a0,1
   201a8:	f80592e3          	bnez	a1,2012c <__gedf2+0x60>
   201ac:	fff00513          	li	a0,-1
   201b0:	00008067          	ret
   201b4:	f8081ae3          	bnez	a6,20148 <__gedf2+0x7c>
   201b8:	00008067          	ret
   201bc:	ffe00513          	li	a0,-2
   201c0:	00008067          	ret
   201c4:	fcd586e3          	beq	a1,a3,20190 <__gedf2+0xc4>
   201c8:	f81ff06f          	j	20148 <__gedf2+0x7c>

000201cc <__ledf2>:
   201cc:	0145d893          	srl	a7,a1,0x14
   201d0:	001007b7          	lui	a5,0x100
   201d4:	fff78793          	add	a5,a5,-1 # fffff <__BSS_END__+0xdc0ef>
   201d8:	0146d713          	srl	a4,a3,0x14
   201dc:	7ff8f893          	and	a7,a7,2047
   201e0:	7ff00313          	li	t1,2047
   201e4:	00b7fe33          	and	t3,a5,a1
   201e8:	00050813          	mv	a6,a0
   201ec:	00050e93          	mv	t4,a0
   201f0:	00d7f7b3          	and	a5,a5,a3
   201f4:	01f5d593          	srl	a1,a1,0x1f
   201f8:	00060f13          	mv	t5,a2
   201fc:	7ff77513          	and	a0,a4,2047
   20200:	01f6d693          	srl	a3,a3,0x1f
   20204:	04688a63          	beq	a7,t1,20258 <__ledf2+0x8c>
   20208:	02650463          	beq	a0,t1,20230 <__ledf2+0x64>
   2020c:	06089863          	bnez	a7,2027c <__ledf2+0xb0>
   20210:	010e6833          	or	a6,t3,a6
   20214:	08051e63          	bnez	a0,202b0 <__ledf2+0xe4>
   20218:	00c7e633          	or	a2,a5,a2
   2021c:	0a060463          	beqz	a2,202c4 <__ledf2+0xf8>
   20220:	0a081663          	bnez	a6,202cc <__ledf2+0x100>
   20224:	00100513          	li	a0,1
   20228:	08068063          	beqz	a3,202a8 <__ledf2+0xdc>
   2022c:	00008067          	ret
   20230:	00c7e633          	or	a2,a5,a2
   20234:	00200513          	li	a0,2
   20238:	fe061ae3          	bnez	a2,2022c <__ledf2+0x60>
   2023c:	00089663          	bnez	a7,20248 <__ledf2+0x7c>
   20240:	010e6e33          	or	t3,t3,a6
   20244:	fe0e00e3          	beqz	t3,20224 <__ledf2+0x58>
   20248:	04d58c63          	beq	a1,a3,202a0 <__ledf2+0xd4>
   2024c:	04059e63          	bnez	a1,202a8 <__ledf2+0xdc>
   20250:	00100513          	li	a0,1
   20254:	00008067          	ret
   20258:	010e6e33          	or	t3,t3,a6
   2025c:	060e1063          	bnez	t3,202bc <__ledf2+0xf0>
   20260:	ff1516e3          	bne	a0,a7,2024c <__ledf2+0x80>
   20264:	00c7e7b3          	or	a5,a5,a2
   20268:	00200513          	li	a0,2
   2026c:	fc0790e3          	bnez	a5,2022c <__ledf2+0x60>
   20270:	fcd59ee3          	bne	a1,a3,2024c <__ledf2+0x80>
   20274:	00000513          	li	a0,0
   20278:	00008067          	ret
   2027c:	fc0508e3          	beqz	a0,2024c <__ledf2+0x80>
   20280:	fcd596e3          	bne	a1,a3,2024c <__ledf2+0x80>
   20284:	fd1544e3          	blt	a0,a7,2024c <__ledf2+0x80>
   20288:	00a8cc63          	blt	a7,a0,202a0 <__ledf2+0xd4>
   2028c:	fdc7e0e3          	bltu	a5,t3,2024c <__ledf2+0x80>
   20290:	00fe1863          	bne	t3,a5,202a0 <__ledf2+0xd4>
   20294:	fbdf6ce3          	bltu	t5,t4,2024c <__ledf2+0x80>
   20298:	00000513          	li	a0,0
   2029c:	f9eef8e3          	bgeu	t4,t5,2022c <__ledf2+0x60>
   202a0:	00100513          	li	a0,1
   202a4:	f80594e3          	bnez	a1,2022c <__ledf2+0x60>
   202a8:	fff00513          	li	a0,-1
   202ac:	00008067          	ret
   202b0:	f6080ae3          	beqz	a6,20224 <__ledf2+0x58>
   202b4:	f8d59ce3          	bne	a1,a3,2024c <__ledf2+0x80>
   202b8:	fe9ff06f          	j	202a0 <__ledf2+0xd4>
   202bc:	00200513          	li	a0,2
   202c0:	00008067          	ret
   202c4:	f80814e3          	bnez	a6,2024c <__ledf2+0x80>
   202c8:	00008067          	ret
   202cc:	fcd580e3          	beq	a1,a3,2028c <__ledf2+0xc0>
   202d0:	f7dff06f          	j	2024c <__ledf2+0x80>

000202d4 <__muldf3>:
   202d4:	fd010113          	add	sp,sp,-48
   202d8:	0145d793          	srl	a5,a1,0x14
   202dc:	02812423          	sw	s0,40(sp)
   202e0:	02912223          	sw	s1,36(sp)
   202e4:	03212023          	sw	s2,32(sp)
   202e8:	01312e23          	sw	s3,28(sp)
   202ec:	01512a23          	sw	s5,20(sp)
   202f0:	00c59493          	sll	s1,a1,0xc
   202f4:	02112623          	sw	ra,44(sp)
   202f8:	01412c23          	sw	s4,24(sp)
   202fc:	01612823          	sw	s6,16(sp)
   20300:	01712623          	sw	s7,12(sp)
   20304:	01812423          	sw	s8,8(sp)
   20308:	7ff7f793          	and	a5,a5,2047
   2030c:	00050413          	mv	s0,a0
   20310:	00060a93          	mv	s5,a2
   20314:	00068993          	mv	s3,a3
   20318:	00c4d493          	srl	s1,s1,0xc
   2031c:	01f5d913          	srl	s2,a1,0x1f
   20320:	4e078063          	beqz	a5,20800 <__muldf3+0x52c>
   20324:	7ff00713          	li	a4,2047
   20328:	0ae78663          	beq	a5,a4,203d4 <__muldf3+0x100>
   2032c:	00349693          	sll	a3,s1,0x3
   20330:	01d55713          	srl	a4,a0,0x1d
   20334:	00d76733          	or	a4,a4,a3
   20338:	008006b7          	lui	a3,0x800
   2033c:	00d764b3          	or	s1,a4,a3
   20340:	00351a13          	sll	s4,a0,0x3
   20344:	c0178c13          	add	s8,a5,-1023
   20348:	00000b13          	li	s6,0
   2034c:	00000b93          	li	s7,0
   20350:	0149d793          	srl	a5,s3,0x14
   20354:	00c99713          	sll	a4,s3,0xc
   20358:	7ff7f793          	and	a5,a5,2047
   2035c:	000a8e13          	mv	t3,s5
   20360:	00c75413          	srl	s0,a4,0xc
   20364:	01f9d993          	srl	s3,s3,0x1f
   20368:	0a078063          	beqz	a5,20408 <__muldf3+0x134>
   2036c:	7ff00713          	li	a4,2047
   20370:	14e78e63          	beq	a5,a4,204cc <__muldf3+0x1f8>
   20374:	00341713          	sll	a4,s0,0x3
   20378:	01dad693          	srl	a3,s5,0x1d
   2037c:	00e6e6b3          	or	a3,a3,a4
   20380:	c0178793          	add	a5,a5,-1023
   20384:	00800737          	lui	a4,0x800
   20388:	00e6e433          	or	s0,a3,a4
   2038c:	003a9e13          	sll	t3,s5,0x3
   20390:	01878333          	add	t1,a5,s8
   20394:	00000693          	li	a3,0
   20398:	00a00793          	li	a5,10
   2039c:	00130893          	add	a7,t1,1
   203a0:	0b67cc63          	blt	a5,s6,20458 <__muldf3+0x184>
   203a4:	013945b3          	xor	a1,s2,s3
   203a8:	00200793          	li	a5,2
   203ac:	00058813          	mv	a6,a1
   203b0:	1567c663          	blt	a5,s6,204fc <__muldf3+0x228>
   203b4:	fffb0b13          	add	s6,s6,-1
   203b8:	00100713          	li	a4,1
   203bc:	17676063          	bltu	a4,s6,2051c <__muldf3+0x248>
   203c0:	48f68663          	beq	a3,a5,2084c <__muldf3+0x578>
   203c4:	00040493          	mv	s1,s0
   203c8:	000e0a13          	mv	s4,t3
   203cc:	00068b93          	mv	s7,a3
   203d0:	09c0006f          	j	2046c <__muldf3+0x198>
   203d4:	00a4ea33          	or	s4,s1,a0
   203d8:	480a1463          	bnez	s4,20860 <__muldf3+0x58c>
   203dc:	0149d793          	srl	a5,s3,0x14
   203e0:	00c99713          	sll	a4,s3,0xc
   203e4:	7ff7f793          	and	a5,a5,2047
   203e8:	00000493          	li	s1,0
   203ec:	00800b13          	li	s6,8
   203f0:	7ff00c13          	li	s8,2047
   203f4:	00200b93          	li	s7,2
   203f8:	000a8e13          	mv	t3,s5
   203fc:	00c75413          	srl	s0,a4,0xc
   20400:	01f9d993          	srl	s3,s3,0x1f
   20404:	f60794e3          	bnez	a5,2036c <__muldf3+0x98>
   20408:	015467b3          	or	a5,s0,s5
   2040c:	46078e63          	beqz	a5,20888 <__muldf3+0x5b4>
   20410:	54040c63          	beqz	s0,20968 <__muldf3+0x694>
   20414:	00040513          	mv	a0,s0
   20418:	65c010ef          	jal	21a74 <__clzsi2>
   2041c:	00050313          	mv	t1,a0
   20420:	ff550713          	add	a4,a0,-11
   20424:	01d00793          	li	a5,29
   20428:	ff830e13          	add	t3,t1,-8
   2042c:	40e787b3          	sub	a5,a5,a4
   20430:	00fad7b3          	srl	a5,s5,a5
   20434:	01c41733          	sll	a4,s0,t3
   20438:	00e7e433          	or	s0,a5,a4
   2043c:	01ca9e33          	sll	t3,s5,t3
   20440:	406c0333          	sub	t1,s8,t1
   20444:	c0d30313          	add	t1,t1,-1011
   20448:	00a00793          	li	a5,10
   2044c:	00000693          	li	a3,0
   20450:	00130893          	add	a7,t1,1
   20454:	f567d8e3          	bge	a5,s6,203a4 <__muldf3+0xd0>
   20458:	00090593          	mv	a1,s2
   2045c:	00200793          	li	a5,2
   20460:	3efb8663          	beq	s7,a5,2084c <__muldf3+0x578>
   20464:	00300793          	li	a5,3
   20468:	54fb8863          	beq	s7,a5,209b8 <__muldf3+0x6e4>
   2046c:	00100793          	li	a5,1
   20470:	00058813          	mv	a6,a1
   20474:	52fb9663          	bne	s7,a5,209a0 <__muldf3+0x6cc>
   20478:	00000793          	li	a5,0
   2047c:	00000693          	li	a3,0
   20480:	00000713          	li	a4,0
   20484:	02c12083          	lw	ra,44(sp)
   20488:	02812403          	lw	s0,40(sp)
   2048c:	01479793          	sll	a5,a5,0x14
   20490:	00d7e7b3          	or	a5,a5,a3
   20494:	01f81813          	sll	a6,a6,0x1f
   20498:	0107e7b3          	or	a5,a5,a6
   2049c:	02412483          	lw	s1,36(sp)
   204a0:	02012903          	lw	s2,32(sp)
   204a4:	01c12983          	lw	s3,28(sp)
   204a8:	01812a03          	lw	s4,24(sp)
   204ac:	01412a83          	lw	s5,20(sp)
   204b0:	01012b03          	lw	s6,16(sp)
   204b4:	00c12b83          	lw	s7,12(sp)
   204b8:	00812c03          	lw	s8,8(sp)
   204bc:	00070513          	mv	a0,a4
   204c0:	00078593          	mv	a1,a5
   204c4:	03010113          	add	sp,sp,48
   204c8:	00008067          	ret
   204cc:	01546733          	or	a4,s0,s5
   204d0:	7ffc0313          	add	t1,s8,2047
   204d4:	3c070663          	beqz	a4,208a0 <__muldf3+0x5cc>
   204d8:	00001737          	lui	a4,0x1
   204dc:	01394833          	xor	a6,s2,s3
   204e0:	80070713          	add	a4,a4,-2048 # 800 <exit-0xf894>
   204e4:	003b6b13          	or	s6,s6,3
   204e8:	00a00693          	li	a3,10
   204ec:	00080593          	mv	a1,a6
   204f0:	00ec08b3          	add	a7,s8,a4
   204f4:	4366cc63          	blt	a3,s6,2092c <__muldf3+0x658>
   204f8:	00300693          	li	a3,3
   204fc:	00100613          	li	a2,1
   20500:	01661633          	sll	a2,a2,s6
   20504:	53067713          	and	a4,a2,1328
   20508:	f4071ae3          	bnez	a4,2045c <__muldf3+0x188>
   2050c:	24067793          	and	a5,a2,576
   20510:	48079063          	bnez	a5,20990 <__muldf3+0x6bc>
   20514:	08867613          	and	a2,a2,136
   20518:	38061e63          	bnez	a2,208b4 <__muldf3+0x5e0>
   2051c:	00010fb7          	lui	t6,0x10
   20520:	ffff8293          	add	t0,t6,-1 # ffff <exit-0x95>
   20524:	005a7f33          	and	t5,s4,t0
   20528:	005e72b3          	and	t0,t3,t0
   2052c:	010a5a13          	srl	s4,s4,0x10
   20530:	010e5e13          	srl	t3,t3,0x10
   20534:	000f0513          	mv	a0,t5
   20538:	00028593          	mv	a1,t0
   2053c:	460010ef          	jal	2199c <__mulsi3>
   20540:	00050713          	mv	a4,a0
   20544:	000e0593          	mv	a1,t3
   20548:	000f0513          	mv	a0,t5
   2054c:	450010ef          	jal	2199c <__mulsi3>
   20550:	00050793          	mv	a5,a0
   20554:	00028593          	mv	a1,t0
   20558:	000a0513          	mv	a0,s4
   2055c:	440010ef          	jal	2199c <__mulsi3>
   20560:	00050e93          	mv	t4,a0
   20564:	000e0593          	mv	a1,t3
   20568:	000a0513          	mv	a0,s4
   2056c:	430010ef          	jal	2199c <__mulsi3>
   20570:	01d786b3          	add	a3,a5,t4
   20574:	01075393          	srl	t2,a4,0x10
   20578:	00d383b3          	add	t2,t2,a3
   2057c:	00050793          	mv	a5,a0
   20580:	01d3f463          	bgeu	t2,t4,20588 <__muldf3+0x2b4>
   20584:	01f507b3          	add	a5,a0,t6
   20588:	000109b7          	lui	s3,0x10
   2058c:	fff98913          	add	s2,s3,-1 # ffff <exit-0x95>
   20590:	0123feb3          	and	t4,t2,s2
   20594:	01277733          	and	a4,a4,s2
   20598:	010e9e93          	sll	t4,t4,0x10
   2059c:	01247933          	and	s2,s0,s2
   205a0:	0103d393          	srl	t2,t2,0x10
   205a4:	00ee8eb3          	add	t4,t4,a4
   205a8:	01045413          	srl	s0,s0,0x10
   205ac:	000f0513          	mv	a0,t5
   205b0:	00090593          	mv	a1,s2
   205b4:	3e8010ef          	jal	2199c <__mulsi3>
   205b8:	00050f93          	mv	t6,a0
   205bc:	00040593          	mv	a1,s0
   205c0:	000f0513          	mv	a0,t5
   205c4:	3d8010ef          	jal	2199c <__mulsi3>
   205c8:	00050713          	mv	a4,a0
   205cc:	00090593          	mv	a1,s2
   205d0:	000a0513          	mv	a0,s4
   205d4:	3c8010ef          	jal	2199c <__mulsi3>
   205d8:	00050f13          	mv	t5,a0
   205dc:	00040593          	mv	a1,s0
   205e0:	000a0513          	mv	a0,s4
   205e4:	3b8010ef          	jal	2199c <__mulsi3>
   205e8:	010fd693          	srl	a3,t6,0x10
   205ec:	01e70733          	add	a4,a4,t5
   205f0:	00e686b3          	add	a3,a3,a4
   205f4:	01e6f463          	bgeu	a3,t5,205fc <__muldf3+0x328>
   205f8:	01350533          	add	a0,a0,s3
   205fc:	00010a37          	lui	s4,0x10
   20600:	fffa0f13          	add	t5,s4,-1 # ffff <exit-0x95>
   20604:	01e6f733          	and	a4,a3,t5
   20608:	01efffb3          	and	t6,t6,t5
   2060c:	01071713          	sll	a4,a4,0x10
   20610:	01f70733          	add	a4,a4,t6
   20614:	01e4ff33          	and	t5,s1,t5
   20618:	0106d693          	srl	a3,a3,0x10
   2061c:	00a68fb3          	add	t6,a3,a0
   20620:	00e383b3          	add	t2,t2,a4
   20624:	0104d493          	srl	s1,s1,0x10
   20628:	000f0513          	mv	a0,t5
   2062c:	00028593          	mv	a1,t0
   20630:	36c010ef          	jal	2199c <__mulsi3>
   20634:	00050a93          	mv	s5,a0
   20638:	000e0593          	mv	a1,t3
   2063c:	000f0513          	mv	a0,t5
   20640:	35c010ef          	jal	2199c <__mulsi3>
   20644:	00050993          	mv	s3,a0
   20648:	00028593          	mv	a1,t0
   2064c:	00048513          	mv	a0,s1
   20650:	34c010ef          	jal	2199c <__mulsi3>
   20654:	00050293          	mv	t0,a0
   20658:	000e0593          	mv	a1,t3
   2065c:	00048513          	mv	a0,s1
   20660:	33c010ef          	jal	2199c <__mulsi3>
   20664:	010ad613          	srl	a2,s5,0x10
   20668:	005989b3          	add	s3,s3,t0
   2066c:	01360633          	add	a2,a2,s3
   20670:	00567463          	bgeu	a2,t0,20678 <__muldf3+0x3a4>
   20674:	01450533          	add	a0,a0,s4
   20678:	00010a37          	lui	s4,0x10
   2067c:	fffa0693          	add	a3,s4,-1 # ffff <exit-0x95>
   20680:	00d672b3          	and	t0,a2,a3
   20684:	00dafab3          	and	s5,s5,a3
   20688:	01065613          	srl	a2,a2,0x10
   2068c:	01029293          	sll	t0,t0,0x10
   20690:	00a60e33          	add	t3,a2,a0
   20694:	015282b3          	add	t0,t0,s5
   20698:	000f0513          	mv	a0,t5
   2069c:	00090593          	mv	a1,s2
   206a0:	2fc010ef          	jal	2199c <__mulsi3>
   206a4:	00050993          	mv	s3,a0
   206a8:	00040593          	mv	a1,s0
   206ac:	000f0513          	mv	a0,t5
   206b0:	2ec010ef          	jal	2199c <__mulsi3>
   206b4:	00050f13          	mv	t5,a0
   206b8:	00090593          	mv	a1,s2
   206bc:	00048513          	mv	a0,s1
   206c0:	2dc010ef          	jal	2199c <__mulsi3>
   206c4:	00050913          	mv	s2,a0
   206c8:	00040593          	mv	a1,s0
   206cc:	00048513          	mv	a0,s1
   206d0:	2cc010ef          	jal	2199c <__mulsi3>
   206d4:	012f06b3          	add	a3,t5,s2
   206d8:	0109d593          	srl	a1,s3,0x10
   206dc:	00d58433          	add	s0,a1,a3
   206e0:	00050f13          	mv	t5,a0
   206e4:	01247463          	bgeu	s0,s2,206ec <__muldf3+0x418>
   206e8:	01450f33          	add	t5,a0,s4
   206ec:	00010637          	lui	a2,0x10
   206f0:	fff60613          	add	a2,a2,-1 # ffff <exit-0x95>
   206f4:	00c476b3          	and	a3,s0,a2
   206f8:	00c9f9b3          	and	s3,s3,a2
   206fc:	01069693          	sll	a3,a3,0x10
   20700:	007787b3          	add	a5,a5,t2
   20704:	013686b3          	add	a3,a3,s3
   20708:	01f685b3          	add	a1,a3,t6
   2070c:	00e7b733          	sltu	a4,a5,a4
   20710:	00e58733          	add	a4,a1,a4
   20714:	005782b3          	add	t0,a5,t0
   20718:	01c70633          	add	a2,a4,t3
   2071c:	00f2b7b3          	sltu	a5,t0,a5
   20720:	00f607b3          	add	a5,a2,a5
   20724:	00d5b6b3          	sltu	a3,a1,a3
   20728:	00b735b3          	sltu	a1,a4,a1
   2072c:	00b6e6b3          	or	a3,a3,a1
   20730:	00e63733          	sltu	a4,a2,a4
   20734:	01045593          	srl	a1,s0,0x10
   20738:	00c7b633          	sltu	a2,a5,a2
   2073c:	00b686b3          	add	a3,a3,a1
   20740:	00929a13          	sll	s4,t0,0x9
   20744:	00c76733          	or	a4,a4,a2
   20748:	00d70733          	add	a4,a4,a3
   2074c:	01da6a33          	or	s4,s4,t4
   20750:	01e70733          	add	a4,a4,t5
   20754:	01403a33          	snez	s4,s4
   20758:	0172d293          	srl	t0,t0,0x17
   2075c:	00971713          	sll	a4,a4,0x9
   20760:	0177d693          	srl	a3,a5,0x17
   20764:	005a6a33          	or	s4,s4,t0
   20768:	00979793          	sll	a5,a5,0x9
   2076c:	00fa6a33          	or	s4,s4,a5
   20770:	00771793          	sll	a5,a4,0x7
   20774:	00d764b3          	or	s1,a4,a3
   20778:	0207d063          	bgez	a5,20798 <__muldf3+0x4c4>
   2077c:	001a5793          	srl	a5,s4,0x1
   20780:	001a7a13          	and	s4,s4,1
   20784:	01f49713          	sll	a4,s1,0x1f
   20788:	0147e7b3          	or	a5,a5,s4
   2078c:	00e7ea33          	or	s4,a5,a4
   20790:	0014d493          	srl	s1,s1,0x1
   20794:	00088313          	mv	t1,a7
   20798:	3ff30793          	add	a5,t1,1023
   2079c:	12f05663          	blez	a5,208c8 <__muldf3+0x5f4>
   207a0:	007a7713          	and	a4,s4,7
   207a4:	02070063          	beqz	a4,207c4 <__muldf3+0x4f0>
   207a8:	00fa7713          	and	a4,s4,15
   207ac:	00400693          	li	a3,4
   207b0:	00d70a63          	beq	a4,a3,207c4 <__muldf3+0x4f0>
   207b4:	004a0713          	add	a4,s4,4
   207b8:	01473a33          	sltu	s4,a4,s4
   207bc:	014484b3          	add	s1,s1,s4
   207c0:	00070a13          	mv	s4,a4
   207c4:	00749713          	sll	a4,s1,0x7
   207c8:	00075a63          	bgez	a4,207dc <__muldf3+0x508>
   207cc:	ff0007b7          	lui	a5,0xff000
   207d0:	fff78793          	add	a5,a5,-1 # feffffff <__BSS_END__+0xfefdc0ef>
   207d4:	00f4f4b3          	and	s1,s1,a5
   207d8:	40030793          	add	a5,t1,1024
   207dc:	7fe00713          	li	a4,2046
   207e0:	1cf74463          	blt	a4,a5,209a8 <__muldf3+0x6d4>
   207e4:	003a5a13          	srl	s4,s4,0x3
   207e8:	01d49713          	sll	a4,s1,0x1d
   207ec:	00949693          	sll	a3,s1,0x9
   207f0:	01476733          	or	a4,a4,s4
   207f4:	00c6d693          	srl	a3,a3,0xc
   207f8:	7ff7f793          	and	a5,a5,2047
   207fc:	c89ff06f          	j	20484 <__muldf3+0x1b0>
   20800:	00a4ea33          	or	s4,s1,a0
   20804:	060a0863          	beqz	s4,20874 <__muldf3+0x5a0>
   20808:	12048e63          	beqz	s1,20944 <__muldf3+0x670>
   2080c:	00048513          	mv	a0,s1
   20810:	264010ef          	jal	21a74 <__clzsi2>
   20814:	00050713          	mv	a4,a0
   20818:	ff550693          	add	a3,a0,-11
   2081c:	01d00793          	li	a5,29
   20820:	ff870a13          	add	s4,a4,-8
   20824:	40d787b3          	sub	a5,a5,a3
   20828:	00f457b3          	srl	a5,s0,a5
   2082c:	014496b3          	sll	a3,s1,s4
   20830:	00d7e4b3          	or	s1,a5,a3
   20834:	01441a33          	sll	s4,s0,s4
   20838:	c0d00793          	li	a5,-1011
   2083c:	40e78c33          	sub	s8,a5,a4
   20840:	00000b13          	li	s6,0
   20844:	00000b93          	li	s7,0
   20848:	b09ff06f          	j	20350 <__muldf3+0x7c>
   2084c:	00058813          	mv	a6,a1
   20850:	7ff00793          	li	a5,2047
   20854:	00000693          	li	a3,0
   20858:	00000713          	li	a4,0
   2085c:	c29ff06f          	j	20484 <__muldf3+0x1b0>
   20860:	00050a13          	mv	s4,a0
   20864:	00c00b13          	li	s6,12
   20868:	7ff00c13          	li	s8,2047
   2086c:	00300b93          	li	s7,3
   20870:	ae1ff06f          	j	20350 <__muldf3+0x7c>
   20874:	00000493          	li	s1,0
   20878:	00400b13          	li	s6,4
   2087c:	00000c13          	li	s8,0
   20880:	00100b93          	li	s7,1
   20884:	acdff06f          	j	20350 <__muldf3+0x7c>
   20888:	001b6b13          	or	s6,s6,1
   2088c:	000c0313          	mv	t1,s8
   20890:	00000413          	li	s0,0
   20894:	00000e13          	li	t3,0
   20898:	00100693          	li	a3,1
   2089c:	afdff06f          	j	20398 <__muldf3+0xc4>
   208a0:	002b6b13          	or	s6,s6,2
   208a4:	00000413          	li	s0,0
   208a8:	00000e13          	li	t3,0
   208ac:	00200693          	li	a3,2
   208b0:	ae9ff06f          	j	20398 <__muldf3+0xc4>
   208b4:	00040493          	mv	s1,s0
   208b8:	000e0a13          	mv	s4,t3
   208bc:	00068b93          	mv	s7,a3
   208c0:	00098593          	mv	a1,s3
   208c4:	b99ff06f          	j	2045c <__muldf3+0x188>
   208c8:	00100713          	li	a4,1
   208cc:	10079063          	bnez	a5,209cc <__muldf3+0x6f8>
   208d0:	41e30313          	add	t1,t1,1054
   208d4:	006a1633          	sll	a2,s4,t1
   208d8:	00c03633          	snez	a2,a2
   208dc:	00649333          	sll	t1,s1,t1
   208e0:	00ea5a33          	srl	s4,s4,a4
   208e4:	00666633          	or	a2,a2,t1
   208e8:	01466633          	or	a2,a2,s4
   208ec:	00767793          	and	a5,a2,7
   208f0:	00e4d5b3          	srl	a1,s1,a4
   208f4:	02078063          	beqz	a5,20914 <__muldf3+0x640>
   208f8:	00f67793          	and	a5,a2,15
   208fc:	00400713          	li	a4,4
   20900:	00e78a63          	beq	a5,a4,20914 <__muldf3+0x640>
   20904:	00460793          	add	a5,a2,4
   20908:	00c7b633          	sltu	a2,a5,a2
   2090c:	00c585b3          	add	a1,a1,a2
   20910:	00078613          	mv	a2,a5
   20914:	00859513          	sll	a0,a1,0x8
   20918:	00100793          	li	a5,1
   2091c:	00000693          	li	a3,0
   20920:	00000713          	li	a4,0
   20924:	b60540e3          	bltz	a0,20484 <__muldf3+0x1b0>
   20928:	10c0006f          	j	20a34 <__muldf3+0x760>
   2092c:	00f00713          	li	a4,15
   20930:	12eb1063          	bne	s6,a4,20a50 <__muldf3+0x77c>
   20934:	00000813          	li	a6,0
   20938:	000806b7          	lui	a3,0x80
   2093c:	00000713          	li	a4,0
   20940:	b45ff06f          	j	20484 <__muldf3+0x1b0>
   20944:	130010ef          	jal	21a74 <__clzsi2>
   20948:	01550693          	add	a3,a0,21
   2094c:	01c00793          	li	a5,28
   20950:	02050713          	add	a4,a0,32
   20954:	ecd7d4e3          	bge	a5,a3,2081c <__muldf3+0x548>
   20958:	ff850513          	add	a0,a0,-8
   2095c:	00000a13          	li	s4,0
   20960:	00a414b3          	sll	s1,s0,a0
   20964:	ed5ff06f          	j	20838 <__muldf3+0x564>
   20968:	000a8513          	mv	a0,s5
   2096c:	108010ef          	jal	21a74 <__clzsi2>
   20970:	01550713          	add	a4,a0,21
   20974:	01c00793          	li	a5,28
   20978:	02050313          	add	t1,a0,32
   2097c:	aae7d4e3          	bge	a5,a4,20424 <__muldf3+0x150>
   20980:	ff850513          	add	a0,a0,-8
   20984:	00000e13          	li	t3,0
   20988:	00aa9433          	sll	s0,s5,a0
   2098c:	ab5ff06f          	j	20440 <__muldf3+0x16c>
   20990:	00000813          	li	a6,0
   20994:	7ff00793          	li	a5,2047
   20998:	000806b7          	lui	a3,0x80
   2099c:	ae9ff06f          	j	20484 <__muldf3+0x1b0>
   209a0:	00088313          	mv	t1,a7
   209a4:	df5ff06f          	j	20798 <__muldf3+0x4c4>
   209a8:	7ff00793          	li	a5,2047
   209ac:	00000693          	li	a3,0
   209b0:	00000713          	li	a4,0
   209b4:	ad1ff06f          	j	20484 <__muldf3+0x1b0>
   209b8:	00000813          	li	a6,0
   209bc:	7ff00793          	li	a5,2047
   209c0:	000806b7          	lui	a3,0x80
   209c4:	00000713          	li	a4,0
   209c8:	abdff06f          	j	20484 <__muldf3+0x1b0>
   209cc:	40f70733          	sub	a4,a4,a5
   209d0:	03800693          	li	a3,56
   209d4:	aae6c2e3          	blt	a3,a4,20478 <__muldf3+0x1a4>
   209d8:	01f00693          	li	a3,31
   209dc:	eee6dae3          	bge	a3,a4,208d0 <__muldf3+0x5fc>
   209e0:	fe100693          	li	a3,-31
   209e4:	40f687b3          	sub	a5,a3,a5
   209e8:	02000693          	li	a3,32
   209ec:	00f4d7b3          	srl	a5,s1,a5
   209f0:	00d70863          	beq	a4,a3,20a00 <__muldf3+0x72c>
   209f4:	43e30313          	add	t1,t1,1086
   209f8:	00649333          	sll	t1,s1,t1
   209fc:	006a6a33          	or	s4,s4,t1
   20a00:	01403633          	snez	a2,s4
   20a04:	00f66633          	or	a2,a2,a5
   20a08:	00767713          	and	a4,a2,7
   20a0c:	00000693          	li	a3,0
   20a10:	02070863          	beqz	a4,20a40 <__muldf3+0x76c>
   20a14:	00f67793          	and	a5,a2,15
   20a18:	00400713          	li	a4,4
   20a1c:	00000593          	li	a1,0
   20a20:	00e78a63          	beq	a5,a4,20a34 <__muldf3+0x760>
   20a24:	00460793          	add	a5,a2,4
   20a28:	00c7b633          	sltu	a2,a5,a2
   20a2c:	00c035b3          	snez	a1,a2
   20a30:	00078613          	mv	a2,a5
   20a34:	00959693          	sll	a3,a1,0x9
   20a38:	01d59713          	sll	a4,a1,0x1d
   20a3c:	00c6d693          	srl	a3,a3,0xc
   20a40:	00365613          	srl	a2,a2,0x3
   20a44:	00e66733          	or	a4,a2,a4
   20a48:	00000793          	li	a5,0
   20a4c:	a39ff06f          	j	20484 <__muldf3+0x1b0>
   20a50:	00040493          	mv	s1,s0
   20a54:	000a8a13          	mv	s4,s5
   20a58:	00300b93          	li	s7,3
   20a5c:	00098593          	mv	a1,s3
   20a60:	9fdff06f          	j	2045c <__muldf3+0x188>

00020a64 <__subdf3>:
   20a64:	001007b7          	lui	a5,0x100
   20a68:	fff78793          	add	a5,a5,-1 # fffff <__BSS_END__+0xdc0ef>
   20a6c:	fe010113          	add	sp,sp,-32
   20a70:	00b7f8b3          	and	a7,a5,a1
   20a74:	00d7f833          	and	a6,a5,a3
   20a78:	0146d793          	srl	a5,a3,0x14
   20a7c:	00389893          	sll	a7,a7,0x3
   20a80:	00812c23          	sw	s0,24(sp)
   20a84:	01312623          	sw	s3,12(sp)
   20a88:	01f5d413          	srl	s0,a1,0x1f
   20a8c:	0145d993          	srl	s3,a1,0x14
   20a90:	01d55713          	srl	a4,a0,0x1d
   20a94:	00381813          	sll	a6,a6,0x3
   20a98:	01d65593          	srl	a1,a2,0x1d
   20a9c:	00112e23          	sw	ra,28(sp)
   20aa0:	00912a23          	sw	s1,20(sp)
   20aa4:	01212823          	sw	s2,16(sp)
   20aa8:	7ff7ff13          	and	t5,a5,2047
   20aac:	7ff00313          	li	t1,2047
   20ab0:	01176733          	or	a4,a4,a7
   20ab4:	7ff9f993          	and	s3,s3,2047
   20ab8:	00040e13          	mv	t3,s0
   20abc:	00351893          	sll	a7,a0,0x3
   20ac0:	01f6d693          	srl	a3,a3,0x1f
   20ac4:	0105e5b3          	or	a1,a1,a6
   20ac8:	00361e93          	sll	t4,a2,0x3
   20acc:	206f0c63          	beq	t5,t1,20ce4 <__subdf3+0x280>
   20ad0:	0016c693          	xor	a3,a3,1
   20ad4:	41e987b3          	sub	a5,s3,t5
   20ad8:	16d40263          	beq	s0,a3,20c3c <__subdf3+0x1d8>
   20adc:	00f05ae3          	blez	a5,212f0 <__subdf3+0x88c>
   20ae0:	240f0a63          	beqz	t5,20d34 <__subdf3+0x2d0>
   20ae4:	3c698463          	beq	s3,t1,20eac <__subdf3+0x448>
   20ae8:	03800693          	li	a3,56
   20aec:	00100513          	li	a0,1
   20af0:	02f6ce63          	blt	a3,a5,20b2c <__subdf3+0xc8>
   20af4:	008006b7          	lui	a3,0x800
   20af8:	00d5e5b3          	or	a1,a1,a3
   20afc:	01f00693          	li	a3,31
   20b00:	4ef6c463          	blt	a3,a5,20fe8 <__subdf3+0x584>
   20b04:	02000693          	li	a3,32
   20b08:	40f686b3          	sub	a3,a3,a5
   20b0c:	00d59533          	sll	a0,a1,a3
   20b10:	00fed633          	srl	a2,t4,a5
   20b14:	00de96b3          	sll	a3,t4,a3
   20b18:	00c56533          	or	a0,a0,a2
   20b1c:	00d036b3          	snez	a3,a3
   20b20:	00f5d7b3          	srl	a5,a1,a5
   20b24:	00d56533          	or	a0,a0,a3
   20b28:	40f70733          	sub	a4,a4,a5
   20b2c:	40a88533          	sub	a0,a7,a0
   20b30:	00a8b633          	sltu	a2,a7,a0
   20b34:	00050493          	mv	s1,a0
   20b38:	40c70933          	sub	s2,a4,a2
   20b3c:	00891793          	sll	a5,s2,0x8
   20b40:	3407d863          	bgez	a5,20e90 <__subdf3+0x42c>
   20b44:	008007b7          	lui	a5,0x800
   20b48:	fff78793          	add	a5,a5,-1 # 7fffff <__BSS_END__+0x7dc0ef>
   20b4c:	00f97933          	and	s2,s2,a5
   20b50:	2e090663          	beqz	s2,20e3c <__subdf3+0x3d8>
   20b54:	00090513          	mv	a0,s2
   20b58:	71d000ef          	jal	21a74 <__clzsi2>
   20b5c:	ff850793          	add	a5,a0,-8
   20b60:	02000693          	li	a3,32
   20b64:	40f68733          	sub	a4,a3,a5
   20b68:	00e4d733          	srl	a4,s1,a4
   20b6c:	00f91933          	sll	s2,s2,a5
   20b70:	01276733          	or	a4,a4,s2
   20b74:	00f494b3          	sll	s1,s1,a5
   20b78:	3f37c463          	blt	a5,s3,20f60 <__subdf3+0x4fc>
   20b7c:	413787b3          	sub	a5,a5,s3
   20b80:	00178793          	add	a5,a5,1
   20b84:	40f686b3          	sub	a3,a3,a5
   20b88:	00d49633          	sll	a2,s1,a3
   20b8c:	00f4d933          	srl	s2,s1,a5
   20b90:	00c03633          	snez	a2,a2
   20b94:	00c96633          	or	a2,s2,a2
   20b98:	00d716b3          	sll	a3,a4,a3
   20b9c:	00c6e4b3          	or	s1,a3,a2
   20ba0:	00f75933          	srl	s2,a4,a5
   20ba4:	00000993          	li	s3,0
   20ba8:	0074f793          	and	a5,s1,7
   20bac:	02078063          	beqz	a5,20bcc <__subdf3+0x168>
   20bb0:	00f4f793          	and	a5,s1,15
   20bb4:	00400713          	li	a4,4
   20bb8:	00e78a63          	beq	a5,a4,20bcc <__subdf3+0x168>
   20bbc:	00448793          	add	a5,s1,4
   20bc0:	0097b533          	sltu	a0,a5,s1
   20bc4:	00a90933          	add	s2,s2,a0
   20bc8:	00078493          	mv	s1,a5
   20bcc:	00891793          	sll	a5,s2,0x8
   20bd0:	6c07d063          	bgez	a5,21290 <__subdf3+0x82c>
   20bd4:	00198793          	add	a5,s3,1
   20bd8:	7ff00713          	li	a4,2047
   20bdc:	24e78663          	beq	a5,a4,20e28 <__subdf3+0x3c4>
   20be0:	ff800737          	lui	a4,0xff800
   20be4:	fff70713          	add	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   20be8:	00e97733          	and	a4,s2,a4
   20bec:	7ff7f793          	and	a5,a5,2047
   20bf0:	01d71813          	sll	a6,a4,0x1d
   20bf4:	0034d513          	srl	a0,s1,0x3
   20bf8:	00971713          	sll	a4,a4,0x9
   20bfc:	00a86833          	or	a6,a6,a0
   20c00:	00c75713          	srl	a4,a4,0xc
   20c04:	00147e13          	and	t3,s0,1
   20c08:	01c12083          	lw	ra,28(sp)
   20c0c:	01812403          	lw	s0,24(sp)
   20c10:	01479793          	sll	a5,a5,0x14
   20c14:	00e7e7b3          	or	a5,a5,a4
   20c18:	01fe1713          	sll	a4,t3,0x1f
   20c1c:	00e7e7b3          	or	a5,a5,a4
   20c20:	01412483          	lw	s1,20(sp)
   20c24:	01012903          	lw	s2,16(sp)
   20c28:	00c12983          	lw	s3,12(sp)
   20c2c:	00080513          	mv	a0,a6
   20c30:	00078593          	mv	a1,a5
   20c34:	02010113          	add	sp,sp,32
   20c38:	00008067          	ret
   20c3c:	70f05263          	blez	a5,21340 <__subdf3+0x8dc>
   20c40:	1c0f1663          	bnez	t5,20e0c <__subdf3+0x3a8>
   20c44:	01d5e6b3          	or	a3,a1,t4
   20c48:	26068e63          	beqz	a3,20ec4 <__subdf3+0x460>
   20c4c:	fff78693          	add	a3,a5,-1
   20c50:	46068863          	beqz	a3,210c0 <__subdf3+0x65c>
   20c54:	24678c63          	beq	a5,t1,20eac <__subdf3+0x448>
   20c58:	03800793          	li	a5,56
   20c5c:	00100913          	li	s2,1
   20c60:	02d7cc63          	blt	a5,a3,20c98 <__subdf3+0x234>
   20c64:	00068793          	mv	a5,a3
   20c68:	01f00693          	li	a3,31
   20c6c:	48f6ca63          	blt	a3,a5,21100 <__subdf3+0x69c>
   20c70:	02000693          	li	a3,32
   20c74:	40f686b3          	sub	a3,a3,a5
   20c78:	00d59933          	sll	s2,a1,a3
   20c7c:	00fed633          	srl	a2,t4,a5
   20c80:	00de96b3          	sll	a3,t4,a3
   20c84:	00c96933          	or	s2,s2,a2
   20c88:	00d036b3          	snez	a3,a3
   20c8c:	00f5d7b3          	srl	a5,a1,a5
   20c90:	00d96933          	or	s2,s2,a3
   20c94:	00f70733          	add	a4,a4,a5
   20c98:	01190633          	add	a2,s2,a7
   20c9c:	01263933          	sltu	s2,a2,s2
   20ca0:	00060493          	mv	s1,a2
   20ca4:	00e90933          	add	s2,s2,a4
   20ca8:	00891793          	sll	a5,s2,0x8
   20cac:	1e07d263          	bgez	a5,20e90 <__subdf3+0x42c>
   20cb0:	00198993          	add	s3,s3,1
   20cb4:	7ff00793          	li	a5,2047
   20cb8:	16f98863          	beq	s3,a5,20e28 <__subdf3+0x3c4>
   20cbc:	ff8007b7          	lui	a5,0xff800
   20cc0:	fff78793          	add	a5,a5,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   20cc4:	0014f513          	and	a0,s1,1
   20cc8:	00f977b3          	and	a5,s2,a5
   20ccc:	0014d713          	srl	a4,s1,0x1
   20cd0:	00a76733          	or	a4,a4,a0
   20cd4:	01f79513          	sll	a0,a5,0x1f
   20cd8:	00e564b3          	or	s1,a0,a4
   20cdc:	0017d913          	srl	s2,a5,0x1
   20ce0:	ec9ff06f          	j	20ba8 <__subdf3+0x144>
   20ce4:	01d5e833          	or	a6,a1,t4
   20ce8:	80198313          	add	t1,s3,-2047
   20cec:	06080863          	beqz	a6,20d5c <__subdf3+0x2f8>
   20cf0:	06d40a63          	beq	s0,a3,20d64 <__subdf3+0x300>
   20cf4:	0e030463          	beqz	t1,20ddc <__subdf3+0x378>
   20cf8:	26098e63          	beqz	s3,20f74 <__subdf3+0x510>
   20cfc:	00361513          	sll	a0,a2,0x3
   20d00:	00355513          	srl	a0,a0,0x3
   20d04:	00068413          	mv	s0,a3
   20d08:	00058713          	mv	a4,a1
   20d0c:	01d71813          	sll	a6,a4,0x1d
   20d10:	00a86833          	or	a6,a6,a0
   20d14:	00375713          	srl	a4,a4,0x3
   20d18:	01076733          	or	a4,a4,a6
   20d1c:	10070663          	beqz	a4,20e28 <__subdf3+0x3c4>
   20d20:	00000e13          	li	t3,0
   20d24:	7ff00793          	li	a5,2047
   20d28:	00080737          	lui	a4,0x80
   20d2c:	00000813          	li	a6,0
   20d30:	ed9ff06f          	j	20c08 <__subdf3+0x1a4>
   20d34:	01d5e6b3          	or	a3,a1,t4
   20d38:	18068663          	beqz	a3,20ec4 <__subdf3+0x460>
   20d3c:	fff78693          	add	a3,a5,-1
   20d40:	3a068263          	beqz	a3,210e4 <__subdf3+0x680>
   20d44:	16678463          	beq	a5,t1,20eac <__subdf3+0x448>
   20d48:	03800793          	li	a5,56
   20d4c:	00100513          	li	a0,1
   20d50:	dcd7cee3          	blt	a5,a3,20b2c <__subdf3+0xc8>
   20d54:	00068793          	mv	a5,a3
   20d58:	da5ff06f          	j	20afc <__subdf3+0x98>
   20d5c:	0016c693          	xor	a3,a3,1
   20d60:	f8d41ae3          	bne	s0,a3,20cf4 <__subdf3+0x290>
   20d64:	18030863          	beqz	t1,20ef4 <__subdf3+0x490>
   20d68:	2c099063          	bnez	s3,21028 <__subdf3+0x5c4>
   20d6c:	7ff00793          	li	a5,2047
   20d70:	011766b3          	or	a3,a4,a7
   20d74:	48068863          	beqz	a3,21204 <__subdf3+0x7a0>
   20d78:	fff78693          	add	a3,a5,-1
   20d7c:	34068263          	beqz	a3,210c0 <__subdf3+0x65c>
   20d80:	7ff00513          	li	a0,2047
   20d84:	2aa78263          	beq	a5,a0,21028 <__subdf3+0x5c4>
   20d88:	03800793          	li	a5,56
   20d8c:	00100913          	li	s2,1
   20d90:	02d7ca63          	blt	a5,a3,20dc4 <__subdf3+0x360>
   20d94:	01f00793          	li	a5,31
   20d98:	4cd7c663          	blt	a5,a3,21264 <__subdf3+0x800>
   20d9c:	02000793          	li	a5,32
   20da0:	40d787b3          	sub	a5,a5,a3
   20da4:	00f71933          	sll	s2,a4,a5
   20da8:	00d8d633          	srl	a2,a7,a3
   20dac:	00f897b3          	sll	a5,a7,a5
   20db0:	00c96933          	or	s2,s2,a2
   20db4:	00f037b3          	snez	a5,a5
   20db8:	00d756b3          	srl	a3,a4,a3
   20dbc:	00f96933          	or	s2,s2,a5
   20dc0:	00d585b3          	add	a1,a1,a3
   20dc4:	01d90733          	add	a4,s2,t4
   20dc8:	01273933          	sltu	s2,a4,s2
   20dcc:	00070493          	mv	s1,a4
   20dd0:	00b90933          	add	s2,s2,a1
   20dd4:	000f0993          	mv	s3,t5
   20dd8:	ed1ff06f          	j	20ca8 <__subdf3+0x244>
   20ddc:	00198793          	add	a5,s3,1
   20de0:	7fe7f793          	and	a5,a5,2046
   20de4:	14079463          	bnez	a5,20f2c <__subdf3+0x4c8>
   20de8:	01d5e833          	or	a6,a1,t4
   20dec:	011767b3          	or	a5,a4,a7
   20df0:	2a099463          	bnez	s3,21098 <__subdf3+0x634>
   20df4:	38078e63          	beqz	a5,21190 <__subdf3+0x72c>
   20df8:	3c081063          	bnez	a6,211b8 <__subdf3+0x754>
   20dfc:	00351513          	sll	a0,a0,0x3
   20e00:	00355913          	srl	s2,a0,0x3
   20e04:	00000793          	li	a5,0
   20e08:	1140006f          	j	20f1c <__subdf3+0x4b8>
   20e0c:	0a698063          	beq	s3,t1,20eac <__subdf3+0x448>
   20e10:	03800693          	li	a3,56
   20e14:	00100913          	li	s2,1
   20e18:	e8f6c0e3          	blt	a3,a5,20c98 <__subdf3+0x234>
   20e1c:	008006b7          	lui	a3,0x800
   20e20:	00d5e5b3          	or	a1,a1,a3
   20e24:	e45ff06f          	j	20c68 <__subdf3+0x204>
   20e28:	00147e13          	and	t3,s0,1
   20e2c:	7ff00793          	li	a5,2047
   20e30:	00000713          	li	a4,0
   20e34:	00000813          	li	a6,0
   20e38:	dd1ff06f          	j	20c08 <__subdf3+0x1a4>
   20e3c:	00048513          	mv	a0,s1
   20e40:	435000ef          	jal	21a74 <__clzsi2>
   20e44:	01850793          	add	a5,a0,24
   20e48:	01f00693          	li	a3,31
   20e4c:	d0f6dae3          	bge	a3,a5,20b60 <__subdf3+0xfc>
   20e50:	ff850713          	add	a4,a0,-8
   20e54:	00e49733          	sll	a4,s1,a4
   20e58:	1b37ce63          	blt	a5,s3,21014 <__subdf3+0x5b0>
   20e5c:	413789b3          	sub	s3,a5,s3
   20e60:	00198793          	add	a5,s3,1
   20e64:	42f6de63          	bge	a3,a5,212a0 <__subdf3+0x83c>
   20e68:	fe198993          	add	s3,s3,-31
   20e6c:	02000693          	li	a3,32
   20e70:	013754b3          	srl	s1,a4,s3
   20e74:	00d78c63          	beq	a5,a3,20e8c <__subdf3+0x428>
   20e78:	04000693          	li	a3,64
   20e7c:	40f687b3          	sub	a5,a3,a5
   20e80:	00f71733          	sll	a4,a4,a5
   20e84:	00e03733          	snez	a4,a4
   20e88:	00e4e4b3          	or	s1,s1,a4
   20e8c:	00000993          	li	s3,0
   20e90:	0074f793          	and	a5,s1,7
   20e94:	d0079ee3          	bnez	a5,20bb0 <__subdf3+0x14c>
   20e98:	00098793          	mv	a5,s3
   20e9c:	0034d513          	srl	a0,s1,0x3
   20ea0:	00090713          	mv	a4,s2
   20ea4:	0280006f          	j	20ecc <__subdf3+0x468>
   20ea8:	e6081ce3          	bnez	a6,20d20 <__subdf3+0x2bc>
   20eac:	00351513          	sll	a0,a0,0x3
   20eb0:	01d71813          	sll	a6,a4,0x1d
   20eb4:	00355513          	srl	a0,a0,0x3
   20eb8:	00a86833          	or	a6,a6,a0
   20ebc:	00375713          	srl	a4,a4,0x3
   20ec0:	e59ff06f          	j	20d18 <__subdf3+0x2b4>
   20ec4:	00351513          	sll	a0,a0,0x3
   20ec8:	00355513          	srl	a0,a0,0x3
   20ecc:	01d71813          	sll	a6,a4,0x1d
   20ed0:	7ff00693          	li	a3,2047
   20ed4:	00a86833          	or	a6,a6,a0
   20ed8:	00375713          	srl	a4,a4,0x3
   20edc:	e2d78ee3          	beq	a5,a3,20d18 <__subdf3+0x2b4>
   20ee0:	00c71713          	sll	a4,a4,0xc
   20ee4:	00c75713          	srl	a4,a4,0xc
   20ee8:	7ff7f793          	and	a5,a5,2047
   20eec:	00147e13          	and	t3,s0,1
   20ef0:	d19ff06f          	j	20c08 <__subdf3+0x1a4>
   20ef4:	00198693          	add	a3,s3,1
   20ef8:	7fe6f793          	and	a5,a3,2046
   20efc:	12079e63          	bnez	a5,21038 <__subdf3+0x5d4>
   20f00:	011767b3          	or	a5,a4,a7
   20f04:	24099a63          	bnez	s3,21158 <__subdf3+0x6f4>
   20f08:	30078663          	beqz	a5,21214 <__subdf3+0x7b0>
   20f0c:	01d5e7b3          	or	a5,a1,t4
   20f10:	30079a63          	bnez	a5,21224 <__subdf3+0x7c0>
   20f14:	00351513          	sll	a0,a0,0x3
   20f18:	00355913          	srl	s2,a0,0x3
   20f1c:	01d71813          	sll	a6,a4,0x1d
   20f20:	01286833          	or	a6,a6,s2
   20f24:	00375713          	srl	a4,a4,0x3
   20f28:	fb9ff06f          	j	20ee0 <__subdf3+0x47c>
   20f2c:	41d88833          	sub	a6,a7,t4
   20f30:	0108b7b3          	sltu	a5,a7,a6
   20f34:	40b70933          	sub	s2,a4,a1
   20f38:	40f90933          	sub	s2,s2,a5
   20f3c:	00891793          	sll	a5,s2,0x8
   20f40:	00080493          	mv	s1,a6
   20f44:	1207c263          	bltz	a5,21068 <__subdf3+0x604>
   20f48:	01286833          	or	a6,a6,s2
   20f4c:	c00812e3          	bnez	a6,20b50 <__subdf3+0xec>
   20f50:	00000e13          	li	t3,0
   20f54:	00000793          	li	a5,0
   20f58:	00000713          	li	a4,0
   20f5c:	cadff06f          	j	20c08 <__subdf3+0x1a4>
   20f60:	ff800937          	lui	s2,0xff800
   20f64:	fff90913          	add	s2,s2,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   20f68:	40f989b3          	sub	s3,s3,a5
   20f6c:	01277933          	and	s2,a4,s2
   20f70:	c39ff06f          	j	20ba8 <__subdf3+0x144>
   20f74:	7ff00793          	li	a5,2047
   20f78:	01176533          	or	a0,a4,a7
   20f7c:	10050463          	beqz	a0,21084 <__subdf3+0x620>
   20f80:	fff78813          	add	a6,a5,-1
   20f84:	1e080263          	beqz	a6,21168 <__subdf3+0x704>
   20f88:	7ff00513          	li	a0,2047
   20f8c:	d6a788e3          	beq	a5,a0,20cfc <__subdf3+0x298>
   20f90:	03800793          	li	a5,56
   20f94:	00068413          	mv	s0,a3
   20f98:	00100513          	li	a0,1
   20f9c:	0307ca63          	blt	a5,a6,20fd0 <__subdf3+0x56c>
   20fa0:	01f00793          	li	a5,31
   20fa4:	1907c463          	blt	a5,a6,2112c <__subdf3+0x6c8>
   20fa8:	02000793          	li	a5,32
   20fac:	410787b3          	sub	a5,a5,a6
   20fb0:	00f71533          	sll	a0,a4,a5
   20fb4:	0108d6b3          	srl	a3,a7,a6
   20fb8:	00f897b3          	sll	a5,a7,a5
   20fbc:	00d56533          	or	a0,a0,a3
   20fc0:	00f037b3          	snez	a5,a5
   20fc4:	01075833          	srl	a6,a4,a6
   20fc8:	00f56533          	or	a0,a0,a5
   20fcc:	410585b3          	sub	a1,a1,a6
   20fd0:	40ae8533          	sub	a0,t4,a0
   20fd4:	00aeb733          	sltu	a4,t4,a0
   20fd8:	00050493          	mv	s1,a0
   20fdc:	40e58933          	sub	s2,a1,a4
   20fe0:	000f0993          	mv	s3,t5
   20fe4:	b59ff06f          	j	20b3c <__subdf3+0xd8>
   20fe8:	fe078693          	add	a3,a5,-32
   20fec:	02000613          	li	a2,32
   20ff0:	00d5d6b3          	srl	a3,a1,a3
   20ff4:	00c78a63          	beq	a5,a2,21008 <__subdf3+0x5a4>
   20ff8:	04000613          	li	a2,64
   20ffc:	40f607b3          	sub	a5,a2,a5
   21000:	00f597b3          	sll	a5,a1,a5
   21004:	00feeeb3          	or	t4,t4,a5
   21008:	01d03533          	snez	a0,t4
   2100c:	00d56533          	or	a0,a0,a3
   21010:	b1dff06f          	j	20b2c <__subdf3+0xc8>
   21014:	ff8006b7          	lui	a3,0xff800
   21018:	fff68693          	add	a3,a3,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   2101c:	40f987b3          	sub	a5,s3,a5
   21020:	00d77733          	and	a4,a4,a3
   21024:	ef9ff06f          	j	20f1c <__subdf3+0x4b8>
   21028:	00361513          	sll	a0,a2,0x3
   2102c:	00355513          	srl	a0,a0,0x3
   21030:	00058713          	mv	a4,a1
   21034:	cd9ff06f          	j	20d0c <__subdf3+0x2a8>
   21038:	7ff00793          	li	a5,2047
   2103c:	def686e3          	beq	a3,a5,20e28 <__subdf3+0x3c4>
   21040:	01d88eb3          	add	t4,a7,t4
   21044:	011eb633          	sltu	a2,t4,a7
   21048:	00b707b3          	add	a5,a4,a1
   2104c:	00c787b3          	add	a5,a5,a2
   21050:	01f79513          	sll	a0,a5,0x1f
   21054:	001ede93          	srl	t4,t4,0x1
   21058:	01d564b3          	or	s1,a0,t4
   2105c:	0017d913          	srl	s2,a5,0x1
   21060:	00068993          	mv	s3,a3
   21064:	b45ff06f          	j	20ba8 <__subdf3+0x144>
   21068:	411e8633          	sub	a2,t4,a7
   2106c:	40e587b3          	sub	a5,a1,a4
   21070:	00ceb733          	sltu	a4,t4,a2
   21074:	00060493          	mv	s1,a2
   21078:	40e78933          	sub	s2,a5,a4
   2107c:	00068413          	mv	s0,a3
   21080:	ad1ff06f          	j	20b50 <__subdf3+0xec>
   21084:	00361613          	sll	a2,a2,0x3
   21088:	00365513          	srl	a0,a2,0x3
   2108c:	00068413          	mv	s0,a3
   21090:	00058713          	mv	a4,a1
   21094:	e39ff06f          	j	20ecc <__subdf3+0x468>
   21098:	e00798e3          	bnez	a5,20ea8 <__subdf3+0x444>
   2109c:	22080663          	beqz	a6,212c8 <__subdf3+0x864>
   210a0:	0035d713          	srl	a4,a1,0x3
   210a4:	00361613          	sll	a2,a2,0x3
   210a8:	01d59593          	sll	a1,a1,0x1d
   210ac:	00b76733          	or	a4,a4,a1
   210b0:	00365613          	srl	a2,a2,0x3
   210b4:	00c76733          	or	a4,a4,a2
   210b8:	00068413          	mv	s0,a3
   210bc:	c61ff06f          	j	20d1c <__subdf3+0x2b8>
   210c0:	01d88eb3          	add	t4,a7,t4
   210c4:	00b705b3          	add	a1,a4,a1
   210c8:	011eb633          	sltu	a2,t4,a7
   210cc:	00c58933          	add	s2,a1,a2
   210d0:	00891793          	sll	a5,s2,0x8
   210d4:	000e8493          	mv	s1,t4
   210d8:	0a07d863          	bgez	a5,21188 <__subdf3+0x724>
   210dc:	00200993          	li	s3,2
   210e0:	bddff06f          	j	20cbc <__subdf3+0x258>
   210e4:	41d88eb3          	sub	t4,a7,t4
   210e8:	40b705b3          	sub	a1,a4,a1
   210ec:	01d8b633          	sltu	a2,a7,t4
   210f0:	000e8493          	mv	s1,t4
   210f4:	40c58933          	sub	s2,a1,a2
   210f8:	00100993          	li	s3,1
   210fc:	a41ff06f          	j	20b3c <__subdf3+0xd8>
   21100:	fe078693          	add	a3,a5,-32
   21104:	02000613          	li	a2,32
   21108:	00d5d6b3          	srl	a3,a1,a3
   2110c:	00c78a63          	beq	a5,a2,21120 <__subdf3+0x6bc>
   21110:	04000613          	li	a2,64
   21114:	40f607b3          	sub	a5,a2,a5
   21118:	00f597b3          	sll	a5,a1,a5
   2111c:	00feeeb3          	or	t4,t4,a5
   21120:	01d03933          	snez	s2,t4
   21124:	00d96933          	or	s2,s2,a3
   21128:	b71ff06f          	j	20c98 <__subdf3+0x234>
   2112c:	fe080793          	add	a5,a6,-32
   21130:	02000693          	li	a3,32
   21134:	00f757b3          	srl	a5,a4,a5
   21138:	00d80a63          	beq	a6,a3,2114c <__subdf3+0x6e8>
   2113c:	04000693          	li	a3,64
   21140:	410686b3          	sub	a3,a3,a6
   21144:	00d71733          	sll	a4,a4,a3
   21148:	00e8e8b3          	or	a7,a7,a4
   2114c:	01103533          	snez	a0,a7
   21150:	00f56533          	or	a0,a0,a5
   21154:	e7dff06f          	j	20fd0 <__subdf3+0x56c>
   21158:	ec0788e3          	beqz	a5,21028 <__subdf3+0x5c4>
   2115c:	01d5eeb3          	or	t4,a1,t4
   21160:	bc0e90e3          	bnez	t4,20d20 <__subdf3+0x2bc>
   21164:	d49ff06f          	j	20eac <__subdf3+0x448>
   21168:	411e8633          	sub	a2,t4,a7
   2116c:	40e585b3          	sub	a1,a1,a4
   21170:	00ceb733          	sltu	a4,t4,a2
   21174:	00060493          	mv	s1,a2
   21178:	40e58933          	sub	s2,a1,a4
   2117c:	00068413          	mv	s0,a3
   21180:	00100993          	li	s3,1
   21184:	9b9ff06f          	j	20b3c <__subdf3+0xd8>
   21188:	00100793          	li	a5,1
   2118c:	d11ff06f          	j	20e9c <__subdf3+0x438>
   21190:	dc0800e3          	beqz	a6,20f50 <__subdf3+0x4ec>
   21194:	00361613          	sll	a2,a2,0x3
   21198:	00365793          	srl	a5,a2,0x3
   2119c:	01d59813          	sll	a6,a1,0x1d
   211a0:	00959713          	sll	a4,a1,0x9
   211a4:	00f86833          	or	a6,a6,a5
   211a8:	00c75713          	srl	a4,a4,0xc
   211ac:	00068e13          	mv	t3,a3
   211b0:	00000793          	li	a5,0
   211b4:	a55ff06f          	j	20c08 <__subdf3+0x1a4>
   211b8:	41d88933          	sub	s2,a7,t4
   211bc:	0128b7b3          	sltu	a5,a7,s2
   211c0:	40b70633          	sub	a2,a4,a1
   211c4:	40f60633          	sub	a2,a2,a5
   211c8:	00861793          	sll	a5,a2,0x8
   211cc:	0e07d263          	bgez	a5,212b0 <__subdf3+0x84c>
   211d0:	411e8633          	sub	a2,t4,a7
   211d4:	40e58733          	sub	a4,a1,a4
   211d8:	00cebeb3          	sltu	t4,t4,a2
   211dc:	41d70733          	sub	a4,a4,t4
   211e0:	00871793          	sll	a5,a4,0x8
   211e4:	00060493          	mv	s1,a2
   211e8:	1207de63          	bgez	a5,21324 <__subdf3+0x8c0>
   211ec:	ff8007b7          	lui	a5,0xff800
   211f0:	fff78793          	add	a5,a5,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   211f4:	00f77733          	and	a4,a4,a5
   211f8:	00068413          	mv	s0,a3
   211fc:	00100793          	li	a5,1
   21200:	9f1ff06f          	j	20bf0 <__subdf3+0x18c>
   21204:	00361613          	sll	a2,a2,0x3
   21208:	00365513          	srl	a0,a2,0x3
   2120c:	00058713          	mv	a4,a1
   21210:	cbdff06f          	j	20ecc <__subdf3+0x468>
   21214:	00361613          	sll	a2,a2,0x3
   21218:	00365913          	srl	s2,a2,0x3
   2121c:	00058713          	mv	a4,a1
   21220:	cfdff06f          	j	20f1c <__subdf3+0x4b8>
   21224:	01d886b3          	add	a3,a7,t4
   21228:	00b707b3          	add	a5,a4,a1
   2122c:	0116b633          	sltu	a2,a3,a7
   21230:	00c787b3          	add	a5,a5,a2
   21234:	00879713          	sll	a4,a5,0x8
   21238:	0036d813          	srl	a6,a3,0x3
   2123c:	08075e63          	bgez	a4,212d8 <__subdf3+0x874>
   21240:	ff800737          	lui	a4,0xff800
   21244:	fff70713          	add	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   21248:	00e7f7b3          	and	a5,a5,a4
   2124c:	01d79713          	sll	a4,a5,0x1d
   21250:	00979793          	sll	a5,a5,0x9
   21254:	01076833          	or	a6,a4,a6
   21258:	00c7d713          	srl	a4,a5,0xc
   2125c:	00100793          	li	a5,1
   21260:	9a9ff06f          	j	20c08 <__subdf3+0x1a4>
   21264:	fe068793          	add	a5,a3,-32
   21268:	02000613          	li	a2,32
   2126c:	00f757b3          	srl	a5,a4,a5
   21270:	00c68a63          	beq	a3,a2,21284 <__subdf3+0x820>
   21274:	04000613          	li	a2,64
   21278:	40d606b3          	sub	a3,a2,a3
   2127c:	00d71733          	sll	a4,a4,a3
   21280:	00e8e8b3          	or	a7,a7,a4
   21284:	01103933          	snez	s2,a7
   21288:	00f96933          	or	s2,s2,a5
   2128c:	b39ff06f          	j	20dc4 <__subdf3+0x360>
   21290:	0034d513          	srl	a0,s1,0x3
   21294:	00098793          	mv	a5,s3
   21298:	00090713          	mv	a4,s2
   2129c:	c31ff06f          	j	20ecc <__subdf3+0x468>
   212a0:	02000693          	li	a3,32
   212a4:	40f686b3          	sub	a3,a3,a5
   212a8:	00000613          	li	a2,0
   212ac:	8e9ff06f          	j	20b94 <__subdf3+0x130>
   212b0:	00c96833          	or	a6,s2,a2
   212b4:	c8080ee3          	beqz	a6,20f50 <__subdf3+0x4ec>
   212b8:	00395913          	srl	s2,s2,0x3
   212bc:	00000793          	li	a5,0
   212c0:	00060713          	mv	a4,a2
   212c4:	c59ff06f          	j	20f1c <__subdf3+0x4b8>
   212c8:	00000e13          	li	t3,0
   212cc:	7ff00793          	li	a5,2047
   212d0:	00080737          	lui	a4,0x80
   212d4:	935ff06f          	j	20c08 <__subdf3+0x1a4>
   212d8:	01d79713          	sll	a4,a5,0x1d
   212dc:	00979793          	sll	a5,a5,0x9
   212e0:	01076833          	or	a6,a4,a6
   212e4:	00c7d713          	srl	a4,a5,0xc
   212e8:	00000793          	li	a5,0
   212ec:	91dff06f          	j	20c08 <__subdf3+0x1a4>
   212f0:	ae0786e3          	beqz	a5,20ddc <__subdf3+0x378>
   212f4:	413f0833          	sub	a6,t5,s3
   212f8:	00080793          	mv	a5,a6
   212fc:	c6098ee3          	beqz	s3,20f78 <__subdf3+0x514>
   21300:	03800793          	li	a5,56
   21304:	0107ca63          	blt	a5,a6,21318 <__subdf3+0x8b4>
   21308:	008007b7          	lui	a5,0x800
   2130c:	00f76733          	or	a4,a4,a5
   21310:	00068413          	mv	s0,a3
   21314:	c8dff06f          	j	20fa0 <__subdf3+0x53c>
   21318:	00068413          	mv	s0,a3
   2131c:	00100513          	li	a0,1
   21320:	cb1ff06f          	j	20fd0 <__subdf3+0x56c>
   21324:	01d71813          	sll	a6,a4,0x1d
   21328:	00365613          	srl	a2,a2,0x3
   2132c:	00c86833          	or	a6,a6,a2
   21330:	00375713          	srl	a4,a4,0x3
   21334:	00000793          	li	a5,0
   21338:	00068413          	mv	s0,a3
   2133c:	ba5ff06f          	j	20ee0 <__subdf3+0x47c>
   21340:	ba078ae3          	beqz	a5,20ef4 <__subdf3+0x490>
   21344:	413f06b3          	sub	a3,t5,s3
   21348:	00099663          	bnez	s3,21354 <__subdf3+0x8f0>
   2134c:	00068793          	mv	a5,a3
   21350:	a21ff06f          	j	20d70 <__subdf3+0x30c>
   21354:	03800793          	li	a5,56
   21358:	00100913          	li	s2,1
   2135c:	a6d7c4e3          	blt	a5,a3,20dc4 <__subdf3+0x360>
   21360:	008007b7          	lui	a5,0x800
   21364:	00f76733          	or	a4,a4,a5
   21368:	a2dff06f          	j	20d94 <__subdf3+0x330>

0002136c <__unorddf2>:
   2136c:	0145d713          	srl	a4,a1,0x14
   21370:	001007b7          	lui	a5,0x100
   21374:	fff78793          	add	a5,a5,-1 # fffff <__BSS_END__+0xdc0ef>
   21378:	fff74713          	not	a4,a4
   2137c:	0146d813          	srl	a6,a3,0x14
   21380:	00b7f5b3          	and	a1,a5,a1
   21384:	00d7f7b3          	and	a5,a5,a3
   21388:	01571693          	sll	a3,a4,0x15
   2138c:	7ff87813          	and	a6,a6,2047
   21390:	02068063          	beqz	a3,213b0 <__unorddf2+0x44>
   21394:	7ff00713          	li	a4,2047
   21398:	00000513          	li	a0,0
   2139c:	00e80463          	beq	a6,a4,213a4 <__unorddf2+0x38>
   213a0:	00008067          	ret
   213a4:	00c7e7b3          	or	a5,a5,a2
   213a8:	00f03533          	snez	a0,a5
   213ac:	00008067          	ret
   213b0:	00a5e5b3          	or	a1,a1,a0
   213b4:	00100513          	li	a0,1
   213b8:	fc058ee3          	beqz	a1,21394 <__unorddf2+0x28>
   213bc:	00008067          	ret

000213c0 <__fixdfsi>:
   213c0:	0145d793          	srl	a5,a1,0x14
   213c4:	001006b7          	lui	a3,0x100
   213c8:	fff68713          	add	a4,a3,-1 # fffff <__BSS_END__+0xdc0ef>
   213cc:	7ff7f793          	and	a5,a5,2047
   213d0:	3fe00613          	li	a2,1022
   213d4:	00b77733          	and	a4,a4,a1
   213d8:	01f5d593          	srl	a1,a1,0x1f
   213dc:	00f65e63          	bge	a2,a5,213f8 <__fixdfsi+0x38>
   213e0:	41d00613          	li	a2,1053
   213e4:	00f65e63          	bge	a2,a5,21400 <__fixdfsi+0x40>
   213e8:	80000537          	lui	a0,0x80000
   213ec:	fff50513          	add	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffdc0ef>
   213f0:	00a58533          	add	a0,a1,a0
   213f4:	00008067          	ret
   213f8:	00000513          	li	a0,0
   213fc:	00008067          	ret
   21400:	43300613          	li	a2,1075
   21404:	40f60633          	sub	a2,a2,a5
   21408:	01f00813          	li	a6,31
   2140c:	00d76733          	or	a4,a4,a3
   21410:	02c85063          	bge	a6,a2,21430 <__fixdfsi+0x70>
   21414:	41300693          	li	a3,1043
   21418:	40f687b3          	sub	a5,a3,a5
   2141c:	00f75733          	srl	a4,a4,a5
   21420:	40e00533          	neg	a0,a4
   21424:	fc059ce3          	bnez	a1,213fc <__fixdfsi+0x3c>
   21428:	00070513          	mv	a0,a4
   2142c:	00008067          	ret
   21430:	bed78793          	add	a5,a5,-1043
   21434:	00f71733          	sll	a4,a4,a5
   21438:	00c55533          	srl	a0,a0,a2
   2143c:	00a76733          	or	a4,a4,a0
   21440:	fe1ff06f          	j	21420 <__fixdfsi+0x60>

00021444 <__floatsidf>:
   21444:	ff010113          	add	sp,sp,-16
   21448:	00112623          	sw	ra,12(sp)
   2144c:	00812423          	sw	s0,8(sp)
   21450:	00912223          	sw	s1,4(sp)
   21454:	04050a63          	beqz	a0,214a8 <__floatsidf+0x64>
   21458:	41f55713          	sra	a4,a0,0x1f
   2145c:	00a744b3          	xor	s1,a4,a0
   21460:	40e484b3          	sub	s1,s1,a4
   21464:	00050793          	mv	a5,a0
   21468:	00048513          	mv	a0,s1
   2146c:	01f7d413          	srl	s0,a5,0x1f
   21470:	604000ef          	jal	21a74 <__clzsi2>
   21474:	41e00793          	li	a5,1054
   21478:	40a787b3          	sub	a5,a5,a0
   2147c:	00a00713          	li	a4,10
   21480:	7ff7f793          	and	a5,a5,2047
   21484:	06a74063          	blt	a4,a0,214e4 <__floatsidf+0xa0>
   21488:	00b00713          	li	a4,11
   2148c:	40a70733          	sub	a4,a4,a0
   21490:	00e4d733          	srl	a4,s1,a4
   21494:	01550513          	add	a0,a0,21
   21498:	00c71713          	sll	a4,a4,0xc
   2149c:	00a494b3          	sll	s1,s1,a0
   214a0:	00c75713          	srl	a4,a4,0xc
   214a4:	0140006f          	j	214b8 <__floatsidf+0x74>
   214a8:	00000413          	li	s0,0
   214ac:	00000793          	li	a5,0
   214b0:	00000713          	li	a4,0
   214b4:	00000493          	li	s1,0
   214b8:	01479793          	sll	a5,a5,0x14
   214bc:	01f41413          	sll	s0,s0,0x1f
   214c0:	00e7e7b3          	or	a5,a5,a4
   214c4:	00c12083          	lw	ra,12(sp)
   214c8:	0087e7b3          	or	a5,a5,s0
   214cc:	00812403          	lw	s0,8(sp)
   214d0:	00048513          	mv	a0,s1
   214d4:	00078593          	mv	a1,a5
   214d8:	00412483          	lw	s1,4(sp)
   214dc:	01010113          	add	sp,sp,16
   214e0:	00008067          	ret
   214e4:	ff550513          	add	a0,a0,-11
   214e8:	00a49733          	sll	a4,s1,a0
   214ec:	00c71713          	sll	a4,a4,0xc
   214f0:	00c75713          	srl	a4,a4,0xc
   214f4:	00000493          	li	s1,0
   214f8:	fc1ff06f          	j	214b8 <__floatsidf+0x74>

000214fc <__floatunsidf>:
   214fc:	ff010113          	add	sp,sp,-16
   21500:	00812423          	sw	s0,8(sp)
   21504:	00112623          	sw	ra,12(sp)
   21508:	00050413          	mv	s0,a0
   2150c:	04050c63          	beqz	a0,21564 <__floatunsidf+0x68>
   21510:	564000ef          	jal	21a74 <__clzsi2>
   21514:	41e00793          	li	a5,1054
   21518:	40a787b3          	sub	a5,a5,a0
   2151c:	00a00713          	li	a4,10
   21520:	7ff7f793          	and	a5,a5,2047
   21524:	06a74463          	blt	a4,a0,2158c <__floatunsidf+0x90>
   21528:	00b00713          	li	a4,11
   2152c:	40a70733          	sub	a4,a4,a0
   21530:	01550513          	add	a0,a0,21
   21534:	00e45733          	srl	a4,s0,a4
   21538:	00a41433          	sll	s0,s0,a0
   2153c:	00c12083          	lw	ra,12(sp)
   21540:	00040513          	mv	a0,s0
   21544:	00c71713          	sll	a4,a4,0xc
   21548:	00812403          	lw	s0,8(sp)
   2154c:	00c75713          	srl	a4,a4,0xc
   21550:	01479793          	sll	a5,a5,0x14
   21554:	00e7e7b3          	or	a5,a5,a4
   21558:	00078593          	mv	a1,a5
   2155c:	01010113          	add	sp,sp,16
   21560:	00008067          	ret
   21564:	00c12083          	lw	ra,12(sp)
   21568:	00040513          	mv	a0,s0
   2156c:	00000793          	li	a5,0
   21570:	00812403          	lw	s0,8(sp)
   21574:	00000713          	li	a4,0
   21578:	01479793          	sll	a5,a5,0x14
   2157c:	00e7e7b3          	or	a5,a5,a4
   21580:	00078593          	mv	a1,a5
   21584:	01010113          	add	sp,sp,16
   21588:	00008067          	ret
   2158c:	ff550513          	add	a0,a0,-11
   21590:	00a41733          	sll	a4,s0,a0
   21594:	00000413          	li	s0,0
   21598:	00c12083          	lw	ra,12(sp)
   2159c:	00040513          	mv	a0,s0
   215a0:	00c71713          	sll	a4,a4,0xc
   215a4:	00812403          	lw	s0,8(sp)
   215a8:	00c75713          	srl	a4,a4,0xc
   215ac:	01479793          	sll	a5,a5,0x14
   215b0:	00e7e7b3          	or	a5,a5,a4
   215b4:	00078593          	mv	a1,a5
   215b8:	01010113          	add	sp,sp,16
   215bc:	00008067          	ret

000215c0 <__trunctfdf2>:
   215c0:	00c52583          	lw	a1,12(a0)
   215c4:	00852783          	lw	a5,8(a0)
   215c8:	00052803          	lw	a6,0(a0)
   215cc:	00452683          	lw	a3,4(a0)
   215d0:	01059613          	sll	a2,a1,0x10
   215d4:	fe010113          	add	sp,sp,-32
   215d8:	00159713          	sll	a4,a1,0x1
   215dc:	01065613          	srl	a2,a2,0x10
   215e0:	00f12423          	sw	a5,8(sp)
   215e4:	00b12623          	sw	a1,12(sp)
   215e8:	00f12c23          	sw	a5,24(sp)
   215ec:	01012023          	sw	a6,0(sp)
   215f0:	00d12223          	sw	a3,4(sp)
   215f4:	01012823          	sw	a6,16(sp)
   215f8:	00d12a23          	sw	a3,20(sp)
   215fc:	00c12e23          	sw	a2,28(sp)
   21600:	01175713          	srl	a4,a4,0x11
   21604:	01f5d593          	srl	a1,a1,0x1f
   21608:	01010893          	add	a7,sp,16
   2160c:	01c10793          	add	a5,sp,28
   21610:	00361513          	sll	a0,a2,0x3
   21614:	ffc7a603          	lw	a2,-4(a5)
   21618:	ffc78793          	add	a5,a5,-4
   2161c:	01d65693          	srl	a3,a2,0x1d
   21620:	00a6e6b3          	or	a3,a3,a0
   21624:	00d7a223          	sw	a3,4(a5)
   21628:	fef894e3          	bne	a7,a5,21610 <__trunctfdf2+0x50>
   2162c:	00170693          	add	a3,a4,1 # 80001 <__BSS_END__+0x5c0f1>
   21630:	00381813          	sll	a6,a6,0x3
   21634:	01169613          	sll	a2,a3,0x11
   21638:	01012823          	sw	a6,16(sp)
   2163c:	01265613          	srl	a2,a2,0x12
   21640:	04060263          	beqz	a2,21684 <__trunctfdf2+0xc4>
   21644:	ffffc6b7          	lui	a3,0xffffc
   21648:	40068693          	add	a3,a3,1024 # ffffc400 <__BSS_END__+0xfffd84f0>
   2164c:	00d70733          	add	a4,a4,a3
   21650:	7fe00693          	li	a3,2046
   21654:	10e6d463          	bge	a3,a4,2175c <__trunctfdf2+0x19c>
   21658:	7ff00793          	li	a5,2047
   2165c:	00000613          	li	a2,0
   21660:	00000693          	li	a3,0
   21664:	01479793          	sll	a5,a5,0x14
   21668:	01f59593          	sll	a1,a1,0x1f
   2166c:	00c7e7b3          	or	a5,a5,a2
   21670:	00b7e7b3          	or	a5,a5,a1
   21674:	00068513          	mv	a0,a3
   21678:	00078593          	mv	a1,a5
   2167c:	02010113          	add	sp,sp,32
   21680:	00008067          	ret
   21684:	01412603          	lw	a2,20(sp)
   21688:	01812883          	lw	a7,24(sp)
   2168c:	01c12503          	lw	a0,28(sp)
   21690:	011666b3          	or	a3,a2,a7
   21694:	00a6e6b3          	or	a3,a3,a0
   21698:	0106e6b3          	or	a3,a3,a6
   2169c:	04071463          	bnez	a4,216e4 <__trunctfdf2+0x124>
   216a0:	14068263          	beqz	a3,217e4 <__trunctfdf2+0x224>
   216a4:	00500693          	li	a3,5
   216a8:	00000613          	li	a2,0
   216ac:	0036d793          	srl	a5,a3,0x3
   216b0:	01d61693          	sll	a3,a2,0x1d
   216b4:	00f6e6b3          	or	a3,a3,a5
   216b8:	00961613          	sll	a2,a2,0x9
   216bc:	7ff77793          	and	a5,a4,2047
   216c0:	00c65613          	srl	a2,a2,0xc
   216c4:	01479793          	sll	a5,a5,0x14
   216c8:	01f59593          	sll	a1,a1,0x1f
   216cc:	00c7e7b3          	or	a5,a5,a2
   216d0:	00b7e7b3          	or	a5,a5,a1
   216d4:	00068513          	mv	a0,a3
   216d8:	00078593          	mv	a1,a5
   216dc:	02010113          	add	sp,sp,32
   216e0:	00008067          	ret
   216e4:	12068463          	beqz	a3,2180c <__trunctfdf2+0x24c>
   216e8:	01c8d793          	srl	a5,a7,0x1c
   216ec:	00451513          	sll	a0,a0,0x4
   216f0:	00a7e7b3          	or	a5,a5,a0
   216f4:	008006b7          	lui	a3,0x800
   216f8:	00d7f6b3          	and	a3,a5,a3
   216fc:	1c068263          	beqz	a3,218c0 <__trunctfdf2+0x300>
   21700:	ff800737          	lui	a4,0xff800
   21704:	01c65693          	srl	a3,a2,0x1c
   21708:	00489893          	sll	a7,a7,0x4
   2170c:	fff70713          	add	a4,a4,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   21710:	00e7f633          	and	a2,a5,a4
   21714:	0116e6b3          	or	a3,a3,a7
   21718:	004007b7          	lui	a5,0x400
   2171c:	00f66633          	or	a2,a2,a5
   21720:	ff86f693          	and	a3,a3,-8
   21724:	00000793          	li	a5,0
   21728:	0036d713          	srl	a4,a3,0x3
   2172c:	01d61693          	sll	a3,a2,0x1d
   21730:	00961613          	sll	a2,a2,0x9
   21734:	00c65613          	srl	a2,a2,0xc
   21738:	01479793          	sll	a5,a5,0x14
   2173c:	01f59593          	sll	a1,a1,0x1f
   21740:	00c7e7b3          	or	a5,a5,a2
   21744:	00e6e6b3          	or	a3,a3,a4
   21748:	00b7e7b3          	or	a5,a5,a1
   2174c:	00068513          	mv	a0,a3
   21750:	00078593          	mv	a1,a5
   21754:	02010113          	add	sp,sp,32
   21758:	00008067          	ret
   2175c:	0ce05c63          	blez	a4,21834 <__trunctfdf2+0x274>
   21760:	01412783          	lw	a5,20(sp)
   21764:	01812503          	lw	a0,24(sp)
   21768:	01c12603          	lw	a2,28(sp)
   2176c:	00479693          	sll	a3,a5,0x4
   21770:	0106e6b3          	or	a3,a3,a6
   21774:	01c7d793          	srl	a5,a5,0x1c
   21778:	00451813          	sll	a6,a0,0x4
   2177c:	00461613          	sll	a2,a2,0x4
   21780:	01c55513          	srl	a0,a0,0x1c
   21784:	00d036b3          	snez	a3,a3
   21788:	0107e7b3          	or	a5,a5,a6
   2178c:	00a66633          	or	a2,a2,a0
   21790:	00f6e6b3          	or	a3,a3,a5
   21794:	0076f793          	and	a5,a3,7
   21798:	02078063          	beqz	a5,217b8 <__trunctfdf2+0x1f8>
   2179c:	00f6f793          	and	a5,a3,15
   217a0:	00400513          	li	a0,4
   217a4:	00a78a63          	beq	a5,a0,217b8 <__trunctfdf2+0x1f8>
   217a8:	00468793          	add	a5,a3,4 # 800004 <__BSS_END__+0x7dc0f4>
   217ac:	00d7b6b3          	sltu	a3,a5,a3
   217b0:	00d60633          	add	a2,a2,a3
   217b4:	00078693          	mv	a3,a5
   217b8:	008007b7          	lui	a5,0x800
   217bc:	00f677b3          	and	a5,a2,a5
   217c0:	ee0786e3          	beqz	a5,216ac <__trunctfdf2+0xec>
   217c4:	00170713          	add	a4,a4,1
   217c8:	7ff00793          	li	a5,2047
   217cc:	e8f706e3          	beq	a4,a5,21658 <__trunctfdf2+0x98>
   217d0:	ff8007b7          	lui	a5,0xff800
   217d4:	fff78793          	add	a5,a5,-1 # ff7fffff <__BSS_END__+0xff7dc0ef>
   217d8:	00f67633          	and	a2,a2,a5
   217dc:	7ff77793          	and	a5,a4,2047
   217e0:	f49ff06f          	j	21728 <__trunctfdf2+0x168>
   217e4:	00000793          	li	a5,0
   217e8:	00000613          	li	a2,0
   217ec:	01479793          	sll	a5,a5,0x14
   217f0:	01f59593          	sll	a1,a1,0x1f
   217f4:	00c7e7b3          	or	a5,a5,a2
   217f8:	00b7e7b3          	or	a5,a5,a1
   217fc:	00068513          	mv	a0,a3
   21800:	00078593          	mv	a1,a5
   21804:	02010113          	add	sp,sp,32
   21808:	00008067          	ret
   2180c:	7ff00793          	li	a5,2047
   21810:	00000613          	li	a2,0
   21814:	01479793          	sll	a5,a5,0x14
   21818:	01f59593          	sll	a1,a1,0x1f
   2181c:	00c7e7b3          	or	a5,a5,a2
   21820:	00b7e7b3          	or	a5,a5,a1
   21824:	00068513          	mv	a0,a3
   21828:	00078593          	mv	a1,a5
   2182c:	02010113          	add	sp,sp,32
   21830:	00008067          	ret
   21834:	fcc00693          	li	a3,-52
   21838:	08d74c63          	blt	a4,a3,218d0 <__trunctfdf2+0x310>
   2183c:	03d00693          	li	a3,61
   21840:	40e686b3          	sub	a3,a3,a4
   21844:	01c12703          	lw	a4,28(sp)
   21848:	4056de13          	sra	t3,a3,0x5
   2184c:	00080eb7          	lui	t4,0x80
   21850:	00eeeeb3          	or	t4,t4,a4
   21854:	002e1513          	sll	a0,t3,0x2
   21858:	01d12e23          	sw	t4,28(sp)
   2185c:	01f6f693          	and	a3,a3,31
   21860:	00a88833          	add	a6,a7,a0
   21864:	00088613          	mv	a2,a7
   21868:	00000713          	li	a4,0
   2186c:	00062303          	lw	t1,0(a2)
   21870:	00460613          	add	a2,a2,4
   21874:	00676733          	or	a4,a4,t1
   21878:	fec81ae3          	bne	a6,a2,2186c <__trunctfdf2+0x2ac>
   2187c:	00300613          	li	a2,3
   21880:	41c60633          	sub	a2,a2,t3
   21884:	04069a63          	bnez	a3,218d8 <__trunctfdf2+0x318>
   21888:	00082803          	lw	a6,0(a6)
   2188c:	00168693          	add	a3,a3,1
   21890:	00478793          	add	a5,a5,4
   21894:	ff07ae23          	sw	a6,-4(a5)
   21898:	00d64e63          	blt	a2,a3,218b4 <__trunctfdf2+0x2f4>
   2189c:	00a78833          	add	a6,a5,a0
   218a0:	00082803          	lw	a6,0(a6)
   218a4:	00168693          	add	a3,a3,1
   218a8:	00478793          	add	a5,a5,4
   218ac:	ff07ae23          	sw	a6,-4(a5)
   218b0:	fed656e3          	bge	a2,a3,2189c <__trunctfdf2+0x2dc>
   218b4:	00400793          	li	a5,4
   218b8:	41c787b3          	sub	a5,a5,t3
   218bc:	0840006f          	j	21940 <__trunctfdf2+0x380>
   218c0:	00000593          	li	a1,0
   218c4:	7ff00793          	li	a5,2047
   218c8:	00080637          	lui	a2,0x80
   218cc:	d99ff06f          	j	21664 <__trunctfdf2+0xa4>
   218d0:	00000713          	li	a4,0
   218d4:	dd1ff06f          	j	216a4 <__trunctfdf2+0xe4>
   218d8:	02050813          	add	a6,a0,32
   218dc:	00280833          	add	a6,a6,sp
   218e0:	ff082803          	lw	a6,-16(a6)
   218e4:	02000f13          	li	t5,32
   218e8:	40df0f33          	sub	t5,t5,a3
   218ec:	01e81833          	sll	a6,a6,t5
   218f0:	01076733          	or	a4,a4,a6
   218f4:	08060e63          	beqz	a2,21990 <__trunctfdf2+0x3d0>
   218f8:	00261813          	sll	a6,a2,0x2
   218fc:	00f80fb3          	add	t6,a6,a5
   21900:	00a88633          	add	a2,a7,a0
   21904:	00062503          	lw	a0,0(a2) # 80000 <__BSS_END__+0x5c0f0>
   21908:	00462303          	lw	t1,4(a2)
   2190c:	00478793          	add	a5,a5,4
   21910:	00d55533          	srl	a0,a0,a3
   21914:	01e31333          	sll	t1,t1,t5
   21918:	00656533          	or	a0,a0,t1
   2191c:	fea7ae23          	sw	a0,-4(a5)
   21920:	00460613          	add	a2,a2,4
   21924:	feff90e3          	bne	t6,a5,21904 <__trunctfdf2+0x344>
   21928:	00400793          	li	a5,4
   2192c:	41c787b3          	sub	a5,a5,t3
   21930:	02080613          	add	a2,a6,32
   21934:	00260633          	add	a2,a2,sp
   21938:	00dedeb3          	srl	t4,t4,a3
   2193c:	ffd62823          	sw	t4,-16(a2)
   21940:	00400693          	li	a3,4
   21944:	40f686b3          	sub	a3,a3,a5
   21948:	00269693          	sll	a3,a3,0x2
   2194c:	00279793          	sll	a5,a5,0x2
   21950:	00800613          	li	a2,8
   21954:	00f888b3          	add	a7,a7,a5
   21958:	00c6ea63          	bltu	a3,a2,2196c <__trunctfdf2+0x3ac>
   2195c:	0008a023          	sw	zero,0(a7)
   21960:	0008a223          	sw	zero,4(a7)
   21964:	ff868693          	add	a3,a3,-8
   21968:	00888893          	add	a7,a7,8
   2196c:	00400793          	li	a5,4
   21970:	00f6e463          	bltu	a3,a5,21978 <__trunctfdf2+0x3b8>
   21974:	0008a023          	sw	zero,0(a7)
   21978:	01012783          	lw	a5,16(sp)
   2197c:	00e03733          	snez	a4,a4
   21980:	01412603          	lw	a2,20(sp)
   21984:	00f766b3          	or	a3,a4,a5
   21988:	00000713          	li	a4,0
   2198c:	e09ff06f          	j	21794 <__trunctfdf2+0x1d4>
   21990:	00100793          	li	a5,1
   21994:	00000813          	li	a6,0
   21998:	f99ff06f          	j	21930 <__trunctfdf2+0x370>

0002199c <__mulsi3>:
   2199c:	00050613          	mv	a2,a0
   219a0:	00000513          	li	a0,0
   219a4:	0015f693          	and	a3,a1,1
   219a8:	00068463          	beqz	a3,219b0 <__mulsi3+0x14>
   219ac:	00c50533          	add	a0,a0,a2
   219b0:	0015d593          	srl	a1,a1,0x1
   219b4:	00161613          	sll	a2,a2,0x1
   219b8:	fe0596e3          	bnez	a1,219a4 <__mulsi3+0x8>
   219bc:	00008067          	ret

000219c0 <__divsi3>:
   219c0:	06054063          	bltz	a0,21a20 <__umodsi3+0x10>
   219c4:	0605c663          	bltz	a1,21a30 <__umodsi3+0x20>

000219c8 <__hidden___udivsi3>:
   219c8:	00058613          	mv	a2,a1
   219cc:	00050593          	mv	a1,a0
   219d0:	fff00513          	li	a0,-1
   219d4:	02060c63          	beqz	a2,21a0c <__hidden___udivsi3+0x44>
   219d8:	00100693          	li	a3,1
   219dc:	00b67a63          	bgeu	a2,a1,219f0 <__hidden___udivsi3+0x28>
   219e0:	00c05863          	blez	a2,219f0 <__hidden___udivsi3+0x28>
   219e4:	00161613          	sll	a2,a2,0x1
   219e8:	00169693          	sll	a3,a3,0x1
   219ec:	feb66ae3          	bltu	a2,a1,219e0 <__hidden___udivsi3+0x18>
   219f0:	00000513          	li	a0,0
   219f4:	00c5e663          	bltu	a1,a2,21a00 <__hidden___udivsi3+0x38>
   219f8:	40c585b3          	sub	a1,a1,a2
   219fc:	00d56533          	or	a0,a0,a3
   21a00:	0016d693          	srl	a3,a3,0x1
   21a04:	00165613          	srl	a2,a2,0x1
   21a08:	fe0696e3          	bnez	a3,219f4 <__hidden___udivsi3+0x2c>
   21a0c:	00008067          	ret

00021a10 <__umodsi3>:
   21a10:	00008293          	mv	t0,ra
   21a14:	fb5ff0ef          	jal	219c8 <__hidden___udivsi3>
   21a18:	00058513          	mv	a0,a1
   21a1c:	00028067          	jr	t0
   21a20:	40a00533          	neg	a0,a0
   21a24:	00b04863          	bgtz	a1,21a34 <__umodsi3+0x24>
   21a28:	40b005b3          	neg	a1,a1
   21a2c:	f9dff06f          	j	219c8 <__hidden___udivsi3>
   21a30:	40b005b3          	neg	a1,a1
   21a34:	00008293          	mv	t0,ra
   21a38:	f91ff0ef          	jal	219c8 <__hidden___udivsi3>
   21a3c:	40a00533          	neg	a0,a0
   21a40:	00028067          	jr	t0

00021a44 <__modsi3>:
   21a44:	00008293          	mv	t0,ra
   21a48:	0005ca63          	bltz	a1,21a5c <__modsi3+0x18>
   21a4c:	00054c63          	bltz	a0,21a64 <__modsi3+0x20>
   21a50:	f79ff0ef          	jal	219c8 <__hidden___udivsi3>
   21a54:	00058513          	mv	a0,a1
   21a58:	00028067          	jr	t0
   21a5c:	40b005b3          	neg	a1,a1
   21a60:	fe0558e3          	bgez	a0,21a50 <__modsi3+0xc>
   21a64:	40a00533          	neg	a0,a0
   21a68:	f61ff0ef          	jal	219c8 <__hidden___udivsi3>
   21a6c:	40b00533          	neg	a0,a1
   21a70:	00028067          	jr	t0

00021a74 <__clzsi2>:
   21a74:	000107b7          	lui	a5,0x10
   21a78:	02f57a63          	bgeu	a0,a5,21aac <__clzsi2+0x38>
   21a7c:	10053793          	sltiu	a5,a0,256
   21a80:	0017b793          	seqz	a5,a5
   21a84:	00379793          	sll	a5,a5,0x3
   21a88:	02000713          	li	a4,32
   21a8c:	40f70733          	sub	a4,a4,a5
   21a90:	00f55533          	srl	a0,a0,a5
   21a94:	00001797          	auipc	a5,0x1
   21a98:	d5878793          	add	a5,a5,-680 # 227ec <__clz_tab>
   21a9c:	00a787b3          	add	a5,a5,a0
   21aa0:	0007c503          	lbu	a0,0(a5)
   21aa4:	40a70533          	sub	a0,a4,a0
   21aa8:	00008067          	ret
   21aac:	010007b7          	lui	a5,0x1000
   21ab0:	02f57463          	bgeu	a0,a5,21ad8 <__clzsi2+0x64>
   21ab4:	01000793          	li	a5,16
   21ab8:	00f55533          	srl	a0,a0,a5
   21abc:	00001797          	auipc	a5,0x1
   21ac0:	d3078793          	add	a5,a5,-720 # 227ec <__clz_tab>
   21ac4:	00a787b3          	add	a5,a5,a0
   21ac8:	0007c503          	lbu	a0,0(a5)
   21acc:	01000713          	li	a4,16
   21ad0:	40a70533          	sub	a0,a4,a0
   21ad4:	00008067          	ret
   21ad8:	01800793          	li	a5,24
   21adc:	00f55533          	srl	a0,a0,a5
   21ae0:	00001797          	auipc	a5,0x1
   21ae4:	d0c78793          	add	a5,a5,-756 # 227ec <__clz_tab>
   21ae8:	00a787b3          	add	a5,a5,a0
   21aec:	0007c503          	lbu	a0,0(a5)
   21af0:	00800713          	li	a4,8
   21af4:	40a70533          	sub	a0,a4,a0
   21af8:	00008067          	ret
