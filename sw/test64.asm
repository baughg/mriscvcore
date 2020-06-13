
test64:     file format elf64-littleriscv


Disassembly of section .plt:

0000000000010360 <_PROCEDURE_LINKAGE_TABLE_>:
   10360:	97 23 00 00 33 03 c3 41 03 be 03 ca 13 03 43 fd     .#..3..A......C.
   10370:	93 82 03 ca 13 53 13 00 83 b2 82 00 67 00 0e 00     .....S......g...

0000000000010380 <__libc_start_main@plt>:
   10380:	00002e17          	auipc	t3,0x2
   10384:	c90e3e03          	ld	t3,-880(t3) # 12010 <__libc_start_main@GLIBC_2.27>
   10388:	000e0367          	jalr	t1,t3
   1038c:	00000013          	nop

0000000000010390 <printf@plt>:
   10390:	00002e17          	auipc	t3,0x2
   10394:	c88e3e03          	ld	t3,-888(t3) # 12018 <printf@GLIBC_2.27>
   10398:	000e0367          	jalr	t1,t3
   1039c:	00000013          	nop

Disassembly of section .text:

00000000000103a0 <_start>:
   103a0:	02c000ef          	jal	ra,103cc <_start+0x2c>
   103a4:	87aa                	mv	a5,a0
   103a6:	00000517          	auipc	a0,0x0
   103aa:	0a650513          	addi	a0,a0,166 # 1044c <main>
   103ae:	6582                	ld	a1,0(sp)
   103b0:	0030                	addi	a2,sp,8
   103b2:	ff017113          	andi	sp,sp,-16
   103b6:	00000697          	auipc	a3,0x0
   103ba:	0d868693          	addi	a3,a3,216 # 1048e <__libc_csu_init>
   103be:	00000717          	auipc	a4,0x0
   103c2:	12870713          	addi	a4,a4,296 # 104e6 <__libc_csu_fini>
   103c6:	880a                	mv	a6,sp
   103c8:	fb9ff06f          	j	10380 <__libc_start_main@plt>
   103cc:	00002197          	auipc	gp,0x2
   103d0:	45c18193          	addi	gp,gp,1116 # 12828 <__global_pointer$>
   103d4:	8082                	ret

00000000000103d6 <deregister_tm_clones>:
   103d6:	6549                	lui	a0,0x12
   103d8:	6749                	lui	a4,0x12
   103da:	00050793          	mv	a5,a0
   103de:	00070713          	mv	a4,a4
   103e2:	00f70b63          	beq	a4,a5,103f8 <deregister_tm_clones+0x22>
   103e6:	00000337          	lui	t1,0x0
   103ea:	00030313          	mv	t1,t1
   103ee:	00030563          	beqz	t1,103f8 <deregister_tm_clones+0x22>
   103f2:	00050513          	mv	a0,a0
   103f6:	8302                	jr	t1
   103f8:	8082                	ret

00000000000103fa <register_tm_clones>:
   103fa:	6549                	lui	a0,0x12
   103fc:	00050793          	mv	a5,a0
   10400:	6749                	lui	a4,0x12
   10402:	00070593          	mv	a1,a4
   10406:	8d9d                	sub	a1,a1,a5
   10408:	858d                	srai	a1,a1,0x3
   1040a:	03f5d793          	srli	a5,a1,0x3f
   1040e:	95be                	add	a1,a1,a5
   10410:	8585                	srai	a1,a1,0x1
   10412:	c991                	beqz	a1,10426 <register_tm_clones+0x2c>
   10414:	00000337          	lui	t1,0x0
   10418:	00030313          	mv	t1,t1
   1041c:	00030563          	beqz	t1,10426 <register_tm_clones+0x2c>
   10420:	00050513          	mv	a0,a0
   10424:	8302                	jr	t1
   10426:	8082                	ret

