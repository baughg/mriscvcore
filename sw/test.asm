
test:     file format elf32-littleriscv


Disassembly of section .text:

00010000 <_ftext>:
   10000:	0000e197          	auipc	gp,0xe
   10004:	a7018193          	addi	gp,gp,-1424 # 1da70 <_gp>
   10008:	0000d297          	auipc	t0,0xd
   1000c:	2e028293          	addi	t0,t0,736 # 1d2e8 <_PathLocale>
   10010:	0000d317          	auipc	t1,0xd
   10014:	34830313          	addi	t1,t1,840 # 1d358 <_end>
   10018:	0002a023          	sw	zero,0(t0)
   1001c:	00428293          	addi	t0,t0,4
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	1e050513          	addi	a0,a0,480 # 10204 <__libc_fini_array>
   1002c:	194000ef          	jal	101c0 <atexit>
   10030:	234000ef          	jal	10264 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00410593          	addi	a1,sp,4
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	1900006f          	j	101d4 <exit>

00010048 <_fini>:
   10048:	00008067          	ret

0001004c <deregister_tm_clones>:
   1004c:	0001d537          	lui	a0,0x1d
   10050:	0001d7b7          	lui	a5,0x1d
   10054:	26850713          	addi	a4,a0,616 # 1d268 <__TMC_END__>
   10058:	26b78793          	addi	a5,a5,619 # 1d26b <__TMC_END__+0x3>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00600713          	li	a4,6
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	26850513          	addi	a0,a0,616
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

00010080 <register_tm_clones>:
   10080:	0001d537          	lui	a0,0x1d
   10084:	0001d5b7          	lui	a1,0x1d
   10088:	26850793          	addi	a5,a0,616 # 1d268 <__TMC_END__>
   1008c:	26858593          	addi	a1,a1,616 # 1d268 <__TMC_END__>
   10090:	40f585b3          	sub	a1,a1,a5
   10094:	4025d593          	srai	a1,a1,0x2
   10098:	01f5d793          	srli	a5,a1,0x1f
   1009c:	00b785b3          	add	a1,a5,a1
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	26850513          	addi	a0,a0,616
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00812423          	sw	s0,8(sp)
   100c8:	89c1c783          	lbu	a5,-1892(gp) # 1d30c <_bss_start>
   100cc:	00112623          	sw	ra,12(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	0001b537          	lui	a0,0x1b
   100e8:	67450513          	addi	a0,a0,1652 # 1b674 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	88f18e23          	sb	a5,-1892(gp) # 1d30c <_bss_start>
   100fc:	00c12083          	lw	ra,12(sp)
   10100:	00812403          	lw	s0,8(sp)
   10104:	01010113          	addi	sp,sp,16
   10108:	00008067          	ret

0001010c <frame_dummy>:
   1010c:	ff010113          	addi	sp,sp,-16
   10110:	000007b7          	lui	a5,0x0
   10114:	00112623          	sw	ra,12(sp)
   10118:	00078793          	mv	a5,a5
   1011c:	00078c63          	beqz	a5,10134 <frame_dummy+0x28>
   10120:	0001b537          	lui	a0,0x1b
   10124:	8a018593          	addi	a1,gp,-1888 # 1d310 <object.3070>
   10128:	67450513          	addi	a0,a0,1652 # 1b674 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	0001d7b7          	lui	a5,0x1d
   10138:	9b078513          	addi	a0,a5,-1616 # 1c9b0 <__JCR_END__>
   1013c:	00052783          	lw	a5,0(a0)
   10140:	00079863          	bnez	a5,10150 <frame_dummy+0x44>
   10144:	00c12083          	lw	ra,12(sp)
   10148:	01010113          	addi	sp,sp,16
   1014c:	f35ff06f          	j	10080 <register_tm_clones>
   10150:	000007b7          	lui	a5,0x0
   10154:	00078793          	mv	a5,a5
   10158:	fe0786e3          	beqz	a5,10144 <frame_dummy+0x38>
   1015c:	000780e7          	jalr	a5
   10160:	fe5ff06f          	j	10144 <frame_dummy+0x38>

00010164 <main>:
   10164:	fe010113          	addi	sp,sp,-32
   10168:	00112e23          	sw	ra,28(sp)
   1016c:	00812c23          	sw	s0,24(sp)
   10170:	02010413          	addi	s0,sp,32
   10174:	fe042623          	sw	zero,-20(s0)
   10178:	fec42783          	lw	a5,-20(s0)
   1017c:	00178793          	addi	a5,a5,1 # 1 <_ftext-0xffff>
   10180:	fef42623          	sw	a5,-20(s0)
   10184:	fec42703          	lw	a4,-20(s0)
   10188:	00070793          	mv	a5,a4
   1018c:	00279793          	slli	a5,a5,0x2
   10190:	00e787b3          	add	a5,a5,a4
   10194:	fef42623          	sw	a5,-20(s0)
   10198:	fec42583          	lw	a1,-20(s0)
   1019c:	0001b7b7          	lui	a5,0x1b
   101a0:	0a078513          	addi	a0,a5,160 # 1b0a0 <__errno+0xc>
   101a4:	1a4000ef          	jal	10348 <printf>
   101a8:	00000793          	li	a5,0
   101ac:	00078513          	mv	a0,a5
   101b0:	01c12083          	lw	ra,28(sp)
   101b4:	01812403          	lw	s0,24(sp)
   101b8:	02010113          	addi	sp,sp,32
   101bc:	00008067          	ret

000101c0 <atexit>:
   101c0:	00050593          	mv	a1,a0
   101c4:	00000693          	li	a3,0
   101c8:	00000613          	li	a2,0
   101cc:	00000513          	li	a0,0
   101d0:	6f50106f          	j	120c4 <__register_exitproc>

000101d4 <exit>:
   101d4:	ff010113          	addi	sp,sp,-16
   101d8:	00000593          	li	a1,0
   101dc:	00812423          	sw	s0,8(sp)
   101e0:	00112623          	sw	ra,12(sp)
   101e4:	00050413          	mv	s0,a0
   101e8:	7e5010ef          	jal	121cc <__call_exitprocs>
   101ec:	8041a503          	lw	a0,-2044(gp) # 1d274 <_global_impure_ptr>
   101f0:	03c52783          	lw	a5,60(a0)
   101f4:	00078463          	beqz	a5,101fc <exit+0x28>
   101f8:	000780e7          	jalr	a5
   101fc:	00040513          	mv	a0,s0
   10200:	7c5080ef          	jal	191c4 <_exit>

00010204 <__libc_fini_array>:
   10204:	ff010113          	addi	sp,sp,-16
   10208:	00812423          	sw	s0,8(sp)
   1020c:	00912223          	sw	s1,4(sp)
   10210:	0001b437          	lui	s0,0x1b
   10214:	0001b4b7          	lui	s1,0x1b
   10218:	67048793          	addi	a5,s1,1648 # 1b670 <__init_array_end>
   1021c:	67440413          	addi	s0,s0,1652 # 1b674 <__fini_array_end>
   10220:	40f40433          	sub	s0,s0,a5
   10224:	40245413          	srai	s0,s0,0x2
   10228:	00241493          	slli	s1,s0,0x2
   1022c:	ffc48493          	addi	s1,s1,-4
   10230:	00112623          	sw	ra,12(sp)
   10234:	00f484b3          	add	s1,s1,a5
   10238:	00040c63          	beqz	s0,10250 <__libc_fini_array+0x4c>
   1023c:	0004a783          	lw	a5,0(s1)
   10240:	fff40413          	addi	s0,s0,-1
   10244:	ffc48493          	addi	s1,s1,-4
   10248:	000780e7          	jalr	a5
   1024c:	fe0418e3          	bnez	s0,1023c <__libc_fini_array+0x38>
   10250:	00c12083          	lw	ra,12(sp)
   10254:	00812403          	lw	s0,8(sp)
   10258:	00412483          	lw	s1,4(sp)
   1025c:	01010113          	addi	sp,sp,16
   10260:	de9ff06f          	j	10048 <_fini>

00010264 <__libc_init_array>:
   10264:	ff010113          	addi	sp,sp,-16
   10268:	00812423          	sw	s0,8(sp)
   1026c:	01212023          	sw	s2,0(sp)
   10270:	0001b437          	lui	s0,0x1b
   10274:	0001b937          	lui	s2,0x1b
   10278:	66c40793          	addi	a5,s0,1644 # 1b66c <_etext>
   1027c:	66c90913          	addi	s2,s2,1644 # 1b66c <_etext>
   10280:	40f90933          	sub	s2,s2,a5
   10284:	00912223          	sw	s1,4(sp)
   10288:	00112623          	sw	ra,12(sp)
   1028c:	40295913          	srai	s2,s2,0x2
   10290:	66c40413          	addi	s0,s0,1644
   10294:	00000493          	li	s1,0
   10298:	00090c63          	beqz	s2,102b0 <__libc_init_array+0x4c>
   1029c:	00042783          	lw	a5,0(s0)
   102a0:	00148493          	addi	s1,s1,1
   102a4:	00440413          	addi	s0,s0,4
   102a8:	000780e7          	jalr	a5
   102ac:	fe9918e3          	bne	s2,s1,1029c <__libc_init_array+0x38>
   102b0:	0001b437          	lui	s0,0x1b
   102b4:	d95ff0ef          	jal	10048 <_fini>
   102b8:	0001b937          	lui	s2,0x1b
   102bc:	66c40793          	addi	a5,s0,1644 # 1b66c <_etext>
   102c0:	67090913          	addi	s2,s2,1648 # 1b670 <__init_array_end>
   102c4:	40f90933          	sub	s2,s2,a5
   102c8:	40295913          	srai	s2,s2,0x2
   102cc:	66c40413          	addi	s0,s0,1644
   102d0:	00000493          	li	s1,0
   102d4:	00090c63          	beqz	s2,102ec <__libc_init_array+0x88>
   102d8:	00042783          	lw	a5,0(s0)
   102dc:	00148493          	addi	s1,s1,1
   102e0:	00440413          	addi	s0,s0,4
   102e4:	000780e7          	jalr	a5
   102e8:	fe9918e3          	bne	s2,s1,102d8 <__libc_init_array+0x74>
   102ec:	00c12083          	lw	ra,12(sp)
   102f0:	00812403          	lw	s0,8(sp)
   102f4:	00412483          	lw	s1,4(sp)
   102f8:	00012903          	lw	s2,0(sp)
   102fc:	01010113          	addi	sp,sp,16
   10300:	00008067          	ret

00010304 <_printf_r>:
   10304:	fc010113          	addi	sp,sp,-64
   10308:	02c12423          	sw	a2,40(sp)
   1030c:	02d12623          	sw	a3,44(sp)
   10310:	02f12a23          	sw	a5,52(sp)
   10314:	02e12823          	sw	a4,48(sp)
   10318:	03012c23          	sw	a6,56(sp)
   1031c:	03112e23          	sw	a7,60(sp)
   10320:	00058613          	mv	a2,a1
   10324:	00852583          	lw	a1,8(a0)
   10328:	02810793          	addi	a5,sp,40
   1032c:	00078693          	mv	a3,a5
   10330:	00112e23          	sw	ra,28(sp)
   10334:	00f12623          	sw	a5,12(sp)
   10338:	060000ef          	jal	10398 <_vfprintf_r>
   1033c:	01c12083          	lw	ra,28(sp)
   10340:	04010113          	addi	sp,sp,64
   10344:	00008067          	ret

00010348 <printf>:
   10348:	8081a303          	lw	t1,-2040(gp) # 1d278 <_impure_ptr>
   1034c:	fc010113          	addi	sp,sp,-64
   10350:	02c12423          	sw	a2,40(sp)
   10354:	02d12623          	sw	a3,44(sp)
   10358:	02f12a23          	sw	a5,52(sp)
   1035c:	02b12223          	sw	a1,36(sp)
   10360:	02e12823          	sw	a4,48(sp)
   10364:	03012c23          	sw	a6,56(sp)
   10368:	03112e23          	sw	a7,60(sp)
   1036c:	00832583          	lw	a1,8(t1)
   10370:	02410793          	addi	a5,sp,36
   10374:	00050613          	mv	a2,a0
   10378:	00078693          	mv	a3,a5
   1037c:	00030513          	mv	a0,t1
   10380:	00112e23          	sw	ra,28(sp)
   10384:	00f12623          	sw	a5,12(sp)
   10388:	010000ef          	jal	10398 <_vfprintf_r>
   1038c:	01c12083          	lw	ra,28(sp)
   10390:	04010113          	addi	sp,sp,64
   10394:	00008067          	ret

00010398 <_vfprintf_r>:
   10398:	ec010113          	addi	sp,sp,-320
   1039c:	12112e23          	sw	ra,316(sp)
   103a0:	13512223          	sw	s5,292(sp)
   103a4:	13612023          	sw	s6,288(sp)
   103a8:	11912a23          	sw	s9,276(sp)
   103ac:	00058a93          	mv	s5,a1
   103b0:	00060c93          	mv	s9,a2
   103b4:	02d12823          	sw	a3,48(sp)
   103b8:	12812c23          	sw	s0,312(sp)
   103bc:	12912a23          	sw	s1,308(sp)
   103c0:	13212823          	sw	s2,304(sp)
   103c4:	13312623          	sw	s3,300(sp)
   103c8:	13412423          	sw	s4,296(sp)
   103cc:	11712e23          	sw	s7,284(sp)
   103d0:	11812c23          	sw	s8,280(sp)
   103d4:	11a12823          	sw	s10,272(sp)
   103d8:	11b12623          	sw	s11,268(sp)
   103dc:	00050b13          	mv	s6,a0
   103e0:	2e0040ef          	jal	146c0 <_localeconv_r>
   103e4:	00052783          	lw	a5,0(a0)
   103e8:	00078513          	mv	a0,a5
   103ec:	04f12a23          	sw	a5,84(sp)
   103f0:	304060ef          	jal	166f4 <strlen>
   103f4:	04a12c23          	sw	a0,88(sp)
   103f8:	000b0663          	beqz	s6,10404 <_vfprintf_r+0x6c>
   103fc:	038b2783          	lw	a5,56(s6)
   10400:	26078463          	beqz	a5,10668 <_vfprintf_r+0x2d0>
   10404:	00ca9703          	lh	a4,12(s5)
   10408:	01071793          	slli	a5,a4,0x10
   1040c:	0107d793          	srli	a5,a5,0x10
   10410:	01279693          	slli	a3,a5,0x12
   10414:	0206c663          	bltz	a3,10440 <_vfprintf_r+0xa8>
   10418:	064aa683          	lw	a3,100(s5)
   1041c:	000027b7          	lui	a5,0x2
   10420:	00f767b3          	or	a5,a4,a5
   10424:	ffffe737          	lui	a4,0xffffe
   10428:	fff70713          	addi	a4,a4,-1 # ffffdfff <_gp+0xfffe058f>
   1042c:	00e6f733          	and	a4,a3,a4
   10430:	00fa9623          	sh	a5,12(s5)
   10434:	01079793          	slli	a5,a5,0x10
   10438:	06eaa223          	sw	a4,100(s5)
   1043c:	0107d793          	srli	a5,a5,0x10
   10440:	0087f713          	andi	a4,a5,8
   10444:	14070c63          	beqz	a4,1059c <_vfprintf_r+0x204>
   10448:	010aa703          	lw	a4,16(s5)
   1044c:	14070863          	beqz	a4,1059c <_vfprintf_r+0x204>
   10450:	01a7f793          	andi	a5,a5,26
   10454:	00a00713          	li	a4,10
   10458:	16e78463          	beq	a5,a4,105c0 <_vfprintf_r+0x228>
   1045c:	0001b7b7          	lui	a5,0x1b
   10460:	0a878793          	addi	a5,a5,168 # 1b0a8 <__errno+0x14>
   10464:	02f12a23          	sw	a5,52(sp)
   10468:	0001b7b7          	lui	a5,0x1b
   1046c:	0c010c13          	addi	s8,sp,192
   10470:	20c78793          	addi	a5,a5,524 # 1b20c <blanks.4198>
   10474:	0001b4b7          	lui	s1,0x1b
   10478:	09812623          	sw	s8,140(sp)
   1047c:	08012a23          	sw	zero,148(sp)
   10480:	08012823          	sw	zero,144(sp)
   10484:	04012223          	sw	zero,68(sp)
   10488:	04012423          	sw	zero,72(sp)
   1048c:	04012623          	sw	zero,76(sp)
   10490:	000c0313          	mv	t1,s8
   10494:	04012823          	sw	zero,80(sp)
   10498:	04012e23          	sw	zero,92(sp)
   1049c:	02012423          	sw	zero,40(sp)
   104a0:	00f12e23          	sw	a5,28(sp)
   104a4:	21c48493          	addi	s1,s1,540 # 1b21c <zeroes.4199>
   104a8:	000cc783          	lbu	a5,0(s9)
   104ac:	54078c63          	beqz	a5,10a04 <_vfprintf_r+0x66c>
   104b0:	02500713          	li	a4,37
   104b4:	000c8413          	mv	s0,s9
   104b8:	00e79663          	bne	a5,a4,104c4 <_vfprintf_r+0x12c>
   104bc:	0540006f          	j	10510 <_vfprintf_r+0x178>
   104c0:	00e78863          	beq	a5,a4,104d0 <_vfprintf_r+0x138>
   104c4:	00140413          	addi	s0,s0,1
   104c8:	00044783          	lbu	a5,0(s0)
   104cc:	fe079ae3          	bnez	a5,104c0 <_vfprintf_r+0x128>
   104d0:	41940933          	sub	s2,s0,s9
   104d4:	02090e63          	beqz	s2,10510 <_vfprintf_r+0x178>
   104d8:	09412703          	lw	a4,148(sp)
   104dc:	09012783          	lw	a5,144(sp)
   104e0:	01932023          	sw	s9,0(t1)
   104e4:	01270733          	add	a4,a4,s2
   104e8:	00178793          	addi	a5,a5,1
   104ec:	01232223          	sw	s2,4(t1)
   104f0:	08e12a23          	sw	a4,148(sp)
   104f4:	08f12823          	sw	a5,144(sp)
   104f8:	00700713          	li	a4,7
   104fc:	00830313          	addi	t1,t1,8
   10500:	0ef74263          	blt	a4,a5,105e4 <_vfprintf_r+0x24c>
   10504:	02812783          	lw	a5,40(sp)
   10508:	012787b3          	add	a5,a5,s2
   1050c:	02f12423          	sw	a5,40(sp)
   10510:	00044783          	lbu	a5,0(s0)
   10514:	0e078663          	beqz	a5,10600 <_vfprintf_r+0x268>
   10518:	fff00993          	li	s3,-1
   1051c:	00140c93          	addi	s9,s0,1
   10520:	060107a3          	sb	zero,111(sp)
   10524:	00000613          	li	a2,0
   10528:	00000593          	li	a1,0
   1052c:	00000e13          	li	t3,0
   10530:	00000d93          	li	s11,0
   10534:	05800713          	li	a4,88
   10538:	00900693          	li	a3,9
   1053c:	02a00893          	li	a7,42
   10540:	00098f93          	mv	t6,s3
   10544:	00100513          	li	a0,1
   10548:	02000f13          	li	t5,32
   1054c:	02b00813          	li	a6,43
   10550:	000cc903          	lbu	s2,0(s9)
   10554:	001c8c93          	addi	s9,s9,1
   10558:	fe090793          	addi	a5,s2,-32
   1055c:	08f768e3          	bltu	a4,a5,10dec <_vfprintf_r+0xa54>
   10560:	03412e83          	lw	t4,52(sp)
   10564:	00279793          	slli	a5,a5,0x2
   10568:	01d787b3          	add	a5,a5,t4
   1056c:	0007a783          	lw	a5,0(a5)
   10570:	00078067          	jr	a5
   10574:	010ded93          	ori	s11,s11,16
   10578:	fd9ff06f          	j	10550 <_vfprintf_r+0x1b8>
   1057c:	03012783          	lw	a5,48(sp)
   10580:	0007ae03          	lw	t3,0(a5)
   10584:	00478793          	addi	a5,a5,4
   10588:	02f12823          	sw	a5,48(sp)
   1058c:	fc0e52e3          	bgez	t3,10550 <_vfprintf_r+0x1b8>
   10590:	41c00e33          	neg	t3,t3
   10594:	004ded93          	ori	s11,s11,4
   10598:	fb9ff06f          	j	10550 <_vfprintf_r+0x1b8>
   1059c:	000a8593          	mv	a1,s5
   105a0:	000b0513          	mv	a0,s6
   105a4:	1cd010ef          	jal	11f70 <__swsetup_r>
   105a8:	00050463          	beqz	a0,105b0 <_vfprintf_r+0x218>
   105ac:	34c0106f          	j	118f8 <_vfprintf_r+0x1560>
   105b0:	00cad783          	lhu	a5,12(s5)
   105b4:	00a00713          	li	a4,10
   105b8:	01a7f793          	andi	a5,a5,26
   105bc:	eae790e3          	bne	a5,a4,1045c <_vfprintf_r+0xc4>
   105c0:	00ea9783          	lh	a5,14(s5)
   105c4:	e807cce3          	bltz	a5,1045c <_vfprintf_r+0xc4>
   105c8:	03012683          	lw	a3,48(sp)
   105cc:	000c8613          	mv	a2,s9
   105d0:	000a8593          	mv	a1,s5
   105d4:	000b0513          	mv	a0,s6
   105d8:	0d9010ef          	jal	11eb0 <__sbprintf>
   105dc:	02a12423          	sw	a0,40(sp)
   105e0:	0480006f          	j	10628 <_vfprintf_r+0x290>
   105e4:	08c10613          	addi	a2,sp,140
   105e8:	000a8593          	mv	a1,s5
   105ec:	000b0513          	mv	a0,s6
   105f0:	28c060ef          	jal	1687c <__sprint_r>
   105f4:	02051263          	bnez	a0,10618 <_vfprintf_r+0x280>
   105f8:	000c0313          	mv	t1,s8
   105fc:	f09ff06f          	j	10504 <_vfprintf_r+0x16c>
   10600:	09412783          	lw	a5,148(sp)
   10604:	00078a63          	beqz	a5,10618 <_vfprintf_r+0x280>
   10608:	08c10613          	addi	a2,sp,140
   1060c:	000a8593          	mv	a1,s5
   10610:	000b0513          	mv	a0,s6
   10614:	268060ef          	jal	1687c <__sprint_r>
   10618:	00cad783          	lhu	a5,12(s5)
   1061c:	0407f793          	andi	a5,a5,64
   10620:	00078463          	beqz	a5,10628 <_vfprintf_r+0x290>
   10624:	2d40106f          	j	118f8 <_vfprintf_r+0x1560>
   10628:	13c12083          	lw	ra,316(sp)
   1062c:	02812503          	lw	a0,40(sp)
   10630:	13812403          	lw	s0,312(sp)
   10634:	13412483          	lw	s1,308(sp)
   10638:	13012903          	lw	s2,304(sp)
   1063c:	12c12983          	lw	s3,300(sp)
   10640:	12812a03          	lw	s4,296(sp)
   10644:	12412a83          	lw	s5,292(sp)
   10648:	12012b03          	lw	s6,288(sp)
   1064c:	11c12b83          	lw	s7,284(sp)
   10650:	11812c03          	lw	s8,280(sp)
   10654:	11412c83          	lw	s9,276(sp)
   10658:	11012d03          	lw	s10,272(sp)
   1065c:	10c12d83          	lw	s11,268(sp)
   10660:	14010113          	addi	sp,sp,320
   10664:	00008067          	ret
   10668:	000b0513          	mv	a0,s6
   1066c:	211030ef          	jal	1407c <__sinit>
   10670:	d95ff06f          	j	10404 <_vfprintf_r+0x6c>
   10674:	00050613          	mv	a2,a0
   10678:	00080593          	mv	a1,a6
   1067c:	ed5ff06f          	j	10550 <_vfprintf_r+0x1b8>
   10680:	03012783          	lw	a5,48(sp)
   10684:	03c12623          	sw	t3,44(sp)
   10688:	060107a3          	sb	zero,111(sp)
   1068c:	0007a403          	lw	s0,0(a5)
   10690:	00478d13          	addi	s10,a5,4
   10694:	00041463          	bnez	s0,1069c <_vfprintf_r+0x304>
   10698:	3580106f          	j	119f0 <_vfprintf_r+0x1658>
   1069c:	fff00793          	li	a5,-1
   106a0:	02612023          	sw	t1,32(sp)
   106a4:	00f99463          	bne	s3,a5,106ac <_vfprintf_r+0x314>
   106a8:	3140106f          	j	119bc <_vfprintf_r+0x1624>
   106ac:	00098613          	mv	a2,s3
   106b0:	00000593          	li	a1,0
   106b4:	00040513          	mv	a0,s0
   106b8:	0fd040ef          	jal	14fb4 <memchr>
   106bc:	02012303          	lw	t1,32(sp)
   106c0:	00098a13          	mv	s4,s3
   106c4:	00098b93          	mv	s7,s3
   106c8:	00050a63          	beqz	a0,106dc <_vfprintf_r+0x344>
   106cc:	40850bb3          	sub	s7,a0,s0
   106d0:	000b8a13          	mv	s4,s7
   106d4:	000bd463          	bgez	s7,106dc <_vfprintf_r+0x344>
   106d8:	3000106f          	j	119d8 <_vfprintf_r+0x1640>
   106dc:	06f14603          	lbu	a2,111(sp)
   106e0:	03a12823          	sw	s10,48(sp)
   106e4:	03b12023          	sw	s11,32(sp)
   106e8:	04012023          	sw	zero,64(sp)
   106ec:	00000993          	li	s3,0
   106f0:	40061e63          	bnez	a2,10b0c <_vfprintf_r+0x774>
   106f4:	02012783          	lw	a5,32(sp)
   106f8:	0027f793          	andi	a5,a5,2
   106fc:	02f12c23          	sw	a5,56(sp)
   10700:	00078463          	beqz	a5,10708 <_vfprintf_r+0x370>
   10704:	002a0a13          	addi	s4,s4,2
   10708:	02012783          	lw	a5,32(sp)
   1070c:	0847f793          	andi	a5,a5,132
   10710:	02f12e23          	sw	a5,60(sp)
   10714:	6e079c63          	bnez	a5,10e0c <_vfprintf_r+0xa74>
   10718:	02c12783          	lw	a5,44(sp)
   1071c:	41478d33          	sub	s10,a5,s4
   10720:	6fa05663          	blez	s10,10e0c <_vfprintf_r+0xa74>
   10724:	01000813          	li	a6,16
   10728:	09412783          	lw	a5,148(sp)
   1072c:	09012703          	lw	a4,144(sp)
   10730:	07a85463          	ble	s10,a6,10798 <_vfprintf_r+0x400>
   10734:	00700d93          	li	s11,7
   10738:	00c0006f          	j	10744 <_vfprintf_r+0x3ac>
   1073c:	ff0d0d13          	addi	s10,s10,-16
   10740:	05a85c63          	ble	s10,a6,10798 <_vfprintf_r+0x400>
   10744:	01c12683          	lw	a3,28(sp)
   10748:	01078793          	addi	a5,a5,16
   1074c:	00170713          	addi	a4,a4,1
   10750:	00d32023          	sw	a3,0(t1)
   10754:	01032223          	sw	a6,4(t1)
   10758:	08f12a23          	sw	a5,148(sp)
   1075c:	08e12823          	sw	a4,144(sp)
   10760:	00830313          	addi	t1,t1,8
   10764:	fceddce3          	ble	a4,s11,1073c <_vfprintf_r+0x3a4>
   10768:	08c10613          	addi	a2,sp,140
   1076c:	000a8593          	mv	a1,s5
   10770:	000b0513          	mv	a0,s6
   10774:	03012223          	sw	a6,36(sp)
   10778:	104060ef          	jal	1687c <__sprint_r>
   1077c:	e8051ee3          	bnez	a0,10618 <_vfprintf_r+0x280>
   10780:	02412803          	lw	a6,36(sp)
   10784:	ff0d0d13          	addi	s10,s10,-16
   10788:	09412783          	lw	a5,148(sp)
   1078c:	09012703          	lw	a4,144(sp)
   10790:	000c0313          	mv	t1,s8
   10794:	fba848e3          	blt	a6,s10,10744 <_vfprintf_r+0x3ac>
   10798:	01c12683          	lw	a3,28(sp)
   1079c:	00fd07b3          	add	a5,s10,a5
   107a0:	00170713          	addi	a4,a4,1
   107a4:	00d32023          	sw	a3,0(t1)
   107a8:	01a32223          	sw	s10,4(t1)
   107ac:	08f12a23          	sw	a5,148(sp)
   107b0:	08e12823          	sw	a4,144(sp)
   107b4:	00700693          	li	a3,7
   107b8:	40e6cae3          	blt	a3,a4,113cc <_vfprintf_r+0x1034>
   107bc:	06f14603          	lbu	a2,111(sp)
   107c0:	00830313          	addi	t1,t1,8
   107c4:	02060a63          	beqz	a2,107f8 <_vfprintf_r+0x460>
   107c8:	09012703          	lw	a4,144(sp)
   107cc:	06f10693          	addi	a3,sp,111
   107d0:	00d32023          	sw	a3,0(t1)
   107d4:	00178793          	addi	a5,a5,1
   107d8:	00100693          	li	a3,1
   107dc:	00170713          	addi	a4,a4,1
   107e0:	00d32223          	sw	a3,4(t1)
   107e4:	08f12a23          	sw	a5,148(sp)
   107e8:	08e12823          	sw	a4,144(sp)
   107ec:	00700693          	li	a3,7
   107f0:	00830313          	addi	t1,t1,8
   107f4:	1ce6cae3          	blt	a3,a4,111c8 <_vfprintf_r+0xe30>
   107f8:	03812703          	lw	a4,56(sp)
   107fc:	02070a63          	beqz	a4,10830 <_vfprintf_r+0x498>
   10800:	09012703          	lw	a4,144(sp)
   10804:	07010693          	addi	a3,sp,112
   10808:	00d32023          	sw	a3,0(t1)
   1080c:	00278793          	addi	a5,a5,2
   10810:	00200693          	li	a3,2
   10814:	00170713          	addi	a4,a4,1
   10818:	00d32223          	sw	a3,4(t1)
   1081c:	08f12a23          	sw	a5,148(sp)
   10820:	08e12823          	sw	a4,144(sp)
   10824:	00700693          	li	a3,7
   10828:	00830313          	addi	t1,t1,8
   1082c:	1ae6cee3          	blt	a3,a4,111e8 <_vfprintf_r+0xe50>
   10830:	03c12683          	lw	a3,60(sp)
   10834:	08000713          	li	a4,128
   10838:	76e68463          	beq	a3,a4,10fa0 <_vfprintf_r+0xc08>
   1083c:	417989b3          	sub	s3,s3,s7
   10840:	0b305463          	blez	s3,108e8 <_vfprintf_r+0x550>
   10844:	01000d93          	li	s11,16
   10848:	09012703          	lw	a4,144(sp)
   1084c:	053dde63          	ble	s3,s11,108a8 <_vfprintf_r+0x510>
   10850:	00700d13          	li	s10,7
   10854:	00c0006f          	j	10860 <_vfprintf_r+0x4c8>
   10858:	ff098993          	addi	s3,s3,-16
   1085c:	053dd663          	ble	s3,s11,108a8 <_vfprintf_r+0x510>
   10860:	01078793          	addi	a5,a5,16
   10864:	00170713          	addi	a4,a4,1
   10868:	00932023          	sw	s1,0(t1)
   1086c:	01b32223          	sw	s11,4(t1)
   10870:	08f12a23          	sw	a5,148(sp)
   10874:	08e12823          	sw	a4,144(sp)
   10878:	00830313          	addi	t1,t1,8
   1087c:	fced5ee3          	ble	a4,s10,10858 <_vfprintf_r+0x4c0>
   10880:	08c10613          	addi	a2,sp,140
   10884:	000a8593          	mv	a1,s5
   10888:	000b0513          	mv	a0,s6
   1088c:	7f1050ef          	jal	1687c <__sprint_r>
   10890:	d80514e3          	bnez	a0,10618 <_vfprintf_r+0x280>
   10894:	ff098993          	addi	s3,s3,-16
   10898:	09412783          	lw	a5,148(sp)
   1089c:	09012703          	lw	a4,144(sp)
   108a0:	000c0313          	mv	t1,s8
   108a4:	fb3dcee3          	blt	s11,s3,10860 <_vfprintf_r+0x4c8>
   108a8:	013787b3          	add	a5,a5,s3
   108ac:	00170713          	addi	a4,a4,1
   108b0:	00932023          	sw	s1,0(t1)
   108b4:	01332223          	sw	s3,4(t1)
   108b8:	08f12a23          	sw	a5,148(sp)
   108bc:	08e12823          	sw	a4,144(sp)
   108c0:	00700693          	li	a3,7
   108c4:	00830313          	addi	t1,t1,8
   108c8:	02e6d063          	ble	a4,a3,108e8 <_vfprintf_r+0x550>
   108cc:	08c10613          	addi	a2,sp,140
   108d0:	000a8593          	mv	a1,s5
   108d4:	000b0513          	mv	a0,s6
   108d8:	7a5050ef          	jal	1687c <__sprint_r>
   108dc:	d2051ee3          	bnez	a0,10618 <_vfprintf_r+0x280>
   108e0:	09412783          	lw	a5,148(sp)
   108e4:	000c0313          	mv	t1,s8
   108e8:	02012703          	lw	a4,32(sp)
   108ec:	10077713          	andi	a4,a4,256
   108f0:	62071663          	bnez	a4,10f1c <_vfprintf_r+0xb84>
   108f4:	09012703          	lw	a4,144(sp)
   108f8:	017787b3          	add	a5,a5,s7
   108fc:	00832023          	sw	s0,0(t1)
   10900:	00170713          	addi	a4,a4,1
   10904:	01732223          	sw	s7,4(t1)
   10908:	08f12a23          	sw	a5,148(sp)
   1090c:	08e12823          	sw	a4,144(sp)
   10910:	00700693          	li	a3,7
   10914:	5ee6c463          	blt	a3,a4,10efc <_vfprintf_r+0xb64>
   10918:	00830313          	addi	t1,t1,8
   1091c:	02012703          	lw	a4,32(sp)
   10920:	00477993          	andi	s3,a4,4
   10924:	0a098a63          	beqz	s3,109d8 <_vfprintf_r+0x640>
   10928:	02c12703          	lw	a4,44(sp)
   1092c:	41470433          	sub	s0,a4,s4
   10930:	0a805463          	blez	s0,109d8 <_vfprintf_r+0x640>
   10934:	01000913          	li	s2,16
   10938:	09012703          	lw	a4,144(sp)
   1093c:	06895063          	ble	s0,s2,1099c <_vfprintf_r+0x604>
   10940:	00700993          	li	s3,7
   10944:	00c0006f          	j	10950 <_vfprintf_r+0x5b8>
   10948:	ff040413          	addi	s0,s0,-16
   1094c:	04895863          	ble	s0,s2,1099c <_vfprintf_r+0x604>
   10950:	01c12683          	lw	a3,28(sp)
   10954:	01078793          	addi	a5,a5,16
   10958:	00170713          	addi	a4,a4,1
   1095c:	00d32023          	sw	a3,0(t1)
   10960:	01232223          	sw	s2,4(t1)
   10964:	08f12a23          	sw	a5,148(sp)
   10968:	08e12823          	sw	a4,144(sp)
   1096c:	00830313          	addi	t1,t1,8
   10970:	fce9dce3          	ble	a4,s3,10948 <_vfprintf_r+0x5b0>
   10974:	08c10613          	addi	a2,sp,140
   10978:	000a8593          	mv	a1,s5
   1097c:	000b0513          	mv	a0,s6
   10980:	6fd050ef          	jal	1687c <__sprint_r>
   10984:	c8051ae3          	bnez	a0,10618 <_vfprintf_r+0x280>
   10988:	ff040413          	addi	s0,s0,-16
   1098c:	09412783          	lw	a5,148(sp)
   10990:	09012703          	lw	a4,144(sp)
   10994:	000c0313          	mv	t1,s8
   10998:	fa894ce3          	blt	s2,s0,10950 <_vfprintf_r+0x5b8>
   1099c:	01c12683          	lw	a3,28(sp)
   109a0:	008787b3          	add	a5,a5,s0
   109a4:	00170713          	addi	a4,a4,1
   109a8:	00d32023          	sw	a3,0(t1)
   109ac:	00832223          	sw	s0,4(t1)
   109b0:	08f12a23          	sw	a5,148(sp)
   109b4:	08e12823          	sw	a4,144(sp)
   109b8:	00700693          	li	a3,7
   109bc:	00e6de63          	ble	a4,a3,109d8 <_vfprintf_r+0x640>
   109c0:	08c10613          	addi	a2,sp,140
   109c4:	000a8593          	mv	a1,s5
   109c8:	000b0513          	mv	a0,s6
   109cc:	6b1050ef          	jal	1687c <__sprint_r>
   109d0:	c40514e3          	bnez	a0,10618 <_vfprintf_r+0x280>
   109d4:	09412783          	lw	a5,148(sp)
   109d8:	02c12703          	lw	a4,44(sp)
   109dc:	01475463          	ble	s4,a4,109e4 <_vfprintf_r+0x64c>
   109e0:	000a0713          	mv	a4,s4
   109e4:	02812683          	lw	a3,40(sp)
   109e8:	00e68733          	add	a4,a3,a4
   109ec:	02e12423          	sw	a4,40(sp)
   109f0:	7a079063          	bnez	a5,11190 <_vfprintf_r+0xdf8>
   109f4:	000cc783          	lbu	a5,0(s9)
   109f8:	08012823          	sw	zero,144(sp)
   109fc:	000c0313          	mv	t1,s8
   10a00:	aa0798e3          	bnez	a5,104b0 <_vfprintf_r+0x118>
   10a04:	000c8413          	mv	s0,s9
   10a08:	b09ff06f          	j	10510 <_vfprintf_r+0x178>
   10a0c:	b40592e3          	bnez	a1,10550 <_vfprintf_r+0x1b8>
   10a10:	00050613          	mv	a2,a0
   10a14:	000f0593          	mv	a1,t5
   10a18:	b39ff06f          	j	10550 <_vfprintf_r+0x1b8>
   10a1c:	001ded93          	ori	s11,s11,1
   10a20:	b31ff06f          	j	10550 <_vfprintf_r+0x1b8>
   10a24:	000cc903          	lbu	s2,0(s9)
   10a28:	001c8c93          	addi	s9,s9,1
   10a2c:	01191463          	bne	s2,a7,10a34 <_vfprintf_r+0x69c>
   10a30:	3ec0106f          	j	11e1c <_vfprintf_r+0x1a84>
   10a34:	fd090e93          	addi	t4,s2,-48
   10a38:	00000993          	li	s3,0
   10a3c:	b1d6eee3          	bltu	a3,t4,10558 <_vfprintf_r+0x1c0>
   10a40:	001c8c93          	addi	s9,s9,1
   10a44:	00299793          	slli	a5,s3,0x2
   10a48:	fffcc903          	lbu	s2,-1(s9)
   10a4c:	013787b3          	add	a5,a5,s3
   10a50:	00179793          	slli	a5,a5,0x1
   10a54:	01d789b3          	add	s3,a5,t4
   10a58:	fd090e93          	addi	t4,s2,-48
   10a5c:	ffd6f2e3          	bleu	t4,a3,10a40 <_vfprintf_r+0x6a8>
   10a60:	af9ff06f          	j	10558 <_vfprintf_r+0x1c0>
   10a64:	080ded93          	ori	s11,s11,128
   10a68:	ae9ff06f          	j	10550 <_vfprintf_r+0x1b8>
   10a6c:	03012703          	lw	a4,48(sp)
   10a70:	03000793          	li	a5,48
   10a74:	06f10823          	sb	a5,112(sp)
   10a78:	07800793          	li	a5,120
   10a7c:	06f108a3          	sb	a5,113(sp)
   10a80:	00470793          	addi	a5,a4,4
   10a84:	02f12823          	sw	a5,48(sp)
   10a88:	00072b83          	lw	s7,0(a4)
   10a8c:	0001b7b7          	lui	a5,0x1b
   10a90:	63078793          	addi	a5,a5,1584 # 1b630 <__clz_tab+0x128>
   10a94:	04f12823          	sw	a5,80(sp)
   10a98:	03c12623          	sw	t3,44(sp)
   10a9c:	002ded93          	ori	s11,s11,2
   10aa0:	00200793          	li	a5,2
   10aa4:	07800913          	li	s2,120
   10aa8:	060107a3          	sb	zero,111(sp)
   10aac:	00000613          	li	a2,0
   10ab0:	fff00713          	li	a4,-1
   10ab4:	0ce98863          	beq	s3,a4,10b84 <_vfprintf_r+0x7ec>
   10ab8:	f7fdf713          	andi	a4,s11,-129
   10abc:	02e12023          	sw	a4,32(sp)
   10ac0:	0c0b9663          	bnez	s7,10b8c <_vfprintf_r+0x7f4>
   10ac4:	6e099263          	bnez	s3,111a8 <_vfprintf_r+0xe10>
   10ac8:	0e079ce3          	bnez	a5,113c0 <_vfprintf_r+0x1028>
   10acc:	001dfb93          	andi	s7,s11,1
   10ad0:	000c0413          	mv	s0,s8
   10ad4:	000b8863          	beqz	s7,10ae4 <_vfprintf_r+0x74c>
   10ad8:	03000793          	li	a5,48
   10adc:	0af10fa3          	sb	a5,191(sp)
   10ae0:	0bf10413          	addi	s0,sp,191
   10ae4:	00098a13          	mv	s4,s3
   10ae8:	0179d463          	ble	s7,s3,10af0 <_vfprintf_r+0x758>
   10aec:	000b8a13          	mv	s4,s7
   10af0:	04012023          	sw	zero,64(sp)
   10af4:	c00600e3          	beqz	a2,106f4 <_vfprintf_r+0x35c>
   10af8:	0140006f          	j	10b0c <_vfprintf_r+0x774>
   10afc:	02d00793          	li	a5,45
   10b00:	06f107a3          	sb	a5,111(sp)
   10b04:	02d00613          	li	a2,45
   10b08:	00000993          	li	s3,0
   10b0c:	001a0a13          	addi	s4,s4,1
   10b10:	be5ff06f          	j	106f4 <_vfprintf_r+0x35c>
   10b14:	00000e13          	li	t3,0
   10b18:	fd090e93          	addi	t4,s2,-48
   10b1c:	001c8c93          	addi	s9,s9,1
   10b20:	002e1793          	slli	a5,t3,0x2
   10b24:	fffcc903          	lbu	s2,-1(s9)
   10b28:	01c787b3          	add	a5,a5,t3
   10b2c:	00179793          	slli	a5,a5,0x1
   10b30:	00fe8e33          	add	t3,t4,a5
   10b34:	fd090e93          	addi	t4,s2,-48
   10b38:	ffd6f2e3          	bleu	t4,a3,10b1c <_vfprintf_r+0x784>
   10b3c:	a1dff06f          	j	10558 <_vfprintf_r+0x1c0>
   10b40:	03c12623          	sw	t3,44(sp)
   10b44:	00060463          	beqz	a2,10b4c <_vfprintf_r+0x7b4>
   10b48:	30c0106f          	j	11e54 <_vfprintf_r+0x1abc>
   10b4c:	010ded93          	ori	s11,s11,16
   10b50:	010df793          	andi	a5,s11,16
   10b54:	70079463          	bnez	a5,1125c <_vfprintf_r+0xec4>
   10b58:	040df793          	andi	a5,s11,64
   10b5c:	70078063          	beqz	a5,1125c <_vfprintf_r+0xec4>
   10b60:	03012783          	lw	a5,48(sp)
   10b64:	00079b83          	lh	s7,0(a5)
   10b68:	00478793          	addi	a5,a5,4
   10b6c:	02f12823          	sw	a5,48(sp)
   10b70:	3c0bc0e3          	bltz	s7,11730 <_vfprintf_r+0x1398>
   10b74:	fff00713          	li	a4,-1
   10b78:	06f14603          	lbu	a2,111(sp)
   10b7c:	00100793          	li	a5,1
   10b80:	f2e99ce3          	bne	s3,a4,10ab8 <_vfprintf_r+0x720>
   10b84:	620b8463          	beqz	s7,111ac <_vfprintf_r+0xe14>
   10b88:	03b12023          	sw	s11,32(sp)
   10b8c:	00100713          	li	a4,1
   10b90:	7ce78e63          	beq	a5,a4,1136c <_vfprintf_r+0xfd4>
   10b94:	00200713          	li	a4,2
   10b98:	66e79c63          	bne	a5,a4,11210 <_vfprintf_r+0xe78>
   10b9c:	05012703          	lw	a4,80(sp)
   10ba0:	000c0413          	mv	s0,s8
   10ba4:	00fbf793          	andi	a5,s7,15
   10ba8:	00f707b3          	add	a5,a4,a5
   10bac:	0007c783          	lbu	a5,0(a5)
   10bb0:	fff40413          	addi	s0,s0,-1
   10bb4:	004bdb93          	srli	s7,s7,0x4
   10bb8:	00f40023          	sb	a5,0(s0)
   10bbc:	fe0b94e3          	bnez	s7,10ba4 <_vfprintf_r+0x80c>
   10bc0:	408c0bb3          	sub	s7,s8,s0
   10bc4:	f21ff06f          	j	10ae4 <_vfprintf_r+0x74c>
   10bc8:	03c12623          	sw	t3,44(sp)
   10bcc:	00060463          	beqz	a2,10bd4 <_vfprintf_r+0x83c>
   10bd0:	2a40106f          	j	11e74 <_vfprintf_r+0x1adc>
   10bd4:	008df793          	andi	a5,s11,8
   10bd8:	4c078ce3          	beqz	a5,118b0 <_vfprintf_r+0x1518>
   10bdc:	03012783          	lw	a5,48(sp)
   10be0:	00778793          	addi	a5,a5,7
   10be4:	ff87f793          	andi	a5,a5,-8
   10be8:	00878713          	addi	a4,a5,8
   10bec:	02e12823          	sw	a4,48(sp)
   10bf0:	0007a703          	lw	a4,0(a5)
   10bf4:	0047a783          	lw	a5,4(a5)
   10bf8:	04e12423          	sw	a4,72(sp)
   10bfc:	04f12623          	sw	a5,76(sp)
   10c00:	04812b83          	lw	s7,72(sp)
   10c04:	04c12a03          	lw	s4,76(sp)
   10c08:	02612023          	sw	t1,32(sp)
   10c0c:	000b8513          	mv	a0,s7
   10c10:	000a0593          	mv	a1,s4
   10c14:	78c050ef          	jal	163a0 <__fpclassifyd>
   10c18:	00100413          	li	s0,1
   10c1c:	02012303          	lw	t1,32(sp)
   10c20:	328514e3          	bne	a0,s0,11748 <_vfprintf_r+0x13b0>
   10c24:	000b8513          	mv	a0,s7
   10c28:	000a0593          	mv	a1,s4
   10c2c:	00000613          	li	a2,0
   10c30:	00000693          	li	a3,0
   10c34:	380090ef          	jal	19fb4 <__ltdf2>
   10c38:	02012303          	lw	t1,32(sp)
   10c3c:	5e054ae3          	bltz	a0,11a30 <_vfprintf_r+0x1698>
   10c40:	06f14603          	lbu	a2,111(sp)
   10c44:	04700793          	li	a5,71
   10c48:	4f27d8e3          	ble	s2,a5,11938 <_vfprintf_r+0x15a0>
   10c4c:	0001b437          	lui	s0,0x1b
   10c50:	61040413          	addi	s0,s0,1552 # 1b610 <__clz_tab+0x108>
   10c54:	f7fdf793          	andi	a5,s11,-129
   10c58:	00300a13          	li	s4,3
   10c5c:	02f12023          	sw	a5,32(sp)
   10c60:	04012023          	sw	zero,64(sp)
   10c64:	000a0b93          	mv	s7,s4
   10c68:	00000993          	li	s3,0
   10c6c:	a80604e3          	beqz	a2,106f4 <_vfprintf_r+0x35c>
   10c70:	e9dff06f          	j	10b0c <_vfprintf_r+0x774>
   10c74:	008ded93          	ori	s11,s11,8
   10c78:	8d9ff06f          	j	10550 <_vfprintf_r+0x1b8>
   10c7c:	03c12623          	sw	t3,44(sp)
   10c80:	010ded93          	ori	s11,s11,16
   10c84:	010df793          	andi	a5,s11,16
   10c88:	60079a63          	bnez	a5,1129c <_vfprintf_r+0xf04>
   10c8c:	040df793          	andi	a5,s11,64
   10c90:	03012703          	lw	a4,48(sp)
   10c94:	60078663          	beqz	a5,112a0 <_vfprintf_r+0xf08>
   10c98:	00075b83          	lhu	s7,0(a4)
   10c9c:	00470713          	addi	a4,a4,4
   10ca0:	00000793          	li	a5,0
   10ca4:	02e12823          	sw	a4,48(sp)
   10ca8:	e01ff06f          	j	10aa8 <_vfprintf_r+0x710>
   10cac:	03c12623          	sw	t3,44(sp)
   10cb0:	010ded93          	ori	s11,s11,16
   10cb4:	010df793          	andi	a5,s11,16
   10cb8:	5c079663          	bnez	a5,11284 <_vfprintf_r+0xeec>
   10cbc:	040df793          	andi	a5,s11,64
   10cc0:	03012703          	lw	a4,48(sp)
   10cc4:	5c078263          	beqz	a5,11288 <_vfprintf_r+0xef0>
   10cc8:	00075b83          	lhu	s7,0(a4)
   10ccc:	00470713          	addi	a4,a4,4
   10cd0:	00100793          	li	a5,1
   10cd4:	02e12823          	sw	a4,48(sp)
   10cd8:	dd1ff06f          	j	10aa8 <_vfprintf_r+0x710>
   10cdc:	03c12623          	sw	t3,44(sp)
   10ce0:	00060463          	beqz	a2,10ce8 <_vfprintf_r+0x950>
   10ce4:	1b00106f          	j	11e94 <_vfprintf_r+0x1afc>
   10ce8:	0001b7b7          	lui	a5,0x1b
   10cec:	61c78793          	addi	a5,a5,1564 # 1b61c <__clz_tab+0x114>
   10cf0:	04f12823          	sw	a5,80(sp)
   10cf4:	010df793          	andi	a5,s11,16
   10cf8:	56079c63          	bnez	a5,11270 <_vfprintf_r+0xed8>
   10cfc:	040df793          	andi	a5,s11,64
   10d00:	56078863          	beqz	a5,11270 <_vfprintf_r+0xed8>
   10d04:	03012783          	lw	a5,48(sp)
   10d08:	0007db83          	lhu	s7,0(a5)
   10d0c:	00478793          	addi	a5,a5,4
   10d10:	02f12823          	sw	a5,48(sp)
   10d14:	001df713          	andi	a4,s11,1
   10d18:	00200793          	li	a5,2
   10d1c:	d80706e3          	beqz	a4,10aa8 <_vfprintf_r+0x710>
   10d20:	d80b84e3          	beqz	s7,10aa8 <_vfprintf_r+0x710>
   10d24:	03000713          	li	a4,48
   10d28:	06e10823          	sb	a4,112(sp)
   10d2c:	072108a3          	sb	s2,113(sp)
   10d30:	00fdedb3          	or	s11,s11,a5
   10d34:	d75ff06f          	j	10aa8 <_vfprintf_r+0x710>
   10d38:	03012703          	lw	a4,48(sp)
   10d3c:	03c12623          	sw	t3,44(sp)
   10d40:	00100a13          	li	s4,1
   10d44:	00072783          	lw	a5,0(a4)
   10d48:	060107a3          	sb	zero,111(sp)
   10d4c:	08f10c23          	sb	a5,152(sp)
   10d50:	00470793          	addi	a5,a4,4
   10d54:	02f12823          	sw	a5,48(sp)
   10d58:	03b12023          	sw	s11,32(sp)
   10d5c:	00000613          	li	a2,0
   10d60:	000a0b93          	mv	s7,s4
   10d64:	00000993          	li	s3,0
   10d68:	04012023          	sw	zero,64(sp)
   10d6c:	09810413          	addi	s0,sp,152
   10d70:	985ff06f          	j	106f4 <_vfprintf_r+0x35c>
   10d74:	03c12623          	sw	t3,44(sp)
   10d78:	dc060ce3          	beqz	a2,10b50 <_vfprintf_r+0x7b8>
   10d7c:	06b107a3          	sb	a1,111(sp)
   10d80:	dd1ff06f          	j	10b50 <_vfprintf_r+0x7b8>
   10d84:	040ded93          	ori	s11,s11,64
   10d88:	fc8ff06f          	j	10550 <_vfprintf_r+0x1b8>
   10d8c:	03c12623          	sw	t3,44(sp)
   10d90:	00060463          	beqz	a2,10d98 <_vfprintf_r+0xa00>
   10d94:	0f80106f          	j	11e8c <_vfprintf_r+0x1af4>
   10d98:	0001b7b7          	lui	a5,0x1b
   10d9c:	63078793          	addi	a5,a5,1584 # 1b630 <__clz_tab+0x128>
   10da0:	04f12823          	sw	a5,80(sp)
   10da4:	f51ff06f          	j	10cf4 <_vfprintf_r+0x95c>
   10da8:	00060463          	beqz	a2,10db0 <_vfprintf_r+0xa18>
   10dac:	0d80106f          	j	11e84 <_vfprintf_r+0x1aec>
   10db0:	010df793          	andi	a5,s11,16
   10db4:	0e0796e3          	bnez	a5,116a0 <_vfprintf_r+0x1308>
   10db8:	040dfe93          	andi	t4,s11,64
   10dbc:	0e0e82e3          	beqz	t4,116a0 <_vfprintf_r+0x1308>
   10dc0:	03012703          	lw	a4,48(sp)
   10dc4:	00072783          	lw	a5,0(a4)
   10dc8:	00470713          	addi	a4,a4,4
   10dcc:	02e12823          	sw	a4,48(sp)
   10dd0:	02815703          	lhu	a4,40(sp)
   10dd4:	00e79023          	sh	a4,0(a5)
   10dd8:	ed0ff06f          	j	104a8 <_vfprintf_r+0x110>
   10ddc:	03c12623          	sw	t3,44(sp)
   10de0:	ed5ff06f          	j	10cb4 <_vfprintf_r+0x91c>
   10de4:	03c12623          	sw	t3,44(sp)
   10de8:	e9dff06f          	j	10c84 <_vfprintf_r+0x8ec>
   10dec:	03c12623          	sw	t3,44(sp)
   10df0:	00060463          	beqz	a2,10df8 <_vfprintf_r+0xa60>
   10df4:	0880106f          	j	11e7c <_vfprintf_r+0x1ae4>
   10df8:	800904e3          	beqz	s2,10600 <_vfprintf_r+0x268>
   10dfc:	00100a13          	li	s4,1
   10e00:	09210c23          	sb	s2,152(sp)
   10e04:	060107a3          	sb	zero,111(sp)
   10e08:	f51ff06f          	j	10d58 <_vfprintf_r+0x9c0>
   10e0c:	09412783          	lw	a5,148(sp)
   10e10:	9b5ff06f          	j	107c4 <_vfprintf_r+0x42c>
   10e14:	09012703          	lw	a4,144(sp)
   10e18:	0001b637          	lui	a2,0x1b
   10e1c:	64c60613          	addi	a2,a2,1612 # 1b64c <__clz_tab+0x144>
   10e20:	00c32023          	sw	a2,0(t1)
   10e24:	00178793          	addi	a5,a5,1
   10e28:	00100613          	li	a2,1
   10e2c:	00170713          	addi	a4,a4,1
   10e30:	00c32223          	sw	a2,4(t1)
   10e34:	08f12a23          	sw	a5,148(sp)
   10e38:	08e12823          	sw	a4,144(sp)
   10e3c:	00700613          	li	a2,7
   10e40:	00830313          	addi	t1,t1,8
   10e44:	02e65263          	ble	a4,a2,10e68 <_vfprintf_r+0xad0>
   10e48:	08c10613          	addi	a2,sp,140
   10e4c:	000a8593          	mv	a1,s5
   10e50:	000b0513          	mv	a0,s6
   10e54:	229050ef          	jal	1687c <__sprint_r>
   10e58:	fc051063          	bnez	a0,10618 <_vfprintf_r+0x280>
   10e5c:	07412683          	lw	a3,116(sp)
   10e60:	09412783          	lw	a5,148(sp)
   10e64:	000c0313          	mv	t1,s8
   10e68:	00069c63          	bnez	a3,10e80 <_vfprintf_r+0xae8>
   10e6c:	04412703          	lw	a4,68(sp)
   10e70:	00071863          	bnez	a4,10e80 <_vfprintf_r+0xae8>
   10e74:	02012703          	lw	a4,32(sp)
   10e78:	00177713          	andi	a4,a4,1
   10e7c:	aa0700e3          	beqz	a4,1091c <_vfprintf_r+0x584>
   10e80:	05412703          	lw	a4,84(sp)
   10e84:	05812603          	lw	a2,88(sp)
   10e88:	00830313          	addi	t1,t1,8
   10e8c:	fee32c23          	sw	a4,-8(t1)
   10e90:	09012703          	lw	a4,144(sp)
   10e94:	00f607b3          	add	a5,a2,a5
   10e98:	fec32e23          	sw	a2,-4(t1)
   10e9c:	00170713          	addi	a4,a4,1
   10ea0:	08f12a23          	sw	a5,148(sp)
   10ea4:	08e12823          	sw	a4,144(sp)
   10ea8:	00700613          	li	a2,7
   10eac:	02e65463          	ble	a4,a2,10ed4 <_vfprintf_r+0xb3c>
   10eb0:	08c10613          	addi	a2,sp,140
   10eb4:	000a8593          	mv	a1,s5
   10eb8:	000b0513          	mv	a0,s6
   10ebc:	1c1050ef          	jal	1687c <__sprint_r>
   10ec0:	f4051c63          	bnez	a0,10618 <_vfprintf_r+0x280>
   10ec4:	07412683          	lw	a3,116(sp)
   10ec8:	09412783          	lw	a5,148(sp)
   10ecc:	09012703          	lw	a4,144(sp)
   10ed0:	000c0313          	mv	t1,s8
   10ed4:	4006c4e3          	bltz	a3,11adc <_vfprintf_r+0x1744>
   10ed8:	04412683          	lw	a3,68(sp)
   10edc:	00170713          	addi	a4,a4,1
   10ee0:	00832023          	sw	s0,0(t1)
   10ee4:	00f687b3          	add	a5,a3,a5
   10ee8:	00d32223          	sw	a3,4(t1)
   10eec:	08f12a23          	sw	a5,148(sp)
   10ef0:	08e12823          	sw	a4,144(sp)
   10ef4:	00700693          	li	a3,7
   10ef8:	a2e6d0e3          	ble	a4,a3,10918 <_vfprintf_r+0x580>
   10efc:	08c10613          	addi	a2,sp,140
   10f00:	000a8593          	mv	a1,s5
   10f04:	000b0513          	mv	a0,s6
   10f08:	175050ef          	jal	1687c <__sprint_r>
   10f0c:	f0051663          	bnez	a0,10618 <_vfprintf_r+0x280>
   10f10:	09412783          	lw	a5,148(sp)
   10f14:	000c0313          	mv	t1,s8
   10f18:	a05ff06f          	j	1091c <_vfprintf_r+0x584>
   10f1c:	06500713          	li	a4,101
   10f20:	13275e63          	ble	s2,a4,1105c <_vfprintf_r+0xcc4>
   10f24:	04812503          	lw	a0,72(sp)
   10f28:	04c12583          	lw	a1,76(sp)
   10f2c:	00000613          	li	a2,0
   10f30:	00000693          	li	a3,0
   10f34:	02612c23          	sw	t1,56(sp)
   10f38:	02f12223          	sw	a5,36(sp)
   10f3c:	080090ef          	jal	19fbc <__eqdf2>
   10f40:	02412783          	lw	a5,36(sp)
   10f44:	03812303          	lw	t1,56(sp)
   10f48:	36051663          	bnez	a0,112b4 <_vfprintf_r+0xf1c>
   10f4c:	09012703          	lw	a4,144(sp)
   10f50:	0001b6b7          	lui	a3,0x1b
   10f54:	64c68693          	addi	a3,a3,1612 # 1b64c <__clz_tab+0x144>
   10f58:	00178793          	addi	a5,a5,1
   10f5c:	00d32023          	sw	a3,0(t1)
   10f60:	00170713          	addi	a4,a4,1
   10f64:	00100693          	li	a3,1
   10f68:	00d32223          	sw	a3,4(t1)
   10f6c:	08f12a23          	sw	a5,148(sp)
   10f70:	08e12823          	sw	a4,144(sp)
   10f74:	00700793          	li	a5,7
   10f78:	00830313          	addi	t1,t1,8
   10f7c:	14e7cee3          	blt	a5,a4,118d8 <_vfprintf_r+0x1540>
   10f80:	07412783          	lw	a5,116(sp)
   10f84:	04412703          	lw	a4,68(sp)
   10f88:	4ce7c663          	blt	a5,a4,11454 <_vfprintf_r+0x10bc>
   10f8c:	02012783          	lw	a5,32(sp)
   10f90:	0017f793          	andi	a5,a5,1
   10f94:	4c079063          	bnez	a5,11454 <_vfprintf_r+0x10bc>
   10f98:	09412783          	lw	a5,148(sp)
   10f9c:	981ff06f          	j	1091c <_vfprintf_r+0x584>
   10fa0:	02c12703          	lw	a4,44(sp)
   10fa4:	41470d33          	sub	s10,a4,s4
   10fa8:	89a05ae3          	blez	s10,1083c <_vfprintf_r+0x4a4>
   10fac:	01000d93          	li	s11,16
   10fb0:	09012703          	lw	a4,144(sp)
   10fb4:	07add263          	ble	s10,s11,11018 <_vfprintf_r+0xc80>
   10fb8:	00700693          	li	a3,7
   10fbc:	00c0006f          	j	10fc8 <_vfprintf_r+0xc30>
   10fc0:	ff0d0d13          	addi	s10,s10,-16
   10fc4:	05adda63          	ble	s10,s11,11018 <_vfprintf_r+0xc80>
   10fc8:	01078793          	addi	a5,a5,16
   10fcc:	00170713          	addi	a4,a4,1
   10fd0:	00932023          	sw	s1,0(t1)
   10fd4:	01b32223          	sw	s11,4(t1)
   10fd8:	08f12a23          	sw	a5,148(sp)
   10fdc:	08e12823          	sw	a4,144(sp)
   10fe0:	00830313          	addi	t1,t1,8
   10fe4:	fce6dee3          	ble	a4,a3,10fc0 <_vfprintf_r+0xc28>
   10fe8:	08c10613          	addi	a2,sp,140
   10fec:	000a8593          	mv	a1,s5
   10ff0:	000b0513          	mv	a0,s6
   10ff4:	02d12223          	sw	a3,36(sp)
   10ff8:	085050ef          	jal	1687c <__sprint_r>
   10ffc:	e0051e63          	bnez	a0,10618 <_vfprintf_r+0x280>
   11000:	ff0d0d13          	addi	s10,s10,-16
   11004:	09412783          	lw	a5,148(sp)
   11008:	09012703          	lw	a4,144(sp)
   1100c:	000c0313          	mv	t1,s8
   11010:	02412683          	lw	a3,36(sp)
   11014:	fbadcae3          	blt	s11,s10,10fc8 <_vfprintf_r+0xc30>
   11018:	01a787b3          	add	a5,a5,s10
   1101c:	00170713          	addi	a4,a4,1
   11020:	00932023          	sw	s1,0(t1)
   11024:	01a32223          	sw	s10,4(t1)
   11028:	08f12a23          	sw	a5,148(sp)
   1102c:	08e12823          	sw	a4,144(sp)
   11030:	00700693          	li	a3,7
   11034:	00830313          	addi	t1,t1,8
   11038:	80e6d2e3          	ble	a4,a3,1083c <_vfprintf_r+0x4a4>
   1103c:	08c10613          	addi	a2,sp,140
   11040:	000a8593          	mv	a1,s5
   11044:	000b0513          	mv	a0,s6
   11048:	035050ef          	jal	1687c <__sprint_r>
   1104c:	dc051663          	bnez	a0,10618 <_vfprintf_r+0x280>
   11050:	09412783          	lw	a5,148(sp)
   11054:	000c0313          	mv	t1,s8
   11058:	fe4ff06f          	j	1083c <_vfprintf_r+0x4a4>
   1105c:	04412683          	lw	a3,68(sp)
   11060:	00100713          	li	a4,1
   11064:	0cd75a63          	ble	a3,a4,11138 <_vfprintf_r+0xda0>
   11068:	09012903          	lw	s2,144(sp)
   1106c:	00100713          	li	a4,1
   11070:	00178793          	addi	a5,a5,1
   11074:	00190913          	addi	s2,s2,1
   11078:	00e32223          	sw	a4,4(t1)
   1107c:	00832023          	sw	s0,0(t1)
   11080:	08f12a23          	sw	a5,148(sp)
   11084:	09212823          	sw	s2,144(sp)
   11088:	00700713          	li	a4,7
   1108c:	00830313          	addi	t1,t1,8
   11090:	63274663          	blt	a4,s2,116bc <_vfprintf_r+0x1324>
   11094:	05812703          	lw	a4,88(sp)
   11098:	00190913          	addi	s2,s2,1
   1109c:	09212823          	sw	s2,144(sp)
   110a0:	00f709b3          	add	s3,a4,a5
   110a4:	05412783          	lw	a5,84(sp)
   110a8:	00e32223          	sw	a4,4(t1)
   110ac:	09312a23          	sw	s3,148(sp)
   110b0:	00f32023          	sw	a5,0(t1)
   110b4:	00700713          	li	a4,7
   110b8:	00830b93          	addi	s7,t1,8
   110bc:	65274663          	blt	a4,s2,11708 <_vfprintf_r+0x1370>
   110c0:	04812503          	lw	a0,72(sp)
   110c4:	04c12583          	lw	a1,76(sp)
   110c8:	00000613          	li	a2,0
   110cc:	00000693          	li	a3,0
   110d0:	6e9080ef          	jal	19fb8 <__nedf2>
   110d4:	04412783          	lw	a5,68(sp)
   110d8:	30050c63          	beqz	a0,113f0 <_vfprintf_r+0x1058>
   110dc:	fff78713          	addi	a4,a5,-1
   110e0:	00e989b3          	add	s3,s3,a4
   110e4:	00140413          	addi	s0,s0,1
   110e8:	00190913          	addi	s2,s2,1
   110ec:	00eba223          	sw	a4,4(s7)
   110f0:	008ba023          	sw	s0,0(s7)
   110f4:	09312a23          	sw	s3,148(sp)
   110f8:	09212823          	sw	s2,144(sp)
   110fc:	00700713          	li	a4,7
   11100:	07274663          	blt	a4,s2,1116c <_vfprintf_r+0xdd4>
   11104:	008b8b93          	addi	s7,s7,8
   11108:	05c12683          	lw	a3,92(sp)
   1110c:	07c10713          	addi	a4,sp,124
   11110:	00190913          	addi	s2,s2,1
   11114:	013687b3          	add	a5,a3,s3
   11118:	00eba023          	sw	a4,0(s7)
   1111c:	00dba223          	sw	a3,4(s7)
   11120:	08f12a23          	sw	a5,148(sp)
   11124:	09212823          	sw	s2,144(sp)
   11128:	00700713          	li	a4,7
   1112c:	008b8313          	addi	t1,s7,8
   11130:	ff275663          	ble	s2,a4,1091c <_vfprintf_r+0x584>
   11134:	dc9ff06f          	j	10efc <_vfprintf_r+0xb64>
   11138:	02012683          	lw	a3,32(sp)
   1113c:	00e6f6b3          	and	a3,a3,a4
   11140:	f20694e3          	bnez	a3,11068 <_vfprintf_r+0xcd0>
   11144:	09012903          	lw	s2,144(sp)
   11148:	00178993          	addi	s3,a5,1
   1114c:	00e32223          	sw	a4,4(t1)
   11150:	00190913          	addi	s2,s2,1
   11154:	00832023          	sw	s0,0(t1)
   11158:	09312a23          	sw	s3,148(sp)
   1115c:	09212823          	sw	s2,144(sp)
   11160:	00700713          	li	a4,7
   11164:	00830b93          	addi	s7,t1,8
   11168:	fb2750e3          	ble	s2,a4,11108 <_vfprintf_r+0xd70>
   1116c:	08c10613          	addi	a2,sp,140
   11170:	000a8593          	mv	a1,s5
   11174:	000b0513          	mv	a0,s6
   11178:	704050ef          	jal	1687c <__sprint_r>
   1117c:	c8051e63          	bnez	a0,10618 <_vfprintf_r+0x280>
   11180:	09412983          	lw	s3,148(sp)
   11184:	09012903          	lw	s2,144(sp)
   11188:	000c0b93          	mv	s7,s8
   1118c:	f7dff06f          	j	11108 <_vfprintf_r+0xd70>
   11190:	08c10613          	addi	a2,sp,140
   11194:	000a8593          	mv	a1,s5
   11198:	000b0513          	mv	a0,s6
   1119c:	6e0050ef          	jal	1687c <__sprint_r>
   111a0:	84050ae3          	beqz	a0,109f4 <_vfprintf_r+0x65c>
   111a4:	c74ff06f          	j	10618 <_vfprintf_r+0x280>
   111a8:	02012d83          	lw	s11,32(sp)
   111ac:	00100713          	li	a4,1
   111b0:	36e78663          	beq	a5,a4,1151c <_vfprintf_r+0x1184>
   111b4:	00200713          	li	a4,2
   111b8:	04e79863          	bne	a5,a4,11208 <_vfprintf_r+0xe70>
   111bc:	03b12023          	sw	s11,32(sp)
   111c0:	00000b93          	li	s7,0
   111c4:	9d9ff06f          	j	10b9c <_vfprintf_r+0x804>
   111c8:	08c10613          	addi	a2,sp,140
   111cc:	000a8593          	mv	a1,s5
   111d0:	000b0513          	mv	a0,s6
   111d4:	6a8050ef          	jal	1687c <__sprint_r>
   111d8:	c4051063          	bnez	a0,10618 <_vfprintf_r+0x280>
   111dc:	09412783          	lw	a5,148(sp)
   111e0:	000c0313          	mv	t1,s8
   111e4:	e14ff06f          	j	107f8 <_vfprintf_r+0x460>
   111e8:	08c10613          	addi	a2,sp,140
   111ec:	000a8593          	mv	a1,s5
   111f0:	000b0513          	mv	a0,s6
   111f4:	688050ef          	jal	1687c <__sprint_r>
   111f8:	c2051063          	bnez	a0,10618 <_vfprintf_r+0x280>
   111fc:	09412783          	lw	a5,148(sp)
   11200:	000c0313          	mv	t1,s8
   11204:	e2cff06f          	j	10830 <_vfprintf_r+0x498>
   11208:	03b12023          	sw	s11,32(sp)
   1120c:	00000b93          	li	s7,0
   11210:	000c0713          	mv	a4,s8
   11214:	0080006f          	j	1121c <_vfprintf_r+0xe84>
   11218:	00040713          	mv	a4,s0
   1121c:	007bf793          	andi	a5,s7,7
   11220:	03078793          	addi	a5,a5,48
   11224:	fef70fa3          	sb	a5,-1(a4)
   11228:	003bdb93          	srli	s7,s7,0x3
   1122c:	fff70413          	addi	s0,a4,-1
   11230:	fe0b94e3          	bnez	s7,11218 <_vfprintf_r+0xe80>
   11234:	02012683          	lw	a3,32(sp)
   11238:	0016f693          	andi	a3,a3,1
   1123c:	980682e3          	beqz	a3,10bc0 <_vfprintf_r+0x828>
   11240:	03000693          	li	a3,48
   11244:	96d78ee3          	beq	a5,a3,10bc0 <_vfprintf_r+0x828>
   11248:	ffe70713          	addi	a4,a4,-2
   1124c:	fed40fa3          	sb	a3,-1(s0)
   11250:	40ec0bb3          	sub	s7,s8,a4
   11254:	00070413          	mv	s0,a4
   11258:	88dff06f          	j	10ae4 <_vfprintf_r+0x74c>
   1125c:	03012783          	lw	a5,48(sp)
   11260:	0007ab83          	lw	s7,0(a5)
   11264:	00478793          	addi	a5,a5,4
   11268:	02f12823          	sw	a5,48(sp)
   1126c:	905ff06f          	j	10b70 <_vfprintf_r+0x7d8>
   11270:	03012783          	lw	a5,48(sp)
   11274:	0007ab83          	lw	s7,0(a5)
   11278:	00478793          	addi	a5,a5,4
   1127c:	02f12823          	sw	a5,48(sp)
   11280:	a95ff06f          	j	10d14 <_vfprintf_r+0x97c>
   11284:	03012703          	lw	a4,48(sp)
   11288:	00072b83          	lw	s7,0(a4)
   1128c:	00470713          	addi	a4,a4,4
   11290:	00100793          	li	a5,1
   11294:	02e12823          	sw	a4,48(sp)
   11298:	811ff06f          	j	10aa8 <_vfprintf_r+0x710>
   1129c:	03012703          	lw	a4,48(sp)
   112a0:	00072b83          	lw	s7,0(a4)
   112a4:	00470713          	addi	a4,a4,4
   112a8:	00000793          	li	a5,0
   112ac:	02e12823          	sw	a4,48(sp)
   112b0:	ff8ff06f          	j	10aa8 <_vfprintf_r+0x710>
   112b4:	07412683          	lw	a3,116(sp)
   112b8:	b4d05ee3          	blez	a3,10e14 <_vfprintf_r+0xa7c>
   112bc:	04012703          	lw	a4,64(sp)
   112c0:	04412683          	lw	a3,68(sp)
   112c4:	00070913          	mv	s2,a4
   112c8:	00e6d463          	ble	a4,a3,112d0 <_vfprintf_r+0xf38>
   112cc:	00068913          	mv	s2,a3
   112d0:	03205663          	blez	s2,112fc <_vfprintf_r+0xf64>
   112d4:	09012703          	lw	a4,144(sp)
   112d8:	012787b3          	add	a5,a5,s2
   112dc:	00832023          	sw	s0,0(t1)
   112e0:	00170713          	addi	a4,a4,1
   112e4:	01232223          	sw	s2,4(t1)
   112e8:	08f12a23          	sw	a5,148(sp)
   112ec:	08e12823          	sw	a4,144(sp)
   112f0:	00700693          	li	a3,7
   112f4:	00830313          	addi	t1,t1,8
   112f8:	64e6c663          	blt	a3,a4,11944 <_vfprintf_r+0x15ac>
   112fc:	6e094263          	bltz	s2,119e0 <_vfprintf_r+0x1648>
   11300:	04012703          	lw	a4,64(sp)
   11304:	41270933          	sub	s2,a4,s2
   11308:	27205663          	blez	s2,11574 <_vfprintf_r+0x11dc>
   1130c:	01000b93          	li	s7,16
   11310:	09012703          	lw	a4,144(sp)
   11314:	232bd063          	ble	s2,s7,11534 <_vfprintf_r+0x119c>
   11318:	00700d13          	li	s10,7
   1131c:	00c0006f          	j	11328 <_vfprintf_r+0xf90>
   11320:	ff090913          	addi	s2,s2,-16
   11324:	212bd863          	ble	s2,s7,11534 <_vfprintf_r+0x119c>
   11328:	01078793          	addi	a5,a5,16
   1132c:	00170713          	addi	a4,a4,1
   11330:	00932023          	sw	s1,0(t1)
   11334:	01732223          	sw	s7,4(t1)
   11338:	08f12a23          	sw	a5,148(sp)
   1133c:	08e12823          	sw	a4,144(sp)
   11340:	00830313          	addi	t1,t1,8
   11344:	fced5ee3          	ble	a4,s10,11320 <_vfprintf_r+0xf88>
   11348:	08c10613          	addi	a2,sp,140
   1134c:	000a8593          	mv	a1,s5
   11350:	000b0513          	mv	a0,s6
   11354:	528050ef          	jal	1687c <__sprint_r>
   11358:	ac051063          	bnez	a0,10618 <_vfprintf_r+0x280>
   1135c:	09412783          	lw	a5,148(sp)
   11360:	09012703          	lw	a4,144(sp)
   11364:	000c0313          	mv	t1,s8
   11368:	fb9ff06f          	j	11320 <_vfprintf_r+0xf88>
   1136c:	00900793          	li	a5,9
   11370:	000c0413          	mv	s0,s8
   11374:	00a00a13          	li	s4,10
   11378:	00030d13          	mv	s10,t1
   1137c:	00060d93          	mv	s11,a2
   11380:	1977fc63          	bleu	s7,a5,11518 <_vfprintf_r+0x1180>
   11384:	000a0593          	mv	a1,s4
   11388:	000b8513          	mv	a0,s7
   1138c:	04c090ef          	jal	1a3d8 <__umodsi3>
   11390:	03050513          	addi	a0,a0,48
   11394:	fff40413          	addi	s0,s0,-1
   11398:	00a40023          	sb	a0,0(s0)
   1139c:	000a0593          	mv	a1,s4
   113a0:	000b8513          	mv	a0,s7
   113a4:	7ed080ef          	jal	1a390 <__udivsi3>
   113a8:	00050b93          	mv	s7,a0
   113ac:	fc051ce3          	bnez	a0,11384 <_vfprintf_r+0xfec>
   113b0:	000d0313          	mv	t1,s10
   113b4:	000d8613          	mv	a2,s11
   113b8:	408c0bb3          	sub	s7,s8,s0
   113bc:	f28ff06f          	j	10ae4 <_vfprintf_r+0x74c>
   113c0:	00000b93          	li	s7,0
   113c4:	000c0413          	mv	s0,s8
   113c8:	f1cff06f          	j	10ae4 <_vfprintf_r+0x74c>
   113cc:	08c10613          	addi	a2,sp,140
   113d0:	000a8593          	mv	a1,s5
   113d4:	000b0513          	mv	a0,s6
   113d8:	4a4050ef          	jal	1687c <__sprint_r>
   113dc:	a2051e63          	bnez	a0,10618 <_vfprintf_r+0x280>
   113e0:	06f14603          	lbu	a2,111(sp)
   113e4:	09412783          	lw	a5,148(sp)
   113e8:	000c0313          	mv	t1,s8
   113ec:	bd8ff06f          	j	107c4 <_vfprintf_r+0x42c>
   113f0:	fff78413          	addi	s0,a5,-1
   113f4:	d0805ae3          	blez	s0,11108 <_vfprintf_r+0xd70>
   113f8:	01000d13          	li	s10,16
   113fc:	2e8d5463          	ble	s0,s10,116e4 <_vfprintf_r+0x134c>
   11400:	00700d93          	li	s11,7
   11404:	00c0006f          	j	11410 <_vfprintf_r+0x1078>
   11408:	ff040413          	addi	s0,s0,-16
   1140c:	2c8d5c63          	ble	s0,s10,116e4 <_vfprintf_r+0x134c>
   11410:	01098993          	addi	s3,s3,16
   11414:	00190913          	addi	s2,s2,1
   11418:	009ba023          	sw	s1,0(s7)
   1141c:	01aba223          	sw	s10,4(s7)
   11420:	09312a23          	sw	s3,148(sp)
   11424:	09212823          	sw	s2,144(sp)
   11428:	008b8b93          	addi	s7,s7,8
   1142c:	fd2ddee3          	ble	s2,s11,11408 <_vfprintf_r+0x1070>
   11430:	08c10613          	addi	a2,sp,140
   11434:	000a8593          	mv	a1,s5
   11438:	000b0513          	mv	a0,s6
   1143c:	440050ef          	jal	1687c <__sprint_r>
   11440:	9c051c63          	bnez	a0,10618 <_vfprintf_r+0x280>
   11444:	09412983          	lw	s3,148(sp)
   11448:	09012903          	lw	s2,144(sp)
   1144c:	000c0b93          	mv	s7,s8
   11450:	fb9ff06f          	j	11408 <_vfprintf_r+0x1070>
   11454:	05412783          	lw	a5,84(sp)
   11458:	05812683          	lw	a3,88(sp)
   1145c:	09012703          	lw	a4,144(sp)
   11460:	00f32023          	sw	a5,0(t1)
   11464:	09412783          	lw	a5,148(sp)
   11468:	00170713          	addi	a4,a4,1
   1146c:	00d32223          	sw	a3,4(t1)
   11470:	00f687b3          	add	a5,a3,a5
   11474:	08f12a23          	sw	a5,148(sp)
   11478:	08e12823          	sw	a4,144(sp)
   1147c:	00700693          	li	a3,7
   11480:	00830313          	addi	t1,t1,8
   11484:	50e6ca63          	blt	a3,a4,11998 <_vfprintf_r+0x1600>
   11488:	04412703          	lw	a4,68(sp)
   1148c:	fff70413          	addi	s0,a4,-1
   11490:	c8805663          	blez	s0,1091c <_vfprintf_r+0x584>
   11494:	01000913          	li	s2,16
   11498:	09012703          	lw	a4,144(sp)
   1149c:	04895c63          	ble	s0,s2,114f4 <_vfprintf_r+0x115c>
   114a0:	00700b93          	li	s7,7
   114a4:	00c0006f          	j	114b0 <_vfprintf_r+0x1118>
   114a8:	ff040413          	addi	s0,s0,-16
   114ac:	04895463          	ble	s0,s2,114f4 <_vfprintf_r+0x115c>
   114b0:	01078793          	addi	a5,a5,16
   114b4:	00170713          	addi	a4,a4,1
   114b8:	00932023          	sw	s1,0(t1)
   114bc:	01232223          	sw	s2,4(t1)
   114c0:	08f12a23          	sw	a5,148(sp)
   114c4:	08e12823          	sw	a4,144(sp)
   114c8:	00830313          	addi	t1,t1,8
   114cc:	fcebdee3          	ble	a4,s7,114a8 <_vfprintf_r+0x1110>
   114d0:	08c10613          	addi	a2,sp,140
   114d4:	000a8593          	mv	a1,s5
   114d8:	000b0513          	mv	a0,s6
   114dc:	3a0050ef          	jal	1687c <__sprint_r>
   114e0:	92051c63          	bnez	a0,10618 <_vfprintf_r+0x280>
   114e4:	09412783          	lw	a5,148(sp)
   114e8:	09012703          	lw	a4,144(sp)
   114ec:	000c0313          	mv	t1,s8
   114f0:	fb9ff06f          	j	114a8 <_vfprintf_r+0x1110>
   114f4:	00932023          	sw	s1,0(t1)
   114f8:	00832223          	sw	s0,4(t1)
   114fc:	008787b3          	add	a5,a5,s0
   11500:	00170713          	addi	a4,a4,1
   11504:	08f12a23          	sw	a5,148(sp)
   11508:	08e12823          	sw	a4,144(sp)
   1150c:	00700693          	li	a3,7
   11510:	c0e6d463          	ble	a4,a3,10918 <_vfprintf_r+0x580>
   11514:	9e9ff06f          	j	10efc <_vfprintf_r+0xb64>
   11518:	02012d83          	lw	s11,32(sp)
   1151c:	030b8b93          	addi	s7,s7,48
   11520:	0b710fa3          	sb	s7,191(sp)
   11524:	03b12023          	sw	s11,32(sp)
   11528:	00100b93          	li	s7,1
   1152c:	0bf10413          	addi	s0,sp,191
   11530:	db4ff06f          	j	10ae4 <_vfprintf_r+0x74c>
   11534:	012787b3          	add	a5,a5,s2
   11538:	00170713          	addi	a4,a4,1
   1153c:	00932023          	sw	s1,0(t1)
   11540:	01232223          	sw	s2,4(t1)
   11544:	08f12a23          	sw	a5,148(sp)
   11548:	08e12823          	sw	a4,144(sp)
   1154c:	00700693          	li	a3,7
   11550:	00830313          	addi	t1,t1,8
   11554:	02e6d063          	ble	a4,a3,11574 <_vfprintf_r+0x11dc>
   11558:	08c10613          	addi	a2,sp,140
   1155c:	000a8593          	mv	a1,s5
   11560:	000b0513          	mv	a0,s6
   11564:	318050ef          	jal	1687c <__sprint_r>
   11568:	8a051863          	bnez	a0,10618 <_vfprintf_r+0x280>
   1156c:	09412783          	lw	a5,148(sp)
   11570:	000c0313          	mv	t1,s8
   11574:	07412703          	lw	a4,116(sp)
   11578:	04412683          	lw	a3,68(sp)
   1157c:	0cd74663          	blt	a4,a3,11648 <_vfprintf_r+0x12b0>
   11580:	02012683          	lw	a3,32(sp)
   11584:	0016f693          	andi	a3,a3,1
   11588:	0c069063          	bnez	a3,11648 <_vfprintf_r+0x12b0>
   1158c:	04412683          	lw	a3,68(sp)
   11590:	04012603          	lw	a2,64(sp)
   11594:	40e68733          	sub	a4,a3,a4
   11598:	40c68933          	sub	s2,a3,a2
   1159c:	01275463          	ble	s2,a4,115a4 <_vfprintf_r+0x120c>
   115a0:	00070913          	mv	s2,a4
   115a4:	03205a63          	blez	s2,115d8 <_vfprintf_r+0x1240>
   115a8:	09012603          	lw	a2,144(sp)
   115ac:	04012683          	lw	a3,64(sp)
   115b0:	012787b3          	add	a5,a5,s2
   115b4:	00160613          	addi	a2,a2,1
   115b8:	00d406b3          	add	a3,s0,a3
   115bc:	00d32023          	sw	a3,0(t1)
   115c0:	01232223          	sw	s2,4(t1)
   115c4:	08f12a23          	sw	a5,148(sp)
   115c8:	08c12823          	sw	a2,144(sp)
   115cc:	00700693          	li	a3,7
   115d0:	00830313          	addi	t1,t1,8
   115d4:	38c6ca63          	blt	a3,a2,11968 <_vfprintf_r+0x15d0>
   115d8:	40094863          	bltz	s2,119e8 <_vfprintf_r+0x1650>
   115dc:	41270433          	sub	s0,a4,s2
   115e0:	b2805e63          	blez	s0,1091c <_vfprintf_r+0x584>
   115e4:	01000913          	li	s2,16
   115e8:	09012703          	lw	a4,144(sp)
   115ec:	f08954e3          	ble	s0,s2,114f4 <_vfprintf_r+0x115c>
   115f0:	00700b93          	li	s7,7
   115f4:	00c0006f          	j	11600 <_vfprintf_r+0x1268>
   115f8:	ff040413          	addi	s0,s0,-16
   115fc:	ee895ce3          	ble	s0,s2,114f4 <_vfprintf_r+0x115c>
   11600:	01078793          	addi	a5,a5,16
   11604:	00170713          	addi	a4,a4,1
   11608:	00932023          	sw	s1,0(t1)
   1160c:	01232223          	sw	s2,4(t1)
   11610:	08f12a23          	sw	a5,148(sp)
   11614:	08e12823          	sw	a4,144(sp)
   11618:	00830313          	addi	t1,t1,8
   1161c:	fcebdee3          	ble	a4,s7,115f8 <_vfprintf_r+0x1260>
   11620:	08c10613          	addi	a2,sp,140
   11624:	000a8593          	mv	a1,s5
   11628:	000b0513          	mv	a0,s6
   1162c:	250050ef          	jal	1687c <__sprint_r>
   11630:	00050463          	beqz	a0,11638 <_vfprintf_r+0x12a0>
   11634:	fe5fe06f          	j	10618 <_vfprintf_r+0x280>
   11638:	09412783          	lw	a5,148(sp)
   1163c:	09012703          	lw	a4,144(sp)
   11640:	000c0313          	mv	t1,s8
   11644:	fb5ff06f          	j	115f8 <_vfprintf_r+0x1260>
   11648:	05412683          	lw	a3,84(sp)
   1164c:	05812603          	lw	a2,88(sp)
   11650:	00830313          	addi	t1,t1,8
   11654:	fed32c23          	sw	a3,-8(t1)
   11658:	09012683          	lw	a3,144(sp)
   1165c:	00c787b3          	add	a5,a5,a2
   11660:	fec32e23          	sw	a2,-4(t1)
   11664:	00168693          	addi	a3,a3,1
   11668:	08f12a23          	sw	a5,148(sp)
   1166c:	08d12823          	sw	a3,144(sp)
   11670:	00700613          	li	a2,7
   11674:	f0d65ce3          	ble	a3,a2,1158c <_vfprintf_r+0x11f4>
   11678:	08c10613          	addi	a2,sp,140
   1167c:	000a8593          	mv	a1,s5
   11680:	000b0513          	mv	a0,s6
   11684:	1f8050ef          	jal	1687c <__sprint_r>
   11688:	00050463          	beqz	a0,11690 <_vfprintf_r+0x12f8>
   1168c:	f8dfe06f          	j	10618 <_vfprintf_r+0x280>
   11690:	07412703          	lw	a4,116(sp)
   11694:	09412783          	lw	a5,148(sp)
   11698:	000c0313          	mv	t1,s8
   1169c:	ef1ff06f          	j	1158c <_vfprintf_r+0x11f4>
   116a0:	03012703          	lw	a4,48(sp)
   116a4:	00072783          	lw	a5,0(a4)
   116a8:	00470713          	addi	a4,a4,4
   116ac:	02e12823          	sw	a4,48(sp)
   116b0:	02812703          	lw	a4,40(sp)
   116b4:	00e7a023          	sw	a4,0(a5)
   116b8:	df1fe06f          	j	104a8 <_vfprintf_r+0x110>
   116bc:	08c10613          	addi	a2,sp,140
   116c0:	000a8593          	mv	a1,s5
   116c4:	000b0513          	mv	a0,s6
   116c8:	1b4050ef          	jal	1687c <__sprint_r>
   116cc:	00050463          	beqz	a0,116d4 <_vfprintf_r+0x133c>
   116d0:	f49fe06f          	j	10618 <_vfprintf_r+0x280>
   116d4:	09412783          	lw	a5,148(sp)
   116d8:	09012903          	lw	s2,144(sp)
   116dc:	000c0313          	mv	t1,s8
   116e0:	9b5ff06f          	j	11094 <_vfprintf_r+0xcfc>
   116e4:	008989b3          	add	s3,s3,s0
   116e8:	00190913          	addi	s2,s2,1
   116ec:	009ba023          	sw	s1,0(s7)
   116f0:	008ba223          	sw	s0,4(s7)
   116f4:	09312a23          	sw	s3,148(sp)
   116f8:	09212823          	sw	s2,144(sp)
   116fc:	00700713          	li	a4,7
   11700:	a12752e3          	ble	s2,a4,11104 <_vfprintf_r+0xd6c>
   11704:	a69ff06f          	j	1116c <_vfprintf_r+0xdd4>
   11708:	08c10613          	addi	a2,sp,140
   1170c:	000a8593          	mv	a1,s5
   11710:	000b0513          	mv	a0,s6
   11714:	168050ef          	jal	1687c <__sprint_r>
   11718:	00050463          	beqz	a0,11720 <_vfprintf_r+0x1388>
   1171c:	efdfe06f          	j	10618 <_vfprintf_r+0x280>
   11720:	09412983          	lw	s3,148(sp)
   11724:	09012903          	lw	s2,144(sp)
   11728:	000c0b93          	mv	s7,s8
   1172c:	995ff06f          	j	110c0 <_vfprintf_r+0xd28>
   11730:	02d00793          	li	a5,45
   11734:	06f107a3          	sb	a5,111(sp)
   11738:	41700bb3          	neg	s7,s7
   1173c:	02d00613          	li	a2,45
   11740:	00100793          	li	a5,1
   11744:	b6cff06f          	j	10ab0 <_vfprintf_r+0x718>
   11748:	04812503          	lw	a0,72(sp)
   1174c:	04c12583          	lw	a1,76(sp)
   11750:	02612023          	sw	t1,32(sp)
   11754:	44d040ef          	jal	163a0 <__fpclassifyd>
   11758:	04a12023          	sw	a0,64(sp)
   1175c:	02012303          	lw	t1,32(sp)
   11760:	1a050263          	beqz	a0,11904 <_vfprintf_r+0x156c>
   11764:	fff00793          	li	a5,-1
   11768:	fdf97d13          	andi	s10,s2,-33
   1176c:	3ef98263          	beq	s3,a5,11b50 <_vfprintf_r+0x17b8>
   11770:	04700793          	li	a5,71
   11774:	3cfd0863          	beq	s10,a5,11b44 <_vfprintf_r+0x17ac>
   11778:	04c12a03          	lw	s4,76(sp)
   1177c:	100de793          	ori	a5,s11,256
   11780:	02f12023          	sw	a5,32(sp)
   11784:	04812b83          	lw	s7,72(sp)
   11788:	460a4863          	bltz	s4,11bf8 <_vfprintf_r+0x1860>
   1178c:	02012c23          	sw	zero,56(sp)
   11790:	06600793          	li	a5,102
   11794:	40f90863          	beq	s2,a5,11ba4 <_vfprintf_r+0x180c>
   11798:	04600793          	li	a5,70
   1179c:	56f90c63          	beq	s2,a5,11d14 <_vfprintf_r+0x197c>
   117a0:	fbbd0f13          	addi	t5,s10,-69
   117a4:	001f3f13          	seqz	t5,t5
   117a8:	01e98f33          	add	t5,s3,t5
   117ac:	08410793          	addi	a5,sp,132
   117b0:	00f12023          	sw	a5,0(sp)
   117b4:	000b8613          	mv	a2,s7
   117b8:	000f0793          	mv	a5,t5
   117bc:	000a0693          	mv	a3,s4
   117c0:	07810893          	addi	a7,sp,120
   117c4:	07410813          	addi	a6,sp,116
   117c8:	00200713          	li	a4,2
   117cc:	000b0513          	mv	a0,s6
   117d0:	02612e23          	sw	t1,60(sp)
   117d4:	03e12223          	sw	t5,36(sp)
   117d8:	5a9000ef          	jal	12580 <_dtoa_r>
   117dc:	06700793          	li	a5,103
   117e0:	00050413          	mv	s0,a0
   117e4:	02412f03          	lw	t5,36(sp)
   117e8:	03c12303          	lw	t1,60(sp)
   117ec:	2cf90e63          	beq	s2,a5,11ac8 <_vfprintf_r+0x1730>
   117f0:	04700793          	li	a5,71
   117f4:	01e50833          	add	a6,a0,t5
   117f8:	5af90463          	beq	s2,a5,11da0 <_vfprintf_r+0x1a08>
   117fc:	000b8513          	mv	a0,s7
   11800:	000a0593          	mv	a1,s4
   11804:	00000613          	li	a2,0
   11808:	00000693          	li	a3,0
   1180c:	02612e23          	sw	t1,60(sp)
   11810:	03012223          	sw	a6,36(sp)
   11814:	7a8080ef          	jal	19fbc <__eqdf2>
   11818:	02412803          	lw	a6,36(sp)
   1181c:	03c12303          	lw	t1,60(sp)
   11820:	00080793          	mv	a5,a6
   11824:	02050263          	beqz	a0,11848 <_vfprintf_r+0x14b0>
   11828:	08412783          	lw	a5,132(sp)
   1182c:	0107fe63          	bleu	a6,a5,11848 <_vfprintf_r+0x14b0>
   11830:	03000693          	li	a3,48
   11834:	00178713          	addi	a4,a5,1
   11838:	08e12223          	sw	a4,132(sp)
   1183c:	00d78023          	sb	a3,0(a5)
   11840:	08412783          	lw	a5,132(sp)
   11844:	ff07e8e3          	bltu	a5,a6,11834 <_vfprintf_r+0x149c>
   11848:	408787b3          	sub	a5,a5,s0
   1184c:	04700713          	li	a4,71
   11850:	04f12223          	sw	a5,68(sp)
   11854:	1eed0663          	beq	s10,a4,11a40 <_vfprintf_r+0x16a8>
   11858:	06500793          	li	a5,101
   1185c:	5527de63          	ble	s2,a5,11db8 <_vfprintf_r+0x1a20>
   11860:	06600793          	li	a5,102
   11864:	3ef90663          	beq	s2,a5,11c50 <_vfprintf_r+0x18b8>
   11868:	07412783          	lw	a5,116(sp)
   1186c:	04f12023          	sw	a5,64(sp)
   11870:	04412703          	lw	a4,68(sp)
   11874:	04012783          	lw	a5,64(sp)
   11878:	38e7cc63          	blt	a5,a4,11c10 <_vfprintf_r+0x1878>
   1187c:	001dfe93          	andi	t4,s11,1
   11880:	3a0e9a63          	bnez	t4,11c34 <_vfprintf_r+0x189c>
   11884:	00078a13          	mv	s4,a5
   11888:	5e07c263          	bltz	a5,11e6c <_vfprintf_r+0x1ad4>
   1188c:	04012b83          	lw	s7,64(sp)
   11890:	06700913          	li	s2,103
   11894:	03812783          	lw	a5,56(sp)
   11898:	a6079263          	bnez	a5,10afc <_vfprintf_r+0x764>
   1189c:	06f14603          	lbu	a2,111(sp)
   118a0:	00000993          	li	s3,0
   118a4:	00061463          	bnez	a2,118ac <_vfprintf_r+0x1514>
   118a8:	e4dfe06f          	j	106f4 <_vfprintf_r+0x35c>
   118ac:	a60ff06f          	j	10b0c <_vfprintf_r+0x774>
   118b0:	03012783          	lw	a5,48(sp)
   118b4:	00778793          	addi	a5,a5,7
   118b8:	ff87f793          	andi	a5,a5,-8
   118bc:	0007a703          	lw	a4,0(a5)
   118c0:	00878793          	addi	a5,a5,8
   118c4:	04e12423          	sw	a4,72(sp)
   118c8:	ffc7a703          	lw	a4,-4(a5)
   118cc:	02f12823          	sw	a5,48(sp)
   118d0:	04e12623          	sw	a4,76(sp)
   118d4:	b2cff06f          	j	10c00 <_vfprintf_r+0x868>
   118d8:	08c10613          	addi	a2,sp,140
   118dc:	000a8593          	mv	a1,s5
   118e0:	000b0513          	mv	a0,s6
   118e4:	799040ef          	jal	1687c <__sprint_r>
   118e8:	00050463          	beqz	a0,118f0 <_vfprintf_r+0x1558>
   118ec:	d2dfe06f          	j	10618 <_vfprintf_r+0x280>
   118f0:	000c0313          	mv	t1,s8
   118f4:	e8cff06f          	j	10f80 <_vfprintf_r+0xbe8>
   118f8:	fff00793          	li	a5,-1
   118fc:	02f12423          	sw	a5,40(sp)
   11900:	d29fe06f          	j	10628 <_vfprintf_r+0x290>
   11904:	04700793          	li	a5,71
   11908:	1127ce63          	blt	a5,s2,11a24 <_vfprintf_r+0x168c>
   1190c:	0001b437          	lui	s0,0x1b
   11910:	61440413          	addi	s0,s0,1556 # 1b614 <__clz_tab+0x10c>
   11914:	06f14603          	lbu	a2,111(sp)
   11918:	f7fdf793          	andi	a5,s11,-129
   1191c:	00300a13          	li	s4,3
   11920:	02f12023          	sw	a5,32(sp)
   11924:	00000993          	li	s3,0
   11928:	000a0b93          	mv	s7,s4
   1192c:	00061463          	bnez	a2,11934 <_vfprintf_r+0x159c>
   11930:	dc5fe06f          	j	106f4 <_vfprintf_r+0x35c>
   11934:	9d8ff06f          	j	10b0c <_vfprintf_r+0x774>
   11938:	0001b437          	lui	s0,0x1b
   1193c:	60c40413          	addi	s0,s0,1548 # 1b60c <__clz_tab+0x104>
   11940:	b14ff06f          	j	10c54 <_vfprintf_r+0x8bc>
   11944:	08c10613          	addi	a2,sp,140
   11948:	000a8593          	mv	a1,s5
   1194c:	000b0513          	mv	a0,s6
   11950:	72d040ef          	jal	1687c <__sprint_r>
   11954:	00050463          	beqz	a0,1195c <_vfprintf_r+0x15c4>
   11958:	cc1fe06f          	j	10618 <_vfprintf_r+0x280>
   1195c:	09412783          	lw	a5,148(sp)
   11960:	000c0313          	mv	t1,s8
   11964:	999ff06f          	j	112fc <_vfprintf_r+0xf64>
   11968:	08c10613          	addi	a2,sp,140
   1196c:	000a8593          	mv	a1,s5
   11970:	000b0513          	mv	a0,s6
   11974:	709040ef          	jal	1687c <__sprint_r>
   11978:	00050463          	beqz	a0,11980 <_vfprintf_r+0x15e8>
   1197c:	c9dfe06f          	j	10618 <_vfprintf_r+0x280>
   11980:	07412703          	lw	a4,116(sp)
   11984:	04412683          	lw	a3,68(sp)
   11988:	09412783          	lw	a5,148(sp)
   1198c:	000c0313          	mv	t1,s8
   11990:	40e68733          	sub	a4,a3,a4
   11994:	c45ff06f          	j	115d8 <_vfprintf_r+0x1240>
   11998:	08c10613          	addi	a2,sp,140
   1199c:	000a8593          	mv	a1,s5
   119a0:	000b0513          	mv	a0,s6
   119a4:	6d9040ef          	jal	1687c <__sprint_r>
   119a8:	00050463          	beqz	a0,119b0 <_vfprintf_r+0x1618>
   119ac:	c6dfe06f          	j	10618 <_vfprintf_r+0x280>
   119b0:	09412783          	lw	a5,148(sp)
   119b4:	000c0313          	mv	t1,s8
   119b8:	ad1ff06f          	j	11488 <_vfprintf_r+0x10f0>
   119bc:	00040513          	mv	a0,s0
   119c0:	535040ef          	jal	166f4 <strlen>
   119c4:	00050b93          	mv	s7,a0
   119c8:	00050a13          	mv	s4,a0
   119cc:	02012303          	lw	t1,32(sp)
   119d0:	00054463          	bltz	a0,119d8 <_vfprintf_r+0x1640>
   119d4:	d09fe06f          	j	106dc <_vfprintf_r+0x344>
   119d8:	00000a13          	li	s4,0
   119dc:	d01fe06f          	j	106dc <_vfprintf_r+0x344>
   119e0:	00000913          	li	s2,0
   119e4:	91dff06f          	j	11300 <_vfprintf_r+0xf68>
   119e8:	00000913          	li	s2,0
   119ec:	bf1ff06f          	j	115dc <_vfprintf_r+0x1244>
   119f0:	00600793          	li	a5,6
   119f4:	00098a13          	mv	s4,s3
   119f8:	0137f463          	bleu	s3,a5,11a00 <_vfprintf_r+0x1668>
   119fc:	00078a13          	mv	s4,a5
   11a00:	0001b437          	lui	s0,0x1b
   11a04:	03a12823          	sw	s10,48(sp)
   11a08:	000a0b93          	mv	s7,s4
   11a0c:	03b12023          	sw	s11,32(sp)
   11a10:	00000613          	li	a2,0
   11a14:	00000993          	li	s3,0
   11a18:	04012023          	sw	zero,64(sp)
   11a1c:	64440413          	addi	s0,s0,1604 # 1b644 <__clz_tab+0x13c>
   11a20:	cd5fe06f          	j	106f4 <_vfprintf_r+0x35c>
   11a24:	0001b437          	lui	s0,0x1b
   11a28:	61840413          	addi	s0,s0,1560 # 1b618 <__clz_tab+0x110>
   11a2c:	ee9ff06f          	j	11914 <_vfprintf_r+0x157c>
   11a30:	02d00793          	li	a5,45
   11a34:	06f107a3          	sb	a5,111(sp)
   11a38:	02d00613          	li	a2,45
   11a3c:	a08ff06f          	j	10c44 <_vfprintf_r+0x8ac>
   11a40:	07412783          	lw	a5,116(sp)
   11a44:	00078713          	mv	a4,a5
   11a48:	04f12023          	sw	a5,64(sp)
   11a4c:	ffd00793          	li	a5,-3
   11a50:	00f74463          	blt	a4,a5,11a58 <_vfprintf_r+0x16c0>
   11a54:	e0e9dee3          	ble	a4,s3,11870 <_vfprintf_r+0x14d8>
   11a58:	ffe90913          	addi	s2,s2,-2
   11a5c:	04012783          	lw	a5,64(sp)
   11a60:	07210e23          	sb	s2,124(sp)
   11a64:	fff78d13          	addi	s10,a5,-1
   11a68:	07a12a23          	sw	s10,116(sp)
   11a6c:	3c0d4a63          	bltz	s10,11e40 <_vfprintf_r+0x1aa8>
   11a70:	02b00793          	li	a5,43
   11a74:	06f10ea3          	sb	a5,125(sp)
   11a78:	00900a13          	li	s4,9
   11a7c:	1faa4c63          	blt	s4,s10,11c74 <_vfprintf_r+0x18dc>
   11a80:	03000793          	li	a5,48
   11a84:	030d0d13          	addi	s10,s10,48
   11a88:	06f10f23          	sb	a5,126(sp)
   11a8c:	07a10fa3          	sb	s10,127(sp)
   11a90:	08010793          	addi	a5,sp,128
   11a94:	07c10713          	addi	a4,sp,124
   11a98:	04412683          	lw	a3,68(sp)
   11a9c:	40e787b3          	sub	a5,a5,a4
   11aa0:	00078713          	mv	a4,a5
   11aa4:	04f12e23          	sw	a5,92(sp)
   11aa8:	00100793          	li	a5,1
   11aac:	00e68bb3          	add	s7,a3,a4
   11ab0:	34d7d863          	ble	a3,a5,11e00 <_vfprintf_r+0x1a68>
   11ab4:	001b8b93          	addi	s7,s7,1
   11ab8:	000b8a13          	mv	s4,s7
   11abc:	320bce63          	bltz	s7,11df8 <_vfprintf_r+0x1a60>
   11ac0:	04012023          	sw	zero,64(sp)
   11ac4:	dd1ff06f          	j	11894 <_vfprintf_r+0x14fc>
   11ac8:	001df793          	andi	a5,s11,1
   11acc:	01e50833          	add	a6,a0,t5
   11ad0:	d20796e3          	bnez	a5,117fc <_vfprintf_r+0x1464>
   11ad4:	08412783          	lw	a5,132(sp)
   11ad8:	d71ff06f          	j	11848 <_vfprintf_r+0x14b0>
   11adc:	ff000613          	li	a2,-16
   11ae0:	40d00933          	neg	s2,a3
   11ae4:	06c6da63          	ble	a2,a3,11b58 <_vfprintf_r+0x17c0>
   11ae8:	01000b93          	li	s7,16
   11aec:	00700d13          	li	s10,7
   11af0:	00c0006f          	j	11afc <_vfprintf_r+0x1764>
   11af4:	ff090913          	addi	s2,s2,-16
   11af8:	072bd063          	ble	s2,s7,11b58 <_vfprintf_r+0x17c0>
   11afc:	01078793          	addi	a5,a5,16
   11b00:	00170713          	addi	a4,a4,1
   11b04:	00932023          	sw	s1,0(t1)
   11b08:	01732223          	sw	s7,4(t1)
   11b0c:	08f12a23          	sw	a5,148(sp)
   11b10:	08e12823          	sw	a4,144(sp)
   11b14:	00830313          	addi	t1,t1,8
   11b18:	fced5ee3          	ble	a4,s10,11af4 <_vfprintf_r+0x175c>
   11b1c:	08c10613          	addi	a2,sp,140
   11b20:	000a8593          	mv	a1,s5
   11b24:	000b0513          	mv	a0,s6
   11b28:	555040ef          	jal	1687c <__sprint_r>
   11b2c:	00050463          	beqz	a0,11b34 <_vfprintf_r+0x179c>
   11b30:	ae9fe06f          	j	10618 <_vfprintf_r+0x280>
   11b34:	09412783          	lw	a5,148(sp)
   11b38:	09012703          	lw	a4,144(sp)
   11b3c:	000c0313          	mv	t1,s8
   11b40:	fb5ff06f          	j	11af4 <_vfprintf_r+0x175c>
   11b44:	c2099ae3          	bnez	s3,11778 <_vfprintf_r+0x13e0>
   11b48:	00040993          	mv	s3,s0
   11b4c:	c2dff06f          	j	11778 <_vfprintf_r+0x13e0>
   11b50:	00600993          	li	s3,6
   11b54:	c25ff06f          	j	11778 <_vfprintf_r+0x13e0>
   11b58:	012787b3          	add	a5,a5,s2
   11b5c:	00170713          	addi	a4,a4,1
   11b60:	00932023          	sw	s1,0(t1)
   11b64:	01232223          	sw	s2,4(t1)
   11b68:	08f12a23          	sw	a5,148(sp)
   11b6c:	08e12823          	sw	a4,144(sp)
   11b70:	00700693          	li	a3,7
   11b74:	00830313          	addi	t1,t1,8
   11b78:	b6e6d063          	ble	a4,a3,10ed8 <_vfprintf_r+0xb40>
   11b7c:	08c10613          	addi	a2,sp,140
   11b80:	000a8593          	mv	a1,s5
   11b84:	000b0513          	mv	a0,s6
   11b88:	4f5040ef          	jal	1687c <__sprint_r>
   11b8c:	00050463          	beqz	a0,11b94 <_vfprintf_r+0x17fc>
   11b90:	a89fe06f          	j	10618 <_vfprintf_r+0x280>
   11b94:	09412783          	lw	a5,148(sp)
   11b98:	09012703          	lw	a4,144(sp)
   11b9c:	000c0313          	mv	t1,s8
   11ba0:	b38ff06f          	j	10ed8 <_vfprintf_r+0xb40>
   11ba4:	08410793          	addi	a5,sp,132
   11ba8:	00f12023          	sw	a5,0(sp)
   11bac:	07410813          	addi	a6,sp,116
   11bb0:	000b8613          	mv	a2,s7
   11bb4:	000a0693          	mv	a3,s4
   11bb8:	07810893          	addi	a7,sp,120
   11bbc:	00098793          	mv	a5,s3
   11bc0:	00300713          	li	a4,3
   11bc4:	000b0513          	mv	a0,s6
   11bc8:	02612223          	sw	t1,36(sp)
   11bcc:	1b5000ef          	jal	12580 <_dtoa_r>
   11bd0:	02412303          	lw	t1,36(sp)
   11bd4:	00050413          	mv	s0,a0
   11bd8:	01350833          	add	a6,a0,s3
   11bdc:	00098f13          	mv	t5,s3
   11be0:	00044703          	lbu	a4,0(s0)
   11be4:	03000793          	li	a5,48
   11be8:	16f70a63          	beq	a4,a5,11d5c <_vfprintf_r+0x19c4>
   11bec:	07412f03          	lw	t5,116(sp)
   11bf0:	01e80833          	add	a6,a6,t5
   11bf4:	c09ff06f          	j	117fc <_vfprintf_r+0x1464>
   11bf8:	04c12783          	lw	a5,76(sp)
   11bfc:	80000a37          	lui	s4,0x80000
   11c00:	0147ca33          	xor	s4,a5,s4
   11c04:	02d00793          	li	a5,45
   11c08:	02f12c23          	sw	a5,56(sp)
   11c0c:	b85ff06f          	j	11790 <_vfprintf_r+0x13f8>
   11c10:	04012783          	lw	a5,64(sp)
   11c14:	00100b93          	li	s7,1
   11c18:	20f05e63          	blez	a5,11e34 <_vfprintf_r+0x1a9c>
   11c1c:	04412783          	lw	a5,68(sp)
   11c20:	00fb8bb3          	add	s7,s7,a5
   11c24:	000b8a13          	mv	s4,s7
   11c28:	000bce63          	bltz	s7,11c44 <_vfprintf_r+0x18ac>
   11c2c:	06700913          	li	s2,103
   11c30:	c65ff06f          	j	11894 <_vfprintf_r+0x14fc>
   11c34:	04012783          	lw	a5,64(sp)
   11c38:	00178b93          	addi	s7,a5,1
   11c3c:	000b8a13          	mv	s4,s7
   11c40:	fe0bd6e3          	bgez	s7,11c2c <_vfprintf_r+0x1894>
   11c44:	00000a13          	li	s4,0
   11c48:	06700913          	li	s2,103
   11c4c:	c49ff06f          	j	11894 <_vfprintf_r+0x14fc>
   11c50:	07412783          	lw	a5,116(sp)
   11c54:	04f12023          	sw	a5,64(sp)
   11c58:	18f05063          	blez	a5,11dd8 <_vfprintf_r+0x1a40>
   11c5c:	16099463          	bnez	s3,11dc4 <_vfprintf_r+0x1a2c>
   11c60:	001dfe93          	andi	t4,s11,1
   11c64:	160e9063          	bnez	t4,11dc4 <_vfprintf_r+0x1a2c>
   11c68:	00078a13          	mv	s4,a5
   11c6c:	00078b93          	mv	s7,a5
   11c70:	c25ff06f          	j	11894 <_vfprintf_r+0x14fc>
   11c74:	08b10813          	addi	a6,sp,139
   11c78:	02812e23          	sw	s0,60(sp)
   11c7c:	00a00b93          	li	s7,10
   11c80:	00080413          	mv	s0,a6
   11c84:	00030993          	mv	s3,t1
   11c88:	0080006f          	j	11c90 <_vfprintf_r+0x18f8>
   11c8c:	00060413          	mv	s0,a2
   11c90:	000b8593          	mv	a1,s7
   11c94:	000d0513          	mv	a0,s10
   11c98:	03012223          	sw	a6,36(sp)
   11c9c:	770080ef          	jal	1a40c <__modsi3>
   11ca0:	03050513          	addi	a0,a0,48
   11ca4:	fea40fa3          	sb	a0,-1(s0)
   11ca8:	000b8593          	mv	a1,s7
   11cac:	000d0513          	mv	a0,s10
   11cb0:	6d8080ef          	jal	1a388 <__divsi3>
   11cb4:	00050d13          	mv	s10,a0
   11cb8:	fff40613          	addi	a2,s0,-1
   11cbc:	02412803          	lw	a6,36(sp)
   11cc0:	fcaa46e3          	blt	s4,a0,11c8c <_vfprintf_r+0x18f4>
   11cc4:	03050793          	addi	a5,a0,48
   11cc8:	00098313          	mv	t1,s3
   11ccc:	0ff7f793          	andi	a5,a5,255
   11cd0:	00040993          	mv	s3,s0
   11cd4:	ffe98713          	addi	a4,s3,-2
   11cd8:	fef60fa3          	sb	a5,-1(a2)
   11cdc:	03c12403          	lw	s0,60(sp)
   11ce0:	19077263          	bleu	a6,a4,11e64 <_vfprintf_r+0x1acc>
   11ce4:	07e10693          	addi	a3,sp,126
   11ce8:	0080006f          	j	11cf0 <_vfprintf_r+0x1958>
   11cec:	00074783          	lbu	a5,0(a4)
   11cf0:	00168693          	addi	a3,a3,1
   11cf4:	00170713          	addi	a4,a4,1
   11cf8:	fef68fa3          	sb	a5,-1(a3)
   11cfc:	ff0718e3          	bne	a4,a6,11cec <_vfprintf_r+0x1954>
   11d00:	08c10793          	addi	a5,sp,140
   11d04:	40c787b3          	sub	a5,a5,a2
   11d08:	07e10713          	addi	a4,sp,126
   11d0c:	00f707b3          	add	a5,a4,a5
   11d10:	d85ff06f          	j	11a94 <_vfprintf_r+0x16fc>
   11d14:	08410793          	addi	a5,sp,132
   11d18:	00f12023          	sw	a5,0(sp)
   11d1c:	000b8613          	mv	a2,s7
   11d20:	000a0693          	mv	a3,s4
   11d24:	07810893          	addi	a7,sp,120
   11d28:	07410813          	addi	a6,sp,116
   11d2c:	00098793          	mv	a5,s3
   11d30:	00300713          	li	a4,3
   11d34:	000b0513          	mv	a0,s6
   11d38:	02612223          	sw	t1,36(sp)
   11d3c:	045000ef          	jal	12580 <_dtoa_r>
   11d40:	02412303          	lw	t1,36(sp)
   11d44:	00050413          	mv	s0,a0
   11d48:	00098f13          	mv	t5,s3
   11d4c:	04600793          	li	a5,70
   11d50:	01e40833          	add	a6,s0,t5
   11d54:	e8f906e3          	beq	s2,a5,11be0 <_vfprintf_r+0x1848>
   11d58:	aa5ff06f          	j	117fc <_vfprintf_r+0x1464>
   11d5c:	000b8513          	mv	a0,s7
   11d60:	000a0593          	mv	a1,s4
   11d64:	00000613          	li	a2,0
   11d68:	00000693          	li	a3,0
   11d6c:	04612023          	sw	t1,64(sp)
   11d70:	03012e23          	sw	a6,60(sp)
   11d74:	03e12223          	sw	t5,36(sp)
   11d78:	240080ef          	jal	19fb8 <__nedf2>
   11d7c:	03c12803          	lw	a6,60(sp)
   11d80:	04012303          	lw	t1,64(sp)
   11d84:	e60504e3          	beqz	a0,11bec <_vfprintf_r+0x1854>
   11d88:	02412f03          	lw	t5,36(sp)
   11d8c:	00100793          	li	a5,1
   11d90:	41e78f33          	sub	t5,a5,t5
   11d94:	07e12a23          	sw	t5,116(sp)
   11d98:	01e80833          	add	a6,a6,t5
   11d9c:	a61ff06f          	j	117fc <_vfprintf_r+0x1464>
   11da0:	001df793          	andi	a5,s11,1
   11da4:	fa0794e3          	bnez	a5,11d4c <_vfprintf_r+0x19b4>
   11da8:	08412783          	lw	a5,132(sp)
   11dac:	408787b3          	sub	a5,a5,s0
   11db0:	04f12223          	sw	a5,68(sp)
   11db4:	c92d06e3          	beq	s10,s2,11a40 <_vfprintf_r+0x16a8>
   11db8:	07412783          	lw	a5,116(sp)
   11dbc:	04f12023          	sw	a5,64(sp)
   11dc0:	c9dff06f          	j	11a5c <_vfprintf_r+0x16c4>
   11dc4:	04012783          	lw	a5,64(sp)
   11dc8:	00198e13          	addi	t3,s3,1
   11dcc:	00fe0bb3          	add	s7,t3,a5
   11dd0:	000b8a13          	mv	s4,s7
   11dd4:	ac1ff06f          	j	11894 <_vfprintf_r+0x14fc>
   11dd8:	00099a63          	bnez	s3,11dec <_vfprintf_r+0x1a54>
   11ddc:	00100a13          	li	s4,1
   11de0:	014dfeb3          	and	t4,s11,s4
   11de4:	000a0b93          	mv	s7,s4
   11de8:	aa0e86e3          	beqz	t4,11894 <_vfprintf_r+0x14fc>
   11dec:	00298b93          	addi	s7,s3,2
   11df0:	000b8a13          	mv	s4,s7
   11df4:	aa1ff06f          	j	11894 <_vfprintf_r+0x14fc>
   11df8:	00000a13          	li	s4,0
   11dfc:	cc5ff06f          	j	11ac0 <_vfprintf_r+0x1728>
   11e00:	00fdf7b3          	and	a5,s11,a5
   11e04:	04f12023          	sw	a5,64(sp)
   11e08:	ca0796e3          	bnez	a5,11ab4 <_vfprintf_r+0x171c>
   11e0c:	000b8a13          	mv	s4,s7
   11e10:	a80bd2e3          	bgez	s7,11894 <_vfprintf_r+0x14fc>
   11e14:	00000a13          	li	s4,0
   11e18:	a7dff06f          	j	11894 <_vfprintf_r+0x14fc>
   11e1c:	03012783          	lw	a5,48(sp)
   11e20:	0007a983          	lw	s3,0(a5)
   11e24:	00478793          	addi	a5,a5,4
   11e28:	0209ca63          	bltz	s3,11e5c <_vfprintf_r+0x1ac4>
   11e2c:	02f12823          	sw	a5,48(sp)
   11e30:	f20fe06f          	j	10550 <_vfprintf_r+0x1b8>
   11e34:	00200b93          	li	s7,2
   11e38:	40fb8bb3          	sub	s7,s7,a5
   11e3c:	de1ff06f          	j	11c1c <_vfprintf_r+0x1884>
   11e40:	00100d13          	li	s10,1
   11e44:	40fd0d33          	sub	s10,s10,a5
   11e48:	02d00793          	li	a5,45
   11e4c:	06f10ea3          	sb	a5,125(sp)
   11e50:	c29ff06f          	j	11a78 <_vfprintf_r+0x16e0>
   11e54:	06b107a3          	sb	a1,111(sp)
   11e58:	cf5fe06f          	j	10b4c <_vfprintf_r+0x7b4>
   11e5c:	000f8993          	mv	s3,t6
   11e60:	fcdff06f          	j	11e2c <_vfprintf_r+0x1a94>
   11e64:	07e10793          	addi	a5,sp,126
   11e68:	c2dff06f          	j	11a94 <_vfprintf_r+0x16fc>
   11e6c:	00000a13          	li	s4,0
   11e70:	a1dff06f          	j	1188c <_vfprintf_r+0x14f4>
   11e74:	06b107a3          	sb	a1,111(sp)
   11e78:	d5dfe06f          	j	10bd4 <_vfprintf_r+0x83c>
   11e7c:	06b107a3          	sb	a1,111(sp)
   11e80:	f79fe06f          	j	10df8 <_vfprintf_r+0xa60>
   11e84:	06b107a3          	sb	a1,111(sp)
   11e88:	f29fe06f          	j	10db0 <_vfprintf_r+0xa18>
   11e8c:	06b107a3          	sb	a1,111(sp)
   11e90:	f09fe06f          	j	10d98 <_vfprintf_r+0xa00>
   11e94:	06b107a3          	sb	a1,111(sp)
   11e98:	e51fe06f          	j	10ce8 <_vfprintf_r+0x950>

00011e9c <vfprintf>:
   11e9c:	00060693          	mv	a3,a2
   11ea0:	00058613          	mv	a2,a1
   11ea4:	00050593          	mv	a1,a0
   11ea8:	8081a503          	lw	a0,-2040(gp) # 1d278 <_impure_ptr>
   11eac:	cecfe06f          	j	10398 <_vfprintf_r>

00011eb0 <__sbprintf>:
   11eb0:	00c5d783          	lhu	a5,12(a1)
   11eb4:	0645ae03          	lw	t3,100(a1)
   11eb8:	00e5d303          	lhu	t1,14(a1)
   11ebc:	01c5a883          	lw	a7,28(a1)
   11ec0:	0245a803          	lw	a6,36(a1)
   11ec4:	b8010113          	addi	sp,sp,-1152
   11ec8:	ffd7f793          	andi	a5,a5,-3
   11ecc:	40000713          	li	a4,1024
   11ed0:	46812c23          	sw	s0,1144(sp)
   11ed4:	00f11a23          	sh	a5,20(sp)
   11ed8:	00058413          	mv	s0,a1
   11edc:	07010793          	addi	a5,sp,112
   11ee0:	00810593          	addi	a1,sp,8
   11ee4:	46912a23          	sw	s1,1140(sp)
   11ee8:	47212823          	sw	s2,1136(sp)
   11eec:	46112e23          	sw	ra,1148(sp)
   11ef0:	00050913          	mv	s2,a0
   11ef4:	07c12623          	sw	t3,108(sp)
   11ef8:	00611b23          	sh	t1,22(sp)
   11efc:	03112223          	sw	a7,36(sp)
   11f00:	03012623          	sw	a6,44(sp)
   11f04:	00f12423          	sw	a5,8(sp)
   11f08:	00f12c23          	sw	a5,24(sp)
   11f0c:	00e12823          	sw	a4,16(sp)
   11f10:	00e12e23          	sw	a4,28(sp)
   11f14:	02012023          	sw	zero,32(sp)
   11f18:	c80fe0ef          	jal	10398 <_vfprintf_r>
   11f1c:	00050493          	mv	s1,a0
   11f20:	00054a63          	bltz	a0,11f34 <__sbprintf+0x84>
   11f24:	00810593          	addi	a1,sp,8
   11f28:	00090513          	mv	a0,s2
   11f2c:	591010ef          	jal	13cbc <_fflush_r>
   11f30:	02051c63          	bnez	a0,11f68 <__sbprintf+0xb8>
   11f34:	01415783          	lhu	a5,20(sp)
   11f38:	0407f793          	andi	a5,a5,64
   11f3c:	00078863          	beqz	a5,11f4c <__sbprintf+0x9c>
   11f40:	00c45783          	lhu	a5,12(s0)
   11f44:	0407e793          	ori	a5,a5,64
   11f48:	00f41623          	sh	a5,12(s0)
   11f4c:	47c12083          	lw	ra,1148(sp)
   11f50:	00048513          	mv	a0,s1
   11f54:	47812403          	lw	s0,1144(sp)
   11f58:	47412483          	lw	s1,1140(sp)
   11f5c:	47012903          	lw	s2,1136(sp)
   11f60:	48010113          	addi	sp,sp,1152
   11f64:	00008067          	ret
   11f68:	fff00493          	li	s1,-1
   11f6c:	fc9ff06f          	j	11f34 <__sbprintf+0x84>

00011f70 <__swsetup_r>:
   11f70:	8081a783          	lw	a5,-2040(gp) # 1d278 <_impure_ptr>
   11f74:	ff010113          	addi	sp,sp,-16
   11f78:	00812423          	sw	s0,8(sp)
   11f7c:	00912223          	sw	s1,4(sp)
   11f80:	00112623          	sw	ra,12(sp)
   11f84:	00050493          	mv	s1,a0
   11f88:	00058413          	mv	s0,a1
   11f8c:	00078663          	beqz	a5,11f98 <__swsetup_r+0x28>
   11f90:	0387a703          	lw	a4,56(a5)
   11f94:	0c070c63          	beqz	a4,1206c <__swsetup_r+0xfc>
   11f98:	00c41703          	lh	a4,12(s0)
   11f9c:	01071793          	slli	a5,a4,0x10
   11fa0:	0107d793          	srli	a5,a5,0x10
   11fa4:	0087f693          	andi	a3,a5,8
   11fa8:	04068263          	beqz	a3,11fec <__swsetup_r+0x7c>
   11fac:	01042683          	lw	a3,16(s0)
   11fb0:	06068263          	beqz	a3,12014 <__swsetup_r+0xa4>
   11fb4:	0017f713          	andi	a4,a5,1
   11fb8:	08071063          	bnez	a4,12038 <__swsetup_r+0xc8>
   11fbc:	0027f793          	andi	a5,a5,2
   11fc0:	00000713          	li	a4,0
   11fc4:	00079463          	bnez	a5,11fcc <__swsetup_r+0x5c>
   11fc8:	01442703          	lw	a4,20(s0)
   11fcc:	00e42423          	sw	a4,8(s0)
   11fd0:	00000513          	li	a0,0
   11fd4:	06068e63          	beqz	a3,12050 <__swsetup_r+0xe0>
   11fd8:	00c12083          	lw	ra,12(sp)
   11fdc:	00812403          	lw	s0,8(sp)
   11fe0:	00412483          	lw	s1,4(sp)
   11fe4:	01010113          	addi	sp,sp,16
   11fe8:	00008067          	ret
   11fec:	0107f693          	andi	a3,a5,16
   11ff0:	0a068e63          	beqz	a3,120ac <__swsetup_r+0x13c>
   11ff4:	0047f793          	andi	a5,a5,4
   11ff8:	08079063          	bnez	a5,12078 <__swsetup_r+0x108>
   11ffc:	01042683          	lw	a3,16(s0)
   12000:	00876793          	ori	a5,a4,8
   12004:	00f41623          	sh	a5,12(s0)
   12008:	01079793          	slli	a5,a5,0x10
   1200c:	0107d793          	srli	a5,a5,0x10
   12010:	fa0692e3          	bnez	a3,11fb4 <__swsetup_r+0x44>
   12014:	2807f713          	andi	a4,a5,640
   12018:	20000613          	li	a2,512
   1201c:	f8c70ce3          	beq	a4,a2,11fb4 <__swsetup_r+0x44>
   12020:	00040593          	mv	a1,s0
   12024:	00048513          	mv	a0,s1
   12028:	6c0020ef          	jal	146e8 <__smakebuf_r>
   1202c:	00c45783          	lhu	a5,12(s0)
   12030:	01042683          	lw	a3,16(s0)
   12034:	f81ff06f          	j	11fb4 <__swsetup_r+0x44>
   12038:	01442783          	lw	a5,20(s0)
   1203c:	00042423          	sw	zero,8(s0)
   12040:	00000513          	li	a0,0
   12044:	40f007b3          	neg	a5,a5
   12048:	00f42c23          	sw	a5,24(s0)
   1204c:	f80696e3          	bnez	a3,11fd8 <__swsetup_r+0x68>
   12050:	00c41783          	lh	a5,12(s0)
   12054:	0807f713          	andi	a4,a5,128
   12058:	f80700e3          	beqz	a4,11fd8 <__swsetup_r+0x68>
   1205c:	0407e793          	ori	a5,a5,64
   12060:	00f41623          	sh	a5,12(s0)
   12064:	fff00513          	li	a0,-1
   12068:	f71ff06f          	j	11fd8 <__swsetup_r+0x68>
   1206c:	00078513          	mv	a0,a5
   12070:	00c020ef          	jal	1407c <__sinit>
   12074:	f25ff06f          	j	11f98 <__swsetup_r+0x28>
   12078:	03042583          	lw	a1,48(s0)
   1207c:	00058e63          	beqz	a1,12098 <__swsetup_r+0x128>
   12080:	04040793          	addi	a5,s0,64
   12084:	00f58863          	beq	a1,a5,12094 <__swsetup_r+0x124>
   12088:	00048513          	mv	a0,s1
   1208c:	144020ef          	jal	141d0 <_free_r>
   12090:	00c41703          	lh	a4,12(s0)
   12094:	02042823          	sw	zero,48(s0)
   12098:	01042683          	lw	a3,16(s0)
   1209c:	fdb77713          	andi	a4,a4,-37
   120a0:	00042223          	sw	zero,4(s0)
   120a4:	00d42023          	sw	a3,0(s0)
   120a8:	f59ff06f          	j	12000 <__swsetup_r+0x90>
   120ac:	00900793          	li	a5,9
   120b0:	00f4a023          	sw	a5,0(s1)
   120b4:	04076713          	ori	a4,a4,64
   120b8:	00e41623          	sh	a4,12(s0)
   120bc:	fff00513          	li	a0,-1
   120c0:	f19ff06f          	j	11fd8 <__swsetup_r+0x68>

000120c4 <__register_exitproc>:
   120c4:	fe010113          	addi	sp,sp,-32
   120c8:	00812c23          	sw	s0,24(sp)
   120cc:	8041a403          	lw	s0,-2044(gp) # 1d274 <_global_impure_ptr>
   120d0:	00912a23          	sw	s1,20(sp)
   120d4:	00050493          	mv	s1,a0
   120d8:	14842503          	lw	a0,328(s0)
   120dc:	01212823          	sw	s2,16(sp)
   120e0:	01312623          	sw	s3,12(sp)
   120e4:	01412423          	sw	s4,8(sp)
   120e8:	00112e23          	sw	ra,28(sp)
   120ec:	00058913          	mv	s2,a1
   120f0:	00060a13          	mv	s4,a2
   120f4:	00068993          	mv	s3,a3
   120f8:	0c050063          	beqz	a0,121b8 <__register_exitproc+0xf4>
   120fc:	00452783          	lw	a5,4(a0)
   12100:	01f00713          	li	a4,31
   12104:	00178593          	addi	a1,a5,1
   12108:	04f75063          	ble	a5,a4,12148 <__register_exitproc+0x84>
   1210c:	000007b7          	lui	a5,0x0
   12110:	00078793          	mv	a5,a5
   12114:	0a078863          	beqz	a5,121c4 <__register_exitproc+0x100>
   12118:	19000513          	li	a0,400
   1211c:	fffee317          	auipc	t1,0xfffee
   12120:	ee4300e7          	jalr	t1,-284 # 0 <_ftext-0x10000>
   12124:	0a050063          	beqz	a0,121c4 <__register_exitproc+0x100>
   12128:	14842783          	lw	a5,328(s0)
   1212c:	00052223          	sw	zero,4(a0)
   12130:	00100593          	li	a1,1
   12134:	00f52023          	sw	a5,0(a0)
   12138:	14a42423          	sw	a0,328(s0)
   1213c:	18052423          	sw	zero,392(a0)
   12140:	18052623          	sw	zero,396(a0)
   12144:	00000793          	li	a5,0
   12148:	00279713          	slli	a4,a5,0x2
   1214c:	02049a63          	bnez	s1,12180 <__register_exitproc+0xbc>
   12150:	00b52223          	sw	a1,4(a0)
   12154:	00e50533          	add	a0,a0,a4
   12158:	01252423          	sw	s2,8(a0)
   1215c:	00000513          	li	a0,0
   12160:	01c12083          	lw	ra,28(sp)
   12164:	01812403          	lw	s0,24(sp)
   12168:	01412483          	lw	s1,20(sp)
   1216c:	01012903          	lw	s2,16(sp)
   12170:	00c12983          	lw	s3,12(sp)
   12174:	00812a03          	lw	s4,8(sp)
   12178:	02010113          	addi	sp,sp,32
   1217c:	00008067          	ret
   12180:	00e506b3          	add	a3,a0,a4
   12184:	0946a423          	sw	s4,136(a3)
   12188:	18852803          	lw	a6,392(a0)
   1218c:	00100613          	li	a2,1
   12190:	00f617b3          	sll	a5,a2,a5
   12194:	00f86633          	or	a2,a6,a5
   12198:	18c52423          	sw	a2,392(a0)
   1219c:	1136a423          	sw	s3,264(a3)
   121a0:	00200693          	li	a3,2
   121a4:	fad496e3          	bne	s1,a3,12150 <__register_exitproc+0x8c>
   121a8:	18c52683          	lw	a3,396(a0)
   121ac:	00f6e7b3          	or	a5,a3,a5
   121b0:	18f52623          	sw	a5,396(a0)
   121b4:	f9dff06f          	j	12150 <__register_exitproc+0x8c>
   121b8:	14c40513          	addi	a0,s0,332
   121bc:	14a42423          	sw	a0,328(s0)
   121c0:	f3dff06f          	j	120fc <__register_exitproc+0x38>
   121c4:	fff00513          	li	a0,-1
   121c8:	f99ff06f          	j	12160 <__register_exitproc+0x9c>

000121cc <__call_exitprocs>:
   121cc:	fc010113          	addi	sp,sp,-64
   121d0:	01712e23          	sw	s7,28(sp)
   121d4:	8041ab83          	lw	s7,-2044(gp) # 1d274 <_global_impure_ptr>
   121d8:	03612023          	sw	s6,32(sp)
   121dc:	00000b37          	lui	s6,0x0
   121e0:	03212823          	sw	s2,48(sp)
   121e4:	03412423          	sw	s4,40(sp)
   121e8:	03512223          	sw	s5,36(sp)
   121ec:	01812c23          	sw	s8,24(sp)
   121f0:	01912a23          	sw	s9,20(sp)
   121f4:	02112e23          	sw	ra,60(sp)
   121f8:	02812c23          	sw	s0,56(sp)
   121fc:	02912a23          	sw	s1,52(sp)
   12200:	03312623          	sw	s3,44(sp)
   12204:	01a12823          	sw	s10,16(sp)
   12208:	01b12623          	sw	s11,12(sp)
   1220c:	00050a93          	mv	s5,a0
   12210:	00058913          	mv	s2,a1
   12214:	148b8c13          	addi	s8,s7,328
   12218:	00100a13          	li	s4,1
   1221c:	fff00c93          	li	s9,-1
   12220:	000b0b13          	mv	s6,s6
   12224:	148ba983          	lw	s3,328(s7)
   12228:	06098063          	beqz	s3,12288 <__call_exitprocs+0xbc>
   1222c:	000c0d93          	mv	s11,s8
   12230:	0049a403          	lw	s0,4(s3)
   12234:	00241493          	slli	s1,s0,0x2
   12238:	fff40413          	addi	s0,s0,-1
   1223c:	009984b3          	add	s1,s3,s1
   12240:	00044e63          	bltz	s0,1225c <__call_exitprocs+0x90>
   12244:	08090063          	beqz	s2,122c4 <__call_exitprocs+0xf8>
   12248:	1044a783          	lw	a5,260(s1)
   1224c:	06f90c63          	beq	s2,a5,122c4 <__call_exitprocs+0xf8>
   12250:	fff40413          	addi	s0,s0,-1
   12254:	ffc48493          	addi	s1,s1,-4
   12258:	ff9416e3          	bne	s0,s9,12244 <__call_exitprocs+0x78>
   1225c:	020b0663          	beqz	s6,12288 <__call_exitprocs+0xbc>
   12260:	0049a783          	lw	a5,4(s3)
   12264:	0c079a63          	bnez	a5,12338 <__call_exitprocs+0x16c>
   12268:	0009a783          	lw	a5,0(s3)
   1226c:	00078e63          	beqz	a5,12288 <__call_exitprocs+0xbc>
   12270:	00098513          	mv	a0,s3
   12274:	00fda023          	sw	a5,0(s11)
   12278:	fffee317          	auipc	t1,0xfffee
   1227c:	d88300e7          	jalr	t1,-632 # 0 <_ftext-0x10000>
   12280:	000da983          	lw	s3,0(s11)
   12284:	fa0996e3          	bnez	s3,12230 <__call_exitprocs+0x64>
   12288:	03c12083          	lw	ra,60(sp)
   1228c:	03812403          	lw	s0,56(sp)
   12290:	03412483          	lw	s1,52(sp)
   12294:	03012903          	lw	s2,48(sp)
   12298:	02c12983          	lw	s3,44(sp)
   1229c:	02812a03          	lw	s4,40(sp)
   122a0:	02412a83          	lw	s5,36(sp)
   122a4:	02012b03          	lw	s6,32(sp)
   122a8:	01c12b83          	lw	s7,28(sp)
   122ac:	01812c03          	lw	s8,24(sp)
   122b0:	01412c83          	lw	s9,20(sp)
   122b4:	01012d03          	lw	s10,16(sp)
   122b8:	00c12d83          	lw	s11,12(sp)
   122bc:	04010113          	addi	sp,sp,64
   122c0:	00008067          	ret
   122c4:	0049a783          	lw	a5,4(s3)
   122c8:	0044a703          	lw	a4,4(s1)
   122cc:	fff78793          	addi	a5,a5,-1
   122d0:	04878a63          	beq	a5,s0,12324 <__call_exitprocs+0x158>
   122d4:	0004a223          	sw	zero,4(s1)
   122d8:	f6070ce3          	beqz	a4,12250 <__call_exitprocs+0x84>
   122dc:	1889a783          	lw	a5,392(s3)
   122e0:	008a16b3          	sll	a3,s4,s0
   122e4:	0049ad03          	lw	s10,4(s3)
   122e8:	00f6f7b3          	and	a5,a3,a5
   122ec:	02078863          	beqz	a5,1231c <__call_exitprocs+0x150>
   122f0:	18c9a783          	lw	a5,396(s3)
   122f4:	00f6f6b3          	and	a3,a3,a5
   122f8:	02069a63          	bnez	a3,1232c <__call_exitprocs+0x160>
   122fc:	0844a583          	lw	a1,132(s1)
   12300:	000a8513          	mv	a0,s5
   12304:	000700e7          	jalr	a4
   12308:	0049a783          	lw	a5,4(s3)
   1230c:	f1a79ce3          	bne	a5,s10,12224 <__call_exitprocs+0x58>
   12310:	000da783          	lw	a5,0(s11)
   12314:	f3378ee3          	beq	a5,s3,12250 <__call_exitprocs+0x84>
   12318:	f0dff06f          	j	12224 <__call_exitprocs+0x58>
   1231c:	000700e7          	jalr	a4
   12320:	fe9ff06f          	j	12308 <__call_exitprocs+0x13c>
   12324:	0089a223          	sw	s0,4(s3)
   12328:	fb1ff06f          	j	122d8 <__call_exitprocs+0x10c>
   1232c:	0844a503          	lw	a0,132(s1)
   12330:	000700e7          	jalr	a4
   12334:	fd5ff06f          	j	12308 <__call_exitprocs+0x13c>
   12338:	00098d93          	mv	s11,s3
   1233c:	0009a983          	lw	s3,0(s3)
   12340:	ee0998e3          	bnez	s3,12230 <__call_exitprocs+0x64>
   12344:	f45ff06f          	j	12288 <__call_exitprocs+0xbc>

00012348 <quorem>:
   12348:	fb010113          	addi	sp,sp,-80
   1234c:	03712623          	sw	s7,44(sp)
   12350:	01052783          	lw	a5,16(a0)
   12354:	0105ab83          	lw	s7,16(a1)
   12358:	04112623          	sw	ra,76(sp)
   1235c:	04812423          	sw	s0,72(sp)
   12360:	04912223          	sw	s1,68(sp)
   12364:	05212023          	sw	s2,64(sp)
   12368:	03312e23          	sw	s3,60(sp)
   1236c:	03412c23          	sw	s4,56(sp)
   12370:	03512a23          	sw	s5,52(sp)
   12374:	03612823          	sw	s6,48(sp)
   12378:	03812423          	sw	s8,40(sp)
   1237c:	03912223          	sw	s9,36(sp)
   12380:	03a12023          	sw	s10,32(sp)
   12384:	01b12e23          	sw	s11,28(sp)
   12388:	1f77c863          	blt	a5,s7,12578 <quorem+0x230>
   1238c:	fffb8b93          	addi	s7,s7,-1
   12390:	002b9a93          	slli	s5,s7,0x2
   12394:	01458b13          	addi	s6,a1,20
   12398:	01450493          	addi	s1,a0,20
   1239c:	015b0c33          	add	s8,s6,s5
   123a0:	015487b3          	add	a5,s1,s5
   123a4:	00b12423          	sw	a1,8(sp)
   123a8:	000c2583          	lw	a1,0(s8)
   123ac:	00050913          	mv	s2,a0
   123b0:	0007a503          	lw	a0,0(a5)
   123b4:	00158593          	addi	a1,a1,1
   123b8:	00f12623          	sw	a5,12(sp)
   123bc:	7d5070ef          	jal	1a390 <__udivsi3>
   123c0:	00050413          	mv	s0,a0
   123c4:	0c050463          	beqz	a0,1248c <quorem+0x144>
   123c8:	00010d37          	lui	s10,0x10
   123cc:	000b0a13          	mv	s4,s6
   123d0:	00048d93          	mv	s11,s1
   123d4:	00000c93          	li	s9,0
   123d8:	00000993          	li	s3,0
   123dc:	fffd0d13          	addi	s10,s10,-1 # ffff <_ftext-0x1>
   123e0:	004a0a13          	addi	s4,s4,4 # 80000004 <_gp+0x7ffe2594>
   123e4:	ffca2a83          	lw	s5,-4(s4)
   123e8:	00040593          	mv	a1,s0
   123ec:	004d8d93          	addi	s11,s11,4
   123f0:	01aaf533          	and	a0,s5,s10
   123f4:	6e9070ef          	jal	1a2dc <__mulsi3>
   123f8:	01950cb3          	add	s9,a0,s9
   123fc:	00040593          	mv	a1,s0
   12400:	010ad513          	srli	a0,s5,0x10
   12404:	6d9070ef          	jal	1a2dc <__mulsi3>
   12408:	ffcda783          	lw	a5,-4(s11)
   1240c:	010cd693          	srli	a3,s9,0x10
   12410:	01acf733          	and	a4,s9,s10
   12414:	40e98733          	sub	a4,s3,a4
   12418:	00d50cb3          	add	s9,a0,a3
   1241c:	01a7f6b3          	and	a3,a5,s10
   12420:	00d70733          	add	a4,a4,a3
   12424:	0107d793          	srli	a5,a5,0x10
   12428:	01acf6b3          	and	a3,s9,s10
   1242c:	40d787b3          	sub	a5,a5,a3
   12430:	41075693          	srai	a3,a4,0x10
   12434:	00d787b3          	add	a5,a5,a3
   12438:	01079693          	slli	a3,a5,0x10
   1243c:	01a77733          	and	a4,a4,s10
   12440:	00e6e733          	or	a4,a3,a4
   12444:	feedae23          	sw	a4,-4(s11)
   12448:	010cdc93          	srli	s9,s9,0x10
   1244c:	4107d993          	srai	s3,a5,0x10
   12450:	f94c78e3          	bleu	s4,s8,123e0 <quorem+0x98>
   12454:	00c12703          	lw	a4,12(sp)
   12458:	00072783          	lw	a5,0(a4)
   1245c:	02079863          	bnez	a5,1248c <quorem+0x144>
   12460:	ffc70793          	addi	a5,a4,-4
   12464:	02f4f263          	bleu	a5,s1,12488 <quorem+0x140>
   12468:	ffc72703          	lw	a4,-4(a4)
   1246c:	00070863          	beqz	a4,1247c <quorem+0x134>
   12470:	0180006f          	j	12488 <quorem+0x140>
   12474:	0007a703          	lw	a4,0(a5)
   12478:	00071863          	bnez	a4,12488 <quorem+0x140>
   1247c:	ffc78793          	addi	a5,a5,-4
   12480:	fffb8b93          	addi	s7,s7,-1
   12484:	fef4e8e3          	bltu	s1,a5,12474 <quorem+0x12c>
   12488:	01792823          	sw	s7,16(s2)
   1248c:	00812583          	lw	a1,8(sp)
   12490:	00090513          	mv	a0,s2
   12494:	75c030ef          	jal	15bf0 <__mcmp>
   12498:	0a054063          	bltz	a0,12538 <quorem+0x1f0>
   1249c:	00010537          	lui	a0,0x10
   124a0:	00140413          	addi	s0,s0,1
   124a4:	00048593          	mv	a1,s1
   124a8:	00000793          	li	a5,0
   124ac:	fff50513          	addi	a0,a0,-1 # ffff <_ftext-0x1>
   124b0:	004b0b13          	addi	s6,s6,4 # 4 <_ftext-0xfffc>
   124b4:	ffcb2603          	lw	a2,-4(s6)
   124b8:	0005a703          	lw	a4,0(a1)
   124bc:	00458593          	addi	a1,a1,4
   124c0:	00a676b3          	and	a3,a2,a0
   124c4:	40d787b3          	sub	a5,a5,a3
   124c8:	00a776b3          	and	a3,a4,a0
   124cc:	00d786b3          	add	a3,a5,a3
   124d0:	01065613          	srli	a2,a2,0x10
   124d4:	01075793          	srli	a5,a4,0x10
   124d8:	40c787b3          	sub	a5,a5,a2
   124dc:	4106d713          	srai	a4,a3,0x10
   124e0:	00e787b3          	add	a5,a5,a4
   124e4:	01079713          	slli	a4,a5,0x10
   124e8:	00a6f6b3          	and	a3,a3,a0
   124ec:	00d766b3          	or	a3,a4,a3
   124f0:	fed5ae23          	sw	a3,-4(a1)
   124f4:	4107d793          	srai	a5,a5,0x10
   124f8:	fb6c7ce3          	bleu	s6,s8,124b0 <quorem+0x168>
   124fc:	002b9713          	slli	a4,s7,0x2
   12500:	00e48733          	add	a4,s1,a4
   12504:	00072783          	lw	a5,0(a4)
   12508:	02079863          	bnez	a5,12538 <quorem+0x1f0>
   1250c:	ffc70793          	addi	a5,a4,-4
   12510:	02f4f263          	bleu	a5,s1,12534 <quorem+0x1ec>
   12514:	ffc72703          	lw	a4,-4(a4)
   12518:	00070863          	beqz	a4,12528 <quorem+0x1e0>
   1251c:	0180006f          	j	12534 <quorem+0x1ec>
   12520:	0007a703          	lw	a4,0(a5)
   12524:	00071863          	bnez	a4,12534 <quorem+0x1ec>
   12528:	ffc78793          	addi	a5,a5,-4
   1252c:	fffb8b93          	addi	s7,s7,-1
   12530:	fef4e8e3          	bltu	s1,a5,12520 <quorem+0x1d8>
   12534:	01792823          	sw	s7,16(s2)
   12538:	00040513          	mv	a0,s0
   1253c:	04c12083          	lw	ra,76(sp)
   12540:	04812403          	lw	s0,72(sp)
   12544:	04412483          	lw	s1,68(sp)
   12548:	04012903          	lw	s2,64(sp)
   1254c:	03c12983          	lw	s3,60(sp)
   12550:	03812a03          	lw	s4,56(sp)
   12554:	03412a83          	lw	s5,52(sp)
   12558:	03012b03          	lw	s6,48(sp)
   1255c:	02c12b83          	lw	s7,44(sp)
   12560:	02812c03          	lw	s8,40(sp)
   12564:	02412c83          	lw	s9,36(sp)
   12568:	02012d03          	lw	s10,32(sp)
   1256c:	01c12d83          	lw	s11,28(sp)
   12570:	05010113          	addi	sp,sp,80
   12574:	00008067          	ret
   12578:	00000513          	li	a0,0
   1257c:	fc1ff06f          	j	1253c <quorem+0x1f4>

00012580 <_dtoa_r>:
   12580:	04052303          	lw	t1,64(a0)
   12584:	f6010113          	addi	sp,sp,-160
   12588:	08812c23          	sw	s0,152(sp)
   1258c:	09212823          	sw	s2,144(sp)
   12590:	09412423          	sw	s4,136(sp)
   12594:	07912a23          	sw	s9,116(sp)
   12598:	08112e23          	sw	ra,156(sp)
   1259c:	08912a23          	sw	s1,148(sp)
   125a0:	09312623          	sw	s3,140(sp)
   125a4:	09512223          	sw	s5,132(sp)
   125a8:	09612023          	sw	s6,128(sp)
   125ac:	07712e23          	sw	s7,124(sp)
   125b0:	07812c23          	sw	s8,120(sp)
   125b4:	07a12823          	sw	s10,112(sp)
   125b8:	07b12623          	sw	s11,108(sp)
   125bc:	01012c23          	sw	a6,24(sp)
   125c0:	00c12423          	sw	a2,8(sp)
   125c4:	00d12623          	sw	a3,12(sp)
   125c8:	00050413          	mv	s0,a0
   125cc:	00070a13          	mv	s4,a4
   125d0:	00078c93          	mv	s9,a5
   125d4:	00088913          	mv	s2,a7
   125d8:	02030263          	beqz	t1,125fc <_dtoa_r+0x7c>
   125dc:	04452703          	lw	a4,68(a0)
   125e0:	00100793          	li	a5,1
   125e4:	00030593          	mv	a1,t1
   125e8:	00e797b3          	sll	a5,a5,a4
   125ec:	00e32223          	sw	a4,4(t1)
   125f0:	00f32423          	sw	a5,8(t1)
   125f4:	541020ef          	jal	15334 <_Bfree>
   125f8:	04042023          	sw	zero,64(s0)
   125fc:	00c12483          	lw	s1,12(sp)
   12600:	0e04ce63          	bltz	s1,126fc <_dtoa_r+0x17c>
   12604:	00092023          	sw	zero,0(s2)
   12608:	7ff007b7          	lui	a5,0x7ff00
   1260c:	00f4f733          	and	a4,s1,a5
   12610:	08f70663          	beq	a4,a5,1269c <_dtoa_r+0x11c>
   12614:	00812b03          	lw	s6,8(sp)
   12618:	00c12b83          	lw	s7,12(sp)
   1261c:	00000613          	li	a2,0
   12620:	00000693          	li	a3,0
   12624:	000b0513          	mv	a0,s6
   12628:	000b8593          	mv	a1,s7
   1262c:	191070ef          	jal	19fbc <__eqdf2>
   12630:	0e051663          	bnez	a0,1271c <_dtoa_r+0x19c>
   12634:	01812703          	lw	a4,24(sp)
   12638:	00100793          	li	a5,1
   1263c:	00f72023          	sw	a5,0(a4)
   12640:	0a012783          	lw	a5,160(sp)
   12644:	64078c63          	beqz	a5,12c9c <_dtoa_r+0x71c>
   12648:	0a012703          	lw	a4,160(sp)
   1264c:	0001b7b7          	lui	a5,0x1b
   12650:	64d78793          	addi	a5,a5,1613 # 1b64d <__clz_tab+0x145>
   12654:	0001b4b7          	lui	s1,0x1b
   12658:	00f72023          	sw	a5,0(a4)
   1265c:	64c48513          	addi	a0,s1,1612 # 1b64c <__clz_tab+0x144>
   12660:	09c12083          	lw	ra,156(sp)
   12664:	09812403          	lw	s0,152(sp)
   12668:	09412483          	lw	s1,148(sp)
   1266c:	09012903          	lw	s2,144(sp)
   12670:	08c12983          	lw	s3,140(sp)
   12674:	08812a03          	lw	s4,136(sp)
   12678:	08412a83          	lw	s5,132(sp)
   1267c:	08012b03          	lw	s6,128(sp)
   12680:	07c12b83          	lw	s7,124(sp)
   12684:	07812c03          	lw	s8,120(sp)
   12688:	07412c83          	lw	s9,116(sp)
   1268c:	07012d03          	lw	s10,112(sp)
   12690:	06c12d83          	lw	s11,108(sp)
   12694:	0a010113          	addi	sp,sp,160
   12698:	00008067          	ret
   1269c:	01812703          	lw	a4,24(sp)
   126a0:	000027b7          	lui	a5,0x2
   126a4:	70f78793          	addi	a5,a5,1807 # 270f <_ftext-0xd8f1>
   126a8:	00f72023          	sw	a5,0(a4)
   126ac:	00812783          	lw	a5,8(sp)
   126b0:	02079863          	bnez	a5,126e0 <_dtoa_r+0x160>
   126b4:	00c49793          	slli	a5,s1,0xc
   126b8:	02079463          	bnez	a5,126e0 <_dtoa_r+0x160>
   126bc:	0a012783          	lw	a5,160(sp)
   126c0:	0001b4b7          	lui	s1,0x1b
   126c4:	65048513          	addi	a0,s1,1616 # 1b650 <__clz_tab+0x148>
   126c8:	f8078ce3          	beqz	a5,12660 <_dtoa_r+0xe0>
   126cc:	0001b7b7          	lui	a5,0x1b
   126d0:	65878793          	addi	a5,a5,1624 # 1b658 <__clz_tab+0x150>
   126d4:	0a012703          	lw	a4,160(sp)
   126d8:	00f72023          	sw	a5,0(a4)
   126dc:	f85ff06f          	j	12660 <_dtoa_r+0xe0>
   126e0:	0a012783          	lw	a5,160(sp)
   126e4:	0001b4b7          	lui	s1,0x1b
   126e8:	65c48513          	addi	a0,s1,1628 # 1b65c <__clz_tab+0x154>
   126ec:	f6078ae3          	beqz	a5,12660 <_dtoa_r+0xe0>
   126f0:	0001b7b7          	lui	a5,0x1b
   126f4:	65f78793          	addi	a5,a5,1631 # 1b65f <__clz_tab+0x157>
   126f8:	fddff06f          	j	126d4 <_dtoa_r+0x154>
   126fc:	00c12783          	lw	a5,12(sp)
   12700:	800004b7          	lui	s1,0x80000
   12704:	fff4c493          	not	s1,s1
   12708:	00f4f4b3          	and	s1,s1,a5
   1270c:	00100793          	li	a5,1
   12710:	00f92023          	sw	a5,0(s2)
   12714:	00912623          	sw	s1,12(sp)
   12718:	ef1ff06f          	j	12608 <_dtoa_r+0x88>
   1271c:	05810793          	addi	a5,sp,88
   12720:	05c10713          	addi	a4,sp,92
   12724:	000b0613          	mv	a2,s6
   12728:	000b8693          	mv	a3,s7
   1272c:	00040513          	mv	a0,s0
   12730:	0bd030ef          	jal	15fec <__d2b>
   12734:	0144d993          	srli	s3,s1,0x14
   12738:	00050913          	mv	s2,a0
   1273c:	50098863          	beqz	s3,12c4c <_dtoa_r+0x6cc>
   12740:	001007b7          	lui	a5,0x100
   12744:	fff78793          	addi	a5,a5,-1 # fffff <_gp+0xe258f>
   12748:	c0198493          	addi	s1,s3,-1023
   1274c:	05812983          	lw	s3,88(sp)
   12750:	00fbf7b3          	and	a5,s7,a5
   12754:	3ff00737          	lui	a4,0x3ff00
   12758:	000b0513          	mv	a0,s6
   1275c:	00e7e5b3          	or	a1,a5,a4
   12760:	02012623          	sw	zero,44(sp)
   12764:	0001d7b7          	lui	a5,0x1d
   12768:	2907a603          	lw	a2,656(a5) # 1d290 <__wctomb+0x8>
   1276c:	2947a683          	lw	a3,660(a5)
   12770:	174070ef          	jal	198e4 <__subdf3>
   12774:	0001d7b7          	lui	a5,0x1d
   12778:	2987a603          	lw	a2,664(a5) # 1d298 <__wctomb+0x10>
   1277c:	29c7a683          	lw	a3,668(a5)
   12780:	1c0070ef          	jal	19940 <__muldf3>
   12784:	0001d7b7          	lui	a5,0x1d
   12788:	2a07a603          	lw	a2,672(a5) # 1d2a0 <__wctomb+0x18>
   1278c:	2a47a683          	lw	a3,676(a5)
   12790:	104070ef          	jal	19894 <__adddf3>
   12794:	00050b13          	mv	s6,a0
   12798:	00048513          	mv	a0,s1
   1279c:	00058b93          	mv	s7,a1
   127a0:	071070ef          	jal	1a010 <__floatsidf>
   127a4:	0001d7b7          	lui	a5,0x1d
   127a8:	2a87a603          	lw	a2,680(a5) # 1d2a8 <__wctomb+0x20>
   127ac:	2ac7a683          	lw	a3,684(a5)
   127b0:	190070ef          	jal	19940 <__muldf3>
   127b4:	00050613          	mv	a2,a0
   127b8:	00058693          	mv	a3,a1
   127bc:	000b0513          	mv	a0,s6
   127c0:	000b8593          	mv	a1,s7
   127c4:	0d0070ef          	jal	19894 <__adddf3>
   127c8:	00050d13          	mv	s10,a0
   127cc:	00058d93          	mv	s11,a1
   127d0:	18d070ef          	jal	1a15c <__fixdfsi>
   127d4:	00050b93          	mv	s7,a0
   127d8:	00000613          	li	a2,0
   127dc:	00000693          	li	a3,0
   127e0:	000d0513          	mv	a0,s10
   127e4:	000d8593          	mv	a1,s11
   127e8:	7cc070ef          	jal	19fb4 <__ltdf2>
   127ec:	76054063          	bltz	a0,12f4c <_dtoa_r+0x9cc>
   127f0:	00100713          	li	a4,1
   127f4:	01600793          	li	a5,22
   127f8:	02e12023          	sw	a4,32(sp)
   127fc:	0377ea63          	bltu	a5,s7,12830 <_dtoa_r+0x2b0>
   12800:	0001b737          	lui	a4,0x1b
   12804:	003b9793          	slli	a5,s7,0x3
   12808:	24070713          	addi	a4,a4,576 # 1b240 <__mprec_tens>
   1280c:	00e787b3          	add	a5,a5,a4
   12810:	0007a503          	lw	a0,0(a5)
   12814:	0047a583          	lw	a1,4(a5)
   12818:	00812603          	lw	a2,8(sp)
   1281c:	00c12683          	lw	a3,12(sp)
   12820:	734070ef          	jal	19f54 <__gtdf2>
   12824:	02a05ae3          	blez	a0,13058 <_dtoa_r+0xad8>
   12828:	fffb8b93          	addi	s7,s7,-1
   1282c:	02012023          	sw	zero,32(sp)
   12830:	409984b3          	sub	s1,s3,s1
   12834:	fff48993          	addi	s3,s1,-1 # 7fffffff <_gp+0x7ffe258f>
   12838:	00000d13          	li	s10,0
   1283c:	4609c663          	bltz	s3,12ca8 <_dtoa_r+0x728>
   12840:	6e0bce63          	bltz	s7,12f3c <_dtoa_r+0x9bc>
   12844:	017989b3          	add	s3,s3,s7
   12848:	03712223          	sw	s7,36(sp)
   1284c:	00000c13          	li	s8,0
   12850:	00900793          	li	a5,9
   12854:	4747e263          	bltu	a5,s4,12cb8 <_dtoa_r+0x738>
   12858:	00500793          	li	a5,5
   1285c:	00100a93          	li	s5,1
   12860:	0147d663          	ble	s4,a5,1286c <_dtoa_r+0x2ec>
   12864:	ffca0a13          	addi	s4,s4,-4
   12868:	00000a93          	li	s5,0
   1286c:	00300793          	li	a5,3
   12870:	4efa0ee3          	beq	s4,a5,1356c <_dtoa_r+0xfec>
   12874:	4747d8e3          	ble	s4,a5,134e4 <_dtoa_r+0xf64>
   12878:	00400793          	li	a5,4
   1287c:	32fa04e3          	beq	s4,a5,133a4 <_dtoa_r+0xe24>
   12880:	00100713          	li	a4,1
   12884:	00500793          	li	a5,5
   12888:	00e12e23          	sw	a4,28(sp)
   1288c:	46fa12e3          	bne	s4,a5,134f0 <_dtoa_r+0xf70>
   12890:	019b87b3          	add	a5,s7,s9
   12894:	00178b13          	addi	s6,a5,1
   12898:	02f12423          	sw	a5,40(sp)
   1289c:	000b0613          	mv	a2,s6
   128a0:	3b6054e3          	blez	s6,13448 <_dtoa_r+0xec8>
   128a4:	000b0d93          	mv	s11,s6
   128a8:	04042223          	sw	zero,68(s0)
   128ac:	01700793          	li	a5,23
   128b0:	00000593          	li	a1,0
   128b4:	02c7f263          	bleu	a2,a5,128d8 <_dtoa_r+0x358>
   128b8:	00100713          	li	a4,1
   128bc:	00400793          	li	a5,4
   128c0:	00179793          	slli	a5,a5,0x1
   128c4:	01478693          	addi	a3,a5,20
   128c8:	00070593          	mv	a1,a4
   128cc:	00170713          	addi	a4,a4,1
   128d0:	fed678e3          	bleu	a3,a2,128c0 <_dtoa_r+0x340>
   128d4:	04b42223          	sw	a1,68(s0)
   128d8:	00040513          	mv	a0,s0
   128dc:	1b5020ef          	jal	15290 <_Balloc>
   128e0:	04a42023          	sw	a0,64(s0)
   128e4:	00e00793          	li	a5,14
   128e8:	00050493          	mv	s1,a0
   128ec:	41b7e063          	bltu	a5,s11,12cec <_dtoa_r+0x76c>
   128f0:	3e0a8e63          	beqz	s5,12cec <_dtoa_r+0x76c>
   128f4:	00812503          	lw	a0,8(sp)
   128f8:	00c12583          	lw	a1,12(sp)
   128fc:	04a12023          	sw	a0,64(sp)
   12900:	04b12223          	sw	a1,68(sp)
   12904:	597056e3          	blez	s7,13690 <_dtoa_r+0x1110>
   12908:	00fbf713          	andi	a4,s7,15
   1290c:	0001b6b7          	lui	a3,0x1b
   12910:	24068693          	addi	a3,a3,576 # 1b240 <__mprec_tens>
   12914:	00371713          	slli	a4,a4,0x3
   12918:	404bd793          	srai	a5,s7,0x4
   1291c:	00d70733          	add	a4,a4,a3
   12920:	00a12823          	sw	a0,16(sp)
   12924:	0107f693          	andi	a3,a5,16
   12928:	00b12a23          	sw	a1,20(sp)
   1292c:	00072803          	lw	a6,0(a4)
   12930:	00472883          	lw	a7,4(a4)
   12934:	00200a93          	li	s5,2
   12938:	02068e63          	beqz	a3,12974 <_dtoa_r+0x3f4>
   1293c:	0001b737          	lui	a4,0x1b
   12940:	35072603          	lw	a2,848(a4) # 1b350 <__mprec_bigtens+0x20>
   12944:	35472683          	lw	a3,852(a4)
   12948:	00f7f793          	andi	a5,a5,15
   1294c:	03012823          	sw	a6,48(sp)
   12950:	03112a23          	sw	a7,52(sp)
   12954:	00f12423          	sw	a5,8(sp)
   12958:	2c4070ef          	jal	19c1c <__divdf3>
   1295c:	03012803          	lw	a6,48(sp)
   12960:	03412883          	lw	a7,52(sp)
   12964:	00812783          	lw	a5,8(sp)
   12968:	00a12823          	sw	a0,16(sp)
   1296c:	00b12a23          	sw	a1,20(sp)
   12970:	00300a93          	li	s5,3
   12974:	04078463          	beqz	a5,129bc <_dtoa_r+0x43c>
   12978:	0001b737          	lui	a4,0x1b
   1297c:	33070d93          	addi	s11,a4,816 # 1b330 <__mprec_bigtens>
   12980:	0017f693          	andi	a3,a5,1
   12984:	00080513          	mv	a0,a6
   12988:	4017d793          	srai	a5,a5,0x1
   1298c:	00088593          	mv	a1,a7
   12990:	02068263          	beqz	a3,129b4 <_dtoa_r+0x434>
   12994:	000da603          	lw	a2,0(s11)
   12998:	004da683          	lw	a3,4(s11)
   1299c:	00f12423          	sw	a5,8(sp)
   129a0:	001a8a93          	addi	s5,s5,1
   129a4:	79d060ef          	jal	19940 <__muldf3>
   129a8:	00812783          	lw	a5,8(sp)
   129ac:	00050813          	mv	a6,a0
   129b0:	00058893          	mv	a7,a1
   129b4:	008d8d93          	addi	s11,s11,8
   129b8:	fc0794e3          	bnez	a5,12980 <_dtoa_r+0x400>
   129bc:	01012503          	lw	a0,16(sp)
   129c0:	01412583          	lw	a1,20(sp)
   129c4:	00080613          	mv	a2,a6
   129c8:	00088693          	mv	a3,a7
   129cc:	250070ef          	jal	19c1c <__divdf3>
   129d0:	00a12823          	sw	a0,16(sp)
   129d4:	00b12a23          	sw	a1,20(sp)
   129d8:	02012783          	lw	a5,32(sp)
   129dc:	02078263          	beqz	a5,12a00 <_dtoa_r+0x480>
   129e0:	0001d7b7          	lui	a5,0x1d
   129e4:	2b07a603          	lw	a2,688(a5) # 1d2b0 <__wctomb+0x28>
   129e8:	2b47a683          	lw	a3,692(a5)
   129ec:	01012503          	lw	a0,16(sp)
   129f0:	01412583          	lw	a1,20(sp)
   129f4:	5c0070ef          	jal	19fb4 <__ltdf2>
   129f8:	00055463          	bgez	a0,12a00 <_dtoa_r+0x480>
   129fc:	7210006f          	j	1391c <_dtoa_r+0x139c>
   12a00:	000a8513          	mv	a0,s5
   12a04:	60c070ef          	jal	1a010 <__floatsidf>
   12a08:	01012603          	lw	a2,16(sp)
   12a0c:	01412683          	lw	a3,20(sp)
   12a10:	731060ef          	jal	19940 <__muldf3>
   12a14:	0001d7b7          	lui	a5,0x1d
   12a18:	2c07a603          	lw	a2,704(a5) # 1d2c0 <__wctomb+0x38>
   12a1c:	2c47a683          	lw	a3,708(a5)
   12a20:	675060ef          	jal	19894 <__adddf3>
   12a24:	fcc007b7          	lui	a5,0xfcc00
   12a28:	00050813          	mv	a6,a0
   12a2c:	00b788b3          	add	a7,a5,a1
   12a30:	380b02e3          	beqz	s6,135b4 <_dtoa_r+0x1034>
   12a34:	05712623          	sw	s7,76(sp)
   12a38:	000b0313          	mv	t1,s6
   12a3c:	01c12783          	lw	a5,28(sp)
   12a40:	540780e3          	beqz	a5,13780 <_dtoa_r+0x1200>
   12a44:	fff30793          	addi	a5,t1,-1
   12a48:	0001b737          	lui	a4,0x1b
   12a4c:	24070713          	addi	a4,a4,576 # 1b240 <__mprec_tens>
   12a50:	00379793          	slli	a5,a5,0x3
   12a54:	00e787b3          	add	a5,a5,a4
   12a58:	0007a603          	lw	a2,0(a5) # fcc00000 <_gp+0xfcbe2590>
   12a5c:	0047a683          	lw	a3,4(a5)
   12a60:	0001d7b7          	lui	a5,0x1d
   12a64:	2d07a503          	lw	a0,720(a5) # 1d2d0 <__wctomb+0x48>
   12a68:	2d47a583          	lw	a1,724(a5)
   12a6c:	02612c23          	sw	t1,56(sp)
   12a70:	01012423          	sw	a6,8(sp)
   12a74:	01112623          	sw	a7,12(sp)
   12a78:	1a4070ef          	jal	19c1c <__divdf3>
   12a7c:	00812803          	lw	a6,8(sp)
   12a80:	00c12883          	lw	a7,12(sp)
   12a84:	00148d93          	addi	s11,s1,1
   12a88:	00080613          	mv	a2,a6
   12a8c:	00088693          	mv	a3,a7
   12a90:	655060ef          	jal	198e4 <__subdf3>
   12a94:	00a12423          	sw	a0,8(sp)
   12a98:	00b12623          	sw	a1,12(sp)
   12a9c:	01012503          	lw	a0,16(sp)
   12aa0:	01412583          	lw	a1,20(sp)
   12aa4:	6b8070ef          	jal	1a15c <__fixdfsi>
   12aa8:	00050a93          	mv	s5,a0
   12aac:	564070ef          	jal	1a010 <__floatsidf>
   12ab0:	00050613          	mv	a2,a0
   12ab4:	00058693          	mv	a3,a1
   12ab8:	01012503          	lw	a0,16(sp)
   12abc:	01412583          	lw	a1,20(sp)
   12ac0:	625060ef          	jal	198e4 <__subdf3>
   12ac4:	00050613          	mv	a2,a0
   12ac8:	00058693          	mv	a3,a1
   12acc:	030a8713          	addi	a4,s5,48
   12ad0:	00a12823          	sw	a0,16(sp)
   12ad4:	00b12a23          	sw	a1,20(sp)
   12ad8:	00812503          	lw	a0,8(sp)
   12adc:	00c12583          	lw	a1,12(sp)
   12ae0:	0ff77a93          	andi	s5,a4,255
   12ae4:	01548023          	sb	s5,0(s1)
   12ae8:	46c070ef          	jal	19f54 <__gtdf2>
   12aec:	12a04663          	bgtz	a0,12c18 <_dtoa_r+0x698>
   12af0:	0001d7b7          	lui	a5,0x1d
   12af4:	01012603          	lw	a2,16(sp)
   12af8:	01412683          	lw	a3,20(sp)
   12afc:	2b07a503          	lw	a0,688(a5) # 1d2b0 <__wctomb+0x28>
   12b00:	2b47a583          	lw	a1,692(a5)
   12b04:	02f12823          	sw	a5,48(sp)
   12b08:	5dd060ef          	jal	198e4 <__subdf3>
   12b0c:	00812603          	lw	a2,8(sp)
   12b10:	00c12683          	lw	a3,12(sp)
   12b14:	4a0070ef          	jal	19fb4 <__ltdf2>
   12b18:	00055463          	bgez	a0,12b20 <_dtoa_r+0x5a0>
   12b1c:	6c10006f          	j	139dc <_dtoa_r+0x145c>
   12b20:	03812303          	lw	t1,56(sp)
   12b24:	00100713          	li	a4,1
   12b28:	03012783          	lw	a5,48(sp)
   12b2c:	34e308e3          	beq	t1,a4,1367c <_dtoa_r+0x10fc>
   12b30:	0001d737          	lui	a4,0x1d
   12b34:	2b872603          	lw	a2,696(a4) # 1d2b8 <__wctomb+0x30>
   12b38:	2bc72683          	lw	a3,700(a4)
   12b3c:	2b07a703          	lw	a4,688(a5)
   12b40:	2b47a783          	lw	a5,692(a5)
   12b44:	02c12823          	sw	a2,48(sp)
   12b48:	02d12a23          	sw	a3,52(sp)
   12b4c:	02f12e23          	sw	a5,60(sp)
   12b50:	006487b3          	add	a5,s1,t1
   12b54:	02e12c23          	sw	a4,56(sp)
   12b58:	04f12423          	sw	a5,72(sp)
   12b5c:	0280006f          	j	12b84 <_dtoa_r+0x604>
   12b60:	03812503          	lw	a0,56(sp)
   12b64:	03c12583          	lw	a1,60(sp)
   12b68:	57d060ef          	jal	198e4 <__subdf3>
   12b6c:	00812603          	lw	a2,8(sp)
   12b70:	00c12683          	lw	a3,12(sp)
   12b74:	440070ef          	jal	19fb4 <__ltdf2>
   12b78:	660542e3          	bltz	a0,139dc <_dtoa_r+0x145c>
   12b7c:	04812783          	lw	a5,72(sp)
   12b80:	2efd8ee3          	beq	s11,a5,1367c <_dtoa_r+0x10fc>
   12b84:	03012603          	lw	a2,48(sp)
   12b88:	03412683          	lw	a3,52(sp)
   12b8c:	00812503          	lw	a0,8(sp)
   12b90:	00c12583          	lw	a1,12(sp)
   12b94:	001d8d93          	addi	s11,s11,1
   12b98:	5a9060ef          	jal	19940 <__muldf3>
   12b9c:	0001d7b7          	lui	a5,0x1d
   12ba0:	2b87a603          	lw	a2,696(a5) # 1d2b8 <__wctomb+0x30>
   12ba4:	2bc7a683          	lw	a3,700(a5)
   12ba8:	00a12423          	sw	a0,8(sp)
   12bac:	00b12623          	sw	a1,12(sp)
   12bb0:	01012503          	lw	a0,16(sp)
   12bb4:	01412583          	lw	a1,20(sp)
   12bb8:	589060ef          	jal	19940 <__muldf3>
   12bbc:	00b12a23          	sw	a1,20(sp)
   12bc0:	00a12823          	sw	a0,16(sp)
   12bc4:	598070ef          	jal	1a15c <__fixdfsi>
   12bc8:	00050a93          	mv	s5,a0
   12bcc:	444070ef          	jal	1a010 <__floatsidf>
   12bd0:	01012803          	lw	a6,16(sp)
   12bd4:	01412883          	lw	a7,20(sp)
   12bd8:	00050613          	mv	a2,a0
   12bdc:	00058693          	mv	a3,a1
   12be0:	00080513          	mv	a0,a6
   12be4:	00088593          	mv	a1,a7
   12be8:	4fd060ef          	jal	198e4 <__subdf3>
   12bec:	030a8713          	addi	a4,s5,48
   12bf0:	00812603          	lw	a2,8(sp)
   12bf4:	00c12683          	lw	a3,12(sp)
   12bf8:	0ff77a93          	andi	s5,a4,255
   12bfc:	ff5d8fa3          	sb	s5,-1(s11)
   12c00:	00a12823          	sw	a0,16(sp)
   12c04:	00b12a23          	sw	a1,20(sp)
   12c08:	3ac070ef          	jal	19fb4 <__ltdf2>
   12c0c:	01012603          	lw	a2,16(sp)
   12c10:	01412683          	lw	a3,20(sp)
   12c14:	f40556e3          	bgez	a0,12b60 <_dtoa_r+0x5e0>
   12c18:	04c12b83          	lw	s7,76(sp)
   12c1c:	00090593          	mv	a1,s2
   12c20:	00040513          	mv	a0,s0
   12c24:	710020ef          	jal	15334 <_Bfree>
   12c28:	01812783          	lw	a5,24(sp)
   12c2c:	000d8023          	sb	zero,0(s11)
   12c30:	001b8b93          	addi	s7,s7,1
   12c34:	0177a023          	sw	s7,0(a5)
   12c38:	0a012783          	lw	a5,160(sp)
   12c3c:	1e0784e3          	beqz	a5,13624 <_dtoa_r+0x10a4>
   12c40:	01b7a023          	sw	s11,0(a5)
   12c44:	00048513          	mv	a0,s1
   12c48:	a19ff06f          	j	12660 <_dtoa_r+0xe0>
   12c4c:	05812983          	lw	s3,88(sp)
   12c50:	05c12a83          	lw	s5,92(sp)
   12c54:	02000793          	li	a5,32
   12c58:	01598ab3          	add	s5,s3,s5
   12c5c:	432a8713          	addi	a4,s5,1074
   12c60:	40e7d063          	ble	a4,a5,13060 <_dtoa_r+0xae0>
   12c64:	04000793          	li	a5,64
   12c68:	40e787b3          	sub	a5,a5,a4
   12c6c:	00812703          	lw	a4,8(sp)
   12c70:	412a8513          	addi	a0,s5,1042
   12c74:	00f494b3          	sll	s1,s1,a5
   12c78:	00a75533          	srl	a0,a4,a0
   12c7c:	00956533          	or	a0,a0,s1
   12c80:	454070ef          	jal	1a0d4 <__floatunsidf>
   12c84:	fe1007b7          	lui	a5,0xfe100
   12c88:	00b785b3          	add	a1,a5,a1
   12c8c:	00100793          	li	a5,1
   12c90:	fffa8493          	addi	s1,s5,-1
   12c94:	02f12623          	sw	a5,44(sp)
   12c98:	acdff06f          	j	12764 <_dtoa_r+0x1e4>
   12c9c:	0001b4b7          	lui	s1,0x1b
   12ca0:	64c48513          	addi	a0,s1,1612 # 1b64c <__clz_tab+0x144>
   12ca4:	9bdff06f          	j	12660 <_dtoa_r+0xe0>
   12ca8:	00100d13          	li	s10,1
   12cac:	409d0d33          	sub	s10,s10,s1
   12cb0:	00000993          	li	s3,0
   12cb4:	b8dff06f          	j	12840 <_dtoa_r+0x2c0>
   12cb8:	04042223          	sw	zero,68(s0)
   12cbc:	00000593          	li	a1,0
   12cc0:	00040513          	mv	a0,s0
   12cc4:	5cc020ef          	jal	15290 <_Balloc>
   12cc8:	fff00793          	li	a5,-1
   12ccc:	02f12423          	sw	a5,40(sp)
   12cd0:	00078b13          	mv	s6,a5
   12cd4:	00100793          	li	a5,1
   12cd8:	00050493          	mv	s1,a0
   12cdc:	04a42023          	sw	a0,64(s0)
   12ce0:	00000a13          	li	s4,0
   12ce4:	00000c93          	li	s9,0
   12ce8:	00f12e23          	sw	a5,28(sp)
   12cec:	05c12783          	lw	a5,92(sp)
   12cf0:	1e07c863          	bltz	a5,12ee0 <_dtoa_r+0x960>
   12cf4:	00e00713          	li	a4,14
   12cf8:	1f774463          	blt	a4,s7,12ee0 <_dtoa_r+0x960>
   12cfc:	0001b737          	lui	a4,0x1b
   12d00:	24070713          	addi	a4,a4,576 # 1b240 <__mprec_tens>
   12d04:	003b9793          	slli	a5,s7,0x3
   12d08:	00e787b3          	add	a5,a5,a4
   12d0c:	0007a703          	lw	a4,0(a5) # fe100000 <_gp+0xfe0e2590>
   12d10:	0047a783          	lw	a5,4(a5)
   12d14:	00e12823          	sw	a4,16(sp)
   12d18:	00f12a23          	sw	a5,20(sp)
   12d1c:	6a0cc463          	bltz	s9,133c4 <_dtoa_r+0xe44>
   12d20:	01412d83          	lw	s11,20(sp)
   12d24:	00812a03          	lw	s4,8(sp)
   12d28:	00c12a83          	lw	s5,12(sp)
   12d2c:	01012d03          	lw	s10,16(sp)
   12d30:	000d8693          	mv	a3,s11
   12d34:	000a0513          	mv	a0,s4
   12d38:	000d0613          	mv	a2,s10
   12d3c:	000a8593          	mv	a1,s5
   12d40:	6dd060ef          	jal	19c1c <__divdf3>
   12d44:	418070ef          	jal	1a15c <__fixdfsi>
   12d48:	00050c13          	mv	s8,a0
   12d4c:	2c4070ef          	jal	1a010 <__floatsidf>
   12d50:	000d8693          	mv	a3,s11
   12d54:	000d0613          	mv	a2,s10
   12d58:	3e9060ef          	jal	19940 <__muldf3>
   12d5c:	00050613          	mv	a2,a0
   12d60:	00058693          	mv	a3,a1
   12d64:	000a0513          	mv	a0,s4
   12d68:	000a8593          	mv	a1,s5
   12d6c:	379060ef          	jal	198e4 <__subdf3>
   12d70:	030c0793          	addi	a5,s8,48
   12d74:	00100713          	li	a4,1
   12d78:	00f48023          	sb	a5,0(s1)
   12d7c:	00050813          	mv	a6,a0
   12d80:	00058893          	mv	a7,a1
   12d84:	00e48db3          	add	s11,s1,a4
   12d88:	0ceb0c63          	beq	s6,a4,12e60 <_dtoa_r+0x8e0>
   12d8c:	0001d737          	lui	a4,0x1d
   12d90:	2b872603          	lw	a2,696(a4) # 1d2b8 <__wctomb+0x30>
   12d94:	2bc72683          	lw	a3,700(a4)
   12d98:	00e12423          	sw	a4,8(sp)
   12d9c:	3a5060ef          	jal	19940 <__muldf3>
   12da0:	00000613          	li	a2,0
   12da4:	00000693          	li	a3,0
   12da8:	00050a13          	mv	s4,a0
   12dac:	00058a93          	mv	s5,a1
   12db0:	20c070ef          	jal	19fbc <__eqdf2>
   12db4:	00812703          	lw	a4,8(sp)
   12db8:	e60502e3          	beqz	a0,12c1c <_dtoa_r+0x69c>
   12dbc:	2bc72783          	lw	a5,700(a4)
   12dc0:	2b872703          	lw	a4,696(a4)
   12dc4:	00248993          	addi	s3,s1,2
   12dc8:	00f12623          	sw	a5,12(sp)
   12dcc:	00e12423          	sw	a4,8(sp)
   12dd0:	01648b33          	add	s6,s1,s6
   12dd4:	0240006f          	j	12df8 <_dtoa_r+0x878>
   12dd8:	369060ef          	jal	19940 <__muldf3>
   12ddc:	00000613          	li	a2,0
   12de0:	00000693          	li	a3,0
   12de4:	00050a13          	mv	s4,a0
   12de8:	00058a93          	mv	s5,a1
   12dec:	00198993          	addi	s3,s3,1
   12df0:	1cc070ef          	jal	19fbc <__eqdf2>
   12df4:	e20504e3          	beqz	a0,12c1c <_dtoa_r+0x69c>
   12df8:	01412d83          	lw	s11,20(sp)
   12dfc:	01012d03          	lw	s10,16(sp)
   12e00:	000a0513          	mv	a0,s4
   12e04:	000d8693          	mv	a3,s11
   12e08:	000d0613          	mv	a2,s10
   12e0c:	000a8593          	mv	a1,s5
   12e10:	60d060ef          	jal	19c1c <__divdf3>
   12e14:	348070ef          	jal	1a15c <__fixdfsi>
   12e18:	00050c13          	mv	s8,a0
   12e1c:	1f4070ef          	jal	1a010 <__floatsidf>
   12e20:	000d8693          	mv	a3,s11
   12e24:	000d0613          	mv	a2,s10
   12e28:	319060ef          	jal	19940 <__muldf3>
   12e2c:	00050613          	mv	a2,a0
   12e30:	00058693          	mv	a3,a1
   12e34:	000a0513          	mv	a0,s4
   12e38:	000a8593          	mv	a1,s5
   12e3c:	2a9060ef          	jal	198e4 <__subdf3>
   12e40:	030c0793          	addi	a5,s8,48
   12e44:	fef98fa3          	sb	a5,-1(s3)
   12e48:	00050813          	mv	a6,a0
   12e4c:	00058893          	mv	a7,a1
   12e50:	00812603          	lw	a2,8(sp)
   12e54:	00c12683          	lw	a3,12(sp)
   12e58:	00098d93          	mv	s11,s3
   12e5c:	f73b1ee3          	bne	s6,s3,12dd8 <_dtoa_r+0x858>
   12e60:	00080613          	mv	a2,a6
   12e64:	00088693          	mv	a3,a7
   12e68:	00080513          	mv	a0,a6
   12e6c:	00088593          	mv	a1,a7
   12e70:	225060ef          	jal	19894 <__adddf3>
   12e74:	00050a13          	mv	s4,a0
   12e78:	00058a93          	mv	s5,a1
   12e7c:	00050613          	mv	a2,a0
   12e80:	00058693          	mv	a3,a1
   12e84:	01012503          	lw	a0,16(sp)
   12e88:	01412583          	lw	a1,20(sp)
   12e8c:	128070ef          	jal	19fb4 <__ltdf2>
   12e90:	02054263          	bltz	a0,12eb4 <_dtoa_r+0x934>
   12e94:	01012503          	lw	a0,16(sp)
   12e98:	01412583          	lw	a1,20(sp)
   12e9c:	000a0613          	mv	a2,s4
   12ea0:	000a8693          	mv	a3,s5
   12ea4:	118070ef          	jal	19fbc <__eqdf2>
   12ea8:	d6051ae3          	bnez	a0,12c1c <_dtoa_r+0x69c>
   12eac:	001c7c13          	andi	s8,s8,1
   12eb0:	d60c06e3          	beqz	s8,12c1c <_dtoa_r+0x69c>
   12eb4:	fffdca83          	lbu	s5,-1(s11)
   12eb8:	03900613          	li	a2,57
   12ebc:	0100006f          	j	12ecc <_dtoa_r+0x94c>
   12ec0:	069686e3          	beq	a3,s1,1372c <_dtoa_r+0x11ac>
   12ec4:	fff6ca83          	lbu	s5,-1(a3)
   12ec8:	00068d93          	mv	s11,a3
   12ecc:	fffd8693          	addi	a3,s11,-1
   12ed0:	feca88e3          	beq	s5,a2,12ec0 <_dtoa_r+0x940>
   12ed4:	001a8713          	addi	a4,s5,1
   12ed8:	00e68023          	sb	a4,0(a3)
   12edc:	d41ff06f          	j	12c1c <_dtoa_r+0x69c>
   12ee0:	01c12703          	lw	a4,28(sp)
   12ee4:	08070863          	beqz	a4,12f74 <_dtoa_r+0x9f4>
   12ee8:	00100713          	li	a4,1
   12eec:	55475263          	ble	s4,a4,13430 <_dtoa_r+0xeb0>
   12ef0:	fffb0713          	addi	a4,s6,-1
   12ef4:	40ec0db3          	sub	s11,s8,a4
   12ef8:	00ec5e63          	ble	a4,s8,12f14 <_dtoa_r+0x994>
   12efc:	02412783          	lw	a5,36(sp)
   12f00:	41870c33          	sub	s8,a4,s8
   12f04:	00000d93          	li	s11,0
   12f08:	018787b3          	add	a5,a5,s8
   12f0c:	02f12223          	sw	a5,36(sp)
   12f10:	00070c13          	mv	s8,a4
   12f14:	01a12823          	sw	s10,16(sp)
   12f18:	000b0793          	mv	a5,s6
   12f1c:	1c0b48e3          	bltz	s6,138ec <_dtoa_r+0x136c>
   12f20:	00100593          	li	a1,1
   12f24:	00040513          	mv	a0,s0
   12f28:	00fd0d33          	add	s10,s10,a5
   12f2c:	00f989b3          	add	s3,s3,a5
   12f30:	7ac020ef          	jal	156dc <__i2b>
   12f34:	00050a93          	mv	s5,a0
   12f38:	0480006f          	j	12f80 <_dtoa_r+0xa00>
   12f3c:	417d0d33          	sub	s10,s10,s7
   12f40:	41700c33          	neg	s8,s7
   12f44:	02012223          	sw	zero,36(sp)
   12f48:	909ff06f          	j	12850 <_dtoa_r+0x2d0>
   12f4c:	000b8513          	mv	a0,s7
   12f50:	0c0070ef          	jal	1a010 <__floatsidf>
   12f54:	00050613          	mv	a2,a0
   12f58:	00058693          	mv	a3,a1
   12f5c:	000d0513          	mv	a0,s10
   12f60:	000d8593          	mv	a1,s11
   12f64:	054070ef          	jal	19fb8 <__nedf2>
   12f68:	00a03533          	snez	a0,a0
   12f6c:	40ab8bb3          	sub	s7,s7,a0
   12f70:	881ff06f          	j	127f0 <_dtoa_r+0x270>
   12f74:	000c0d93          	mv	s11,s8
   12f78:	01a12823          	sw	s10,16(sp)
   12f7c:	00000a93          	li	s5,0
   12f80:	01012703          	lw	a4,16(sp)
   12f84:	00070793          	mv	a5,a4
   12f88:	02e05063          	blez	a4,12fa8 <_dtoa_r+0xa28>
   12f8c:	01305e63          	blez	s3,12fa8 <_dtoa_r+0xa28>
   12f90:	3ce9ca63          	blt	s3,a4,13364 <_dtoa_r+0xde4>
   12f94:	01012703          	lw	a4,16(sp)
   12f98:	40fd0d33          	sub	s10,s10,a5
   12f9c:	40f989b3          	sub	s3,s3,a5
   12fa0:	40f70733          	sub	a4,a4,a5
   12fa4:	00e12823          	sw	a4,16(sp)
   12fa8:	040c0a63          	beqz	s8,12ffc <_dtoa_r+0xa7c>
   12fac:	01c12783          	lw	a5,28(sp)
   12fb0:	46078463          	beqz	a5,13418 <_dtoa_r+0xe98>
   12fb4:	05b05063          	blez	s11,12ff4 <_dtoa_r+0xa74>
   12fb8:	000a8593          	mv	a1,s5
   12fbc:	000d8613          	mv	a2,s11
   12fc0:	00040513          	mv	a0,s0
   12fc4:	19d020ef          	jal	15960 <__pow5mult>
   12fc8:	00090613          	mv	a2,s2
   12fcc:	00050593          	mv	a1,a0
   12fd0:	00050a93          	mv	s5,a0
   12fd4:	00040513          	mv	a0,s0
   12fd8:	738020ef          	jal	15710 <__multiply>
   12fdc:	02a12623          	sw	a0,44(sp)
   12fe0:	00090593          	mv	a1,s2
   12fe4:	00040513          	mv	a0,s0
   12fe8:	34c020ef          	jal	15334 <_Bfree>
   12fec:	02c12783          	lw	a5,44(sp)
   12ff0:	00078913          	mv	s2,a5
   12ff4:	41bc0633          	sub	a2,s8,s11
   12ff8:	42061263          	bnez	a2,1341c <_dtoa_r+0xe9c>
   12ffc:	00100593          	li	a1,1
   13000:	00040513          	mv	a0,s0
   13004:	6d8020ef          	jal	156dc <__i2b>
   13008:	02412783          	lw	a5,36(sp)
   1300c:	00050c13          	mv	s8,a0
   13010:	06f05063          	blez	a5,13070 <_dtoa_r+0xaf0>
   13014:	00078613          	mv	a2,a5
   13018:	00050593          	mv	a1,a0
   1301c:	00040513          	mv	a0,s0
   13020:	141020ef          	jal	15960 <__pow5mult>
   13024:	00100793          	li	a5,1
   13028:	00050c13          	mv	s8,a0
   1302c:	3547d063          	ble	s4,a5,1336c <_dtoa_r+0xdec>
   13030:	00000d93          	li	s11,0
   13034:	010c2783          	lw	a5,16(s8)
   13038:	00378793          	addi	a5,a5,3
   1303c:	00279793          	slli	a5,a5,0x2
   13040:	00fc07b3          	add	a5,s8,a5
   13044:	0047a503          	lw	a0,4(a5)
   13048:	564020ef          	jal	155ac <__hi0bits>
   1304c:	02000793          	li	a5,32
   13050:	40a787b3          	sub	a5,a5,a0
   13054:	0340006f          	j	13088 <_dtoa_r+0xb08>
   13058:	02012023          	sw	zero,32(sp)
   1305c:	fd4ff06f          	j	12830 <_dtoa_r+0x2b0>
   13060:	40e787b3          	sub	a5,a5,a4
   13064:	00812703          	lw	a4,8(sp)
   13068:	00f71533          	sll	a0,a4,a5
   1306c:	c15ff06f          	j	12c80 <_dtoa_r+0x700>
   13070:	00100793          	li	a5,1
   13074:	00000d93          	li	s11,0
   13078:	4547d663          	ble	s4,a5,134c4 <_dtoa_r+0xf44>
   1307c:	02412703          	lw	a4,36(sp)
   13080:	00100793          	li	a5,1
   13084:	fa0718e3          	bnez	a4,13034 <_dtoa_r+0xab4>
   13088:	013787b3          	add	a5,a5,s3
   1308c:	01f7f793          	andi	a5,a5,31
   13090:	1a078a63          	beqz	a5,13244 <_dtoa_r+0xcc4>
   13094:	02000713          	li	a4,32
   13098:	40f70733          	sub	a4,a4,a5
   1309c:	00400693          	li	a3,4
   130a0:	18e6d4e3          	ble	a4,a3,13a28 <_dtoa_r+0x14a8>
   130a4:	01c00713          	li	a4,28
   130a8:	40f707b3          	sub	a5,a4,a5
   130ac:	01012703          	lw	a4,16(sp)
   130b0:	00fd0d33          	add	s10,s10,a5
   130b4:	00f989b3          	add	s3,s3,a5
   130b8:	00f70733          	add	a4,a4,a5
   130bc:	00e12823          	sw	a4,16(sp)
   130c0:	01a05c63          	blez	s10,130d8 <_dtoa_r+0xb58>
   130c4:	00090593          	mv	a1,s2
   130c8:	000d0613          	mv	a2,s10
   130cc:	00040513          	mv	a0,s0
   130d0:	1d9020ef          	jal	15aa8 <__lshift>
   130d4:	00050913          	mv	s2,a0
   130d8:	01305c63          	blez	s3,130f0 <_dtoa_r+0xb70>
   130dc:	000c0593          	mv	a1,s8
   130e0:	00098613          	mv	a2,s3
   130e4:	00040513          	mv	a0,s0
   130e8:	1c1020ef          	jal	15aa8 <__lshift>
   130ec:	00050c13          	mv	s8,a0
   130f0:	02012783          	lw	a5,32(sp)
   130f4:	14079c63          	bnez	a5,1324c <_dtoa_r+0xccc>
   130f8:	43605663          	blez	s6,13524 <_dtoa_r+0xfa4>
   130fc:	01c12783          	lw	a5,28(sp)
   13100:	18078c63          	beqz	a5,13298 <_dtoa_r+0xd18>
   13104:	01012783          	lw	a5,16(sp)
   13108:	00f05c63          	blez	a5,13120 <_dtoa_r+0xba0>
   1310c:	000a8593          	mv	a1,s5
   13110:	00078613          	mv	a2,a5
   13114:	00040513          	mv	a0,s0
   13118:	191020ef          	jal	15aa8 <__lshift>
   1311c:	00050a93          	mv	s5,a0
   13120:	000a8d13          	mv	s10,s5
   13124:	600d9e63          	bnez	s11,13740 <_dtoa_r+0x11c0>
   13128:	016487b3          	add	a5,s1,s6
   1312c:	02f12023          	sw	a5,32(sp)
   13130:	00812783          	lw	a5,8(sp)
   13134:	00148993          	addi	s3,s1,1
   13138:	0017f793          	andi	a5,a5,1
   1313c:	00f12823          	sw	a5,16(sp)
   13140:	000c0593          	mv	a1,s8
   13144:	00090513          	mv	a0,s2
   13148:	a00ff0ef          	jal	12348 <quorem>
   1314c:	00050d93          	mv	s11,a0
   13150:	000a8593          	mv	a1,s5
   13154:	00090513          	mv	a0,s2
   13158:	299020ef          	jal	15bf0 <__mcmp>
   1315c:	00050b13          	mv	s6,a0
   13160:	000d0613          	mv	a2,s10
   13164:	000c0593          	mv	a1,s8
   13168:	00040513          	mv	a0,s0
   1316c:	2dd020ef          	jal	15c48 <__mdiff>
   13170:	00c52683          	lw	a3,12(a0)
   13174:	fff98713          	addi	a4,s3,-1
   13178:	00e12e23          	sw	a4,28(sp)
   1317c:	00050793          	mv	a5,a0
   13180:	030d8c93          	addi	s9,s11,48
   13184:	00100713          	li	a4,1
   13188:	00069e63          	bnez	a3,131a4 <_dtoa_r+0xc24>
   1318c:	00050593          	mv	a1,a0
   13190:	00a12423          	sw	a0,8(sp)
   13194:	00090513          	mv	a0,s2
   13198:	259020ef          	jal	15bf0 <__mcmp>
   1319c:	00812783          	lw	a5,8(sp)
   131a0:	00050713          	mv	a4,a0
   131a4:	00078593          	mv	a1,a5
   131a8:	00040513          	mv	a0,s0
   131ac:	00e12423          	sw	a4,8(sp)
   131b0:	184020ef          	jal	15334 <_Bfree>
   131b4:	00812703          	lw	a4,8(sp)
   131b8:	014767b3          	or	a5,a4,s4
   131bc:	00079663          	bnez	a5,131c8 <_dtoa_r+0xc48>
   131c0:	01012783          	lw	a5,16(sp)
   131c4:	28078663          	beqz	a5,13450 <_dtoa_r+0xed0>
   131c8:	2a0b4863          	bltz	s6,13478 <_dtoa_r+0xef8>
   131cc:	014b6b33          	or	s6,s6,s4
   131d0:	000b1663          	bnez	s6,131dc <_dtoa_r+0xc5c>
   131d4:	01012783          	lw	a5,16(sp)
   131d8:	2a078063          	beqz	a5,13478 <_dtoa_r+0xef8>
   131dc:	6ee04a63          	bgtz	a4,138d0 <_dtoa_r+0x1350>
   131e0:	02012783          	lw	a5,32(sp)
   131e4:	ff998fa3          	sb	s9,-1(s3)
   131e8:	00098d93          	mv	s11,s3
   131ec:	6f378a63          	beq	a5,s3,138e0 <_dtoa_r+0x1360>
   131f0:	00090593          	mv	a1,s2
   131f4:	00000693          	li	a3,0
   131f8:	00a00613          	li	a2,10
   131fc:	00040513          	mv	a0,s0
   13200:	158020ef          	jal	15358 <__multadd>
   13204:	00050913          	mv	s2,a0
   13208:	00000693          	li	a3,0
   1320c:	00a00613          	li	a2,10
   13210:	000a8593          	mv	a1,s5
   13214:	00040513          	mv	a0,s0
   13218:	2baa8c63          	beq	s5,s10,134d0 <_dtoa_r+0xf50>
   1321c:	13c020ef          	jal	15358 <__multadd>
   13220:	000d0593          	mv	a1,s10
   13224:	00050a93          	mv	s5,a0
   13228:	00000693          	li	a3,0
   1322c:	00a00613          	li	a2,10
   13230:	00040513          	mv	a0,s0
   13234:	124020ef          	jal	15358 <__multadd>
   13238:	00050d13          	mv	s10,a0
   1323c:	00198993          	addi	s3,s3,1
   13240:	f01ff06f          	j	13140 <_dtoa_r+0xbc0>
   13244:	01c00793          	li	a5,28
   13248:	e65ff06f          	j	130ac <_dtoa_r+0xb2c>
   1324c:	000c0593          	mv	a1,s8
   13250:	00090513          	mv	a0,s2
   13254:	19d020ef          	jal	15bf0 <__mcmp>
   13258:	ea0550e3          	bgez	a0,130f8 <_dtoa_r+0xb78>
   1325c:	00090593          	mv	a1,s2
   13260:	00000693          	li	a3,0
   13264:	00a00613          	li	a2,10
   13268:	00040513          	mv	a0,s0
   1326c:	0ec020ef          	jal	15358 <__multadd>
   13270:	01c12783          	lw	a5,28(sp)
   13274:	00050913          	mv	s2,a0
   13278:	fffb8b93          	addi	s7,s7,-1
   1327c:	76079c63          	bnez	a5,139f4 <_dtoa_r+0x1474>
   13280:	02812783          	lw	a5,40(sp)
   13284:	00078b13          	mv	s6,a5
   13288:	00f04863          	bgtz	a5,13298 <_dtoa_r+0xd18>
   1328c:	00200793          	li	a5,2
   13290:	7b47c463          	blt	a5,s4,13a38 <_dtoa_r+0x14b8>
   13294:	02812b03          	lw	s6,40(sp)
   13298:	00048993          	mv	s3,s1
   1329c:	00a00a13          	li	s4,10
   132a0:	00c0006f          	j	132ac <_dtoa_r+0xd2c>
   132a4:	0b4020ef          	jal	15358 <__multadd>
   132a8:	00050913          	mv	s2,a0
   132ac:	000c0593          	mv	a1,s8
   132b0:	00090513          	mv	a0,s2
   132b4:	894ff0ef          	jal	12348 <quorem>
   132b8:	00198993          	addi	s3,s3,1
   132bc:	03050c93          	addi	s9,a0,48
   132c0:	ff998fa3          	sb	s9,-1(s3)
   132c4:	409987b3          	sub	a5,s3,s1
   132c8:	00000693          	li	a3,0
   132cc:	000a0613          	mv	a2,s4
   132d0:	00090593          	mv	a1,s2
   132d4:	00040513          	mv	a0,s0
   132d8:	fd67c6e3          	blt	a5,s6,132a4 <_dtoa_r+0xd24>
   132dc:	63605063          	blez	s6,138fc <_dtoa_r+0x137c>
   132e0:	01648db3          	add	s11,s1,s6
   132e4:	00000993          	li	s3,0
   132e8:	00090593          	mv	a1,s2
   132ec:	00100613          	li	a2,1
   132f0:	00040513          	mv	a0,s0
   132f4:	7b4020ef          	jal	15aa8 <__lshift>
   132f8:	000c0593          	mv	a1,s8
   132fc:	00050913          	mv	s2,a0
   13300:	0f1020ef          	jal	15bf0 <__mcmp>
   13304:	34a05863          	blez	a0,13654 <_dtoa_r+0x10d4>
   13308:	fffdc683          	lbu	a3,-1(s11)
   1330c:	03900613          	li	a2,57
   13310:	0100006f          	j	13320 <_dtoa_r+0xda0>
   13314:	26970063          	beq	a4,s1,13574 <_dtoa_r+0xff4>
   13318:	fff74683          	lbu	a3,-1(a4)
   1331c:	00070d93          	mv	s11,a4
   13320:	fffd8713          	addi	a4,s11,-1
   13324:	fec688e3          	beq	a3,a2,13314 <_dtoa_r+0xd94>
   13328:	00168693          	addi	a3,a3,1
   1332c:	00d70023          	sb	a3,0(a4)
   13330:	000c0593          	mv	a1,s8
   13334:	00040513          	mv	a0,s0
   13338:	7fd010ef          	jal	15334 <_Bfree>
   1333c:	8e0a80e3          	beqz	s5,12c1c <_dtoa_r+0x69c>
   13340:	00098a63          	beqz	s3,13354 <_dtoa_r+0xdd4>
   13344:	01598863          	beq	s3,s5,13354 <_dtoa_r+0xdd4>
   13348:	00098593          	mv	a1,s3
   1334c:	00040513          	mv	a0,s0
   13350:	7e5010ef          	jal	15334 <_Bfree>
   13354:	000a8593          	mv	a1,s5
   13358:	00040513          	mv	a0,s0
   1335c:	7d9010ef          	jal	15334 <_Bfree>
   13360:	8bdff06f          	j	12c1c <_dtoa_r+0x69c>
   13364:	00098793          	mv	a5,s3
   13368:	c2dff06f          	j	12f94 <_dtoa_r+0xa14>
   1336c:	00812783          	lw	a5,8(sp)
   13370:	cc0790e3          	bnez	a5,13030 <_dtoa_r+0xab0>
   13374:	00c12683          	lw	a3,12(sp)
   13378:	00000d93          	li	s11,0
   1337c:	00c69713          	slli	a4,a3,0xc
   13380:	ce071ee3          	bnez	a4,1307c <_dtoa_r+0xafc>
   13384:	7ff007b7          	lui	a5,0x7ff00
   13388:	00d7f7b3          	and	a5,a5,a3
   1338c:	ce0788e3          	beqz	a5,1307c <_dtoa_r+0xafc>
   13390:	00100793          	li	a5,1
   13394:	001d0d13          	addi	s10,s10,1
   13398:	00198993          	addi	s3,s3,1
   1339c:	00078d93          	mv	s11,a5
   133a0:	cddff06f          	j	1307c <_dtoa_r+0xafc>
   133a4:	00100793          	li	a5,1
   133a8:	00f12e23          	sw	a5,28(sp)
   133ac:	29905063          	blez	s9,1362c <_dtoa_r+0x10ac>
   133b0:	000c8613          	mv	a2,s9
   133b4:	000c8d93          	mv	s11,s9
   133b8:	03912423          	sw	s9,40(sp)
   133bc:	000c8b13          	mv	s6,s9
   133c0:	ce8ff06f          	j	128a8 <_dtoa_r+0x328>
   133c4:	95604ee3          	bgtz	s6,12d20 <_dtoa_r+0x7a0>
   133c8:	240b1863          	bnez	s6,13618 <_dtoa_r+0x1098>
   133cc:	0001d7b7          	lui	a5,0x1d
   133d0:	2c87a603          	lw	a2,712(a5) # 1d2c8 <__wctomb+0x40>
   133d4:	2cc7a683          	lw	a3,716(a5)
   133d8:	01012503          	lw	a0,16(sp)
   133dc:	01412583          	lw	a1,20(sp)
   133e0:	00000c13          	li	s8,0
   133e4:	00000a93          	li	s5,0
   133e8:	558060ef          	jal	19940 <__muldf3>
   133ec:	00812603          	lw	a2,8(sp)
   133f0:	00c12683          	lw	a3,12(sp)
   133f4:	2fd060ef          	jal	19ef0 <__gedf2>
   133f8:	16054063          	bltz	a0,13558 <_dtoa_r+0xfd8>
   133fc:	fffccb93          	not	s7,s9
   13400:	00048d93          	mv	s11,s1
   13404:	000c0593          	mv	a1,s8
   13408:	00040513          	mv	a0,s0
   1340c:	729010ef          	jal	15334 <_Bfree>
   13410:	800a86e3          	beqz	s5,12c1c <_dtoa_r+0x69c>
   13414:	f41ff06f          	j	13354 <_dtoa_r+0xdd4>
   13418:	000c0613          	mv	a2,s8
   1341c:	00090593          	mv	a1,s2
   13420:	00040513          	mv	a0,s0
   13424:	53c020ef          	jal	15960 <__pow5mult>
   13428:	00050913          	mv	s2,a0
   1342c:	bd1ff06f          	j	12ffc <_dtoa_r+0xa7c>
   13430:	02c12703          	lw	a4,44(sp)
   13434:	4c070863          	beqz	a4,13904 <_dtoa_r+0x1384>
   13438:	43378793          	addi	a5,a5,1075
   1343c:	000c0d93          	mv	s11,s8
   13440:	01a12823          	sw	s10,16(sp)
   13444:	addff06f          	j	12f20 <_dtoa_r+0x9a0>
   13448:	00100613          	li	a2,1
   1344c:	c58ff06f          	j	128a4 <_dtoa_r+0x324>
   13450:	03900793          	li	a5,57
   13454:	04fc8863          	beq	s9,a5,134a4 <_dtoa_r+0xf24>
   13458:	01605463          	blez	s6,13460 <_dtoa_r+0xee0>
   1345c:	031d8c93          	addi	s9,s11,49
   13460:	01c12783          	lw	a5,28(sp)
   13464:	000a8993          	mv	s3,s5
   13468:	000d0a93          	mv	s5,s10
   1346c:	00178d93          	addi	s11,a5,1
   13470:	01978023          	sb	s9,0(a5)
   13474:	ebdff06f          	j	13330 <_dtoa_r+0xdb0>
   13478:	fee054e3          	blez	a4,13460 <_dtoa_r+0xee0>
   1347c:	00090593          	mv	a1,s2
   13480:	00100613          	li	a2,1
   13484:	00040513          	mv	a0,s0
   13488:	620020ef          	jal	15aa8 <__lshift>
   1348c:	000c0593          	mv	a1,s8
   13490:	00050913          	mv	s2,a0
   13494:	75c020ef          	jal	15bf0 <__mcmp>
   13498:	54a05663          	blez	a0,139e4 <_dtoa_r+0x1464>
   1349c:	03900793          	li	a5,57
   134a0:	fafc9ee3          	bne	s9,a5,1345c <_dtoa_r+0xedc>
   134a4:	01c12783          	lw	a5,28(sp)
   134a8:	03900713          	li	a4,57
   134ac:	000a8993          	mv	s3,s5
   134b0:	00178d93          	addi	s11,a5,1
   134b4:	00e78023          	sb	a4,0(a5)
   134b8:	000d0a93          	mv	s5,s10
   134bc:	03900693          	li	a3,57
   134c0:	e4dff06f          	j	1330c <_dtoa_r+0xd8c>
   134c4:	00812783          	lw	a5,8(sp)
   134c8:	ba079ae3          	bnez	a5,1307c <_dtoa_r+0xafc>
   134cc:	ea9ff06f          	j	13374 <_dtoa_r+0xdf4>
   134d0:	689010ef          	jal	15358 <__multadd>
   134d4:	00050a93          	mv	s5,a0
   134d8:	00050d13          	mv	s10,a0
   134dc:	00198993          	addi	s3,s3,1
   134e0:	c61ff06f          	j	13140 <_dtoa_r+0xbc0>
   134e4:	00200793          	li	a5,2
   134e8:	00012e23          	sw	zero,28(sp)
   134ec:	ecfa00e3          	beq	s4,a5,133ac <_dtoa_r+0xe2c>
   134f0:	04042223          	sw	zero,68(s0)
   134f4:	00000593          	li	a1,0
   134f8:	00040513          	mv	a0,s0
   134fc:	595010ef          	jal	15290 <_Balloc>
   13500:	fff00793          	li	a5,-1
   13504:	02f12423          	sw	a5,40(sp)
   13508:	00078b13          	mv	s6,a5
   1350c:	00100793          	li	a5,1
   13510:	00050493          	mv	s1,a0
   13514:	04a42023          	sw	a0,64(s0)
   13518:	00000c93          	li	s9,0
   1351c:	00f12e23          	sw	a5,28(sp)
   13520:	fccff06f          	j	12cec <_dtoa_r+0x76c>
   13524:	00200793          	li	a5,2
   13528:	bd47dae3          	ble	s4,a5,130fc <_dtoa_r+0xb7c>
   1352c:	ec0b18e3          	bnez	s6,133fc <_dtoa_r+0xe7c>
   13530:	000c0593          	mv	a1,s8
   13534:	00000693          	li	a3,0
   13538:	00500613          	li	a2,5
   1353c:	00040513          	mv	a0,s0
   13540:	619010ef          	jal	15358 <__multadd>
   13544:	00050c13          	mv	s8,a0
   13548:	00050593          	mv	a1,a0
   1354c:	00090513          	mv	a0,s2
   13550:	6a0020ef          	jal	15bf0 <__mcmp>
   13554:	eaa054e3          	blez	a0,133fc <_dtoa_r+0xe7c>
   13558:	03100713          	li	a4,49
   1355c:	00148d93          	addi	s11,s1,1
   13560:	00e48023          	sb	a4,0(s1)
   13564:	001b8b93          	addi	s7,s7,1
   13568:	e9dff06f          	j	13404 <_dtoa_r+0xe84>
   1356c:	00012e23          	sw	zero,28(sp)
   13570:	b20ff06f          	j	12890 <_dtoa_r+0x310>
   13574:	03100713          	li	a4,49
   13578:	001b8b93          	addi	s7,s7,1
   1357c:	00e48023          	sb	a4,0(s1)
   13580:	db1ff06f          	j	13330 <_dtoa_r+0xdb0>
   13584:	000a8513          	mv	a0,s5
   13588:	289060ef          	jal	1a010 <__floatsidf>
   1358c:	01012603          	lw	a2,16(sp)
   13590:	01412683          	lw	a3,20(sp)
   13594:	3ac060ef          	jal	19940 <__muldf3>
   13598:	0001d7b7          	lui	a5,0x1d
   1359c:	2c07a603          	lw	a2,704(a5) # 1d2c0 <__wctomb+0x38>
   135a0:	2c47a683          	lw	a3,708(a5)
   135a4:	2f0060ef          	jal	19894 <__adddf3>
   135a8:	fcc007b7          	lui	a5,0xfcc00
   135ac:	00050813          	mv	a6,a0
   135b0:	00b788b3          	add	a7,a5,a1
   135b4:	0001d7b7          	lui	a5,0x1d
   135b8:	2c87a603          	lw	a2,712(a5) # 1d2c8 <__wctomb+0x40>
   135bc:	2cc7a683          	lw	a3,716(a5)
   135c0:	01012503          	lw	a0,16(sp)
   135c4:	01412583          	lw	a1,20(sp)
   135c8:	01012423          	sw	a6,8(sp)
   135cc:	01112623          	sw	a7,12(sp)
   135d0:	314060ef          	jal	198e4 <__subdf3>
   135d4:	00812803          	lw	a6,8(sp)
   135d8:	00c12883          	lw	a7,12(sp)
   135dc:	00a12823          	sw	a0,16(sp)
   135e0:	00080613          	mv	a2,a6
   135e4:	00088693          	mv	a3,a7
   135e8:	00b12a23          	sw	a1,20(sp)
   135ec:	169060ef          	jal	19f54 <__gtdf2>
   135f0:	2ca04a63          	bgtz	a0,138c4 <_dtoa_r+0x1344>
   135f4:	00812803          	lw	a6,8(sp)
   135f8:	00c12883          	lw	a7,12(sp)
   135fc:	01012503          	lw	a0,16(sp)
   13600:	01412583          	lw	a1,20(sp)
   13604:	800007b7          	lui	a5,0x80000
   13608:	00080613          	mv	a2,a6
   1360c:	0117c6b3          	xor	a3,a5,a7
   13610:	1a5060ef          	jal	19fb4 <__ltdf2>
   13614:	06055463          	bgez	a0,1367c <_dtoa_r+0x10fc>
   13618:	00000c13          	li	s8,0
   1361c:	00000a93          	li	s5,0
   13620:	dddff06f          	j	133fc <_dtoa_r+0xe7c>
   13624:	00048513          	mv	a0,s1
   13628:	838ff06f          	j	12660 <_dtoa_r+0xe0>
   1362c:	04042223          	sw	zero,68(s0)
   13630:	00000593          	li	a1,0
   13634:	00040513          	mv	a0,s0
   13638:	459010ef          	jal	15290 <_Balloc>
   1363c:	00100c93          	li	s9,1
   13640:	00050493          	mv	s1,a0
   13644:	04a42023          	sw	a0,64(s0)
   13648:	03912423          	sw	s9,40(sp)
   1364c:	000c8b13          	mv	s6,s9
   13650:	aa0ff06f          	j	128f0 <_dtoa_r+0x370>
   13654:	00051663          	bnez	a0,13660 <_dtoa_r+0x10e0>
   13658:	001cfc93          	andi	s9,s9,1
   1365c:	ca0c96e3          	bnez	s9,13308 <_dtoa_r+0xd88>
   13660:	03000613          	li	a2,48
   13664:	0080006f          	j	1366c <_dtoa_r+0x10ec>
   13668:	00068d93          	mv	s11,a3
   1366c:	fffdc703          	lbu	a4,-1(s11)
   13670:	fffd8693          	addi	a3,s11,-1
   13674:	fec70ae3          	beq	a4,a2,13668 <_dtoa_r+0x10e8>
   13678:	cb9ff06f          	j	13330 <_dtoa_r+0xdb0>
   1367c:	04012703          	lw	a4,64(sp)
   13680:	04412783          	lw	a5,68(sp)
   13684:	00e12423          	sw	a4,8(sp)
   13688:	00f12623          	sw	a5,12(sp)
   1368c:	e60ff06f          	j	12cec <_dtoa_r+0x76c>
   13690:	04012503          	lw	a0,64(sp)
   13694:	04412583          	lw	a1,68(sp)
   13698:	00200a93          	li	s5,2
   1369c:	00a12823          	sw	a0,16(sp)
   136a0:	00b12a23          	sw	a1,20(sp)
   136a4:	b20b8a63          	beqz	s7,129d8 <_dtoa_r+0x458>
   136a8:	417007b3          	neg	a5,s7
   136ac:	00f7f713          	andi	a4,a5,15
   136b0:	0001b6b7          	lui	a3,0x1b
   136b4:	24068693          	addi	a3,a3,576 # 1b240 <__mprec_tens>
   136b8:	00371713          	slli	a4,a4,0x3
   136bc:	00d70733          	add	a4,a4,a3
   136c0:	00072603          	lw	a2,0(a4)
   136c4:	00472683          	lw	a3,4(a4)
   136c8:	4047d793          	srai	a5,a5,0x4
   136cc:	00f12423          	sw	a5,8(sp)
   136d0:	270060ef          	jal	19940 <__muldf3>
   136d4:	00812783          	lw	a5,8(sp)
   136d8:	00a12823          	sw	a0,16(sp)
   136dc:	00b12a23          	sw	a1,20(sp)
   136e0:	ae078c63          	beqz	a5,129d8 <_dtoa_r+0x458>
   136e4:	0001b737          	lui	a4,0x1b
   136e8:	33070d93          	addi	s11,a4,816 # 1b330 <__mprec_bigtens>
   136ec:	0017f693          	andi	a3,a5,1
   136f0:	01012503          	lw	a0,16(sp)
   136f4:	4017d793          	srai	a5,a5,0x1
   136f8:	01412583          	lw	a1,20(sp)
   136fc:	02068263          	beqz	a3,13720 <_dtoa_r+0x11a0>
   13700:	000da603          	lw	a2,0(s11)
   13704:	004da683          	lw	a3,4(s11)
   13708:	00f12423          	sw	a5,8(sp)
   1370c:	001a8a93          	addi	s5,s5,1
   13710:	230060ef          	jal	19940 <__muldf3>
   13714:	00812783          	lw	a5,8(sp)
   13718:	00a12823          	sw	a0,16(sp)
   1371c:	00b12a23          	sw	a1,20(sp)
   13720:	008d8d93          	addi	s11,s11,8
   13724:	fc0794e3          	bnez	a5,136ec <_dtoa_r+0x116c>
   13728:	ab0ff06f          	j	129d8 <_dtoa_r+0x458>
   1372c:	03000713          	li	a4,48
   13730:	00e48023          	sb	a4,0(s1)
   13734:	001b8b93          	addi	s7,s7,1
   13738:	fffdca83          	lbu	s5,-1(s11)
   1373c:	f98ff06f          	j	12ed4 <_dtoa_r+0x954>
   13740:	004aa583          	lw	a1,4(s5)
   13744:	00040513          	mv	a0,s0
   13748:	349010ef          	jal	15290 <_Balloc>
   1374c:	010aa603          	lw	a2,16(s5)
   13750:	00050993          	mv	s3,a0
   13754:	00ca8593          	addi	a1,s5,12
   13758:	00260613          	addi	a2,a2,2
   1375c:	00261613          	slli	a2,a2,0x2
   13760:	00c50513          	addi	a0,a0,12
   13764:	12d010ef          	jal	15090 <memcpy>
   13768:	00100613          	li	a2,1
   1376c:	00098593          	mv	a1,s3
   13770:	00040513          	mv	a0,s0
   13774:	334020ef          	jal	15aa8 <__lshift>
   13778:	00050d13          	mv	s10,a0
   1377c:	9adff06f          	j	13128 <_dtoa_r+0xba8>
   13780:	fff30793          	addi	a5,t1,-1
   13784:	0001b737          	lui	a4,0x1b
   13788:	24070713          	addi	a4,a4,576 # 1b240 <__mprec_tens>
   1378c:	00379793          	slli	a5,a5,0x3
   13790:	00e787b3          	add	a5,a5,a4
   13794:	0007a503          	lw	a0,0(a5) # 80000000 <_gp+0x7ffe2590>
   13798:	0047a583          	lw	a1,4(a5)
   1379c:	00080613          	mv	a2,a6
   137a0:	00088693          	mv	a3,a7
   137a4:	00612423          	sw	t1,8(sp)
   137a8:	198060ef          	jal	19940 <__muldf3>
   137ac:	02a12c23          	sw	a0,56(sp)
   137b0:	02b12e23          	sw	a1,60(sp)
   137b4:	01012503          	lw	a0,16(sp)
   137b8:	01412583          	lw	a1,20(sp)
   137bc:	00148d93          	addi	s11,s1,1
   137c0:	19d060ef          	jal	1a15c <__fixdfsi>
   137c4:	00050a93          	mv	s5,a0
   137c8:	049060ef          	jal	1a010 <__floatsidf>
   137cc:	00058693          	mv	a3,a1
   137d0:	00050613          	mv	a2,a0
   137d4:	01412583          	lw	a1,20(sp)
   137d8:	01012503          	lw	a0,16(sp)
   137dc:	030a8a93          	addi	s5,s5,48
   137e0:	104060ef          	jal	198e4 <__subdf3>
   137e4:	00812303          	lw	t1,8(sp)
   137e8:	01548023          	sb	s5,0(s1)
   137ec:	00100693          	li	a3,1
   137f0:	006487b3          	add	a5,s1,t1
   137f4:	00f12823          	sw	a5,16(sp)
   137f8:	00050813          	mv	a6,a0
   137fc:	00058893          	mv	a7,a1
   13800:	0001d737          	lui	a4,0x1d
   13804:	06d30a63          	beq	t1,a3,13878 <_dtoa_r+0x12f8>
   13808:	2bc72783          	lw	a5,700(a4) # 1d2bc <__wctomb+0x34>
   1380c:	2b872703          	lw	a4,696(a4)
   13810:	02f12a23          	sw	a5,52(sp)
   13814:	02e12823          	sw	a4,48(sp)
   13818:	03012603          	lw	a2,48(sp)
   1381c:	03412683          	lw	a3,52(sp)
   13820:	00080513          	mv	a0,a6
   13824:	00088593          	mv	a1,a7
   13828:	118060ef          	jal	19940 <__muldf3>
   1382c:	00b12623          	sw	a1,12(sp)
   13830:	00a12423          	sw	a0,8(sp)
   13834:	129060ef          	jal	1a15c <__fixdfsi>
   13838:	00050a93          	mv	s5,a0
   1383c:	7d4060ef          	jal	1a010 <__floatsidf>
   13840:	00812803          	lw	a6,8(sp)
   13844:	00c12883          	lw	a7,12(sp)
   13848:	00050613          	mv	a2,a0
   1384c:	00058693          	mv	a3,a1
   13850:	00080513          	mv	a0,a6
   13854:	00088593          	mv	a1,a7
   13858:	08c060ef          	jal	198e4 <__subdf3>
   1385c:	01012783          	lw	a5,16(sp)
   13860:	001d8d93          	addi	s11,s11,1
   13864:	030a8713          	addi	a4,s5,48
   13868:	feed8fa3          	sb	a4,-1(s11)
   1386c:	00050813          	mv	a6,a0
   13870:	00058893          	mv	a7,a1
   13874:	fafd92e3          	bne	s11,a5,13818 <_dtoa_r+0x1298>
   13878:	0001dab7          	lui	s5,0x1d
   1387c:	2d0aa603          	lw	a2,720(s5) # 1d2d0 <__wctomb+0x48>
   13880:	2d4aa683          	lw	a3,724(s5)
   13884:	03812503          	lw	a0,56(sp)
   13888:	03c12583          	lw	a1,60(sp)
   1388c:	01012423          	sw	a6,8(sp)
   13890:	01112623          	sw	a7,12(sp)
   13894:	000060ef          	jal	19894 <__adddf3>
   13898:	00812803          	lw	a6,8(sp)
   1389c:	00c12883          	lw	a7,12(sp)
   138a0:	00080613          	mv	a2,a6
   138a4:	00088693          	mv	a3,a7
   138a8:	70c060ef          	jal	19fb4 <__ltdf2>
   138ac:	00812803          	lw	a6,8(sp)
   138b0:	00c12883          	lw	a7,12(sp)
   138b4:	0c055c63          	bgez	a0,1398c <_dtoa_r+0x140c>
   138b8:	fffdca83          	lbu	s5,-1(s11)
   138bc:	04c12b83          	lw	s7,76(sp)
   138c0:	df8ff06f          	j	12eb8 <_dtoa_r+0x938>
   138c4:	00000c13          	li	s8,0
   138c8:	00000a93          	li	s5,0
   138cc:	c8dff06f          	j	13558 <_dtoa_r+0xfd8>
   138d0:	03900793          	li	a5,57
   138d4:	bcfc88e3          	beq	s9,a5,134a4 <_dtoa_r+0xf24>
   138d8:	001c8c93          	addi	s9,s9,1
   138dc:	b85ff06f          	j	13460 <_dtoa_r+0xee0>
   138e0:	000a8993          	mv	s3,s5
   138e4:	000d0a93          	mv	s5,s10
   138e8:	a01ff06f          	j	132e8 <_dtoa_r+0xd68>
   138ec:	416d07b3          	sub	a5,s10,s6
   138f0:	00f12823          	sw	a5,16(sp)
   138f4:	00000793          	li	a5,0
   138f8:	e28ff06f          	j	12f20 <_dtoa_r+0x9a0>
   138fc:	00100b13          	li	s6,1
   13900:	9e1ff06f          	j	132e0 <_dtoa_r+0xd60>
   13904:	05812683          	lw	a3,88(sp)
   13908:	03600793          	li	a5,54
   1390c:	000c0d93          	mv	s11,s8
   13910:	40d787b3          	sub	a5,a5,a3
   13914:	01a12823          	sw	s10,16(sp)
   13918:	e08ff06f          	j	12f20 <_dtoa_r+0x9a0>
   1391c:	c60b04e3          	beqz	s6,13584 <_dtoa_r+0x1004>
   13920:	02812d83          	lw	s11,40(sp)
   13924:	d5b05ce3          	blez	s11,1367c <_dtoa_r+0x10fc>
   13928:	0001d737          	lui	a4,0x1d
   1392c:	2b872603          	lw	a2,696(a4) # 1d2b8 <__wctomb+0x30>
   13930:	2bc72683          	lw	a3,700(a4)
   13934:	01012503          	lw	a0,16(sp)
   13938:	01412583          	lw	a1,20(sp)
   1393c:	fffb8793          	addi	a5,s7,-1
   13940:	04f12623          	sw	a5,76(sp)
   13944:	7fd050ef          	jal	19940 <__muldf3>
   13948:	00a12823          	sw	a0,16(sp)
   1394c:	001a8513          	addi	a0,s5,1
   13950:	00b12a23          	sw	a1,20(sp)
   13954:	6bc060ef          	jal	1a010 <__floatsidf>
   13958:	01012603          	lw	a2,16(sp)
   1395c:	01412683          	lw	a3,20(sp)
   13960:	7e1050ef          	jal	19940 <__muldf3>
   13964:	0001d7b7          	lui	a5,0x1d
   13968:	2c07a603          	lw	a2,704(a5) # 1d2c0 <__wctomb+0x38>
   1396c:	2c47a683          	lw	a3,708(a5)
   13970:	01b12423          	sw	s11,8(sp)
   13974:	721050ef          	jal	19894 <__adddf3>
   13978:	fcc007b7          	lui	a5,0xfcc00
   1397c:	00050813          	mv	a6,a0
   13980:	00b788b3          	add	a7,a5,a1
   13984:	00812303          	lw	t1,8(sp)
   13988:	8b4ff06f          	j	12a3c <_dtoa_r+0x4bc>
   1398c:	03812603          	lw	a2,56(sp)
   13990:	03c12683          	lw	a3,60(sp)
   13994:	2d0aa503          	lw	a0,720(s5)
   13998:	2d4aa583          	lw	a1,724(s5)
   1399c:	01012423          	sw	a6,8(sp)
   139a0:	01112623          	sw	a7,12(sp)
   139a4:	741050ef          	jal	198e4 <__subdf3>
   139a8:	00812803          	lw	a6,8(sp)
   139ac:	00c12883          	lw	a7,12(sp)
   139b0:	00080613          	mv	a2,a6
   139b4:	00088693          	mv	a3,a7
   139b8:	59c060ef          	jal	19f54 <__gtdf2>
   139bc:	03000613          	li	a2,48
   139c0:	00a04663          	bgtz	a0,139cc <_dtoa_r+0x144c>
   139c4:	cb9ff06f          	j	1367c <_dtoa_r+0x10fc>
   139c8:	00068d93          	mv	s11,a3
   139cc:	fffdc703          	lbu	a4,-1(s11)
   139d0:	fffd8693          	addi	a3,s11,-1
   139d4:	fec70ae3          	beq	a4,a2,139c8 <_dtoa_r+0x1448>
   139d8:	a40ff06f          	j	12c18 <_dtoa_r+0x698>
   139dc:	04c12b83          	lw	s7,76(sp)
   139e0:	cd8ff06f          	j	12eb8 <_dtoa_r+0x938>
   139e4:	a6051ee3          	bnez	a0,13460 <_dtoa_r+0xee0>
   139e8:	001cf793          	andi	a5,s9,1
   139ec:	a6078ae3          	beqz	a5,13460 <_dtoa_r+0xee0>
   139f0:	aadff06f          	j	1349c <_dtoa_r+0xf1c>
   139f4:	000a8593          	mv	a1,s5
   139f8:	00000693          	li	a3,0
   139fc:	00a00613          	li	a2,10
   13a00:	00040513          	mv	a0,s0
   13a04:	155010ef          	jal	15358 <__multadd>
   13a08:	02812783          	lw	a5,40(sp)
   13a0c:	00050a93          	mv	s5,a0
   13a10:	00078b13          	mv	s6,a5
   13a14:	eef04863          	bgtz	a5,13104 <_dtoa_r+0xb84>
   13a18:	00200793          	li	a5,2
   13a1c:	0147ce63          	blt	a5,s4,13a38 <_dtoa_r+0x14b8>
   13a20:	02812b03          	lw	s6,40(sp)
   13a24:	ee0ff06f          	j	13104 <_dtoa_r+0xb84>
   13a28:	e8d70c63          	beq	a4,a3,130c0 <_dtoa_r+0xb40>
   13a2c:	03c00713          	li	a4,60
   13a30:	40f707b3          	sub	a5,a4,a5
   13a34:	e78ff06f          	j	130ac <_dtoa_r+0xb2c>
   13a38:	02812b03          	lw	s6,40(sp)
   13a3c:	af1ff06f          	j	1352c <_dtoa_r+0xfac>

00013a40 <__sflush_r>:
   13a40:	00c59783          	lh	a5,12(a1)
   13a44:	fe010113          	addi	sp,sp,-32
   13a48:	00912a23          	sw	s1,20(sp)
   13a4c:	01079713          	slli	a4,a5,0x10
   13a50:	01075713          	srli	a4,a4,0x10
   13a54:	01312623          	sw	s3,12(sp)
   13a58:	00112e23          	sw	ra,28(sp)
   13a5c:	00812c23          	sw	s0,24(sp)
   13a60:	01212823          	sw	s2,16(sp)
   13a64:	00877693          	andi	a3,a4,8
   13a68:	00058493          	mv	s1,a1
   13a6c:	00050993          	mv	s3,a0
   13a70:	10069a63          	bnez	a3,13b84 <__sflush_r+0x144>
   13a74:	00001737          	lui	a4,0x1
   13a78:	80070713          	addi	a4,a4,-2048 # 800 <_ftext-0xf800>
   13a7c:	0045a683          	lw	a3,4(a1)
   13a80:	00e7e7b3          	or	a5,a5,a4
   13a84:	00f59623          	sh	a5,12(a1)
   13a88:	1cd05663          	blez	a3,13c54 <__sflush_r+0x214>
   13a8c:	0284a803          	lw	a6,40(s1)
   13a90:	0c080a63          	beqz	a6,13b64 <__sflush_r+0x124>
   13a94:	01079793          	slli	a5,a5,0x10
   13a98:	0107d793          	srli	a5,a5,0x10
   13a9c:	0009a403          	lw	s0,0(s3)
   13aa0:	01379713          	slli	a4,a5,0x13
   13aa4:	0009a023          	sw	zero,0(s3)
   13aa8:	1a075c63          	bgez	a4,13c60 <__sflush_r+0x220>
   13aac:	0504a603          	lw	a2,80(s1)
   13ab0:	41f65693          	srai	a3,a2,0x1f
   13ab4:	0047f793          	andi	a5,a5,4
   13ab8:	04078263          	beqz	a5,13afc <__sflush_r+0xbc>
   13abc:	0044a783          	lw	a5,4(s1)
   13ac0:	0304a583          	lw	a1,48(s1)
   13ac4:	40f60733          	sub	a4,a2,a5
   13ac8:	41f7d793          	srai	a5,a5,0x1f
   13acc:	00e63533          	sltu	a0,a2,a4
   13ad0:	40f686b3          	sub	a3,a3,a5
   13ad4:	00070613          	mv	a2,a4
   13ad8:	40a686b3          	sub	a3,a3,a0
   13adc:	02058063          	beqz	a1,13afc <__sflush_r+0xbc>
   13ae0:	03c4a783          	lw	a5,60(s1)
   13ae4:	40f70733          	sub	a4,a4,a5
   13ae8:	41f7d793          	srai	a5,a5,0x1f
   13aec:	00e635b3          	sltu	a1,a2,a4
   13af0:	40f686b3          	sub	a3,a3,a5
   13af4:	00070613          	mv	a2,a4
   13af8:	40b686b3          	sub	a3,a3,a1
   13afc:	01c4a583          	lw	a1,28(s1)
   13b00:	00000713          	li	a4,0
   13b04:	00098513          	mv	a0,s3
   13b08:	000800e7          	jalr	a6
   13b0c:	fff00793          	li	a5,-1
   13b10:	0ef50063          	beq	a0,a5,13bf0 <__sflush_r+0x1b0>
   13b14:	00c4d783          	lhu	a5,12(s1)
   13b18:	fffff737          	lui	a4,0xfffff
   13b1c:	7ff70713          	addi	a4,a4,2047 # fffff7ff <_gp+0xfffe1d8f>
   13b20:	00e7f7b3          	and	a5,a5,a4
   13b24:	0104a683          	lw	a3,16(s1)
   13b28:	01079793          	slli	a5,a5,0x10
   13b2c:	4107d793          	srai	a5,a5,0x10
   13b30:	00f49623          	sh	a5,12(s1)
   13b34:	0004a223          	sw	zero,4(s1)
   13b38:	00d4a023          	sw	a3,0(s1)
   13b3c:	01379713          	slli	a4,a5,0x13
   13b40:	10074663          	bltz	a4,13c4c <__sflush_r+0x20c>
   13b44:	0304a583          	lw	a1,48(s1)
   13b48:	0089a023          	sw	s0,0(s3)
   13b4c:	00058c63          	beqz	a1,13b64 <__sflush_r+0x124>
   13b50:	04048793          	addi	a5,s1,64
   13b54:	00f58663          	beq	a1,a5,13b60 <__sflush_r+0x120>
   13b58:	00098513          	mv	a0,s3
   13b5c:	674000ef          	jal	141d0 <_free_r>
   13b60:	0204a823          	sw	zero,48(s1)
   13b64:	00000513          	li	a0,0
   13b68:	01c12083          	lw	ra,28(sp)
   13b6c:	01812403          	lw	s0,24(sp)
   13b70:	01412483          	lw	s1,20(sp)
   13b74:	01012903          	lw	s2,16(sp)
   13b78:	00c12983          	lw	s3,12(sp)
   13b7c:	02010113          	addi	sp,sp,32
   13b80:	00008067          	ret
   13b84:	0105a903          	lw	s2,16(a1)
   13b88:	fc090ee3          	beqz	s2,13b64 <__sflush_r+0x124>
   13b8c:	0005a403          	lw	s0,0(a1)
   13b90:	00377713          	andi	a4,a4,3
   13b94:	0125a023          	sw	s2,0(a1)
   13b98:	41240433          	sub	s0,s0,s2
   13b9c:	00000793          	li	a5,0
   13ba0:	00071463          	bnez	a4,13ba8 <__sflush_r+0x168>
   13ba4:	0145a783          	lw	a5,20(a1)
   13ba8:	00f4a423          	sw	a5,8(s1)
   13bac:	00804863          	bgtz	s0,13bbc <__sflush_r+0x17c>
   13bb0:	fb5ff06f          	j	13b64 <__sflush_r+0x124>
   13bb4:	00a90933          	add	s2,s2,a0
   13bb8:	fa8056e3          	blez	s0,13b64 <__sflush_r+0x124>
   13bbc:	0244a783          	lw	a5,36(s1)
   13bc0:	01c4a583          	lw	a1,28(s1)
   13bc4:	00040693          	mv	a3,s0
   13bc8:	00090613          	mv	a2,s2
   13bcc:	00098513          	mv	a0,s3
   13bd0:	000780e7          	jalr	a5
   13bd4:	40a40433          	sub	s0,s0,a0
   13bd8:	fca04ee3          	bgtz	a0,13bb4 <__sflush_r+0x174>
   13bdc:	00c4d783          	lhu	a5,12(s1)
   13be0:	fff00513          	li	a0,-1
   13be4:	0407e793          	ori	a5,a5,64
   13be8:	00f49623          	sh	a5,12(s1)
   13bec:	f7dff06f          	j	13b68 <__sflush_r+0x128>
   13bf0:	f2a592e3          	bne	a1,a0,13b14 <__sflush_r+0xd4>
   13bf4:	0009a683          	lw	a3,0(s3)
   13bf8:	01d00793          	li	a5,29
   13bfc:	fed7e0e3          	bltu	a5,a3,13bdc <__sflush_r+0x19c>
   13c00:	204007b7          	lui	a5,0x20400
   13c04:	00178793          	addi	a5,a5,1 # 20400001 <_gp+0x203e2591>
   13c08:	00d7d7b3          	srl	a5,a5,a3
   13c0c:	fff7c793          	not	a5,a5
   13c10:	0017f793          	andi	a5,a5,1
   13c14:	fc0794e3          	bnez	a5,13bdc <__sflush_r+0x19c>
   13c18:	00c4d783          	lhu	a5,12(s1)
   13c1c:	fffff737          	lui	a4,0xfffff
   13c20:	7ff70713          	addi	a4,a4,2047 # fffff7ff <_gp+0xfffe1d8f>
   13c24:	00e7f7b3          	and	a5,a5,a4
   13c28:	0104a603          	lw	a2,16(s1)
   13c2c:	01079793          	slli	a5,a5,0x10
   13c30:	4107d793          	srai	a5,a5,0x10
   13c34:	00f49623          	sh	a5,12(s1)
   13c38:	0004a223          	sw	zero,4(s1)
   13c3c:	00c4a023          	sw	a2,0(s1)
   13c40:	01379713          	slli	a4,a5,0x13
   13c44:	f00750e3          	bgez	a4,13b44 <__sflush_r+0x104>
   13c48:	ee069ee3          	bnez	a3,13b44 <__sflush_r+0x104>
   13c4c:	04a4a823          	sw	a0,80(s1)
   13c50:	ef5ff06f          	j	13b44 <__sflush_r+0x104>
   13c54:	03c5a703          	lw	a4,60(a1)
   13c58:	e2e04ae3          	bgtz	a4,13a8c <__sflush_r+0x4c>
   13c5c:	f09ff06f          	j	13b64 <__sflush_r+0x124>
   13c60:	01c4a583          	lw	a1,28(s1)
   13c64:	00000613          	li	a2,0
   13c68:	00000693          	li	a3,0
   13c6c:	00100713          	li	a4,1
   13c70:	00098513          	mv	a0,s3
   13c74:	000800e7          	jalr	a6
   13c78:	fff00793          	li	a5,-1
   13c7c:	00050613          	mv	a2,a0
   13c80:	00058693          	mv	a3,a1
   13c84:	00f50863          	beq	a0,a5,13c94 <__sflush_r+0x254>
   13c88:	00c4d783          	lhu	a5,12(s1)
   13c8c:	0284a803          	lw	a6,40(s1)
   13c90:	e25ff06f          	j	13ab4 <__sflush_r+0x74>
   13c94:	fea59ae3          	bne	a1,a0,13c88 <__sflush_r+0x248>
   13c98:	0009a783          	lw	a5,0(s3)
   13c9c:	fe0786e3          	beqz	a5,13c88 <__sflush_r+0x248>
   13ca0:	01d00713          	li	a4,29
   13ca4:	00e78663          	beq	a5,a4,13cb0 <__sflush_r+0x270>
   13ca8:	01600713          	li	a4,22
   13cac:	f2e798e3          	bne	a5,a4,13bdc <__sflush_r+0x19c>
   13cb0:	0089a023          	sw	s0,0(s3)
   13cb4:	00000513          	li	a0,0
   13cb8:	eb1ff06f          	j	13b68 <__sflush_r+0x128>

00013cbc <_fflush_r>:
   13cbc:	fe010113          	addi	sp,sp,-32
   13cc0:	00812c23          	sw	s0,24(sp)
   13cc4:	00112e23          	sw	ra,28(sp)
   13cc8:	00050413          	mv	s0,a0
   13ccc:	00050663          	beqz	a0,13cd8 <_fflush_r+0x1c>
   13cd0:	03852783          	lw	a5,56(a0)
   13cd4:	02078a63          	beqz	a5,13d08 <_fflush_r+0x4c>
   13cd8:	00c59783          	lh	a5,12(a1)
   13cdc:	00079c63          	bnez	a5,13cf4 <_fflush_r+0x38>
   13ce0:	01c12083          	lw	ra,28(sp)
   13ce4:	00000513          	li	a0,0
   13ce8:	01812403          	lw	s0,24(sp)
   13cec:	02010113          	addi	sp,sp,32
   13cf0:	00008067          	ret
   13cf4:	00040513          	mv	a0,s0
   13cf8:	01c12083          	lw	ra,28(sp)
   13cfc:	01812403          	lw	s0,24(sp)
   13d00:	02010113          	addi	sp,sp,32
   13d04:	d3dff06f          	j	13a40 <__sflush_r>
   13d08:	00b12623          	sw	a1,12(sp)
   13d0c:	370000ef          	jal	1407c <__sinit>
   13d10:	00c12583          	lw	a1,12(sp)
   13d14:	fc5ff06f          	j	13cd8 <_fflush_r+0x1c>

00013d18 <fflush>:
   13d18:	00050593          	mv	a1,a0
   13d1c:	00050663          	beqz	a0,13d28 <fflush+0x10>
   13d20:	8081a503          	lw	a0,-2040(gp) # 1d278 <_impure_ptr>
   13d24:	f99ff06f          	j	13cbc <_fflush_r>
   13d28:	8041a503          	lw	a0,-2044(gp) # 1d274 <_global_impure_ptr>
   13d2c:	000145b7          	lui	a1,0x14
   13d30:	cbc58593          	addi	a1,a1,-836 # 13cbc <_fflush_r>
   13d34:	02d0006f          	j	14560 <_fwalk_reent>

00013d38 <__fp_unlock>:
   13d38:	00000513          	li	a0,0
   13d3c:	00008067          	ret

00013d40 <_cleanup_r>:
   13d40:	000185b7          	lui	a1,0x18
   13d44:	9d058593          	addi	a1,a1,-1584 # 179d0 <_fclose_r>
   13d48:	0190006f          	j	14560 <_fwalk_reent>

00013d4c <__sinit.part.1>:
   13d4c:	fe010113          	addi	sp,sp,-32
   13d50:	000147b7          	lui	a5,0x14
   13d54:	00112e23          	sw	ra,28(sp)
   13d58:	00812c23          	sw	s0,24(sp)
   13d5c:	00912a23          	sw	s1,20(sp)
   13d60:	00452403          	lw	s0,4(a0)
   13d64:	01212823          	sw	s2,16(sp)
   13d68:	01312623          	sw	s3,12(sp)
   13d6c:	01412423          	sw	s4,8(sp)
   13d70:	01512223          	sw	s5,4(sp)
   13d74:	01612023          	sw	s6,0(sp)
   13d78:	d4078793          	addi	a5,a5,-704 # 13d40 <_cleanup_r>
   13d7c:	02f52e23          	sw	a5,60(a0)
   13d80:	2ec50713          	addi	a4,a0,748
   13d84:	00300793          	li	a5,3
   13d88:	2ee52423          	sw	a4,744(a0)
   13d8c:	2ef52223          	sw	a5,740(a0)
   13d90:	2e052023          	sw	zero,736(a0)
   13d94:	00400793          	li	a5,4
   13d98:	00050913          	mv	s2,a0
   13d9c:	00f41623          	sh	a5,12(s0)
   13da0:	00800613          	li	a2,8
   13da4:	00000593          	li	a1,0
   13da8:	00042023          	sw	zero,0(s0)
   13dac:	00042223          	sw	zero,4(s0)
   13db0:	00042423          	sw	zero,8(s0)
   13db4:	06042223          	sw	zero,100(s0)
   13db8:	00041723          	sh	zero,14(s0)
   13dbc:	00042823          	sw	zero,16(s0)
   13dc0:	00042a23          	sw	zero,20(s0)
   13dc4:	00042c23          	sw	zero,24(s0)
   13dc8:	05c40513          	addi	a0,s0,92
   13dcc:	3e0010ef          	jal	151ac <memset>
   13dd0:	00016b37          	lui	s6,0x16
   13dd4:	00892483          	lw	s1,8(s2)
   13dd8:	00016ab7          	lui	s5,0x16
   13ddc:	00016a37          	lui	s4,0x16
   13de0:	000169b7          	lui	s3,0x16
   13de4:	414b0b13          	addi	s6,s6,1044 # 16414 <__sread>
   13de8:	478a8a93          	addi	s5,s5,1144 # 16478 <__swrite>
   13dec:	4fca0a13          	addi	s4,s4,1276 # 164fc <__sseek>
   13df0:	57098993          	addi	s3,s3,1392 # 16570 <__sclose>
   13df4:	03642023          	sw	s6,32(s0)
   13df8:	03542223          	sw	s5,36(s0)
   13dfc:	03442423          	sw	s4,40(s0)
   13e00:	03342623          	sw	s3,44(s0)
   13e04:	00842e23          	sw	s0,28(s0)
   13e08:	00900793          	li	a5,9
   13e0c:	00f49623          	sh	a5,12(s1)
   13e10:	00100793          	li	a5,1
   13e14:	00f49723          	sh	a5,14(s1)
   13e18:	00800613          	li	a2,8
   13e1c:	00000593          	li	a1,0
   13e20:	0004a023          	sw	zero,0(s1)
   13e24:	0004a223          	sw	zero,4(s1)
   13e28:	0004a423          	sw	zero,8(s1)
   13e2c:	0604a223          	sw	zero,100(s1)
   13e30:	0004a823          	sw	zero,16(s1)
   13e34:	0004aa23          	sw	zero,20(s1)
   13e38:	0004ac23          	sw	zero,24(s1)
   13e3c:	05c48513          	addi	a0,s1,92
   13e40:	36c010ef          	jal	151ac <memset>
   13e44:	00c92403          	lw	s0,12(s2)
   13e48:	01200793          	li	a5,18
   13e4c:	0364a023          	sw	s6,32(s1)
   13e50:	0354a223          	sw	s5,36(s1)
   13e54:	0344a423          	sw	s4,40(s1)
   13e58:	0334a623          	sw	s3,44(s1)
   13e5c:	0094ae23          	sw	s1,28(s1)
   13e60:	00f41623          	sh	a5,12(s0)
   13e64:	00200793          	li	a5,2
   13e68:	00f41723          	sh	a5,14(s0)
   13e6c:	00042023          	sw	zero,0(s0)
   13e70:	00042223          	sw	zero,4(s0)
   13e74:	00042423          	sw	zero,8(s0)
   13e78:	06042223          	sw	zero,100(s0)
   13e7c:	00042823          	sw	zero,16(s0)
   13e80:	00042a23          	sw	zero,20(s0)
   13e84:	00042c23          	sw	zero,24(s0)
   13e88:	05c40513          	addi	a0,s0,92
   13e8c:	00800613          	li	a2,8
   13e90:	00000593          	li	a1,0
   13e94:	318010ef          	jal	151ac <memset>
   13e98:	01c12083          	lw	ra,28(sp)
   13e9c:	03642023          	sw	s6,32(s0)
   13ea0:	03542223          	sw	s5,36(s0)
   13ea4:	03442423          	sw	s4,40(s0)
   13ea8:	03342623          	sw	s3,44(s0)
   13eac:	00842e23          	sw	s0,28(s0)
   13eb0:	00100793          	li	a5,1
   13eb4:	02f92c23          	sw	a5,56(s2)
   13eb8:	01812403          	lw	s0,24(sp)
   13ebc:	01412483          	lw	s1,20(sp)
   13ec0:	01012903          	lw	s2,16(sp)
   13ec4:	00c12983          	lw	s3,12(sp)
   13ec8:	00812a03          	lw	s4,8(sp)
   13ecc:	00412a83          	lw	s5,4(sp)
   13ed0:	00012b03          	lw	s6,0(sp)
   13ed4:	02010113          	addi	sp,sp,32
   13ed8:	00008067          	ret

00013edc <__fp_lock>:
   13edc:	00000513          	li	a0,0
   13ee0:	00008067          	ret

00013ee4 <__sfmoreglue>:
   13ee4:	ff010113          	addi	sp,sp,-16
   13ee8:	01212023          	sw	s2,0(sp)
   13eec:	00058913          	mv	s2,a1
   13ef0:	00812423          	sw	s0,8(sp)
   13ef4:	06800593          	li	a1,104
   13ef8:	00050413          	mv	s0,a0
   13efc:	fff90513          	addi	a0,s2,-1
   13f00:	00112623          	sw	ra,12(sp)
   13f04:	00912223          	sw	s1,4(sp)
   13f08:	3d4060ef          	jal	1a2dc <__mulsi3>
   13f0c:	07450593          	addi	a1,a0,116
   13f10:	00050493          	mv	s1,a0
   13f14:	00040513          	mv	a0,s0
   13f18:	169000ef          	jal	14880 <_malloc_r>
   13f1c:	00050413          	mv	s0,a0
   13f20:	02050063          	beqz	a0,13f40 <__sfmoreglue+0x5c>
   13f24:	00c50513          	addi	a0,a0,12
   13f28:	00042023          	sw	zero,0(s0)
   13f2c:	01242223          	sw	s2,4(s0)
   13f30:	00a42423          	sw	a0,8(s0)
   13f34:	06848613          	addi	a2,s1,104
   13f38:	00000593          	li	a1,0
   13f3c:	270010ef          	jal	151ac <memset>
   13f40:	00c12083          	lw	ra,12(sp)
   13f44:	00040513          	mv	a0,s0
   13f48:	00412483          	lw	s1,4(sp)
   13f4c:	00812403          	lw	s0,8(sp)
   13f50:	00012903          	lw	s2,0(sp)
   13f54:	01010113          	addi	sp,sp,16
   13f58:	00008067          	ret

00013f5c <__sfp>:
   13f5c:	fe010113          	addi	sp,sp,-32
   13f60:	01212823          	sw	s2,16(sp)
   13f64:	8041a903          	lw	s2,-2044(gp) # 1d274 <_global_impure_ptr>
   13f68:	01312623          	sw	s3,12(sp)
   13f6c:	00112e23          	sw	ra,28(sp)
   13f70:	03892783          	lw	a5,56(s2)
   13f74:	00812c23          	sw	s0,24(sp)
   13f78:	00912a23          	sw	s1,20(sp)
   13f7c:	01412423          	sw	s4,8(sp)
   13f80:	00050993          	mv	s3,a0
   13f84:	0a078c63          	beqz	a5,1403c <__sfp+0xe0>
   13f88:	2e090913          	addi	s2,s2,736
   13f8c:	fff00493          	li	s1,-1
   13f90:	00400a13          	li	s4,4
   13f94:	00492783          	lw	a5,4(s2)
   13f98:	00892403          	lw	s0,8(s2)
   13f9c:	fff78793          	addi	a5,a5,-1
   13fa0:	0007da63          	bgez	a5,13fb4 <__sfp+0x58>
   13fa4:	0880006f          	j	1402c <__sfp+0xd0>
   13fa8:	fff78793          	addi	a5,a5,-1
   13fac:	06840413          	addi	s0,s0,104
   13fb0:	06978e63          	beq	a5,s1,1402c <__sfp+0xd0>
   13fb4:	00c41703          	lh	a4,12(s0)
   13fb8:	fe0718e3          	bnez	a4,13fa8 <__sfp+0x4c>
   13fbc:	fff00793          	li	a5,-1
   13fc0:	00f41723          	sh	a5,14(s0)
   13fc4:	00100793          	li	a5,1
   13fc8:	00f41623          	sh	a5,12(s0)
   13fcc:	06042223          	sw	zero,100(s0)
   13fd0:	00042023          	sw	zero,0(s0)
   13fd4:	00042423          	sw	zero,8(s0)
   13fd8:	00042223          	sw	zero,4(s0)
   13fdc:	00042823          	sw	zero,16(s0)
   13fe0:	00042a23          	sw	zero,20(s0)
   13fe4:	00042c23          	sw	zero,24(s0)
   13fe8:	00800613          	li	a2,8
   13fec:	00000593          	li	a1,0
   13ff0:	05c40513          	addi	a0,s0,92
   13ff4:	1b8010ef          	jal	151ac <memset>
   13ff8:	02042823          	sw	zero,48(s0)
   13ffc:	02042a23          	sw	zero,52(s0)
   14000:	04042223          	sw	zero,68(s0)
   14004:	04042423          	sw	zero,72(s0)
   14008:	01c12083          	lw	ra,28(sp)
   1400c:	00040513          	mv	a0,s0
   14010:	01412483          	lw	s1,20(sp)
   14014:	01812403          	lw	s0,24(sp)
   14018:	01012903          	lw	s2,16(sp)
   1401c:	00c12983          	lw	s3,12(sp)
   14020:	00812a03          	lw	s4,8(sp)
   14024:	02010113          	addi	sp,sp,32
   14028:	00008067          	ret
   1402c:	00092503          	lw	a0,0(s2)
   14030:	00050c63          	beqz	a0,14048 <__sfp+0xec>
   14034:	00050913          	mv	s2,a0
   14038:	f5dff06f          	j	13f94 <__sfp+0x38>
   1403c:	00090513          	mv	a0,s2
   14040:	d0dff0ef          	jal	13d4c <__sinit.part.1>
   14044:	f45ff06f          	j	13f88 <__sfp+0x2c>
   14048:	000a0593          	mv	a1,s4
   1404c:	00098513          	mv	a0,s3
   14050:	e95ff0ef          	jal	13ee4 <__sfmoreglue>
   14054:	00a92023          	sw	a0,0(s2)
   14058:	fc051ee3          	bnez	a0,14034 <__sfp+0xd8>
   1405c:	00c00793          	li	a5,12
   14060:	00f9a023          	sw	a5,0(s3)
   14064:	00000413          	li	s0,0
   14068:	fa1ff06f          	j	14008 <__sfp+0xac>

0001406c <_cleanup>:
   1406c:	8041a503          	lw	a0,-2044(gp) # 1d274 <_global_impure_ptr>
   14070:	000185b7          	lui	a1,0x18
   14074:	9d058593          	addi	a1,a1,-1584 # 179d0 <_fclose_r>
   14078:	4e80006f          	j	14560 <_fwalk_reent>

0001407c <__sinit>:
   1407c:	03852783          	lw	a5,56(a0)
   14080:	00078463          	beqz	a5,14088 <__sinit+0xc>
   14084:	00008067          	ret
   14088:	cc5ff06f          	j	13d4c <__sinit.part.1>

0001408c <__sfp_lock_acquire>:
   1408c:	00008067          	ret

00014090 <__sfp_lock_release>:
   14090:	00008067          	ret

00014094 <__sinit_lock_acquire>:
   14094:	00008067          	ret

00014098 <__sinit_lock_release>:
   14098:	00008067          	ret

0001409c <__fp_lock_all>:
   1409c:	8081a503          	lw	a0,-2040(gp) # 1d278 <_impure_ptr>
   140a0:	000145b7          	lui	a1,0x14
   140a4:	edc58593          	addi	a1,a1,-292 # 13edc <__fp_lock>
   140a8:	4080006f          	j	144b0 <_fwalk>

000140ac <__fp_unlock_all>:
   140ac:	8081a503          	lw	a0,-2040(gp) # 1d278 <_impure_ptr>
   140b0:	000145b7          	lui	a1,0x14
   140b4:	d3858593          	addi	a1,a1,-712 # 13d38 <__fp_unlock>
   140b8:	3f80006f          	j	144b0 <_fwalk>

000140bc <_malloc_trim_r>:
   140bc:	fe010113          	addi	sp,sp,-32
   140c0:	01212823          	sw	s2,16(sp)
   140c4:	0001d937          	lui	s2,0x1d
   140c8:	00812c23          	sw	s0,24(sp)
   140cc:	00912a23          	sw	s1,20(sp)
   140d0:	01312623          	sw	s3,12(sp)
   140d4:	01412423          	sw	s4,8(sp)
   140d8:	00112e23          	sw	ra,28(sp)
   140dc:	00058a13          	mv	s4,a1
   140e0:	00050993          	mv	s3,a0
   140e4:	e6090913          	addi	s2,s2,-416 # 1ce60 <__malloc_av_>
   140e8:	1a0010ef          	jal	15288 <__malloc_lock>
   140ec:	00892703          	lw	a4,8(s2)
   140f0:	000017b7          	lui	a5,0x1
   140f4:	fef78413          	addi	s0,a5,-17 # fef <_ftext-0xf011>
   140f8:	00472483          	lw	s1,4(a4)
   140fc:	41440433          	sub	s0,s0,s4
   14100:	ffc4f493          	andi	s1,s1,-4
   14104:	00940433          	add	s0,s0,s1
   14108:	00c45413          	srli	s0,s0,0xc
   1410c:	fff40413          	addi	s0,s0,-1
   14110:	00c41413          	slli	s0,s0,0xc
   14114:	00f44e63          	blt	s0,a5,14130 <_malloc_trim_r+0x74>
   14118:	00000593          	li	a1,0
   1411c:	00098513          	mv	a0,s3
   14120:	224020ef          	jal	16344 <_sbrk_r>
   14124:	00892783          	lw	a5,8(s2)
   14128:	009787b3          	add	a5,a5,s1
   1412c:	02f50863          	beq	a0,a5,1415c <_malloc_trim_r+0xa0>
   14130:	00098513          	mv	a0,s3
   14134:	158010ef          	jal	1528c <__malloc_unlock>
   14138:	00000513          	li	a0,0
   1413c:	01c12083          	lw	ra,28(sp)
   14140:	01812403          	lw	s0,24(sp)
   14144:	01412483          	lw	s1,20(sp)
   14148:	01012903          	lw	s2,16(sp)
   1414c:	00c12983          	lw	s3,12(sp)
   14150:	00812a03          	lw	s4,8(sp)
   14154:	02010113          	addi	sp,sp,32
   14158:	00008067          	ret
   1415c:	408005b3          	neg	a1,s0
   14160:	00098513          	mv	a0,s3
   14164:	1e0020ef          	jal	16344 <_sbrk_r>
   14168:	fff00793          	li	a5,-1
   1416c:	02f50863          	beq	a0,a5,1419c <_malloc_trim_r+0xe0>
   14170:	8b81a783          	lw	a5,-1864(gp) # 1d328 <__malloc_current_mallinfo>
   14174:	00892683          	lw	a3,8(s2)
   14178:	408484b3          	sub	s1,s1,s0
   1417c:	0014e493          	ori	s1,s1,1
   14180:	40878433          	sub	s0,a5,s0
   14184:	00098513          	mv	a0,s3
   14188:	0096a223          	sw	s1,4(a3)
   1418c:	8a81ac23          	sw	s0,-1864(gp) # 1d328 <__malloc_current_mallinfo>
   14190:	0fc010ef          	jal	1528c <__malloc_unlock>
   14194:	00100513          	li	a0,1
   14198:	fa5ff06f          	j	1413c <_malloc_trim_r+0x80>
   1419c:	00000593          	li	a1,0
   141a0:	00098513          	mv	a0,s3
   141a4:	1a0020ef          	jal	16344 <_sbrk_r>
   141a8:	00892703          	lw	a4,8(s2)
   141ac:	00f00693          	li	a3,15
   141b0:	40e507b3          	sub	a5,a0,a4
   141b4:	f6f6dee3          	ble	a5,a3,14130 <_malloc_trim_r+0x74>
   141b8:	8101a683          	lw	a3,-2032(gp) # 1d280 <__malloc_sbrk_base>
   141bc:	0017e793          	ori	a5,a5,1
   141c0:	00f72223          	sw	a5,4(a4)
   141c4:	40d50533          	sub	a0,a0,a3
   141c8:	8aa1ac23          	sw	a0,-1864(gp) # 1d328 <__malloc_current_mallinfo>
   141cc:	f65ff06f          	j	14130 <_malloc_trim_r+0x74>

000141d0 <_free_r>:
   141d0:	0e058e63          	beqz	a1,142cc <_free_r+0xfc>
   141d4:	ff010113          	addi	sp,sp,-16
   141d8:	00812423          	sw	s0,8(sp)
   141dc:	00912223          	sw	s1,4(sp)
   141e0:	00058413          	mv	s0,a1
   141e4:	00050493          	mv	s1,a0
   141e8:	00112623          	sw	ra,12(sp)
   141ec:	09c010ef          	jal	15288 <__malloc_lock>
   141f0:	ffc42503          	lw	a0,-4(s0)
   141f4:	ff840693          	addi	a3,s0,-8
   141f8:	0001d5b7          	lui	a1,0x1d
   141fc:	ffe57793          	andi	a5,a0,-2
   14200:	00f68633          	add	a2,a3,a5
   14204:	e6058593          	addi	a1,a1,-416 # 1ce60 <__malloc_av_>
   14208:	00462703          	lw	a4,4(a2)
   1420c:	0085a803          	lw	a6,8(a1)
   14210:	ffc77713          	andi	a4,a4,-4
   14214:	15060463          	beq	a2,a6,1435c <_free_r+0x18c>
   14218:	00e62223          	sw	a4,4(a2)
   1421c:	00157513          	andi	a0,a0,1
   14220:	02051663          	bnez	a0,1424c <_free_r+0x7c>
   14224:	ff842883          	lw	a7,-8(s0)
   14228:	0001d537          	lui	a0,0x1d
   1422c:	e6850513          	addi	a0,a0,-408 # 1ce68 <__malloc_av_+0x8>
   14230:	411686b3          	sub	a3,a3,a7
   14234:	0086a803          	lw	a6,8(a3)
   14238:	011787b3          	add	a5,a5,a7
   1423c:	16a80a63          	beq	a6,a0,143b0 <_free_r+0x1e0>
   14240:	00c6a503          	lw	a0,12(a3)
   14244:	00a82623          	sw	a0,12(a6)
   14248:	01052423          	sw	a6,8(a0)
   1424c:	00e60533          	add	a0,a2,a4
   14250:	00452503          	lw	a0,4(a0)
   14254:	00157513          	andi	a0,a0,1
   14258:	0c050863          	beqz	a0,14328 <_free_r+0x158>
   1425c:	0017e713          	ori	a4,a5,1
   14260:	00e6a223          	sw	a4,4(a3)
   14264:	00f68733          	add	a4,a3,a5
   14268:	00f72023          	sw	a5,0(a4)
   1426c:	1ff00713          	li	a4,511
   14270:	06f76063          	bltu	a4,a5,142d0 <_free_r+0x100>
   14274:	0037d793          	srli	a5,a5,0x3
   14278:	00178713          	addi	a4,a5,1
   1427c:	00371713          	slli	a4,a4,0x3
   14280:	0045a803          	lw	a6,4(a1)
   14284:	00e58733          	add	a4,a1,a4
   14288:	00072503          	lw	a0,0(a4)
   1428c:	4027d613          	srai	a2,a5,0x2
   14290:	00100793          	li	a5,1
   14294:	00c797b3          	sll	a5,a5,a2
   14298:	0107e7b3          	or	a5,a5,a6
   1429c:	ff870613          	addi	a2,a4,-8
   142a0:	00c6a623          	sw	a2,12(a3)
   142a4:	00a6a423          	sw	a0,8(a3)
   142a8:	00f5a223          	sw	a5,4(a1)
   142ac:	00d72023          	sw	a3,0(a4)
   142b0:	00d52623          	sw	a3,12(a0)
   142b4:	00048513          	mv	a0,s1
   142b8:	00c12083          	lw	ra,12(sp)
   142bc:	00812403          	lw	s0,8(sp)
   142c0:	00412483          	lw	s1,4(sp)
   142c4:	01010113          	addi	sp,sp,16
   142c8:	7c50006f          	j	1528c <__malloc_unlock>
   142cc:	00008067          	ret
   142d0:	0097d713          	srli	a4,a5,0x9
   142d4:	00400613          	li	a2,4
   142d8:	10e66863          	bltu	a2,a4,143e8 <_free_r+0x218>
   142dc:	0067d713          	srli	a4,a5,0x6
   142e0:	03970513          	addi	a0,a4,57
   142e4:	03870613          	addi	a2,a4,56
   142e8:	00351513          	slli	a0,a0,0x3
   142ec:	00a58533          	add	a0,a1,a0
   142f0:	00052703          	lw	a4,0(a0)
   142f4:	ff850513          	addi	a0,a0,-8
   142f8:	10e50463          	beq	a0,a4,14400 <_free_r+0x230>
   142fc:	00472603          	lw	a2,4(a4)
   14300:	ffc67613          	andi	a2,a2,-4
   14304:	0ac7f263          	bleu	a2,a5,143a8 <_free_r+0x1d8>
   14308:	00872703          	lw	a4,8(a4)
   1430c:	fee518e3          	bne	a0,a4,142fc <_free_r+0x12c>
   14310:	00c52783          	lw	a5,12(a0)
   14314:	00f6a623          	sw	a5,12(a3)
   14318:	00a6a423          	sw	a0,8(a3)
   1431c:	00d7a423          	sw	a3,8(a5)
   14320:	00d52623          	sw	a3,12(a0)
   14324:	f91ff06f          	j	142b4 <_free_r+0xe4>
   14328:	00862503          	lw	a0,8(a2)
   1432c:	0001d837          	lui	a6,0x1d
   14330:	e6880813          	addi	a6,a6,-408 # 1ce68 <__malloc_av_+0x8>
   14334:	00e787b3          	add	a5,a5,a4
   14338:	0f050463          	beq	a0,a6,14420 <_free_r+0x250>
   1433c:	00c62803          	lw	a6,12(a2)
   14340:	0017e613          	ori	a2,a5,1
   14344:	00f68733          	add	a4,a3,a5
   14348:	01052623          	sw	a6,12(a0)
   1434c:	00a82423          	sw	a0,8(a6)
   14350:	00c6a223          	sw	a2,4(a3)
   14354:	00f72023          	sw	a5,0(a4)
   14358:	f15ff06f          	j	1426c <_free_r+0x9c>
   1435c:	00157513          	andi	a0,a0,1
   14360:	00e787b3          	add	a5,a5,a4
   14364:	02051063          	bnez	a0,14384 <_free_r+0x1b4>
   14368:	ff842503          	lw	a0,-8(s0)
   1436c:	40a686b3          	sub	a3,a3,a0
   14370:	00c6a703          	lw	a4,12(a3)
   14374:	0086a603          	lw	a2,8(a3)
   14378:	00a787b3          	add	a5,a5,a0
   1437c:	00e62623          	sw	a4,12(a2)
   14380:	00c72423          	sw	a2,8(a4)
   14384:	0017e613          	ori	a2,a5,1
   14388:	8141a703          	lw	a4,-2028(gp) # 1d284 <__malloc_trim_threshold>
   1438c:	00c6a223          	sw	a2,4(a3)
   14390:	00d5a423          	sw	a3,8(a1)
   14394:	f2e7e0e3          	bltu	a5,a4,142b4 <_free_r+0xe4>
   14398:	88c1a583          	lw	a1,-1908(gp) # 1d2fc <__malloc_top_pad>
   1439c:	00048513          	mv	a0,s1
   143a0:	d1dff0ef          	jal	140bc <_malloc_trim_r>
   143a4:	f11ff06f          	j	142b4 <_free_r+0xe4>
   143a8:	00070513          	mv	a0,a4
   143ac:	f65ff06f          	j	14310 <_free_r+0x140>
   143b0:	00e605b3          	add	a1,a2,a4
   143b4:	0045a583          	lw	a1,4(a1)
   143b8:	0015f593          	andi	a1,a1,1
   143bc:	0e059263          	bnez	a1,144a0 <_free_r+0x2d0>
   143c0:	00862583          	lw	a1,8(a2)
   143c4:	00c62603          	lw	a2,12(a2)
   143c8:	00f707b3          	add	a5,a4,a5
   143cc:	0017e713          	ori	a4,a5,1
   143d0:	00c5a623          	sw	a2,12(a1)
   143d4:	00b62423          	sw	a1,8(a2)
   143d8:	00e6a223          	sw	a4,4(a3)
   143dc:	00f686b3          	add	a3,a3,a5
   143e0:	00f6a023          	sw	a5,0(a3)
   143e4:	ed1ff06f          	j	142b4 <_free_r+0xe4>
   143e8:	01400613          	li	a2,20
   143ec:	04e66c63          	bltu	a2,a4,14444 <_free_r+0x274>
   143f0:	05c70513          	addi	a0,a4,92
   143f4:	05b70613          	addi	a2,a4,91
   143f8:	00351513          	slli	a0,a0,0x3
   143fc:	ef1ff06f          	j	142ec <_free_r+0x11c>
   14400:	0045a803          	lw	a6,4(a1)
   14404:	40265713          	srai	a4,a2,0x2
   14408:	00100793          	li	a5,1
   1440c:	00e797b3          	sll	a5,a5,a4
   14410:	0107e7b3          	or	a5,a5,a6
   14414:	00f5a223          	sw	a5,4(a1)
   14418:	00050793          	mv	a5,a0
   1441c:	ef9ff06f          	j	14314 <_free_r+0x144>
   14420:	00d5aa23          	sw	a3,20(a1)
   14424:	00d5a823          	sw	a3,16(a1)
   14428:	0017e713          	ori	a4,a5,1
   1442c:	00a6a623          	sw	a0,12(a3)
   14430:	00a6a423          	sw	a0,8(a3)
   14434:	00e6a223          	sw	a4,4(a3)
   14438:	00f686b3          	add	a3,a3,a5
   1443c:	00f6a023          	sw	a5,0(a3)
   14440:	e75ff06f          	j	142b4 <_free_r+0xe4>
   14444:	05400613          	li	a2,84
   14448:	00e66c63          	bltu	a2,a4,14460 <_free_r+0x290>
   1444c:	00c7d713          	srli	a4,a5,0xc
   14450:	06f70513          	addi	a0,a4,111
   14454:	06e70613          	addi	a2,a4,110
   14458:	00351513          	slli	a0,a0,0x3
   1445c:	e91ff06f          	j	142ec <_free_r+0x11c>
   14460:	15400613          	li	a2,340
   14464:	00e66c63          	bltu	a2,a4,1447c <_free_r+0x2ac>
   14468:	00f7d713          	srli	a4,a5,0xf
   1446c:	07870513          	addi	a0,a4,120
   14470:	07770613          	addi	a2,a4,119
   14474:	00351513          	slli	a0,a0,0x3
   14478:	e75ff06f          	j	142ec <_free_r+0x11c>
   1447c:	55400813          	li	a6,1364
   14480:	3f800513          	li	a0,1016
   14484:	07e00613          	li	a2,126
   14488:	e6e862e3          	bltu	a6,a4,142ec <_free_r+0x11c>
   1448c:	0127d713          	srli	a4,a5,0x12
   14490:	07d70513          	addi	a0,a4,125
   14494:	07c70613          	addi	a2,a4,124
   14498:	00351513          	slli	a0,a0,0x3
   1449c:	e51ff06f          	j	142ec <_free_r+0x11c>
   144a0:	0017e713          	ori	a4,a5,1
   144a4:	00e6a223          	sw	a4,4(a3)
   144a8:	00f62023          	sw	a5,0(a2)
   144ac:	e09ff06f          	j	142b4 <_free_r+0xe4>

000144b0 <_fwalk>:
   144b0:	fe010113          	addi	sp,sp,-32
   144b4:	01512223          	sw	s5,4(sp)
   144b8:	00112e23          	sw	ra,28(sp)
   144bc:	00812c23          	sw	s0,24(sp)
   144c0:	00912a23          	sw	s1,20(sp)
   144c4:	01212823          	sw	s2,16(sp)
   144c8:	01312623          	sw	s3,12(sp)
   144cc:	01412423          	sw	s4,8(sp)
   144d0:	01612023          	sw	s6,0(sp)
   144d4:	2e050a93          	addi	s5,a0,736
   144d8:	080a8063          	beqz	s5,14558 <_fwalk+0xa8>
   144dc:	00058b13          	mv	s6,a1
   144e0:	00000a13          	li	s4,0
   144e4:	00100993          	li	s3,1
   144e8:	fff00913          	li	s2,-1
   144ec:	004aa483          	lw	s1,4(s5)
   144f0:	008aa403          	lw	s0,8(s5)
   144f4:	fff48493          	addi	s1,s1,-1
   144f8:	0204c663          	bltz	s1,14524 <_fwalk+0x74>
   144fc:	00c45783          	lhu	a5,12(s0)
   14500:	fff48493          	addi	s1,s1,-1
   14504:	00f9fc63          	bleu	a5,s3,1451c <_fwalk+0x6c>
   14508:	00e41783          	lh	a5,14(s0)
   1450c:	00040513          	mv	a0,s0
   14510:	01278663          	beq	a5,s2,1451c <_fwalk+0x6c>
   14514:	000b00e7          	jalr	s6
   14518:	00aa6a33          	or	s4,s4,a0
   1451c:	06840413          	addi	s0,s0,104
   14520:	fd249ee3          	bne	s1,s2,144fc <_fwalk+0x4c>
   14524:	000aaa83          	lw	s5,0(s5)
   14528:	fc0a92e3          	bnez	s5,144ec <_fwalk+0x3c>
   1452c:	01c12083          	lw	ra,28(sp)
   14530:	000a0513          	mv	a0,s4
   14534:	01812403          	lw	s0,24(sp)
   14538:	01412483          	lw	s1,20(sp)
   1453c:	01012903          	lw	s2,16(sp)
   14540:	00c12983          	lw	s3,12(sp)
   14544:	00812a03          	lw	s4,8(sp)
   14548:	00412a83          	lw	s5,4(sp)
   1454c:	00012b03          	lw	s6,0(sp)
   14550:	02010113          	addi	sp,sp,32
   14554:	00008067          	ret
   14558:	00000a13          	li	s4,0
   1455c:	fd1ff06f          	j	1452c <_fwalk+0x7c>

00014560 <_fwalk_reent>:
   14560:	fd010113          	addi	sp,sp,-48
   14564:	01612823          	sw	s6,16(sp)
   14568:	02112623          	sw	ra,44(sp)
   1456c:	02812423          	sw	s0,40(sp)
   14570:	02912223          	sw	s1,36(sp)
   14574:	03212023          	sw	s2,32(sp)
   14578:	01312e23          	sw	s3,28(sp)
   1457c:	01412c23          	sw	s4,24(sp)
   14580:	01512a23          	sw	s5,20(sp)
   14584:	01712623          	sw	s7,12(sp)
   14588:	2e050b13          	addi	s6,a0,736
   1458c:	080b0663          	beqz	s6,14618 <_fwalk_reent+0xb8>
   14590:	00058b93          	mv	s7,a1
   14594:	00050a93          	mv	s5,a0
   14598:	00000a13          	li	s4,0
   1459c:	00100993          	li	s3,1
   145a0:	fff00913          	li	s2,-1
   145a4:	004b2483          	lw	s1,4(s6)
   145a8:	008b2403          	lw	s0,8(s6)
   145ac:	fff48493          	addi	s1,s1,-1
   145b0:	0204c863          	bltz	s1,145e0 <_fwalk_reent+0x80>
   145b4:	00c45783          	lhu	a5,12(s0)
   145b8:	fff48493          	addi	s1,s1,-1
   145bc:	00f9fe63          	bleu	a5,s3,145d8 <_fwalk_reent+0x78>
   145c0:	00e41783          	lh	a5,14(s0)
   145c4:	00040593          	mv	a1,s0
   145c8:	000a8513          	mv	a0,s5
   145cc:	01278663          	beq	a5,s2,145d8 <_fwalk_reent+0x78>
   145d0:	000b80e7          	jalr	s7
   145d4:	00aa6a33          	or	s4,s4,a0
   145d8:	06840413          	addi	s0,s0,104
   145dc:	fd249ce3          	bne	s1,s2,145b4 <_fwalk_reent+0x54>
   145e0:	000b2b03          	lw	s6,0(s6)
   145e4:	fc0b10e3          	bnez	s6,145a4 <_fwalk_reent+0x44>
   145e8:	02c12083          	lw	ra,44(sp)
   145ec:	000a0513          	mv	a0,s4
   145f0:	02812403          	lw	s0,40(sp)
   145f4:	02412483          	lw	s1,36(sp)
   145f8:	02012903          	lw	s2,32(sp)
   145fc:	01c12983          	lw	s3,28(sp)
   14600:	01812a03          	lw	s4,24(sp)
   14604:	01412a83          	lw	s5,20(sp)
   14608:	01012b03          	lw	s6,16(sp)
   1460c:	00c12b83          	lw	s7,12(sp)
   14610:	03010113          	addi	sp,sp,48
   14614:	00008067          	ret
   14618:	00000a13          	li	s4,0
   1461c:	fcdff06f          	j	145e8 <_fwalk_reent+0x88>

00014620 <_setlocale_r>:
   14620:	ff010113          	addi	sp,sp,-16
   14624:	00912223          	sw	s1,4(sp)
   14628:	00112623          	sw	ra,12(sp)
   1462c:	00812423          	sw	s0,8(sp)
   14630:	0001b4b7          	lui	s1,0x1b
   14634:	02060063          	beqz	a2,14654 <_setlocale_r+0x34>
   14638:	0001b5b7          	lui	a1,0x1b
   1463c:	66058593          	addi	a1,a1,1632 # 1b660 <__clz_tab+0x158>
   14640:	00060513          	mv	a0,a2
   14644:	00060413          	mv	s0,a2
   14648:	731010ef          	jal	16578 <strcmp>
   1464c:	0001b4b7          	lui	s1,0x1b
   14650:	00051e63          	bnez	a0,1466c <_setlocale_r+0x4c>
   14654:	60848513          	addi	a0,s1,1544 # 1b608 <__clz_tab+0x100>
   14658:	00c12083          	lw	ra,12(sp)
   1465c:	00812403          	lw	s0,8(sp)
   14660:	00412483          	lw	s1,4(sp)
   14664:	01010113          	addi	sp,sp,16
   14668:	00008067          	ret
   1466c:	60848593          	addi	a1,s1,1544
   14670:	00040513          	mv	a0,s0
   14674:	705010ef          	jal	16578 <strcmp>
   14678:	fc050ee3          	beqz	a0,14654 <_setlocale_r+0x34>
   1467c:	0001b5b7          	lui	a1,0x1b
   14680:	62c58593          	addi	a1,a1,1580 # 1b62c <__clz_tab+0x124>
   14684:	00040513          	mv	a0,s0
   14688:	6f1010ef          	jal	16578 <strcmp>
   1468c:	fc0504e3          	beqz	a0,14654 <_setlocale_r+0x34>
   14690:	00000513          	li	a0,0
   14694:	fc5ff06f          	j	14658 <_setlocale_r+0x38>

00014698 <__locale_charset>:
   14698:	0001d537          	lui	a0,0x1d
   1469c:	de850513          	addi	a0,a0,-536 # 1cde8 <lc_ctype_charset>
   146a0:	00008067          	ret

000146a4 <__locale_mb_cur_max>:
   146a4:	80c1a503          	lw	a0,-2036(gp) # 1d27c <__mb_cur_max>
   146a8:	00008067          	ret

000146ac <__locale_msgcharset>:
   146ac:	0001d537          	lui	a0,0x1d
   146b0:	e0850513          	addi	a0,a0,-504 # 1ce08 <lc_message_charset>
   146b4:	00008067          	ret

000146b8 <__locale_cjk_lang>:
   146b8:	00000513          	li	a0,0
   146bc:	00008067          	ret

000146c0 <_localeconv_r>:
   146c0:	0001d537          	lui	a0,0x1d
   146c4:	e2850513          	addi	a0,a0,-472 # 1ce28 <lconv>
   146c8:	00008067          	ret

000146cc <setlocale>:
   146cc:	00058613          	mv	a2,a1
   146d0:	00050593          	mv	a1,a0
   146d4:	8081a503          	lw	a0,-2040(gp) # 1d278 <_impure_ptr>
   146d8:	f49ff06f          	j	14620 <_setlocale_r>

000146dc <localeconv>:
   146dc:	0001d537          	lui	a0,0x1d
   146e0:	e2850513          	addi	a0,a0,-472 # 1ce28 <lconv>
   146e4:	00008067          	ret

000146e8 <__smakebuf_r>:
   146e8:	00c59783          	lh	a5,12(a1)
   146ec:	01079713          	slli	a4,a5,0x10
   146f0:	01075713          	srli	a4,a4,0x10
   146f4:	00277693          	andi	a3,a4,2
   146f8:	0e069a63          	bnez	a3,147ec <__smakebuf_r+0x104>
   146fc:	f7010113          	addi	sp,sp,-144
   14700:	08812423          	sw	s0,136(sp)
   14704:	00058413          	mv	s0,a1
   14708:	00e59583          	lh	a1,14(a1)
   1470c:	08912223          	sw	s1,132(sp)
   14710:	08112623          	sw	ra,140(sp)
   14714:	09212023          	sw	s2,128(sp)
   14718:	07312e23          	sw	s3,124(sp)
   1471c:	00050493          	mv	s1,a0
   14720:	0405cc63          	bltz	a1,14778 <__smakebuf_r+0x90>
   14724:	00810613          	addi	a2,sp,8
   14728:	5a4030ef          	jal	17ccc <_fstat_r>
   1472c:	04054063          	bltz	a0,1476c <__smakebuf_r+0x84>
   14730:	01812783          	lw	a5,24(sp)
   14734:	0000f737          	lui	a4,0xf
   14738:	ffffe9b7          	lui	s3,0xffffe
   1473c:	00e7f7b3          	and	a5,a5,a4
   14740:	013789b3          	add	s3,a5,s3
   14744:	00008737          	lui	a4,0x8
   14748:	0019b993          	seqz	s3,s3
   1474c:	0ce78063          	beq	a5,a4,1480c <__smakebuf_r+0x124>
   14750:	00c45783          	lhu	a5,12(s0)
   14754:	00001737          	lui	a4,0x1
   14758:	80070713          	addi	a4,a4,-2048 # 800 <_ftext-0xf800>
   1475c:	00e7e7b3          	or	a5,a5,a4
   14760:	00f41623          	sh	a5,12(s0)
   14764:	40000913          	li	s2,1024
   14768:	0300006f          	j	14798 <__smakebuf_r+0xb0>
   1476c:	00c41783          	lh	a5,12(s0)
   14770:	01079713          	slli	a4,a5,0x10
   14774:	01075713          	srli	a4,a4,0x10
   14778:	08077713          	andi	a4,a4,128
   1477c:	04000913          	li	s2,64
   14780:	08070263          	beqz	a4,14804 <__smakebuf_r+0x11c>
   14784:	00001737          	lui	a4,0x1
   14788:	80070713          	addi	a4,a4,-2048 # 800 <_ftext-0xf800>
   1478c:	00e7e7b3          	or	a5,a5,a4
   14790:	00f41623          	sh	a5,12(s0)
   14794:	00000993          	li	s3,0
   14798:	00090593          	mv	a1,s2
   1479c:	00048513          	mv	a0,s1
   147a0:	0e0000ef          	jal	14880 <_malloc_r>
   147a4:	0a050863          	beqz	a0,14854 <__smakebuf_r+0x16c>
   147a8:	00c45783          	lhu	a5,12(s0)
   147ac:	00014737          	lui	a4,0x14
   147b0:	d4070713          	addi	a4,a4,-704 # 13d40 <_cleanup_r>
   147b4:	02e4ae23          	sw	a4,60(s1)
   147b8:	0807e793          	ori	a5,a5,128
   147bc:	00f41623          	sh	a5,12(s0)
   147c0:	00a42023          	sw	a0,0(s0)
   147c4:	00a42823          	sw	a0,16(s0)
   147c8:	01242a23          	sw	s2,20(s0)
   147cc:	06099463          	bnez	s3,14834 <__smakebuf_r+0x14c>
   147d0:	08c12083          	lw	ra,140(sp)
   147d4:	08812403          	lw	s0,136(sp)
   147d8:	08412483          	lw	s1,132(sp)
   147dc:	08012903          	lw	s2,128(sp)
   147e0:	07c12983          	lw	s3,124(sp)
   147e4:	09010113          	addi	sp,sp,144
   147e8:	00008067          	ret
   147ec:	04358793          	addi	a5,a1,67
   147f0:	00f5a023          	sw	a5,0(a1)
   147f4:	00f5a823          	sw	a5,16(a1)
   147f8:	00100793          	li	a5,1
   147fc:	00f5aa23          	sw	a5,20(a1)
   14800:	00008067          	ret
   14804:	40000913          	li	s2,1024
   14808:	f7dff06f          	j	14784 <__smakebuf_r+0x9c>
   1480c:	02842703          	lw	a4,40(s0)
   14810:	000167b7          	lui	a5,0x16
   14814:	4fc78793          	addi	a5,a5,1276 # 164fc <__sseek>
   14818:	f2f71ce3          	bne	a4,a5,14750 <__smakebuf_r+0x68>
   1481c:	00c45783          	lhu	a5,12(s0)
   14820:	40000913          	li	s2,1024
   14824:	05242623          	sw	s2,76(s0)
   14828:	0127e7b3          	or	a5,a5,s2
   1482c:	00f41623          	sh	a5,12(s0)
   14830:	f69ff06f          	j	14798 <__smakebuf_r+0xb0>
   14834:	00e41583          	lh	a1,14(s0)
   14838:	00048513          	mv	a0,s1
   1483c:	1a5030ef          	jal	181e0 <_isatty_r>
   14840:	f80508e3          	beqz	a0,147d0 <__smakebuf_r+0xe8>
   14844:	00c45783          	lhu	a5,12(s0)
   14848:	0017e793          	ori	a5,a5,1
   1484c:	00f41623          	sh	a5,12(s0)
   14850:	f81ff06f          	j	147d0 <__smakebuf_r+0xe8>
   14854:	00c41783          	lh	a5,12(s0)
   14858:	2007f713          	andi	a4,a5,512
   1485c:	f6071ae3          	bnez	a4,147d0 <__smakebuf_r+0xe8>
   14860:	0027e793          	ori	a5,a5,2
   14864:	04340713          	addi	a4,s0,67
   14868:	00f41623          	sh	a5,12(s0)
   1486c:	00100793          	li	a5,1
   14870:	00e42023          	sw	a4,0(s0)
   14874:	00e42823          	sw	a4,16(s0)
   14878:	00f42a23          	sw	a5,20(s0)
   1487c:	f55ff06f          	j	147d0 <__smakebuf_r+0xe8>

00014880 <_malloc_r>:
   14880:	fd010113          	addi	sp,sp,-48
   14884:	02912223          	sw	s1,36(sp)
   14888:	01312e23          	sw	s3,28(sp)
   1488c:	02112623          	sw	ra,44(sp)
   14890:	02812423          	sw	s0,40(sp)
   14894:	03212023          	sw	s2,32(sp)
   14898:	01412c23          	sw	s4,24(sp)
   1489c:	01512a23          	sw	s5,20(sp)
   148a0:	01612823          	sw	s6,16(sp)
   148a4:	01712623          	sw	s7,12(sp)
   148a8:	01812423          	sw	s8,8(sp)
   148ac:	01912223          	sw	s9,4(sp)
   148b0:	00b58493          	addi	s1,a1,11
   148b4:	01600793          	li	a5,22
   148b8:	00050993          	mv	s3,a0
   148bc:	1a97fa63          	bleu	s1,a5,14a70 <_malloc_r+0x1f0>
   148c0:	ff84f493          	andi	s1,s1,-8
   148c4:	2404c063          	bltz	s1,14b04 <_malloc_r+0x284>
   148c8:	22b4ee63          	bltu	s1,a1,14b04 <_malloc_r+0x284>
   148cc:	1bd000ef          	jal	15288 <__malloc_lock>
   148d0:	1f700793          	li	a5,503
   148d4:	6c97fa63          	bleu	s1,a5,14fa8 <_malloc_r+0x728>
   148d8:	0094d793          	srli	a5,s1,0x9
   148dc:	04000593          	li	a1,64
   148e0:	20000693          	li	a3,512
   148e4:	03f00513          	li	a0,63
   148e8:	22079663          	bnez	a5,14b14 <_malloc_r+0x294>
   148ec:	0001d937          	lui	s2,0x1d
   148f0:	e6090913          	addi	s2,s2,-416 # 1ce60 <__malloc_av_>
   148f4:	00d906b3          	add	a3,s2,a3
   148f8:	0046a403          	lw	s0,4(a3)
   148fc:	ff868693          	addi	a3,a3,-8
   14900:	02868c63          	beq	a3,s0,14938 <_malloc_r+0xb8>
   14904:	00442783          	lw	a5,4(s0)
   14908:	00f00613          	li	a2,15
   1490c:	ffc7f793          	andi	a5,a5,-4
   14910:	40978733          	sub	a4,a5,s1
   14914:	02e64063          	blt	a2,a4,14934 <_malloc_r+0xb4>
   14918:	22075c63          	bgez	a4,14b50 <_malloc_r+0x2d0>
   1491c:	00c42403          	lw	s0,12(s0)
   14920:	00868c63          	beq	a3,s0,14938 <_malloc_r+0xb8>
   14924:	00442783          	lw	a5,4(s0)
   14928:	ffc7f793          	andi	a5,a5,-4
   1492c:	40978733          	sub	a4,a5,s1
   14930:	fee654e3          	ble	a4,a2,14918 <_malloc_r+0x98>
   14934:	00050593          	mv	a1,a0
   14938:	01092403          	lw	s0,16(s2)
   1493c:	00890813          	addi	a6,s2,8
   14940:	45040263          	beq	s0,a6,14d84 <_malloc_r+0x504>
   14944:	00442783          	lw	a5,4(s0)
   14948:	00f00693          	li	a3,15
   1494c:	ffc7f793          	andi	a5,a5,-4
   14950:	40978733          	sub	a4,a5,s1
   14954:	42e6c263          	blt	a3,a4,14d78 <_malloc_r+0x4f8>
   14958:	01092a23          	sw	a6,20(s2)
   1495c:	01092823          	sw	a6,16(s2)
   14960:	1c075863          	bgez	a4,14b30 <_malloc_r+0x2b0>
   14964:	1ff00713          	li	a4,511
   14968:	3af76863          	bltu	a4,a5,14d18 <_malloc_r+0x498>
   1496c:	0037d793          	srli	a5,a5,0x3
   14970:	00178713          	addi	a4,a5,1
   14974:	00371713          	slli	a4,a4,0x3
   14978:	00492503          	lw	a0,4(s2)
   1497c:	00e90733          	add	a4,s2,a4
   14980:	00072603          	lw	a2,0(a4)
   14984:	4027d693          	srai	a3,a5,0x2
   14988:	00100793          	li	a5,1
   1498c:	00d797b3          	sll	a5,a5,a3
   14990:	00a7e7b3          	or	a5,a5,a0
   14994:	ff870693          	addi	a3,a4,-8
   14998:	00d42623          	sw	a3,12(s0)
   1499c:	00c42423          	sw	a2,8(s0)
   149a0:	00f92223          	sw	a5,4(s2)
   149a4:	00872023          	sw	s0,0(a4)
   149a8:	00862623          	sw	s0,12(a2)
   149ac:	4025d713          	srai	a4,a1,0x2
   149b0:	00100693          	li	a3,1
   149b4:	00e696b3          	sll	a3,a3,a4
   149b8:	1ad7e263          	bltu	a5,a3,14b5c <_malloc_r+0x2dc>
   149bc:	00f6f733          	and	a4,a3,a5
   149c0:	02071463          	bnez	a4,149e8 <_malloc_r+0x168>
   149c4:	00169693          	slli	a3,a3,0x1
   149c8:	ffc5f593          	andi	a1,a1,-4
   149cc:	00f6f733          	and	a4,a3,a5
   149d0:	00458593          	addi	a1,a1,4
   149d4:	00071a63          	bnez	a4,149e8 <_malloc_r+0x168>
   149d8:	00169693          	slli	a3,a3,0x1
   149dc:	00f6f733          	and	a4,a3,a5
   149e0:	00458593          	addi	a1,a1,4
   149e4:	fe070ae3          	beqz	a4,149d8 <_malloc_r+0x158>
   149e8:	00f00513          	li	a0,15
   149ec:	00359893          	slli	a7,a1,0x3
   149f0:	011908b3          	add	a7,s2,a7
   149f4:	00088613          	mv	a2,a7
   149f8:	00058313          	mv	t1,a1
   149fc:	00c62403          	lw	s0,12(a2)
   14a00:	00861a63          	bne	a2,s0,14a14 <_malloc_r+0x194>
   14a04:	3880006f          	j	14d8c <_malloc_r+0x50c>
   14a08:	3a075463          	bgez	a4,14db0 <_malloc_r+0x530>
   14a0c:	00c42403          	lw	s0,12(s0)
   14a10:	36860e63          	beq	a2,s0,14d8c <_malloc_r+0x50c>
   14a14:	00442783          	lw	a5,4(s0)
   14a18:	ffc7f793          	andi	a5,a5,-4
   14a1c:	40978733          	sub	a4,a5,s1
   14a20:	fee554e3          	ble	a4,a0,14a08 <_malloc_r+0x188>
   14a24:	00c42683          	lw	a3,12(s0)
   14a28:	00842603          	lw	a2,8(s0)
   14a2c:	0014e593          	ori	a1,s1,1
   14a30:	00b42223          	sw	a1,4(s0)
   14a34:	00d62623          	sw	a3,12(a2)
   14a38:	00c6a423          	sw	a2,8(a3)
   14a3c:	009404b3          	add	s1,s0,s1
   14a40:	00992a23          	sw	s1,20(s2)
   14a44:	00992823          	sw	s1,16(s2)
   14a48:	00176693          	ori	a3,a4,1
   14a4c:	0104a623          	sw	a6,12(s1)
   14a50:	0104a423          	sw	a6,8(s1)
   14a54:	00d4a223          	sw	a3,4(s1)
   14a58:	00f407b3          	add	a5,s0,a5
   14a5c:	00098513          	mv	a0,s3
   14a60:	00e7a023          	sw	a4,0(a5)
   14a64:	029000ef          	jal	1528c <__malloc_unlock>
   14a68:	00840513          	addi	a0,s0,8
   14a6c:	0640006f          	j	14ad0 <_malloc_r+0x250>
   14a70:	01000493          	li	s1,16
   14a74:	08b4e863          	bltu	s1,a1,14b04 <_malloc_r+0x284>
   14a78:	011000ef          	jal	15288 <__malloc_lock>
   14a7c:	01800793          	li	a5,24
   14a80:	00200593          	li	a1,2
   14a84:	0001d937          	lui	s2,0x1d
   14a88:	e6090913          	addi	s2,s2,-416 # 1ce60 <__malloc_av_>
   14a8c:	00f907b3          	add	a5,s2,a5
   14a90:	0047a403          	lw	s0,4(a5)
   14a94:	ff878713          	addi	a4,a5,-8
   14a98:	30e40463          	beq	s0,a4,14da0 <_malloc_r+0x520>
   14a9c:	00442783          	lw	a5,4(s0)
   14aa0:	00c42683          	lw	a3,12(s0)
   14aa4:	00842603          	lw	a2,8(s0)
   14aa8:	ffc7f793          	andi	a5,a5,-4
   14aac:	00f407b3          	add	a5,s0,a5
   14ab0:	0047a703          	lw	a4,4(a5)
   14ab4:	00d62623          	sw	a3,12(a2)
   14ab8:	00c6a423          	sw	a2,8(a3)
   14abc:	00176713          	ori	a4,a4,1
   14ac0:	00098513          	mv	a0,s3
   14ac4:	00e7a223          	sw	a4,4(a5)
   14ac8:	7c4000ef          	jal	1528c <__malloc_unlock>
   14acc:	00840513          	addi	a0,s0,8
   14ad0:	02c12083          	lw	ra,44(sp)
   14ad4:	02812403          	lw	s0,40(sp)
   14ad8:	02412483          	lw	s1,36(sp)
   14adc:	02012903          	lw	s2,32(sp)
   14ae0:	01c12983          	lw	s3,28(sp)
   14ae4:	01812a03          	lw	s4,24(sp)
   14ae8:	01412a83          	lw	s5,20(sp)
   14aec:	01012b03          	lw	s6,16(sp)
   14af0:	00c12b83          	lw	s7,12(sp)
   14af4:	00812c03          	lw	s8,8(sp)
   14af8:	00412c83          	lw	s9,4(sp)
   14afc:	03010113          	addi	sp,sp,48
   14b00:	00008067          	ret
   14b04:	00c00793          	li	a5,12
   14b08:	00f9a023          	sw	a5,0(s3) # ffffe000 <_gp+0xfffe0590>
   14b0c:	00000513          	li	a0,0
   14b10:	fc1ff06f          	j	14ad0 <_malloc_r+0x250>
   14b14:	00400713          	li	a4,4
   14b18:	1cf76e63          	bltu	a4,a5,14cf4 <_malloc_r+0x474>
   14b1c:	0064d513          	srli	a0,s1,0x6
   14b20:	03950593          	addi	a1,a0,57
   14b24:	00359693          	slli	a3,a1,0x3
   14b28:	03850513          	addi	a0,a0,56
   14b2c:	dc1ff06f          	j	148ec <_malloc_r+0x6c>
   14b30:	00f407b3          	add	a5,s0,a5
   14b34:	0047a703          	lw	a4,4(a5)
   14b38:	00098513          	mv	a0,s3
   14b3c:	00176713          	ori	a4,a4,1
   14b40:	00e7a223          	sw	a4,4(a5)
   14b44:	748000ef          	jal	1528c <__malloc_unlock>
   14b48:	00840513          	addi	a0,s0,8
   14b4c:	f85ff06f          	j	14ad0 <_malloc_r+0x250>
   14b50:	00c42683          	lw	a3,12(s0)
   14b54:	00842603          	lw	a2,8(s0)
   14b58:	f55ff06f          	j	14aac <_malloc_r+0x22c>
   14b5c:	00892403          	lw	s0,8(s2)
   14b60:	00442783          	lw	a5,4(s0)
   14b64:	ffc7fa93          	andi	s5,a5,-4
   14b68:	009ae863          	bltu	s5,s1,14b78 <_malloc_r+0x2f8>
   14b6c:	409a87b3          	sub	a5,s5,s1
   14b70:	00f00713          	li	a4,15
   14b74:	14f74c63          	blt	a4,a5,14ccc <_malloc_r+0x44c>
   14b78:	88c1aa03          	lw	s4,-1908(gp) # 1d2fc <__malloc_top_pad>
   14b7c:	8101a703          	lw	a4,-2032(gp) # 1d280 <__malloc_sbrk_base>
   14b80:	fff00793          	li	a5,-1
   14b84:	01540b33          	add	s6,s0,s5
   14b88:	01448a33          	add	s4,s1,s4
   14b8c:	34f70c63          	beq	a4,a5,14ee4 <_malloc_r+0x664>
   14b90:	000017b7          	lui	a5,0x1
   14b94:	00f78793          	addi	a5,a5,15 # 100f <_ftext-0xeff1>
   14b98:	00fa0a33          	add	s4,s4,a5
   14b9c:	fffff7b7          	lui	a5,0xfffff
   14ba0:	00fa7a33          	and	s4,s4,a5
   14ba4:	000a0593          	mv	a1,s4
   14ba8:	00098513          	mv	a0,s3
   14bac:	798010ef          	jal	16344 <_sbrk_r>
   14bb0:	fff00793          	li	a5,-1
   14bb4:	00050b93          	mv	s7,a0
   14bb8:	24f50863          	beq	a0,a5,14e08 <_malloc_r+0x588>
   14bbc:	25656463          	bltu	a0,s6,14e04 <_malloc_r+0x584>
   14bc0:	8b818c13          	addi	s8,gp,-1864 # 1d328 <__malloc_current_mallinfo>
   14bc4:	000c2703          	lw	a4,0(s8)
   14bc8:	00ea0733          	add	a4,s4,a4
   14bcc:	00ec2023          	sw	a4,0(s8)
   14bd0:	34ab0663          	beq	s6,a0,14f1c <_malloc_r+0x69c>
   14bd4:	8101a683          	lw	a3,-2032(gp) # 1d280 <__malloc_sbrk_base>
   14bd8:	fff00793          	li	a5,-1
   14bdc:	36f68e63          	beq	a3,a5,14f58 <_malloc_r+0x6d8>
   14be0:	416b8b33          	sub	s6,s7,s6
   14be4:	00eb0733          	add	a4,s6,a4
   14be8:	00ec2023          	sw	a4,0(s8)
   14bec:	007bf793          	andi	a5,s7,7
   14bf0:	00001737          	lui	a4,0x1
   14bf4:	00078a63          	beqz	a5,14c08 <_malloc_r+0x388>
   14bf8:	40fb8bb3          	sub	s7,s7,a5
   14bfc:	00870713          	addi	a4,a4,8 # 1008 <_ftext-0xeff8>
   14c00:	008b8b93          	addi	s7,s7,8
   14c04:	40f70733          	sub	a4,a4,a5
   14c08:	000016b7          	lui	a3,0x1
   14c0c:	014b87b3          	add	a5,s7,s4
   14c10:	fff68693          	addi	a3,a3,-1 # fff <_ftext-0xf001>
   14c14:	00d7f7b3          	and	a5,a5,a3
   14c18:	40f70a33          	sub	s4,a4,a5
   14c1c:	000a0593          	mv	a1,s4
   14c20:	00098513          	mv	a0,s3
   14c24:	720010ef          	jal	16344 <_sbrk_r>
   14c28:	fff00793          	li	a5,-1
   14c2c:	32f50063          	beq	a0,a5,14f4c <_malloc_r+0x6cc>
   14c30:	417507b3          	sub	a5,a0,s7
   14c34:	014787b3          	add	a5,a5,s4
   14c38:	0017e793          	ori	a5,a5,1
   14c3c:	000c2703          	lw	a4,0(s8)
   14c40:	01792423          	sw	s7,8(s2)
   14c44:	00fba223          	sw	a5,4(s7)
   14c48:	00ea0733          	add	a4,s4,a4
   14c4c:	00ec2023          	sw	a4,0(s8)
   14c50:	03240c63          	beq	s0,s2,14c88 <_malloc_r+0x408>
   14c54:	00f00613          	li	a2,15
   14c58:	25567c63          	bleu	s5,a2,14eb0 <_malloc_r+0x630>
   14c5c:	00442683          	lw	a3,4(s0)
   14c60:	ff4a8793          	addi	a5,s5,-12
   14c64:	ff87f793          	andi	a5,a5,-8
   14c68:	0016f693          	andi	a3,a3,1
   14c6c:	00f6e6b3          	or	a3,a3,a5
   14c70:	00d42223          	sw	a3,4(s0)
   14c74:	00500593          	li	a1,5
   14c78:	00f406b3          	add	a3,s0,a5
   14c7c:	00b6a223          	sw	a1,4(a3)
   14c80:	00b6a423          	sw	a1,8(a3)
   14c84:	2af66a63          	bltu	a2,a5,14f38 <_malloc_r+0x6b8>
   14c88:	8881a683          	lw	a3,-1912(gp) # 1d2f8 <__malloc_max_sbrked_mem>
   14c8c:	00e6f463          	bleu	a4,a3,14c94 <_malloc_r+0x414>
   14c90:	88e1a423          	sw	a4,-1912(gp) # 1d2f8 <__malloc_max_sbrked_mem>
   14c94:	8841a683          	lw	a3,-1916(gp) # 1d2f4 <__malloc_max_total_mem>
   14c98:	00892403          	lw	s0,8(s2)
   14c9c:	00e6f463          	bleu	a4,a3,14ca4 <_malloc_r+0x424>
   14ca0:	88e1a223          	sw	a4,-1916(gp) # 1d2f4 <__malloc_max_total_mem>
   14ca4:	00442703          	lw	a4,4(s0)
   14ca8:	ffc77713          	andi	a4,a4,-4
   14cac:	409707b3          	sub	a5,a4,s1
   14cb0:	00976663          	bltu	a4,s1,14cbc <_malloc_r+0x43c>
   14cb4:	00f00713          	li	a4,15
   14cb8:	00f74a63          	blt	a4,a5,14ccc <_malloc_r+0x44c>
   14cbc:	00098513          	mv	a0,s3
   14cc0:	5cc000ef          	jal	1528c <__malloc_unlock>
   14cc4:	00000513          	li	a0,0
   14cc8:	e09ff06f          	j	14ad0 <_malloc_r+0x250>
   14ccc:	0014e713          	ori	a4,s1,1
   14cd0:	00e42223          	sw	a4,4(s0)
   14cd4:	009404b3          	add	s1,s0,s1
   14cd8:	00992423          	sw	s1,8(s2)
   14cdc:	0017e793          	ori	a5,a5,1
   14ce0:	00098513          	mv	a0,s3
   14ce4:	00f4a223          	sw	a5,4(s1)
   14ce8:	5a4000ef          	jal	1528c <__malloc_unlock>
   14cec:	00840513          	addi	a0,s0,8
   14cf0:	de1ff06f          	j	14ad0 <_malloc_r+0x250>
   14cf4:	01400713          	li	a4,20
   14cf8:	0ef77463          	bleu	a5,a4,14de0 <_malloc_r+0x560>
   14cfc:	05400713          	li	a4,84
   14d00:	16f76a63          	bltu	a4,a5,14e74 <_malloc_r+0x5f4>
   14d04:	00c4d513          	srli	a0,s1,0xc
   14d08:	06f50593          	addi	a1,a0,111
   14d0c:	00359693          	slli	a3,a1,0x3
   14d10:	06e50513          	addi	a0,a0,110
   14d14:	bd9ff06f          	j	148ec <_malloc_r+0x6c>
   14d18:	0097d713          	srli	a4,a5,0x9
   14d1c:	00400693          	li	a3,4
   14d20:	0ce6f863          	bleu	a4,a3,14df0 <_malloc_r+0x570>
   14d24:	01400693          	li	a3,20
   14d28:	1ce6e263          	bltu	a3,a4,14eec <_malloc_r+0x66c>
   14d2c:	05c70613          	addi	a2,a4,92
   14d30:	05b70693          	addi	a3,a4,91
   14d34:	00361613          	slli	a2,a2,0x3
   14d38:	00c90633          	add	a2,s2,a2
   14d3c:	00062703          	lw	a4,0(a2)
   14d40:	ff860613          	addi	a2,a2,-8
   14d44:	14e60663          	beq	a2,a4,14e90 <_malloc_r+0x610>
   14d48:	00472683          	lw	a3,4(a4)
   14d4c:	ffc6f693          	andi	a3,a3,-4
   14d50:	10d7fe63          	bleu	a3,a5,14e6c <_malloc_r+0x5ec>
   14d54:	00872703          	lw	a4,8(a4)
   14d58:	fee618e3          	bne	a2,a4,14d48 <_malloc_r+0x4c8>
   14d5c:	00c62703          	lw	a4,12(a2)
   14d60:	00492783          	lw	a5,4(s2)
   14d64:	00e42623          	sw	a4,12(s0)
   14d68:	00c42423          	sw	a2,8(s0)
   14d6c:	00872423          	sw	s0,8(a4)
   14d70:	00862623          	sw	s0,12(a2)
   14d74:	c39ff06f          	j	149ac <_malloc_r+0x12c>
   14d78:	0014e693          	ori	a3,s1,1
   14d7c:	00d42223          	sw	a3,4(s0)
   14d80:	cbdff06f          	j	14a3c <_malloc_r+0x1bc>
   14d84:	00492783          	lw	a5,4(s2)
   14d88:	c25ff06f          	j	149ac <_malloc_r+0x12c>
   14d8c:	00130313          	addi	t1,t1,1
   14d90:	00337793          	andi	a5,t1,3
   14d94:	00860613          	addi	a2,a2,8
   14d98:	c60792e3          	bnez	a5,149fc <_malloc_r+0x17c>
   14d9c:	0880006f          	j	14e24 <_malloc_r+0x5a4>
   14da0:	00c7a403          	lw	s0,12(a5) # fffff00c <_gp+0xfffe159c>
   14da4:	00258593          	addi	a1,a1,2
   14da8:	b88788e3          	beq	a5,s0,14938 <_malloc_r+0xb8>
   14dac:	cf1ff06f          	j	14a9c <_malloc_r+0x21c>
   14db0:	00f407b3          	add	a5,s0,a5
   14db4:	0047a703          	lw	a4,4(a5)
   14db8:	00c42683          	lw	a3,12(s0)
   14dbc:	00842603          	lw	a2,8(s0)
   14dc0:	00176713          	ori	a4,a4,1
   14dc4:	00e7a223          	sw	a4,4(a5)
   14dc8:	00d62623          	sw	a3,12(a2)
   14dcc:	00098513          	mv	a0,s3
   14dd0:	00c6a423          	sw	a2,8(a3)
   14dd4:	4b8000ef          	jal	1528c <__malloc_unlock>
   14dd8:	00840513          	addi	a0,s0,8
   14ddc:	cf5ff06f          	j	14ad0 <_malloc_r+0x250>
   14de0:	05c78593          	addi	a1,a5,92
   14de4:	05b78513          	addi	a0,a5,91
   14de8:	00359693          	slli	a3,a1,0x3
   14dec:	b01ff06f          	j	148ec <_malloc_r+0x6c>
   14df0:	0067d693          	srli	a3,a5,0x6
   14df4:	03968613          	addi	a2,a3,57
   14df8:	00361613          	slli	a2,a2,0x3
   14dfc:	03868693          	addi	a3,a3,56
   14e00:	f39ff06f          	j	14d38 <_malloc_r+0x4b8>
   14e04:	11240263          	beq	s0,s2,14f08 <_malloc_r+0x688>
   14e08:	00892403          	lw	s0,8(s2)
   14e0c:	00442703          	lw	a4,4(s0)
   14e10:	ffc77713          	andi	a4,a4,-4
   14e14:	e99ff06f          	j	14cac <_malloc_r+0x42c>
   14e18:	0088a783          	lw	a5,8(a7)
   14e1c:	fff58593          	addi	a1,a1,-1
   14e20:	18f89063          	bne	a7,a5,14fa0 <_malloc_r+0x720>
   14e24:	0035f793          	andi	a5,a1,3
   14e28:	ff888893          	addi	a7,a7,-8
   14e2c:	fe0796e3          	bnez	a5,14e18 <_malloc_r+0x598>
   14e30:	00492703          	lw	a4,4(s2)
   14e34:	fff6c793          	not	a5,a3
   14e38:	00e7f7b3          	and	a5,a5,a4
   14e3c:	00f92223          	sw	a5,4(s2)
   14e40:	00169693          	slli	a3,a3,0x1
   14e44:	d0d7ece3          	bltu	a5,a3,14b5c <_malloc_r+0x2dc>
   14e48:	d0068ae3          	beqz	a3,14b5c <_malloc_r+0x2dc>
   14e4c:	00f6f733          	and	a4,a3,a5
   14e50:	00030593          	mv	a1,t1
   14e54:	b8071ce3          	bnez	a4,149ec <_malloc_r+0x16c>
   14e58:	00169693          	slli	a3,a3,0x1
   14e5c:	00f6f733          	and	a4,a3,a5
   14e60:	00458593          	addi	a1,a1,4
   14e64:	fe070ae3          	beqz	a4,14e58 <_malloc_r+0x5d8>
   14e68:	b85ff06f          	j	149ec <_malloc_r+0x16c>
   14e6c:	00070613          	mv	a2,a4
   14e70:	eedff06f          	j	14d5c <_malloc_r+0x4dc>
   14e74:	15400713          	li	a4,340
   14e78:	04f76263          	bltu	a4,a5,14ebc <_malloc_r+0x63c>
   14e7c:	00f4d513          	srli	a0,s1,0xf
   14e80:	07850593          	addi	a1,a0,120
   14e84:	00359693          	slli	a3,a1,0x3
   14e88:	07750513          	addi	a0,a0,119
   14e8c:	a61ff06f          	j	148ec <_malloc_r+0x6c>
   14e90:	00492703          	lw	a4,4(s2)
   14e94:	4026d693          	srai	a3,a3,0x2
   14e98:	00100793          	li	a5,1
   14e9c:	00d797b3          	sll	a5,a5,a3
   14ea0:	00e7e7b3          	or	a5,a5,a4
   14ea4:	00f92223          	sw	a5,4(s2)
   14ea8:	00060713          	mv	a4,a2
   14eac:	eb9ff06f          	j	14d64 <_malloc_r+0x4e4>
   14eb0:	00100793          	li	a5,1
   14eb4:	00fba223          	sw	a5,4(s7)
   14eb8:	e05ff06f          	j	14cbc <_malloc_r+0x43c>
   14ebc:	55400713          	li	a4,1364
   14ec0:	07f00593          	li	a1,127
   14ec4:	3f800693          	li	a3,1016
   14ec8:	07e00513          	li	a0,126
   14ecc:	a2f760e3          	bltu	a4,a5,148ec <_malloc_r+0x6c>
   14ed0:	0124d513          	srli	a0,s1,0x12
   14ed4:	07d50593          	addi	a1,a0,125
   14ed8:	00359693          	slli	a3,a1,0x3
   14edc:	07c50513          	addi	a0,a0,124
   14ee0:	a0dff06f          	j	148ec <_malloc_r+0x6c>
   14ee4:	010a0a13          	addi	s4,s4,16
   14ee8:	cbdff06f          	j	14ba4 <_malloc_r+0x324>
   14eec:	05400693          	li	a3,84
   14ef0:	06e6e863          	bltu	a3,a4,14f60 <_malloc_r+0x6e0>
   14ef4:	00c7d693          	srli	a3,a5,0xc
   14ef8:	06f68613          	addi	a2,a3,111
   14efc:	00361613          	slli	a2,a2,0x3
   14f00:	06e68693          	addi	a3,a3,110
   14f04:	e35ff06f          	j	14d38 <_malloc_r+0x4b8>
   14f08:	8b818c13          	addi	s8,gp,-1864 # 1d328 <__malloc_current_mallinfo>
   14f0c:	000c2703          	lw	a4,0(s8)
   14f10:	00ea0733          	add	a4,s4,a4
   14f14:	00ec2023          	sw	a4,0(s8)
   14f18:	cbdff06f          	j	14bd4 <_malloc_r+0x354>
   14f1c:	014b1793          	slli	a5,s6,0x14
   14f20:	ca079ae3          	bnez	a5,14bd4 <_malloc_r+0x354>
   14f24:	00892683          	lw	a3,8(s2)
   14f28:	014a87b3          	add	a5,s5,s4
   14f2c:	0017e793          	ori	a5,a5,1
   14f30:	00f6a223          	sw	a5,4(a3)
   14f34:	d55ff06f          	j	14c88 <_malloc_r+0x408>
   14f38:	00840593          	addi	a1,s0,8
   14f3c:	00098513          	mv	a0,s3
   14f40:	a90ff0ef          	jal	141d0 <_free_r>
   14f44:	000c2703          	lw	a4,0(s8)
   14f48:	d41ff06f          	j	14c88 <_malloc_r+0x408>
   14f4c:	00100793          	li	a5,1
   14f50:	00000a13          	li	s4,0
   14f54:	ce9ff06f          	j	14c3c <_malloc_r+0x3bc>
   14f58:	8171a823          	sw	s7,-2032(gp) # 1d280 <__malloc_sbrk_base>
   14f5c:	c91ff06f          	j	14bec <_malloc_r+0x36c>
   14f60:	15400693          	li	a3,340
   14f64:	00e6ec63          	bltu	a3,a4,14f7c <_malloc_r+0x6fc>
   14f68:	00f7d693          	srli	a3,a5,0xf
   14f6c:	07868613          	addi	a2,a3,120
   14f70:	00361613          	slli	a2,a2,0x3
   14f74:	07768693          	addi	a3,a3,119
   14f78:	dc1ff06f          	j	14d38 <_malloc_r+0x4b8>
   14f7c:	55400513          	li	a0,1364
   14f80:	3f800613          	li	a2,1016
   14f84:	07e00693          	li	a3,126
   14f88:	dae568e3          	bltu	a0,a4,14d38 <_malloc_r+0x4b8>
   14f8c:	0127d693          	srli	a3,a5,0x12
   14f90:	07d68613          	addi	a2,a3,125
   14f94:	00361613          	slli	a2,a2,0x3
   14f98:	07c68693          	addi	a3,a3,124
   14f9c:	d9dff06f          	j	14d38 <_malloc_r+0x4b8>
   14fa0:	00492783          	lw	a5,4(s2)
   14fa4:	e9dff06f          	j	14e40 <_malloc_r+0x5c0>
   14fa8:	0034d593          	srli	a1,s1,0x3
   14fac:	00848793          	addi	a5,s1,8
   14fb0:	ad5ff06f          	j	14a84 <_malloc_r+0x204>

00014fb4 <memchr>:
   14fb4:	00357793          	andi	a5,a0,3
   14fb8:	0ff5f813          	andi	a6,a1,255
   14fbc:	0c078663          	beqz	a5,15088 <memchr+0xd4>
   14fc0:	fff60793          	addi	a5,a2,-1
   14fc4:	04060e63          	beqz	a2,15020 <memchr+0x6c>
   14fc8:	00054703          	lbu	a4,0(a0)
   14fcc:	fff00693          	li	a3,-1
   14fd0:	01071c63          	bne	a4,a6,14fe8 <memchr+0x34>
   14fd4:	0500006f          	j	15024 <memchr+0x70>
   14fd8:	fff78793          	addi	a5,a5,-1
   14fdc:	04d78263          	beq	a5,a3,15020 <memchr+0x6c>
   14fe0:	00054703          	lbu	a4,0(a0)
   14fe4:	05070063          	beq	a4,a6,15024 <memchr+0x70>
   14fe8:	00150513          	addi	a0,a0,1
   14fec:	00357713          	andi	a4,a0,3
   14ff0:	fe0714e3          	bnez	a4,14fd8 <memchr+0x24>
   14ff4:	00300713          	li	a4,3
   14ff8:	02f76863          	bltu	a4,a5,15028 <memchr+0x74>
   14ffc:	02078263          	beqz	a5,15020 <memchr+0x6c>
   15000:	00054703          	lbu	a4,0(a0)
   15004:	03070063          	beq	a4,a6,15024 <memchr+0x70>
   15008:	00f507b3          	add	a5,a0,a5
   1500c:	00c0006f          	j	15018 <memchr+0x64>
   15010:	00054703          	lbu	a4,0(a0)
   15014:	01070863          	beq	a4,a6,15024 <memchr+0x70>
   15018:	00150513          	addi	a0,a0,1
   1501c:	fea79ae3          	bne	a5,a0,15010 <memchr+0x5c>
   15020:	00000513          	li	a0,0
   15024:	00008067          	ret
   15028:	000106b7          	lui	a3,0x10
   1502c:	00859613          	slli	a2,a1,0x8
   15030:	fff68693          	addi	a3,a3,-1 # ffff <_ftext-0x1>
   15034:	00d67633          	and	a2,a2,a3
   15038:	0ff5f593          	andi	a1,a1,255
   1503c:	00b66633          	or	a2,a2,a1
   15040:	01061693          	slli	a3,a2,0x10
   15044:	feff0337          	lui	t1,0xfeff0
   15048:	808088b7          	lui	a7,0x80808
   1504c:	00d66633          	or	a2,a2,a3
   15050:	eff30313          	addi	t1,t1,-257 # fefefeff <_gp+0xfefd248f>
   15054:	08088893          	addi	a7,a7,128 # 80808080 <_gp+0x807ea610>
   15058:	00070593          	mv	a1,a4
   1505c:	00052703          	lw	a4,0(a0)
   15060:	00e64733          	xor	a4,a2,a4
   15064:	006706b3          	add	a3,a4,t1
   15068:	fff74713          	not	a4,a4
   1506c:	00e6f733          	and	a4,a3,a4
   15070:	01177733          	and	a4,a4,a7
   15074:	f80716e3          	bnez	a4,15000 <memchr+0x4c>
   15078:	ffc78793          	addi	a5,a5,-4
   1507c:	00450513          	addi	a0,a0,4
   15080:	fcf5eee3          	bltu	a1,a5,1505c <memchr+0xa8>
   15084:	f79ff06f          	j	14ffc <memchr+0x48>
   15088:	00060793          	mv	a5,a2
   1508c:	f69ff06f          	j	14ff4 <memchr+0x40>

00015090 <memcpy>:
   15090:	00a5c7b3          	xor	a5,a1,a0
   15094:	0037f793          	andi	a5,a5,3
   15098:	00c508b3          	add	a7,a0,a2
   1509c:	0e079863          	bnez	a5,1518c <memcpy+0xfc>
   150a0:	00300793          	li	a5,3
   150a4:	0ec7f463          	bleu	a2,a5,1518c <memcpy+0xfc>
   150a8:	00357793          	andi	a5,a0,3
   150ac:	00050713          	mv	a4,a0
   150b0:	04079863          	bnez	a5,15100 <memcpy+0x70>
   150b4:	ffc8f813          	andi	a6,a7,-4
   150b8:	fe080793          	addi	a5,a6,-32
   150bc:	06f76c63          	bltu	a4,a5,15134 <memcpy+0xa4>
   150c0:	03077c63          	bleu	a6,a4,150f8 <memcpy+0x68>
   150c4:	00058693          	mv	a3,a1
   150c8:	00070793          	mv	a5,a4
   150cc:	0006a603          	lw	a2,0(a3)
   150d0:	00478793          	addi	a5,a5,4
   150d4:	00468693          	addi	a3,a3,4
   150d8:	fec7ae23          	sw	a2,-4(a5)
   150dc:	ff07e8e3          	bltu	a5,a6,150cc <memcpy+0x3c>
   150e0:	fff74793          	not	a5,a4
   150e4:	01078833          	add	a6,a5,a6
   150e8:	ffc87813          	andi	a6,a6,-4
   150ec:	00480813          	addi	a6,a6,4
   150f0:	01070733          	add	a4,a4,a6
   150f4:	010585b3          	add	a1,a1,a6
   150f8:	09176e63          	bltu	a4,a7,15194 <memcpy+0x104>
   150fc:	00008067          	ret
   15100:	0005c683          	lbu	a3,0(a1)
   15104:	00170713          	addi	a4,a4,1
   15108:	00377793          	andi	a5,a4,3
   1510c:	fed70fa3          	sb	a3,-1(a4)
   15110:	00158593          	addi	a1,a1,1
   15114:	fa0780e3          	beqz	a5,150b4 <memcpy+0x24>
   15118:	0005c683          	lbu	a3,0(a1)
   1511c:	00170713          	addi	a4,a4,1
   15120:	00377793          	andi	a5,a4,3
   15124:	fed70fa3          	sb	a3,-1(a4)
   15128:	00158593          	addi	a1,a1,1
   1512c:	fc079ae3          	bnez	a5,15100 <memcpy+0x70>
   15130:	f85ff06f          	j	150b4 <memcpy+0x24>
   15134:	0005a383          	lw	t2,0(a1)
   15138:	0045a283          	lw	t0,4(a1)
   1513c:	0085af83          	lw	t6,8(a1)
   15140:	00c5af03          	lw	t5,12(a1)
   15144:	0105ae83          	lw	t4,16(a1)
   15148:	0145ae03          	lw	t3,20(a1)
   1514c:	0185a303          	lw	t1,24(a1)
   15150:	01c5a603          	lw	a2,28(a1)
   15154:	02458593          	addi	a1,a1,36
   15158:	02470713          	addi	a4,a4,36
   1515c:	ffc5a683          	lw	a3,-4(a1)
   15160:	fc772e23          	sw	t2,-36(a4)
   15164:	fe572023          	sw	t0,-32(a4)
   15168:	fff72223          	sw	t6,-28(a4)
   1516c:	ffe72423          	sw	t5,-24(a4)
   15170:	ffd72623          	sw	t4,-20(a4)
   15174:	ffc72823          	sw	t3,-16(a4)
   15178:	fe672a23          	sw	t1,-12(a4)
   1517c:	fec72c23          	sw	a2,-8(a4)
   15180:	fed72e23          	sw	a3,-4(a4)
   15184:	faf768e3          	bltu	a4,a5,15134 <memcpy+0xa4>
   15188:	f39ff06f          	j	150c0 <memcpy+0x30>
   1518c:	00050713          	mv	a4,a0
   15190:	f71576e3          	bleu	a7,a0,150fc <memcpy+0x6c>
   15194:	0005c783          	lbu	a5,0(a1)
   15198:	00170713          	addi	a4,a4,1
   1519c:	00158593          	addi	a1,a1,1
   151a0:	fef70fa3          	sb	a5,-1(a4)
   151a4:	ff1768e3          	bltu	a4,a7,15194 <memcpy+0x104>
   151a8:	00008067          	ret

000151ac <memset>:
   151ac:	00f00813          	li	a6,15
   151b0:	00050713          	mv	a4,a0
   151b4:	02c87e63          	bleu	a2,a6,151f0 <memset+0x44>
   151b8:	00f77793          	andi	a5,a4,15
   151bc:	0a079063          	bnez	a5,1525c <memset+0xb0>
   151c0:	08059263          	bnez	a1,15244 <memset+0x98>
   151c4:	ff067693          	andi	a3,a2,-16
   151c8:	00f67613          	andi	a2,a2,15
   151cc:	00e686b3          	add	a3,a3,a4
   151d0:	00b72023          	sw	a1,0(a4)
   151d4:	00b72223          	sw	a1,4(a4)
   151d8:	00b72423          	sw	a1,8(a4)
   151dc:	00b72623          	sw	a1,12(a4)
   151e0:	01070713          	addi	a4,a4,16
   151e4:	fed766e3          	bltu	a4,a3,151d0 <memset+0x24>
   151e8:	00061463          	bnez	a2,151f0 <memset+0x44>
   151ec:	00008067          	ret
   151f0:	40c806b3          	sub	a3,a6,a2
   151f4:	00269693          	slli	a3,a3,0x2
   151f8:	00000297          	auipc	t0,0x0
   151fc:	005686b3          	add	a3,a3,t0
   15200:	00c68067          	jr	a3,12
   15204:	00b70723          	sb	a1,14(a4)
   15208:	00b706a3          	sb	a1,13(a4)
   1520c:	00b70623          	sb	a1,12(a4)
   15210:	00b705a3          	sb	a1,11(a4)
   15214:	00b70523          	sb	a1,10(a4)
   15218:	00b704a3          	sb	a1,9(a4)
   1521c:	00b70423          	sb	a1,8(a4)
   15220:	00b703a3          	sb	a1,7(a4)
   15224:	00b70323          	sb	a1,6(a4)
   15228:	00b702a3          	sb	a1,5(a4)
   1522c:	00b70223          	sb	a1,4(a4)
   15230:	00b701a3          	sb	a1,3(a4)
   15234:	00b70123          	sb	a1,2(a4)
   15238:	00b700a3          	sb	a1,1(a4)
   1523c:	00b70023          	sb	a1,0(a4)
   15240:	00008067          	ret
   15244:	0ff5f593          	andi	a1,a1,255
   15248:	00859693          	slli	a3,a1,0x8
   1524c:	00d5e5b3          	or	a1,a1,a3
   15250:	01059693          	slli	a3,a1,0x10
   15254:	00d5e5b3          	or	a1,a1,a3
   15258:	f6dff06f          	j	151c4 <memset+0x18>
   1525c:	00279693          	slli	a3,a5,0x2
   15260:	00000297          	auipc	t0,0x0
   15264:	005686b3          	add	a3,a3,t0
   15268:	00008293          	mv	t0,ra
   1526c:	fa0680e7          	jalr	a3,-96
   15270:	00028093          	mv	ra,t0
   15274:	ff078793          	addi	a5,a5,-16
   15278:	40f70733          	sub	a4,a4,a5
   1527c:	00f60633          	add	a2,a2,a5
   15280:	f6c878e3          	bleu	a2,a6,151f0 <memset+0x44>
   15284:	f3dff06f          	j	151c0 <memset+0x14>

00015288 <__malloc_lock>:
   15288:	00008067          	ret

0001528c <__malloc_unlock>:
   1528c:	00008067          	ret

00015290 <_Balloc>:
   15290:	04c52783          	lw	a5,76(a0)
   15294:	ff010113          	addi	sp,sp,-16
   15298:	00812423          	sw	s0,8(sp)
   1529c:	00912223          	sw	s1,4(sp)
   152a0:	00112623          	sw	ra,12(sp)
   152a4:	01212023          	sw	s2,0(sp)
   152a8:	00050413          	mv	s0,a0
   152ac:	00058493          	mv	s1,a1
   152b0:	02078e63          	beqz	a5,152ec <_Balloc+0x5c>
   152b4:	00249513          	slli	a0,s1,0x2
   152b8:	00a787b3          	add	a5,a5,a0
   152bc:	0007a503          	lw	a0,0(a5)
   152c0:	04050663          	beqz	a0,1530c <_Balloc+0x7c>
   152c4:	00052703          	lw	a4,0(a0)
   152c8:	00e7a023          	sw	a4,0(a5)
   152cc:	00052823          	sw	zero,16(a0)
   152d0:	00052623          	sw	zero,12(a0)
   152d4:	00c12083          	lw	ra,12(sp)
   152d8:	00812403          	lw	s0,8(sp)
   152dc:	00412483          	lw	s1,4(sp)
   152e0:	00012903          	lw	s2,0(sp)
   152e4:	01010113          	addi	sp,sp,16
   152e8:	00008067          	ret
   152ec:	02100613          	li	a2,33
   152f0:	00400593          	li	a1,4
   152f4:	5bc020ef          	jal	178b0 <_calloc_r>
   152f8:	04a42623          	sw	a0,76(s0)
   152fc:	00050793          	mv	a5,a0
   15300:	fa051ae3          	bnez	a0,152b4 <_Balloc+0x24>
   15304:	00000513          	li	a0,0
   15308:	fcdff06f          	j	152d4 <_Balloc+0x44>
   1530c:	00100593          	li	a1,1
   15310:	00959933          	sll	s2,a1,s1
   15314:	00590613          	addi	a2,s2,5
   15318:	00261613          	slli	a2,a2,0x2
   1531c:	00040513          	mv	a0,s0
   15320:	590020ef          	jal	178b0 <_calloc_r>
   15324:	fe0500e3          	beqz	a0,15304 <_Balloc+0x74>
   15328:	00952223          	sw	s1,4(a0)
   1532c:	01252423          	sw	s2,8(a0)
   15330:	f9dff06f          	j	152cc <_Balloc+0x3c>

00015334 <_Bfree>:
   15334:	02058063          	beqz	a1,15354 <_Bfree+0x20>
   15338:	0045a703          	lw	a4,4(a1)
   1533c:	04c52783          	lw	a5,76(a0)
   15340:	00271713          	slli	a4,a4,0x2
   15344:	00e787b3          	add	a5,a5,a4
   15348:	0007a703          	lw	a4,0(a5)
   1534c:	00e5a023          	sw	a4,0(a1)
   15350:	00b7a023          	sw	a1,0(a5)
   15354:	00008067          	ret

00015358 <__multadd>:
   15358:	fd010113          	addi	sp,sp,-48
   1535c:	01312e23          	sw	s3,28(sp)
   15360:	0105a983          	lw	s3,16(a1)
   15364:	01812423          	sw	s8,8(sp)
   15368:	00010c37          	lui	s8,0x10
   1536c:	02812423          	sw	s0,40(sp)
   15370:	02912223          	sw	s1,36(sp)
   15374:	03212023          	sw	s2,32(sp)
   15378:	01412c23          	sw	s4,24(sp)
   1537c:	01512a23          	sw	s5,20(sp)
   15380:	01612823          	sw	s6,16(sp)
   15384:	02112623          	sw	ra,44(sp)
   15388:	01712623          	sw	s7,12(sp)
   1538c:	00058a13          	mv	s4,a1
   15390:	00050a93          	mv	s5,a0
   15394:	00060913          	mv	s2,a2
   15398:	00068413          	mv	s0,a3
   1539c:	01458493          	addi	s1,a1,20
   153a0:	00000b13          	li	s6,0
   153a4:	fffc0c13          	addi	s8,s8,-1 # ffff <_ftext-0x1>
   153a8:	0004ab83          	lw	s7,0(s1)
   153ac:	00090593          	mv	a1,s2
   153b0:	00448493          	addi	s1,s1,4
   153b4:	018bf533          	and	a0,s7,s8
   153b8:	725040ef          	jal	1a2dc <__mulsi3>
   153bc:	00850433          	add	s0,a0,s0
   153c0:	00090593          	mv	a1,s2
   153c4:	010bd513          	srli	a0,s7,0x10
   153c8:	715040ef          	jal	1a2dc <__mulsi3>
   153cc:	01045693          	srli	a3,s0,0x10
   153d0:	00d50533          	add	a0,a0,a3
   153d4:	01051693          	slli	a3,a0,0x10
   153d8:	01847433          	and	s0,s0,s8
   153dc:	00868433          	add	s0,a3,s0
   153e0:	fe84ae23          	sw	s0,-4(s1)
   153e4:	001b0b13          	addi	s6,s6,1
   153e8:	01055413          	srli	s0,a0,0x10
   153ec:	fb3b4ee3          	blt	s6,s3,153a8 <__multadd+0x50>
   153f0:	02040263          	beqz	s0,15414 <__multadd+0xbc>
   153f4:	008a2783          	lw	a5,8(s4)
   153f8:	04f9d863          	ble	a5,s3,15448 <__multadd+0xf0>
   153fc:	00498793          	addi	a5,s3,4
   15400:	00279793          	slli	a5,a5,0x2
   15404:	00fa07b3          	add	a5,s4,a5
   15408:	0087a223          	sw	s0,4(a5)
   1540c:	00198993          	addi	s3,s3,1
   15410:	013a2823          	sw	s3,16(s4)
   15414:	02c12083          	lw	ra,44(sp)
   15418:	000a0513          	mv	a0,s4
   1541c:	02812403          	lw	s0,40(sp)
   15420:	02412483          	lw	s1,36(sp)
   15424:	02012903          	lw	s2,32(sp)
   15428:	01c12983          	lw	s3,28(sp)
   1542c:	01812a03          	lw	s4,24(sp)
   15430:	01412a83          	lw	s5,20(sp)
   15434:	01012b03          	lw	s6,16(sp)
   15438:	00c12b83          	lw	s7,12(sp)
   1543c:	00812c03          	lw	s8,8(sp)
   15440:	03010113          	addi	sp,sp,48
   15444:	00008067          	ret
   15448:	004a2583          	lw	a1,4(s4)
   1544c:	000a8513          	mv	a0,s5
   15450:	00158593          	addi	a1,a1,1
   15454:	e3dff0ef          	jal	15290 <_Balloc>
   15458:	010a2603          	lw	a2,16(s4)
   1545c:	00050493          	mv	s1,a0
   15460:	00ca0593          	addi	a1,s4,12
   15464:	00260613          	addi	a2,a2,2
   15468:	00c50513          	addi	a0,a0,12
   1546c:	00261613          	slli	a2,a2,0x2
   15470:	c21ff0ef          	jal	15090 <memcpy>
   15474:	004a2703          	lw	a4,4(s4)
   15478:	04caa783          	lw	a5,76(s5)
   1547c:	00271713          	slli	a4,a4,0x2
   15480:	00e787b3          	add	a5,a5,a4
   15484:	0007a703          	lw	a4,0(a5)
   15488:	00ea2023          	sw	a4,0(s4)
   1548c:	0147a023          	sw	s4,0(a5)
   15490:	00048a13          	mv	s4,s1
   15494:	f69ff06f          	j	153fc <__multadd+0xa4>

00015498 <__s2b>:
   15498:	fe010113          	addi	sp,sp,-32
   1549c:	00812c23          	sw	s0,24(sp)
   154a0:	00912a23          	sw	s1,20(sp)
   154a4:	00058413          	mv	s0,a1
   154a8:	00050493          	mv	s1,a0
   154ac:	00900593          	li	a1,9
   154b0:	00868513          	addi	a0,a3,8
   154b4:	01212823          	sw	s2,16(sp)
   154b8:	01312623          	sw	s3,12(sp)
   154bc:	01412423          	sw	s4,8(sp)
   154c0:	00112e23          	sw	ra,28(sp)
   154c4:	01512223          	sw	s5,4(sp)
   154c8:	01612023          	sw	s6,0(sp)
   154cc:	00068a13          	mv	s4,a3
   154d0:	00060993          	mv	s3,a2
   154d4:	00070913          	mv	s2,a4
   154d8:	6b1040ef          	jal	1a388 <__divsi3>
   154dc:	00100793          	li	a5,1
   154e0:	00000593          	li	a1,0
   154e4:	00a7d863          	ble	a0,a5,154f4 <__s2b+0x5c>
   154e8:	00179793          	slli	a5,a5,0x1
   154ec:	00158593          	addi	a1,a1,1
   154f0:	fea7cce3          	blt	a5,a0,154e8 <__s2b+0x50>
   154f4:	00048513          	mv	a0,s1
   154f8:	d99ff0ef          	jal	15290 <_Balloc>
   154fc:	00100793          	li	a5,1
   15500:	00f52823          	sw	a5,16(a0)
   15504:	01252a23          	sw	s2,20(a0)
   15508:	00900793          	li	a5,9
   1550c:	0937da63          	ble	s3,a5,155a0 <__s2b+0x108>
   15510:	00f40b33          	add	s6,s0,a5
   15514:	01340ab3          	add	s5,s0,s3
   15518:	00a00913          	li	s2,10
   1551c:	000b0413          	mv	s0,s6
   15520:	00140413          	addi	s0,s0,1
   15524:	fff44683          	lbu	a3,-1(s0)
   15528:	00050593          	mv	a1,a0
   1552c:	00090613          	mv	a2,s2
   15530:	fd068693          	addi	a3,a3,-48
   15534:	00048513          	mv	a0,s1
   15538:	e21ff0ef          	jal	15358 <__multadd>
   1553c:	ff5412e3          	bne	s0,s5,15520 <__s2b+0x88>
   15540:	ff898413          	addi	s0,s3,-8
   15544:	008b0433          	add	s0,s6,s0
   15548:	413a0933          	sub	s2,s4,s3
   1554c:	01240933          	add	s2,s0,s2
   15550:	00a00a93          	li	s5,10
   15554:	0349d263          	ble	s4,s3,15578 <__s2b+0xe0>
   15558:	00140413          	addi	s0,s0,1
   1555c:	fff44683          	lbu	a3,-1(s0)
   15560:	00050593          	mv	a1,a0
   15564:	000a8613          	mv	a2,s5
   15568:	fd068693          	addi	a3,a3,-48
   1556c:	00048513          	mv	a0,s1
   15570:	de9ff0ef          	jal	15358 <__multadd>
   15574:	fe8912e3          	bne	s2,s0,15558 <__s2b+0xc0>
   15578:	01c12083          	lw	ra,28(sp)
   1557c:	01812403          	lw	s0,24(sp)
   15580:	01412483          	lw	s1,20(sp)
   15584:	01012903          	lw	s2,16(sp)
   15588:	00c12983          	lw	s3,12(sp)
   1558c:	00812a03          	lw	s4,8(sp)
   15590:	00412a83          	lw	s5,4(sp)
   15594:	00012b03          	lw	s6,0(sp)
   15598:	02010113          	addi	sp,sp,32
   1559c:	00008067          	ret
   155a0:	00a40413          	addi	s0,s0,10
   155a4:	00078993          	mv	s3,a5
   155a8:	fa1ff06f          	j	15548 <__s2b+0xb0>

000155ac <__hi0bits>:
   155ac:	ffff0737          	lui	a4,0xffff0
   155b0:	00e57733          	and	a4,a0,a4
   155b4:	00050793          	mv	a5,a0
   155b8:	00000513          	li	a0,0
   155bc:	00071663          	bnez	a4,155c8 <__hi0bits+0x1c>
   155c0:	01079793          	slli	a5,a5,0x10
   155c4:	01000513          	li	a0,16
   155c8:	ff000737          	lui	a4,0xff000
   155cc:	00e7f733          	and	a4,a5,a4
   155d0:	00071663          	bnez	a4,155dc <__hi0bits+0x30>
   155d4:	00850513          	addi	a0,a0,8
   155d8:	00879793          	slli	a5,a5,0x8
   155dc:	f0000737          	lui	a4,0xf0000
   155e0:	00e7f733          	and	a4,a5,a4
   155e4:	00071663          	bnez	a4,155f0 <__hi0bits+0x44>
   155e8:	00450513          	addi	a0,a0,4
   155ec:	00479793          	slli	a5,a5,0x4
   155f0:	c0000737          	lui	a4,0xc0000
   155f4:	00e7f733          	and	a4,a5,a4
   155f8:	00071663          	bnez	a4,15604 <__hi0bits+0x58>
   155fc:	00250513          	addi	a0,a0,2
   15600:	00279793          	slli	a5,a5,0x2
   15604:	0007c863          	bltz	a5,15614 <__hi0bits+0x68>
   15608:	00179713          	slli	a4,a5,0x1
   1560c:	00074663          	bltz	a4,15618 <__hi0bits+0x6c>
   15610:	02000513          	li	a0,32
   15614:	00008067          	ret
   15618:	00150513          	addi	a0,a0,1
   1561c:	00008067          	ret

00015620 <__lo0bits>:
   15620:	00052783          	lw	a5,0(a0)
   15624:	0077f713          	andi	a4,a5,7
   15628:	02070663          	beqz	a4,15654 <__lo0bits+0x34>
   1562c:	0017f693          	andi	a3,a5,1
   15630:	00000713          	li	a4,0
   15634:	00069c63          	bnez	a3,1564c <__lo0bits+0x2c>
   15638:	0027f713          	andi	a4,a5,2
   1563c:	08071663          	bnez	a4,156c8 <__lo0bits+0xa8>
   15640:	0027d793          	srli	a5,a5,0x2
   15644:	00f52023          	sw	a5,0(a0)
   15648:	00200713          	li	a4,2
   1564c:	00070513          	mv	a0,a4
   15650:	00008067          	ret
   15654:	01079693          	slli	a3,a5,0x10
   15658:	0106d693          	srli	a3,a3,0x10
   1565c:	00000713          	li	a4,0
   15660:	00069663          	bnez	a3,1566c <__lo0bits+0x4c>
   15664:	0107d793          	srli	a5,a5,0x10
   15668:	01000713          	li	a4,16
   1566c:	0ff7f693          	andi	a3,a5,255
   15670:	00069663          	bnez	a3,1567c <__lo0bits+0x5c>
   15674:	00870713          	addi	a4,a4,8 # c0000008 <_gp+0xbffe2598>
   15678:	0087d793          	srli	a5,a5,0x8
   1567c:	00f7f693          	andi	a3,a5,15
   15680:	00069663          	bnez	a3,1568c <__lo0bits+0x6c>
   15684:	00470713          	addi	a4,a4,4
   15688:	0047d793          	srli	a5,a5,0x4
   1568c:	0037f693          	andi	a3,a5,3
   15690:	00069663          	bnez	a3,1569c <__lo0bits+0x7c>
   15694:	00270713          	addi	a4,a4,2
   15698:	0027d793          	srli	a5,a5,0x2
   1569c:	0017f693          	andi	a3,a5,1
   156a0:	00069e63          	bnez	a3,156bc <__lo0bits+0x9c>
   156a4:	0017d793          	srli	a5,a5,0x1
   156a8:	00079863          	bnez	a5,156b8 <__lo0bits+0x98>
   156ac:	02000713          	li	a4,32
   156b0:	00070513          	mv	a0,a4
   156b4:	00008067          	ret
   156b8:	00170713          	addi	a4,a4,1
   156bc:	00f52023          	sw	a5,0(a0)
   156c0:	00070513          	mv	a0,a4
   156c4:	00008067          	ret
   156c8:	0017d793          	srli	a5,a5,0x1
   156cc:	00100713          	li	a4,1
   156d0:	00f52023          	sw	a5,0(a0)
   156d4:	00070513          	mv	a0,a4
   156d8:	00008067          	ret

000156dc <__i2b>:
   156dc:	ff010113          	addi	sp,sp,-16
   156e0:	00812423          	sw	s0,8(sp)
   156e4:	00058413          	mv	s0,a1
   156e8:	00100593          	li	a1,1
   156ec:	00112623          	sw	ra,12(sp)
   156f0:	ba1ff0ef          	jal	15290 <_Balloc>
   156f4:	00c12083          	lw	ra,12(sp)
   156f8:	00100713          	li	a4,1
   156fc:	00852a23          	sw	s0,20(a0)
   15700:	00e52823          	sw	a4,16(a0)
   15704:	00812403          	lw	s0,8(sp)
   15708:	01010113          	addi	sp,sp,16
   1570c:	00008067          	ret

00015710 <__multiply>:
   15710:	fb010113          	addi	sp,sp,-80
   15714:	03312e23          	sw	s3,60(sp)
   15718:	03812423          	sw	s8,40(sp)
   1571c:	0105a983          	lw	s3,16(a1)
   15720:	01062c03          	lw	s8,16(a2)
   15724:	03412c23          	sw	s4,56(sp)
   15728:	03912223          	sw	s9,36(sp)
   1572c:	04112623          	sw	ra,76(sp)
   15730:	04812423          	sw	s0,72(sp)
   15734:	04912223          	sw	s1,68(sp)
   15738:	05212023          	sw	s2,64(sp)
   1573c:	03512a23          	sw	s5,52(sp)
   15740:	03612823          	sw	s6,48(sp)
   15744:	03712623          	sw	s7,44(sp)
   15748:	03a12023          	sw	s10,32(sp)
   1574c:	01b12e23          	sw	s11,28(sp)
   15750:	00058c93          	mv	s9,a1
   15754:	00060a13          	mv	s4,a2
   15758:	0189dc63          	ble	s8,s3,15770 <__multiply+0x60>
   1575c:	00098713          	mv	a4,s3
   15760:	00060c93          	mv	s9,a2
   15764:	000c0993          	mv	s3,s8
   15768:	00058a13          	mv	s4,a1
   1576c:	00070c13          	mv	s8,a4
   15770:	008ca783          	lw	a5,8(s9)
   15774:	004ca583          	lw	a1,4(s9)
   15778:	01898bb3          	add	s7,s3,s8
   1577c:	0177a7b3          	slt	a5,a5,s7
   15780:	00f585b3          	add	a1,a1,a5
   15784:	b0dff0ef          	jal	15290 <_Balloc>
   15788:	01450b13          	addi	s6,a0,20
   1578c:	002b9a93          	slli	s5,s7,0x2
   15790:	015b07b3          	add	a5,s6,s5
   15794:	00078713          	mv	a4,a5
   15798:	00f12023          	sw	a5,0(sp)
   1579c:	00a12623          	sw	a0,12(sp)
   157a0:	000b0793          	mv	a5,s6
   157a4:	00eb7a63          	bleu	a4,s6,157b8 <__multiply+0xa8>
   157a8:	00012703          	lw	a4,0(sp)
   157ac:	0007a023          	sw	zero,0(a5)
   157b0:	00478793          	addi	a5,a5,4
   157b4:	fee7eae3          	bltu	a5,a4,157a8 <__multiply+0x98>
   157b8:	014a0a13          	addi	s4,s4,20
   157bc:	002c1c13          	slli	s8,s8,0x2
   157c0:	014c8793          	addi	a5,s9,20
   157c4:	018a0733          	add	a4,s4,s8
   157c8:	00299993          	slli	s3,s3,0x2
   157cc:	000104b7          	lui	s1,0x10
   157d0:	00f12223          	sw	a5,4(sp)
   157d4:	00e12423          	sw	a4,8(sp)
   157d8:	013789b3          	add	s3,a5,s3
   157dc:	fff48493          	addi	s1,s1,-1 # ffff <_ftext-0x1>
   157e0:	10ea7663          	bleu	a4,s4,158ec <__multiply+0x1dc>
   157e4:	000a2d83          	lw	s11,0(s4)
   157e8:	009df933          	and	s2,s11,s1
   157ec:	06090a63          	beqz	s2,15860 <__multiply+0x150>
   157f0:	00412d03          	lw	s10,4(sp)
   157f4:	000b0c13          	mv	s8,s6
   157f8:	00000c93          	li	s9,0
   157fc:	000d2a83          	lw	s5,0(s10)
   15800:	000c2403          	lw	s0,0(s8)
   15804:	00090593          	mv	a1,s2
   15808:	009af533          	and	a0,s5,s1
   1580c:	2d1040ef          	jal	1a2dc <__mulsi3>
   15810:	00947db3          	and	s11,s0,s1
   15814:	01b50db3          	add	s11,a0,s11
   15818:	00090593          	mv	a1,s2
   1581c:	010ad513          	srli	a0,s5,0x10
   15820:	019d8db3          	add	s11,s11,s9
   15824:	2b9040ef          	jal	1a2dc <__mulsi3>
   15828:	01045413          	srli	s0,s0,0x10
   1582c:	00850533          	add	a0,a0,s0
   15830:	010dd413          	srli	s0,s11,0x10
   15834:	00850533          	add	a0,a0,s0
   15838:	01051693          	slli	a3,a0,0x10
   1583c:	009dfdb3          	and	s11,s11,s1
   15840:	004c0c13          	addi	s8,s8,4
   15844:	01b6edb3          	or	s11,a3,s11
   15848:	004d0d13          	addi	s10,s10,4
   1584c:	ffbc2e23          	sw	s11,-4(s8)
   15850:	01055c93          	srli	s9,a0,0x10
   15854:	fb3d64e3          	bltu	s10,s3,157fc <__multiply+0xec>
   15858:	019c2023          	sw	s9,0(s8)
   1585c:	000a2d83          	lw	s11,0(s4)
   15860:	010ddd93          	srli	s11,s11,0x10
   15864:	060d8c63          	beqz	s11,158dc <__multiply+0x1cc>
   15868:	000b2403          	lw	s0,0(s6)
   1586c:	00412c83          	lw	s9,4(sp)
   15870:	000b0d13          	mv	s10,s6
   15874:	00040913          	mv	s2,s0
   15878:	00000c13          	li	s8,0
   1587c:	000ca503          	lw	a0,0(s9)
   15880:	000d8593          	mv	a1,s11
   15884:	01095913          	srli	s2,s2,0x10
   15888:	00957533          	and	a0,a0,s1
   1588c:	251040ef          	jal	1a2dc <__mulsi3>
   15890:	01250933          	add	s2,a0,s2
   15894:	01890c33          	add	s8,s2,s8
   15898:	010c1513          	slli	a0,s8,0x10
   1589c:	00947433          	and	s0,s0,s1
   158a0:	00856433          	or	s0,a0,s0
   158a4:	004d0d13          	addi	s10,s10,4
   158a8:	fe8d2e23          	sw	s0,-4(s10)
   158ac:	004c8c93          	addi	s9,s9,4
   158b0:	000d2903          	lw	s2,0(s10)
   158b4:	ffecd503          	lhu	a0,-2(s9)
   158b8:	000d8593          	mv	a1,s11
   158bc:	00997433          	and	s0,s2,s1
   158c0:	21d040ef          	jal	1a2dc <__mulsi3>
   158c4:	010c5793          	srli	a5,s8,0x10
   158c8:	00850433          	add	s0,a0,s0
   158cc:	00f40433          	add	s0,s0,a5
   158d0:	01045c13          	srli	s8,s0,0x10
   158d4:	fb3ce4e3          	bltu	s9,s3,1587c <__multiply+0x16c>
   158d8:	008d2023          	sw	s0,0(s10)
   158dc:	00812783          	lw	a5,8(sp)
   158e0:	004a0a13          	addi	s4,s4,4
   158e4:	004b0b13          	addi	s6,s6,4
   158e8:	eefa6ee3          	bltu	s4,a5,157e4 <__multiply+0xd4>
   158ec:	03705663          	blez	s7,15918 <__multiply+0x208>
   158f0:	00012703          	lw	a4,0(sp)
   158f4:	ffc72783          	lw	a5,-4(a4)
   158f8:	ffc70a93          	addi	s5,a4,-4
   158fc:	00078863          	beqz	a5,1590c <__multiply+0x1fc>
   15900:	0180006f          	j	15918 <__multiply+0x208>
   15904:	000aa783          	lw	a5,0(s5)
   15908:	00079863          	bnez	a5,15918 <__multiply+0x208>
   1590c:	fffb8b93          	addi	s7,s7,-1
   15910:	ffca8a93          	addi	s5,s5,-4
   15914:	fe0b98e3          	bnez	s7,15904 <__multiply+0x1f4>
   15918:	00c12783          	lw	a5,12(sp)
   1591c:	04c12083          	lw	ra,76(sp)
   15920:	04812403          	lw	s0,72(sp)
   15924:	0177a823          	sw	s7,16(a5)
   15928:	00078513          	mv	a0,a5
   1592c:	04412483          	lw	s1,68(sp)
   15930:	04012903          	lw	s2,64(sp)
   15934:	03c12983          	lw	s3,60(sp)
   15938:	03812a03          	lw	s4,56(sp)
   1593c:	03412a83          	lw	s5,52(sp)
   15940:	03012b03          	lw	s6,48(sp)
   15944:	02c12b83          	lw	s7,44(sp)
   15948:	02812c03          	lw	s8,40(sp)
   1594c:	02412c83          	lw	s9,36(sp)
   15950:	02012d03          	lw	s10,32(sp)
   15954:	01c12d83          	lw	s11,28(sp)
   15958:	05010113          	addi	sp,sp,80
   1595c:	00008067          	ret

00015960 <__pow5mult>:
   15960:	fe010113          	addi	sp,sp,-32
   15964:	00812c23          	sw	s0,24(sp)
   15968:	01312623          	sw	s3,12(sp)
   1596c:	01412423          	sw	s4,8(sp)
   15970:	00112e23          	sw	ra,28(sp)
   15974:	00912a23          	sw	s1,20(sp)
   15978:	01212823          	sw	s2,16(sp)
   1597c:	00367793          	andi	a5,a2,3
   15980:	00060413          	mv	s0,a2
   15984:	00050993          	mv	s3,a0
   15988:	00058a13          	mv	s4,a1
   1598c:	0c079463          	bnez	a5,15a54 <__pow5mult+0xf4>
   15990:	40245413          	srai	s0,s0,0x2
   15994:	000a0913          	mv	s2,s4
   15998:	06040863          	beqz	s0,15a08 <__pow5mult+0xa8>
   1599c:	0489a483          	lw	s1,72(s3)
   159a0:	0c048e63          	beqz	s1,15a7c <__pow5mult+0x11c>
   159a4:	00147793          	andi	a5,s0,1
   159a8:	000a0913          	mv	s2,s4
   159ac:	02079063          	bnez	a5,159cc <__pow5mult+0x6c>
   159b0:	40145413          	srai	s0,s0,0x1
   159b4:	04040a63          	beqz	s0,15a08 <__pow5mult+0xa8>
   159b8:	0004a503          	lw	a0,0(s1)
   159bc:	06050863          	beqz	a0,15a2c <__pow5mult+0xcc>
   159c0:	00050493          	mv	s1,a0
   159c4:	00147793          	andi	a5,s0,1
   159c8:	fe0784e3          	beqz	a5,159b0 <__pow5mult+0x50>
   159cc:	00048613          	mv	a2,s1
   159d0:	00090593          	mv	a1,s2
   159d4:	00098513          	mv	a0,s3
   159d8:	d39ff0ef          	jal	15710 <__multiply>
   159dc:	06090863          	beqz	s2,15a4c <__pow5mult+0xec>
   159e0:	00492703          	lw	a4,4(s2)
   159e4:	04c9a783          	lw	a5,76(s3)
   159e8:	40145413          	srai	s0,s0,0x1
   159ec:	00271713          	slli	a4,a4,0x2
   159f0:	00e787b3          	add	a5,a5,a4
   159f4:	0007a703          	lw	a4,0(a5)
   159f8:	00e92023          	sw	a4,0(s2)
   159fc:	0127a023          	sw	s2,0(a5)
   15a00:	00050913          	mv	s2,a0
   15a04:	fa041ae3          	bnez	s0,159b8 <__pow5mult+0x58>
   15a08:	01c12083          	lw	ra,28(sp)
   15a0c:	00090513          	mv	a0,s2
   15a10:	01812403          	lw	s0,24(sp)
   15a14:	01412483          	lw	s1,20(sp)
   15a18:	01012903          	lw	s2,16(sp)
   15a1c:	00c12983          	lw	s3,12(sp)
   15a20:	00812a03          	lw	s4,8(sp)
   15a24:	02010113          	addi	sp,sp,32
   15a28:	00008067          	ret
   15a2c:	00048613          	mv	a2,s1
   15a30:	00048593          	mv	a1,s1
   15a34:	00098513          	mv	a0,s3
   15a38:	cd9ff0ef          	jal	15710 <__multiply>
   15a3c:	00a4a023          	sw	a0,0(s1)
   15a40:	00052023          	sw	zero,0(a0)
   15a44:	00050493          	mv	s1,a0
   15a48:	f7dff06f          	j	159c4 <__pow5mult+0x64>
   15a4c:	00050913          	mv	s2,a0
   15a50:	f61ff06f          	j	159b0 <__pow5mult+0x50>
   15a54:	fff78793          	addi	a5,a5,-1
   15a58:	0001b737          	lui	a4,0x1b
   15a5c:	23070713          	addi	a4,a4,560 # 1b230 <p05.2572>
   15a60:	00279793          	slli	a5,a5,0x2
   15a64:	00f707b3          	add	a5,a4,a5
   15a68:	0007a603          	lw	a2,0(a5)
   15a6c:	00000693          	li	a3,0
   15a70:	8e9ff0ef          	jal	15358 <__multadd>
   15a74:	00050a13          	mv	s4,a0
   15a78:	f19ff06f          	j	15990 <__pow5mult+0x30>
   15a7c:	00100593          	li	a1,1
   15a80:	00098513          	mv	a0,s3
   15a84:	80dff0ef          	jal	15290 <_Balloc>
   15a88:	27100793          	li	a5,625
   15a8c:	00f52a23          	sw	a5,20(a0)
   15a90:	00100793          	li	a5,1
   15a94:	00f52823          	sw	a5,16(a0)
   15a98:	04a9a423          	sw	a0,72(s3)
   15a9c:	00050493          	mv	s1,a0
   15aa0:	00052023          	sw	zero,0(a0)
   15aa4:	f01ff06f          	j	159a4 <__pow5mult+0x44>

00015aa8 <__lshift>:
   15aa8:	fe010113          	addi	sp,sp,-32
   15aac:	01412423          	sw	s4,8(sp)
   15ab0:	0105aa03          	lw	s4,16(a1)
   15ab4:	00812c23          	sw	s0,24(sp)
   15ab8:	0085a783          	lw	a5,8(a1)
   15abc:	40565413          	srai	s0,a2,0x5
   15ac0:	01440a33          	add	s4,s0,s4
   15ac4:	00912a23          	sw	s1,20(sp)
   15ac8:	01212823          	sw	s2,16(sp)
   15acc:	01312623          	sw	s3,12(sp)
   15ad0:	01512223          	sw	s5,4(sp)
   15ad4:	00112e23          	sw	ra,28(sp)
   15ad8:	001a0493          	addi	s1,s4,1
   15adc:	00058993          	mv	s3,a1
   15ae0:	00060913          	mv	s2,a2
   15ae4:	00050a93          	mv	s5,a0
   15ae8:	0045a583          	lw	a1,4(a1)
   15aec:	0097d863          	ble	s1,a5,15afc <__lshift+0x54>
   15af0:	00179793          	slli	a5,a5,0x1
   15af4:	00158593          	addi	a1,a1,1
   15af8:	fe97cce3          	blt	a5,s1,15af0 <__lshift+0x48>
   15afc:	000a8513          	mv	a0,s5
   15b00:	f90ff0ef          	jal	15290 <_Balloc>
   15b04:	01450793          	addi	a5,a0,20
   15b08:	0e805063          	blez	s0,15be8 <__lshift+0x140>
   15b0c:	00241713          	slli	a4,s0,0x2
   15b10:	00e78733          	add	a4,a5,a4
   15b14:	00478793          	addi	a5,a5,4
   15b18:	fe07ae23          	sw	zero,-4(a5)
   15b1c:	fee79ce3          	bne	a5,a4,15b14 <__lshift+0x6c>
   15b20:	0109a803          	lw	a6,16(s3)
   15b24:	01498793          	addi	a5,s3,20
   15b28:	01f97613          	andi	a2,s2,31
   15b2c:	00281813          	slli	a6,a6,0x2
   15b30:	01078833          	add	a6,a5,a6
   15b34:	08060463          	beqz	a2,15bbc <__lshift+0x114>
   15b38:	02000893          	li	a7,32
   15b3c:	40c888b3          	sub	a7,a7,a2
   15b40:	00000593          	li	a1,0
   15b44:	0007a683          	lw	a3,0(a5)
   15b48:	00470713          	addi	a4,a4,4
   15b4c:	00478793          	addi	a5,a5,4
   15b50:	00c696b3          	sll	a3,a3,a2
   15b54:	00b6e6b3          	or	a3,a3,a1
   15b58:	fed72e23          	sw	a3,-4(a4)
   15b5c:	ffc7a683          	lw	a3,-4(a5)
   15b60:	0116d5b3          	srl	a1,a3,a7
   15b64:	ff07e0e3          	bltu	a5,a6,15b44 <__lshift+0x9c>
   15b68:	00b72023          	sw	a1,0(a4)
   15b6c:	00058463          	beqz	a1,15b74 <__lshift+0xcc>
   15b70:	002a0493          	addi	s1,s4,2
   15b74:	0049a703          	lw	a4,4(s3)
   15b78:	04caa783          	lw	a5,76(s5)
   15b7c:	fff48493          	addi	s1,s1,-1
   15b80:	00271713          	slli	a4,a4,0x2
   15b84:	00e787b3          	add	a5,a5,a4
   15b88:	0007a703          	lw	a4,0(a5)
   15b8c:	01c12083          	lw	ra,28(sp)
   15b90:	00952823          	sw	s1,16(a0)
   15b94:	00e9a023          	sw	a4,0(s3)
   15b98:	0137a023          	sw	s3,0(a5)
   15b9c:	01812403          	lw	s0,24(sp)
   15ba0:	01412483          	lw	s1,20(sp)
   15ba4:	01012903          	lw	s2,16(sp)
   15ba8:	00c12983          	lw	s3,12(sp)
   15bac:	00812a03          	lw	s4,8(sp)
   15bb0:	00412a83          	lw	s5,4(sp)
   15bb4:	02010113          	addi	sp,sp,32
   15bb8:	00008067          	ret
   15bbc:	00478793          	addi	a5,a5,4
   15bc0:	ffc7a683          	lw	a3,-4(a5)
   15bc4:	00470713          	addi	a4,a4,4
   15bc8:	fed72e23          	sw	a3,-4(a4)
   15bcc:	fb07f4e3          	bleu	a6,a5,15b74 <__lshift+0xcc>
   15bd0:	00478793          	addi	a5,a5,4
   15bd4:	ffc7a683          	lw	a3,-4(a5)
   15bd8:	00470713          	addi	a4,a4,4
   15bdc:	fed72e23          	sw	a3,-4(a4)
   15be0:	fd07eee3          	bltu	a5,a6,15bbc <__lshift+0x114>
   15be4:	f91ff06f          	j	15b74 <__lshift+0xcc>
   15be8:	00078713          	mv	a4,a5
   15bec:	f35ff06f          	j	15b20 <__lshift+0x78>

00015bf0 <__mcmp>:
   15bf0:	00050613          	mv	a2,a0
   15bf4:	0105a783          	lw	a5,16(a1)
   15bf8:	01052503          	lw	a0,16(a0)
   15bfc:	40f50533          	sub	a0,a0,a5
   15c00:	04051263          	bnez	a0,15c44 <__mcmp+0x54>
   15c04:	00279713          	slli	a4,a5,0x2
   15c08:	01460613          	addi	a2,a2,20
   15c0c:	01458593          	addi	a1,a1,20
   15c10:	00e607b3          	add	a5,a2,a4
   15c14:	00e585b3          	add	a1,a1,a4
   15c18:	0080006f          	j	15c20 <__mcmp+0x30>
   15c1c:	02f67463          	bleu	a5,a2,15c44 <__mcmp+0x54>
   15c20:	ffc78793          	addi	a5,a5,-4
   15c24:	ffc58593          	addi	a1,a1,-4
   15c28:	0007a703          	lw	a4,0(a5)
   15c2c:	0005a683          	lw	a3,0(a1)
   15c30:	fed706e3          	beq	a4,a3,15c1c <__mcmp+0x2c>
   15c34:	00d73733          	sltu	a4,a4,a3
   15c38:	40e00533          	neg	a0,a4
   15c3c:	00156513          	ori	a0,a0,1
   15c40:	00008067          	ret
   15c44:	00008067          	ret

00015c48 <__mdiff>:
   15c48:	fe010113          	addi	sp,sp,-32
   15c4c:	01212823          	sw	s2,16(sp)
   15c50:	01062703          	lw	a4,16(a2)
   15c54:	0105a903          	lw	s2,16(a1)
   15c58:	01312623          	sw	s3,12(sp)
   15c5c:	01412423          	sw	s4,8(sp)
   15c60:	00112e23          	sw	ra,28(sp)
   15c64:	00812c23          	sw	s0,24(sp)
   15c68:	00912a23          	sw	s1,20(sp)
   15c6c:	40e90933          	sub	s2,s2,a4
   15c70:	00058993          	mv	s3,a1
   15c74:	00060a13          	mv	s4,a2
   15c78:	04091863          	bnez	s2,15cc8 <__mdiff+0x80>
   15c7c:	00271713          	slli	a4,a4,0x2
   15c80:	01458313          	addi	t1,a1,20
   15c84:	01460493          	addi	s1,a2,20
   15c88:	00e307b3          	add	a5,t1,a4
   15c8c:	00e48733          	add	a4,s1,a4
   15c90:	0080006f          	j	15c98 <__mdiff+0x50>
   15c94:	16f37863          	bleu	a5,t1,15e04 <__mdiff+0x1bc>
   15c98:	ffc78793          	addi	a5,a5,-4
   15c9c:	ffc70713          	addi	a4,a4,-4
   15ca0:	0007a583          	lw	a1,0(a5)
   15ca4:	00072683          	lw	a3,0(a4)
   15ca8:	fed586e3          	beq	a1,a3,15c94 <__mdiff+0x4c>
   15cac:	16d5f863          	bleu	a3,a1,15e1c <__mdiff+0x1d4>
   15cb0:	00098793          	mv	a5,s3
   15cb4:	00030413          	mv	s0,t1
   15cb8:	000a0993          	mv	s3,s4
   15cbc:	00100913          	li	s2,1
   15cc0:	00078a13          	mv	s4,a5
   15cc4:	0140006f          	j	15cd8 <__mdiff+0x90>
   15cc8:	16094063          	bltz	s2,15e28 <__mdiff+0x1e0>
   15ccc:	01498493          	addi	s1,s3,20
   15cd0:	014a0413          	addi	s0,s4,20
   15cd4:	00000913          	li	s2,0
   15cd8:	0049a583          	lw	a1,4(s3)
   15cdc:	db4ff0ef          	jal	15290 <_Balloc>
   15ce0:	0109ae03          	lw	t3,16(s3)
   15ce4:	010a2f03          	lw	t5,16(s4)
   15ce8:	00010637          	lui	a2,0x10
   15cec:	002e1e93          	slli	t4,t3,0x2
   15cf0:	002f1f13          	slli	t5,t5,0x2
   15cf4:	01252623          	sw	s2,12(a0)
   15cf8:	01d48eb3          	add	t4,s1,t4
   15cfc:	01e40f33          	add	t5,s0,t5
   15d00:	01450593          	addi	a1,a0,20
   15d04:	00040893          	mv	a7,s0
   15d08:	00048313          	mv	t1,s1
   15d0c:	00000793          	li	a5,0
   15d10:	fff60613          	addi	a2,a2,-1 # ffff <_ftext-0x1>
   15d14:	0080006f          	j	15d1c <__mdiff+0xd4>
   15d18:	00080313          	mv	t1,a6
   15d1c:	00032703          	lw	a4,0(t1)
   15d20:	0008a803          	lw	a6,0(a7)
   15d24:	00458593          	addi	a1,a1,4
   15d28:	00c776b3          	and	a3,a4,a2
   15d2c:	00f686b3          	add	a3,a3,a5
   15d30:	00c877b3          	and	a5,a6,a2
   15d34:	40f686b3          	sub	a3,a3,a5
   15d38:	01085813          	srli	a6,a6,0x10
   15d3c:	01075793          	srli	a5,a4,0x10
   15d40:	410787b3          	sub	a5,a5,a6
   15d44:	4106d713          	srai	a4,a3,0x10
   15d48:	00e787b3          	add	a5,a5,a4
   15d4c:	01079713          	slli	a4,a5,0x10
   15d50:	00c6f6b3          	and	a3,a3,a2
   15d54:	00d766b3          	or	a3,a4,a3
   15d58:	00488893          	addi	a7,a7,4
   15d5c:	fed5ae23          	sw	a3,-4(a1)
   15d60:	00430813          	addi	a6,t1,4
   15d64:	4107d793          	srai	a5,a5,0x10
   15d68:	fbe8e8e3          	bltu	a7,t5,15d18 <__mdiff+0xd0>
   15d6c:	05d87e63          	bleu	t4,a6,15dc8 <__mdiff+0x180>
   15d70:	00010f37          	lui	t5,0x10
   15d74:	00058893          	mv	a7,a1
   15d78:	ffff0f13          	addi	t5,t5,-1 # ffff <_ftext-0x1>
   15d7c:	00082703          	lw	a4,0(a6)
   15d80:	00488893          	addi	a7,a7,4
   15d84:	00480813          	addi	a6,a6,4
   15d88:	01e77633          	and	a2,a4,t5
   15d8c:	00f60633          	add	a2,a2,a5
   15d90:	41065693          	srai	a3,a2,0x10
   15d94:	01075793          	srli	a5,a4,0x10
   15d98:	00d787b3          	add	a5,a5,a3
   15d9c:	01079693          	slli	a3,a5,0x10
   15da0:	01e67633          	and	a2,a2,t5
   15da4:	00c6e6b3          	or	a3,a3,a2
   15da8:	fed8ae23          	sw	a3,-4(a7)
   15dac:	4107d793          	srai	a5,a5,0x10
   15db0:	fdd866e3          	bltu	a6,t4,15d7c <__mdiff+0x134>
   15db4:	406e87b3          	sub	a5,t4,t1
   15db8:	ffb78793          	addi	a5,a5,-5
   15dbc:	ffc7f793          	andi	a5,a5,-4
   15dc0:	00478793          	addi	a5,a5,4
   15dc4:	00f585b3          	add	a1,a1,a5
   15dc8:	ffc58593          	addi	a1,a1,-4
   15dcc:	00069a63          	bnez	a3,15de0 <__mdiff+0x198>
   15dd0:	ffc58593          	addi	a1,a1,-4
   15dd4:	0005a783          	lw	a5,0(a1)
   15dd8:	fffe0e13          	addi	t3,t3,-1
   15ddc:	fe078ae3          	beqz	a5,15dd0 <__mdiff+0x188>
   15de0:	01c52823          	sw	t3,16(a0)
   15de4:	01c12083          	lw	ra,28(sp)
   15de8:	01812403          	lw	s0,24(sp)
   15dec:	01412483          	lw	s1,20(sp)
   15df0:	01012903          	lw	s2,16(sp)
   15df4:	00c12983          	lw	s3,12(sp)
   15df8:	00812a03          	lw	s4,8(sp)
   15dfc:	02010113          	addi	sp,sp,32
   15e00:	00008067          	ret
   15e04:	00000593          	li	a1,0
   15e08:	c88ff0ef          	jal	15290 <_Balloc>
   15e0c:	00100793          	li	a5,1
   15e10:	00f52823          	sw	a5,16(a0)
   15e14:	00052a23          	sw	zero,20(a0)
   15e18:	fcdff06f          	j	15de4 <__mdiff+0x19c>
   15e1c:	00048413          	mv	s0,s1
   15e20:	00030493          	mv	s1,t1
   15e24:	eb5ff06f          	j	15cd8 <__mdiff+0x90>
   15e28:	01460493          	addi	s1,a2,20
   15e2c:	01458413          	addi	s0,a1,20
   15e30:	00100913          	li	s2,1
   15e34:	00060993          	mv	s3,a2
   15e38:	00058a13          	mv	s4,a1
   15e3c:	e9dff06f          	j	15cd8 <__mdiff+0x90>

00015e40 <__ulp>:
   15e40:	7ff007b7          	lui	a5,0x7ff00
   15e44:	00f5f5b3          	and	a1,a1,a5
   15e48:	fcc007b7          	lui	a5,0xfcc00
   15e4c:	00f585b3          	add	a1,a1,a5
   15e50:	00b05c63          	blez	a1,15e68 <__ulp+0x28>
   15e54:	00000713          	li	a4,0
   15e58:	00058793          	mv	a5,a1
   15e5c:	00070513          	mv	a0,a4
   15e60:	00078593          	mv	a1,a5
   15e64:	00008067          	ret
   15e68:	40b005b3          	neg	a1,a1
   15e6c:	4145d593          	srai	a1,a1,0x14
   15e70:	01300793          	li	a5,19
   15e74:	02b7d863          	ble	a1,a5,15ea4 <__ulp+0x64>
   15e78:	fec58593          	addi	a1,a1,-20
   15e7c:	01e00613          	li	a2,30
   15e80:	00000793          	li	a5,0
   15e84:	00100693          	li	a3,1
   15e88:	00b64663          	blt	a2,a1,15e94 <__ulp+0x54>
   15e8c:	fff5c593          	not	a1,a1
   15e90:	00b696b3          	sll	a3,a3,a1
   15e94:	00068713          	mv	a4,a3
   15e98:	00070513          	mv	a0,a4
   15e9c:	00078593          	mv	a1,a5
   15ea0:	00008067          	ret
   15ea4:	000806b7          	lui	a3,0x80
   15ea8:	00000713          	li	a4,0
   15eac:	40b6d7b3          	sra	a5,a3,a1
   15eb0:	00070513          	mv	a0,a4
   15eb4:	00078593          	mv	a1,a5
   15eb8:	00008067          	ret

00015ebc <__b2d>:
   15ebc:	fe010113          	addi	sp,sp,-32
   15ec0:	00812c23          	sw	s0,24(sp)
   15ec4:	01052403          	lw	s0,16(a0)
   15ec8:	00912a23          	sw	s1,20(sp)
   15ecc:	01450493          	addi	s1,a0,20
   15ed0:	00241413          	slli	s0,s0,0x2
   15ed4:	00848433          	add	s0,s1,s0
   15ed8:	01212823          	sw	s2,16(sp)
   15edc:	ffc42903          	lw	s2,-4(s0)
   15ee0:	01312623          	sw	s3,12(sp)
   15ee4:	01412423          	sw	s4,8(sp)
   15ee8:	00090513          	mv	a0,s2
   15eec:	00058a13          	mv	s4,a1
   15ef0:	00112e23          	sw	ra,28(sp)
   15ef4:	eb8ff0ef          	jal	155ac <__hi0bits>
   15ef8:	02000793          	li	a5,32
   15efc:	40a78733          	sub	a4,a5,a0
   15f00:	00ea2023          	sw	a4,0(s4)
   15f04:	00a00713          	li	a4,10
   15f08:	ffc40993          	addi	s3,s0,-4
   15f0c:	04a74e63          	blt	a4,a0,15f68 <__b2d+0xac>
   15f10:	00b00793          	li	a5,11
   15f14:	40a787b3          	sub	a5,a5,a0
   15f18:	3ff00737          	lui	a4,0x3ff00
   15f1c:	00f955b3          	srl	a1,s2,a5
   15f20:	00e5e6b3          	or	a3,a1,a4
   15f24:	00000713          	li	a4,0
   15f28:	0134f663          	bleu	s3,s1,15f34 <__b2d+0x78>
   15f2c:	ff842703          	lw	a4,-8(s0)
   15f30:	00f75733          	srl	a4,a4,a5
   15f34:	01550793          	addi	a5,a0,21
   15f38:	00f91533          	sll	a0,s2,a5
   15f3c:	00e56633          	or	a2,a0,a4
   15f40:	01c12083          	lw	ra,28(sp)
   15f44:	00060513          	mv	a0,a2
   15f48:	00068593          	mv	a1,a3
   15f4c:	01812403          	lw	s0,24(sp)
   15f50:	01412483          	lw	s1,20(sp)
   15f54:	01012903          	lw	s2,16(sp)
   15f58:	00c12983          	lw	s3,12(sp)
   15f5c:	00812a03          	lw	s4,8(sp)
   15f60:	02010113          	addi	sp,sp,32
   15f64:	00008067          	ret
   15f68:	0534f463          	bleu	s3,s1,15fb0 <__b2d+0xf4>
   15f6c:	ff550713          	addi	a4,a0,-11
   15f70:	ff842503          	lw	a0,-8(s0)
   15f74:	04070263          	beqz	a4,15fb8 <__b2d+0xfc>
   15f78:	3ff006b7          	lui	a3,0x3ff00
   15f7c:	40e787b3          	sub	a5,a5,a4
   15f80:	00e91933          	sll	s2,s2,a4
   15f84:	00d96933          	or	s2,s2,a3
   15f88:	00f55833          	srl	a6,a0,a5
   15f8c:	ff840593          	addi	a1,s0,-8
   15f90:	010966b3          	or	a3,s2,a6
   15f94:	04b4f663          	bleu	a1,s1,15fe0 <__b2d+0x124>
   15f98:	ff442583          	lw	a1,-12(s0)
   15f9c:	00e51533          	sll	a0,a0,a4
   15fa0:	00f5d7b3          	srl	a5,a1,a5
   15fa4:	00a7e533          	or	a0,a5,a0
   15fa8:	00050613          	mv	a2,a0
   15fac:	f95ff06f          	j	15f40 <__b2d+0x84>
   15fb0:	ff550513          	addi	a0,a0,-11
   15fb4:	00051a63          	bnez	a0,15fc8 <__b2d+0x10c>
   15fb8:	3ff007b7          	lui	a5,0x3ff00
   15fbc:	00f966b3          	or	a3,s2,a5
   15fc0:	00050613          	mv	a2,a0
   15fc4:	f7dff06f          	j	15f40 <__b2d+0x84>
   15fc8:	00a91533          	sll	a0,s2,a0
   15fcc:	3ff007b7          	lui	a5,0x3ff00
   15fd0:	00f566b3          	or	a3,a0,a5
   15fd4:	00000513          	li	a0,0
   15fd8:	00050613          	mv	a2,a0
   15fdc:	f65ff06f          	j	15f40 <__b2d+0x84>
   15fe0:	00e51533          	sll	a0,a0,a4
   15fe4:	00050613          	mv	a2,a0
   15fe8:	f59ff06f          	j	15f40 <__b2d+0x84>

00015fec <__d2b>:
   15fec:	fd010113          	addi	sp,sp,-48
   15ff0:	00100593          	li	a1,1
   15ff4:	02812423          	sw	s0,40(sp)
   15ff8:	02912223          	sw	s1,36(sp)
   15ffc:	00068413          	mv	s0,a3
   16000:	03212023          	sw	s2,32(sp)
   16004:	01312e23          	sw	s3,28(sp)
   16008:	01412c23          	sw	s4,24(sp)
   1600c:	01512a23          	sw	s5,20(sp)
   16010:	00078913          	mv	s2,a5
   16014:	02112623          	sw	ra,44(sp)
   16018:	00070a13          	mv	s4,a4
   1601c:	00060a93          	mv	s5,a2
   16020:	a70ff0ef          	jal	15290 <_Balloc>
   16024:	01445493          	srli	s1,s0,0x14
   16028:	001007b7          	lui	a5,0x100
   1602c:	fff78693          	addi	a3,a5,-1 # fffff <_gp+0xe258f>
   16030:	7ff4f493          	andi	s1,s1,2047
   16034:	00050993          	mv	s3,a0
   16038:	00d47433          	and	s0,s0,a3
   1603c:	00048463          	beqz	s1,16044 <__d2b+0x58>
   16040:	00f46433          	or	s0,s0,a5
   16044:	00812623          	sw	s0,12(sp)
   16048:	080a8263          	beqz	s5,160cc <__d2b+0xe0>
   1604c:	00810513          	addi	a0,sp,8
   16050:	01512423          	sw	s5,8(sp)
   16054:	dccff0ef          	jal	15620 <__lo0bits>
   16058:	00050793          	mv	a5,a0
   1605c:	00c12703          	lw	a4,12(sp)
   16060:	0a051463          	bnez	a0,16108 <__d2b+0x11c>
   16064:	00812683          	lw	a3,8(sp)
   16068:	00d9aa23          	sw	a3,20(s3)
   1606c:	00e03433          	snez	s0,a4
   16070:	00140413          	addi	s0,s0,1
   16074:	00e9ac23          	sw	a4,24(s3)
   16078:	0089a823          	sw	s0,16(s3)
   1607c:	06049863          	bnez	s1,160ec <__d2b+0x100>
   16080:	00241713          	slli	a4,s0,0x2
   16084:	00e98733          	add	a4,s3,a4
   16088:	01072503          	lw	a0,16(a4) # 3ff00010 <_gp+0x3fee25a0>
   1608c:	bce78793          	addi	a5,a5,-1074
   16090:	00fa2023          	sw	a5,0(s4)
   16094:	d18ff0ef          	jal	155ac <__hi0bits>
   16098:	00541413          	slli	s0,s0,0x5
   1609c:	40a40433          	sub	s0,s0,a0
   160a0:	00892023          	sw	s0,0(s2)
   160a4:	02c12083          	lw	ra,44(sp)
   160a8:	00098513          	mv	a0,s3
   160ac:	02812403          	lw	s0,40(sp)
   160b0:	02412483          	lw	s1,36(sp)
   160b4:	02012903          	lw	s2,32(sp)
   160b8:	01c12983          	lw	s3,28(sp)
   160bc:	01812a03          	lw	s4,24(sp)
   160c0:	01412a83          	lw	s5,20(sp)
   160c4:	03010113          	addi	sp,sp,48
   160c8:	00008067          	ret
   160cc:	00c10513          	addi	a0,sp,12
   160d0:	d50ff0ef          	jal	15620 <__lo0bits>
   160d4:	00c12783          	lw	a5,12(sp)
   160d8:	00100413          	li	s0,1
   160dc:	0089a823          	sw	s0,16(s3)
   160e0:	00f9aa23          	sw	a5,20(s3)
   160e4:	02050793          	addi	a5,a0,32
   160e8:	f8048ce3          	beqz	s1,16080 <__d2b+0x94>
   160ec:	bcd48493          	addi	s1,s1,-1075
   160f0:	00f484b3          	add	s1,s1,a5
   160f4:	03500713          	li	a4,53
   160f8:	009a2023          	sw	s1,0(s4)
   160fc:	40f707b3          	sub	a5,a4,a5
   16100:	00f92023          	sw	a5,0(s2)
   16104:	fa1ff06f          	j	160a4 <__d2b+0xb8>
   16108:	02000693          	li	a3,32
   1610c:	00812603          	lw	a2,8(sp)
   16110:	40a686b3          	sub	a3,a3,a0
   16114:	00d716b3          	sll	a3,a4,a3
   16118:	00c6e6b3          	or	a3,a3,a2
   1611c:	00a75733          	srl	a4,a4,a0
   16120:	00d9aa23          	sw	a3,20(s3)
   16124:	00e12623          	sw	a4,12(sp)
   16128:	f45ff06f          	j	1606c <__d2b+0x80>

0001612c <__ratio>:
   1612c:	fd010113          	addi	sp,sp,-48
   16130:	03212023          	sw	s2,32(sp)
   16134:	00058913          	mv	s2,a1
   16138:	00810593          	addi	a1,sp,8
   1613c:	02112623          	sw	ra,44(sp)
   16140:	02812423          	sw	s0,40(sp)
   16144:	02912223          	sw	s1,36(sp)
   16148:	01312e23          	sw	s3,28(sp)
   1614c:	00050993          	mv	s3,a0
   16150:	d6dff0ef          	jal	15ebc <__b2d>
   16154:	00050413          	mv	s0,a0
   16158:	00058493          	mv	s1,a1
   1615c:	00090513          	mv	a0,s2
   16160:	00c10593          	addi	a1,sp,12
   16164:	d59ff0ef          	jal	15ebc <__b2d>
   16168:	01092703          	lw	a4,16(s2)
   1616c:	0109a783          	lw	a5,16(s3)
   16170:	00058693          	mv	a3,a1
   16174:	00c12583          	lw	a1,12(sp)
   16178:	40e787b3          	sub	a5,a5,a4
   1617c:	00812703          	lw	a4,8(sp)
   16180:	00579793          	slli	a5,a5,0x5
   16184:	00050613          	mv	a2,a0
   16188:	40b70733          	sub	a4,a4,a1
   1618c:	00e787b3          	add	a5,a5,a4
   16190:	02f05c63          	blez	a5,161c8 <__ratio+0x9c>
   16194:	01479793          	slli	a5,a5,0x14
   16198:	009785b3          	add	a1,a5,s1
   1619c:	00058493          	mv	s1,a1
   161a0:	00040513          	mv	a0,s0
   161a4:	00048593          	mv	a1,s1
   161a8:	275030ef          	jal	19c1c <__divdf3>
   161ac:	02c12083          	lw	ra,44(sp)
   161b0:	02812403          	lw	s0,40(sp)
   161b4:	02412483          	lw	s1,36(sp)
   161b8:	02012903          	lw	s2,32(sp)
   161bc:	01c12983          	lw	s3,28(sp)
   161c0:	03010113          	addi	sp,sp,48
   161c4:	00008067          	ret
   161c8:	01479793          	slli	a5,a5,0x14
   161cc:	40f688b3          	sub	a7,a3,a5
   161d0:	00088693          	mv	a3,a7
   161d4:	fcdff06f          	j	161a0 <__ratio+0x74>

000161d8 <_mprec_log10>:
   161d8:	ff010113          	addi	sp,sp,-16
   161dc:	00812423          	sw	s0,8(sp)
   161e0:	00112623          	sw	ra,12(sp)
   161e4:	01212223          	sw	s2,4(sp)
   161e8:	01312023          	sw	s3,0(sp)
   161ec:	01700793          	li	a5,23
   161f0:	00050413          	mv	s0,a0
   161f4:	04a7d463          	ble	a0,a5,1623c <_mprec_log10+0x64>
   161f8:	0001d7b7          	lui	a5,0x1d
   161fc:	2b07a503          	lw	a0,688(a5) # 1d2b0 <__wctomb+0x28>
   16200:	2b47a583          	lw	a1,692(a5)
   16204:	0001d7b7          	lui	a5,0x1d
   16208:	2b87a903          	lw	s2,696(a5) # 1d2b8 <__wctomb+0x30>
   1620c:	2bc7a983          	lw	s3,700(a5)
   16210:	fff40413          	addi	s0,s0,-1
   16214:	00090613          	mv	a2,s2
   16218:	00098693          	mv	a3,s3
   1621c:	724030ef          	jal	19940 <__muldf3>
   16220:	fe0418e3          	bnez	s0,16210 <_mprec_log10+0x38>
   16224:	00c12083          	lw	ra,12(sp)
   16228:	00812403          	lw	s0,8(sp)
   1622c:	00412903          	lw	s2,4(sp)
   16230:	00012983          	lw	s3,0(sp)
   16234:	01010113          	addi	sp,sp,16
   16238:	00008067          	ret
   1623c:	0001b7b7          	lui	a5,0x1b
   16240:	00351413          	slli	s0,a0,0x3
   16244:	23078793          	addi	a5,a5,560 # 1b230 <p05.2572>
   16248:	00878433          	add	s0,a5,s0
   1624c:	01042503          	lw	a0,16(s0)
   16250:	01442583          	lw	a1,20(s0)
   16254:	fd1ff06f          	j	16224 <_mprec_log10+0x4c>

00016258 <__copybits>:
   16258:	01062683          	lw	a3,16(a2)
   1625c:	fff58813          	addi	a6,a1,-1
   16260:	40585813          	srai	a6,a6,0x5
   16264:	00180813          	addi	a6,a6,1
   16268:	01460793          	addi	a5,a2,20
   1626c:	00269693          	slli	a3,a3,0x2
   16270:	00281813          	slli	a6,a6,0x2
   16274:	00d786b3          	add	a3,a5,a3
   16278:	01050833          	add	a6,a0,a6
   1627c:	02d7f863          	bleu	a3,a5,162ac <__copybits+0x54>
   16280:	00050713          	mv	a4,a0
   16284:	00478793          	addi	a5,a5,4
   16288:	ffc7a583          	lw	a1,-4(a5)
   1628c:	00470713          	addi	a4,a4,4
   16290:	feb72e23          	sw	a1,-4(a4)
   16294:	fed7e8e3          	bltu	a5,a3,16284 <__copybits+0x2c>
   16298:	40c687b3          	sub	a5,a3,a2
   1629c:	feb78793          	addi	a5,a5,-21
   162a0:	ffc7f793          	andi	a5,a5,-4
   162a4:	00478793          	addi	a5,a5,4
   162a8:	00f50533          	add	a0,a0,a5
   162ac:	01057863          	bleu	a6,a0,162bc <__copybits+0x64>
   162b0:	00450513          	addi	a0,a0,4
   162b4:	fe052e23          	sw	zero,-4(a0)
   162b8:	ff056ce3          	bltu	a0,a6,162b0 <__copybits+0x58>
   162bc:	00008067          	ret

000162c0 <__any_on>:
   162c0:	01052783          	lw	a5,16(a0)
   162c4:	4055d713          	srai	a4,a1,0x5
   162c8:	01450693          	addi	a3,a0,20
   162cc:	02e7da63          	ble	a4,a5,16300 <__any_on+0x40>
   162d0:	00279793          	slli	a5,a5,0x2
   162d4:	00f687b3          	add	a5,a3,a5
   162d8:	06f6f263          	bleu	a5,a3,1633c <__any_on+0x7c>
   162dc:	ffc7a503          	lw	a0,-4(a5)
   162e0:	ffc78793          	addi	a5,a5,-4
   162e4:	00051a63          	bnez	a0,162f8 <__any_on+0x38>
   162e8:	04f6f863          	bleu	a5,a3,16338 <__any_on+0x78>
   162ec:	ffc78793          	addi	a5,a5,-4
   162f0:	0007a703          	lw	a4,0(a5)
   162f4:	fe070ae3          	beqz	a4,162e8 <__any_on+0x28>
   162f8:	00100513          	li	a0,1
   162fc:	00008067          	ret
   16300:	02f75663          	ble	a5,a4,1632c <__any_on+0x6c>
   16304:	00271793          	slli	a5,a4,0x2
   16308:	01f5f593          	andi	a1,a1,31
   1630c:	00f687b3          	add	a5,a3,a5
   16310:	fc0584e3          	beqz	a1,162d8 <__any_on+0x18>
   16314:	0007a603          	lw	a2,0(a5)
   16318:	00100513          	li	a0,1
   1631c:	00b65733          	srl	a4,a2,a1
   16320:	00b715b3          	sll	a1,a4,a1
   16324:	fab60ae3          	beq	a2,a1,162d8 <__any_on+0x18>
   16328:	00008067          	ret
   1632c:	00271793          	slli	a5,a4,0x2
   16330:	00f687b3          	add	a5,a3,a5
   16334:	fa5ff06f          	j	162d8 <__any_on+0x18>
   16338:	00008067          	ret
   1633c:	00000513          	li	a0,0
   16340:	00008067          	ret

00016344 <_sbrk_r>:
   16344:	ff010113          	addi	sp,sp,-16
   16348:	00812423          	sw	s0,8(sp)
   1634c:	00912223          	sw	s1,4(sp)
   16350:	00050493          	mv	s1,a0
   16354:	00058513          	mv	a0,a1
   16358:	00112623          	sw	ra,12(sp)
   1635c:	8e01a023          	sw	zero,-1824(gp) # 1d350 <errno>
   16360:	5f1020ef          	jal	19150 <sbrk>
   16364:	fff00793          	li	a5,-1
   16368:	00f50c63          	beq	a0,a5,16380 <_sbrk_r+0x3c>
   1636c:	00c12083          	lw	ra,12(sp)
   16370:	00812403          	lw	s0,8(sp)
   16374:	00412483          	lw	s1,4(sp)
   16378:	01010113          	addi	sp,sp,16
   1637c:	00008067          	ret
   16380:	8e01a783          	lw	a5,-1824(gp) # 1d350 <errno>
   16384:	fe0784e3          	beqz	a5,1636c <_sbrk_r+0x28>
   16388:	00c12083          	lw	ra,12(sp)
   1638c:	00f4a023          	sw	a5,0(s1)
   16390:	00812403          	lw	s0,8(sp)
   16394:	00412483          	lw	s1,4(sp)
   16398:	01010113          	addi	sp,sp,16
   1639c:	00008067          	ret

000163a0 <__fpclassifyd>:
   163a0:	00a5e733          	or	a4,a1,a0
   163a4:	00050793          	mv	a5,a0
   163a8:	00200513          	li	a0,2
   163ac:	00071463          	bnez	a4,163b4 <__fpclassifyd+0x14>
   163b0:	00008067          	ret
   163b4:	80000737          	lui	a4,0x80000
   163b8:	04e58863          	beq	a1,a4,16408 <__fpclassifyd+0x68>
   163bc:	fff00737          	lui	a4,0xfff00
   163c0:	00e58733          	add	a4,a1,a4
   163c4:	7fe006b7          	lui	a3,0x7fe00
   163c8:	00400513          	li	a0,4
   163cc:	fed762e3          	bltu	a4,a3,163b0 <__fpclassifyd+0x10>
   163d0:	7ff00737          	lui	a4,0x7ff00
   163d4:	00e58733          	add	a4,a1,a4
   163d8:	fcd76ce3          	bltu	a4,a3,163b0 <__fpclassifyd+0x10>
   163dc:	80000737          	lui	a4,0x80000
   163e0:	fff74713          	not	a4,a4
   163e4:	00e5f5b3          	and	a1,a1,a4
   163e8:	00100737          	lui	a4,0x100
   163ec:	00300513          	li	a0,3
   163f0:	fce5e0e3          	bltu	a1,a4,163b0 <__fpclassifyd+0x10>
   163f4:	7ff00737          	lui	a4,0x7ff00
   163f8:	00000513          	li	a0,0
   163fc:	fae59ae3          	bne	a1,a4,163b0 <__fpclassifyd+0x10>
   16400:	0017b513          	seqz	a0,a5
   16404:	00008067          	ret
   16408:	00200513          	li	a0,2
   1640c:	fc0798e3          	bnez	a5,163dc <__fpclassifyd+0x3c>
   16410:	00008067          	ret

00016414 <__sread>:
   16414:	ff010113          	addi	sp,sp,-16
   16418:	00812423          	sw	s0,8(sp)
   1641c:	00058413          	mv	s0,a1
   16420:	00e59583          	lh	a1,14(a1)
   16424:	00112623          	sw	ra,12(sp)
   16428:	799010ef          	jal	183c0 <_read_r>
   1642c:	02054063          	bltz	a0,1644c <__sread+0x38>
   16430:	05042783          	lw	a5,80(s0)
   16434:	00c12083          	lw	ra,12(sp)
   16438:	00a787b3          	add	a5,a5,a0
   1643c:	04f42823          	sw	a5,80(s0)
   16440:	00812403          	lw	s0,8(sp)
   16444:	01010113          	addi	sp,sp,16
   16448:	00008067          	ret
   1644c:	00c45783          	lhu	a5,12(s0)
   16450:	fffff737          	lui	a4,0xfffff
   16454:	00c12083          	lw	ra,12(sp)
   16458:	fff70713          	addi	a4,a4,-1 # ffffefff <_gp+0xfffe158f>
   1645c:	00e7f7b3          	and	a5,a5,a4
   16460:	00f41623          	sh	a5,12(s0)
   16464:	00812403          	lw	s0,8(sp)
   16468:	01010113          	addi	sp,sp,16
   1646c:	00008067          	ret

00016470 <__seofread>:
   16470:	00000513          	li	a0,0
   16474:	00008067          	ret

00016478 <__swrite>:
   16478:	00c59783          	lh	a5,12(a1)
   1647c:	fe010113          	addi	sp,sp,-32
   16480:	00812c23          	sw	s0,24(sp)
   16484:	00912a23          	sw	s1,20(sp)
   16488:	01212823          	sw	s2,16(sp)
   1648c:	01312623          	sw	s3,12(sp)
   16490:	00112e23          	sw	ra,28(sp)
   16494:	1007f713          	andi	a4,a5,256
   16498:	00058413          	mv	s0,a1
   1649c:	00050493          	mv	s1,a0
   164a0:	00060913          	mv	s2,a2
   164a4:	00068993          	mv	s3,a3
   164a8:	00070c63          	beqz	a4,164c0 <__swrite+0x48>
   164ac:	00e59583          	lh	a1,14(a1)
   164b0:	00200693          	li	a3,2
   164b4:	00000613          	li	a2,0
   164b8:	585010ef          	jal	1823c <_lseek_r>
   164bc:	00c41783          	lh	a5,12(s0)
   164c0:	fffff737          	lui	a4,0xfffff
   164c4:	fff70713          	addi	a4,a4,-1 # ffffefff <_gp+0xfffe158f>
   164c8:	00e7f7b3          	and	a5,a5,a4
   164cc:	00e41583          	lh	a1,14(s0)
   164d0:	00f41623          	sh	a5,12(s0)
   164d4:	00098693          	mv	a3,s3
   164d8:	00090613          	mv	a2,s2
   164dc:	00048513          	mv	a0,s1
   164e0:	01c12083          	lw	ra,28(sp)
   164e4:	01812403          	lw	s0,24(sp)
   164e8:	01412483          	lw	s1,20(sp)
   164ec:	01012903          	lw	s2,16(sp)
   164f0:	00c12983          	lw	s3,12(sp)
   164f4:	02010113          	addi	sp,sp,32
   164f8:	3500106f          	j	17848 <_write_r>

000164fc <__sseek>:
   164fc:	ff010113          	addi	sp,sp,-16
   16500:	00812423          	sw	s0,8(sp)
   16504:	00058413          	mv	s0,a1
   16508:	00e59583          	lh	a1,14(a1)
   1650c:	00070693          	mv	a3,a4
   16510:	00112623          	sw	ra,12(sp)
   16514:	529010ef          	jal	1823c <_lseek_r>
   16518:	fff00793          	li	a5,-1
   1651c:	02f50663          	beq	a0,a5,16548 <__sseek+0x4c>
   16520:	00c45783          	lhu	a5,12(s0)
   16524:	00c12083          	lw	ra,12(sp)
   16528:	00001737          	lui	a4,0x1
   1652c:	00e7e7b3          	or	a5,a5,a4
   16530:	04a42823          	sw	a0,80(s0)
   16534:	00f41623          	sh	a5,12(s0)
   16538:	41f55593          	srai	a1,a0,0x1f
   1653c:	00812403          	lw	s0,8(sp)
   16540:	01010113          	addi	sp,sp,16
   16544:	00008067          	ret
   16548:	00c45783          	lhu	a5,12(s0)
   1654c:	fffff737          	lui	a4,0xfffff
   16550:	00c12083          	lw	ra,12(sp)
   16554:	fff70713          	addi	a4,a4,-1 # ffffefff <_gp+0xfffe158f>
   16558:	00e7f7b3          	and	a5,a5,a4
   1655c:	00f41623          	sh	a5,12(s0)
   16560:	41f55593          	srai	a1,a0,0x1f
   16564:	00812403          	lw	s0,8(sp)
   16568:	01010113          	addi	sp,sp,16
   1656c:	00008067          	ret

00016570 <__sclose>:
   16570:	00e59583          	lh	a1,14(a1)
   16574:	4000106f          	j	17974 <_close_r>

00016578 <strcmp>:
   16578:	00b56733          	or	a4,a0,a1
   1657c:	fff00393          	li	t2,-1
   16580:	00377713          	andi	a4,a4,3
   16584:	10071063          	bnez	a4,16684 <strcmp+0x10c>
   16588:	7f7f8e37          	lui	t3,0x7f7f8
   1658c:	f7fe0e13          	addi	t3,t3,-129 # 7f7f7f7f <_gp+0x7f7da50f>
   16590:	00052603          	lw	a2,0(a0)
   16594:	0005a683          	lw	a3,0(a1)
   16598:	01c672b3          	and	t0,a2,t3
   1659c:	01c66333          	or	t1,a2,t3
   165a0:	01c282b3          	add	t0,t0,t3
   165a4:	0062e2b3          	or	t0,t0,t1
   165a8:	10729263          	bne	t0,t2,166ac <strcmp+0x134>
   165ac:	08d61663          	bne	a2,a3,16638 <strcmp+0xc0>
   165b0:	00452603          	lw	a2,4(a0)
   165b4:	0045a683          	lw	a3,4(a1)
   165b8:	01c672b3          	and	t0,a2,t3
   165bc:	01c66333          	or	t1,a2,t3
   165c0:	01c282b3          	add	t0,t0,t3
   165c4:	0062e2b3          	or	t0,t0,t1
   165c8:	0c729e63          	bne	t0,t2,166a4 <strcmp+0x12c>
   165cc:	06d61663          	bne	a2,a3,16638 <strcmp+0xc0>
   165d0:	00852603          	lw	a2,8(a0)
   165d4:	0085a683          	lw	a3,8(a1)
   165d8:	01c672b3          	and	t0,a2,t3
   165dc:	01c66333          	or	t1,a2,t3
   165e0:	01c282b3          	add	t0,t0,t3
   165e4:	0062e2b3          	or	t0,t0,t1
   165e8:	0c729863          	bne	t0,t2,166b8 <strcmp+0x140>
   165ec:	04d61663          	bne	a2,a3,16638 <strcmp+0xc0>
   165f0:	00c52603          	lw	a2,12(a0)
   165f4:	00c5a683          	lw	a3,12(a1)
   165f8:	01c672b3          	and	t0,a2,t3
   165fc:	01c66333          	or	t1,a2,t3
   16600:	01c282b3          	add	t0,t0,t3
   16604:	0062e2b3          	or	t0,t0,t1
   16608:	0c729263          	bne	t0,t2,166cc <strcmp+0x154>
   1660c:	02d61663          	bne	a2,a3,16638 <strcmp+0xc0>
   16610:	01052603          	lw	a2,16(a0)
   16614:	0105a683          	lw	a3,16(a1)
   16618:	01c672b3          	and	t0,a2,t3
   1661c:	01c66333          	or	t1,a2,t3
   16620:	01c282b3          	add	t0,t0,t3
   16624:	0062e2b3          	or	t0,t0,t1
   16628:	0a729c63          	bne	t0,t2,166e0 <strcmp+0x168>
   1662c:	01450513          	addi	a0,a0,20
   16630:	01458593          	addi	a1,a1,20
   16634:	f4d60ee3          	beq	a2,a3,16590 <strcmp+0x18>
   16638:	01061713          	slli	a4,a2,0x10
   1663c:	01069793          	slli	a5,a3,0x10
   16640:	00f71e63          	bne	a4,a5,1665c <strcmp+0xe4>
   16644:	01065713          	srli	a4,a2,0x10
   16648:	0106d793          	srli	a5,a3,0x10
   1664c:	40f70533          	sub	a0,a4,a5
   16650:	0ff57593          	andi	a1,a0,255
   16654:	02059063          	bnez	a1,16674 <strcmp+0xfc>
   16658:	00008067          	ret
   1665c:	01075713          	srli	a4,a4,0x10
   16660:	0107d793          	srli	a5,a5,0x10
   16664:	40f70533          	sub	a0,a4,a5
   16668:	0ff57593          	andi	a1,a0,255
   1666c:	00059463          	bnez	a1,16674 <strcmp+0xfc>
   16670:	00008067          	ret
   16674:	0ff77713          	andi	a4,a4,255
   16678:	0ff7f793          	andi	a5,a5,255
   1667c:	40f70533          	sub	a0,a4,a5
   16680:	00008067          	ret
   16684:	00054603          	lbu	a2,0(a0)
   16688:	0005c683          	lbu	a3,0(a1)
   1668c:	00150513          	addi	a0,a0,1
   16690:	00158593          	addi	a1,a1,1
   16694:	00d61463          	bne	a2,a3,1669c <strcmp+0x124>
   16698:	fe0616e3          	bnez	a2,16684 <strcmp+0x10c>
   1669c:	40d60533          	sub	a0,a2,a3
   166a0:	00008067          	ret
   166a4:	00450513          	addi	a0,a0,4
   166a8:	00458593          	addi	a1,a1,4
   166ac:	fcd61ce3          	bne	a2,a3,16684 <strcmp+0x10c>
   166b0:	00000513          	li	a0,0
   166b4:	00008067          	ret
   166b8:	00850513          	addi	a0,a0,8
   166bc:	00858593          	addi	a1,a1,8
   166c0:	fcd612e3          	bne	a2,a3,16684 <strcmp+0x10c>
   166c4:	00000513          	li	a0,0
   166c8:	00008067          	ret
   166cc:	00c50513          	addi	a0,a0,12
   166d0:	00c58593          	addi	a1,a1,12
   166d4:	fad618e3          	bne	a2,a3,16684 <strcmp+0x10c>
   166d8:	00000513          	li	a0,0
   166dc:	00008067          	ret
   166e0:	01050513          	addi	a0,a0,16
   166e4:	01058593          	addi	a1,a1,16
   166e8:	f8d61ee3          	bne	a2,a3,16684 <strcmp+0x10c>
   166ec:	00000513          	li	a0,0
   166f0:	00008067          	ret

000166f4 <strlen>:
   166f4:	00357713          	andi	a4,a0,3
   166f8:	00050793          	mv	a5,a0
   166fc:	00050693          	mv	a3,a0
   16700:	04071c63          	bnez	a4,16758 <strlen+0x64>
   16704:	7f7f8637          	lui	a2,0x7f7f8
   16708:	f7f60613          	addi	a2,a2,-129 # 7f7f7f7f <_gp+0x7f7da50f>
   1670c:	fff00593          	li	a1,-1
   16710:	00468693          	addi	a3,a3,4 # 7fe00004 <_gp+0x7fde2594>
   16714:	ffc6a703          	lw	a4,-4(a3)
   16718:	00c777b3          	and	a5,a4,a2
   1671c:	00c787b3          	add	a5,a5,a2
   16720:	00c76733          	or	a4,a4,a2
   16724:	00e7e7b3          	or	a5,a5,a4
   16728:	feb784e3          	beq	a5,a1,16710 <strlen+0x1c>
   1672c:	ffc6c703          	lbu	a4,-4(a3)
   16730:	40a687b3          	sub	a5,a3,a0
   16734:	ffd6c603          	lbu	a2,-3(a3)
   16738:	ffe6c503          	lbu	a0,-2(a3)
   1673c:	04070063          	beqz	a4,1677c <strlen+0x88>
   16740:	02060a63          	beqz	a2,16774 <strlen+0x80>
   16744:	00a03533          	snez	a0,a0
   16748:	00f50533          	add	a0,a0,a5
   1674c:	ffe50513          	addi	a0,a0,-2
   16750:	00008067          	ret
   16754:	02068863          	beqz	a3,16784 <strlen+0x90>
   16758:	0007c703          	lbu	a4,0(a5)
   1675c:	00178793          	addi	a5,a5,1
   16760:	0037f693          	andi	a3,a5,3
   16764:	fe0718e3          	bnez	a4,16754 <strlen+0x60>
   16768:	40a787b3          	sub	a5,a5,a0
   1676c:	fff78513          	addi	a0,a5,-1
   16770:	00008067          	ret
   16774:	ffd78513          	addi	a0,a5,-3
   16778:	00008067          	ret
   1677c:	ffc78513          	addi	a0,a5,-4
   16780:	00008067          	ret
   16784:	00078693          	mv	a3,a5
   16788:	f7dff06f          	j	16704 <strlen+0x10>

0001678c <__sprint_r.part.0>:
   1678c:	0645a783          	lw	a5,100(a1)
   16790:	fd010113          	addi	sp,sp,-48
   16794:	01612823          	sw	s6,16(sp)
   16798:	02112623          	sw	ra,44(sp)
   1679c:	02812423          	sw	s0,40(sp)
   167a0:	02912223          	sw	s1,36(sp)
   167a4:	03212023          	sw	s2,32(sp)
   167a8:	01312e23          	sw	s3,28(sp)
   167ac:	01412c23          	sw	s4,24(sp)
   167b0:	01512a23          	sw	s5,20(sp)
   167b4:	01712623          	sw	s7,12(sp)
   167b8:	01812423          	sw	s8,8(sp)
   167bc:	01279713          	slli	a4,a5,0x12
   167c0:	00060b13          	mv	s6,a2
   167c4:	0a075863          	bgez	a4,16874 <__sprint_r.part.0+0xe8>
   167c8:	00862783          	lw	a5,8(a2)
   167cc:	00058a13          	mv	s4,a1
   167d0:	00050a93          	mv	s5,a0
   167d4:	00062b83          	lw	s7,0(a2)
   167d8:	fff00913          	li	s2,-1
   167dc:	08078863          	beqz	a5,1686c <__sprint_r.part.0+0xe0>
   167e0:	004bac03          	lw	s8,4(s7)
   167e4:	000ba483          	lw	s1,0(s7)
   167e8:	00000413          	li	s0,0
   167ec:	002c5993          	srli	s3,s8,0x2
   167f0:	00099863          	bnez	s3,16800 <__sprint_r.part.0+0x74>
   167f4:	0640006f          	j	16858 <__sprint_r.part.0+0xcc>
   167f8:	00448493          	addi	s1,s1,4
   167fc:	04898c63          	beq	s3,s0,16854 <__sprint_r.part.0+0xc8>
   16800:	0004a583          	lw	a1,0(s1)
   16804:	000a0613          	mv	a2,s4
   16808:	000a8513          	mv	a0,s5
   1680c:	41c010ef          	jal	17c28 <_fputwc_r>
   16810:	00140413          	addi	s0,s0,1
   16814:	ff2512e3          	bne	a0,s2,167f8 <__sprint_r.part.0+0x6c>
   16818:	00090513          	mv	a0,s2
   1681c:	02c12083          	lw	ra,44(sp)
   16820:	000b2423          	sw	zero,8(s6)
   16824:	000b2223          	sw	zero,4(s6)
   16828:	02812403          	lw	s0,40(sp)
   1682c:	02412483          	lw	s1,36(sp)
   16830:	02012903          	lw	s2,32(sp)
   16834:	01c12983          	lw	s3,28(sp)
   16838:	01812a03          	lw	s4,24(sp)
   1683c:	01412a83          	lw	s5,20(sp)
   16840:	01012b03          	lw	s6,16(sp)
   16844:	00c12b83          	lw	s7,12(sp)
   16848:	00812c03          	lw	s8,8(sp)
   1684c:	03010113          	addi	sp,sp,48
   16850:	00008067          	ret
   16854:	008b2783          	lw	a5,8(s6)
   16858:	ffcc7c13          	andi	s8,s8,-4
   1685c:	418787b3          	sub	a5,a5,s8
   16860:	00fb2423          	sw	a5,8(s6)
   16864:	008b8b93          	addi	s7,s7,8
   16868:	f6079ce3          	bnez	a5,167e0 <__sprint_r.part.0+0x54>
   1686c:	00000513          	li	a0,0
   16870:	fadff06f          	j	1681c <__sprint_r.part.0+0x90>
   16874:	4bc010ef          	jal	17d30 <__sfvwrite_r>
   16878:	fa5ff06f          	j	1681c <__sprint_r.part.0+0x90>

0001687c <__sprint_r>:
   1687c:	00862703          	lw	a4,8(a2)
   16880:	00070463          	beqz	a4,16888 <__sprint_r+0xc>
   16884:	f09ff06f          	j	1678c <__sprint_r.part.0>
   16888:	00062223          	sw	zero,4(a2)
   1688c:	00000513          	li	a0,0
   16890:	00008067          	ret

00016894 <_vfiprintf_r>:
   16894:	f1010113          	addi	sp,sp,-240
   16898:	0d312e23          	sw	s3,220(sp)
   1689c:	0d512a23          	sw	s5,212(sp)
   168a0:	0d612823          	sw	s6,208(sp)
   168a4:	0e112623          	sw	ra,236(sp)
   168a8:	0e812423          	sw	s0,232(sp)
   168ac:	0e912223          	sw	s1,228(sp)
   168b0:	0f212023          	sw	s2,224(sp)
   168b4:	0d412c23          	sw	s4,216(sp)
   168b8:	0d712623          	sw	s7,204(sp)
   168bc:	0d812423          	sw	s8,200(sp)
   168c0:	0d912223          	sw	s9,196(sp)
   168c4:	0da12023          	sw	s10,192(sp)
   168c8:	0bb12e23          	sw	s11,188(sp)
   168cc:	00d12623          	sw	a3,12(sp)
   168d0:	00050a93          	mv	s5,a0
   168d4:	00058993          	mv	s3,a1
   168d8:	00060b13          	mv	s6,a2
   168dc:	00050663          	beqz	a0,168e8 <_vfiprintf_r+0x54>
   168e0:	03852783          	lw	a5,56(a0)
   168e4:	24078a63          	beqz	a5,16b38 <_vfiprintf_r+0x2a4>
   168e8:	00c99703          	lh	a4,12(s3)
   168ec:	01071793          	slli	a5,a4,0x10
   168f0:	0107d793          	srli	a5,a5,0x10
   168f4:	01279693          	slli	a3,a5,0x12
   168f8:	0206c663          	bltz	a3,16924 <_vfiprintf_r+0x90>
   168fc:	0649a683          	lw	a3,100(s3)
   16900:	000027b7          	lui	a5,0x2
   16904:	00f767b3          	or	a5,a4,a5
   16908:	ffffe737          	lui	a4,0xffffe
   1690c:	fff70713          	addi	a4,a4,-1 # ffffdfff <_gp+0xfffe058f>
   16910:	00e6f733          	and	a4,a3,a4
   16914:	00f99623          	sh	a5,12(s3)
   16918:	01079793          	slli	a5,a5,0x10
   1691c:	06e9a223          	sw	a4,100(s3)
   16920:	0107d793          	srli	a5,a5,0x10
   16924:	0087f713          	andi	a4,a5,8
   16928:	18070863          	beqz	a4,16ab8 <_vfiprintf_r+0x224>
   1692c:	0109a703          	lw	a4,16(s3)
   16930:	18070463          	beqz	a4,16ab8 <_vfiprintf_r+0x224>
   16934:	01a7f793          	andi	a5,a5,26
   16938:	00a00713          	li	a4,10
   1693c:	18e78e63          	beq	a5,a4,16ad8 <_vfiprintf_r+0x244>
   16940:	0001bbb7          	lui	s7,0x1b
   16944:	07010c13          	addi	s8,sp,112
   16948:	358b8793          	addi	a5,s7,856 # 1b358 <__mprec_bigtens+0x28>
   1694c:	0001b337          	lui	t1,0x1b
   16950:	0001b8b7          	lui	a7,0x1b
   16954:	03812e23          	sw	s8,60(sp)
   16958:	04012223          	sw	zero,68(sp)
   1695c:	04012023          	sw	zero,64(sp)
   16960:	000c0413          	mv	s0,s8
   16964:	00012e23          	sw	zero,28(sp)
   16968:	00012423          	sw	zero,8(sp)
   1696c:	00f12823          	sw	a5,16(sp)
   16970:	4bc30c93          	addi	s9,t1,1212 # 1b4bc <blanks.4141>
   16974:	4cc88b93          	addi	s7,a7,1228 # 1b4cc <zeroes.4142>
   16978:	000b4783          	lbu	a5,0(s6)
   1697c:	480780e3          	beqz	a5,175fc <_vfiprintf_r+0xd68>
   16980:	02500713          	li	a4,37
   16984:	000b0493          	mv	s1,s6
   16988:	00e79663          	bne	a5,a4,16994 <_vfiprintf_r+0x100>
   1698c:	0540006f          	j	169e0 <_vfiprintf_r+0x14c>
   16990:	00e78863          	beq	a5,a4,169a0 <_vfiprintf_r+0x10c>
   16994:	00148493          	addi	s1,s1,1
   16998:	0004c783          	lbu	a5,0(s1)
   1699c:	fe079ae3          	bnez	a5,16990 <_vfiprintf_r+0xfc>
   169a0:	41648933          	sub	s2,s1,s6
   169a4:	02090e63          	beqz	s2,169e0 <_vfiprintf_r+0x14c>
   169a8:	04412703          	lw	a4,68(sp)
   169ac:	04012783          	lw	a5,64(sp)
   169b0:	01642023          	sw	s6,0(s0)
   169b4:	00e90733          	add	a4,s2,a4
   169b8:	00178793          	addi	a5,a5,1 # 2001 <_ftext-0xdfff>
   169bc:	01242223          	sw	s2,4(s0)
   169c0:	04e12223          	sw	a4,68(sp)
   169c4:	04f12023          	sw	a5,64(sp)
   169c8:	00700693          	li	a3,7
   169cc:	00840413          	addi	s0,s0,8
   169d0:	06f6ca63          	blt	a3,a5,16a44 <_vfiprintf_r+0x1b0>
   169d4:	00812783          	lw	a5,8(sp)
   169d8:	012787b3          	add	a5,a5,s2
   169dc:	00f12423          	sw	a5,8(sp)
   169e0:	0004c783          	lbu	a5,0(s1)
   169e4:	0c078ee3          	beqz	a5,172c0 <_vfiprintf_r+0xa2c>
   169e8:	fff00693          	li	a3,-1
   169ec:	00148493          	addi	s1,s1,1
   169f0:	02010ba3          	sb	zero,55(sp)
   169f4:	00000e93          	li	t4,0
   169f8:	00000f93          	li	t6,0
   169fc:	00000913          	li	s2,0
   16a00:	00000f13          	li	t5,0
   16a04:	05800593          	li	a1,88
   16a08:	00900513          	li	a0,9
   16a0c:	02a00a13          	li	s4,42
   16a10:	00068d93          	mv	s11,a3
   16a14:	00100293          	li	t0,1
   16a18:	02000d13          	li	s10,32
   16a1c:	02b00393          	li	t2,43
   16a20:	0004c703          	lbu	a4,0(s1)
   16a24:	00148b13          	addi	s6,s1,1
   16a28:	fe070793          	addi	a5,a4,-32
   16a2c:	6cf5e463          	bltu	a1,a5,170f4 <_vfiprintf_r+0x860>
   16a30:	01012603          	lw	a2,16(sp)
   16a34:	00279793          	slli	a5,a5,0x2
   16a38:	00c787b3          	add	a5,a5,a2
   16a3c:	0007a783          	lw	a5,0(a5)
   16a40:	00078067          	jr	a5
   16a44:	2e0712e3          	bnez	a4,17528 <_vfiprintf_r+0xc94>
   16a48:	04012023          	sw	zero,64(sp)
   16a4c:	000c0413          	mv	s0,s8
   16a50:	f85ff06f          	j	169d4 <_vfiprintf_r+0x140>
   16a54:	010f6f13          	ori	t5,t5,16
   16a58:	000b0493          	mv	s1,s6
   16a5c:	fc5ff06f          	j	16a20 <_vfiprintf_r+0x18c>
   16a60:	010f6f13          	ori	t5,t5,16
   16a64:	010f7793          	andi	a5,t5,16
   16a68:	66079a63          	bnez	a5,170dc <_vfiprintf_r+0x848>
   16a6c:	040f7793          	andi	a5,t5,64
   16a70:	00c12703          	lw	a4,12(sp)
   16a74:	66078663          	beqz	a5,170e0 <_vfiprintf_r+0x84c>
   16a78:	00075483          	lhu	s1,0(a4)
   16a7c:	00470713          	addi	a4,a4,4
   16a80:	00100793          	li	a5,1
   16a84:	00e12623          	sw	a4,12(sp)
   16a88:	5b00006f          	j	17038 <_vfiprintf_r+0x7a4>
   16a8c:	010f6f13          	ori	t5,t5,16
   16a90:	010f7793          	andi	a5,t5,16
   16a94:	62079863          	bnez	a5,170c4 <_vfiprintf_r+0x830>
   16a98:	040f7793          	andi	a5,t5,64
   16a9c:	00c12703          	lw	a4,12(sp)
   16aa0:	62078463          	beqz	a5,170c8 <_vfiprintf_r+0x834>
   16aa4:	00075483          	lhu	s1,0(a4)
   16aa8:	00470713          	addi	a4,a4,4
   16aac:	00000793          	li	a5,0
   16ab0:	00e12623          	sw	a4,12(sp)
   16ab4:	5840006f          	j	17038 <_vfiprintf_r+0x7a4>
   16ab8:	00098593          	mv	a1,s3
   16abc:	000a8513          	mv	a0,s5
   16ac0:	cb0fb0ef          	jal	11f70 <__swsetup_r>
   16ac4:	020510e3          	bnez	a0,172e4 <_vfiprintf_r+0xa50>
   16ac8:	00c9d783          	lhu	a5,12(s3)
   16acc:	00a00713          	li	a4,10
   16ad0:	01a7f793          	andi	a5,a5,26
   16ad4:	e6e796e3          	bne	a5,a4,16940 <_vfiprintf_r+0xac>
   16ad8:	00e99783          	lh	a5,14(s3)
   16adc:	e607c2e3          	bltz	a5,16940 <_vfiprintf_r+0xac>
   16ae0:	00c12683          	lw	a3,12(sp)
   16ae4:	000b0613          	mv	a2,s6
   16ae8:	00098593          	mv	a1,s3
   16aec:	000a8513          	mv	a0,s5
   16af0:	499000ef          	jal	17788 <__sbprintf>
   16af4:	00a12423          	sw	a0,8(sp)
   16af8:	0ec12083          	lw	ra,236(sp)
   16afc:	00812503          	lw	a0,8(sp)
   16b00:	0e812403          	lw	s0,232(sp)
   16b04:	0e412483          	lw	s1,228(sp)
   16b08:	0e012903          	lw	s2,224(sp)
   16b0c:	0dc12983          	lw	s3,220(sp)
   16b10:	0d812a03          	lw	s4,216(sp)
   16b14:	0d412a83          	lw	s5,212(sp)
   16b18:	0d012b03          	lw	s6,208(sp)
   16b1c:	0cc12b83          	lw	s7,204(sp)
   16b20:	0c812c03          	lw	s8,200(sp)
   16b24:	0c412c83          	lw	s9,196(sp)
   16b28:	0c012d03          	lw	s10,192(sp)
   16b2c:	0bc12d83          	lw	s11,188(sp)
   16b30:	0f010113          	addi	sp,sp,240
   16b34:	00008067          	ret
   16b38:	d44fd0ef          	jal	1407c <__sinit>
   16b3c:	dadff06f          	j	168e8 <_vfiprintf_r+0x54>
   16b40:	00c12783          	lw	a5,12(sp)
   16b44:	0007a903          	lw	s2,0(a5)
   16b48:	00478793          	addi	a5,a5,4
   16b4c:	00f12623          	sw	a5,12(sp)
   16b50:	f00954e3          	bgez	s2,16a58 <_vfiprintf_r+0x1c4>
   16b54:	41200933          	neg	s2,s2
   16b58:	004f6f13          	ori	t5,t5,4
   16b5c:	000b0493          	mv	s1,s6
   16b60:	ec1ff06f          	j	16a20 <_vfiprintf_r+0x18c>
   16b64:	00028e93          	mv	t4,t0
   16b68:	00038f93          	mv	t6,t2
   16b6c:	000b0493          	mv	s1,s6
   16b70:	eb1ff06f          	j	16a20 <_vfiprintf_r+0x18c>
   16b74:	080f6f13          	ori	t5,t5,128
   16b78:	000b0493          	mv	s1,s6
   16b7c:	ea5ff06f          	j	16a20 <_vfiprintf_r+0x18c>
   16b80:	00000913          	li	s2,0
   16b84:	fd070793          	addi	a5,a4,-48
   16b88:	001b0b13          	addi	s6,s6,1
   16b8c:	00291613          	slli	a2,s2,0x2
   16b90:	fffb4703          	lbu	a4,-1(s6)
   16b94:	01260933          	add	s2,a2,s2
   16b98:	00191913          	slli	s2,s2,0x1
   16b9c:	01278933          	add	s2,a5,s2
   16ba0:	fd070793          	addi	a5,a4,-48
   16ba4:	fef572e3          	bleu	a5,a0,16b88 <_vfiprintf_r+0x2f4>
   16ba8:	e81ff06f          	j	16a28 <_vfiprintf_r+0x194>
   16bac:	000b4703          	lbu	a4,0(s6)
   16bb0:	001b0493          	addi	s1,s6,1
   16bb4:	374708e3          	beq	a4,s4,17724 <_vfiprintf_r+0xe90>
   16bb8:	fd070793          	addi	a5,a4,-48
   16bbc:	00048b13          	mv	s6,s1
   16bc0:	00000693          	li	a3,0
   16bc4:	e6f562e3          	bltu	a0,a5,16a28 <_vfiprintf_r+0x194>
   16bc8:	001b0b13          	addi	s6,s6,1
   16bcc:	00269493          	slli	s1,a3,0x2
   16bd0:	fffb4703          	lbu	a4,-1(s6)
   16bd4:	00d484b3          	add	s1,s1,a3
   16bd8:	00149493          	slli	s1,s1,0x1
   16bdc:	00f486b3          	add	a3,s1,a5
   16be0:	fd070793          	addi	a5,a4,-48
   16be4:	fef572e3          	bleu	a5,a0,16bc8 <_vfiprintf_r+0x334>
   16be8:	e41ff06f          	j	16a28 <_vfiprintf_r+0x194>
   16bec:	360e90e3          	bnez	t4,1774c <_vfiprintf_r+0xeb8>
   16bf0:	010f7793          	andi	a5,t5,16
   16bf4:	1e0796e3          	bnez	a5,175e0 <_vfiprintf_r+0xd4c>
   16bf8:	040f7f13          	andi	t5,t5,64
   16bfc:	1e0f02e3          	beqz	t5,175e0 <_vfiprintf_r+0xd4c>
   16c00:	00c12703          	lw	a4,12(sp)
   16c04:	00072783          	lw	a5,0(a4)
   16c08:	00470713          	addi	a4,a4,4
   16c0c:	00e12623          	sw	a4,12(sp)
   16c10:	00815703          	lhu	a4,8(sp)
   16c14:	00e79023          	sh	a4,0(a5)
   16c18:	d61ff06f          	j	16978 <_vfiprintf_r+0xe4>
   16c1c:	00c12783          	lw	a5,12(sp)
   16c20:	02010ba3          	sb	zero,55(sp)
   16c24:	0007ad03          	lw	s10,0(a5)
   16c28:	00478493          	addi	s1,a5,4
   16c2c:	2a0d04e3          	beqz	s10,176d4 <_vfiprintf_r+0xe40>
   16c30:	fff00793          	li	a5,-1
   16c34:	24f682e3          	beq	a3,a5,17678 <_vfiprintf_r+0xde4>
   16c38:	00068613          	mv	a2,a3
   16c3c:	00000593          	li	a1,0
   16c40:	000d0513          	mv	a0,s10
   16c44:	01e12623          	sw	t5,12(sp)
   16c48:	00d12223          	sw	a3,4(sp)
   16c4c:	b68fe0ef          	jal	14fb4 <memchr>
   16c50:	00412683          	lw	a3,4(sp)
   16c54:	00c12f03          	lw	t5,12(sp)
   16c58:	2a0506e3          	beqz	a0,17704 <_vfiprintf_r+0xe70>
   16c5c:	03714703          	lbu	a4,55(sp)
   16c60:	41a50db3          	sub	s11,a0,s10
   16c64:	00912623          	sw	s1,12(sp)
   16c68:	01e12223          	sw	t5,4(sp)
   16c6c:	00000693          	li	a3,0
   16c70:	00068a13          	mv	s4,a3
   16c74:	01b6d463          	ble	s11,a3,16c7c <_vfiprintf_r+0x3e8>
   16c78:	000d8a13          	mv	s4,s11
   16c7c:	00e03733          	snez	a4,a4
   16c80:	00ea0a33          	add	s4,s4,a4
   16c84:	00412783          	lw	a5,4(sp)
   16c88:	0027f393          	andi	t2,a5,2
   16c8c:	00038463          	beqz	t2,16c94 <_vfiprintf_r+0x400>
   16c90:	002a0a13          	addi	s4,s4,2
   16c94:	00412783          	lw	a5,4(sp)
   16c98:	0847f293          	andi	t0,a5,132
   16c9c:	4c029863          	bnez	t0,1716c <_vfiprintf_r+0x8d8>
   16ca0:	414904b3          	sub	s1,s2,s4
   16ca4:	4c905463          	blez	s1,1716c <_vfiprintf_r+0x8d8>
   16ca8:	01000f13          	li	t5,16
   16cac:	04412603          	lw	a2,68(sp)
   16cb0:	209f5ce3          	ble	s1,t5,176c8 <_vfiprintf_r+0xe34>
   16cb4:	04012503          	lw	a0,64(sp)
   16cb8:	00700f93          	li	t6,7
   16cbc:	00100793          	li	a5,1
   16cc0:	0180006f          	j	16cd8 <_vfiprintf_r+0x444>
   16cc4:	00250713          	addi	a4,a0,2
   16cc8:	00840413          	addi	s0,s0,8
   16ccc:	00058513          	mv	a0,a1
   16cd0:	ff048493          	addi	s1,s1,-16
   16cd4:	029f5c63          	ble	s1,t5,16d0c <_vfiprintf_r+0x478>
   16cd8:	01060613          	addi	a2,a2,16
   16cdc:	00150593          	addi	a1,a0,1
   16ce0:	01942023          	sw	s9,0(s0)
   16ce4:	01e42223          	sw	t5,4(s0)
   16ce8:	04c12223          	sw	a2,68(sp)
   16cec:	04b12023          	sw	a1,64(sp)
   16cf0:	fcbfdae3          	ble	a1,t6,16cc4 <_vfiprintf_r+0x430>
   16cf4:	42061063          	bnez	a2,17114 <_vfiprintf_r+0x880>
   16cf8:	ff048493          	addi	s1,s1,-16
   16cfc:	00000513          	li	a0,0
   16d00:	00078713          	mv	a4,a5
   16d04:	000c0413          	mv	s0,s8
   16d08:	fc9f48e3          	blt	t5,s1,16cd8 <_vfiprintf_r+0x444>
   16d0c:	00c487b3          	add	a5,s1,a2
   16d10:	01942023          	sw	s9,0(s0)
   16d14:	00942223          	sw	s1,4(s0)
   16d18:	04f12223          	sw	a5,68(sp)
   16d1c:	04e12023          	sw	a4,64(sp)
   16d20:	00700613          	li	a2,7
   16d24:	6ee64463          	blt	a2,a4,1740c <_vfiprintf_r+0xb78>
   16d28:	03714583          	lbu	a1,55(sp)
   16d2c:	00840413          	addi	s0,s0,8
   16d30:	00170613          	addi	a2,a4,1
   16d34:	44059663          	bnez	a1,17180 <_vfiprintf_r+0x8ec>
   16d38:	48038063          	beqz	t2,171b8 <_vfiprintf_r+0x924>
   16d3c:	03810713          	addi	a4,sp,56
   16d40:	00278793          	addi	a5,a5,2
   16d44:	00e42023          	sw	a4,0(s0)
   16d48:	00200713          	li	a4,2
   16d4c:	00e42223          	sw	a4,4(s0)
   16d50:	04f12223          	sw	a5,68(sp)
   16d54:	04c12023          	sw	a2,64(sp)
   16d58:	00700713          	li	a4,7
   16d5c:	6ec75e63          	ble	a2,a4,17458 <_vfiprintf_r+0xbc4>
   16d60:	000796e3          	bnez	a5,1756c <_vfiprintf_r+0xcd8>
   16d64:	08000593          	li	a1,128
   16d68:	00100613          	li	a2,1
   16d6c:	00000713          	li	a4,0
   16d70:	000c0413          	mv	s0,s8
   16d74:	44b29663          	bne	t0,a1,171c0 <_vfiprintf_r+0x92c>
   16d78:	414904b3          	sub	s1,s2,s4
   16d7c:	44905263          	blez	s1,171c0 <_vfiprintf_r+0x92c>
   16d80:	01000f13          	li	t5,16
   16d84:	189f5ce3          	ble	s1,t5,1771c <_vfiprintf_r+0xe88>
   16d88:	00700f93          	li	t6,7
   16d8c:	00100293          	li	t0,1
   16d90:	0180006f          	j	16da8 <_vfiprintf_r+0x514>
   16d94:	00270593          	addi	a1,a4,2
   16d98:	00840413          	addi	s0,s0,8
   16d9c:	00060713          	mv	a4,a2
   16da0:	ff048493          	addi	s1,s1,-16
   16da4:	029f5c63          	ble	s1,t5,16ddc <_vfiprintf_r+0x548>
   16da8:	01078793          	addi	a5,a5,16
   16dac:	00170613          	addi	a2,a4,1
   16db0:	01742023          	sw	s7,0(s0)
   16db4:	01e42223          	sw	t5,4(s0)
   16db8:	04f12223          	sw	a5,68(sp)
   16dbc:	04c12023          	sw	a2,64(sp)
   16dc0:	fccfdae3          	ble	a2,t6,16d94 <_vfiprintf_r+0x500>
   16dc4:	60079063          	bnez	a5,173c4 <_vfiprintf_r+0xb30>
   16dc8:	ff048493          	addi	s1,s1,-16
   16dcc:	00028593          	mv	a1,t0
   16dd0:	00000713          	li	a4,0
   16dd4:	000c0413          	mv	s0,s8
   16dd8:	fc9f48e3          	blt	t5,s1,16da8 <_vfiprintf_r+0x514>
   16ddc:	009787b3          	add	a5,a5,s1
   16de0:	01742023          	sw	s7,0(s0)
   16de4:	00942223          	sw	s1,4(s0)
   16de8:	04f12223          	sw	a5,68(sp)
   16dec:	04b12023          	sw	a1,64(sp)
   16df0:	00700713          	li	a4,7
   16df4:	7ab74863          	blt	a4,a1,175a4 <_vfiprintf_r+0xd10>
   16df8:	41b684b3          	sub	s1,a3,s11
   16dfc:	00840413          	addi	s0,s0,8
   16e00:	00158613          	addi	a2,a1,1
   16e04:	00058713          	mv	a4,a1
   16e08:	3c904063          	bgtz	s1,171c8 <_vfiprintf_r+0x934>
   16e0c:	00fd87b3          	add	a5,s11,a5
   16e10:	01a42023          	sw	s10,0(s0)
   16e14:	01b42223          	sw	s11,4(s0)
   16e18:	04f12223          	sw	a5,68(sp)
   16e1c:	04c12023          	sw	a2,64(sp)
   16e20:	00700713          	li	a4,7
   16e24:	56c75263          	ble	a2,a4,17388 <_vfiprintf_r+0xaf4>
   16e28:	6e079063          	bnez	a5,17508 <_vfiprintf_r+0xc74>
   16e2c:	00412703          	lw	a4,4(sp)
   16e30:	04012023          	sw	zero,64(sp)
   16e34:	00477d13          	andi	s10,a4,4
   16e38:	080d0863          	beqz	s10,16ec8 <_vfiprintf_r+0x634>
   16e3c:	414904b3          	sub	s1,s2,s4
   16e40:	000c0413          	mv	s0,s8
   16e44:	08905263          	blez	s1,16ec8 <_vfiprintf_r+0x634>
   16e48:	01000d13          	li	s10,16
   16e4c:	0a9d56e3          	ble	s1,s10,176f8 <_vfiprintf_r+0xe64>
   16e50:	04012683          	lw	a3,64(sp)
   16e54:	00700d93          	li	s11,7
   16e58:	00100e93          	li	t4,1
   16e5c:	0180006f          	j	16e74 <_vfiprintf_r+0x5e0>
   16e60:	00268613          	addi	a2,a3,2
   16e64:	00840413          	addi	s0,s0,8
   16e68:	00070693          	mv	a3,a4
   16e6c:	ff048493          	addi	s1,s1,-16
   16e70:	029d5c63          	ble	s1,s10,16ea8 <_vfiprintf_r+0x614>
   16e74:	01078793          	addi	a5,a5,16
   16e78:	00168713          	addi	a4,a3,1
   16e7c:	01942023          	sw	s9,0(s0)
   16e80:	01a42223          	sw	s10,4(s0)
   16e84:	04f12223          	sw	a5,68(sp)
   16e88:	04e12023          	sw	a4,64(sp)
   16e8c:	fceddae3          	ble	a4,s11,16e60 <_vfiprintf_r+0x5cc>
   16e90:	46079063          	bnez	a5,172f0 <_vfiprintf_r+0xa5c>
   16e94:	ff048493          	addi	s1,s1,-16
   16e98:	000e8613          	mv	a2,t4
   16e9c:	00000693          	li	a3,0
   16ea0:	000c0413          	mv	s0,s8
   16ea4:	fc9d48e3          	blt	s10,s1,16e74 <_vfiprintf_r+0x5e0>
   16ea8:	009787b3          	add	a5,a5,s1
   16eac:	01942023          	sw	s9,0(s0)
   16eb0:	00942223          	sw	s1,4(s0)
   16eb4:	04f12223          	sw	a5,68(sp)
   16eb8:	04c12023          	sw	a2,64(sp)
   16ebc:	00700713          	li	a4,7
   16ec0:	4ec75063          	ble	a2,a4,173a0 <_vfiprintf_r+0xb0c>
   16ec4:	78079c63          	bnez	a5,1765c <_vfiprintf_r+0xdc8>
   16ec8:	01495463          	ble	s4,s2,16ed0 <_vfiprintf_r+0x63c>
   16ecc:	000a0913          	mv	s2,s4
   16ed0:	00812783          	lw	a5,8(sp)
   16ed4:	012787b3          	add	a5,a5,s2
   16ed8:	00f12423          	sw	a5,8(sp)
   16edc:	4dc0006f          	j	173b8 <_vfiprintf_r+0xb24>
   16ee0:	060e9ee3          	bnez	t4,1775c <_vfiprintf_r+0xec8>
   16ee4:	010f6f13          	ori	t5,t5,16
   16ee8:	010f7793          	andi	a5,t5,16
   16eec:	58079a63          	bnez	a5,17480 <_vfiprintf_r+0xbec>
   16ef0:	040f7793          	andi	a5,t5,64
   16ef4:	58078663          	beqz	a5,17480 <_vfiprintf_r+0xbec>
   16ef8:	00c12783          	lw	a5,12(sp)
   16efc:	00079483          	lh	s1,0(a5)
   16f00:	00478793          	addi	a5,a5,4
   16f04:	00f12623          	sw	a5,12(sp)
   16f08:	6e04ce63          	bltz	s1,17604 <_vfiprintf_r+0xd70>
   16f0c:	fff00613          	li	a2,-1
   16f10:	03714703          	lbu	a4,55(sp)
   16f14:	00100793          	li	a5,1
   16f18:	12c69863          	bne	a3,a2,17048 <_vfiprintf_r+0x7b4>
   16f1c:	40048463          	beqz	s1,17324 <_vfiprintf_r+0xa90>
   16f20:	01e12223          	sw	t5,4(sp)
   16f24:	00100613          	li	a2,1
   16f28:	58c78063          	beq	a5,a2,174a8 <_vfiprintf_r+0xc14>
   16f2c:	00200613          	li	a2,2
   16f30:	40c78663          	beq	a5,a2,1733c <_vfiprintf_r+0xaa8>
   16f34:	000c0613          	mv	a2,s8
   16f38:	0080006f          	j	16f40 <_vfiprintf_r+0x6ac>
   16f3c:	000d0613          	mv	a2,s10
   16f40:	0074f793          	andi	a5,s1,7
   16f44:	03078793          	addi	a5,a5,48
   16f48:	fef60fa3          	sb	a5,-1(a2)
   16f4c:	0034d493          	srli	s1,s1,0x3
   16f50:	fff60d13          	addi	s10,a2,-1
   16f54:	fe0494e3          	bnez	s1,16f3c <_vfiprintf_r+0x6a8>
   16f58:	00412583          	lw	a1,4(sp)
   16f5c:	0015f593          	andi	a1,a1,1
   16f60:	40058063          	beqz	a1,17360 <_vfiprintf_r+0xacc>
   16f64:	03000593          	li	a1,48
   16f68:	3eb78c63          	beq	a5,a1,17360 <_vfiprintf_r+0xacc>
   16f6c:	ffe60613          	addi	a2,a2,-2
   16f70:	febd0fa3          	sb	a1,-1(s10)
   16f74:	40cc0db3          	sub	s11,s8,a2
   16f78:	00060d13          	mv	s10,a2
   16f7c:	cf5ff06f          	j	16c70 <_vfiprintf_r+0x3dc>
   16f80:	ac0f9ce3          	bnez	t6,16a58 <_vfiprintf_r+0x1c4>
   16f84:	00028e93          	mv	t4,t0
   16f88:	000d0f93          	mv	t6,s10
   16f8c:	000b0493          	mv	s1,s6
   16f90:	a91ff06f          	j	16a20 <_vfiprintf_r+0x18c>
   16f94:	001f6f13          	ori	t5,t5,1
   16f98:	000b0493          	mv	s1,s6
   16f9c:	a85ff06f          	j	16a20 <_vfiprintf_r+0x18c>
   16fa0:	00c12703          	lw	a4,12(sp)
   16fa4:	00100a13          	li	s4,1
   16fa8:	02010ba3          	sb	zero,55(sp)
   16fac:	00072783          	lw	a5,0(a4)
   16fb0:	000a0d93          	mv	s11,s4
   16fb4:	04810d13          	addi	s10,sp,72
   16fb8:	04f10423          	sb	a5,72(sp)
   16fbc:	00470793          	addi	a5,a4,4
   16fc0:	00f12623          	sw	a5,12(sp)
   16fc4:	01e12223          	sw	t5,4(sp)
   16fc8:	00000693          	li	a3,0
   16fcc:	cb9ff06f          	j	16c84 <_vfiprintf_r+0x3f0>
   16fd0:	f00e8ce3          	beqz	t4,16ee8 <_vfiprintf_r+0x654>
   16fd4:	03f10ba3          	sb	t6,55(sp)
   16fd8:	f11ff06f          	j	16ee8 <_vfiprintf_r+0x654>
   16fdc:	040f6f13          	ori	t5,t5,64
   16fe0:	000b0493          	mv	s1,s6
   16fe4:	a3dff06f          	j	16a20 <_vfiprintf_r+0x18c>
   16fe8:	780e9263          	bnez	t4,1776c <_vfiprintf_r+0xed8>
   16fec:	0001b7b7          	lui	a5,0x1b
   16ff0:	63078793          	addi	a5,a5,1584 # 1b630 <__clz_tab+0x128>
   16ff4:	00f12e23          	sw	a5,28(sp)
   16ff8:	010f7793          	andi	a5,t5,16
   16ffc:	48079c63          	bnez	a5,17494 <_vfiprintf_r+0xc00>
   17000:	040f7793          	andi	a5,t5,64
   17004:	48078863          	beqz	a5,17494 <_vfiprintf_r+0xc00>
   17008:	00c12783          	lw	a5,12(sp)
   1700c:	0007d483          	lhu	s1,0(a5)
   17010:	00478793          	addi	a5,a5,4
   17014:	00f12623          	sw	a5,12(sp)
   17018:	001f7613          	andi	a2,t5,1
   1701c:	00200793          	li	a5,2
   17020:	00060c63          	beqz	a2,17038 <_vfiprintf_r+0x7a4>
   17024:	00048a63          	beqz	s1,17038 <_vfiprintf_r+0x7a4>
   17028:	03000613          	li	a2,48
   1702c:	02c10c23          	sb	a2,56(sp)
   17030:	02e10ca3          	sb	a4,57(sp)
   17034:	00ff6f33          	or	t5,t5,a5
   17038:	02010ba3          	sb	zero,55(sp)
   1703c:	00000713          	li	a4,0
   17040:	fff00613          	li	a2,-1
   17044:	ecc68ce3          	beq	a3,a2,16f1c <_vfiprintf_r+0x688>
   17048:	f7ff7613          	andi	a2,t5,-129
   1704c:	00c12223          	sw	a2,4(sp)
   17050:	ec049ae3          	bnez	s1,16f24 <_vfiprintf_r+0x690>
   17054:	2c069663          	bnez	a3,17320 <_vfiprintf_r+0xa8c>
   17058:	4a079263          	bnez	a5,174fc <_vfiprintf_r+0xc68>
   1705c:	001f7d93          	andi	s11,t5,1
   17060:	000c0d13          	mv	s10,s8
   17064:	c00d86e3          	beqz	s11,16c70 <_vfiprintf_r+0x3dc>
   17068:	03000793          	li	a5,48
   1706c:	06f107a3          	sb	a5,111(sp)
   17070:	06f10d13          	addi	s10,sp,111
   17074:	bfdff06f          	j	16c70 <_vfiprintf_r+0x3dc>
   17078:	6e0e9663          	bnez	t4,17764 <_vfiprintf_r+0xed0>
   1707c:	0001b7b7          	lui	a5,0x1b
   17080:	61c78793          	addi	a5,a5,1564 # 1b61c <__clz_tab+0x114>
   17084:	00f12e23          	sw	a5,28(sp)
   17088:	f71ff06f          	j	16ff8 <_vfiprintf_r+0x764>
   1708c:	00c12703          	lw	a4,12(sp)
   17090:	03000793          	li	a5,48
   17094:	02f10c23          	sb	a5,56(sp)
   17098:	07800793          	li	a5,120
   1709c:	02f10ca3          	sb	a5,57(sp)
   170a0:	00470793          	addi	a5,a4,4
   170a4:	00f12623          	sw	a5,12(sp)
   170a8:	0001b7b7          	lui	a5,0x1b
   170ac:	63078793          	addi	a5,a5,1584 # 1b630 <__clz_tab+0x128>
   170b0:	00f12e23          	sw	a5,28(sp)
   170b4:	00072483          	lw	s1,0(a4)
   170b8:	002f6f13          	ori	t5,t5,2
   170bc:	00200793          	li	a5,2
   170c0:	f79ff06f          	j	17038 <_vfiprintf_r+0x7a4>
   170c4:	00c12703          	lw	a4,12(sp)
   170c8:	00072483          	lw	s1,0(a4)
   170cc:	00470713          	addi	a4,a4,4
   170d0:	00000793          	li	a5,0
   170d4:	00e12623          	sw	a4,12(sp)
   170d8:	f61ff06f          	j	17038 <_vfiprintf_r+0x7a4>
   170dc:	00c12703          	lw	a4,12(sp)
   170e0:	00072483          	lw	s1,0(a4)
   170e4:	00470713          	addi	a4,a4,4
   170e8:	00100793          	li	a5,1
   170ec:	00e12623          	sw	a4,12(sp)
   170f0:	f49ff06f          	j	17038 <_vfiprintf_r+0x7a4>
   170f4:	640e9863          	bnez	t4,17744 <_vfiprintf_r+0xeb0>
   170f8:	1c070463          	beqz	a4,172c0 <_vfiprintf_r+0xa2c>
   170fc:	00100a13          	li	s4,1
   17100:	04e10423          	sb	a4,72(sp)
   17104:	02010ba3          	sb	zero,55(sp)
   17108:	000a0d93          	mv	s11,s4
   1710c:	04810d13          	addi	s10,sp,72
   17110:	eb5ff06f          	j	16fc4 <_vfiprintf_r+0x730>
   17114:	03c10613          	addi	a2,sp,60
   17118:	00098593          	mv	a1,s3
   1711c:	000a8513          	mv	a0,s5
   17120:	02f12623          	sw	a5,44(sp)
   17124:	03f12423          	sw	t6,40(sp)
   17128:	03e12223          	sw	t5,36(sp)
   1712c:	02512023          	sw	t0,32(sp)
   17130:	00712c23          	sw	t2,24(sp)
   17134:	00d12a23          	sw	a3,20(sp)
   17138:	e54ff0ef          	jal	1678c <__sprint_r.part.0>
   1713c:	18051e63          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   17140:	04012503          	lw	a0,64(sp)
   17144:	04412603          	lw	a2,68(sp)
   17148:	000c0413          	mv	s0,s8
   1714c:	00150713          	addi	a4,a0,1
   17150:	02c12783          	lw	a5,44(sp)
   17154:	02812f83          	lw	t6,40(sp)
   17158:	02412f03          	lw	t5,36(sp)
   1715c:	02012283          	lw	t0,32(sp)
   17160:	01812383          	lw	t2,24(sp)
   17164:	01412683          	lw	a3,20(sp)
   17168:	b69ff06f          	j	16cd0 <_vfiprintf_r+0x43c>
   1716c:	04012703          	lw	a4,64(sp)
   17170:	04412783          	lw	a5,68(sp)
   17174:	00170613          	addi	a2,a4,1
   17178:	03714583          	lbu	a1,55(sp)
   1717c:	ba058ee3          	beqz	a1,16d38 <_vfiprintf_r+0x4a4>
   17180:	00100593          	li	a1,1
   17184:	03710713          	addi	a4,sp,55
   17188:	00b787b3          	add	a5,a5,a1
   1718c:	00e42023          	sw	a4,0(s0)
   17190:	00b42223          	sw	a1,4(s0)
   17194:	04f12223          	sw	a5,68(sp)
   17198:	04c12023          	sw	a2,64(sp)
   1719c:	00700713          	li	a4,7
   171a0:	28c75863          	ble	a2,a4,17430 <_vfiprintf_r+0xb9c>
   171a4:	0a079263          	bnez	a5,17248 <_vfiprintf_r+0x9b4>
   171a8:	28039c63          	bnez	t2,17440 <_vfiprintf_r+0xbac>
   171ac:	00000713          	li	a4,0
   171b0:	00100613          	li	a2,1
   171b4:	000c0413          	mv	s0,s8
   171b8:	08000593          	li	a1,128
   171bc:	bab28ee3          	beq	t0,a1,16d78 <_vfiprintf_r+0x4e4>
   171c0:	41b684b3          	sub	s1,a3,s11
   171c4:	c49054e3          	blez	s1,16e0c <_vfiprintf_r+0x578>
   171c8:	01000f13          	li	t5,16
   171cc:	049f5a63          	ble	s1,t5,17220 <_vfiprintf_r+0x98c>
   171d0:	00700f93          	li	t6,7
   171d4:	0180006f          	j	171ec <_vfiprintf_r+0x958>
   171d8:	00270613          	addi	a2,a4,2
   171dc:	00840413          	addi	s0,s0,8
   171e0:	00068713          	mv	a4,a3
   171e4:	ff048493          	addi	s1,s1,-16
   171e8:	029f5c63          	ble	s1,t5,17220 <_vfiprintf_r+0x98c>
   171ec:	01078793          	addi	a5,a5,16
   171f0:	00170693          	addi	a3,a4,1
   171f4:	01742023          	sw	s7,0(s0)
   171f8:	01e42223          	sw	t5,4(s0)
   171fc:	04f12223          	sw	a5,68(sp)
   17200:	04d12023          	sw	a3,64(sp)
   17204:	fcdfdae3          	ble	a3,t6,171d8 <_vfiprintf_r+0x944>
   17208:	08079063          	bnez	a5,17288 <_vfiprintf_r+0x9f4>
   1720c:	ff048493          	addi	s1,s1,-16
   17210:	00100613          	li	a2,1
   17214:	00000713          	li	a4,0
   17218:	000c0413          	mv	s0,s8
   1721c:	fc9f48e3          	blt	t5,s1,171ec <_vfiprintf_r+0x958>
   17220:	009787b3          	add	a5,a5,s1
   17224:	01742023          	sw	s7,0(s0)
   17228:	00942223          	sw	s1,4(s0)
   1722c:	04f12223          	sw	a5,68(sp)
   17230:	04c12023          	sw	a2,64(sp)
   17234:	00700713          	li	a4,7
   17238:	12c74863          	blt	a4,a2,17368 <_vfiprintf_r+0xad4>
   1723c:	00840413          	addi	s0,s0,8
   17240:	00160613          	addi	a2,a2,1
   17244:	bc9ff06f          	j	16e0c <_vfiprintf_r+0x578>
   17248:	03c10613          	addi	a2,sp,60
   1724c:	00098593          	mv	a1,s3
   17250:	000a8513          	mv	a0,s5
   17254:	02512023          	sw	t0,32(sp)
   17258:	00712c23          	sw	t2,24(sp)
   1725c:	00d12a23          	sw	a3,20(sp)
   17260:	d2cff0ef          	jal	1678c <__sprint_r.part.0>
   17264:	06051a63          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   17268:	04012703          	lw	a4,64(sp)
   1726c:	04412783          	lw	a5,68(sp)
   17270:	000c0413          	mv	s0,s8
   17274:	00170613          	addi	a2,a4,1
   17278:	02012283          	lw	t0,32(sp)
   1727c:	01812383          	lw	t2,24(sp)
   17280:	01412683          	lw	a3,20(sp)
   17284:	ab5ff06f          	j	16d38 <_vfiprintf_r+0x4a4>
   17288:	03c10613          	addi	a2,sp,60
   1728c:	00098593          	mv	a1,s3
   17290:	000a8513          	mv	a0,s5
   17294:	01f12c23          	sw	t6,24(sp)
   17298:	01e12a23          	sw	t5,20(sp)
   1729c:	cf0ff0ef          	jal	1678c <__sprint_r.part.0>
   172a0:	02051c63          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   172a4:	04012703          	lw	a4,64(sp)
   172a8:	04412783          	lw	a5,68(sp)
   172ac:	000c0413          	mv	s0,s8
   172b0:	00170613          	addi	a2,a4,1
   172b4:	01812f83          	lw	t6,24(sp)
   172b8:	01412f03          	lw	t5,20(sp)
   172bc:	f29ff06f          	j	171e4 <_vfiprintf_r+0x950>
   172c0:	04412783          	lw	a5,68(sp)
   172c4:	00078a63          	beqz	a5,172d8 <_vfiprintf_r+0xa44>
   172c8:	03c10613          	addi	a2,sp,60
   172cc:	00098593          	mv	a1,s3
   172d0:	000a8513          	mv	a0,s5
   172d4:	cb8ff0ef          	jal	1678c <__sprint_r.part.0>
   172d8:	00c9d783          	lhu	a5,12(s3)
   172dc:	0407f793          	andi	a5,a5,64
   172e0:	80078ce3          	beqz	a5,16af8 <_vfiprintf_r+0x264>
   172e4:	fff00793          	li	a5,-1
   172e8:	00f12423          	sw	a5,8(sp)
   172ec:	80dff06f          	j	16af8 <_vfiprintf_r+0x264>
   172f0:	03c10613          	addi	a2,sp,60
   172f4:	00098593          	mv	a1,s3
   172f8:	000a8513          	mv	a0,s5
   172fc:	01d12223          	sw	t4,4(sp)
   17300:	c8cff0ef          	jal	1678c <__sprint_r.part.0>
   17304:	fc051ae3          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   17308:	04012683          	lw	a3,64(sp)
   1730c:	04412783          	lw	a5,68(sp)
   17310:	000c0413          	mv	s0,s8
   17314:	00168613          	addi	a2,a3,1
   17318:	00412e83          	lw	t4,4(sp)
   1731c:	b51ff06f          	j	16e6c <_vfiprintf_r+0x5d8>
   17320:	00412f03          	lw	t5,4(sp)
   17324:	00100613          	li	a2,1
   17328:	22c78663          	beq	a5,a2,17554 <_vfiprintf_r+0xcc0>
   1732c:	00200613          	li	a2,2
   17330:	20c79a63          	bne	a5,a2,17544 <_vfiprintf_r+0xcb0>
   17334:	01e12223          	sw	t5,4(sp)
   17338:	00000493          	li	s1,0
   1733c:	000c0d13          	mv	s10,s8
   17340:	01c12603          	lw	a2,28(sp)
   17344:	00f4f793          	andi	a5,s1,15
   17348:	fffd0d13          	addi	s10,s10,-1
   1734c:	00f607b3          	add	a5,a2,a5
   17350:	0007c783          	lbu	a5,0(a5)
   17354:	0044d493          	srli	s1,s1,0x4
   17358:	00fd0023          	sb	a5,0(s10)
   1735c:	fe0492e3          	bnez	s1,17340 <_vfiprintf_r+0xaac>
   17360:	41ac0db3          	sub	s11,s8,s10
   17364:	90dff06f          	j	16c70 <_vfiprintf_r+0x3dc>
   17368:	24079863          	bnez	a5,175b8 <_vfiprintf_r+0xd24>
   1736c:	00100713          	li	a4,1
   17370:	000d8793          	mv	a5,s11
   17374:	07a12823          	sw	s10,112(sp)
   17378:	07b12a23          	sw	s11,116(sp)
   1737c:	05b12223          	sw	s11,68(sp)
   17380:	04e12023          	sw	a4,64(sp)
   17384:	000c0413          	mv	s0,s8
   17388:	00840413          	addi	s0,s0,8
   1738c:	00412703          	lw	a4,4(sp)
   17390:	00477d13          	andi	s10,a4,4
   17394:	000d0663          	beqz	s10,173a0 <_vfiprintf_r+0xb0c>
   17398:	414904b3          	sub	s1,s2,s4
   1739c:	aa9046e3          	bgtz	s1,16e48 <_vfiprintf_r+0x5b4>
   173a0:	01495463          	ble	s4,s2,173a8 <_vfiprintf_r+0xb14>
   173a4:	000a0913          	mv	s2,s4
   173a8:	00812703          	lw	a4,8(sp)
   173ac:	01270733          	add	a4,a4,s2
   173b0:	00e12423          	sw	a4,8(sp)
   173b4:	0a079a63          	bnez	a5,17468 <_vfiprintf_r+0xbd4>
   173b8:	04012023          	sw	zero,64(sp)
   173bc:	000c0413          	mv	s0,s8
   173c0:	db8ff06f          	j	16978 <_vfiprintf_r+0xe4>
   173c4:	03c10613          	addi	a2,sp,60
   173c8:	00098593          	mv	a1,s3
   173cc:	000a8513          	mv	a0,s5
   173d0:	02512223          	sw	t0,36(sp)
   173d4:	03f12023          	sw	t6,32(sp)
   173d8:	01e12c23          	sw	t5,24(sp)
   173dc:	00d12a23          	sw	a3,20(sp)
   173e0:	bacff0ef          	jal	1678c <__sprint_r.part.0>
   173e4:	ee051ae3          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   173e8:	04012703          	lw	a4,64(sp)
   173ec:	04412783          	lw	a5,68(sp)
   173f0:	000c0413          	mv	s0,s8
   173f4:	00170593          	addi	a1,a4,1
   173f8:	02412283          	lw	t0,36(sp)
   173fc:	02012f83          	lw	t6,32(sp)
   17400:	01812f03          	lw	t5,24(sp)
   17404:	01412683          	lw	a3,20(sp)
   17408:	999ff06f          	j	16da0 <_vfiprintf_r+0x50c>
   1740c:	20079863          	bnez	a5,1761c <_vfiprintf_r+0xd88>
   17410:	03714703          	lbu	a4,55(sp)
   17414:	d8070ae3          	beqz	a4,171a8 <_vfiprintf_r+0x914>
   17418:	00100793          	li	a5,1
   1741c:	03710713          	addi	a4,sp,55
   17420:	00078613          	mv	a2,a5
   17424:	06e12823          	sw	a4,112(sp)
   17428:	06f12a23          	sw	a5,116(sp)
   1742c:	000c0413          	mv	s0,s8
   17430:	00060713          	mv	a4,a2
   17434:	00840413          	addi	s0,s0,8
   17438:	00160613          	addi	a2,a2,1
   1743c:	8fdff06f          	j	16d38 <_vfiprintf_r+0x4a4>
   17440:	00200793          	li	a5,2
   17444:	03810713          	addi	a4,sp,56
   17448:	06e12823          	sw	a4,112(sp)
   1744c:	06f12a23          	sw	a5,116(sp)
   17450:	00100613          	li	a2,1
   17454:	000c0413          	mv	s0,s8
   17458:	00060713          	mv	a4,a2
   1745c:	00840413          	addi	s0,s0,8
   17460:	00160613          	addi	a2,a2,1
   17464:	d55ff06f          	j	171b8 <_vfiprintf_r+0x924>
   17468:	03c10613          	addi	a2,sp,60
   1746c:	00098593          	mv	a1,s3
   17470:	000a8513          	mv	a0,s5
   17474:	b18ff0ef          	jal	1678c <__sprint_r.part.0>
   17478:	f40500e3          	beqz	a0,173b8 <_vfiprintf_r+0xb24>
   1747c:	e5dff06f          	j	172d8 <_vfiprintf_r+0xa44>
   17480:	00c12783          	lw	a5,12(sp)
   17484:	0007a483          	lw	s1,0(a5)
   17488:	00478793          	addi	a5,a5,4
   1748c:	00f12623          	sw	a5,12(sp)
   17490:	a79ff06f          	j	16f08 <_vfiprintf_r+0x674>
   17494:	00c12783          	lw	a5,12(sp)
   17498:	0007a483          	lw	s1,0(a5)
   1749c:	00478793          	addi	a5,a5,4
   174a0:	00f12623          	sw	a5,12(sp)
   174a4:	b75ff06f          	j	17018 <_vfiprintf_r+0x784>
   174a8:	00900793          	li	a5,9
   174ac:	000c0d13          	mv	s10,s8
   174b0:	00a00a13          	li	s4,10
   174b4:	0897fe63          	bleu	s1,a5,17550 <_vfiprintf_r+0xcbc>
   174b8:	000a0593          	mv	a1,s4
   174bc:	00048513          	mv	a0,s1
   174c0:	00e12c23          	sw	a4,24(sp)
   174c4:	00d12a23          	sw	a3,20(sp)
   174c8:	711020ef          	jal	1a3d8 <__umodsi3>
   174cc:	03050513          	addi	a0,a0,48
   174d0:	fffd0d13          	addi	s10,s10,-1
   174d4:	00ad0023          	sb	a0,0(s10)
   174d8:	000a0593          	mv	a1,s4
   174dc:	00048513          	mv	a0,s1
   174e0:	6b1020ef          	jal	1a390 <__udivsi3>
   174e4:	00050493          	mv	s1,a0
   174e8:	01412683          	lw	a3,20(sp)
   174ec:	01812703          	lw	a4,24(sp)
   174f0:	fc0514e3          	bnez	a0,174b8 <_vfiprintf_r+0xc24>
   174f4:	41ac0db3          	sub	s11,s8,s10
   174f8:	f78ff06f          	j	16c70 <_vfiprintf_r+0x3dc>
   174fc:	00000d93          	li	s11,0
   17500:	000c0d13          	mv	s10,s8
   17504:	f6cff06f          	j	16c70 <_vfiprintf_r+0x3dc>
   17508:	03c10613          	addi	a2,sp,60
   1750c:	00098593          	mv	a1,s3
   17510:	000a8513          	mv	a0,s5
   17514:	a78ff0ef          	jal	1678c <__sprint_r.part.0>
   17518:	dc0510e3          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   1751c:	04412783          	lw	a5,68(sp)
   17520:	000c0413          	mv	s0,s8
   17524:	e69ff06f          	j	1738c <_vfiprintf_r+0xaf8>
   17528:	03c10613          	addi	a2,sp,60
   1752c:	00098593          	mv	a1,s3
   17530:	000a8513          	mv	a0,s5
   17534:	a58ff0ef          	jal	1678c <__sprint_r.part.0>
   17538:	da0510e3          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   1753c:	000c0413          	mv	s0,s8
   17540:	c94ff06f          	j	169d4 <_vfiprintf_r+0x140>
   17544:	01e12223          	sw	t5,4(sp)
   17548:	00000493          	li	s1,0
   1754c:	9e9ff06f          	j	16f34 <_vfiprintf_r+0x6a0>
   17550:	00412f03          	lw	t5,4(sp)
   17554:	03048493          	addi	s1,s1,48
   17558:	069107a3          	sb	s1,111(sp)
   1755c:	01e12223          	sw	t5,4(sp)
   17560:	00100d93          	li	s11,1
   17564:	06f10d13          	addi	s10,sp,111
   17568:	f08ff06f          	j	16c70 <_vfiprintf_r+0x3dc>
   1756c:	03c10613          	addi	a2,sp,60
   17570:	00098593          	mv	a1,s3
   17574:	000a8513          	mv	a0,s5
   17578:	00512c23          	sw	t0,24(sp)
   1757c:	00d12a23          	sw	a3,20(sp)
   17580:	a0cff0ef          	jal	1678c <__sprint_r.part.0>
   17584:	d4051ae3          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   17588:	04012703          	lw	a4,64(sp)
   1758c:	04412783          	lw	a5,68(sp)
   17590:	000c0413          	mv	s0,s8
   17594:	00170613          	addi	a2,a4,1
   17598:	01812283          	lw	t0,24(sp)
   1759c:	01412683          	lw	a3,20(sp)
   175a0:	c19ff06f          	j	171b8 <_vfiprintf_r+0x924>
   175a4:	0e079a63          	bnez	a5,17698 <_vfiprintf_r+0xe04>
   175a8:	00100613          	li	a2,1
   175ac:	00000713          	li	a4,0
   175b0:	000c0413          	mv	s0,s8
   175b4:	c0dff06f          	j	171c0 <_vfiprintf_r+0x92c>
   175b8:	03c10613          	addi	a2,sp,60
   175bc:	00098593          	mv	a1,s3
   175c0:	000a8513          	mv	a0,s5
   175c4:	9c8ff0ef          	jal	1678c <__sprint_r.part.0>
   175c8:	d00518e3          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   175cc:	04012603          	lw	a2,64(sp)
   175d0:	04412783          	lw	a5,68(sp)
   175d4:	000c0413          	mv	s0,s8
   175d8:	00160613          	addi	a2,a2,1
   175dc:	831ff06f          	j	16e0c <_vfiprintf_r+0x578>
   175e0:	00c12703          	lw	a4,12(sp)
   175e4:	00072783          	lw	a5,0(a4)
   175e8:	00470713          	addi	a4,a4,4
   175ec:	00e12623          	sw	a4,12(sp)
   175f0:	00812703          	lw	a4,8(sp)
   175f4:	00e7a023          	sw	a4,0(a5)
   175f8:	b80ff06f          	j	16978 <_vfiprintf_r+0xe4>
   175fc:	000b0493          	mv	s1,s6
   17600:	be0ff06f          	j	169e0 <_vfiprintf_r+0x14c>
   17604:	02d00793          	li	a5,45
   17608:	02f10ba3          	sb	a5,55(sp)
   1760c:	409004b3          	neg	s1,s1
   17610:	02d00713          	li	a4,45
   17614:	00100793          	li	a5,1
   17618:	a29ff06f          	j	17040 <_vfiprintf_r+0x7ac>
   1761c:	03c10613          	addi	a2,sp,60
   17620:	00098593          	mv	a1,s3
   17624:	000a8513          	mv	a0,s5
   17628:	02512023          	sw	t0,32(sp)
   1762c:	00712c23          	sw	t2,24(sp)
   17630:	00d12a23          	sw	a3,20(sp)
   17634:	958ff0ef          	jal	1678c <__sprint_r.part.0>
   17638:	ca0510e3          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   1763c:	04012703          	lw	a4,64(sp)
   17640:	04412783          	lw	a5,68(sp)
   17644:	000c0413          	mv	s0,s8
   17648:	00170613          	addi	a2,a4,1
   1764c:	02012283          	lw	t0,32(sp)
   17650:	01812383          	lw	t2,24(sp)
   17654:	01412683          	lw	a3,20(sp)
   17658:	b21ff06f          	j	17178 <_vfiprintf_r+0x8e4>
   1765c:	03c10613          	addi	a2,sp,60
   17660:	00098593          	mv	a1,s3
   17664:	000a8513          	mv	a0,s5
   17668:	924ff0ef          	jal	1678c <__sprint_r.part.0>
   1766c:	c60516e3          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   17670:	04412783          	lw	a5,68(sp)
   17674:	d2dff06f          	j	173a0 <_vfiprintf_r+0xb0c>
   17678:	000d0513          	mv	a0,s10
   1767c:	01e12223          	sw	t5,4(sp)
   17680:	874ff0ef          	jal	166f4 <strlen>
   17684:	00050d93          	mv	s11,a0
   17688:	03714703          	lbu	a4,55(sp)
   1768c:	00912623          	sw	s1,12(sp)
   17690:	00000693          	li	a3,0
   17694:	ddcff06f          	j	16c70 <_vfiprintf_r+0x3dc>
   17698:	03c10613          	addi	a2,sp,60
   1769c:	00098593          	mv	a1,s3
   176a0:	000a8513          	mv	a0,s5
   176a4:	00d12a23          	sw	a3,20(sp)
   176a8:	8e4ff0ef          	jal	1678c <__sprint_r.part.0>
   176ac:	c20516e3          	bnez	a0,172d8 <_vfiprintf_r+0xa44>
   176b0:	04012703          	lw	a4,64(sp)
   176b4:	04412783          	lw	a5,68(sp)
   176b8:	000c0413          	mv	s0,s8
   176bc:	00170613          	addi	a2,a4,1
   176c0:	01412683          	lw	a3,20(sp)
   176c4:	afdff06f          	j	171c0 <_vfiprintf_r+0x92c>
   176c8:	04012703          	lw	a4,64(sp)
   176cc:	00170713          	addi	a4,a4,1
   176d0:	e3cff06f          	j	16d0c <_vfiprintf_r+0x478>
   176d4:	00600793          	li	a5,6
   176d8:	00068d93          	mv	s11,a3
   176dc:	00d7f463          	bleu	a3,a5,176e4 <_vfiprintf_r+0xe50>
   176e0:	00078d93          	mv	s11,a5
   176e4:	0001beb7          	lui	t4,0x1b
   176e8:	000d8a13          	mv	s4,s11
   176ec:	00912623          	sw	s1,12(sp)
   176f0:	644e8d13          	addi	s10,t4,1604 # 1b644 <__clz_tab+0x13c>
   176f4:	8d1ff06f          	j	16fc4 <_vfiprintf_r+0x730>
   176f8:	04012603          	lw	a2,64(sp)
   176fc:	00160613          	addi	a2,a2,1
   17700:	fa8ff06f          	j	16ea8 <_vfiprintf_r+0x614>
   17704:	00068d93          	mv	s11,a3
   17708:	03714703          	lbu	a4,55(sp)
   1770c:	00912623          	sw	s1,12(sp)
   17710:	01e12223          	sw	t5,4(sp)
   17714:	00000693          	li	a3,0
   17718:	d58ff06f          	j	16c70 <_vfiprintf_r+0x3dc>
   1771c:	00060593          	mv	a1,a2
   17720:	ebcff06f          	j	16ddc <_vfiprintf_r+0x548>
   17724:	00c12783          	lw	a5,12(sp)
   17728:	0007a683          	lw	a3,0(a5)
   1772c:	00478b13          	addi	s6,a5,4
   17730:	0206c263          	bltz	a3,17754 <_vfiprintf_r+0xec0>
   17734:	01612623          	sw	s6,12(sp)
   17738:	00048b13          	mv	s6,s1
   1773c:	000b0493          	mv	s1,s6
   17740:	ae0ff06f          	j	16a20 <_vfiprintf_r+0x18c>
   17744:	03f10ba3          	sb	t6,55(sp)
   17748:	9b1ff06f          	j	170f8 <_vfiprintf_r+0x864>
   1774c:	03f10ba3          	sb	t6,55(sp)
   17750:	ca0ff06f          	j	16bf0 <_vfiprintf_r+0x35c>
   17754:	000d8693          	mv	a3,s11
   17758:	fddff06f          	j	17734 <_vfiprintf_r+0xea0>
   1775c:	03f10ba3          	sb	t6,55(sp)
   17760:	f84ff06f          	j	16ee4 <_vfiprintf_r+0x650>
   17764:	03f10ba3          	sb	t6,55(sp)
   17768:	915ff06f          	j	1707c <_vfiprintf_r+0x7e8>
   1776c:	03f10ba3          	sb	t6,55(sp)
   17770:	87dff06f          	j	16fec <_vfiprintf_r+0x758>

00017774 <vfiprintf>:
   17774:	00060693          	mv	a3,a2
   17778:	00058613          	mv	a2,a1
   1777c:	00050593          	mv	a1,a0
   17780:	8081a503          	lw	a0,-2040(gp) # 1d278 <_impure_ptr>
   17784:	910ff06f          	j	16894 <_vfiprintf_r>

00017788 <__sbprintf>:
   17788:	00c5d783          	lhu	a5,12(a1)
   1778c:	0645ae03          	lw	t3,100(a1)
   17790:	00e5d303          	lhu	t1,14(a1)
   17794:	01c5a883          	lw	a7,28(a1)
   17798:	0245a803          	lw	a6,36(a1)
   1779c:	b8010113          	addi	sp,sp,-1152
   177a0:	ffd7f793          	andi	a5,a5,-3
   177a4:	40000713          	li	a4,1024
   177a8:	46812c23          	sw	s0,1144(sp)
   177ac:	00f11a23          	sh	a5,20(sp)
   177b0:	00058413          	mv	s0,a1
   177b4:	07010793          	addi	a5,sp,112
   177b8:	00810593          	addi	a1,sp,8
   177bc:	46912a23          	sw	s1,1140(sp)
   177c0:	47212823          	sw	s2,1136(sp)
   177c4:	46112e23          	sw	ra,1148(sp)
   177c8:	00050913          	mv	s2,a0
   177cc:	07c12623          	sw	t3,108(sp)
   177d0:	00611b23          	sh	t1,22(sp)
   177d4:	03112223          	sw	a7,36(sp)
   177d8:	03012623          	sw	a6,44(sp)
   177dc:	00f12423          	sw	a5,8(sp)
   177e0:	00f12c23          	sw	a5,24(sp)
   177e4:	00e12823          	sw	a4,16(sp)
   177e8:	00e12e23          	sw	a4,28(sp)
   177ec:	02012023          	sw	zero,32(sp)
   177f0:	8a4ff0ef          	jal	16894 <_vfiprintf_r>
   177f4:	00050493          	mv	s1,a0
   177f8:	00054a63          	bltz	a0,1780c <__sbprintf+0x84>
   177fc:	00810593          	addi	a1,sp,8
   17800:	00090513          	mv	a0,s2
   17804:	cb8fc0ef          	jal	13cbc <_fflush_r>
   17808:	02051c63          	bnez	a0,17840 <__sbprintf+0xb8>
   1780c:	01415783          	lhu	a5,20(sp)
   17810:	0407f793          	andi	a5,a5,64
   17814:	00078863          	beqz	a5,17824 <__sbprintf+0x9c>
   17818:	00c45783          	lhu	a5,12(s0)
   1781c:	0407e793          	ori	a5,a5,64
   17820:	00f41623          	sh	a5,12(s0)
   17824:	47c12083          	lw	ra,1148(sp)
   17828:	00048513          	mv	a0,s1
   1782c:	47812403          	lw	s0,1144(sp)
   17830:	47412483          	lw	s1,1140(sp)
   17834:	47012903          	lw	s2,1136(sp)
   17838:	48010113          	addi	sp,sp,1152
   1783c:	00008067          	ret
   17840:	fff00493          	li	s1,-1
   17844:	fc9ff06f          	j	1780c <__sbprintf+0x84>

00017848 <_write_r>:
   17848:	ff010113          	addi	sp,sp,-16
   1784c:	00058793          	mv	a5,a1
   17850:	00812423          	sw	s0,8(sp)
   17854:	00912223          	sw	s1,4(sp)
   17858:	00060593          	mv	a1,a2
   1785c:	00050493          	mv	s1,a0
   17860:	00078513          	mv	a0,a5
   17864:	00068613          	mv	a2,a3
   17868:	00112623          	sw	ra,12(sp)
   1786c:	8e01a023          	sw	zero,-1824(gp) # 1d350 <errno>
   17870:	614010ef          	jal	18e84 <write>
   17874:	fff00793          	li	a5,-1
   17878:	00f50c63          	beq	a0,a5,17890 <_write_r+0x48>
   1787c:	00c12083          	lw	ra,12(sp)
   17880:	00812403          	lw	s0,8(sp)
   17884:	00412483          	lw	s1,4(sp)
   17888:	01010113          	addi	sp,sp,16
   1788c:	00008067          	ret
   17890:	8e01a783          	lw	a5,-1824(gp) # 1d350 <errno>
   17894:	fe0784e3          	beqz	a5,1787c <_write_r+0x34>
   17898:	00c12083          	lw	ra,12(sp)
   1789c:	00f4a023          	sw	a5,0(s1)
   178a0:	00812403          	lw	s0,8(sp)
   178a4:	00412483          	lw	s1,4(sp)
   178a8:	01010113          	addi	sp,sp,16
   178ac:	00008067          	ret

000178b0 <_calloc_r>:
   178b0:	ff010113          	addi	sp,sp,-16
   178b4:	00058793          	mv	a5,a1
   178b8:	00812423          	sw	s0,8(sp)
   178bc:	00060593          	mv	a1,a2
   178c0:	00050413          	mv	s0,a0
   178c4:	00078513          	mv	a0,a5
   178c8:	00112623          	sw	ra,12(sp)
   178cc:	211020ef          	jal	1a2dc <__mulsi3>
   178d0:	00050593          	mv	a1,a0
   178d4:	00040513          	mv	a0,s0
   178d8:	fa9fc0ef          	jal	14880 <_malloc_r>
   178dc:	00050413          	mv	s0,a0
   178e0:	04050e63          	beqz	a0,1793c <_calloc_r+0x8c>
   178e4:	ffc52603          	lw	a2,-4(a0)
   178e8:	02400713          	li	a4,36
   178ec:	ffc67613          	andi	a2,a2,-4
   178f0:	ffc60613          	addi	a2,a2,-4
   178f4:	04c76e63          	bltu	a4,a2,17950 <_calloc_r+0xa0>
   178f8:	01300693          	li	a3,19
   178fc:	00050793          	mv	a5,a0
   17900:	02c6f863          	bleu	a2,a3,17930 <_calloc_r+0x80>
   17904:	00052023          	sw	zero,0(a0)
   17908:	00052223          	sw	zero,4(a0)
   1790c:	01b00793          	li	a5,27
   17910:	04c7fe63          	bleu	a2,a5,1796c <_calloc_r+0xbc>
   17914:	00052423          	sw	zero,8(a0)
   17918:	00052623          	sw	zero,12(a0)
   1791c:	01050793          	addi	a5,a0,16
   17920:	00e61863          	bne	a2,a4,17930 <_calloc_r+0x80>
   17924:	00052823          	sw	zero,16(a0)
   17928:	01850793          	addi	a5,a0,24
   1792c:	00052a23          	sw	zero,20(a0)
   17930:	0007a023          	sw	zero,0(a5)
   17934:	0007a223          	sw	zero,4(a5)
   17938:	0007a423          	sw	zero,8(a5)
   1793c:	00c12083          	lw	ra,12(sp)
   17940:	00040513          	mv	a0,s0
   17944:	00812403          	lw	s0,8(sp)
   17948:	01010113          	addi	sp,sp,16
   1794c:	00008067          	ret
   17950:	00000593          	li	a1,0
   17954:	859fd0ef          	jal	151ac <memset>
   17958:	00c12083          	lw	ra,12(sp)
   1795c:	00040513          	mv	a0,s0
   17960:	00812403          	lw	s0,8(sp)
   17964:	01010113          	addi	sp,sp,16
   17968:	00008067          	ret
   1796c:	00850793          	addi	a5,a0,8
   17970:	fc1ff06f          	j	17930 <_calloc_r+0x80>

00017974 <_close_r>:
   17974:	ff010113          	addi	sp,sp,-16
   17978:	00812423          	sw	s0,8(sp)
   1797c:	00912223          	sw	s1,4(sp)
   17980:	00050493          	mv	s1,a0
   17984:	00058513          	mv	a0,a1
   17988:	00112623          	sw	ra,12(sp)
   1798c:	8e01a023          	sw	zero,-1824(gp) # 1d350 <errno>
   17990:	588010ef          	jal	18f18 <close>
   17994:	fff00793          	li	a5,-1
   17998:	00f50c63          	beq	a0,a5,179b0 <_close_r+0x3c>
   1799c:	00c12083          	lw	ra,12(sp)
   179a0:	00812403          	lw	s0,8(sp)
   179a4:	00412483          	lw	s1,4(sp)
   179a8:	01010113          	addi	sp,sp,16
   179ac:	00008067          	ret
   179b0:	8e01a783          	lw	a5,-1824(gp) # 1d350 <errno>
   179b4:	fe0784e3          	beqz	a5,1799c <_close_r+0x28>
   179b8:	00c12083          	lw	ra,12(sp)
   179bc:	00f4a023          	sw	a5,0(s1)
   179c0:	00812403          	lw	s0,8(sp)
   179c4:	00412483          	lw	s1,4(sp)
   179c8:	01010113          	addi	sp,sp,16
   179cc:	00008067          	ret

000179d0 <_fclose_r>:
   179d0:	ff010113          	addi	sp,sp,-16
   179d4:	00112623          	sw	ra,12(sp)
   179d8:	00812423          	sw	s0,8(sp)
   179dc:	00912223          	sw	s1,4(sp)
   179e0:	01212023          	sw	s2,0(sp)
   179e4:	02058063          	beqz	a1,17a04 <_fclose_r+0x34>
   179e8:	00050493          	mv	s1,a0
   179ec:	00058413          	mv	s0,a1
   179f0:	00050663          	beqz	a0,179fc <_fclose_r+0x2c>
   179f4:	03852783          	lw	a5,56(a0)
   179f8:	0a078063          	beqz	a5,17a98 <_fclose_r+0xc8>
   179fc:	00c41783          	lh	a5,12(s0)
   17a00:	02079263          	bnez	a5,17a24 <_fclose_r+0x54>
   17a04:	00000913          	li	s2,0
   17a08:	00c12083          	lw	ra,12(sp)
   17a0c:	00090513          	mv	a0,s2
   17a10:	00812403          	lw	s0,8(sp)
   17a14:	00412483          	lw	s1,4(sp)
   17a18:	00012903          	lw	s2,0(sp)
   17a1c:	01010113          	addi	sp,sp,16
   17a20:	00008067          	ret
   17a24:	00040593          	mv	a1,s0
   17a28:	00048513          	mv	a0,s1
   17a2c:	814fc0ef          	jal	13a40 <__sflush_r>
   17a30:	02c42783          	lw	a5,44(s0)
   17a34:	00050913          	mv	s2,a0
   17a38:	00078a63          	beqz	a5,17a4c <_fclose_r+0x7c>
   17a3c:	01c42583          	lw	a1,28(s0)
   17a40:	00048513          	mv	a0,s1
   17a44:	000780e7          	jalr	a5
   17a48:	04054c63          	bltz	a0,17aa0 <_fclose_r+0xd0>
   17a4c:	00c45783          	lhu	a5,12(s0)
   17a50:	0807f793          	andi	a5,a5,128
   17a54:	04079a63          	bnez	a5,17aa8 <_fclose_r+0xd8>
   17a58:	03042583          	lw	a1,48(s0)
   17a5c:	00058c63          	beqz	a1,17a74 <_fclose_r+0xa4>
   17a60:	04040793          	addi	a5,s0,64
   17a64:	00f58663          	beq	a1,a5,17a70 <_fclose_r+0xa0>
   17a68:	00048513          	mv	a0,s1
   17a6c:	f64fc0ef          	jal	141d0 <_free_r>
   17a70:	02042823          	sw	zero,48(s0)
   17a74:	04442583          	lw	a1,68(s0)
   17a78:	00058863          	beqz	a1,17a88 <_fclose_r+0xb8>
   17a7c:	00048513          	mv	a0,s1
   17a80:	f50fc0ef          	jal	141d0 <_free_r>
   17a84:	04042223          	sw	zero,68(s0)
   17a88:	e04fc0ef          	jal	1408c <__sfp_lock_acquire>
   17a8c:	00041623          	sh	zero,12(s0)
   17a90:	e00fc0ef          	jal	14090 <__sfp_lock_release>
   17a94:	f75ff06f          	j	17a08 <_fclose_r+0x38>
   17a98:	de4fc0ef          	jal	1407c <__sinit>
   17a9c:	f61ff06f          	j	179fc <_fclose_r+0x2c>
   17aa0:	fff00913          	li	s2,-1
   17aa4:	fa9ff06f          	j	17a4c <_fclose_r+0x7c>
   17aa8:	01042583          	lw	a1,16(s0)
   17aac:	00048513          	mv	a0,s1
   17ab0:	f20fc0ef          	jal	141d0 <_free_r>
   17ab4:	fa5ff06f          	j	17a58 <_fclose_r+0x88>

00017ab8 <fclose>:
   17ab8:	00050593          	mv	a1,a0
   17abc:	8081a503          	lw	a0,-2040(gp) # 1d278 <_impure_ptr>
   17ac0:	f11ff06f          	j	179d0 <_fclose_r>

00017ac4 <__fputwc>:
   17ac4:	fd010113          	addi	sp,sp,-48
   17ac8:	02812423          	sw	s0,40(sp)
   17acc:	01412c23          	sw	s4,24(sp)
   17ad0:	01512a23          	sw	s5,20(sp)
   17ad4:	02112623          	sw	ra,44(sp)
   17ad8:	02912223          	sw	s1,36(sp)
   17adc:	03212023          	sw	s2,32(sp)
   17ae0:	01312e23          	sw	s3,28(sp)
   17ae4:	01612823          	sw	s6,16(sp)
   17ae8:	00050a93          	mv	s5,a0
   17aec:	00058a13          	mv	s4,a1
   17af0:	00060413          	mv	s0,a2
   17af4:	bb1fc0ef          	jal	146a4 <__locale_mb_cur_max>
   17af8:	00100793          	li	a5,1
   17afc:	10f50263          	beq	a0,a5,17c00 <__fputwc+0x13c>
   17b00:	00c10493          	addi	s1,sp,12
   17b04:	05c40693          	addi	a3,s0,92
   17b08:	000a0613          	mv	a2,s4
   17b0c:	00048593          	mv	a1,s1
   17b10:	000a8513          	mv	a0,s5
   17b14:	108010ef          	jal	18c1c <_wcrtomb_r>
   17b18:	fff00793          	li	a5,-1
   17b1c:	00050993          	mv	s3,a0
   17b20:	08f50863          	beq	a0,a5,17bb0 <__fputwc+0xec>
   17b24:	0e050e63          	beqz	a0,17c20 <__fputwc+0x15c>
   17b28:	00c14583          	lbu	a1,12(sp)
   17b2c:	00000913          	li	s2,0
   17b30:	00a00b13          	li	s6,10
   17b34:	0280006f          	j	17b5c <__fputwc+0x98>
   17b38:	00042783          	lw	a5,0(s0)
   17b3c:	00b78023          	sb	a1,0(a5)
   17b40:	00042783          	lw	a5,0(s0)
   17b44:	00178793          	addi	a5,a5,1
   17b48:	00f42023          	sw	a5,0(s0)
   17b4c:	00190913          	addi	s2,s2,1
   17b50:	00148493          	addi	s1,s1,1
   17b54:	0d397663          	bleu	s3,s2,17c20 <__fputwc+0x15c>
   17b58:	0004c583          	lbu	a1,0(s1)
   17b5c:	00842783          	lw	a5,8(s0)
   17b60:	fff78793          	addi	a5,a5,-1
   17b64:	00f42423          	sw	a5,8(s0)
   17b68:	fc07d8e3          	bgez	a5,17b38 <__fputwc+0x74>
   17b6c:	01842703          	lw	a4,24(s0)
   17b70:	06e7ca63          	blt	a5,a4,17be4 <__fputwc+0x120>
   17b74:	00042783          	lw	a5,0(s0)
   17b78:	00b78023          	sb	a1,0(a5)
   17b7c:	00042783          	lw	a5,0(s0)
   17b80:	0007c703          	lbu	a4,0(a5)
   17b84:	00178793          	addi	a5,a5,1
   17b88:	fd6710e3          	bne	a4,s6,17b48 <__fputwc+0x84>
   17b8c:	00040613          	mv	a2,s0
   17b90:	000b0593          	mv	a1,s6
   17b94:	000a8513          	mv	a0,s5
   17b98:	719000ef          	jal	18ab0 <__swbuf_r>
   17b9c:	00150513          	addi	a0,a0,1
   17ba0:	00153513          	seqz	a0,a0
   17ba4:	fa0504e3          	beqz	a0,17b4c <__fputwc+0x88>
   17ba8:	fff00513          	li	a0,-1
   17bac:	0100006f          	j	17bbc <__fputwc+0xf8>
   17bb0:	00c45783          	lhu	a5,12(s0)
   17bb4:	0407e793          	ori	a5,a5,64
   17bb8:	00f41623          	sh	a5,12(s0)
   17bbc:	02c12083          	lw	ra,44(sp)
   17bc0:	02812403          	lw	s0,40(sp)
   17bc4:	02412483          	lw	s1,36(sp)
   17bc8:	02012903          	lw	s2,32(sp)
   17bcc:	01c12983          	lw	s3,28(sp)
   17bd0:	01812a03          	lw	s4,24(sp)
   17bd4:	01412a83          	lw	s5,20(sp)
   17bd8:	01012b03          	lw	s6,16(sp)
   17bdc:	03010113          	addi	sp,sp,48
   17be0:	00008067          	ret
   17be4:	00040613          	mv	a2,s0
   17be8:	000a8513          	mv	a0,s5
   17bec:	6c5000ef          	jal	18ab0 <__swbuf_r>
   17bf0:	00150513          	addi	a0,a0,1
   17bf4:	00153513          	seqz	a0,a0
   17bf8:	f4050ae3          	beqz	a0,17b4c <__fputwc+0x88>
   17bfc:	fadff06f          	j	17ba8 <__fputwc+0xe4>
   17c00:	fffa0793          	addi	a5,s4,-1
   17c04:	0fe00713          	li	a4,254
   17c08:	eef76ce3          	bltu	a4,a5,17b00 <__fputwc+0x3c>
   17c0c:	0ffa7593          	andi	a1,s4,255
   17c10:	00b10623          	sb	a1,12(sp)
   17c14:	00050993          	mv	s3,a0
   17c18:	00c10493          	addi	s1,sp,12
   17c1c:	f11ff06f          	j	17b2c <__fputwc+0x68>
   17c20:	000a0513          	mv	a0,s4
   17c24:	f99ff06f          	j	17bbc <__fputwc+0xf8>

00017c28 <_fputwc_r>:
   17c28:	00c61783          	lh	a5,12(a2)
   17c2c:	000026b7          	lui	a3,0x2
   17c30:	01279713          	slli	a4,a5,0x12
   17c34:	00074c63          	bltz	a4,17c4c <_fputwc_r+0x24>
   17c38:	06462703          	lw	a4,100(a2)
   17c3c:	00d7e7b3          	or	a5,a5,a3
   17c40:	00f61623          	sh	a5,12(a2)
   17c44:	00d767b3          	or	a5,a4,a3
   17c48:	06f62223          	sw	a5,100(a2)
   17c4c:	e79ff06f          	j	17ac4 <__fputwc>

00017c50 <fputwc>:
   17c50:	fe010113          	addi	sp,sp,-32
   17c54:	00812c23          	sw	s0,24(sp)
   17c58:	8081a403          	lw	s0,-2040(gp) # 1d278 <_impure_ptr>
   17c5c:	00912a23          	sw	s1,20(sp)
   17c60:	00112e23          	sw	ra,28(sp)
   17c64:	00050493          	mv	s1,a0
   17c68:	00058613          	mv	a2,a1
   17c6c:	00040663          	beqz	s0,17c78 <fputwc+0x28>
   17c70:	03842783          	lw	a5,56(s0)
   17c74:	04078263          	beqz	a5,17cb8 <fputwc+0x68>
   17c78:	00c61783          	lh	a5,12(a2)
   17c7c:	000026b7          	lui	a3,0x2
   17c80:	01279713          	slli	a4,a5,0x12
   17c84:	00074c63          	bltz	a4,17c9c <fputwc+0x4c>
   17c88:	06462703          	lw	a4,100(a2)
   17c8c:	00d7e7b3          	or	a5,a5,a3
   17c90:	00f61623          	sh	a5,12(a2)
   17c94:	00d767b3          	or	a5,a4,a3
   17c98:	06f62223          	sw	a5,100(a2)
   17c9c:	00048593          	mv	a1,s1
   17ca0:	00040513          	mv	a0,s0
   17ca4:	01c12083          	lw	ra,28(sp)
   17ca8:	01812403          	lw	s0,24(sp)
   17cac:	01412483          	lw	s1,20(sp)
   17cb0:	02010113          	addi	sp,sp,32
   17cb4:	e11ff06f          	j	17ac4 <__fputwc>
   17cb8:	00040513          	mv	a0,s0
   17cbc:	00b12623          	sw	a1,12(sp)
   17cc0:	bbcfc0ef          	jal	1407c <__sinit>
   17cc4:	00c12603          	lw	a2,12(sp)
   17cc8:	fb1ff06f          	j	17c78 <fputwc+0x28>

00017ccc <_fstat_r>:
   17ccc:	ff010113          	addi	sp,sp,-16
   17cd0:	00058793          	mv	a5,a1
   17cd4:	00812423          	sw	s0,8(sp)
   17cd8:	00912223          	sw	s1,4(sp)
   17cdc:	00050493          	mv	s1,a0
   17ce0:	00060593          	mv	a1,a2
   17ce4:	00078513          	mv	a0,a5
   17ce8:	00112623          	sw	ra,12(sp)
   17cec:	8e01a023          	sw	zero,-1824(gp) # 1d350 <errno>
   17cf0:	1a8010ef          	jal	18e98 <fstat>
   17cf4:	fff00793          	li	a5,-1
   17cf8:	00f50c63          	beq	a0,a5,17d10 <_fstat_r+0x44>
   17cfc:	00c12083          	lw	ra,12(sp)
   17d00:	00812403          	lw	s0,8(sp)
   17d04:	00412483          	lw	s1,4(sp)
   17d08:	01010113          	addi	sp,sp,16
   17d0c:	00008067          	ret
   17d10:	8e01a783          	lw	a5,-1824(gp) # 1d350 <errno>
   17d14:	fe0784e3          	beqz	a5,17cfc <_fstat_r+0x30>
   17d18:	00c12083          	lw	ra,12(sp)
   17d1c:	00f4a023          	sw	a5,0(s1)
   17d20:	00812403          	lw	s0,8(sp)
   17d24:	00412483          	lw	s1,4(sp)
   17d28:	01010113          	addi	sp,sp,16
   17d2c:	00008067          	ret

00017d30 <__sfvwrite_r>:
   17d30:	00862783          	lw	a5,8(a2)
   17d34:	1c078263          	beqz	a5,17ef8 <__sfvwrite_r+0x1c8>
   17d38:	00c5d703          	lhu	a4,12(a1)
   17d3c:	fc010113          	addi	sp,sp,-64
   17d40:	02812c23          	sw	s0,56(sp)
   17d44:	03412423          	sw	s4,40(sp)
   17d48:	03612023          	sw	s6,32(sp)
   17d4c:	02112e23          	sw	ra,60(sp)
   17d50:	02912a23          	sw	s1,52(sp)
   17d54:	03212823          	sw	s2,48(sp)
   17d58:	03312623          	sw	s3,44(sp)
   17d5c:	03512223          	sw	s5,36(sp)
   17d60:	01712e23          	sw	s7,28(sp)
   17d64:	01812c23          	sw	s8,24(sp)
   17d68:	01912a23          	sw	s9,20(sp)
   17d6c:	01a12823          	sw	s10,16(sp)
   17d70:	01b12623          	sw	s11,12(sp)
   17d74:	00877793          	andi	a5,a4,8
   17d78:	00058413          	mv	s0,a1
   17d7c:	00050b13          	mv	s6,a0
   17d80:	00060a13          	mv	s4,a2
   17d84:	0a078663          	beqz	a5,17e30 <__sfvwrite_r+0x100>
   17d88:	0105a783          	lw	a5,16(a1)
   17d8c:	0a078263          	beqz	a5,17e30 <__sfvwrite_r+0x100>
   17d90:	00277793          	andi	a5,a4,2
   17d94:	000a2483          	lw	s1,0(s4)
   17d98:	0a078e63          	beqz	a5,17e54 <__sfvwrite_r+0x124>
   17d9c:	80000ab7          	lui	s5,0x80000
   17da0:	00000993          	li	s3,0
   17da4:	00000913          	li	s2,0
   17da8:	c00aca93          	xori	s5,s5,-1024
   17dac:	00098613          	mv	a2,s3
   17db0:	000b0513          	mv	a0,s6
   17db4:	12090a63          	beqz	s2,17ee8 <__sfvwrite_r+0x1b8>
   17db8:	00090693          	mv	a3,s2
   17dbc:	012af463          	bleu	s2,s5,17dc4 <__sfvwrite_r+0x94>
   17dc0:	000a8693          	mv	a3,s5
   17dc4:	02442783          	lw	a5,36(s0)
   17dc8:	01c42583          	lw	a1,28(s0)
   17dcc:	000780e7          	jalr	a5
   17dd0:	14a05263          	blez	a0,17f14 <__sfvwrite_r+0x1e4>
   17dd4:	008a2783          	lw	a5,8(s4)
   17dd8:	00a989b3          	add	s3,s3,a0
   17ddc:	40a90933          	sub	s2,s2,a0
   17de0:	40a78533          	sub	a0,a5,a0
   17de4:	00aa2423          	sw	a0,8(s4)
   17de8:	fc0512e3          	bnez	a0,17dac <__sfvwrite_r+0x7c>
   17dec:	00000793          	li	a5,0
   17df0:	03c12083          	lw	ra,60(sp)
   17df4:	00078513          	mv	a0,a5
   17df8:	03812403          	lw	s0,56(sp)
   17dfc:	03412483          	lw	s1,52(sp)
   17e00:	03012903          	lw	s2,48(sp)
   17e04:	02c12983          	lw	s3,44(sp)
   17e08:	02812a03          	lw	s4,40(sp)
   17e0c:	02412a83          	lw	s5,36(sp)
   17e10:	02012b03          	lw	s6,32(sp)
   17e14:	01c12b83          	lw	s7,28(sp)
   17e18:	01812c03          	lw	s8,24(sp)
   17e1c:	01412c83          	lw	s9,20(sp)
   17e20:	01012d03          	lw	s10,16(sp)
   17e24:	00c12d83          	lw	s11,12(sp)
   17e28:	04010113          	addi	sp,sp,64
   17e2c:	00008067          	ret
   17e30:	00040593          	mv	a1,s0
   17e34:	000b0513          	mv	a0,s6
   17e38:	938fa0ef          	jal	11f70 <__swsetup_r>
   17e3c:	fff00793          	li	a5,-1
   17e40:	fa0518e3          	bnez	a0,17df0 <__sfvwrite_r+0xc0>
   17e44:	00c45703          	lhu	a4,12(s0)
   17e48:	000a2483          	lw	s1,0(s4)
   17e4c:	00277793          	andi	a5,a4,2
   17e50:	f40796e3          	bnez	a5,17d9c <__sfvwrite_r+0x6c>
   17e54:	00177793          	andi	a5,a4,1
   17e58:	0c079863          	bnez	a5,17f28 <__sfvwrite_r+0x1f8>
   17e5c:	80000bb7          	lui	s7,0x80000
   17e60:	00000c13          	li	s8,0
   17e64:	00000913          	li	s2,0
   17e68:	fffbcb93          	not	s7,s7
   17e6c:	06090663          	beqz	s2,17ed8 <__sfvwrite_r+0x1a8>
   17e70:	20077793          	andi	a5,a4,512
   17e74:	00842983          	lw	s3,8(s0)
   17e78:	1a078263          	beqz	a5,1801c <__sfvwrite_r+0x2ec>
   17e7c:	27396663          	bltu	s2,s3,180e8 <__sfvwrite_r+0x3b8>
   17e80:	48077793          	andi	a5,a4,1152
   17e84:	26079c63          	bnez	a5,180fc <__sfvwrite_r+0x3cc>
   17e88:	00042503          	lw	a0,0(s0)
   17e8c:	00090a93          	mv	s5,s2
   17e90:	00098c93          	mv	s9,s3
   17e94:	000c8613          	mv	a2,s9
   17e98:	000c0593          	mv	a1,s8
   17e9c:	408000ef          	jal	182a4 <memmove>
   17ea0:	00842783          	lw	a5,8(s0)
   17ea4:	00042603          	lw	a2,0(s0)
   17ea8:	413789b3          	sub	s3,a5,s3
   17eac:	01960633          	add	a2,a2,s9
   17eb0:	01342423          	sw	s3,8(s0)
   17eb4:	00c42023          	sw	a2,0(s0)
   17eb8:	008a2783          	lw	a5,8(s4)
   17ebc:	015c0c33          	add	s8,s8,s5
   17ec0:	41590933          	sub	s2,s2,s5
   17ec4:	415789b3          	sub	s3,a5,s5
   17ec8:	013a2423          	sw	s3,8(s4)
   17ecc:	f20980e3          	beqz	s3,17dec <__sfvwrite_r+0xbc>
   17ed0:	00c45703          	lhu	a4,12(s0)
   17ed4:	f8091ee3          	bnez	s2,17e70 <__sfvwrite_r+0x140>
   17ed8:	0004ac03          	lw	s8,0(s1)
   17edc:	0044a903          	lw	s2,4(s1)
   17ee0:	00848493          	addi	s1,s1,8
   17ee4:	f89ff06f          	j	17e6c <__sfvwrite_r+0x13c>
   17ee8:	0004a983          	lw	s3,0(s1)
   17eec:	0044a903          	lw	s2,4(s1)
   17ef0:	00848493          	addi	s1,s1,8
   17ef4:	eb9ff06f          	j	17dac <__sfvwrite_r+0x7c>
   17ef8:	00000793          	li	a5,0
   17efc:	00078513          	mv	a0,a5
   17f00:	00008067          	ret
   17f04:	00040593          	mv	a1,s0
   17f08:	000b0513          	mv	a0,s6
   17f0c:	db1fb0ef          	jal	13cbc <_fflush_r>
   17f10:	08050863          	beqz	a0,17fa0 <__sfvwrite_r+0x270>
   17f14:	00c41783          	lh	a5,12(s0)
   17f18:	0407e793          	ori	a5,a5,64
   17f1c:	00f41623          	sh	a5,12(s0)
   17f20:	fff00793          	li	a5,-1
   17f24:	ecdff06f          	j	17df0 <__sfvwrite_r+0xc0>
   17f28:	00000913          	li	s2,0
   17f2c:	00000993          	li	s3,0
   17f30:	00000513          	li	a0,0
   17f34:	00000d13          	li	s10,0
   17f38:	00a00c93          	li	s9,10
   17f3c:	00100c13          	li	s8,1
   17f40:	06090e63          	beqz	s2,17fbc <__sfvwrite_r+0x28c>
   17f44:	08050463          	beqz	a0,17fcc <__sfvwrite_r+0x29c>
   17f48:	00098b93          	mv	s7,s3
   17f4c:	01397463          	bleu	s3,s2,17f54 <__sfvwrite_r+0x224>
   17f50:	00090b93          	mv	s7,s2
   17f54:	00042503          	lw	a0,0(s0)
   17f58:	01042783          	lw	a5,16(s0)
   17f5c:	000b8a93          	mv	s5,s7
   17f60:	01442683          	lw	a3,20(s0)
   17f64:	00a7f863          	bleu	a0,a5,17f74 <__sfvwrite_r+0x244>
   17f68:	00842d83          	lw	s11,8(s0)
   17f6c:	01b68db3          	add	s11,a3,s11
   17f70:	077dce63          	blt	s11,s7,17fec <__sfvwrite_r+0x2bc>
   17f74:	14dbc663          	blt	s7,a3,180c0 <__sfvwrite_r+0x390>
   17f78:	02442783          	lw	a5,36(s0)
   17f7c:	01c42583          	lw	a1,28(s0)
   17f80:	000d0613          	mv	a2,s10
   17f84:	000b0513          	mv	a0,s6
   17f88:	000780e7          	jalr	a5
   17f8c:	00050a93          	mv	s5,a0
   17f90:	f8a052e3          	blez	a0,17f14 <__sfvwrite_r+0x1e4>
   17f94:	415989b3          	sub	s3,s3,s5
   17f98:	000c0513          	mv	a0,s8
   17f9c:	f60984e3          	beqz	s3,17f04 <__sfvwrite_r+0x1d4>
   17fa0:	008a2783          	lw	a5,8(s4)
   17fa4:	015d0d33          	add	s10,s10,s5
   17fa8:	41590933          	sub	s2,s2,s5
   17fac:	41578ab3          	sub	s5,a5,s5
   17fb0:	015a2423          	sw	s5,8(s4)
   17fb4:	e20a8ce3          	beqz	s5,17dec <__sfvwrite_r+0xbc>
   17fb8:	f80916e3          	bnez	s2,17f44 <__sfvwrite_r+0x214>
   17fbc:	0044a903          	lw	s2,4(s1)
   17fc0:	0004ad03          	lw	s10,0(s1)
   17fc4:	00848493          	addi	s1,s1,8
   17fc8:	fe090ae3          	beqz	s2,17fbc <__sfvwrite_r+0x28c>
   17fcc:	00090613          	mv	a2,s2
   17fd0:	000c8593          	mv	a1,s9
   17fd4:	000d0513          	mv	a0,s10
   17fd8:	fddfc0ef          	jal	14fb4 <memchr>
   17fdc:	1e050663          	beqz	a0,181c8 <__sfvwrite_r+0x498>
   17fe0:	00150513          	addi	a0,a0,1
   17fe4:	41a509b3          	sub	s3,a0,s10
   17fe8:	f61ff06f          	j	17f48 <__sfvwrite_r+0x218>
   17fec:	000d0593          	mv	a1,s10
   17ff0:	000d8613          	mv	a2,s11
   17ff4:	2b0000ef          	jal	182a4 <memmove>
   17ff8:	00042783          	lw	a5,0(s0)
   17ffc:	00040593          	mv	a1,s0
   18000:	000b0513          	mv	a0,s6
   18004:	01b787b3          	add	a5,a5,s11
   18008:	00f42023          	sw	a5,0(s0)
   1800c:	cb1fb0ef          	jal	13cbc <_fflush_r>
   18010:	f00512e3          	bnez	a0,17f14 <__sfvwrite_r+0x1e4>
   18014:	000d8a93          	mv	s5,s11
   18018:	f7dff06f          	j	17f94 <__sfvwrite_r+0x264>
   1801c:	00042503          	lw	a0,0(s0)
   18020:	01042783          	lw	a5,16(s0)
   18024:	00a7e663          	bltu	a5,a0,18030 <__sfvwrite_r+0x300>
   18028:	01442a83          	lw	s5,20(s0)
   1802c:	05597a63          	bleu	s5,s2,18080 <__sfvwrite_r+0x350>
   18030:	01397463          	bleu	s3,s2,18038 <__sfvwrite_r+0x308>
   18034:	00090993          	mv	s3,s2
   18038:	00098613          	mv	a2,s3
   1803c:	000c0593          	mv	a1,s8
   18040:	264000ef          	jal	182a4 <memmove>
   18044:	00842783          	lw	a5,8(s0)
   18048:	00042703          	lw	a4,0(s0)
   1804c:	413787b3          	sub	a5,a5,s3
   18050:	01370733          	add	a4,a4,s3
   18054:	00f42423          	sw	a5,8(s0)
   18058:	00e42023          	sw	a4,0(s0)
   1805c:	00078663          	beqz	a5,18068 <__sfvwrite_r+0x338>
   18060:	00098a93          	mv	s5,s3
   18064:	e55ff06f          	j	17eb8 <__sfvwrite_r+0x188>
   18068:	00040593          	mv	a1,s0
   1806c:	000b0513          	mv	a0,s6
   18070:	c4dfb0ef          	jal	13cbc <_fflush_r>
   18074:	ea0510e3          	bnez	a0,17f14 <__sfvwrite_r+0x1e4>
   18078:	00098a93          	mv	s5,s3
   1807c:	e3dff06f          	j	17eb8 <__sfvwrite_r+0x188>
   18080:	00090513          	mv	a0,s2
   18084:	012bf463          	bleu	s2,s7,1808c <__sfvwrite_r+0x35c>
   18088:	000b8513          	mv	a0,s7
   1808c:	000a8593          	mv	a1,s5
   18090:	2f8020ef          	jal	1a388 <__divsi3>
   18094:	000a8593          	mv	a1,s5
   18098:	244020ef          	jal	1a2dc <__mulsi3>
   1809c:	01c42583          	lw	a1,28(s0)
   180a0:	02442783          	lw	a5,36(s0)
   180a4:	00050693          	mv	a3,a0
   180a8:	000c0613          	mv	a2,s8
   180ac:	000b0513          	mv	a0,s6
   180b0:	000780e7          	jalr	a5
   180b4:	e6a050e3          	blez	a0,17f14 <__sfvwrite_r+0x1e4>
   180b8:	00050a93          	mv	s5,a0
   180bc:	dfdff06f          	j	17eb8 <__sfvwrite_r+0x188>
   180c0:	000b8613          	mv	a2,s7
   180c4:	000d0593          	mv	a1,s10
   180c8:	1dc000ef          	jal	182a4 <memmove>
   180cc:	00842703          	lw	a4,8(s0)
   180d0:	00042783          	lw	a5,0(s0)
   180d4:	41770733          	sub	a4,a4,s7
   180d8:	01778bb3          	add	s7,a5,s7
   180dc:	00e42423          	sw	a4,8(s0)
   180e0:	01742023          	sw	s7,0(s0)
   180e4:	eb1ff06f          	j	17f94 <__sfvwrite_r+0x264>
   180e8:	00042503          	lw	a0,0(s0)
   180ec:	00090993          	mv	s3,s2
   180f0:	00090a93          	mv	s5,s2
   180f4:	00090c93          	mv	s9,s2
   180f8:	d9dff06f          	j	17e94 <__sfvwrite_r+0x164>
   180fc:	01442783          	lw	a5,20(s0)
   18100:	01042583          	lw	a1,16(s0)
   18104:	00042a83          	lw	s5,0(s0)
   18108:	00179993          	slli	s3,a5,0x1
   1810c:	00f987b3          	add	a5,s3,a5
   18110:	01f7d993          	srli	s3,a5,0x1f
   18114:	40ba8ab3          	sub	s5,s5,a1
   18118:	00f989b3          	add	s3,s3,a5
   1811c:	001a8793          	addi	a5,s5,1 # 80000001 <_gp+0x7ffe2591>
   18120:	4019d993          	srai	s3,s3,0x1
   18124:	012787b3          	add	a5,a5,s2
   18128:	00098613          	mv	a2,s3
   1812c:	00f9f663          	bleu	a5,s3,18138 <__sfvwrite_r+0x408>
   18130:	00078993          	mv	s3,a5
   18134:	00078613          	mv	a2,a5
   18138:	40077713          	andi	a4,a4,1024
   1813c:	04070e63          	beqz	a4,18198 <__sfvwrite_r+0x468>
   18140:	00060593          	mv	a1,a2
   18144:	000b0513          	mv	a0,s6
   18148:	f38fc0ef          	jal	14880 <_malloc_r>
   1814c:	00050c93          	mv	s9,a0
   18150:	08050063          	beqz	a0,181d0 <__sfvwrite_r+0x4a0>
   18154:	01042583          	lw	a1,16(s0)
   18158:	000a8613          	mv	a2,s5
   1815c:	f35fc0ef          	jal	15090 <memcpy>
   18160:	00c45783          	lhu	a5,12(s0)
   18164:	b7f7f793          	andi	a5,a5,-1153
   18168:	0807e793          	ori	a5,a5,128
   1816c:	00f41623          	sh	a5,12(s0)
   18170:	015c8533          	add	a0,s9,s5
   18174:	41598ab3          	sub	s5,s3,s5
   18178:	01942823          	sw	s9,16(s0)
   1817c:	01342a23          	sw	s3,20(s0)
   18180:	01542423          	sw	s5,8(s0)
   18184:	00a42023          	sw	a0,0(s0)
   18188:	00090993          	mv	s3,s2
   1818c:	00090a93          	mv	s5,s2
   18190:	00090c93          	mv	s9,s2
   18194:	d01ff06f          	j	17e94 <__sfvwrite_r+0x164>
   18198:	000b0513          	mv	a0,s6
   1819c:	28c000ef          	jal	18428 <_realloc_r>
   181a0:	00050c93          	mv	s9,a0
   181a4:	fc0516e3          	bnez	a0,18170 <__sfvwrite_r+0x440>
   181a8:	01042583          	lw	a1,16(s0)
   181ac:	000b0513          	mv	a0,s6
   181b0:	820fc0ef          	jal	141d0 <_free_r>
   181b4:	00c41783          	lh	a5,12(s0)
   181b8:	00c00713          	li	a4,12
   181bc:	00eb2023          	sw	a4,0(s6)
   181c0:	f7f7f793          	andi	a5,a5,-129
   181c4:	d55ff06f          	j	17f18 <__sfvwrite_r+0x1e8>
   181c8:	00190993          	addi	s3,s2,1
   181cc:	d7dff06f          	j	17f48 <__sfvwrite_r+0x218>
   181d0:	00c00793          	li	a5,12
   181d4:	00fb2023          	sw	a5,0(s6)
   181d8:	00c41783          	lh	a5,12(s0)
   181dc:	d3dff06f          	j	17f18 <__sfvwrite_r+0x1e8>

000181e0 <_isatty_r>:
   181e0:	ff010113          	addi	sp,sp,-16
   181e4:	00812423          	sw	s0,8(sp)
   181e8:	00912223          	sw	s1,4(sp)
   181ec:	00050493          	mv	s1,a0
   181f0:	00058513          	mv	a0,a1
   181f4:	00112623          	sw	ra,12(sp)
   181f8:	8e01a023          	sw	zero,-1824(gp) # 1d350 <errno>
   181fc:	605000ef          	jal	19000 <isatty>
   18200:	fff00793          	li	a5,-1
   18204:	00f50c63          	beq	a0,a5,1821c <_isatty_r+0x3c>
   18208:	00c12083          	lw	ra,12(sp)
   1820c:	00812403          	lw	s0,8(sp)
   18210:	00412483          	lw	s1,4(sp)
   18214:	01010113          	addi	sp,sp,16
   18218:	00008067          	ret
   1821c:	8e01a783          	lw	a5,-1824(gp) # 1d350 <errno>
   18220:	fe0784e3          	beqz	a5,18208 <_isatty_r+0x28>
   18224:	00c12083          	lw	ra,12(sp)
   18228:	00f4a023          	sw	a5,0(s1)
   1822c:	00812403          	lw	s0,8(sp)
   18230:	00412483          	lw	s1,4(sp)
   18234:	01010113          	addi	sp,sp,16
   18238:	00008067          	ret

0001823c <_lseek_r>:
   1823c:	ff010113          	addi	sp,sp,-16
   18240:	00058793          	mv	a5,a1
   18244:	00812423          	sw	s0,8(sp)
   18248:	00912223          	sw	s1,4(sp)
   1824c:	00060593          	mv	a1,a2
   18250:	00050493          	mv	s1,a0
   18254:	00078513          	mv	a0,a5
   18258:	00068613          	mv	a2,a3
   1825c:	00112623          	sw	ra,12(sp)
   18260:	8e01a023          	sw	zero,-1824(gp) # 1d350 <errno>
   18264:	3f9000ef          	jal	18e5c <lseek>
   18268:	fff00793          	li	a5,-1
   1826c:	00f50c63          	beq	a0,a5,18284 <_lseek_r+0x48>
   18270:	00c12083          	lw	ra,12(sp)
   18274:	00812403          	lw	s0,8(sp)
   18278:	00412483          	lw	s1,4(sp)
   1827c:	01010113          	addi	sp,sp,16
   18280:	00008067          	ret
   18284:	8e01a783          	lw	a5,-1824(gp) # 1d350 <errno>
   18288:	fe0784e3          	beqz	a5,18270 <_lseek_r+0x34>
   1828c:	00c12083          	lw	ra,12(sp)
   18290:	00f4a023          	sw	a5,0(s1)
   18294:	00812403          	lw	s0,8(sp)
   18298:	00412483          	lw	s1,4(sp)
   1829c:	01010113          	addi	sp,sp,16
   182a0:	00008067          	ret

000182a4 <memmove>:
   182a4:	02a5f663          	bleu	a0,a1,182d0 <memmove+0x2c>
   182a8:	00c587b3          	add	a5,a1,a2
   182ac:	02f57263          	bleu	a5,a0,182d0 <memmove+0x2c>
   182b0:	00c50733          	add	a4,a0,a2
   182b4:	04060263          	beqz	a2,182f8 <memmove+0x54>
   182b8:	fff78793          	addi	a5,a5,-1
   182bc:	0007c683          	lbu	a3,0(a5)
   182c0:	fff70713          	addi	a4,a4,-1
   182c4:	00d70023          	sb	a3,0(a4)
   182c8:	fef598e3          	bne	a1,a5,182b8 <memmove+0x14>
   182cc:	00008067          	ret
   182d0:	00f00893          	li	a7,15
   182d4:	00050793          	mv	a5,a0
   182d8:	02c8e263          	bltu	a7,a2,182fc <memmove+0x58>
   182dc:	0c060a63          	beqz	a2,183b0 <memmove+0x10c>
   182e0:	00c58633          	add	a2,a1,a2
   182e4:	00158593          	addi	a1,a1,1
   182e8:	fff5c703          	lbu	a4,-1(a1)
   182ec:	00178793          	addi	a5,a5,1
   182f0:	fee78fa3          	sb	a4,-1(a5)
   182f4:	feb618e3          	bne	a2,a1,182e4 <memmove+0x40>
   182f8:	00008067          	ret
   182fc:	00a5e7b3          	or	a5,a1,a0
   18300:	0037f793          	andi	a5,a5,3
   18304:	0a079263          	bnez	a5,183a8 <memmove+0x104>
   18308:	00058713          	mv	a4,a1
   1830c:	00050793          	mv	a5,a0
   18310:	00060693          	mv	a3,a2
   18314:	00072803          	lw	a6,0(a4)
   18318:	01078793          	addi	a5,a5,16
   1831c:	01070713          	addi	a4,a4,16
   18320:	ff07a823          	sw	a6,-16(a5)
   18324:	ff472803          	lw	a6,-12(a4)
   18328:	ff068693          	addi	a3,a3,-16 # 1ff0 <_ftext-0xe010>
   1832c:	ff07aa23          	sw	a6,-12(a5)
   18330:	ff872803          	lw	a6,-8(a4)
   18334:	ff07ac23          	sw	a6,-8(a5)
   18338:	ffc72803          	lw	a6,-4(a4)
   1833c:	ff07ae23          	sw	a6,-4(a5)
   18340:	fcd8eae3          	bltu	a7,a3,18314 <memmove+0x70>
   18344:	ff060713          	addi	a4,a2,-16
   18348:	ff077713          	andi	a4,a4,-16
   1834c:	01070713          	addi	a4,a4,16
   18350:	00f67e13          	andi	t3,a2,15
   18354:	00300313          	li	t1,3
   18358:	00e507b3          	add	a5,a0,a4
   1835c:	00e585b3          	add	a1,a1,a4
   18360:	05c37a63          	bleu	t3,t1,183b4 <memmove+0x110>
   18364:	00058813          	mv	a6,a1
   18368:	00078693          	mv	a3,a5
   1836c:	000e0713          	mv	a4,t3
   18370:	00480813          	addi	a6,a6,4
   18374:	ffc82883          	lw	a7,-4(a6)
   18378:	00468693          	addi	a3,a3,4
   1837c:	ffc70713          	addi	a4,a4,-4
   18380:	ff16ae23          	sw	a7,-4(a3)
   18384:	fee366e3          	bltu	t1,a4,18370 <memmove+0xcc>
   18388:	ffce0713          	addi	a4,t3,-4
   1838c:	ffc77713          	andi	a4,a4,-4
   18390:	00470713          	addi	a4,a4,4
   18394:	00367613          	andi	a2,a2,3
   18398:	00e585b3          	add	a1,a1,a4
   1839c:	00e787b3          	add	a5,a5,a4
   183a0:	f40610e3          	bnez	a2,182e0 <memmove+0x3c>
   183a4:	00c0006f          	j	183b0 <memmove+0x10c>
   183a8:	00050793          	mv	a5,a0
   183ac:	f35ff06f          	j	182e0 <memmove+0x3c>
   183b0:	00008067          	ret
   183b4:	000e0613          	mv	a2,t3
   183b8:	f20614e3          	bnez	a2,182e0 <memmove+0x3c>
   183bc:	ff5ff06f          	j	183b0 <memmove+0x10c>

000183c0 <_read_r>:
   183c0:	ff010113          	addi	sp,sp,-16
   183c4:	00058793          	mv	a5,a1
   183c8:	00812423          	sw	s0,8(sp)
   183cc:	00912223          	sw	s1,4(sp)
   183d0:	00060593          	mv	a1,a2
   183d4:	00050493          	mv	s1,a0
   183d8:	00078513          	mv	a0,a5
   183dc:	00068613          	mv	a2,a3
   183e0:	00112623          	sw	ra,12(sp)
   183e4:	8e01a023          	sw	zero,-1824(gp) # 1d350 <errno>
   183e8:	289000ef          	jal	18e70 <read>
   183ec:	fff00793          	li	a5,-1
   183f0:	00f50c63          	beq	a0,a5,18408 <_read_r+0x48>
   183f4:	00c12083          	lw	ra,12(sp)
   183f8:	00812403          	lw	s0,8(sp)
   183fc:	00412483          	lw	s1,4(sp)
   18400:	01010113          	addi	sp,sp,16
   18404:	00008067          	ret
   18408:	8e01a783          	lw	a5,-1824(gp) # 1d350 <errno>
   1840c:	fe0784e3          	beqz	a5,183f4 <_read_r+0x34>
   18410:	00c12083          	lw	ra,12(sp)
   18414:	00f4a023          	sw	a5,0(s1)
   18418:	00812403          	lw	s0,8(sp)
   1841c:	00412483          	lw	s1,4(sp)
   18420:	01010113          	addi	sp,sp,16
   18424:	00008067          	ret

00018428 <_realloc_r>:
   18428:	1e058c63          	beqz	a1,18620 <_realloc_r+0x1f8>
   1842c:	fd010113          	addi	sp,sp,-48
   18430:	02812423          	sw	s0,40(sp)
   18434:	02912223          	sw	s1,36(sp)
   18438:	00058413          	mv	s0,a1
   1843c:	03212023          	sw	s2,32(sp)
   18440:	01312e23          	sw	s3,28(sp)
   18444:	01412c23          	sw	s4,24(sp)
   18448:	01512a23          	sw	s5,20(sp)
   1844c:	00060493          	mv	s1,a2
   18450:	02112623          	sw	ra,44(sp)
   18454:	01612823          	sw	s6,16(sp)
   18458:	01712623          	sw	s7,12(sp)
   1845c:	01812423          	sw	s8,8(sp)
   18460:	00050a13          	mv	s4,a0
   18464:	e25fc0ef          	jal	15288 <__malloc_lock>
   18468:	ffc42783          	lw	a5,-4(s0)
   1846c:	00b48993          	addi	s3,s1,11
   18470:	01600713          	li	a4,22
   18474:	ff840a93          	addi	s5,s0,-8
   18478:	ffc7f913          	andi	s2,a5,-4
   1847c:	0b377c63          	bleu	s3,a4,18534 <_realloc_r+0x10c>
   18480:	ff89f993          	andi	s3,s3,-8
   18484:	00098713          	mv	a4,s3
   18488:	1409c663          	bltz	s3,185d4 <_realloc_r+0x1ac>
   1848c:	1499e463          	bltu	s3,s1,185d4 <_realloc_r+0x1ac>
   18490:	0ae95863          	ble	a4,s2,18540 <_realloc_r+0x118>
   18494:	0001db37          	lui	s6,0x1d
   18498:	e60b0b13          	addi	s6,s6,-416 # 1ce60 <__malloc_av_>
   1849c:	008b2603          	lw	a2,8(s6)
   184a0:	012a86b3          	add	a3,s5,s2
   184a4:	2cc68263          	beq	a3,a2,18768 <_realloc_r+0x340>
   184a8:	0046a603          	lw	a2,4(a3)
   184ac:	ffe67593          	andi	a1,a2,-2
   184b0:	00b685b3          	add	a1,a3,a1
   184b4:	0045a583          	lw	a1,4(a1)
   184b8:	0015f593          	andi	a1,a1,1
   184bc:	0e058863          	beqz	a1,185ac <_realloc_r+0x184>
   184c0:	0017f793          	andi	a5,a5,1
   184c4:	20078663          	beqz	a5,186d0 <_realloc_r+0x2a8>
   184c8:	00048593          	mv	a1,s1
   184cc:	000a0513          	mv	a0,s4
   184d0:	bb0fc0ef          	jal	14880 <_malloc_r>
   184d4:	00050493          	mv	s1,a0
   184d8:	08050c63          	beqz	a0,18570 <_realloc_r+0x148>
   184dc:	ffc42783          	lw	a5,-4(s0)
   184e0:	ff850713          	addi	a4,a0,-8
   184e4:	ffe7f793          	andi	a5,a5,-2
   184e8:	00fa87b3          	add	a5,s5,a5
   184ec:	3ef70463          	beq	a4,a5,188d4 <_realloc_r+0x4ac>
   184f0:	ffc90613          	addi	a2,s2,-4
   184f4:	02400793          	li	a5,36
   184f8:	38c7ec63          	bltu	a5,a2,18890 <_realloc_r+0x468>
   184fc:	01300713          	li	a4,19
   18500:	32c76663          	bltu	a4,a2,1882c <_realloc_r+0x404>
   18504:	00050793          	mv	a5,a0
   18508:	00040713          	mv	a4,s0
   1850c:	00072683          	lw	a3,0(a4)
   18510:	00d7a023          	sw	a3,0(a5)
   18514:	00472683          	lw	a3,4(a4)
   18518:	00d7a223          	sw	a3,4(a5)
   1851c:	00872703          	lw	a4,8(a4)
   18520:	00e7a423          	sw	a4,8(a5)
   18524:	00040593          	mv	a1,s0
   18528:	000a0513          	mv	a0,s4
   1852c:	ca5fb0ef          	jal	141d0 <_free_r>
   18530:	0400006f          	j	18570 <_realloc_r+0x148>
   18534:	01000713          	li	a4,16
   18538:	00070993          	mv	s3,a4
   1853c:	f51ff06f          	j	1848c <_realloc_r+0x64>
   18540:	00040493          	mv	s1,s0
   18544:	413907b3          	sub	a5,s2,s3
   18548:	00f00713          	li	a4,15
   1854c:	08f76c63          	bltu	a4,a5,185e4 <_realloc_r+0x1bc>
   18550:	004aa603          	lw	a2,4(s5)
   18554:	012a8733          	add	a4,s5,s2
   18558:	00167613          	andi	a2,a2,1
   1855c:	01266933          	or	s2,a2,s2
   18560:	012aa223          	sw	s2,4(s5)
   18564:	00472783          	lw	a5,4(a4)
   18568:	0017e793          	ori	a5,a5,1
   1856c:	00f72223          	sw	a5,4(a4)
   18570:	000a0513          	mv	a0,s4
   18574:	d19fc0ef          	jal	1528c <__malloc_unlock>
   18578:	02c12083          	lw	ra,44(sp)
   1857c:	00048513          	mv	a0,s1
   18580:	02812403          	lw	s0,40(sp)
   18584:	02412483          	lw	s1,36(sp)
   18588:	02012903          	lw	s2,32(sp)
   1858c:	01c12983          	lw	s3,28(sp)
   18590:	01812a03          	lw	s4,24(sp)
   18594:	01412a83          	lw	s5,20(sp)
   18598:	01012b03          	lw	s6,16(sp)
   1859c:	00c12b83          	lw	s7,12(sp)
   185a0:	00812c03          	lw	s8,8(sp)
   185a4:	03010113          	addi	sp,sp,48
   185a8:	00008067          	ret
   185ac:	ffc67613          	andi	a2,a2,-4
   185b0:	00c905b3          	add	a1,s2,a2
   185b4:	06e5ca63          	blt	a1,a4,18628 <_realloc_r+0x200>
   185b8:	00c6a783          	lw	a5,12(a3)
   185bc:	0086a703          	lw	a4,8(a3)
   185c0:	00040493          	mv	s1,s0
   185c4:	00058913          	mv	s2,a1
   185c8:	00f72623          	sw	a5,12(a4)
   185cc:	00e7a423          	sw	a4,8(a5)
   185d0:	f75ff06f          	j	18544 <_realloc_r+0x11c>
   185d4:	00c00793          	li	a5,12
   185d8:	00fa2023          	sw	a5,0(s4)
   185dc:	00000493          	li	s1,0
   185e0:	f99ff06f          	j	18578 <_realloc_r+0x150>
   185e4:	004aa703          	lw	a4,4(s5)
   185e8:	013a85b3          	add	a1,s5,s3
   185ec:	0017e793          	ori	a5,a5,1
   185f0:	00177713          	andi	a4,a4,1
   185f4:	013769b3          	or	s3,a4,s3
   185f8:	013aa223          	sw	s3,4(s5)
   185fc:	00f5a223          	sw	a5,4(a1)
   18600:	012a8933          	add	s2,s5,s2
   18604:	00492783          	lw	a5,4(s2)
   18608:	00858593          	addi	a1,a1,8
   1860c:	000a0513          	mv	a0,s4
   18610:	0017e793          	ori	a5,a5,1
   18614:	00f92223          	sw	a5,4(s2)
   18618:	bb9fb0ef          	jal	141d0 <_free_r>
   1861c:	f55ff06f          	j	18570 <_realloc_r+0x148>
   18620:	00060593          	mv	a1,a2
   18624:	a5cfc06f          	j	14880 <_malloc_r>
   18628:	0017f793          	andi	a5,a5,1
   1862c:	e8079ee3          	bnez	a5,184c8 <_realloc_r+0xa0>
   18630:	ff842b83          	lw	s7,-8(s0)
   18634:	417a8bb3          	sub	s7,s5,s7
   18638:	004ba783          	lw	a5,4(s7) # 80000004 <_gp+0x7ffe2594>
   1863c:	ffc7f793          	andi	a5,a5,-4
   18640:	00f60633          	add	a2,a2,a5
   18644:	01260b33          	add	s6,a2,s2
   18648:	08eb4c63          	blt	s6,a4,186e0 <_realloc_r+0x2b8>
   1864c:	00c6a783          	lw	a5,12(a3)
   18650:	0086a703          	lw	a4,8(a3)
   18654:	ffc90613          	addi	a2,s2,-4
   18658:	02400693          	li	a3,36
   1865c:	00f72623          	sw	a5,12(a4)
   18660:	00e7a423          	sw	a4,8(a5)
   18664:	008ba703          	lw	a4,8(s7)
   18668:	00cba783          	lw	a5,12(s7)
   1866c:	008b8493          	addi	s1,s7,8
   18670:	00f72623          	sw	a5,12(a4)
   18674:	00e7a423          	sw	a4,8(a5)
   18678:	22c6e263          	bltu	a3,a2,1889c <_realloc_r+0x474>
   1867c:	01300793          	li	a5,19
   18680:	1cc7f863          	bleu	a2,a5,18850 <_realloc_r+0x428>
   18684:	00042703          	lw	a4,0(s0)
   18688:	01b00793          	li	a5,27
   1868c:	00eba423          	sw	a4,8(s7)
   18690:	00442703          	lw	a4,4(s0)
   18694:	00eba623          	sw	a4,12(s7)
   18698:	24c7f863          	bleu	a2,a5,188e8 <_realloc_r+0x4c0>
   1869c:	00842703          	lw	a4,8(s0)
   186a0:	02400793          	li	a5,36
   186a4:	00eba823          	sw	a4,16(s7)
   186a8:	00c42703          	lw	a4,12(s0)
   186ac:	00ebaa23          	sw	a4,20(s7)
   186b0:	08f61663          	bne	a2,a5,1873c <_realloc_r+0x314>
   186b4:	01042683          	lw	a3,16(s0)
   186b8:	020b8793          	addi	a5,s7,32
   186bc:	01840713          	addi	a4,s0,24
   186c0:	00dbac23          	sw	a3,24(s7)
   186c4:	01442683          	lw	a3,20(s0)
   186c8:	00dbae23          	sw	a3,28(s7)
   186cc:	0780006f          	j	18744 <_realloc_r+0x31c>
   186d0:	ff842b83          	lw	s7,-8(s0)
   186d4:	417a8bb3          	sub	s7,s5,s7
   186d8:	004ba783          	lw	a5,4(s7)
   186dc:	ffc7f793          	andi	a5,a5,-4
   186e0:	00f90b33          	add	s6,s2,a5
   186e4:	deeb42e3          	blt	s6,a4,184c8 <_realloc_r+0xa0>
   186e8:	00cba783          	lw	a5,12(s7)
   186ec:	008ba703          	lw	a4,8(s7)
   186f0:	ffc90613          	addi	a2,s2,-4
   186f4:	02400693          	li	a3,36
   186f8:	00f72623          	sw	a5,12(a4)
   186fc:	00e7a423          	sw	a4,8(a5)
   18700:	008b8493          	addi	s1,s7,8
   18704:	18c6ec63          	bltu	a3,a2,1889c <_realloc_r+0x474>
   18708:	01300793          	li	a5,19
   1870c:	14c7f263          	bleu	a2,a5,18850 <_realloc_r+0x428>
   18710:	00042703          	lw	a4,0(s0)
   18714:	01b00793          	li	a5,27
   18718:	00eba423          	sw	a4,8(s7)
   1871c:	00442703          	lw	a4,4(s0)
   18720:	00eba623          	sw	a4,12(s7)
   18724:	1cc7f263          	bleu	a2,a5,188e8 <_realloc_r+0x4c0>
   18728:	00842783          	lw	a5,8(s0)
   1872c:	00fba823          	sw	a5,16(s7)
   18730:	00c42783          	lw	a5,12(s0)
   18734:	00fbaa23          	sw	a5,20(s7)
   18738:	f6d60ee3          	beq	a2,a3,186b4 <_realloc_r+0x28c>
   1873c:	018b8793          	addi	a5,s7,24
   18740:	01040713          	addi	a4,s0,16
   18744:	00072683          	lw	a3,0(a4)
   18748:	000b0913          	mv	s2,s6
   1874c:	000b8a93          	mv	s5,s7
   18750:	00d7a023          	sw	a3,0(a5)
   18754:	00472683          	lw	a3,4(a4)
   18758:	00d7a223          	sw	a3,4(a5)
   1875c:	00872703          	lw	a4,8(a4)
   18760:	00e7a423          	sw	a4,8(a5)
   18764:	de1ff06f          	j	18544 <_realloc_r+0x11c>
   18768:	0046a683          	lw	a3,4(a3)
   1876c:	01098613          	addi	a2,s3,16
   18770:	ffc6f693          	andi	a3,a3,-4
   18774:	012686b3          	add	a3,a3,s2
   18778:	0ec6d263          	ble	a2,a3,1885c <_realloc_r+0x434>
   1877c:	0017f793          	andi	a5,a5,1
   18780:	d40794e3          	bnez	a5,184c8 <_realloc_r+0xa0>
   18784:	ff842b83          	lw	s7,-8(s0)
   18788:	417a8bb3          	sub	s7,s5,s7
   1878c:	004ba783          	lw	a5,4(s7)
   18790:	ffc7f793          	andi	a5,a5,-4
   18794:	00d78c33          	add	s8,a5,a3
   18798:	f4cc44e3          	blt	s8,a2,186e0 <_realloc_r+0x2b8>
   1879c:	00cba783          	lw	a5,12(s7)
   187a0:	008ba703          	lw	a4,8(s7)
   187a4:	ffc90613          	addi	a2,s2,-4
   187a8:	02400693          	li	a3,36
   187ac:	00f72623          	sw	a5,12(a4)
   187b0:	00e7a423          	sw	a4,8(a5)
   187b4:	008b8493          	addi	s1,s7,8
   187b8:	16c6e263          	bltu	a3,a2,1891c <_realloc_r+0x4f4>
   187bc:	01300793          	li	a5,19
   187c0:	14c7f863          	bleu	a2,a5,18910 <_realloc_r+0x4e8>
   187c4:	00042703          	lw	a4,0(s0)
   187c8:	01b00793          	li	a5,27
   187cc:	00eba423          	sw	a4,8(s7)
   187d0:	00442703          	lw	a4,4(s0)
   187d4:	00eba623          	sw	a4,12(s7)
   187d8:	14c7ea63          	bltu	a5,a2,1892c <_realloc_r+0x504>
   187dc:	010b8793          	addi	a5,s7,16
   187e0:	00840713          	addi	a4,s0,8
   187e4:	00072683          	lw	a3,0(a4)
   187e8:	00d7a023          	sw	a3,0(a5)
   187ec:	00472683          	lw	a3,4(a4)
   187f0:	00d7a223          	sw	a3,4(a5)
   187f4:	00872703          	lw	a4,8(a4)
   187f8:	00e7a423          	sw	a4,8(a5)
   187fc:	013b8733          	add	a4,s7,s3
   18800:	413c07b3          	sub	a5,s8,s3
   18804:	00eb2423          	sw	a4,8(s6)
   18808:	0017e793          	ori	a5,a5,1
   1880c:	00f72223          	sw	a5,4(a4)
   18810:	004ba783          	lw	a5,4(s7)
   18814:	000a0513          	mv	a0,s4
   18818:	0017f793          	andi	a5,a5,1
   1881c:	0137e9b3          	or	s3,a5,s3
   18820:	013ba223          	sw	s3,4(s7)
   18824:	a69fc0ef          	jal	1528c <__malloc_unlock>
   18828:	d51ff06f          	j	18578 <_realloc_r+0x150>
   1882c:	00042683          	lw	a3,0(s0)
   18830:	01b00713          	li	a4,27
   18834:	00d52023          	sw	a3,0(a0)
   18838:	00442683          	lw	a3,4(s0)
   1883c:	00d52223          	sw	a3,4(a0)
   18840:	06c76a63          	bltu	a4,a2,188b4 <_realloc_r+0x48c>
   18844:	00850793          	addi	a5,a0,8
   18848:	00840713          	addi	a4,s0,8
   1884c:	cc1ff06f          	j	1850c <_realloc_r+0xe4>
   18850:	00048793          	mv	a5,s1
   18854:	00040713          	mv	a4,s0
   18858:	eedff06f          	j	18744 <_realloc_r+0x31c>
   1885c:	013a8ab3          	add	s5,s5,s3
   18860:	413687b3          	sub	a5,a3,s3
   18864:	015b2423          	sw	s5,8(s6)
   18868:	0017e793          	ori	a5,a5,1
   1886c:	00faa223          	sw	a5,4(s5)
   18870:	ffc42783          	lw	a5,-4(s0)
   18874:	000a0513          	mv	a0,s4
   18878:	00040493          	mv	s1,s0
   1887c:	0017f793          	andi	a5,a5,1
   18880:	0137e9b3          	or	s3,a5,s3
   18884:	ff342e23          	sw	s3,-4(s0)
   18888:	a05fc0ef          	jal	1528c <__malloc_unlock>
   1888c:	cedff06f          	j	18578 <_realloc_r+0x150>
   18890:	00040593          	mv	a1,s0
   18894:	a11ff0ef          	jal	182a4 <memmove>
   18898:	c8dff06f          	j	18524 <_realloc_r+0xfc>
   1889c:	00040593          	mv	a1,s0
   188a0:	00048513          	mv	a0,s1
   188a4:	a01ff0ef          	jal	182a4 <memmove>
   188a8:	000b0913          	mv	s2,s6
   188ac:	000b8a93          	mv	s5,s7
   188b0:	c95ff06f          	j	18544 <_realloc_r+0x11c>
   188b4:	00842703          	lw	a4,8(s0)
   188b8:	00e52423          	sw	a4,8(a0)
   188bc:	00c42703          	lw	a4,12(s0)
   188c0:	00e52623          	sw	a4,12(a0)
   188c4:	02f60863          	beq	a2,a5,188f4 <_realloc_r+0x4cc>
   188c8:	01050793          	addi	a5,a0,16
   188cc:	01040713          	addi	a4,s0,16
   188d0:	c3dff06f          	j	1850c <_realloc_r+0xe4>
   188d4:	ffc52783          	lw	a5,-4(a0)
   188d8:	00040493          	mv	s1,s0
   188dc:	ffc7f793          	andi	a5,a5,-4
   188e0:	00f90933          	add	s2,s2,a5
   188e4:	c61ff06f          	j	18544 <_realloc_r+0x11c>
   188e8:	010b8793          	addi	a5,s7,16
   188ec:	00840713          	addi	a4,s0,8
   188f0:	e55ff06f          	j	18744 <_realloc_r+0x31c>
   188f4:	01042683          	lw	a3,16(s0)
   188f8:	01850793          	addi	a5,a0,24
   188fc:	01840713          	addi	a4,s0,24
   18900:	00d52823          	sw	a3,16(a0)
   18904:	01442683          	lw	a3,20(s0)
   18908:	00d52a23          	sw	a3,20(a0)
   1890c:	c01ff06f          	j	1850c <_realloc_r+0xe4>
   18910:	00048793          	mv	a5,s1
   18914:	00040713          	mv	a4,s0
   18918:	ecdff06f          	j	187e4 <_realloc_r+0x3bc>
   1891c:	00040593          	mv	a1,s0
   18920:	00048513          	mv	a0,s1
   18924:	981ff0ef          	jal	182a4 <memmove>
   18928:	ed5ff06f          	j	187fc <_realloc_r+0x3d4>
   1892c:	00842783          	lw	a5,8(s0)
   18930:	00fba823          	sw	a5,16(s7)
   18934:	00c42783          	lw	a5,12(s0)
   18938:	00fbaa23          	sw	a5,20(s7)
   1893c:	00d60863          	beq	a2,a3,1894c <_realloc_r+0x524>
   18940:	018b8793          	addi	a5,s7,24
   18944:	01040713          	addi	a4,s0,16
   18948:	e9dff06f          	j	187e4 <_realloc_r+0x3bc>
   1894c:	01042683          	lw	a3,16(s0)
   18950:	020b8793          	addi	a5,s7,32
   18954:	01840713          	addi	a4,s0,24
   18958:	00dbac23          	sw	a3,24(s7)
   1895c:	01442683          	lw	a3,20(s0)
   18960:	00dbae23          	sw	a3,28(s7)
   18964:	e81ff06f          	j	187e4 <_realloc_r+0x3bc>

00018968 <cleanup_glue>:
   18968:	ff010113          	addi	sp,sp,-16
   1896c:	00812423          	sw	s0,8(sp)
   18970:	00058413          	mv	s0,a1
   18974:	0005a583          	lw	a1,0(a1)
   18978:	00912223          	sw	s1,4(sp)
   1897c:	00112623          	sw	ra,12(sp)
   18980:	00050493          	mv	s1,a0
   18984:	00058463          	beqz	a1,1898c <cleanup_glue+0x24>
   18988:	fe1ff0ef          	jal	18968 <cleanup_glue>
   1898c:	00040593          	mv	a1,s0
   18990:	00048513          	mv	a0,s1
   18994:	00c12083          	lw	ra,12(sp)
   18998:	00812403          	lw	s0,8(sp)
   1899c:	00412483          	lw	s1,4(sp)
   189a0:	01010113          	addi	sp,sp,16
   189a4:	82dfb06f          	j	141d0 <_free_r>

000189a8 <_reclaim_reent>:
   189a8:	8081a783          	lw	a5,-2040(gp) # 1d278 <_impure_ptr>
   189ac:	0ca78663          	beq	a5,a0,18a78 <_reclaim_reent+0xd0>
   189b0:	04c52703          	lw	a4,76(a0)
   189b4:	fe010113          	addi	sp,sp,-32
   189b8:	00912a23          	sw	s1,20(sp)
   189bc:	00112e23          	sw	ra,28(sp)
   189c0:	00812c23          	sw	s0,24(sp)
   189c4:	01212823          	sw	s2,16(sp)
   189c8:	01312623          	sw	s3,12(sp)
   189cc:	00050493          	mv	s1,a0
   189d0:	04070263          	beqz	a4,18a14 <_reclaim_reent+0x6c>
   189d4:	00000913          	li	s2,0
   189d8:	08000993          	li	s3,128
   189dc:	012707b3          	add	a5,a4,s2
   189e0:	0007a583          	lw	a1,0(a5)
   189e4:	00058e63          	beqz	a1,18a00 <_reclaim_reent+0x58>
   189e8:	0005a403          	lw	s0,0(a1)
   189ec:	00048513          	mv	a0,s1
   189f0:	fe0fb0ef          	jal	141d0 <_free_r>
   189f4:	00040593          	mv	a1,s0
   189f8:	fe0418e3          	bnez	s0,189e8 <_reclaim_reent+0x40>
   189fc:	04c4a703          	lw	a4,76(s1)
   18a00:	00490913          	addi	s2,s2,4
   18a04:	fd391ce3          	bne	s2,s3,189dc <_reclaim_reent+0x34>
   18a08:	00070593          	mv	a1,a4
   18a0c:	00048513          	mv	a0,s1
   18a10:	fc0fb0ef          	jal	141d0 <_free_r>
   18a14:	0404a583          	lw	a1,64(s1)
   18a18:	00058663          	beqz	a1,18a24 <_reclaim_reent+0x7c>
   18a1c:	00048513          	mv	a0,s1
   18a20:	fb0fb0ef          	jal	141d0 <_free_r>
   18a24:	1484a583          	lw	a1,328(s1)
   18a28:	02058063          	beqz	a1,18a48 <_reclaim_reent+0xa0>
   18a2c:	14c48913          	addi	s2,s1,332
   18a30:	01258c63          	beq	a1,s2,18a48 <_reclaim_reent+0xa0>
   18a34:	0005a403          	lw	s0,0(a1)
   18a38:	00048513          	mv	a0,s1
   18a3c:	f94fb0ef          	jal	141d0 <_free_r>
   18a40:	00040593          	mv	a1,s0
   18a44:	fe8918e3          	bne	s2,s0,18a34 <_reclaim_reent+0x8c>
   18a48:	0544a583          	lw	a1,84(s1)
   18a4c:	00058663          	beqz	a1,18a58 <_reclaim_reent+0xb0>
   18a50:	00048513          	mv	a0,s1
   18a54:	f7cfb0ef          	jal	141d0 <_free_r>
   18a58:	0384a783          	lw	a5,56(s1)
   18a5c:	02079063          	bnez	a5,18a7c <_reclaim_reent+0xd4>
   18a60:	01c12083          	lw	ra,28(sp)
   18a64:	01812403          	lw	s0,24(sp)
   18a68:	01412483          	lw	s1,20(sp)
   18a6c:	01012903          	lw	s2,16(sp)
   18a70:	00c12983          	lw	s3,12(sp)
   18a74:	02010113          	addi	sp,sp,32
   18a78:	00008067          	ret
   18a7c:	03c4a783          	lw	a5,60(s1)
   18a80:	00048513          	mv	a0,s1
   18a84:	000780e7          	jalr	a5
   18a88:	2e04a583          	lw	a1,736(s1)
   18a8c:	fc058ae3          	beqz	a1,18a60 <_reclaim_reent+0xb8>
   18a90:	00048513          	mv	a0,s1
   18a94:	01c12083          	lw	ra,28(sp)
   18a98:	01812403          	lw	s0,24(sp)
   18a9c:	01412483          	lw	s1,20(sp)
   18aa0:	01012903          	lw	s2,16(sp)
   18aa4:	00c12983          	lw	s3,12(sp)
   18aa8:	02010113          	addi	sp,sp,32
   18aac:	ebdff06f          	j	18968 <cleanup_glue>

00018ab0 <__swbuf_r>:
   18ab0:	fe010113          	addi	sp,sp,-32
   18ab4:	00812c23          	sw	s0,24(sp)
   18ab8:	00912a23          	sw	s1,20(sp)
   18abc:	01212823          	sw	s2,16(sp)
   18ac0:	00112e23          	sw	ra,28(sp)
   18ac4:	01312623          	sw	s3,12(sp)
   18ac8:	00050913          	mv	s2,a0
   18acc:	00058493          	mv	s1,a1
   18ad0:	00060413          	mv	s0,a2
   18ad4:	00050663          	beqz	a0,18ae0 <__swbuf_r+0x30>
   18ad8:	03852783          	lw	a5,56(a0)
   18adc:	12078463          	beqz	a5,18c04 <__swbuf_r+0x154>
   18ae0:	00c41703          	lh	a4,12(s0)
   18ae4:	01842783          	lw	a5,24(s0)
   18ae8:	01071693          	slli	a3,a4,0x10
   18aec:	0106d693          	srli	a3,a3,0x10
   18af0:	00f42423          	sw	a5,8(s0)
   18af4:	0086f793          	andi	a5,a3,8
   18af8:	0e078463          	beqz	a5,18be0 <__swbuf_r+0x130>
   18afc:	01042783          	lw	a5,16(s0)
   18b00:	0e078063          	beqz	a5,18be0 <__swbuf_r+0x130>
   18b04:	01269613          	slli	a2,a3,0x12
   18b08:	0ff4f993          	andi	s3,s1,255
   18b0c:	0ff4f493          	andi	s1,s1,255
   18b10:	06065663          	bgez	a2,18b7c <__swbuf_r+0xcc>
   18b14:	00042703          	lw	a4,0(s0)
   18b18:	01442683          	lw	a3,20(s0)
   18b1c:	40f707b3          	sub	a5,a4,a5
   18b20:	08d7d663          	ble	a3,a5,18bac <__swbuf_r+0xfc>
   18b24:	00178793          	addi	a5,a5,1
   18b28:	00842683          	lw	a3,8(s0)
   18b2c:	00170613          	addi	a2,a4,1
   18b30:	00c42023          	sw	a2,0(s0)
   18b34:	fff68693          	addi	a3,a3,-1
   18b38:	00d42423          	sw	a3,8(s0)
   18b3c:	01370023          	sb	s3,0(a4)
   18b40:	01442703          	lw	a4,20(s0)
   18b44:	08f70263          	beq	a4,a5,18bc8 <__swbuf_r+0x118>
   18b48:	00c45783          	lhu	a5,12(s0)
   18b4c:	0017f793          	andi	a5,a5,1
   18b50:	00078663          	beqz	a5,18b5c <__swbuf_r+0xac>
   18b54:	00a00793          	li	a5,10
   18b58:	06f48863          	beq	s1,a5,18bc8 <__swbuf_r+0x118>
   18b5c:	01c12083          	lw	ra,28(sp)
   18b60:	00048513          	mv	a0,s1
   18b64:	01812403          	lw	s0,24(sp)
   18b68:	01412483          	lw	s1,20(sp)
   18b6c:	01012903          	lw	s2,16(sp)
   18b70:	00c12983          	lw	s3,12(sp)
   18b74:	02010113          	addi	sp,sp,32
   18b78:	00008067          	ret
   18b7c:	06442683          	lw	a3,100(s0)
   18b80:	00002637          	lui	a2,0x2
   18b84:	00c76733          	or	a4,a4,a2
   18b88:	ffffe637          	lui	a2,0xffffe
   18b8c:	fff60613          	addi	a2,a2,-1 # ffffdfff <_gp+0xfffe058f>
   18b90:	00c6f6b3          	and	a3,a3,a2
   18b94:	00e41623          	sh	a4,12(s0)
   18b98:	00042703          	lw	a4,0(s0)
   18b9c:	06d42223          	sw	a3,100(s0)
   18ba0:	01442683          	lw	a3,20(s0)
   18ba4:	40f707b3          	sub	a5,a4,a5
   18ba8:	f6d7cee3          	blt	a5,a3,18b24 <__swbuf_r+0x74>
   18bac:	00040593          	mv	a1,s0
   18bb0:	00090513          	mv	a0,s2
   18bb4:	908fb0ef          	jal	13cbc <_fflush_r>
   18bb8:	02051063          	bnez	a0,18bd8 <__swbuf_r+0x128>
   18bbc:	00042703          	lw	a4,0(s0)
   18bc0:	00100793          	li	a5,1
   18bc4:	f65ff06f          	j	18b28 <__swbuf_r+0x78>
   18bc8:	00040593          	mv	a1,s0
   18bcc:	00090513          	mv	a0,s2
   18bd0:	8ecfb0ef          	jal	13cbc <_fflush_r>
   18bd4:	f80504e3          	beqz	a0,18b5c <__swbuf_r+0xac>
   18bd8:	fff00493          	li	s1,-1
   18bdc:	f81ff06f          	j	18b5c <__swbuf_r+0xac>
   18be0:	00040593          	mv	a1,s0
   18be4:	00090513          	mv	a0,s2
   18be8:	b88f90ef          	jal	11f70 <__swsetup_r>
   18bec:	fe0516e3          	bnez	a0,18bd8 <__swbuf_r+0x128>
   18bf0:	00c41703          	lh	a4,12(s0)
   18bf4:	01042783          	lw	a5,16(s0)
   18bf8:	01071693          	slli	a3,a4,0x10
   18bfc:	0106d693          	srli	a3,a3,0x10
   18c00:	f05ff06f          	j	18b04 <__swbuf_r+0x54>
   18c04:	c78fb0ef          	jal	1407c <__sinit>
   18c08:	ed9ff06f          	j	18ae0 <__swbuf_r+0x30>

00018c0c <__swbuf>:
   18c0c:	00058613          	mv	a2,a1
   18c10:	00050593          	mv	a1,a0
   18c14:	8081a503          	lw	a0,-2040(gp) # 1d278 <_impure_ptr>
   18c18:	e99ff06f          	j	18ab0 <__swbuf_r>

00018c1c <_wcrtomb_r>:
   18c1c:	fd010113          	addi	sp,sp,-48
   18c20:	02912223          	sw	s1,36(sp)
   18c24:	03212023          	sw	s2,32(sp)
   18c28:	02112623          	sw	ra,44(sp)
   18c2c:	02812423          	sw	s0,40(sp)
   18c30:	01312e23          	sw	s3,28(sp)
   18c34:	01412c23          	sw	s4,24(sp)
   18c38:	00050493          	mv	s1,a0
   18c3c:	00068913          	mv	s2,a3
   18c40:	06058063          	beqz	a1,18ca0 <_wcrtomb_r+0x84>
   18c44:	8181aa03          	lw	s4,-2024(gp) # 1d288 <__wctomb>
   18c48:	00058413          	mv	s0,a1
   18c4c:	00060993          	mv	s3,a2
   18c50:	a49fb0ef          	jal	14698 <__locale_charset>
   18c54:	00050693          	mv	a3,a0
   18c58:	00090713          	mv	a4,s2
   18c5c:	00098613          	mv	a2,s3
   18c60:	00040593          	mv	a1,s0
   18c64:	00048513          	mv	a0,s1
   18c68:	000a00e7          	jalr	s4
   18c6c:	fff00793          	li	a5,-1
   18c70:	00f51863          	bne	a0,a5,18c80 <_wcrtomb_r+0x64>
   18c74:	00092023          	sw	zero,0(s2)
   18c78:	08a00793          	li	a5,138
   18c7c:	00f4a023          	sw	a5,0(s1)
   18c80:	02c12083          	lw	ra,44(sp)
   18c84:	02812403          	lw	s0,40(sp)
   18c88:	02412483          	lw	s1,36(sp)
   18c8c:	02012903          	lw	s2,32(sp)
   18c90:	01c12983          	lw	s3,28(sp)
   18c94:	01812a03          	lw	s4,24(sp)
   18c98:	03010113          	addi	sp,sp,48
   18c9c:	00008067          	ret
   18ca0:	8181a403          	lw	s0,-2024(gp) # 1d288 <__wctomb>
   18ca4:	9f5fb0ef          	jal	14698 <__locale_charset>
   18ca8:	00050693          	mv	a3,a0
   18cac:	00090713          	mv	a4,s2
   18cb0:	00000613          	li	a2,0
   18cb4:	00410593          	addi	a1,sp,4
   18cb8:	00048513          	mv	a0,s1
   18cbc:	000400e7          	jalr	s0
   18cc0:	fadff06f          	j	18c6c <_wcrtomb_r+0x50>

00018cc4 <wcrtomb>:
   18cc4:	fd010113          	addi	sp,sp,-48
   18cc8:	02912223          	sw	s1,36(sp)
   18ccc:	03212023          	sw	s2,32(sp)
   18cd0:	02112623          	sw	ra,44(sp)
   18cd4:	02812423          	sw	s0,40(sp)
   18cd8:	01312e23          	sw	s3,28(sp)
   18cdc:	01412c23          	sw	s4,24(sp)
   18ce0:	00060913          	mv	s2,a2
   18ce4:	8081a483          	lw	s1,-2040(gp) # 1d278 <_impure_ptr>
   18ce8:	06050063          	beqz	a0,18d48 <wcrtomb+0x84>
   18cec:	8181aa03          	lw	s4,-2024(gp) # 1d288 <__wctomb>
   18cf0:	00058993          	mv	s3,a1
   18cf4:	00050413          	mv	s0,a0
   18cf8:	9a1fb0ef          	jal	14698 <__locale_charset>
   18cfc:	00050693          	mv	a3,a0
   18d00:	00090713          	mv	a4,s2
   18d04:	00098613          	mv	a2,s3
   18d08:	00040593          	mv	a1,s0
   18d0c:	00048513          	mv	a0,s1
   18d10:	000a00e7          	jalr	s4
   18d14:	fff00793          	li	a5,-1
   18d18:	00f51863          	bne	a0,a5,18d28 <wcrtomb+0x64>
   18d1c:	00092023          	sw	zero,0(s2)
   18d20:	08a00793          	li	a5,138
   18d24:	00f4a023          	sw	a5,0(s1)
   18d28:	02c12083          	lw	ra,44(sp)
   18d2c:	02812403          	lw	s0,40(sp)
   18d30:	02412483          	lw	s1,36(sp)
   18d34:	02012903          	lw	s2,32(sp)
   18d38:	01c12983          	lw	s3,28(sp)
   18d3c:	01812a03          	lw	s4,24(sp)
   18d40:	03010113          	addi	sp,sp,48
   18d44:	00008067          	ret
   18d48:	8181a403          	lw	s0,-2024(gp) # 1d288 <__wctomb>
   18d4c:	94dfb0ef          	jal	14698 <__locale_charset>
   18d50:	00050693          	mv	a3,a0
   18d54:	00090713          	mv	a4,s2
   18d58:	00000613          	li	a2,0
   18d5c:	00410593          	addi	a1,sp,4
   18d60:	00048513          	mv	a0,s1
   18d64:	000400e7          	jalr	s0
   18d68:	fadff06f          	j	18d14 <wcrtomb+0x50>

00018d6c <__ascii_wctomb>:
   18d6c:	00058c63          	beqz	a1,18d84 <__ascii_wctomb+0x18>
   18d70:	0ff00793          	li	a5,255
   18d74:	00c7ec63          	bltu	a5,a2,18d8c <__ascii_wctomb+0x20>
   18d78:	00c58023          	sb	a2,0(a1)
   18d7c:	00100513          	li	a0,1
   18d80:	00008067          	ret
   18d84:	00000513          	li	a0,0
   18d88:	00008067          	ret
   18d8c:	08a00793          	li	a5,138
   18d90:	00f52023          	sw	a5,0(a0)
   18d94:	fff00513          	li	a0,-1
   18d98:	00008067          	ret

00018d9c <_wctomb_r>:
   18d9c:	fe010113          	addi	sp,sp,-32
   18da0:	00812c23          	sw	s0,24(sp)
   18da4:	8181a403          	lw	s0,-2024(gp) # 1d288 <__wctomb>
   18da8:	00112e23          	sw	ra,28(sp)
   18dac:	00912a23          	sw	s1,20(sp)
   18db0:	01212823          	sw	s2,16(sp)
   18db4:	01312623          	sw	s3,12(sp)
   18db8:	01412423          	sw	s4,8(sp)
   18dbc:	00050493          	mv	s1,a0
   18dc0:	00068a13          	mv	s4,a3
   18dc4:	00058913          	mv	s2,a1
   18dc8:	00060993          	mv	s3,a2
   18dcc:	8cdfb0ef          	jal	14698 <__locale_charset>
   18dd0:	000a0713          	mv	a4,s4
   18dd4:	00050693          	mv	a3,a0
   18dd8:	00098613          	mv	a2,s3
   18ddc:	00090593          	mv	a1,s2
   18de0:	00048513          	mv	a0,s1
   18de4:	00040313          	mv	t1,s0
   18de8:	01c12083          	lw	ra,28(sp)
   18dec:	01812403          	lw	s0,24(sp)
   18df0:	01412483          	lw	s1,20(sp)
   18df4:	01012903          	lw	s2,16(sp)
   18df8:	00c12983          	lw	s3,12(sp)
   18dfc:	00812a03          	lw	s4,8(sp)
   18e00:	02010113          	addi	sp,sp,32
   18e04:	00030067          	jr	t1

00018e08 <__syscall_error>:
   18e08:	ff010113          	addi	sp,sp,-16
   18e0c:	00112623          	sw	ra,12(sp)
   18e10:	00812423          	sw	s0,8(sp)
   18e14:	00050413          	mv	s0,a0
   18e18:	27c020ef          	jal	1b094 <__errno>
   18e1c:	00c12083          	lw	ra,12(sp)
   18e20:	408007b3          	neg	a5,s0
   18e24:	00f52023          	sw	a5,0(a0)
   18e28:	00812403          	lw	s0,8(sp)
   18e2c:	fff00513          	li	a0,-1
   18e30:	01010113          	addi	sp,sp,16
   18e34:	00008067          	ret

00018e38 <open>:
   18e38:	00000693          	li	a3,0
   18e3c:	40000893          	li	a7,1024
   18e40:	00000073          	ecall
   18e44:	fc0542e3          	bltz	a0,18e08 <__syscall_error>
   18e48:	00008067          	ret

00018e4c <openat>:
   18e4c:	03800893          	li	a7,56
   18e50:	00000073          	ecall
   18e54:	fa054ae3          	bltz	a0,18e08 <__syscall_error>
   18e58:	00008067          	ret

00018e5c <lseek>:
   18e5c:	00000693          	li	a3,0
   18e60:	03e00893          	li	a7,62
   18e64:	00000073          	ecall
   18e68:	fa0540e3          	bltz	a0,18e08 <__syscall_error>
   18e6c:	00008067          	ret

00018e70 <read>:
   18e70:	00000693          	li	a3,0
   18e74:	03f00893          	li	a7,63
   18e78:	00000073          	ecall
   18e7c:	f80546e3          	bltz	a0,18e08 <__syscall_error>
   18e80:	00008067          	ret

00018e84 <write>:
   18e84:	00000693          	li	a3,0
   18e88:	04000893          	li	a7,64
   18e8c:	00000073          	ecall
   18e90:	f6054ce3          	bltz	a0,18e08 <__syscall_error>
   18e94:	00008067          	ret

00018e98 <fstat>:
   18e98:	00000613          	li	a2,0
   18e9c:	00000693          	li	a3,0
   18ea0:	05000893          	li	a7,80
   18ea4:	00000073          	ecall
   18ea8:	f60540e3          	bltz	a0,18e08 <__syscall_error>
   18eac:	00008067          	ret

00018eb0 <stat>:
   18eb0:	00000613          	li	a2,0
   18eb4:	00000693          	li	a3,0
   18eb8:	40e00893          	li	a7,1038
   18ebc:	00000073          	ecall
   18ec0:	f40544e3          	bltz	a0,18e08 <__syscall_error>
   18ec4:	00008067          	ret

00018ec8 <lstat>:
   18ec8:	00000613          	li	a2,0
   18ecc:	00000693          	li	a3,0
   18ed0:	40f00893          	li	a7,1039
   18ed4:	00000073          	ecall
   18ed8:	f20548e3          	bltz	a0,18e08 <__syscall_error>
   18edc:	00008067          	ret

00018ee0 <fstatat>:
   18ee0:	04f00893          	li	a7,79
   18ee4:	00000073          	ecall
   18ee8:	f20540e3          	bltz	a0,18e08 <__syscall_error>
   18eec:	00008067          	ret

00018ef0 <access>:
   18ef0:	00000613          	li	a2,0
   18ef4:	00000693          	li	a3,0
   18ef8:	40900893          	li	a7,1033
   18efc:	00000073          	ecall
   18f00:	f00544e3          	bltz	a0,18e08 <__syscall_error>
   18f04:	00008067          	ret

00018f08 <faccessat>:
   18f08:	03000893          	li	a7,48
   18f0c:	00000073          	ecall
   18f10:	ee054ce3          	bltz	a0,18e08 <__syscall_error>
   18f14:	00008067          	ret

00018f18 <close>:
   18f18:	00000593          	li	a1,0
   18f1c:	00000613          	li	a2,0
   18f20:	00000693          	li	a3,0
   18f24:	03900893          	li	a7,57
   18f28:	00000073          	ecall
   18f2c:	ec054ee3          	bltz	a0,18e08 <__syscall_error>
   18f30:	00008067          	ret

00018f34 <link>:
   18f34:	00000613          	li	a2,0
   18f38:	00000693          	li	a3,0
   18f3c:	40100893          	li	a7,1025
   18f40:	00000073          	ecall
   18f44:	ec0542e3          	bltz	a0,18e08 <__syscall_error>
   18f48:	00008067          	ret

00018f4c <unlink>:
   18f4c:	00000593          	li	a1,0
   18f50:	00000613          	li	a2,0
   18f54:	00000693          	li	a3,0
   18f58:	40200893          	li	a7,1026
   18f5c:	00000073          	ecall
   18f60:	ea0544e3          	bltz	a0,18e08 <__syscall_error>
   18f64:	00008067          	ret

00018f68 <execve>:
   18f68:	ff010113          	addi	sp,sp,-16
   18f6c:	00112623          	sw	ra,12(sp)
   18f70:	124020ef          	jal	1b094 <__errno>
   18f74:	00c12083          	lw	ra,12(sp)
   18f78:	00c00793          	li	a5,12
   18f7c:	00f52023          	sw	a5,0(a0)
   18f80:	01010113          	addi	sp,sp,16
   18f84:	fff00513          	li	a0,-1
   18f88:	00008067          	ret

00018f8c <fork>:
   18f8c:	ff010113          	addi	sp,sp,-16
   18f90:	00112623          	sw	ra,12(sp)
   18f94:	100020ef          	jal	1b094 <__errno>
   18f98:	00c12083          	lw	ra,12(sp)
   18f9c:	00b00793          	li	a5,11
   18fa0:	00f52023          	sw	a5,0(a0)
   18fa4:	01010113          	addi	sp,sp,16
   18fa8:	fff00513          	li	a0,-1
   18fac:	00008067          	ret

00018fb0 <getpid>:
   18fb0:	00100513          	li	a0,1
   18fb4:	00008067          	ret

00018fb8 <kill>:
   18fb8:	ff010113          	addi	sp,sp,-16
   18fbc:	00112623          	sw	ra,12(sp)
   18fc0:	0d4020ef          	jal	1b094 <__errno>
   18fc4:	00c12083          	lw	ra,12(sp)
   18fc8:	01600793          	li	a5,22
   18fcc:	00f52023          	sw	a5,0(a0)
   18fd0:	01010113          	addi	sp,sp,16
   18fd4:	fff00513          	li	a0,-1
   18fd8:	00008067          	ret

00018fdc <wait>:
   18fdc:	ff010113          	addi	sp,sp,-16
   18fe0:	00112623          	sw	ra,12(sp)
   18fe4:	0b0020ef          	jal	1b094 <__errno>
   18fe8:	00c12083          	lw	ra,12(sp)
   18fec:	00a00793          	li	a5,10
   18ff0:	00f52023          	sw	a5,0(a0)
   18ff4:	01010113          	addi	sp,sp,16
   18ff8:	fff00513          	li	a0,-1
   18ffc:	00008067          	ret

00019000 <isatty>:
   19000:	f9010113          	addi	sp,sp,-112
   19004:	00810593          	addi	a1,sp,8
   19008:	00000613          	li	a2,0
   1900c:	00000693          	li	a3,0
   19010:	05000893          	li	a7,80
   19014:	00000073          	ecall
   19018:	de0548e3          	bltz	a0,18e08 <__syscall_error>
   1901c:	fff00793          	li	a5,-1
   19020:	00f50863          	beq	a0,a5,19030 <isatty+0x30>
   19024:	01812503          	lw	a0,24(sp)
   19028:	00d55513          	srli	a0,a0,0xd
   1902c:	00157513          	andi	a0,a0,1
   19030:	07010113          	addi	sp,sp,112
   19034:	00008067          	ret

00019038 <times>:
   19038:	fe010113          	addi	sp,sp,-32
   1903c:	00812c23          	sw	s0,24(sp)
   19040:	8941a783          	lw	a5,-1900(gp) # 1d304 <t0.2269>
   19044:	00912a23          	sw	s1,20(sp)
   19048:	00112e23          	sw	ra,28(sp)
   1904c:	00050493          	mv	s1,a0
   19050:	02079063          	bnez	a5,19070 <times+0x38>
   19054:	89418513          	addi	a0,gp,-1900 # 1d304 <t0.2269>
   19058:	00000593          	li	a1,0
   1905c:	00000613          	li	a2,0
   19060:	00000693          	li	a3,0
   19064:	0a900893          	li	a7,169
   19068:	00000073          	ecall
   1906c:	d8054ee3          	bltz	a0,18e08 <__syscall_error>
   19070:	00810513          	addi	a0,sp,8
   19074:	00000593          	li	a1,0
   19078:	00000613          	li	a2,0
   1907c:	00000693          	li	a3,0
   19080:	0a900893          	li	a7,169
   19084:	00000073          	ecall
   19088:	d80540e3          	bltz	a0,18e08 <__syscall_error>
   1908c:	8941a783          	lw	a5,-1900(gp) # 1d304 <t0.2269>
   19090:	00812503          	lw	a0,8(sp)
   19094:	000f45b7          	lui	a1,0xf4
   19098:	24058593          	addi	a1,a1,576 # f4240 <_gp+0xd67d0>
   1909c:	40f50533          	sub	a0,a0,a5
   190a0:	23c010ef          	jal	1a2dc <__mulsi3>
   190a4:	89418413          	addi	s0,gp,-1900 # 1d304 <t0.2269>
   190a8:	00442703          	lw	a4,4(s0)
   190ac:	00c12783          	lw	a5,12(sp)
   190b0:	01c12083          	lw	ra,28(sp)
   190b4:	0004a423          	sw	zero,8(s1)
   190b8:	40e787b3          	sub	a5,a5,a4
   190bc:	00f50533          	add	a0,a0,a5
   190c0:	00a4a023          	sw	a0,0(s1)
   190c4:	0004a623          	sw	zero,12(s1)
   190c8:	0004a223          	sw	zero,4(s1)
   190cc:	fff00513          	li	a0,-1
   190d0:	01812403          	lw	s0,24(sp)
   190d4:	01412483          	lw	s1,20(sp)
   190d8:	02010113          	addi	sp,sp,32
   190dc:	00008067          	ret

000190e0 <gettimeofday>:
   190e0:	00000593          	li	a1,0
   190e4:	00000613          	li	a2,0
   190e8:	00000693          	li	a3,0
   190ec:	0a900893          	li	a7,169
   190f0:	00000073          	ecall
   190f4:	d0054ae3          	bltz	a0,18e08 <__syscall_error>
   190f8:	00008067          	ret

000190fc <ftime>:
   190fc:	00051223          	sh	zero,4(a0)
   19100:	00052023          	sw	zero,0(a0)
   19104:	00000513          	li	a0,0
   19108:	00008067          	ret

0001910c <utime>:
   1910c:	fff00513          	li	a0,-1
   19110:	00008067          	ret

00019114 <chown>:
   19114:	fff00513          	li	a0,-1
   19118:	00008067          	ret

0001911c <chmod>:
   1911c:	fff00513          	li	a0,-1
   19120:	00008067          	ret

00019124 <chdir>:
   19124:	fff00513          	li	a0,-1
   19128:	00008067          	ret

0001912c <getcwd>:
   1912c:	00000513          	li	a0,0
   19130:	00008067          	ret

00019134 <sysconf>:
   19134:	00200793          	li	a5,2
   19138:	00f51863          	bne	a0,a5,19148 <sysconf+0x14>
   1913c:	000f4537          	lui	a0,0xf4
   19140:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xd67d0>
   19144:	00008067          	ret
   19148:	fff00513          	li	a0,-1
   1914c:	00008067          	ret

00019150 <sbrk>:
   19150:	8901a783          	lw	a5,-1904(gp) # 1d300 <heap_end.2306>
   19154:	00050713          	mv	a4,a0
   19158:	02079863          	bnez	a5,19188 <sbrk+0x38>
   1915c:	00000513          	li	a0,0
   19160:	00000593          	li	a1,0
   19164:	00000613          	li	a2,0
   19168:	00000693          	li	a3,0
   1916c:	0d600893          	li	a7,214
   19170:	00000073          	ecall
   19174:	c8054ae3          	bltz	a0,18e08 <__syscall_error>
   19178:	fff00793          	li	a5,-1
   1917c:	02f50a63          	beq	a0,a5,191b0 <sbrk+0x60>
   19180:	00050793          	mv	a5,a0
   19184:	88a1a823          	sw	a0,-1904(gp) # 1d300 <heap_end.2306>
   19188:	00f70533          	add	a0,a4,a5
   1918c:	00000593          	li	a1,0
   19190:	00000613          	li	a2,0
   19194:	00000693          	li	a3,0
   19198:	0d600893          	li	a7,214
   1919c:	00000073          	ecall
   191a0:	c60544e3          	bltz	a0,18e08 <__syscall_error>
   191a4:	8901a783          	lw	a5,-1904(gp) # 1d300 <heap_end.2306>
   191a8:	00f70733          	add	a4,a4,a5
   191ac:	00e50663          	beq	a0,a4,191b8 <sbrk+0x68>
   191b0:	fff00513          	li	a0,-1
   191b4:	00008067          	ret
   191b8:	88a1a823          	sw	a0,-1904(gp) # 1d300 <heap_end.2306>
   191bc:	00078513          	mv	a0,a5
   191c0:	00008067          	ret

000191c4 <_exit>:
   191c4:	00000593          	li	a1,0
   191c8:	00000613          	li	a2,0
   191cc:	00000693          	li	a3,0
   191d0:	05d00893          	li	a7,93
   191d4:	00000073          	ecall
   191d8:	c20548e3          	bltz	a0,18e08 <__syscall_error>
   191dc:	0000006f          	j	191dc <_exit+0x18>

000191e0 <_fpadd_parts>:
   191e0:	00052783          	lw	a5,0(a0)
   191e4:	00100693          	li	a3,1
   191e8:	12f6f063          	bleu	a5,a3,19308 <_fpadd_parts+0x128>
   191ec:	0005a703          	lw	a4,0(a1)
   191f0:	10e6fa63          	bleu	a4,a3,19304 <_fpadd_parts+0x124>
   191f4:	00400693          	li	a3,4
   191f8:	24d78063          	beq	a5,a3,19438 <_fpadd_parts+0x258>
   191fc:	10d70463          	beq	a4,a3,19304 <_fpadd_parts+0x124>
   19200:	00200693          	li	a3,2
   19204:	1cd70063          	beq	a4,a3,193c4 <_fpadd_parts+0x1e4>
   19208:	0ed78e63          	beq	a5,a3,19304 <_fpadd_parts+0x124>
   1920c:	00852303          	lw	t1,8(a0)
   19210:	0085af03          	lw	t5,8(a1)
   19214:	03f00f93          	li	t6,63
   19218:	01052683          	lw	a3,16(a0)
   1921c:	41e30833          	sub	a6,t1,t5
   19220:	41f85793          	srai	a5,a6,0x1f
   19224:	0107c733          	xor	a4,a5,a6
   19228:	40f70733          	sub	a4,a4,a5
   1922c:	01452e83          	lw	t4,20(a0)
   19230:	0105a883          	lw	a7,16(a1)
   19234:	0145ae03          	lw	t3,20(a1)
   19238:	0cefda63          	ble	a4,t6,1930c <_fpadd_parts+0x12c>
   1923c:	1e6f5663          	ble	t1,t5,19428 <_fpadd_parts+0x248>
   19240:	00000893          	li	a7,0
   19244:	00000e13          	li	t3,0
   19248:	00452503          	lw	a0,4(a0)
   1924c:	0045a783          	lw	a5,4(a1)
   19250:	10f50863          	beq	a0,a5,19360 <_fpadd_parts+0x180>
   19254:	1c050063          	beqz	a0,19414 <_fpadd_parts+0x234>
   19258:	40d887b3          	sub	a5,a7,a3
   1925c:	00f8b8b3          	sltu	a7,a7,a5
   19260:	41de06b3          	sub	a3,t3,t4
   19264:	411686b3          	sub	a3,a3,a7
   19268:	1e06c663          	bltz	a3,19454 <_fpadd_parts+0x274>
   1926c:	00062223          	sw	zero,4(a2)
   19270:	00662423          	sw	t1,8(a2)
   19274:	00f62823          	sw	a5,16(a2)
   19278:	00d62a23          	sw	a3,20(a2)
   1927c:	fff78513          	addi	a0,a5,-1
   19280:	fff68593          	addi	a1,a3,-1
   19284:	00f53733          	sltu	a4,a0,a5
   19288:	00b70733          	add	a4,a4,a1
   1928c:	100005b7          	lui	a1,0x10000
   19290:	0eb77863          	bleu	a1,a4,19380 <_fpadd_parts+0x1a0>
   19294:	fff58593          	addi	a1,a1,-1 # fffffff <_gp+0xffe258f>
   19298:	26b70063          	beq	a4,a1,194f8 <_fpadd_parts+0x318>
   1929c:	00862503          	lw	a0,8(a2)
   192a0:	10000337          	lui	t1,0x10000
   192a4:	fff30e13          	addi	t3,t1,-1 # fffffff <_gp+0xffe258f>
   192a8:	fff50513          	addi	a0,a0,-1
   192ac:	ffe00e93          	li	t4,-2
   192b0:	0080006f          	j	192b8 <_fpadd_parts+0xd8>
   192b4:	15c70c63          	beq	a4,t3,1940c <_fpadd_parts+0x22c>
   192b8:	01f7d713          	srli	a4,a5,0x1f
   192bc:	00169593          	slli	a1,a3,0x1
   192c0:	00179793          	slli	a5,a5,0x1
   192c4:	00b765b3          	or	a1,a4,a1
   192c8:	fff78813          	addi	a6,a5,-1
   192cc:	fff58893          	addi	a7,a1,-1
   192d0:	00f83733          	sltu	a4,a6,a5
   192d4:	01170733          	add	a4,a4,a7
   192d8:	00058693          	mv	a3,a1
   192dc:	00050893          	mv	a7,a0
   192e0:	fff50513          	addi	a0,a0,-1
   192e4:	fc6768e3          	bltu	a4,t1,192b4 <_fpadd_parts+0xd4>
   192e8:	00f62823          	sw	a5,16(a2)
   192ec:	00300793          	li	a5,3
   192f0:	00b62a23          	sw	a1,20(a2)
   192f4:	01162423          	sw	a7,8(a2)
   192f8:	00f62023          	sw	a5,0(a2)
   192fc:	00060513          	mv	a0,a2
   19300:	00008067          	ret
   19304:	00058513          	mv	a0,a1
   19308:	00008067          	ret
   1930c:	19005c63          	blez	a6,194a4 <_fpadd_parts+0x2c4>
   19310:	02077793          	andi	a5,a4,32
   19314:	16078463          	beqz	a5,1947c <_fpadd_parts+0x29c>
   19318:	00100793          	li	a5,1
   1931c:	00ee5f33          	srl	t5,t3,a4
   19320:	00e797b3          	sll	a5,a5,a4
   19324:	00000f93          	li	t6,0
   19328:	00000713          	li	a4,0
   1932c:	fff70813          	addi	a6,a4,-1
   19330:	fff78793          	addi	a5,a5,-1
   19334:	00e83733          	sltu	a4,a6,a4
   19338:	00f70733          	add	a4,a4,a5
   1933c:	011878b3          	and	a7,a6,a7
   19340:	01c777b3          	and	a5,a4,t3
   19344:	00f8e7b3          	or	a5,a7,a5
   19348:	00f037b3          	snez	a5,a5
   1934c:	00ff68b3          	or	a7,t5,a5
   19350:	00452503          	lw	a0,4(a0)
   19354:	0045a783          	lw	a5,4(a1)
   19358:	000f8e13          	mv	t3,t6
   1935c:	eef51ce3          	bne	a0,a5,19254 <_fpadd_parts+0x74>
   19360:	011687b3          	add	a5,a3,a7
   19364:	00d7b733          	sltu	a4,a5,a3
   19368:	01ce86b3          	add	a3,t4,t3
   1936c:	00d706b3          	add	a3,a4,a3
   19370:	00a62223          	sw	a0,4(a2)
   19374:	00662423          	sw	t1,8(a2)
   19378:	00f62823          	sw	a5,16(a2)
   1937c:	00d62a23          	sw	a3,20(a2)
   19380:	00300713          	li	a4,3
   19384:	00e62023          	sw	a4,0(a2)
   19388:	20000737          	lui	a4,0x20000
   1938c:	02e6e863          	bltu	a3,a4,193bc <_fpadd_parts+0x1dc>
   19390:	00862583          	lw	a1,8(a2)
   19394:	01f69513          	slli	a0,a3,0x1f
   19398:	0017d713          	srli	a4,a5,0x1
   1939c:	00e56733          	or	a4,a0,a4
   193a0:	0017f793          	andi	a5,a5,1
   193a4:	00f767b3          	or	a5,a4,a5
   193a8:	0016d693          	srli	a3,a3,0x1
   193ac:	00158713          	addi	a4,a1,1
   193b0:	00f62823          	sw	a5,16(a2)
   193b4:	00d62a23          	sw	a3,20(a2)
   193b8:	00e62423          	sw	a4,8(a2)
   193bc:	00060513          	mv	a0,a2
   193c0:	00008067          	ret
   193c4:	f4e792e3          	bne	a5,a4,19308 <_fpadd_parts+0x128>
   193c8:	00f62023          	sw	a5,0(a2)
   193cc:	00452783          	lw	a5,4(a0)
   193d0:	00f62223          	sw	a5,4(a2)
   193d4:	00852703          	lw	a4,8(a0)
   193d8:	00452783          	lw	a5,4(a0)
   193dc:	0045a683          	lw	a3,4(a1)
   193e0:	00e62423          	sw	a4,8(a2)
   193e4:	00c52703          	lw	a4,12(a0)
   193e8:	00d7f7b3          	and	a5,a5,a3
   193ec:	00e62623          	sw	a4,12(a2)
   193f0:	01052703          	lw	a4,16(a0)
   193f4:	00e62823          	sw	a4,16(a2)
   193f8:	01452703          	lw	a4,20(a0)
   193fc:	00f62223          	sw	a5,4(a2)
   19400:	00060513          	mv	a0,a2
   19404:	00e62a23          	sw	a4,20(a2)
   19408:	00008067          	ret
   1940c:	eb0ef6e3          	bleu	a6,t4,192b8 <_fpadd_parts+0xd8>
   19410:	ed9ff06f          	j	192e8 <_fpadd_parts+0x108>
   19414:	411687b3          	sub	a5,a3,a7
   19418:	00f6b733          	sltu	a4,a3,a5
   1941c:	41ce86b3          	sub	a3,t4,t3
   19420:	40e686b3          	sub	a3,a3,a4
   19424:	e45ff06f          	j	19268 <_fpadd_parts+0x88>
   19428:	000f0313          	mv	t1,t5
   1942c:	00000693          	li	a3,0
   19430:	00000e93          	li	t4,0
   19434:	e15ff06f          	j	19248 <_fpadd_parts+0x68>
   19438:	ecf718e3          	bne	a4,a5,19308 <_fpadd_parts+0x128>
   1943c:	00452703          	lw	a4,4(a0)
   19440:	0045a783          	lw	a5,4(a1)
   19444:	ecf702e3          	beq	a4,a5,19308 <_fpadd_parts+0x128>
   19448:	0001b537          	lui	a0,0x1b
   1944c:	4e050513          	addi	a0,a0,1248 # 1b4e0 <__thenan_df>
   19450:	00008067          	ret
   19454:	40f007b3          	neg	a5,a5
   19458:	00f03733          	snez	a4,a5
   1945c:	40d006b3          	neg	a3,a3
   19460:	40e686b3          	sub	a3,a3,a4
   19464:	00100713          	li	a4,1
   19468:	00e62223          	sw	a4,4(a2)
   1946c:	00662423          	sw	t1,8(a2)
   19470:	00f62823          	sw	a5,16(a2)
   19474:	00d62a23          	sw	a3,20(a2)
   19478:	e05ff06f          	j	1927c <_fpadd_parts+0x9c>
   1947c:	fff74813          	not	a6,a4
   19480:	001e1793          	slli	a5,t3,0x1
   19484:	010797b3          	sll	a5,a5,a6
   19488:	00e8df33          	srl	t5,a7,a4
   1948c:	00100813          	li	a6,1
   19490:	01e7ef33          	or	t5,a5,t5
   19494:	00ee5fb3          	srl	t6,t3,a4
   19498:	00000793          	li	a5,0
   1949c:	00e81733          	sll	a4,a6,a4
   194a0:	e8dff06f          	j	1932c <_fpadd_parts+0x14c>
   194a4:	da0802e3          	beqz	a6,19248 <_fpadd_parts+0x68>
   194a8:	02077793          	andi	a5,a4,32
   194ac:	00e30333          	add	t1,t1,a4
   194b0:	06078263          	beqz	a5,19514 <_fpadd_parts+0x334>
   194b4:	00eedfb3          	srl	t6,t4,a4
   194b8:	00000293          	li	t0,0
   194bc:	04079463          	bnez	a5,19504 <_fpadd_parts+0x324>
   194c0:	00100793          	li	a5,1
   194c4:	00000f13          	li	t5,0
   194c8:	00e79733          	sll	a4,a5,a4
   194cc:	fff70813          	addi	a6,a4,-1 # 1fffffff <_gp+0x1ffe258f>
   194d0:	00e83733          	sltu	a4,a6,a4
   194d4:	ffff0793          	addi	a5,t5,-1
   194d8:	00f707b3          	add	a5,a4,a5
   194dc:	00d87833          	and	a6,a6,a3
   194e0:	01d7f6b3          	and	a3,a5,t4
   194e4:	00d866b3          	or	a3,a6,a3
   194e8:	00d037b3          	snez	a5,a3
   194ec:	00ffe6b3          	or	a3,t6,a5
   194f0:	00028e93          	mv	t4,t0
   194f4:	d55ff06f          	j	19248 <_fpadd_parts+0x68>
   194f8:	ffe00713          	li	a4,-2
   194fc:	daa770e3          	bleu	a0,a4,1929c <_fpadd_parts+0xbc>
   19500:	e81ff06f          	j	19380 <_fpadd_parts+0x1a0>
   19504:	00100793          	li	a5,1
   19508:	00e79f33          	sll	t5,a5,a4
   1950c:	00000713          	li	a4,0
   19510:	fbdff06f          	j	194cc <_fpadd_parts+0x2ec>
   19514:	001e9793          	slli	a5,t4,0x1
   19518:	fff74813          	not	a6,a4
   1951c:	010797b3          	sll	a5,a5,a6
   19520:	00e6dfb3          	srl	t6,a3,a4
   19524:	01f7efb3          	or	t6,a5,t6
   19528:	00eed2b3          	srl	t0,t4,a4
   1952c:	f95ff06f          	j	194c0 <_fpadd_parts+0x2e0>

00019530 <__pack_d>:
   19530:	00052783          	lw	a5,0(a0)
   19534:	00100593          	li	a1,1
   19538:	01052683          	lw	a3,16(a0)
   1953c:	01452703          	lw	a4,20(a0)
   19540:	00452603          	lw	a2,4(a0)
   19544:	0ef5fa63          	bleu	a5,a1,19638 <__pack_d+0x108>
   19548:	00400813          	li	a6,4
   1954c:	0d078e63          	beq	a5,a6,19628 <__pack_d+0xf8>
   19550:	00200813          	li	a6,2
   19554:	07078263          	beq	a5,a6,195b8 <__pack_d+0x88>
   19558:	00e6e7b3          	or	a5,a3,a4
   1955c:	04078e63          	beqz	a5,195b8 <__pack_d+0x88>
   19560:	00852783          	lw	a5,8(a0)
   19564:	c0200513          	li	a0,-1022
   19568:	12a7c063          	blt	a5,a0,19688 <__pack_d+0x158>
   1956c:	3ff00593          	li	a1,1023
   19570:	0af5cc63          	blt	a1,a5,19628 <__pack_d+0xf8>
   19574:	0ff6f593          	andi	a1,a3,255
   19578:	08000513          	li	a0,128
   1957c:	0ea58863          	beq	a1,a0,1966c <__pack_d+0x13c>
   19580:	07f68593          	addi	a1,a3,127
   19584:	00d5b6b3          	sltu	a3,a1,a3
   19588:	00e68733          	add	a4,a3,a4
   1958c:	00058693          	mv	a3,a1
   19590:	200005b7          	lui	a1,0x20000
   19594:	06b77e63          	bleu	a1,a4,19610 <__pack_d+0xe0>
   19598:	3ff78793          	addi	a5,a5,1023
   1959c:	01871593          	slli	a1,a4,0x18
   195a0:	0086d693          	srli	a3,a3,0x8
   195a4:	00471713          	slli	a4,a4,0x4
   195a8:	00d5e6b3          	or	a3,a1,a3
   195ac:	00c75713          	srli	a4,a4,0xc
   195b0:	7ff7f793          	andi	a5,a5,2047
   195b4:	0100006f          	j	195c4 <__pack_d+0x94>
   195b8:	00000793          	li	a5,0
   195bc:	00000693          	li	a3,0
   195c0:	00000713          	li	a4,0
   195c4:	00100837          	lui	a6,0x100
   195c8:	00000593          	li	a1,0
   195cc:	00068513          	mv	a0,a3
   195d0:	fff80813          	addi	a6,a6,-1 # fffff <_gp+0xe258f>
   195d4:	fff006b7          	lui	a3,0xfff00
   195d8:	00b6f6b3          	and	a3,a3,a1
   195dc:	01077733          	and	a4,a4,a6
   195e0:	00e6e733          	or	a4,a3,a4
   195e4:	01479693          	slli	a3,a5,0x14
   195e8:	801007b7          	lui	a5,0x80100
   195ec:	fff78793          	addi	a5,a5,-1 # 800fffff <_gp+0x800e258f>
   195f0:	00f777b3          	and	a5,a4,a5
   195f4:	80000737          	lui	a4,0x80000
   195f8:	00d7e7b3          	or	a5,a5,a3
   195fc:	fff74713          	not	a4,a4
   19600:	01f61613          	slli	a2,a2,0x1f
   19604:	00e7f7b3          	and	a5,a5,a4
   19608:	00c7e5b3          	or	a1,a5,a2
   1960c:	00008067          	ret
   19610:	01f71593          	slli	a1,a4,0x1f
   19614:	0016d693          	srli	a3,a3,0x1
   19618:	00d5e6b3          	or	a3,a1,a3
   1961c:	00175713          	srli	a4,a4,0x1
   19620:	40078793          	addi	a5,a5,1024
   19624:	f79ff06f          	j	1959c <__pack_d+0x6c>
   19628:	7ff00793          	li	a5,2047
   1962c:	00000693          	li	a3,0
   19630:	00000713          	li	a4,0
   19634:	f91ff06f          	j	195c4 <__pack_d+0x94>
   19638:	000805b7          	lui	a1,0x80
   1963c:	00875793          	srli	a5,a4,0x8
   19640:	fff58513          	addi	a0,a1,-1 # 7ffff <_gp+0x6258f>
   19644:	00a7f7b3          	and	a5,a5,a0
   19648:	01871513          	slli	a0,a4,0x18
   1964c:	00b7e733          	or	a4,a5,a1
   19650:	001007b7          	lui	a5,0x100
   19654:	fff78793          	addi	a5,a5,-1 # fffff <_gp+0xe258f>
   19658:	0086d693          	srli	a3,a3,0x8
   1965c:	00f77733          	and	a4,a4,a5
   19660:	00d566b3          	or	a3,a0,a3
   19664:	7ff00793          	li	a5,2047
   19668:	f5dff06f          	j	195c4 <__pack_d+0x94>
   1966c:	1006f593          	andi	a1,a3,256
   19670:	f20580e3          	beqz	a1,19590 <__pack_d+0x60>
   19674:	00a685b3          	add	a1,a3,a0
   19678:	00d5b6b3          	sltu	a3,a1,a3
   1967c:	00e68733          	add	a4,a3,a4
   19680:	00058693          	mv	a3,a1
   19684:	f0dff06f          	j	19590 <__pack_d+0x60>
   19688:	40f507b3          	sub	a5,a0,a5
   1968c:	03800513          	li	a0,56
   19690:	f2f544e3          	blt	a0,a5,195b8 <__pack_d+0x88>
   19694:	0207f513          	andi	a0,a5,32
   19698:	0a050663          	beqz	a0,19744 <__pack_d+0x214>
   1969c:	00f75833          	srl	a6,a4,a5
   196a0:	00f595b3          	sll	a1,a1,a5
   196a4:	00000893          	li	a7,0
   196a8:	00000793          	li	a5,0
   196ac:	fff78513          	addi	a0,a5,-1
   196b0:	00f537b3          	sltu	a5,a0,a5
   196b4:	fff58593          	addi	a1,a1,-1
   196b8:	00b785b3          	add	a1,a5,a1
   196bc:	00d576b3          	and	a3,a0,a3
   196c0:	00e5f733          	and	a4,a1,a4
   196c4:	00e6e733          	or	a4,a3,a4
   196c8:	00e036b3          	snez	a3,a4
   196cc:	00d867b3          	or	a5,a6,a3
   196d0:	0ff7f693          	andi	a3,a5,255
   196d4:	08000713          	li	a4,128
   196d8:	02e69a63          	bne	a3,a4,1970c <__pack_d+0x1dc>
   196dc:	1007f713          	andi	a4,a5,256
   196e0:	08071663          	bnez	a4,1976c <__pack_d+0x23c>
   196e4:	0087d693          	srli	a3,a5,0x8
   196e8:	01889513          	slli	a0,a7,0x18
   196ec:	00489713          	slli	a4,a7,0x4
   196f0:	100005b7          	lui	a1,0x10000
   196f4:	00d566b3          	or	a3,a0,a3
   196f8:	00c75713          	srli	a4,a4,0xc
   196fc:	00100793          	li	a5,1
   19700:	02b8ec63          	bltu	a7,a1,19738 <__pack_d+0x208>
   19704:	0017f793          	andi	a5,a5,1
   19708:	ebdff06f          	j	195c4 <__pack_d+0x94>
   1970c:	07f78693          	addi	a3,a5,127
   19710:	00f6b7b3          	sltu	a5,a3,a5
   19714:	011785b3          	add	a1,a5,a7
   19718:	01859793          	slli	a5,a1,0x18
   1971c:	0086d693          	srli	a3,a3,0x8
   19720:	00459713          	slli	a4,a1,0x4
   19724:	10000537          	lui	a0,0x10000
   19728:	00d7e6b3          	or	a3,a5,a3
   1972c:	00c75713          	srli	a4,a4,0xc
   19730:	00100793          	li	a5,1
   19734:	fca5f8e3          	bleu	a0,a1,19704 <__pack_d+0x1d4>
   19738:	00000793          	li	a5,0
   1973c:	0017f793          	andi	a5,a5,1
   19740:	e85ff06f          	j	195c4 <__pack_d+0x94>
   19744:	fff7c513          	not	a0,a5
   19748:	00171593          	slli	a1,a4,0x1
   1974c:	00a595b3          	sll	a1,a1,a0
   19750:	00f6d833          	srl	a6,a3,a5
   19754:	00100513          	li	a0,1
   19758:	0105e833          	or	a6,a1,a6
   1975c:	00f758b3          	srl	a7,a4,a5
   19760:	00000593          	li	a1,0
   19764:	00f517b3          	sll	a5,a0,a5
   19768:	f45ff06f          	j	196ac <__pack_d+0x17c>
   1976c:	08078693          	addi	a3,a5,128
   19770:	fa1ff06f          	j	19710 <__pack_d+0x1e0>

00019774 <__unpack_d>:
   19774:	00754703          	lbu	a4,7(a0) # 10000007 <_gp+0xffe2597>
   19778:	00655683          	lhu	a3,6(a0)
   1977c:	00452783          	lw	a5,4(a0)
   19780:	00775613          	srli	a2,a4,0x7
   19784:	0046d693          	srli	a3,a3,0x4
   19788:	00052703          	lw	a4,0(a0)
   1978c:	00c5a223          	sw	a2,4(a1) # 10000004 <_gp+0xffe2594>
   19790:	00100637          	lui	a2,0x100
   19794:	fff60613          	addi	a2,a2,-1 # fffff <_gp+0xe258f>
   19798:	7ff6f693          	andi	a3,a3,2047
   1979c:	00c7f7b3          	and	a5,a5,a2
   197a0:	04069c63          	bnez	a3,197f8 <__unpack_d+0x84>
   197a4:	00f766b3          	or	a3,a4,a5
   197a8:	08068663          	beqz	a3,19834 <__unpack_d+0xc0>
   197ac:	01875693          	srli	a3,a4,0x18
   197b0:	00879793          	slli	a5,a5,0x8
   197b4:	00f6e7b3          	or	a5,a3,a5
   197b8:	00300693          	li	a3,3
   197bc:	00d5a023          	sw	a3,0(a1)
   197c0:	00871713          	slli	a4,a4,0x8
   197c4:	c0100693          	li	a3,-1023
   197c8:	10000537          	lui	a0,0x10000
   197cc:	01f75613          	srli	a2,a4,0x1f
   197d0:	00179793          	slli	a5,a5,0x1
   197d4:	00f667b3          	or	a5,a2,a5
   197d8:	00171713          	slli	a4,a4,0x1
   197dc:	00068613          	mv	a2,a3
   197e0:	fff68693          	addi	a3,a3,-1 # ffefffff <_gp+0xffee258f>
   197e4:	fea7e4e3          	bltu	a5,a0,197cc <__unpack_d+0x58>
   197e8:	00c5a423          	sw	a2,8(a1)
   197ec:	00e5a823          	sw	a4,16(a1)
   197f0:	00f5aa23          	sw	a5,20(a1)
   197f4:	00008067          	ret
   197f8:	7ff00613          	li	a2,2047
   197fc:	04c68263          	beq	a3,a2,19840 <__unpack_d+0xcc>
   19800:	01875613          	srli	a2,a4,0x18
   19804:	00879793          	slli	a5,a5,0x8
   19808:	00f667b3          	or	a5,a2,a5
   1980c:	c0168693          	addi	a3,a3,-1023
   19810:	10000637          	lui	a2,0x10000
   19814:	00871713          	slli	a4,a4,0x8
   19818:	00c7e7b3          	or	a5,a5,a2
   1981c:	00d5a423          	sw	a3,8(a1)
   19820:	00300693          	li	a3,3
   19824:	00d5a023          	sw	a3,0(a1)
   19828:	00e5a823          	sw	a4,16(a1)
   1982c:	00f5aa23          	sw	a5,20(a1)
   19830:	00008067          	ret
   19834:	00200793          	li	a5,2
   19838:	00f5a023          	sw	a5,0(a1)
   1983c:	00008067          	ret
   19840:	00f766b3          	or	a3,a4,a5
   19844:	02068e63          	beqz	a3,19880 <__unpack_d+0x10c>
   19848:	00c79693          	slli	a3,a5,0xc
   1984c:	0406d063          	bgez	a3,1988c <__unpack_d+0x118>
   19850:	00100693          	li	a3,1
   19854:	00d5a023          	sw	a3,0(a1)
   19858:	01875693          	srli	a3,a4,0x18
   1985c:	00879793          	slli	a5,a5,0x8
   19860:	00f6e7b3          	or	a5,a3,a5
   19864:	f80006b7          	lui	a3,0xf8000
   19868:	fff68693          	addi	a3,a3,-1 # f7ffffff <_gp+0xf7fe258f>
   1986c:	00871713          	slli	a4,a4,0x8
   19870:	00d7f7b3          	and	a5,a5,a3
   19874:	00e5a823          	sw	a4,16(a1)
   19878:	00f5aa23          	sw	a5,20(a1)
   1987c:	00008067          	ret
   19880:	00400793          	li	a5,4
   19884:	00f5a023          	sw	a5,0(a1)
   19888:	00008067          	ret
   1988c:	0005a023          	sw	zero,0(a1)
   19890:	fc9ff06f          	j	19858 <__unpack_d+0xe4>

00019894 <__adddf3>:
   19894:	f9010113          	addi	sp,sp,-112
   19898:	00a12423          	sw	a0,8(sp)
   1989c:	00b12623          	sw	a1,12(sp)
   198a0:	00810513          	addi	a0,sp,8
   198a4:	01810593          	addi	a1,sp,24
   198a8:	06112623          	sw	ra,108(sp)
   198ac:	00d12a23          	sw	a3,20(sp)
   198b0:	00c12823          	sw	a2,16(sp)
   198b4:	ec1ff0ef          	jal	19774 <__unpack_d>
   198b8:	03010593          	addi	a1,sp,48
   198bc:	01010513          	addi	a0,sp,16
   198c0:	eb5ff0ef          	jal	19774 <__unpack_d>
   198c4:	04810613          	addi	a2,sp,72
   198c8:	03010593          	addi	a1,sp,48
   198cc:	01810513          	addi	a0,sp,24
   198d0:	911ff0ef          	jal	191e0 <_fpadd_parts>
   198d4:	c5dff0ef          	jal	19530 <__pack_d>
   198d8:	06c12083          	lw	ra,108(sp)
   198dc:	07010113          	addi	sp,sp,112
   198e0:	00008067          	ret

000198e4 <__subdf3>:
   198e4:	f9010113          	addi	sp,sp,-112
   198e8:	00a12423          	sw	a0,8(sp)
   198ec:	00b12623          	sw	a1,12(sp)
   198f0:	00810513          	addi	a0,sp,8
   198f4:	01810593          	addi	a1,sp,24
   198f8:	06112623          	sw	ra,108(sp)
   198fc:	00d12a23          	sw	a3,20(sp)
   19900:	00c12823          	sw	a2,16(sp)
   19904:	e71ff0ef          	jal	19774 <__unpack_d>
   19908:	03010593          	addi	a1,sp,48
   1990c:	01010513          	addi	a0,sp,16
   19910:	e65ff0ef          	jal	19774 <__unpack_d>
   19914:	03412783          	lw	a5,52(sp)
   19918:	04810613          	addi	a2,sp,72
   1991c:	03010593          	addi	a1,sp,48
   19920:	0017c793          	xori	a5,a5,1
   19924:	01810513          	addi	a0,sp,24
   19928:	02f12a23          	sw	a5,52(sp)
   1992c:	8b5ff0ef          	jal	191e0 <_fpadd_parts>
   19930:	c01ff0ef          	jal	19530 <__pack_d>
   19934:	06c12083          	lw	ra,108(sp)
   19938:	07010113          	addi	sp,sp,112
   1993c:	00008067          	ret

00019940 <__muldf3>:
   19940:	f7010113          	addi	sp,sp,-144
   19944:	00a12423          	sw	a0,8(sp)
   19948:	00b12623          	sw	a1,12(sp)
   1994c:	00810513          	addi	a0,sp,8
   19950:	01810593          	addi	a1,sp,24
   19954:	00d12a23          	sw	a3,20(sp)
   19958:	08112623          	sw	ra,140(sp)
   1995c:	00c12823          	sw	a2,16(sp)
   19960:	08812423          	sw	s0,136(sp)
   19964:	08912223          	sw	s1,132(sp)
   19968:	09212023          	sw	s2,128(sp)
   1996c:	07312e23          	sw	s3,124(sp)
   19970:	07412c23          	sw	s4,120(sp)
   19974:	07512a23          	sw	s5,116(sp)
   19978:	07612823          	sw	s6,112(sp)
   1997c:	07712623          	sw	s7,108(sp)
   19980:	df5ff0ef          	jal	19774 <__unpack_d>
   19984:	03010593          	addi	a1,sp,48
   19988:	01010513          	addi	a0,sp,16
   1998c:	de9ff0ef          	jal	19774 <__unpack_d>
   19990:	01812783          	lw	a5,24(sp)
   19994:	00100693          	li	a3,1
   19998:	1cf6fe63          	bleu	a5,a3,19b74 <__muldf3+0x234>
   1999c:	03012703          	lw	a4,48(sp)
   199a0:	1ae6f863          	bleu	a4,a3,19b50 <__muldf3+0x210>
   199a4:	00400693          	li	a3,4
   199a8:	1cd78263          	beq	a5,a3,19b6c <__muldf3+0x22c>
   199ac:	18d70e63          	beq	a4,a3,19b48 <__muldf3+0x208>
   199b0:	00200693          	li	a3,2
   199b4:	1cd78063          	beq	a5,a3,19b74 <__muldf3+0x234>
   199b8:	18d70c63          	beq	a4,a3,19b50 <__muldf3+0x210>
   199bc:	02812483          	lw	s1,40(sp)
   199c0:	04012a83          	lw	s5,64(sp)
   199c4:	04412403          	lw	s0,68(sp)
   199c8:	00048613          	mv	a2,s1
   199cc:	00000693          	li	a3,0
   199d0:	000a8513          	mv	a0,s5
   199d4:	00000593          	li	a1,0
   199d8:	129000ef          	jal	1a300 <__muldi3>
   199dc:	02c12a03          	lw	s4,44(sp)
   199e0:	00048613          	mv	a2,s1
   199e4:	00058993          	mv	s3,a1
   199e8:	00000693          	li	a3,0
   199ec:	00050b93          	mv	s7,a0
   199f0:	00000593          	li	a1,0
   199f4:	00040513          	mv	a0,s0
   199f8:	109000ef          	jal	1a300 <__muldi3>
   199fc:	00040613          	mv	a2,s0
   19a00:	00050913          	mv	s2,a0
   19a04:	00058493          	mv	s1,a1
   19a08:	00000693          	li	a3,0
   19a0c:	000a0513          	mv	a0,s4
   19a10:	00000593          	li	a1,0
   19a14:	0ed000ef          	jal	1a300 <__muldi3>
   19a18:	000a8613          	mv	a2,s5
   19a1c:	00000693          	li	a3,0
   19a20:	00050413          	mv	s0,a0
   19a24:	00058b13          	mv	s6,a1
   19a28:	000a0513          	mv	a0,s4
   19a2c:	00000593          	li	a1,0
   19a30:	0d1000ef          	jal	1a300 <__muldi3>
   19a34:	012506b3          	add	a3,a0,s2
   19a38:	00a6b533          	sltu	a0,a3,a0
   19a3c:	009585b3          	add	a1,a1,s1
   19a40:	00b50633          	add	a2,a0,a1
   19a44:	00098713          	mv	a4,s3
   19a48:	14966663          	bltu	a2,s1,19b94 <__muldf3+0x254>
   19a4c:	14c48263          	beq	s1,a2,19b90 <__muldf3+0x250>
   19a50:	00000793          	li	a5,0
   19a54:	00000893          	li	a7,0
   19a58:	013686b3          	add	a3,a3,s3
   19a5c:	000b8513          	mv	a0,s7
   19a60:	00e6f463          	bleu	a4,a3,19a68 <__muldf3+0x128>
   19a64:	00100793          	li	a5,1
   19a68:	00860833          	add	a6,a2,s0
   19a6c:	00c83733          	sltu	a4,a6,a2
   19a70:	02012583          	lw	a1,32(sp)
   19a74:	03812603          	lw	a2,56(sp)
   19a78:	03412303          	lw	t1,52(sp)
   19a7c:	00f807b3          	add	a5,a6,a5
   19a80:	00c58633          	add	a2,a1,a2
   19a84:	01c12583          	lw	a1,28(sp)
   19a88:	01670733          	add	a4,a4,s6
   19a8c:	01170733          	add	a4,a4,a7
   19a90:	406585b3          	sub	a1,a1,t1
   19a94:	00b035b3          	snez	a1,a1
   19a98:	0107b833          	sltu	a6,a5,a6
   19a9c:	00460893          	addi	a7,a2,4 # 10000004 <_gp+0xffe2594>
   19aa0:	04b12623          	sw	a1,76(sp)
   19aa4:	00e80733          	add	a4,a6,a4
   19aa8:	05112823          	sw	a7,80(sp)
   19aac:	20000eb7          	lui	t4,0x20000
   19ab0:	00560593          	addi	a1,a2,5
   19ab4:	80000fb7          	lui	t6,0x80000
   19ab8:	11d76c63          	bltu	a4,t4,19bd0 <__muldf3+0x290>
   19abc:	0017f813          	andi	a6,a5,1
   19ac0:	01f71613          	slli	a2,a4,0x1f
   19ac4:	0017d793          	srli	a5,a5,0x1
   19ac8:	00175713          	srli	a4,a4,0x1
   19acc:	01f69e13          	slli	t3,a3,0x1f
   19ad0:	00155313          	srli	t1,a0,0x1
   19ad4:	0016d893          	srli	a7,a3,0x1
   19ad8:	00058f13          	mv	t5,a1
   19adc:	00080663          	beqz	a6,19ae8 <__muldf3+0x1a8>
   19ae0:	006e6533          	or	a0,t3,t1
   19ae4:	01f8e6b3          	or	a3,a7,t6
   19ae8:	00f667b3          	or	a5,a2,a5
   19aec:	00158593          	addi	a1,a1,1
   19af0:	fdd776e3          	bleu	t4,a4,19abc <__muldf3+0x17c>
   19af4:	05e12823          	sw	t5,80(sp)
   19af8:	0ff7f613          	andi	a2,a5,255
   19afc:	08000593          	li	a1,128
   19b00:	0ab60063          	beq	a2,a1,19ba0 <__muldf3+0x260>
   19b04:	04f12c23          	sw	a5,88(sp)
   19b08:	00300793          	li	a5,3
   19b0c:	04e12e23          	sw	a4,92(sp)
   19b10:	04f12423          	sw	a5,72(sp)
   19b14:	04810513          	addi	a0,sp,72
   19b18:	a19ff0ef          	jal	19530 <__pack_d>
   19b1c:	08c12083          	lw	ra,140(sp)
   19b20:	08812403          	lw	s0,136(sp)
   19b24:	08412483          	lw	s1,132(sp)
   19b28:	08012903          	lw	s2,128(sp)
   19b2c:	07c12983          	lw	s3,124(sp)
   19b30:	07812a03          	lw	s4,120(sp)
   19b34:	07412a83          	lw	s5,116(sp)
   19b38:	07012b03          	lw	s6,112(sp)
   19b3c:	06c12b83          	lw	s7,108(sp)
   19b40:	09010113          	addi	sp,sp,144
   19b44:	00008067          	ret
   19b48:	00200713          	li	a4,2
   19b4c:	06e78c63          	beq	a5,a4,19bc4 <__muldf3+0x284>
   19b50:	03412703          	lw	a4,52(sp)
   19b54:	01c12783          	lw	a5,28(sp)
   19b58:	03010513          	addi	a0,sp,48
   19b5c:	40e787b3          	sub	a5,a5,a4
   19b60:	00f037b3          	snez	a5,a5
   19b64:	02f12a23          	sw	a5,52(sp)
   19b68:	fb1ff06f          	j	19b18 <__muldf3+0x1d8>
   19b6c:	00200793          	li	a5,2
   19b70:	04f70a63          	beq	a4,a5,19bc4 <__muldf3+0x284>
   19b74:	01c12783          	lw	a5,28(sp)
   19b78:	03412703          	lw	a4,52(sp)
   19b7c:	01810513          	addi	a0,sp,24
   19b80:	40e787b3          	sub	a5,a5,a4
   19b84:	00f037b3          	snez	a5,a5
   19b88:	00f12e23          	sw	a5,28(sp)
   19b8c:	f8dff06f          	j	19b18 <__muldf3+0x1d8>
   19b90:	ed26f0e3          	bleu	s2,a3,19a50 <__muldf3+0x110>
   19b94:	00000793          	li	a5,0
   19b98:	00100893          	li	a7,1
   19b9c:	ebdff06f          	j	19a58 <__muldf3+0x118>
   19ba0:	1007f613          	andi	a2,a5,256
   19ba4:	f60610e3          	bnez	a2,19b04 <__muldf3+0x1c4>
   19ba8:	00d566b3          	or	a3,a0,a3
   19bac:	f4068ce3          	beqz	a3,19b04 <__muldf3+0x1c4>
   19bb0:	00b786b3          	add	a3,a5,a1
   19bb4:	00f6b7b3          	sltu	a5,a3,a5
   19bb8:	00e78733          	add	a4,a5,a4
   19bbc:	f006f793          	andi	a5,a3,-256
   19bc0:	f45ff06f          	j	19b04 <__muldf3+0x1c4>
   19bc4:	0001b537          	lui	a0,0x1b
   19bc8:	4e050513          	addi	a0,a0,1248 # 1b4e0 <__thenan_df>
   19bcc:	f4dff06f          	j	19b18 <__muldf3+0x1d8>
   19bd0:	10000e37          	lui	t3,0x10000
   19bd4:	00360593          	addi	a1,a2,3
   19bd8:	f3c770e3          	bleu	t3,a4,19af8 <__muldf3+0x1b8>
   19bdc:	01f7d813          	srli	a6,a5,0x1f
   19be0:	00171613          	slli	a2,a4,0x1
   19be4:	00c86633          	or	a2,a6,a2
   19be8:	01f55893          	srli	a7,a0,0x1f
   19bec:	00169813          	slli	a6,a3,0x1
   19bf0:	00058313          	mv	t1,a1
   19bf4:	00179793          	slli	a5,a5,0x1
   19bf8:	00060713          	mv	a4,a2
   19bfc:	0006d463          	bgez	a3,19c04 <__muldf3+0x2c4>
   19c00:	0017e793          	ori	a5,a5,1
   19c04:	00151513          	slli	a0,a0,0x1
   19c08:	0108e6b3          	or	a3,a7,a6
   19c0c:	fff58593          	addi	a1,a1,-1
   19c10:	fdc666e3          	bltu	a2,t3,19bdc <__muldf3+0x29c>
   19c14:	04612823          	sw	t1,80(sp)
   19c18:	ee1ff06f          	j	19af8 <__muldf3+0x1b8>

00019c1c <__divdf3>:
   19c1c:	fb010113          	addi	sp,sp,-80
   19c20:	00a12023          	sw	a0,0(sp)
   19c24:	00b12223          	sw	a1,4(sp)
   19c28:	00010513          	mv	a0,sp
   19c2c:	01010593          	addi	a1,sp,16
   19c30:	00c12423          	sw	a2,8(sp)
   19c34:	04112623          	sw	ra,76(sp)
   19c38:	00d12623          	sw	a3,12(sp)
   19c3c:	b39ff0ef          	jal	19774 <__unpack_d>
   19c40:	02810593          	addi	a1,sp,40
   19c44:	00810513          	addi	a0,sp,8
   19c48:	b2dff0ef          	jal	19774 <__unpack_d>
   19c4c:	01012603          	lw	a2,16(sp)
   19c50:	00100793          	li	a5,1
   19c54:	0ec7fa63          	bleu	a2,a5,19d48 <__divdf3+0x12c>
   19c58:	02812683          	lw	a3,40(sp)
   19c5c:	14d7fe63          	bleu	a3,a5,19db8 <__divdf3+0x19c>
   19c60:	01412703          	lw	a4,20(sp)
   19c64:	02c12583          	lw	a1,44(sp)
   19c68:	ffe60793          	addi	a5,a2,-2
   19c6c:	ffd7f793          	andi	a5,a5,-3
   19c70:	00b74733          	xor	a4,a4,a1
   19c74:	00e12a23          	sw	a4,20(sp)
   19c78:	0e078263          	beqz	a5,19d5c <__divdf3+0x140>
   19c7c:	00400793          	li	a5,4
   19c80:	0ef68663          	beq	a3,a5,19d6c <__divdf3+0x150>
   19c84:	00200713          	li	a4,2
   19c88:	12e68263          	beq	a3,a4,19dac <__divdf3+0x190>
   19c8c:	03012683          	lw	a3,48(sp)
   19c90:	01812703          	lw	a4,24(sp)
   19c94:	02412783          	lw	a5,36(sp)
   19c98:	03c12883          	lw	a7,60(sp)
   19c9c:	40d70733          	sub	a4,a4,a3
   19ca0:	00e12c23          	sw	a4,24(sp)
   19ca4:	02012683          	lw	a3,32(sp)
   19ca8:	03812283          	lw	t0,56(sp)
   19cac:	0117e663          	bltu	a5,a7,19cb8 <__divdf3+0x9c>
   19cb0:	02f89063          	bne	a7,a5,19cd0 <__divdf3+0xb4>
   19cb4:	0056fe63          	bleu	t0,a3,19cd0 <__divdf3+0xb4>
   19cb8:	01f6d613          	srli	a2,a3,0x1f
   19cbc:	00179793          	slli	a5,a5,0x1
   19cc0:	fff70713          	addi	a4,a4,-1 # 7fffffff <_gp+0x7ffe258f>
   19cc4:	00f667b3          	or	a5,a2,a5
   19cc8:	00169693          	slli	a3,a3,0x1
   19ccc:	00e12c23          	sw	a4,24(sp)
   19cd0:	03d00513          	li	a0,61
   19cd4:	00000e93          	li	t4,0
   19cd8:	00000f13          	li	t5,0
   19cdc:	00000813          	li	a6,0
   19ce0:	100005b7          	lui	a1,0x10000
   19ce4:	01f59e13          	slli	t3,a1,0x1f
   19ce8:	00185313          	srli	t1,a6,0x1
   19cec:	fff50513          	addi	a0,a0,-1
   19cf0:	0317e463          	bltu	a5,a7,19d18 <__divdf3+0xfc>
   19cf4:	40568733          	sub	a4,a3,t0
   19cf8:	00e6b633          	sltu	a2,a3,a4
   19cfc:	41178fb3          	sub	t6,a5,a7
   19d00:	00f89463          	bne	a7,a5,19d08 <__divdf3+0xec>
   19d04:	0056ea63          	bltu	a3,t0,19d18 <__divdf3+0xfc>
   19d08:	00070693          	mv	a3,a4
   19d0c:	40cf87b3          	sub	a5,t6,a2
   19d10:	010eeeb3          	or	t4,t4,a6
   19d14:	00bf6f33          	or	t5,t5,a1
   19d18:	01f6d613          	srli	a2,a3,0x1f
   19d1c:	00179713          	slli	a4,a5,0x1
   19d20:	006e6833          	or	a6,t3,t1
   19d24:	0015d593          	srli	a1,a1,0x1
   19d28:	00e667b3          	or	a5,a2,a4
   19d2c:	00169693          	slli	a3,a3,0x1
   19d30:	fa051ae3          	bnez	a0,19ce4 <__divdf3+0xc8>
   19d34:	0ffef713          	andi	a4,t4,255
   19d38:	08000613          	li	a2,128
   19d3c:	04c70663          	beq	a4,a2,19d88 <__divdf3+0x16c>
   19d40:	03d12023          	sw	t4,32(sp)
   19d44:	03e12223          	sw	t5,36(sp)
   19d48:	01010513          	addi	a0,sp,16
   19d4c:	fe4ff0ef          	jal	19530 <__pack_d>
   19d50:	04c12083          	lw	ra,76(sp)
   19d54:	05010113          	addi	sp,sp,80
   19d58:	00008067          	ret
   19d5c:	fed616e3          	bne	a2,a3,19d48 <__divdf3+0x12c>
   19d60:	0001b537          	lui	a0,0x1b
   19d64:	4e050513          	addi	a0,a0,1248 # 1b4e0 <__thenan_df>
   19d68:	fe5ff06f          	j	19d4c <__divdf3+0x130>
   19d6c:	00000713          	li	a4,0
   19d70:	00000793          	li	a5,0
   19d74:	02e12023          	sw	a4,32(sp)
   19d78:	02f12223          	sw	a5,36(sp)
   19d7c:	00012c23          	sw	zero,24(sp)
   19d80:	01010513          	addi	a0,sp,16
   19d84:	fc9ff06f          	j	19d4c <__divdf3+0x130>
   19d88:	100ef713          	andi	a4,t4,256
   19d8c:	fa071ae3          	bnez	a4,19d40 <__divdf3+0x124>
   19d90:	00f6e7b3          	or	a5,a3,a5
   19d94:	fa0786e3          	beqz	a5,19d40 <__divdf3+0x124>
   19d98:	00ce87b3          	add	a5,t4,a2
   19d9c:	01d7beb3          	sltu	t4,a5,t4
   19da0:	01ee8f33          	add	t5,t4,t5
   19da4:	f007fe93          	andi	t4,a5,-256
   19da8:	f99ff06f          	j	19d40 <__divdf3+0x124>
   19dac:	00f12823          	sw	a5,16(sp)
   19db0:	01010513          	addi	a0,sp,16
   19db4:	f99ff06f          	j	19d4c <__divdf3+0x130>
   19db8:	02810513          	addi	a0,sp,40
   19dbc:	f91ff06f          	j	19d4c <__divdf3+0x130>

00019dc0 <__fpcmp_parts_d>:
   19dc0:	00052703          	lw	a4,0(a0)
   19dc4:	00100793          	li	a5,1
   19dc8:	00050613          	mv	a2,a0
   19dcc:	08e7f263          	bleu	a4,a5,19e50 <__fpcmp_parts_d+0x90>
   19dd0:	0005a683          	lw	a3,0(a1) # 10000000 <_gp+0xffe2590>
   19dd4:	00078513          	mv	a0,a5
   19dd8:	04d7f263          	bleu	a3,a5,19e1c <__fpcmp_parts_d+0x5c>
   19ddc:	00400793          	li	a5,4
   19de0:	04f70c63          	beq	a4,a5,19e38 <__fpcmp_parts_d+0x78>
   19de4:	04f68063          	beq	a3,a5,19e24 <__fpcmp_parts_d+0x64>
   19de8:	00200793          	li	a5,2
   19dec:	02f70a63          	beq	a4,a5,19e20 <__fpcmp_parts_d+0x60>
   19df0:	04f68663          	beq	a3,a5,19e3c <__fpcmp_parts_d+0x7c>
   19df4:	00462783          	lw	a5,4(a2)
   19df8:	0045a703          	lw	a4,4(a1)
   19dfc:	04e78e63          	beq	a5,a4,19e58 <__fpcmp_parts_d+0x98>
   19e00:	00f03533          	snez	a0,a5
   19e04:	40a00533          	neg	a0,a0
   19e08:	00156513          	ori	a0,a0,1
   19e0c:	00008067          	ret
   19e10:	00e69463          	bne	a3,a4,19e18 <__fpcmp_parts_d+0x58>
   19e14:	06b66a63          	bltu	a2,a1,19e88 <__fpcmp_parts_d+0xc8>
   19e18:	00000513          	li	a0,0
   19e1c:	00008067          	ret
   19e20:	fee68ce3          	beq	a3,a4,19e18 <__fpcmp_parts_d+0x58>
   19e24:	0045a503          	lw	a0,4(a1)
   19e28:	00153513          	seqz	a0,a0
   19e2c:	40a00533          	neg	a0,a0
   19e30:	00156513          	ori	a0,a0,1
   19e34:	00008067          	ret
   19e38:	06e68063          	beq	a3,a4,19e98 <__fpcmp_parts_d+0xd8>
   19e3c:	00462503          	lw	a0,4(a2)
   19e40:	00a03533          	snez	a0,a0
   19e44:	40a00533          	neg	a0,a0
   19e48:	00156513          	ori	a0,a0,1
   19e4c:	00008067          	ret
   19e50:	00078513          	mv	a0,a5
   19e54:	00008067          	ret
   19e58:	00862683          	lw	a3,8(a2)
   19e5c:	0085a703          	lw	a4,8(a1)
   19e60:	fad740e3          	blt	a4,a3,19e00 <__fpcmp_parts_d+0x40>
   19e64:	02e6c263          	blt	a3,a4,19e88 <__fpcmp_parts_d+0xc8>
   19e68:	01462703          	lw	a4,20(a2)
   19e6c:	0145a683          	lw	a3,20(a1)
   19e70:	01062603          	lw	a2,16(a2)
   19e74:	0105a583          	lw	a1,16(a1)
   19e78:	f8e6e4e3          	bltu	a3,a4,19e00 <__fpcmp_parts_d+0x40>
   19e7c:	00d71463          	bne	a4,a3,19e84 <__fpcmp_parts_d+0xc4>
   19e80:	f8c5e0e3          	bltu	a1,a2,19e00 <__fpcmp_parts_d+0x40>
   19e84:	f8d776e3          	bleu	a3,a4,19e10 <__fpcmp_parts_d+0x50>
   19e88:	0017b513          	seqz	a0,a5
   19e8c:	40a00533          	neg	a0,a0
   19e90:	00156513          	ori	a0,a0,1
   19e94:	00008067          	ret
   19e98:	0045a783          	lw	a5,4(a1)
   19e9c:	00462503          	lw	a0,4(a2)
   19ea0:	40a78533          	sub	a0,a5,a0
   19ea4:	00008067          	ret

00019ea8 <__cmpdf2>:
   19ea8:	fb010113          	addi	sp,sp,-80
   19eac:	00a12023          	sw	a0,0(sp)
   19eb0:	00b12223          	sw	a1,4(sp)
   19eb4:	00010513          	mv	a0,sp
   19eb8:	01010593          	addi	a1,sp,16
   19ebc:	04112623          	sw	ra,76(sp)
   19ec0:	00c12423          	sw	a2,8(sp)
   19ec4:	00d12623          	sw	a3,12(sp)
   19ec8:	8adff0ef          	jal	19774 <__unpack_d>
   19ecc:	02810593          	addi	a1,sp,40
   19ed0:	00810513          	addi	a0,sp,8
   19ed4:	8a1ff0ef          	jal	19774 <__unpack_d>
   19ed8:	02810593          	addi	a1,sp,40
   19edc:	01010513          	addi	a0,sp,16
   19ee0:	ee1ff0ef          	jal	19dc0 <__fpcmp_parts_d>
   19ee4:	04c12083          	lw	ra,76(sp)
   19ee8:	05010113          	addi	sp,sp,80
   19eec:	00008067          	ret

00019ef0 <__gedf2>:
   19ef0:	fb010113          	addi	sp,sp,-80
   19ef4:	00a12023          	sw	a0,0(sp)
   19ef8:	00b12223          	sw	a1,4(sp)
   19efc:	00010513          	mv	a0,sp
   19f00:	01010593          	addi	a1,sp,16
   19f04:	04112623          	sw	ra,76(sp)
   19f08:	00c12423          	sw	a2,8(sp)
   19f0c:	00d12623          	sw	a3,12(sp)
   19f10:	865ff0ef          	jal	19774 <__unpack_d>
   19f14:	00810513          	addi	a0,sp,8
   19f18:	02810593          	addi	a1,sp,40
   19f1c:	859ff0ef          	jal	19774 <__unpack_d>
   19f20:	01012703          	lw	a4,16(sp)
   19f24:	00100793          	li	a5,1
   19f28:	fff00513          	li	a0,-1
   19f2c:	00e7fe63          	bleu	a4,a5,19f48 <__gedf2+0x58>
   19f30:	02812703          	lw	a4,40(sp)
   19f34:	fff00513          	li	a0,-1
   19f38:	00e7f863          	bleu	a4,a5,19f48 <__gedf2+0x58>
   19f3c:	02810593          	addi	a1,sp,40
   19f40:	01010513          	addi	a0,sp,16
   19f44:	e7dff0ef          	jal	19dc0 <__fpcmp_parts_d>
   19f48:	04c12083          	lw	ra,76(sp)
   19f4c:	05010113          	addi	sp,sp,80
   19f50:	00008067          	ret

00019f54 <__gtdf2>:
   19f54:	f9dff06f          	j	19ef0 <__gedf2>

00019f58 <__ledf2>:
   19f58:	fb010113          	addi	sp,sp,-80
   19f5c:	00a12023          	sw	a0,0(sp)
   19f60:	00b12223          	sw	a1,4(sp)
   19f64:	00010513          	mv	a0,sp
   19f68:	01010593          	addi	a1,sp,16
   19f6c:	04112623          	sw	ra,76(sp)
   19f70:	00c12423          	sw	a2,8(sp)
   19f74:	00d12623          	sw	a3,12(sp)
   19f78:	ffcff0ef          	jal	19774 <__unpack_d>
   19f7c:	00810513          	addi	a0,sp,8
   19f80:	02810593          	addi	a1,sp,40
   19f84:	ff0ff0ef          	jal	19774 <__unpack_d>
   19f88:	01012783          	lw	a5,16(sp)
   19f8c:	00100513          	li	a0,1
   19f90:	00f57c63          	bleu	a5,a0,19fa8 <__ledf2+0x50>
   19f94:	02812783          	lw	a5,40(sp)
   19f98:	00f57863          	bleu	a5,a0,19fa8 <__ledf2+0x50>
   19f9c:	02810593          	addi	a1,sp,40
   19fa0:	01010513          	addi	a0,sp,16
   19fa4:	e1dff0ef          	jal	19dc0 <__fpcmp_parts_d>
   19fa8:	04c12083          	lw	ra,76(sp)
   19fac:	05010113          	addi	sp,sp,80
   19fb0:	00008067          	ret

00019fb4 <__ltdf2>:
   19fb4:	fa5ff06f          	j	19f58 <__ledf2>

00019fb8 <__nedf2>:
   19fb8:	fa1ff06f          	j	19f58 <__ledf2>

00019fbc <__eqdf2>:
   19fbc:	f9dff06f          	j	19f58 <__ledf2>

00019fc0 <__unorddf2>:
   19fc0:	fb010113          	addi	sp,sp,-80
   19fc4:	00a12023          	sw	a0,0(sp)
   19fc8:	00b12223          	sw	a1,4(sp)
   19fcc:	00010513          	mv	a0,sp
   19fd0:	01010593          	addi	a1,sp,16
   19fd4:	04112623          	sw	ra,76(sp)
   19fd8:	00c12423          	sw	a2,8(sp)
   19fdc:	00d12623          	sw	a3,12(sp)
   19fe0:	f94ff0ef          	jal	19774 <__unpack_d>
   19fe4:	00810513          	addi	a0,sp,8
   19fe8:	02810593          	addi	a1,sp,40
   19fec:	f88ff0ef          	jal	19774 <__unpack_d>
   19ff0:	01012783          	lw	a5,16(sp)
   19ff4:	00100513          	li	a0,1
   19ff8:	00f57663          	bleu	a5,a0,1a004 <__unorddf2+0x44>
   19ffc:	02812503          	lw	a0,40(sp)
   1a000:	00253513          	sltiu	a0,a0,2
   1a004:	04c12083          	lw	ra,76(sp)
   1a008:	05010113          	addi	sp,sp,80
   1a00c:	00008067          	ret

0001a010 <__floatsidf>:
   1a010:	fd010113          	addi	sp,sp,-48
   1a014:	01f55793          	srli	a5,a0,0x1f
   1a018:	00300713          	li	a4,3
   1a01c:	02112623          	sw	ra,44(sp)
   1a020:	02812423          	sw	s0,40(sp)
   1a024:	00e12423          	sw	a4,8(sp)
   1a028:	00f12623          	sw	a5,12(sp)
   1a02c:	02051263          	bnez	a0,1a050 <__floatsidf+0x40>
   1a030:	00200793          	li	a5,2
   1a034:	00f12423          	sw	a5,8(sp)
   1a038:	00810513          	addi	a0,sp,8
   1a03c:	cf4ff0ef          	jal	19530 <__pack_d>
   1a040:	02c12083          	lw	ra,44(sp)
   1a044:	02812403          	lw	s0,40(sp)
   1a048:	03010113          	addi	sp,sp,48
   1a04c:	00008067          	ret
   1a050:	02054c63          	bltz	a0,1a088 <__floatsidf+0x78>
   1a054:	00050413          	mv	s0,a0
   1a058:	00040513          	mv	a0,s0
   1a05c:	3e0000ef          	jal	1a43c <__clzsi2>
   1a060:	01d50513          	addi	a0,a0,29
   1a064:	02057793          	andi	a5,a0,32
   1a068:	04078063          	beqz	a5,1a0a8 <__floatsidf+0x98>
   1a06c:	00a41433          	sll	s0,s0,a0
   1a070:	00812e23          	sw	s0,28(sp)
   1a074:	00012c23          	sw	zero,24(sp)
   1a078:	03c00793          	li	a5,60
   1a07c:	40a78533          	sub	a0,a5,a0
   1a080:	00a12823          	sw	a0,16(sp)
   1a084:	fb5ff06f          	j	1a038 <__floatsidf+0x28>
   1a088:	800007b7          	lui	a5,0x80000
   1a08c:	02f50c63          	beq	a0,a5,1a0c4 <__floatsidf+0xb4>
   1a090:	40a00433          	neg	s0,a0
   1a094:	00040513          	mv	a0,s0
   1a098:	3a4000ef          	jal	1a43c <__clzsi2>
   1a09c:	01d50513          	addi	a0,a0,29
   1a0a0:	02057793          	andi	a5,a0,32
   1a0a4:	fc0794e3          	bnez	a5,1a06c <__floatsidf+0x5c>
   1a0a8:	00145793          	srli	a5,s0,0x1
   1a0ac:	fff54713          	not	a4,a0
   1a0b0:	00e7d7b3          	srl	a5,a5,a4
   1a0b4:	00a41433          	sll	s0,s0,a0
   1a0b8:	00f12e23          	sw	a5,28(sp)
   1a0bc:	00812c23          	sw	s0,24(sp)
   1a0c0:	fb9ff06f          	j	1a078 <__floatsidf+0x68>
   1a0c4:	0001d7b7          	lui	a5,0x1d
   1a0c8:	2d87a503          	lw	a0,728(a5) # 1d2d8 <__wctomb+0x50>
   1a0cc:	2dc7a583          	lw	a1,732(a5)
   1a0d0:	f71ff06f          	j	1a040 <__floatsidf+0x30>

0001a0d4 <__floatunsidf>:
   1a0d4:	fd010113          	addi	sp,sp,-48
   1a0d8:	02112623          	sw	ra,44(sp)
   1a0dc:	02812423          	sw	s0,40(sp)
   1a0e0:	00012623          	sw	zero,12(sp)
   1a0e4:	06050663          	beqz	a0,1a150 <__floatunsidf+0x7c>
   1a0e8:	00300793          	li	a5,3
   1a0ec:	00f12423          	sw	a5,8(sp)
   1a0f0:	00050413          	mv	s0,a0
   1a0f4:	348000ef          	jal	1a43c <__clzsi2>
   1a0f8:	01d50513          	addi	a0,a0,29
   1a0fc:	02057793          	andi	a5,a0,32
   1a100:	02078a63          	beqz	a5,1a134 <__floatunsidf+0x60>
   1a104:	00a41433          	sll	s0,s0,a0
   1a108:	00812e23          	sw	s0,28(sp)
   1a10c:	00012c23          	sw	zero,24(sp)
   1a110:	03c00793          	li	a5,60
   1a114:	40a78533          	sub	a0,a5,a0
   1a118:	00a12823          	sw	a0,16(sp)
   1a11c:	00810513          	addi	a0,sp,8
   1a120:	c10ff0ef          	jal	19530 <__pack_d>
   1a124:	02c12083          	lw	ra,44(sp)
   1a128:	02812403          	lw	s0,40(sp)
   1a12c:	03010113          	addi	sp,sp,48
   1a130:	00008067          	ret
   1a134:	00145793          	srli	a5,s0,0x1
   1a138:	fff54713          	not	a4,a0
   1a13c:	00e7d7b3          	srl	a5,a5,a4
   1a140:	00a41433          	sll	s0,s0,a0
   1a144:	00f12e23          	sw	a5,28(sp)
   1a148:	00812c23          	sw	s0,24(sp)
   1a14c:	fc5ff06f          	j	1a110 <__floatunsidf+0x3c>
   1a150:	00200793          	li	a5,2
   1a154:	00f12423          	sw	a5,8(sp)
   1a158:	fc5ff06f          	j	1a11c <__floatunsidf+0x48>

0001a15c <__fixdfsi>:
   1a15c:	fd010113          	addi	sp,sp,-48
   1a160:	00a12023          	sw	a0,0(sp)
   1a164:	00b12223          	sw	a1,4(sp)
   1a168:	00010513          	mv	a0,sp
   1a16c:	00810593          	addi	a1,sp,8
   1a170:	02112623          	sw	ra,44(sp)
   1a174:	e00ff0ef          	jal	19774 <__unpack_d>
   1a178:	00812783          	lw	a5,8(sp)
   1a17c:	00200713          	li	a4,2
   1a180:	06f77463          	bleu	a5,a4,1a1e8 <__fixdfsi+0x8c>
   1a184:	00400713          	li	a4,4
   1a188:	00e78a63          	beq	a5,a4,1a19c <__fixdfsi+0x40>
   1a18c:	01012783          	lw	a5,16(sp)
   1a190:	0407cc63          	bltz	a5,1a1e8 <__fixdfsi+0x8c>
   1a194:	01e00713          	li	a4,30
   1a198:	02f75063          	ble	a5,a4,1a1b8 <__fixdfsi+0x5c>
   1a19c:	00c12783          	lw	a5,12(sp)
   1a1a0:	80000537          	lui	a0,0x80000
   1a1a4:	00079463          	bnez	a5,1a1ac <__fixdfsi+0x50>
   1a1a8:	fff54513          	not	a0,a0
   1a1ac:	02c12083          	lw	ra,44(sp)
   1a1b0:	03010113          	addi	sp,sp,48
   1a1b4:	00008067          	ret
   1a1b8:	03c00513          	li	a0,60
   1a1bc:	40f50533          	sub	a0,a0,a5
   1a1c0:	02057793          	andi	a5,a0,32
   1a1c4:	02078a63          	beqz	a5,1a1f8 <__fixdfsi+0x9c>
   1a1c8:	01c12783          	lw	a5,28(sp)
   1a1cc:	00a7d533          	srl	a0,a5,a0
   1a1d0:	00c12783          	lw	a5,12(sp)
   1a1d4:	fc078ce3          	beqz	a5,1a1ac <__fixdfsi+0x50>
   1a1d8:	02c12083          	lw	ra,44(sp)
   1a1dc:	40a00533          	neg	a0,a0
   1a1e0:	03010113          	addi	sp,sp,48
   1a1e4:	00008067          	ret
   1a1e8:	02c12083          	lw	ra,44(sp)
   1a1ec:	00000513          	li	a0,0
   1a1f0:	03010113          	addi	sp,sp,48
   1a1f4:	00008067          	ret
   1a1f8:	01c12783          	lw	a5,28(sp)
   1a1fc:	fff54713          	not	a4,a0
   1a200:	00179793          	slli	a5,a5,0x1
   1a204:	00e797b3          	sll	a5,a5,a4
   1a208:	01812703          	lw	a4,24(sp)
   1a20c:	00a75533          	srl	a0,a4,a0
   1a210:	00a7e533          	or	a0,a5,a0
   1a214:	fbdff06f          	j	1a1d0 <__fixdfsi+0x74>

0001a218 <__negdf2>:
   1a218:	fd010113          	addi	sp,sp,-48
   1a21c:	00a12023          	sw	a0,0(sp)
   1a220:	00b12223          	sw	a1,4(sp)
   1a224:	00010513          	mv	a0,sp
   1a228:	00810593          	addi	a1,sp,8
   1a22c:	02112623          	sw	ra,44(sp)
   1a230:	d44ff0ef          	jal	19774 <__unpack_d>
   1a234:	00c12783          	lw	a5,12(sp)
   1a238:	00810513          	addi	a0,sp,8
   1a23c:	0017b793          	seqz	a5,a5
   1a240:	00f12623          	sw	a5,12(sp)
   1a244:	aecff0ef          	jal	19530 <__pack_d>
   1a248:	02c12083          	lw	ra,44(sp)
   1a24c:	03010113          	addi	sp,sp,48
   1a250:	00008067          	ret

0001a254 <__make_dp>:
   1a254:	fd010113          	addi	sp,sp,-48
   1a258:	00a12423          	sw	a0,8(sp)
   1a25c:	00810513          	addi	a0,sp,8
   1a260:	02112623          	sw	ra,44(sp)
   1a264:	00b12623          	sw	a1,12(sp)
   1a268:	00c12823          	sw	a2,16(sp)
   1a26c:	00e12c23          	sw	a4,24(sp)
   1a270:	00f12e23          	sw	a5,28(sp)
   1a274:	abcff0ef          	jal	19530 <__pack_d>
   1a278:	02c12083          	lw	ra,44(sp)
   1a27c:	03010113          	addi	sp,sp,48
   1a280:	00008067          	ret

0001a284 <__truncdfsf2>:
   1a284:	fd010113          	addi	sp,sp,-48
   1a288:	00a12023          	sw	a0,0(sp)
   1a28c:	00b12223          	sw	a1,4(sp)
   1a290:	00010513          	mv	a0,sp
   1a294:	00810593          	addi	a1,sp,8
   1a298:	02112623          	sw	ra,44(sp)
   1a29c:	cd8ff0ef          	jal	19774 <__unpack_d>
   1a2a0:	01812783          	lw	a5,24(sp)
   1a2a4:	01c12683          	lw	a3,28(sp)
   1a2a8:	01e7d713          	srli	a4,a5,0x1e
   1a2ac:	00269693          	slli	a3,a3,0x2
   1a2b0:	00e6e6b3          	or	a3,a3,a4
   1a2b4:	00279713          	slli	a4,a5,0x2
   1a2b8:	00070463          	beqz	a4,1a2c0 <__truncdfsf2+0x3c>
   1a2bc:	0016e693          	ori	a3,a3,1
   1a2c0:	01012603          	lw	a2,16(sp)
   1a2c4:	00c12583          	lw	a1,12(sp)
   1a2c8:	00812503          	lw	a0,8(sp)
   1a2cc:	55d000ef          	jal	1b028 <__make_fp>
   1a2d0:	02c12083          	lw	ra,44(sp)
   1a2d4:	03010113          	addi	sp,sp,48
   1a2d8:	00008067          	ret

0001a2dc <__mulsi3>:
   1a2dc:	00050613          	mv	a2,a0
   1a2e0:	00000513          	li	a0,0
   1a2e4:	0015f693          	andi	a3,a1,1
   1a2e8:	00068463          	beqz	a3,1a2f0 <__mulsi3+0x14>
   1a2ec:	00c50533          	add	a0,a0,a2
   1a2f0:	0015d593          	srli	a1,a1,0x1
   1a2f4:	00161613          	slli	a2,a2,0x1
   1a2f8:	fe0596e3          	bnez	a1,1a2e4 <__mulsi3+0x8>
   1a2fc:	00008067          	ret

0001a300 <__muldi3>:
   1a300:	00008293          	mv	t0,ra
   1a304:	00050f13          	mv	t5,a0
   1a308:	00058513          	mv	a0,a1
   1a30c:	00068f93          	mv	t6,a3
   1a310:	000f0593          	mv	a1,t5
   1a314:	00060713          	mv	a4,a2
   1a318:	00000793          	li	a5,0
   1a31c:	00000393          	li	t2,0
   1a320:	00000e93          	li	t4,0
   1a324:	00b38833          	add	a6,t2,a1
   1a328:	00177e13          	andi	t3,a4,1
   1a32c:	00179893          	slli	a7,a5,0x1
   1a330:	0005a313          	slti	t1,a1,0
   1a334:	00175713          	srli	a4,a4,0x1
   1a338:	00fe87b3          	add	a5,t4,a5
   1a33c:	000e0863          	beqz	t3,1a34c <__muldi3+0x4c>
   1a340:	00783e33          	sltu	t3,a6,t2
   1a344:	00080393          	mv	t2,a6
   1a348:	00fe0eb3          	add	t4,t3,a5
   1a34c:	00159593          	slli	a1,a1,0x1
   1a350:	011367b3          	or	a5,t1,a7
   1a354:	fc0718e3          	bnez	a4,1a324 <__muldi3+0x24>
   1a358:	00050863          	beqz	a0,1a368 <__muldi3+0x68>
   1a35c:	00060593          	mv	a1,a2
   1a360:	f7dff0ef          	jal	1a2dc <__mulsi3>
   1a364:	00ae8eb3          	add	t4,t4,a0
   1a368:	000f8a63          	beqz	t6,1a37c <__muldi3+0x7c>
   1a36c:	000f8593          	mv	a1,t6
   1a370:	000f0513          	mv	a0,t5
   1a374:	f69ff0ef          	jal	1a2dc <__mulsi3>
   1a378:	00ae8eb3          	add	t4,t4,a0
   1a37c:	00038513          	mv	a0,t2
   1a380:	000e8593          	mv	a1,t4
   1a384:	00028067          	jr	t0

0001a388 <__divsi3>:
   1a388:	06054063          	bltz	a0,1a3e8 <__umodsi3+0x10>
   1a38c:	0605c663          	bltz	a1,1a3f8 <__umodsi3+0x20>

0001a390 <__udivsi3>:
   1a390:	00058613          	mv	a2,a1
   1a394:	00050593          	mv	a1,a0
   1a398:	fff00513          	li	a0,-1
   1a39c:	02060c63          	beqz	a2,1a3d4 <__udivsi3+0x44>
   1a3a0:	00100693          	li	a3,1
   1a3a4:	00b67a63          	bleu	a1,a2,1a3b8 <__udivsi3+0x28>
   1a3a8:	00c05863          	blez	a2,1a3b8 <__udivsi3+0x28>
   1a3ac:	00161613          	slli	a2,a2,0x1
   1a3b0:	00169693          	slli	a3,a3,0x1
   1a3b4:	feb66ae3          	bltu	a2,a1,1a3a8 <__udivsi3+0x18>
   1a3b8:	00000513          	li	a0,0
   1a3bc:	00c5e663          	bltu	a1,a2,1a3c8 <__udivsi3+0x38>
   1a3c0:	40c585b3          	sub	a1,a1,a2
   1a3c4:	00d56533          	or	a0,a0,a3
   1a3c8:	0016d693          	srli	a3,a3,0x1
   1a3cc:	00165613          	srli	a2,a2,0x1
   1a3d0:	fe0696e3          	bnez	a3,1a3bc <__udivsi3+0x2c>
   1a3d4:	00008067          	ret

0001a3d8 <__umodsi3>:
   1a3d8:	00008293          	mv	t0,ra
   1a3dc:	fb5ff0ef          	jal	1a390 <__udivsi3>
   1a3e0:	00058513          	mv	a0,a1
   1a3e4:	00028067          	jr	t0
   1a3e8:	40a00533          	neg	a0,a0
   1a3ec:	0005d863          	bgez	a1,1a3fc <__umodsi3+0x24>
   1a3f0:	40b005b3          	neg	a1,a1
   1a3f4:	f95ff06f          	j	1a388 <__divsi3>
   1a3f8:	40b005b3          	neg	a1,a1
   1a3fc:	00008293          	mv	t0,ra
   1a400:	f89ff0ef          	jal	1a388 <__divsi3>
   1a404:	40a00533          	neg	a0,a0
   1a408:	00028067          	jr	t0

0001a40c <__modsi3>:
   1a40c:	00008293          	mv	t0,ra
   1a410:	0005ca63          	bltz	a1,1a424 <__modsi3+0x18>
   1a414:	00054c63          	bltz	a0,1a42c <__modsi3+0x20>
   1a418:	f79ff0ef          	jal	1a390 <__udivsi3>
   1a41c:	00058513          	mv	a0,a1
   1a420:	00028067          	jr	t0
   1a424:	40b005b3          	neg	a1,a1
   1a428:	fe0558e3          	bgez	a0,1a418 <__modsi3+0xc>
   1a42c:	40a00533          	neg	a0,a0
   1a430:	f61ff0ef          	jal	1a390 <__udivsi3>
   1a434:	40b00533          	neg	a0,a1
   1a438:	00028067          	jr	t0

0001a43c <__clzsi2>:
   1a43c:	000107b7          	lui	a5,0x10
   1a440:	02f57c63          	bleu	a5,a0,1a478 <__clzsi2+0x3c>
   1a444:	0ff00713          	li	a4,255
   1a448:	01800693          	li	a3,24
   1a44c:	00800793          	li	a5,8
   1a450:	00a76663          	bltu	a4,a0,1a45c <__clzsi2+0x20>
   1a454:	02000693          	li	a3,32
   1a458:	00000793          	li	a5,0
   1a45c:	0001b737          	lui	a4,0x1b
   1a460:	00f557b3          	srl	a5,a0,a5
   1a464:	50870713          	addi	a4,a4,1288 # 1b508 <__clz_tab>
   1a468:	00e787b3          	add	a5,a5,a4
   1a46c:	0007c503          	lbu	a0,0(a5) # 10000 <_ftext>
   1a470:	40a68533          	sub	a0,a3,a0
   1a474:	00008067          	ret
   1a478:	01000737          	lui	a4,0x1000
   1a47c:	00800693          	li	a3,8
   1a480:	01800793          	li	a5,24
   1a484:	fce57ce3          	bleu	a4,a0,1a45c <__clzsi2+0x20>
   1a488:	01000693          	li	a3,16
   1a48c:	00068793          	mv	a5,a3
   1a490:	0001b737          	lui	a4,0x1b
   1a494:	00f557b3          	srl	a5,a0,a5
   1a498:	50870713          	addi	a4,a4,1288 # 1b508 <__clz_tab>
   1a49c:	00e787b3          	add	a5,a5,a4
   1a4a0:	0007c503          	lbu	a0,0(a5)
   1a4a4:	40a68533          	sub	a0,a3,a0
   1a4a8:	00008067          	ret

0001a4ac <_fpadd_parts>:
   1a4ac:	00052783          	lw	a5,0(a0) # 80000000 <_gp+0x7ffe2590>
   1a4b0:	00100713          	li	a4,1
   1a4b4:	0ef77263          	bleu	a5,a4,1a598 <_fpadd_parts+0xec>
   1a4b8:	0005a683          	lw	a3,0(a1)
   1a4bc:	0cd77c63          	bleu	a3,a4,1a594 <_fpadd_parts+0xe8>
   1a4c0:	00400813          	li	a6,4
   1a4c4:	15078c63          	beq	a5,a6,1a61c <_fpadd_parts+0x170>
   1a4c8:	0d068663          	beq	a3,a6,1a594 <_fpadd_parts+0xe8>
   1a4cc:	00200813          	li	a6,2
   1a4d0:	11068463          	beq	a3,a6,1a5d8 <_fpadd_parts+0x12c>
   1a4d4:	0d078063          	beq	a5,a6,1a594 <_fpadd_parts+0xe8>
   1a4d8:	00852303          	lw	t1,8(a0)
   1a4dc:	0085a783          	lw	a5,8(a1)
   1a4e0:	01f00e93          	li	t4,31
   1a4e4:	00c52e03          	lw	t3,12(a0)
   1a4e8:	40f306b3          	sub	a3,t1,a5
   1a4ec:	41d6d8b3          	sra	a7,a3,t4
   1a4f0:	00d8c833          	xor	a6,a7,a3
   1a4f4:	41180833          	sub	a6,a6,a7
   1a4f8:	00c5a883          	lw	a7,12(a1)
   1a4fc:	0b0ed063          	ble	a6,t4,1a59c <_fpadd_parts+0xf0>
   1a500:	1067d863          	ble	t1,a5,1a610 <_fpadd_parts+0x164>
   1a504:	00000893          	li	a7,0
   1a508:	00452703          	lw	a4,4(a0)
   1a50c:	0045a783          	lw	a5,4(a1)
   1a510:	0af70a63          	beq	a4,a5,1a5c4 <_fpadd_parts+0x118>
   1a514:	411e07b3          	sub	a5,t3,a7
   1a518:	00070463          	beqz	a4,1a520 <_fpadd_parts+0x74>
   1a51c:	41c887b3          	sub	a5,a7,t3
   1a520:	1007cc63          	bltz	a5,1a638 <_fpadd_parts+0x18c>
   1a524:	00062223          	sw	zero,4(a2)
   1a528:	00662423          	sw	t1,8(a2)
   1a52c:	00f62623          	sw	a5,12(a2)
   1a530:	400005b7          	lui	a1,0x40000
   1a534:	fff78713          	addi	a4,a5,-1
   1a538:	ffe58593          	addi	a1,a1,-2 # 3ffffffe <_gp+0x3ffe258e>
   1a53c:	02e5e463          	bltu	a1,a4,1a564 <_fpadd_parts+0xb8>
   1a540:	00862703          	lw	a4,8(a2)
   1a544:	fff70713          	addi	a4,a4,-1
   1a548:	00179793          	slli	a5,a5,0x1
   1a54c:	fff78693          	addi	a3,a5,-1
   1a550:	00070513          	mv	a0,a4
   1a554:	fff70713          	addi	a4,a4,-1
   1a558:	fed5f8e3          	bleu	a3,a1,1a548 <_fpadd_parts+0x9c>
   1a55c:	00f62623          	sw	a5,12(a2)
   1a560:	00a62423          	sw	a0,8(a2)
   1a564:	00300713          	li	a4,3
   1a568:	00e62023          	sw	a4,0(a2)
   1a56c:	00060513          	mv	a0,a2
   1a570:	0207d463          	bgez	a5,1a598 <_fpadd_parts+0xec>
   1a574:	00862703          	lw	a4,8(a2)
   1a578:	0017d693          	srli	a3,a5,0x1
   1a57c:	0017f793          	andi	a5,a5,1
   1a580:	00f6e7b3          	or	a5,a3,a5
   1a584:	00170713          	addi	a4,a4,1
   1a588:	00f62623          	sw	a5,12(a2)
   1a58c:	00e62423          	sw	a4,8(a2)
   1a590:	00008067          	ret
   1a594:	00058513          	mv	a0,a1
   1a598:	00008067          	ret
   1a59c:	0ad05a63          	blez	a3,1a650 <_fpadd_parts+0x1a4>
   1a5a0:	01071733          	sll	a4,a4,a6
   1a5a4:	fff70713          	addi	a4,a4,-1
   1a5a8:	01177733          	and	a4,a4,a7
   1a5ac:	0108d7b3          	srl	a5,a7,a6
   1a5b0:	00e03733          	snez	a4,a4
   1a5b4:	00e7e8b3          	or	a7,a5,a4
   1a5b8:	00452703          	lw	a4,4(a0)
   1a5bc:	0045a783          	lw	a5,4(a1)
   1a5c0:	f4f71ae3          	bne	a4,a5,1a514 <_fpadd_parts+0x68>
   1a5c4:	011e07b3          	add	a5,t3,a7
   1a5c8:	00e62223          	sw	a4,4(a2)
   1a5cc:	00662423          	sw	t1,8(a2)
   1a5d0:	00f62623          	sw	a5,12(a2)
   1a5d4:	f91ff06f          	j	1a564 <_fpadd_parts+0xb8>
   1a5d8:	fcd790e3          	bne	a5,a3,1a598 <_fpadd_parts+0xec>
   1a5dc:	00f62023          	sw	a5,0(a2)
   1a5e0:	00452783          	lw	a5,4(a0)
   1a5e4:	00f62223          	sw	a5,4(a2)
   1a5e8:	00852703          	lw	a4,8(a0)
   1a5ec:	00452783          	lw	a5,4(a0)
   1a5f0:	0045a683          	lw	a3,4(a1)
   1a5f4:	00e62423          	sw	a4,8(a2)
   1a5f8:	00c52703          	lw	a4,12(a0)
   1a5fc:	00d7f7b3          	and	a5,a5,a3
   1a600:	00f62223          	sw	a5,4(a2)
   1a604:	00e62623          	sw	a4,12(a2)
   1a608:	00060513          	mv	a0,a2
   1a60c:	00008067          	ret
   1a610:	00078313          	mv	t1,a5
   1a614:	00000e13          	li	t3,0
   1a618:	ef1ff06f          	j	1a508 <_fpadd_parts+0x5c>
   1a61c:	f6f69ee3          	bne	a3,a5,1a598 <_fpadd_parts+0xec>
   1a620:	00452703          	lw	a4,4(a0)
   1a624:	0045a783          	lw	a5,4(a1)
   1a628:	f6f708e3          	beq	a4,a5,1a598 <_fpadd_parts+0xec>
   1a62c:	0001b537          	lui	a0,0x1b
   1a630:	4f850513          	addi	a0,a0,1272 # 1b4f8 <__thenan_sf>
   1a634:	00008067          	ret
   1a638:	40f007b3          	neg	a5,a5
   1a63c:	00100713          	li	a4,1
   1a640:	00e62223          	sw	a4,4(a2)
   1a644:	00662423          	sw	t1,8(a2)
   1a648:	00f62623          	sw	a5,12(a2)
   1a64c:	ee5ff06f          	j	1a530 <_fpadd_parts+0x84>
   1a650:	ea068ce3          	beqz	a3,1a508 <_fpadd_parts+0x5c>
   1a654:	010716b3          	sll	a3,a4,a6
   1a658:	fff68693          	addi	a3,a3,-1
   1a65c:	01c6f6b3          	and	a3,a3,t3
   1a660:	010e57b3          	srl	a5,t3,a6
   1a664:	00d036b3          	snez	a3,a3
   1a668:	01030333          	add	t1,t1,a6
   1a66c:	00d7ee33          	or	t3,a5,a3
   1a670:	e99ff06f          	j	1a508 <_fpadd_parts+0x5c>

0001a674 <__pack_f>:
   1a674:	00052703          	lw	a4,0(a0)
   1a678:	00100613          	li	a2,1
   1a67c:	00c52783          	lw	a5,12(a0)
   1a680:	00452683          	lw	a3,4(a0)
   1a684:	08e67a63          	bleu	a4,a2,1a718 <__pack_f+0xa4>
   1a688:	00400593          	li	a1,4
   1a68c:	08b70063          	beq	a4,a1,1a70c <__pack_f+0x98>
   1a690:	00200593          	li	a1,2
   1a694:	04b70263          	beq	a4,a1,1a6d8 <__pack_f+0x64>
   1a698:	04078063          	beqz	a5,1a6d8 <__pack_f+0x64>
   1a69c:	00852703          	lw	a4,8(a0)
   1a6a0:	f8200593          	li	a1,-126
   1a6a4:	0ab74c63          	blt	a4,a1,1a75c <__pack_f+0xe8>
   1a6a8:	07f00613          	li	a2,127
   1a6ac:	06e64063          	blt	a2,a4,1a70c <__pack_f+0x98>
   1a6b0:	00c7f633          	and	a2,a5,a2
   1a6b4:	04000593          	li	a1,64
   1a6b8:	08b60463          	beq	a2,a1,1a740 <__pack_f+0xcc>
   1a6bc:	03f78793          	addi	a5,a5,63
   1a6c0:	0807c863          	bltz	a5,1a750 <__pack_f+0xdc>
   1a6c4:	07f70713          	addi	a4,a4,127
   1a6c8:	00279793          	slli	a5,a5,0x2
   1a6cc:	0097d793          	srli	a5,a5,0x9
   1a6d0:	0ff77713          	andi	a4,a4,255
   1a6d4:	00c0006f          	j	1a6e0 <__pack_f+0x6c>
   1a6d8:	00000713          	li	a4,0
   1a6dc:	00000793          	li	a5,0
   1a6e0:	00800537          	lui	a0,0x800
   1a6e4:	fff50513          	addi	a0,a0,-1 # 7fffff <_gp+0x7e258f>
   1a6e8:	00a7f7b3          	and	a5,a5,a0
   1a6ec:	80800537          	lui	a0,0x80800
   1a6f0:	fff50513          	addi	a0,a0,-1 # 807fffff <_gp+0x807e258f>
   1a6f4:	01771713          	slli	a4,a4,0x17
   1a6f8:	00a7f533          	and	a0,a5,a0
   1a6fc:	00e56533          	or	a0,a0,a4
   1a700:	01f69793          	slli	a5,a3,0x1f
   1a704:	00f56533          	or	a0,a0,a5
   1a708:	00008067          	ret
   1a70c:	0ff00713          	li	a4,255
   1a710:	00000793          	li	a5,0
   1a714:	fcdff06f          	j	1a6e0 <__pack_f+0x6c>
   1a718:	00400737          	lui	a4,0x400
   1a71c:	fff70613          	addi	a2,a4,-1 # 3fffff <_gp+0x3e258f>
   1a720:	0077d793          	srli	a5,a5,0x7
   1a724:	00c7f7b3          	and	a5,a5,a2
   1a728:	00e7e7b3          	or	a5,a5,a4
   1a72c:	00800737          	lui	a4,0x800
   1a730:	fff70713          	addi	a4,a4,-1 # 7fffff <_gp+0x7e258f>
   1a734:	00e7f7b3          	and	a5,a5,a4
   1a738:	0ff00713          	li	a4,255
   1a73c:	fa5ff06f          	j	1a6e0 <__pack_f+0x6c>
   1a740:	0807f613          	andi	a2,a5,128
   1a744:	f6060ee3          	beqz	a2,1a6c0 <__pack_f+0x4c>
   1a748:	00b787b3          	add	a5,a5,a1
   1a74c:	f75ff06f          	j	1a6c0 <__pack_f+0x4c>
   1a750:	0017d793          	srli	a5,a5,0x1
   1a754:	08070713          	addi	a4,a4,128
   1a758:	f71ff06f          	j	1a6c8 <__pack_f+0x54>
   1a75c:	40e585b3          	sub	a1,a1,a4
   1a760:	01900713          	li	a4,25
   1a764:	f6b74ae3          	blt	a4,a1,1a6d8 <__pack_f+0x64>
   1a768:	00b61733          	sll	a4,a2,a1
   1a76c:	fff70713          	addi	a4,a4,-1
   1a770:	00f77733          	and	a4,a4,a5
   1a774:	00e03733          	snez	a4,a4
   1a778:	00b7d7b3          	srl	a5,a5,a1
   1a77c:	00e7e7b3          	or	a5,a5,a4
   1a780:	07f7f613          	andi	a2,a5,127
   1a784:	04000713          	li	a4,64
   1a788:	02e61463          	bne	a2,a4,1a7b0 <__pack_f+0x13c>
   1a78c:	0807f713          	andi	a4,a5,128
   1a790:	00070463          	beqz	a4,1a798 <__pack_f+0x124>
   1a794:	04078793          	addi	a5,a5,64
   1a798:	40000737          	lui	a4,0x40000
   1a79c:	00e7b733          	sltu	a4,a5,a4
   1a7a0:	00279613          	slli	a2,a5,0x2
   1a7a4:	00965793          	srli	a5,a2,0x9
   1a7a8:	00174713          	xori	a4,a4,1
   1a7ac:	f35ff06f          	j	1a6e0 <__pack_f+0x6c>
   1a7b0:	03f78793          	addi	a5,a5,63
   1a7b4:	fe5ff06f          	j	1a798 <__pack_f+0x124>

0001a7b8 <__unpack_f>:
   1a7b8:	00354683          	lbu	a3,3(a0)
   1a7bc:	00255703          	lhu	a4,2(a0)
   1a7c0:	00052783          	lw	a5,0(a0)
   1a7c4:	0076d693          	srli	a3,a3,0x7
   1a7c8:	00775713          	srli	a4,a4,0x7
   1a7cc:	00d5a223          	sw	a3,4(a1)
   1a7d0:	008006b7          	lui	a3,0x800
   1a7d4:	fff68693          	addi	a3,a3,-1 # 7fffff <_gp+0x7e258f>
   1a7d8:	0ff77713          	andi	a4,a4,255
   1a7dc:	00d7f7b3          	and	a5,a5,a3
   1a7e0:	02071c63          	bnez	a4,1a818 <__unpack_f+0x60>
   1a7e4:	06078063          	beqz	a5,1a844 <__unpack_f+0x8c>
   1a7e8:	00300713          	li	a4,3
   1a7ec:	00e5a023          	sw	a4,0(a1)
   1a7f0:	00779793          	slli	a5,a5,0x7
   1a7f4:	f8100713          	li	a4,-127
   1a7f8:	40000637          	lui	a2,0x40000
   1a7fc:	00179793          	slli	a5,a5,0x1
   1a800:	00070693          	mv	a3,a4
   1a804:	fff70713          	addi	a4,a4,-1 # 3fffffff <_gp+0x3ffe258f>
   1a808:	fec7eae3          	bltu	a5,a2,1a7fc <__unpack_f+0x44>
   1a80c:	00d5a423          	sw	a3,8(a1)
   1a810:	00f5a623          	sw	a5,12(a1)
   1a814:	00008067          	ret
   1a818:	0ff00693          	li	a3,255
   1a81c:	02d70a63          	beq	a4,a3,1a850 <__unpack_f+0x98>
   1a820:	f8170713          	addi	a4,a4,-127
   1a824:	00779793          	slli	a5,a5,0x7
   1a828:	400006b7          	lui	a3,0x40000
   1a82c:	00d7e7b3          	or	a5,a5,a3
   1a830:	00e5a423          	sw	a4,8(a1)
   1a834:	00300713          	li	a4,3
   1a838:	00e5a023          	sw	a4,0(a1)
   1a83c:	00f5a623          	sw	a5,12(a1)
   1a840:	00008067          	ret
   1a844:	00200793          	li	a5,2
   1a848:	00f5a023          	sw	a5,0(a1)
   1a84c:	00008067          	ret
   1a850:	02078663          	beqz	a5,1a87c <__unpack_f+0xc4>
   1a854:	00979713          	slli	a4,a5,0x9
   1a858:	02075863          	bgez	a4,1a888 <__unpack_f+0xd0>
   1a85c:	00100713          	li	a4,1
   1a860:	00e5a023          	sw	a4,0(a1)
   1a864:	e0000737          	lui	a4,0xe0000
   1a868:	00779793          	slli	a5,a5,0x7
   1a86c:	f8070713          	addi	a4,a4,-128 # dfffff80 <_gp+0xdffe2510>
   1a870:	00e7f7b3          	and	a5,a5,a4
   1a874:	00f5a623          	sw	a5,12(a1)
   1a878:	00008067          	ret
   1a87c:	00400793          	li	a5,4
   1a880:	00f5a023          	sw	a5,0(a1)
   1a884:	00008067          	ret
   1a888:	0005a023          	sw	zero,0(a1)
   1a88c:	fd9ff06f          	j	1a864 <__unpack_f+0xac>

0001a890 <__addsf3>:
   1a890:	fb010113          	addi	sp,sp,-80
   1a894:	00a12423          	sw	a0,8(sp)
   1a898:	00b12623          	sw	a1,12(sp)
   1a89c:	00810513          	addi	a0,sp,8
   1a8a0:	01010593          	addi	a1,sp,16
   1a8a4:	04112623          	sw	ra,76(sp)
   1a8a8:	f11ff0ef          	jal	1a7b8 <__unpack_f>
   1a8ac:	02010593          	addi	a1,sp,32
   1a8b0:	00c10513          	addi	a0,sp,12
   1a8b4:	f05ff0ef          	jal	1a7b8 <__unpack_f>
   1a8b8:	03010613          	addi	a2,sp,48
   1a8bc:	02010593          	addi	a1,sp,32
   1a8c0:	01010513          	addi	a0,sp,16
   1a8c4:	be9ff0ef          	jal	1a4ac <_fpadd_parts>
   1a8c8:	dadff0ef          	jal	1a674 <__pack_f>
   1a8cc:	04c12083          	lw	ra,76(sp)
   1a8d0:	05010113          	addi	sp,sp,80
   1a8d4:	00008067          	ret

0001a8d8 <__subsf3>:
   1a8d8:	fb010113          	addi	sp,sp,-80
   1a8dc:	00a12423          	sw	a0,8(sp)
   1a8e0:	00b12623          	sw	a1,12(sp)
   1a8e4:	00810513          	addi	a0,sp,8
   1a8e8:	01010593          	addi	a1,sp,16
   1a8ec:	04112623          	sw	ra,76(sp)
   1a8f0:	ec9ff0ef          	jal	1a7b8 <__unpack_f>
   1a8f4:	02010593          	addi	a1,sp,32
   1a8f8:	00c10513          	addi	a0,sp,12
   1a8fc:	ebdff0ef          	jal	1a7b8 <__unpack_f>
   1a900:	02412783          	lw	a5,36(sp)
   1a904:	03010613          	addi	a2,sp,48
   1a908:	02010593          	addi	a1,sp,32
   1a90c:	0017c793          	xori	a5,a5,1
   1a910:	01010513          	addi	a0,sp,16
   1a914:	02f12223          	sw	a5,36(sp)
   1a918:	b95ff0ef          	jal	1a4ac <_fpadd_parts>
   1a91c:	d59ff0ef          	jal	1a674 <__pack_f>
   1a920:	04c12083          	lw	ra,76(sp)
   1a924:	05010113          	addi	sp,sp,80
   1a928:	00008067          	ret

0001a92c <__mulsf3>:
   1a92c:	fb010113          	addi	sp,sp,-80
   1a930:	00a12423          	sw	a0,8(sp)
   1a934:	00b12623          	sw	a1,12(sp)
   1a938:	00810513          	addi	a0,sp,8
   1a93c:	01010593          	addi	a1,sp,16
   1a940:	04112623          	sw	ra,76(sp)
   1a944:	e75ff0ef          	jal	1a7b8 <__unpack_f>
   1a948:	02010593          	addi	a1,sp,32
   1a94c:	00c10513          	addi	a0,sp,12
   1a950:	e69ff0ef          	jal	1a7b8 <__unpack_f>
   1a954:	01012783          	lw	a5,16(sp)
   1a958:	00100693          	li	a3,1
   1a95c:	0ef6fa63          	bleu	a5,a3,1aa50 <__mulsf3+0x124>
   1a960:	02012703          	lw	a4,32(sp)
   1a964:	0ae6fe63          	bleu	a4,a3,1aa20 <__mulsf3+0xf4>
   1a968:	00400693          	li	a3,4
   1a96c:	0cd78e63          	beq	a5,a3,1aa48 <__mulsf3+0x11c>
   1a970:	0ad70463          	beq	a4,a3,1aa18 <__mulsf3+0xec>
   1a974:	00200693          	li	a3,2
   1a978:	0cd78c63          	beq	a5,a3,1aa50 <__mulsf3+0x124>
   1a97c:	0ad70263          	beq	a4,a3,1aa20 <__mulsf3+0xf4>
   1a980:	02c12603          	lw	a2,44(sp)
   1a984:	01c12503          	lw	a0,28(sp)
   1a988:	00000693          	li	a3,0
   1a98c:	00000593          	li	a1,0
   1a990:	971ff0ef          	jal	1a300 <__muldi3>
   1a994:	02812783          	lw	a5,40(sp)
   1a998:	01812703          	lw	a4,24(sp)
   1a99c:	01412683          	lw	a3,20(sp)
   1a9a0:	00f70733          	add	a4,a4,a5
   1a9a4:	02412783          	lw	a5,36(sp)
   1a9a8:	00270613          	addi	a2,a4,2
   1a9ac:	02c12c23          	sw	a2,56(sp)
   1a9b0:	40f686b3          	sub	a3,a3,a5
   1a9b4:	00d036b3          	snez	a3,a3
   1a9b8:	02d12a23          	sw	a3,52(sp)
   1a9bc:	00058793          	mv	a5,a1
   1a9c0:	00050693          	mv	a3,a0
   1a9c4:	0c05dc63          	bgez	a1,1aa9c <__mulsf3+0x170>
   1a9c8:	0015f793          	andi	a5,a1,1
   1a9cc:	00370713          	addi	a4,a4,3
   1a9d0:	02079c63          	bnez	a5,1aa08 <__mulsf3+0xdc>
   1a9d4:	0015d793          	srli	a5,a1,0x1
   1a9d8:	02e12c23          	sw	a4,56(sp)
   1a9dc:	07f7f713          	andi	a4,a5,127
   1a9e0:	04000613          	li	a2,64
   1a9e4:	08c70a63          	beq	a4,a2,1aa78 <__mulsf3+0x14c>
   1a9e8:	02f12e23          	sw	a5,60(sp)
   1a9ec:	00300793          	li	a5,3
   1a9f0:	02f12823          	sw	a5,48(sp)
   1a9f4:	03010513          	addi	a0,sp,48
   1a9f8:	c7dff0ef          	jal	1a674 <__pack_f>
   1a9fc:	04c12083          	lw	ra,76(sp)
   1aa00:	05010113          	addi	sp,sp,80
   1aa04:	00008067          	ret
   1aa08:	00155513          	srli	a0,a0,0x1
   1aa0c:	800006b7          	lui	a3,0x80000
   1aa10:	00d566b3          	or	a3,a0,a3
   1aa14:	fc1ff06f          	j	1a9d4 <__mulsf3+0xa8>
   1aa18:	00200713          	li	a4,2
   1aa1c:	06e78a63          	beq	a5,a4,1aa90 <__mulsf3+0x164>
   1aa20:	02412703          	lw	a4,36(sp)
   1aa24:	01412783          	lw	a5,20(sp)
   1aa28:	02010513          	addi	a0,sp,32
   1aa2c:	40e787b3          	sub	a5,a5,a4
   1aa30:	00f037b3          	snez	a5,a5
   1aa34:	02f12223          	sw	a5,36(sp)
   1aa38:	c3dff0ef          	jal	1a674 <__pack_f>
   1aa3c:	04c12083          	lw	ra,76(sp)
   1aa40:	05010113          	addi	sp,sp,80
   1aa44:	00008067          	ret
   1aa48:	00200793          	li	a5,2
   1aa4c:	04f70263          	beq	a4,a5,1aa90 <__mulsf3+0x164>
   1aa50:	02412703          	lw	a4,36(sp)
   1aa54:	01412783          	lw	a5,20(sp)
   1aa58:	01010513          	addi	a0,sp,16
   1aa5c:	40e787b3          	sub	a5,a5,a4
   1aa60:	00f037b3          	snez	a5,a5
   1aa64:	00f12a23          	sw	a5,20(sp)
   1aa68:	c0dff0ef          	jal	1a674 <__pack_f>
   1aa6c:	04c12083          	lw	ra,76(sp)
   1aa70:	05010113          	addi	sp,sp,80
   1aa74:	00008067          	ret
   1aa78:	0807f713          	andi	a4,a5,128
   1aa7c:	f60716e3          	bnez	a4,1a9e8 <__mulsf3+0xbc>
   1aa80:	f60684e3          	beqz	a3,1a9e8 <__mulsf3+0xbc>
   1aa84:	00c787b3          	add	a5,a5,a2
   1aa88:	f807f793          	andi	a5,a5,-128
   1aa8c:	f5dff06f          	j	1a9e8 <__mulsf3+0xbc>
   1aa90:	0001b537          	lui	a0,0x1b
   1aa94:	4f850513          	addi	a0,a0,1272 # 1b4f8 <__thenan_sf>
   1aa98:	f61ff06f          	j	1a9f8 <__mulsf3+0xcc>
   1aa9c:	40000637          	lui	a2,0x40000
   1aaa0:	f2c5fee3          	bleu	a2,a1,1a9dc <__mulsf3+0xb0>
   1aaa4:	00170713          	addi	a4,a4,1
   1aaa8:	0100006f          	j	1aab8 <__mulsf3+0x18c>
   1aaac:	00169693          	slli	a3,a3,0x1
   1aab0:	fff70713          	addi	a4,a4,-1
   1aab4:	02c7f063          	bleu	a2,a5,1aad4 <__mulsf3+0x1a8>
   1aab8:	00179793          	slli	a5,a5,0x1
   1aabc:	00070593          	mv	a1,a4
   1aac0:	fe06d6e3          	bgez	a3,1aaac <__mulsf3+0x180>
   1aac4:	0017e793          	ori	a5,a5,1
   1aac8:	00169693          	slli	a3,a3,0x1
   1aacc:	fff70713          	addi	a4,a4,-1
   1aad0:	fec7e4e3          	bltu	a5,a2,1aab8 <__mulsf3+0x18c>
   1aad4:	02b12c23          	sw	a1,56(sp)
   1aad8:	f05ff06f          	j	1a9dc <__mulsf3+0xb0>

0001aadc <__divsf3>:
   1aadc:	fc010113          	addi	sp,sp,-64
   1aae0:	00a12423          	sw	a0,8(sp)
   1aae4:	00b12623          	sw	a1,12(sp)
   1aae8:	00810513          	addi	a0,sp,8
   1aaec:	01010593          	addi	a1,sp,16
   1aaf0:	02112e23          	sw	ra,60(sp)
   1aaf4:	cc5ff0ef          	jal	1a7b8 <__unpack_f>
   1aaf8:	02010593          	addi	a1,sp,32
   1aafc:	00c10513          	addi	a0,sp,12
   1ab00:	cb9ff0ef          	jal	1a7b8 <__unpack_f>
   1ab04:	01012683          	lw	a3,16(sp)
   1ab08:	00100793          	li	a5,1
   1ab0c:	08d7f663          	bleu	a3,a5,1ab98 <__divsf3+0xbc>
   1ab10:	02012603          	lw	a2,32(sp)
   1ab14:	0ec7f663          	bleu	a2,a5,1ac00 <__divsf3+0x124>
   1ab18:	01412703          	lw	a4,20(sp)
   1ab1c:	02412583          	lw	a1,36(sp)
   1ab20:	ffe68793          	addi	a5,a3,-2 # 7ffffffe <_gp+0x7ffe258e>
   1ab24:	ffd7f793          	andi	a5,a5,-3
   1ab28:	00b74733          	xor	a4,a4,a1
   1ab2c:	00e12a23          	sw	a4,20(sp)
   1ab30:	06078e63          	beqz	a5,1abac <__divsf3+0xd0>
   1ab34:	00400793          	li	a5,4
   1ab38:	08f60a63          	beq	a2,a5,1abcc <__divsf3+0xf0>
   1ab3c:	00200713          	li	a4,2
   1ab40:	0ae60a63          	beq	a2,a4,1abf4 <__divsf3+0x118>
   1ab44:	01812703          	lw	a4,24(sp)
   1ab48:	02812683          	lw	a3,40(sp)
   1ab4c:	01c12783          	lw	a5,28(sp)
   1ab50:	02c12603          	lw	a2,44(sp)
   1ab54:	40d70733          	sub	a4,a4,a3
   1ab58:	00e12c23          	sw	a4,24(sp)
   1ab5c:	06c7e063          	bltu	a5,a2,1abbc <__divsf3+0xe0>
   1ab60:	01f00713          	li	a4,31
   1ab64:	00000593          	li	a1,0
   1ab68:	400006b7          	lui	a3,0x40000
   1ab6c:	fff70713          	addi	a4,a4,-1
   1ab70:	00c7e663          	bltu	a5,a2,1ab7c <__divsf3+0xa0>
   1ab74:	00d5e5b3          	or	a1,a1,a3
   1ab78:	40c787b3          	sub	a5,a5,a2
   1ab7c:	0016d693          	srli	a3,a3,0x1
   1ab80:	00179793          	slli	a5,a5,0x1
   1ab84:	fe0714e3          	bnez	a4,1ab6c <__divsf3+0x90>
   1ab88:	07f5f713          	andi	a4,a1,127
   1ab8c:	04000693          	li	a3,64
   1ab90:	04d70663          	beq	a4,a3,1abdc <__divsf3+0x100>
   1ab94:	00b12e23          	sw	a1,28(sp)
   1ab98:	01010513          	addi	a0,sp,16
   1ab9c:	ad9ff0ef          	jal	1a674 <__pack_f>
   1aba0:	03c12083          	lw	ra,60(sp)
   1aba4:	04010113          	addi	sp,sp,64
   1aba8:	00008067          	ret
   1abac:	fec696e3          	bne	a3,a2,1ab98 <__divsf3+0xbc>
   1abb0:	0001b537          	lui	a0,0x1b
   1abb4:	4f850513          	addi	a0,a0,1272 # 1b4f8 <__thenan_sf>
   1abb8:	fe5ff06f          	j	1ab9c <__divsf3+0xc0>
   1abbc:	fff70713          	addi	a4,a4,-1
   1abc0:	00179793          	slli	a5,a5,0x1
   1abc4:	00e12c23          	sw	a4,24(sp)
   1abc8:	f99ff06f          	j	1ab60 <__divsf3+0x84>
   1abcc:	00012e23          	sw	zero,28(sp)
   1abd0:	00012c23          	sw	zero,24(sp)
   1abd4:	01010513          	addi	a0,sp,16
   1abd8:	fc5ff06f          	j	1ab9c <__divsf3+0xc0>
   1abdc:	0805f713          	andi	a4,a1,128
   1abe0:	fa071ae3          	bnez	a4,1ab94 <__divsf3+0xb8>
   1abe4:	fa0788e3          	beqz	a5,1ab94 <__divsf3+0xb8>
   1abe8:	00d585b3          	add	a1,a1,a3
   1abec:	f805f593          	andi	a1,a1,-128
   1abf0:	fa5ff06f          	j	1ab94 <__divsf3+0xb8>
   1abf4:	00f12823          	sw	a5,16(sp)
   1abf8:	01010513          	addi	a0,sp,16
   1abfc:	fa1ff06f          	j	1ab9c <__divsf3+0xc0>
   1ac00:	02010513          	addi	a0,sp,32
   1ac04:	f99ff06f          	j	1ab9c <__divsf3+0xc0>

0001ac08 <__fpcmp_parts_f>:
   1ac08:	00052703          	lw	a4,0(a0)
   1ac0c:	00100793          	li	a5,1
   1ac10:	00050613          	mv	a2,a0
   1ac14:	06e7fe63          	bleu	a4,a5,1ac90 <__fpcmp_parts_f+0x88>
   1ac18:	0005a683          	lw	a3,0(a1)
   1ac1c:	00078513          	mv	a0,a5
   1ac20:	04d7f063          	bleu	a3,a5,1ac60 <__fpcmp_parts_f+0x58>
   1ac24:	00400793          	li	a5,4
   1ac28:	04f70863          	beq	a4,a5,1ac78 <__fpcmp_parts_f+0x70>
   1ac2c:	02f68c63          	beq	a3,a5,1ac64 <__fpcmp_parts_f+0x5c>
   1ac30:	00200793          	li	a5,2
   1ac34:	02f70263          	beq	a4,a5,1ac58 <__fpcmp_parts_f+0x50>
   1ac38:	04f68263          	beq	a3,a5,1ac7c <__fpcmp_parts_f+0x74>
   1ac3c:	00462783          	lw	a5,4(a2) # 40000004 <_gp+0x3ffe2594>
   1ac40:	0045a703          	lw	a4,4(a1)
   1ac44:	04e78a63          	beq	a5,a4,1ac98 <__fpcmp_parts_f+0x90>
   1ac48:	00f03533          	snez	a0,a5
   1ac4c:	40a00533          	neg	a0,a0
   1ac50:	00156513          	ori	a0,a0,1
   1ac54:	00008067          	ret
   1ac58:	00e69663          	bne	a3,a4,1ac64 <__fpcmp_parts_f+0x5c>
   1ac5c:	00000513          	li	a0,0
   1ac60:	00008067          	ret
   1ac64:	0045a503          	lw	a0,4(a1)
   1ac68:	00153513          	seqz	a0,a0
   1ac6c:	40a00533          	neg	a0,a0
   1ac70:	00156513          	ori	a0,a0,1
   1ac74:	00008067          	ret
   1ac78:	04e68a63          	beq	a3,a4,1accc <__fpcmp_parts_f+0xc4>
   1ac7c:	00462503          	lw	a0,4(a2)
   1ac80:	00a03533          	snez	a0,a0
   1ac84:	40a00533          	neg	a0,a0
   1ac88:	00156513          	ori	a0,a0,1
   1ac8c:	00008067          	ret
   1ac90:	00078513          	mv	a0,a5
   1ac94:	00008067          	ret
   1ac98:	00862683          	lw	a3,8(a2)
   1ac9c:	0085a703          	lw	a4,8(a1)
   1aca0:	fad744e3          	blt	a4,a3,1ac48 <__fpcmp_parts_f+0x40>
   1aca4:	00e6cc63          	blt	a3,a4,1acbc <__fpcmp_parts_f+0xb4>
   1aca8:	00c62683          	lw	a3,12(a2)
   1acac:	00c5a703          	lw	a4,12(a1)
   1acb0:	f8d76ce3          	bltu	a4,a3,1ac48 <__fpcmp_parts_f+0x40>
   1acb4:	00000513          	li	a0,0
   1acb8:	fae6f4e3          	bleu	a4,a3,1ac60 <__fpcmp_parts_f+0x58>
   1acbc:	0017b513          	seqz	a0,a5
   1acc0:	40a00533          	neg	a0,a0
   1acc4:	00156513          	ori	a0,a0,1
   1acc8:	00008067          	ret
   1accc:	0045a783          	lw	a5,4(a1)
   1acd0:	00462503          	lw	a0,4(a2)
   1acd4:	40a78533          	sub	a0,a5,a0
   1acd8:	00008067          	ret

0001acdc <__cmpsf2>:
   1acdc:	fc010113          	addi	sp,sp,-64
   1ace0:	00a12423          	sw	a0,8(sp)
   1ace4:	00b12623          	sw	a1,12(sp)
   1ace8:	00810513          	addi	a0,sp,8
   1acec:	01010593          	addi	a1,sp,16
   1acf0:	02112e23          	sw	ra,60(sp)
   1acf4:	ac5ff0ef          	jal	1a7b8 <__unpack_f>
   1acf8:	02010593          	addi	a1,sp,32
   1acfc:	00c10513          	addi	a0,sp,12
   1ad00:	ab9ff0ef          	jal	1a7b8 <__unpack_f>
   1ad04:	02010593          	addi	a1,sp,32
   1ad08:	01010513          	addi	a0,sp,16
   1ad0c:	efdff0ef          	jal	1ac08 <__fpcmp_parts_f>
   1ad10:	03c12083          	lw	ra,60(sp)
   1ad14:	04010113          	addi	sp,sp,64
   1ad18:	00008067          	ret

0001ad1c <__gesf2>:
   1ad1c:	fc010113          	addi	sp,sp,-64
   1ad20:	00a12423          	sw	a0,8(sp)
   1ad24:	00b12623          	sw	a1,12(sp)
   1ad28:	00810513          	addi	a0,sp,8
   1ad2c:	01010593          	addi	a1,sp,16
   1ad30:	02112e23          	sw	ra,60(sp)
   1ad34:	a85ff0ef          	jal	1a7b8 <__unpack_f>
   1ad38:	00c10513          	addi	a0,sp,12
   1ad3c:	02010593          	addi	a1,sp,32
   1ad40:	a79ff0ef          	jal	1a7b8 <__unpack_f>
   1ad44:	01012703          	lw	a4,16(sp)
   1ad48:	00100793          	li	a5,1
   1ad4c:	fff00513          	li	a0,-1
   1ad50:	00e7fe63          	bleu	a4,a5,1ad6c <__gesf2+0x50>
   1ad54:	02012703          	lw	a4,32(sp)
   1ad58:	fff00513          	li	a0,-1
   1ad5c:	00e7f863          	bleu	a4,a5,1ad6c <__gesf2+0x50>
   1ad60:	02010593          	addi	a1,sp,32
   1ad64:	01010513          	addi	a0,sp,16
   1ad68:	ea1ff0ef          	jal	1ac08 <__fpcmp_parts_f>
   1ad6c:	03c12083          	lw	ra,60(sp)
   1ad70:	04010113          	addi	sp,sp,64
   1ad74:	00008067          	ret

0001ad78 <__gtsf2>:
   1ad78:	fa5ff06f          	j	1ad1c <__gesf2>

0001ad7c <__lesf2>:
   1ad7c:	fc010113          	addi	sp,sp,-64
   1ad80:	00a12423          	sw	a0,8(sp)
   1ad84:	00b12623          	sw	a1,12(sp)
   1ad88:	00810513          	addi	a0,sp,8
   1ad8c:	01010593          	addi	a1,sp,16
   1ad90:	02112e23          	sw	ra,60(sp)
   1ad94:	a25ff0ef          	jal	1a7b8 <__unpack_f>
   1ad98:	00c10513          	addi	a0,sp,12
   1ad9c:	02010593          	addi	a1,sp,32
   1ada0:	a19ff0ef          	jal	1a7b8 <__unpack_f>
   1ada4:	01012783          	lw	a5,16(sp)
   1ada8:	00100513          	li	a0,1
   1adac:	00f57c63          	bleu	a5,a0,1adc4 <__lesf2+0x48>
   1adb0:	02012783          	lw	a5,32(sp)
   1adb4:	00f57863          	bleu	a5,a0,1adc4 <__lesf2+0x48>
   1adb8:	02010593          	addi	a1,sp,32
   1adbc:	01010513          	addi	a0,sp,16
   1adc0:	e49ff0ef          	jal	1ac08 <__fpcmp_parts_f>
   1adc4:	03c12083          	lw	ra,60(sp)
   1adc8:	04010113          	addi	sp,sp,64
   1adcc:	00008067          	ret

0001add0 <__ltsf2>:
   1add0:	fadff06f          	j	1ad7c <__lesf2>

0001add4 <__nesf2>:
   1add4:	fa9ff06f          	j	1ad7c <__lesf2>

0001add8 <__eqsf2>:
   1add8:	fa5ff06f          	j	1ad7c <__lesf2>

0001addc <__unordsf2>:
   1addc:	fc010113          	addi	sp,sp,-64
   1ade0:	00a12423          	sw	a0,8(sp)
   1ade4:	00b12623          	sw	a1,12(sp)
   1ade8:	00810513          	addi	a0,sp,8
   1adec:	01010593          	addi	a1,sp,16
   1adf0:	02112e23          	sw	ra,60(sp)
   1adf4:	9c5ff0ef          	jal	1a7b8 <__unpack_f>
   1adf8:	00c10513          	addi	a0,sp,12
   1adfc:	02010593          	addi	a1,sp,32
   1ae00:	9b9ff0ef          	jal	1a7b8 <__unpack_f>
   1ae04:	01012783          	lw	a5,16(sp)
   1ae08:	00100513          	li	a0,1
   1ae0c:	00f57663          	bleu	a5,a0,1ae18 <__unordsf2+0x3c>
   1ae10:	02012503          	lw	a0,32(sp)
   1ae14:	00253513          	sltiu	a0,a0,2
   1ae18:	03c12083          	lw	ra,60(sp)
   1ae1c:	04010113          	addi	sp,sp,64
   1ae20:	00008067          	ret

0001ae24 <__floatsisf>:
   1ae24:	fe010113          	addi	sp,sp,-32
   1ae28:	01f55793          	srli	a5,a0,0x1f
   1ae2c:	00300713          	li	a4,3
   1ae30:	00112e23          	sw	ra,28(sp)
   1ae34:	00812c23          	sw	s0,24(sp)
   1ae38:	00e12023          	sw	a4,0(sp)
   1ae3c:	00f12223          	sw	a5,4(sp)
   1ae40:	02051263          	bnez	a0,1ae64 <__floatsisf+0x40>
   1ae44:	00200793          	li	a5,2
   1ae48:	00f12023          	sw	a5,0(sp)
   1ae4c:	00010513          	mv	a0,sp
   1ae50:	825ff0ef          	jal	1a674 <__pack_f>
   1ae54:	01c12083          	lw	ra,28(sp)
   1ae58:	01812403          	lw	s0,24(sp)
   1ae5c:	02010113          	addi	sp,sp,32
   1ae60:	00008067          	ret
   1ae64:	01e00793          	li	a5,30
   1ae68:	00f12423          	sw	a5,8(sp)
   1ae6c:	02054863          	bltz	a0,1ae9c <__floatsisf+0x78>
   1ae70:	00050413          	mv	s0,a0
   1ae74:	00040513          	mv	a0,s0
   1ae78:	dc4ff0ef          	jal	1a43c <__clzsi2>
   1ae7c:	fff50793          	addi	a5,a0,-1
   1ae80:	02078c63          	beqz	a5,1aeb8 <__floatsisf+0x94>
   1ae84:	01e00713          	li	a4,30
   1ae88:	00f41533          	sll	a0,s0,a5
   1ae8c:	40f707b3          	sub	a5,a4,a5
   1ae90:	00a12623          	sw	a0,12(sp)
   1ae94:	00f12423          	sw	a5,8(sp)
   1ae98:	fb5ff06f          	j	1ae4c <__floatsisf+0x28>
   1ae9c:	800007b7          	lui	a5,0x80000
   1aea0:	02f50063          	beq	a0,a5,1aec0 <__floatsisf+0x9c>
   1aea4:	40a00433          	neg	s0,a0
   1aea8:	00040513          	mv	a0,s0
   1aeac:	d90ff0ef          	jal	1a43c <__clzsi2>
   1aeb0:	fff50793          	addi	a5,a0,-1
   1aeb4:	fc0798e3          	bnez	a5,1ae84 <__floatsisf+0x60>
   1aeb8:	00812623          	sw	s0,12(sp)
   1aebc:	f91ff06f          	j	1ae4c <__floatsisf+0x28>
   1aec0:	0001d7b7          	lui	a5,0x1d
   1aec4:	2e07a503          	lw	a0,736(a5) # 1d2e0 <__wctomb+0x58>
   1aec8:	f8dff06f          	j	1ae54 <__floatsisf+0x30>

0001aecc <__floatunsisf>:
   1aecc:	fe010113          	addi	sp,sp,-32
   1aed0:	00112e23          	sw	ra,28(sp)
   1aed4:	00812c23          	sw	s0,24(sp)
   1aed8:	00912a23          	sw	s1,20(sp)
   1aedc:	00012223          	sw	zero,4(sp)
   1aee0:	04050a63          	beqz	a0,1af34 <__floatunsisf+0x68>
   1aee4:	00300793          	li	a5,3
   1aee8:	01e00493          	li	s1,30
   1aeec:	00f12023          	sw	a5,0(sp)
   1aef0:	00050413          	mv	s0,a0
   1aef4:	00912423          	sw	s1,8(sp)
   1aef8:	d44ff0ef          	jal	1a43c <__clzsi2>
   1aefc:	fff50793          	addi	a5,a0,-1
   1af00:	04050063          	beqz	a0,1af40 <__floatunsisf+0x74>
   1af04:	04078c63          	beqz	a5,1af5c <__floatunsisf+0x90>
   1af08:	00f41433          	sll	s0,s0,a5
   1af0c:	40f484b3          	sub	s1,s1,a5
   1af10:	00812623          	sw	s0,12(sp)
   1af14:	00912423          	sw	s1,8(sp)
   1af18:	00010513          	mv	a0,sp
   1af1c:	f58ff0ef          	jal	1a674 <__pack_f>
   1af20:	01c12083          	lw	ra,28(sp)
   1af24:	01812403          	lw	s0,24(sp)
   1af28:	01412483          	lw	s1,20(sp)
   1af2c:	02010113          	addi	sp,sp,32
   1af30:	00008067          	ret
   1af34:	00200793          	li	a5,2
   1af38:	00f12023          	sw	a5,0(sp)
   1af3c:	fddff06f          	j	1af18 <__floatunsisf+0x4c>
   1af40:	00147793          	andi	a5,s0,1
   1af44:	00145413          	srli	s0,s0,0x1
   1af48:	0087e433          	or	s0,a5,s0
   1af4c:	01f00793          	li	a5,31
   1af50:	00812623          	sw	s0,12(sp)
   1af54:	00f12423          	sw	a5,8(sp)
   1af58:	fc1ff06f          	j	1af18 <__floatunsisf+0x4c>
   1af5c:	00812623          	sw	s0,12(sp)
   1af60:	fb9ff06f          	j	1af18 <__floatunsisf+0x4c>

0001af64 <__fixsfsi>:
   1af64:	fd010113          	addi	sp,sp,-48
   1af68:	00a12623          	sw	a0,12(sp)
   1af6c:	01010593          	addi	a1,sp,16
   1af70:	00c10513          	addi	a0,sp,12
   1af74:	02112623          	sw	ra,44(sp)
   1af78:	841ff0ef          	jal	1a7b8 <__unpack_f>
   1af7c:	01012783          	lw	a5,16(sp)
   1af80:	00200713          	li	a4,2
   1af84:	04f77e63          	bleu	a5,a4,1afe0 <__fixsfsi+0x7c>
   1af88:	00400713          	li	a4,4
   1af8c:	00e78a63          	beq	a5,a4,1afa0 <__fixsfsi+0x3c>
   1af90:	01812503          	lw	a0,24(sp)
   1af94:	04054663          	bltz	a0,1afe0 <__fixsfsi+0x7c>
   1af98:	01e00793          	li	a5,30
   1af9c:	02a7d063          	ble	a0,a5,1afbc <__fixsfsi+0x58>
   1afa0:	01412783          	lw	a5,20(sp)
   1afa4:	80000537          	lui	a0,0x80000
   1afa8:	00079463          	bnez	a5,1afb0 <__fixsfsi+0x4c>
   1afac:	fff54513          	not	a0,a0
   1afb0:	02c12083          	lw	ra,44(sp)
   1afb4:	03010113          	addi	sp,sp,48
   1afb8:	00008067          	ret
   1afbc:	40a787b3          	sub	a5,a5,a0
   1afc0:	01412703          	lw	a4,20(sp)
   1afc4:	01c12503          	lw	a0,28(sp)
   1afc8:	00f55533          	srl	a0,a0,a5
   1afcc:	fe0702e3          	beqz	a4,1afb0 <__fixsfsi+0x4c>
   1afd0:	02c12083          	lw	ra,44(sp)
   1afd4:	40a00533          	neg	a0,a0
   1afd8:	03010113          	addi	sp,sp,48
   1afdc:	00008067          	ret
   1afe0:	02c12083          	lw	ra,44(sp)
   1afe4:	00000513          	li	a0,0
   1afe8:	03010113          	addi	sp,sp,48
   1afec:	00008067          	ret

0001aff0 <__negsf2>:
   1aff0:	fd010113          	addi	sp,sp,-48
   1aff4:	00a12623          	sw	a0,12(sp)
   1aff8:	01010593          	addi	a1,sp,16
   1affc:	00c10513          	addi	a0,sp,12
   1b000:	02112623          	sw	ra,44(sp)
   1b004:	fb4ff0ef          	jal	1a7b8 <__unpack_f>
   1b008:	01412783          	lw	a5,20(sp)
   1b00c:	01010513          	addi	a0,sp,16
   1b010:	0017b793          	seqz	a5,a5
   1b014:	00f12a23          	sw	a5,20(sp)
   1b018:	e5cff0ef          	jal	1a674 <__pack_f>
   1b01c:	02c12083          	lw	ra,44(sp)
   1b020:	03010113          	addi	sp,sp,48
   1b024:	00008067          	ret

0001b028 <__make_fp>:
   1b028:	fe010113          	addi	sp,sp,-32
   1b02c:	00a12023          	sw	a0,0(sp)
   1b030:	00010513          	mv	a0,sp
   1b034:	00112e23          	sw	ra,28(sp)
   1b038:	00b12223          	sw	a1,4(sp)
   1b03c:	00c12423          	sw	a2,8(sp)
   1b040:	00d12623          	sw	a3,12(sp)
   1b044:	e30ff0ef          	jal	1a674 <__pack_f>
   1b048:	01c12083          	lw	ra,28(sp)
   1b04c:	02010113          	addi	sp,sp,32
   1b050:	00008067          	ret

0001b054 <__extendsfdf2>:
   1b054:	fd010113          	addi	sp,sp,-48
   1b058:	00a12623          	sw	a0,12(sp)
   1b05c:	01010593          	addi	a1,sp,16
   1b060:	00c10513          	addi	a0,sp,12
   1b064:	02112623          	sw	ra,44(sp)
   1b068:	f50ff0ef          	jal	1a7b8 <__unpack_f>
   1b06c:	01c12783          	lw	a5,28(sp)
   1b070:	01812603          	lw	a2,24(sp)
   1b074:	01412583          	lw	a1,20(sp)
   1b078:	01012503          	lw	a0,16(sp)
   1b07c:	01e79713          	slli	a4,a5,0x1e
   1b080:	0027d793          	srli	a5,a5,0x2
   1b084:	9d0ff0ef          	jal	1a254 <__make_dp>
   1b088:	02c12083          	lw	ra,44(sp)
   1b08c:	03010113          	addi	sp,sp,48
   1b090:	00008067          	ret

0001b094 <__errno>:
   1b094:	8081a503          	lw	a0,-2040(gp) # 1d278 <_impure_ptr>
   1b098:	00008067          	ret