0000000000010428 <__do_global_dtors_aux>:
   10428:	1141                	addi	sp,sp,-16
   1042a:	e022                	sd	s0,0(sp)
   1042c:	6449                	lui	s0,0x12
   1042e:	03844783          	lbu	a5,56(s0) # 12038 <_edata>
   10432:	e406                	sd	ra,8(sp)
   10434:	e791                	bnez	a5,10440 <__do_global_dtors_aux+0x18>
   10436:	fa1ff0ef          	jal	ra,103d6 <deregister_tm_clones>
   1043a:	4785                	li	a5,1
   1043c:	02f40c23          	sb	a5,56(s0)
   10440:	60a2                	ld	ra,8(sp)
   10442:	6402                	ld	s0,0(sp)
   10444:	0141                	addi	sp,sp,16
   10446:	8082                	ret

0000000000010448 <frame_dummy>:
   10448:	fb3ff06f          	j	103fa <register_tm_clones>

000000000001044c <main>:
   1044c:	1101                	addi	sp,sp,-32
   1044e:	ec06                	sd	ra,24(sp)
   10450:	e822                	sd	s0,16(sp)
   10452:	1000                	addi	s0,sp,32
   10454:	fe042623          	sw	zero,-20(s0)
   10458:	fec42783          	lw	a5,-20(s0)
   1045c:	2785                	addiw	a5,a5,1
   1045e:	fef42623          	sw	a5,-20(s0)
   10462:	fec42703          	lw	a4,-20(s0)
   10466:	87ba                	mv	a5,a4
   10468:	0027979b          	slliw	a5,a5,0x2
   1046c:	9fb9                	addw	a5,a5,a4
   1046e:	fef42623          	sw	a5,-20(s0)
   10472:	fec42783          	lw	a5,-20(s0)
   10476:	85be                	mv	a1,a5
   10478:	67c1                	lui	a5,0x10
   1047a:	4e878513          	addi	a0,a5,1256 # 104e8 <__libc_csu_fini+0x2>
   1047e:	f13ff0ef          	jal	ra,10390 <printf@plt>
   10482:	4781                	li	a5,0
   10484:	853e                	mv	a0,a5
   10486:	60e2                	ld	ra,24(sp)
   10488:	6442                	ld	s0,16(sp)
   1048a:	6105                	addi	sp,sp,32
   1048c:	8082                	ret

000000000001048e <__libc_csu_init>:
   1048e:	7139                	addi	sp,sp,-64
   10490:	f822                	sd	s0,48(sp)
   10492:	f04a                	sd	s2,32(sp)
   10494:	00002417          	auipc	s0,0x2
   10498:	98c40413          	addi	s0,s0,-1652 # 11e20 <__frame_dummy_init_array_entry>
   1049c:	00002917          	auipc	s2,0x2
   104a0:	98c90913          	addi	s2,s2,-1652 # 11e28 <__init_array_end>
   104a4:	40890933          	sub	s2,s2,s0
   104a8:	fc06                	sd	ra,56(sp)
   104aa:	f426                	sd	s1,40(sp)
   104ac:	ec4e                	sd	s3,24(sp)
   104ae:	e852                	sd	s4,16(sp)
   104b0:	e456                	sd	s5,8(sp)
   104b2:	40395913          	srai	s2,s2,0x3
   104b6:	00090f63          	beqz	s2,104d4 <__libc_csu_init+0x46>
   104ba:	8ab2                	mv	s5,a2
   104bc:	8a2e                	mv	s4,a1
   104be:	89aa                	mv	s3,a0
   104c0:	4481                	li	s1,0
   104c2:	601c                	ld	a5,0(s0)
   104c4:	8656                	mv	a2,s5
   104c6:	85d2                	mv	a1,s4
   104c8:	854e                	mv	a0,s3
   104ca:	0485                	addi	s1,s1,1
   104cc:	9782                	jalr	a5
   104ce:	0421                	addi	s0,s0,8
   104d0:	fe9919e3          	bne	s2,s1,104c2 <__libc_csu_init+0x34>
   104d4:	70e2                	ld	ra,56(sp)
   104d6:	7442                	ld	s0,48(sp)
   104d8:	74a2                	ld	s1,40(sp)
   104da:	7902                	ld	s2,32(sp)
   104dc:	69e2                	ld	s3,24(sp)
   104de:	6a42                	ld	s4,16(sp)
   104e0:	6aa2                	ld	s5,8(sp)
   104e2:	6121                	addi	sp,sp,64
   104e4:	8082                	ret

00000000000104e6 <__libc_csu_fini>:
   104e6:	8082                	ret
