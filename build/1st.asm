
build/1st.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       0000010c  08000000  08000000  00001000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000002ec  0800010c  0800010c  0000110c  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000018  080003f8  080003f8  000013f8  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000410  08000410  00001410  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000418  08000418  00001418  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000008  20000000  0800041c  00002000  2**2  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              000001b4  20000008  08000424  00002008  2**2  ALLOC
  7 ._user_heap_stack 00000604  200001bc  08000424  000021bc  2**0  ALLOC
  8 .ARM.attributes   00000029  00000000  00000000  00002008  2**0  CONTENTS, READONLY
  9 .comment          0000003c  00000000  00000000  00002031  2**0  CONTENTS, READONLY
 10 .debug_info       00000a60  00000000  00000000  0000206d  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_abbrev     00000700  00000000  00000000  00002acd  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_loclists   000002ad  00000000  00000000  000031cd  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_aranges    00000110  00000000  00000000  0000347a  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_rnglists   000000c6  00000000  00000000  0000358a  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_line       0000088f  00000000  00000000  00003650  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .debug_str        0000065b  00000000  00000000  00003edf  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 17 .debug_frame      000001c0  00000000  00000000  0000453c  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

Disassembly of section .text:

0800010c <main>:
 800010c:	b480      	push	{r7}
 800010e:	af00      	add	r7, sp, #0
 8000110:	e7fe      	b.n	8000110 <main+0x4>
	...

08000114 <SystemInit>:
 8000114:	b480      	push	{r7}
 8000116:	af00      	add	r7, sp, #0
 8000118:	bf00      	nop
 800011a:	46bd      	mov	sp, r7
 800011c:	bc80      	pop	{r7}
 800011e:	4770      	bx	lr

08000120 <SystemCoreClockUpdate>:
 8000120:	b480      	push	{r7}
 8000122:	b085      	sub	sp, #20
 8000124:	af00      	add	r7, sp, #0
 8000126:	2300      	movs	r3, #0
 8000128:	60fb      	str	r3, [r7, #12]
 800012a:	2300      	movs	r3, #0
 800012c:	60bb      	str	r3, [r7, #8]
 800012e:	2300      	movs	r3, #0
 8000130:	607b      	str	r3, [r7, #4]
 8000132:	4b2f      	ldr	r3, [pc, #188]	@ (80001f0 <SystemCoreClockUpdate+0xd0>)
 8000134:	685b      	ldr	r3, [r3, #4]
 8000136:	f003 030c 	and.w	r3, r3, #12
 800013a:	60fb      	str	r3, [r7, #12]
 800013c:	68fb      	ldr	r3, [r7, #12]
 800013e:	2b08      	cmp	r3, #8
 8000140:	d011      	beq.n	8000166 <SystemCoreClockUpdate+0x46>
 8000142:	68fb      	ldr	r3, [r7, #12]
 8000144:	2b08      	cmp	r3, #8
 8000146:	d83a      	bhi.n	80001be <SystemCoreClockUpdate+0x9e>
 8000148:	68fb      	ldr	r3, [r7, #12]
 800014a:	2b00      	cmp	r3, #0
 800014c:	d003      	beq.n	8000156 <SystemCoreClockUpdate+0x36>
 800014e:	68fb      	ldr	r3, [r7, #12]
 8000150:	2b04      	cmp	r3, #4
 8000152:	d004      	beq.n	800015e <SystemCoreClockUpdate+0x3e>
 8000154:	e033      	b.n	80001be <SystemCoreClockUpdate+0x9e>
 8000156:	4b27      	ldr	r3, [pc, #156]	@ (80001f4 <SystemCoreClockUpdate+0xd4>)
 8000158:	4a27      	ldr	r2, [pc, #156]	@ (80001f8 <SystemCoreClockUpdate+0xd8>)
 800015a:	601a      	str	r2, [r3, #0]
 800015c:	e033      	b.n	80001c6 <SystemCoreClockUpdate+0xa6>
 800015e:	4b25      	ldr	r3, [pc, #148]	@ (80001f4 <SystemCoreClockUpdate+0xd4>)
 8000160:	4a25      	ldr	r2, [pc, #148]	@ (80001f8 <SystemCoreClockUpdate+0xd8>)
 8000162:	601a      	str	r2, [r3, #0]
 8000164:	e02f      	b.n	80001c6 <SystemCoreClockUpdate+0xa6>
 8000166:	4b22      	ldr	r3, [pc, #136]	@ (80001f0 <SystemCoreClockUpdate+0xd0>)
 8000168:	685b      	ldr	r3, [r3, #4]
 800016a:	f403 1370 	and.w	r3, r3, #3932160	@ 0x3c0000
 800016e:	60bb      	str	r3, [r7, #8]
 8000170:	4b1f      	ldr	r3, [pc, #124]	@ (80001f0 <SystemCoreClockUpdate+0xd0>)
 8000172:	685b      	ldr	r3, [r3, #4]
 8000174:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8000178:	607b      	str	r3, [r7, #4]
 800017a:	68bb      	ldr	r3, [r7, #8]
 800017c:	0c9b      	lsrs	r3, r3, #18
 800017e:	3302      	adds	r3, #2
 8000180:	60bb      	str	r3, [r7, #8]
 8000182:	687b      	ldr	r3, [r7, #4]
 8000184:	2b00      	cmp	r3, #0
 8000186:	d106      	bne.n	8000196 <SystemCoreClockUpdate+0x76>
 8000188:	68bb      	ldr	r3, [r7, #8]
 800018a:	4a1c      	ldr	r2, [pc, #112]	@ (80001fc <SystemCoreClockUpdate+0xdc>)
 800018c:	fb02 f303 	mul.w	r3, r2, r3
 8000190:	4a18      	ldr	r2, [pc, #96]	@ (80001f4 <SystemCoreClockUpdate+0xd4>)
 8000192:	6013      	str	r3, [r2, #0]
 8000194:	e017      	b.n	80001c6 <SystemCoreClockUpdate+0xa6>
 8000196:	4b16      	ldr	r3, [pc, #88]	@ (80001f0 <SystemCoreClockUpdate+0xd0>)
 8000198:	685b      	ldr	r3, [r3, #4]
 800019a:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 800019e:	2b00      	cmp	r3, #0
 80001a0:	d006      	beq.n	80001b0 <SystemCoreClockUpdate+0x90>
 80001a2:	68bb      	ldr	r3, [r7, #8]
 80001a4:	4a15      	ldr	r2, [pc, #84]	@ (80001fc <SystemCoreClockUpdate+0xdc>)
 80001a6:	fb02 f303 	mul.w	r3, r2, r3
 80001aa:	4a12      	ldr	r2, [pc, #72]	@ (80001f4 <SystemCoreClockUpdate+0xd4>)
 80001ac:	6013      	str	r3, [r2, #0]
 80001ae:	e00a      	b.n	80001c6 <SystemCoreClockUpdate+0xa6>
 80001b0:	68bb      	ldr	r3, [r7, #8]
 80001b2:	4a11      	ldr	r2, [pc, #68]	@ (80001f8 <SystemCoreClockUpdate+0xd8>)
 80001b4:	fb02 f303 	mul.w	r3, r2, r3
 80001b8:	4a0e      	ldr	r2, [pc, #56]	@ (80001f4 <SystemCoreClockUpdate+0xd4>)
 80001ba:	6013      	str	r3, [r2, #0]
 80001bc:	e003      	b.n	80001c6 <SystemCoreClockUpdate+0xa6>
 80001be:	4b0d      	ldr	r3, [pc, #52]	@ (80001f4 <SystemCoreClockUpdate+0xd4>)
 80001c0:	4a0d      	ldr	r2, [pc, #52]	@ (80001f8 <SystemCoreClockUpdate+0xd8>)
 80001c2:	601a      	str	r2, [r3, #0]
 80001c4:	bf00      	nop
 80001c6:	4b0a      	ldr	r3, [pc, #40]	@ (80001f0 <SystemCoreClockUpdate+0xd0>)
 80001c8:	685b      	ldr	r3, [r3, #4]
 80001ca:	091b      	lsrs	r3, r3, #4
 80001cc:	f003 030f 	and.w	r3, r3, #15
 80001d0:	4a0b      	ldr	r2, [pc, #44]	@ (8000200 <SystemCoreClockUpdate+0xe0>)
 80001d2:	5cd3      	ldrb	r3, [r2, r3]
 80001d4:	60fb      	str	r3, [r7, #12]
 80001d6:	4b07      	ldr	r3, [pc, #28]	@ (80001f4 <SystemCoreClockUpdate+0xd4>)
 80001d8:	681a      	ldr	r2, [r3, #0]
 80001da:	68fb      	ldr	r3, [r7, #12]
 80001dc:	fa22 f303 	lsr.w	r3, r2, r3
 80001e0:	4a04      	ldr	r2, [pc, #16]	@ (80001f4 <SystemCoreClockUpdate+0xd4>)
 80001e2:	6013      	str	r3, [r2, #0]
 80001e4:	bf00      	nop
 80001e6:	3714      	adds	r7, #20
 80001e8:	46bd      	mov	sp, r7
 80001ea:	bc80      	pop	{r7}
 80001ec:	4770      	bx	lr
 80001ee:	bf00      	nop
 80001f0:	40021000 	.word	0x40021000
 80001f4:	20000000 	.word	0x20000000
 80001f8:	007a1200 	.word	0x007a1200
 80001fc:	003d0900 	.word	0x003d0900
 8000200:	080003f8 	.word	0x080003f8

08000204 <NMI_Handler>:
 8000204:	b480      	push	{r7}
 8000206:	af00      	add	r7, sp, #0
 8000208:	bf00      	nop
 800020a:	46bd      	mov	sp, r7
 800020c:	bc80      	pop	{r7}
 800020e:	4770      	bx	lr

08000210 <HardFault_Handler>:
 8000210:	b480      	push	{r7}
 8000212:	af00      	add	r7, sp, #0
 8000214:	bf00      	nop
 8000216:	46bd      	mov	sp, r7
 8000218:	bc80      	pop	{r7}
 800021a:	4770      	bx	lr

0800021c <SVC_Handler>:
 800021c:	b480      	push	{r7}
 800021e:	af00      	add	r7, sp, #0
 8000220:	bf00      	nop
 8000222:	46bd      	mov	sp, r7
 8000224:	bc80      	pop	{r7}
 8000226:	4770      	bx	lr

08000228 <PendSV_Handler>:
 8000228:	b480      	push	{r7}
 800022a:	af00      	add	r7, sp, #0
 800022c:	bf00      	nop
 800022e:	46bd      	mov	sp, r7
 8000230:	bc80      	pop	{r7}
 8000232:	4770      	bx	lr

08000234 <__do_global_dtors_aux>:
 8000234:	b510      	push	{r4, lr}
 8000236:	4c05      	ldr	r4, [pc, #20]	@ (800024c <__do_global_dtors_aux+0x18>)
 8000238:	7823      	ldrb	r3, [r4, #0]
 800023a:	b933      	cbnz	r3, 800024a <__do_global_dtors_aux+0x16>
 800023c:	4b04      	ldr	r3, [pc, #16]	@ (8000250 <__do_global_dtors_aux+0x1c>)
 800023e:	b113      	cbz	r3, 8000246 <__do_global_dtors_aux+0x12>
 8000240:	4804      	ldr	r0, [pc, #16]	@ (8000254 <__do_global_dtors_aux+0x20>)
 8000242:	f3af 8000 	nop.w
 8000246:	2301      	movs	r3, #1
 8000248:	7023      	strb	r3, [r4, #0]
 800024a:	bd10      	pop	{r4, pc}
 800024c:	20000008 	.word	0x20000008
 8000250:	00000000 	.word	0x00000000
 8000254:	080003e0 	.word	0x080003e0

08000258 <frame_dummy>:
 8000258:	b508      	push	{r3, lr}
 800025a:	4b03      	ldr	r3, [pc, #12]	@ (8000268 <frame_dummy+0x10>)
 800025c:	b11b      	cbz	r3, 8000266 <frame_dummy+0xe>
 800025e:	4903      	ldr	r1, [pc, #12]	@ (800026c <frame_dummy+0x14>)
 8000260:	4803      	ldr	r0, [pc, #12]	@ (8000270 <frame_dummy+0x18>)
 8000262:	f3af 8000 	nop.w
 8000266:	bd08      	pop	{r3, pc}
 8000268:	00000000 	.word	0x00000000
 800026c:	2000000c 	.word	0x2000000c
 8000270:	080003e0 	.word	0x080003e0

08000274 <Reset_Handler>:
 8000274:	f7ff ff4e 	bl	8000114 <SystemInit>
 8000278:	480b      	ldr	r0, [pc, #44]	@ (80002a8 <LoopFillZerobss+0xe>)
 800027a:	490c      	ldr	r1, [pc, #48]	@ (80002ac <LoopFillZerobss+0x12>)
 800027c:	4a0c      	ldr	r2, [pc, #48]	@ (80002b0 <LoopFillZerobss+0x16>)
 800027e:	2300      	movs	r3, #0
 8000280:	e002      	b.n	8000288 <LoopCopyDataInit>

08000282 <CopyDataInit>:
 8000282:	58d4      	ldr	r4, [r2, r3]
 8000284:	50c4      	str	r4, [r0, r3]
 8000286:	3304      	adds	r3, #4

08000288 <LoopCopyDataInit>:
 8000288:	18c4      	adds	r4, r0, r3
 800028a:	428c      	cmp	r4, r1
 800028c:	d3f9      	bcc.n	8000282 <CopyDataInit>
 800028e:	4a09      	ldr	r2, [pc, #36]	@ (80002b4 <LoopFillZerobss+0x1a>)
 8000290:	4c09      	ldr	r4, [pc, #36]	@ (80002b8 <LoopFillZerobss+0x1e>)
 8000292:	2300      	movs	r3, #0
 8000294:	e001      	b.n	800029a <LoopFillZerobss>

08000296 <FillZerobss>:
 8000296:	6013      	str	r3, [r2, #0]
 8000298:	3204      	adds	r2, #4

0800029a <LoopFillZerobss>:
 800029a:	42a2      	cmp	r2, r4
 800029c:	d3fb      	bcc.n	8000296 <FillZerobss>
 800029e:	f000 f815 	bl	80002cc <__libc_init_array>
 80002a2:	f7ff ff33 	bl	800010c <main>
 80002a6:	4770      	bx	lr
 80002a8:	20000000 	.word	0x20000000
 80002ac:	20000008 	.word	0x20000008
 80002b0:	0800041c 	.word	0x0800041c
 80002b4:	20000008 	.word	0x20000008
 80002b8:	200001bc 	.word	0x200001bc

080002bc <ADC1_2_IRQHandler>:
 80002bc:	e7fe      	b.n	80002bc <ADC1_2_IRQHandler>
	...

080002c0 <atexit>:
 80002c0:	2300      	movs	r3, #0
 80002c2:	4601      	mov	r1, r0
 80002c4:	461a      	mov	r2, r3
 80002c6:	4618      	mov	r0, r3
 80002c8:	f000 b840 	b.w	800034c <__register_exitproc>

080002cc <__libc_init_array>:
 80002cc:	b570      	push	{r4, r5, r6, lr}
 80002ce:	4b0f      	ldr	r3, [pc, #60]	@ (800030c <__libc_init_array+0x40>)
 80002d0:	4d0f      	ldr	r5, [pc, #60]	@ (8000310 <__libc_init_array+0x44>)
 80002d2:	42ab      	cmp	r3, r5
 80002d4:	eba3 0605 	sub.w	r6, r3, r5
 80002d8:	d007      	beq.n	80002ea <__libc_init_array+0x1e>
 80002da:	2400      	movs	r4, #0
 80002dc:	10b6      	asrs	r6, r6, #2
 80002de:	f855 3b04 	ldr.w	r3, [r5], #4
 80002e2:	3401      	adds	r4, #1
 80002e4:	4798      	blx	r3
 80002e6:	42a6      	cmp	r6, r4
 80002e8:	d8f9      	bhi.n	80002de <__libc_init_array+0x12>
 80002ea:	f000 f879 	bl	80003e0 <_init>
 80002ee:	4d09      	ldr	r5, [pc, #36]	@ (8000314 <__libc_init_array+0x48>)
 80002f0:	4b09      	ldr	r3, [pc, #36]	@ (8000318 <__libc_init_array+0x4c>)
 80002f2:	1b5e      	subs	r6, r3, r5
 80002f4:	42ab      	cmp	r3, r5
 80002f6:	ea4f 06a6 	mov.w	r6, r6, asr #2
 80002fa:	d006      	beq.n	800030a <__libc_init_array+0x3e>
 80002fc:	2400      	movs	r4, #0
 80002fe:	f855 3b04 	ldr.w	r3, [r5], #4
 8000302:	3401      	adds	r4, #1
 8000304:	4798      	blx	r3
 8000306:	42a6      	cmp	r6, r4
 8000308:	d8f9      	bhi.n	80002fe <__libc_init_array+0x32>
 800030a:	bd70      	pop	{r4, r5, r6, pc}
 800030c:	08000410 	.word	0x08000410
 8000310:	08000410 	.word	0x08000410
 8000314:	08000410 	.word	0x08000410
 8000318:	08000418 	.word	0x08000418

0800031c <__libc_fini_array>:
 800031c:	b538      	push	{r3, r4, r5, lr}
 800031e:	4d07      	ldr	r5, [pc, #28]	@ (800033c <__libc_fini_array+0x20>)
 8000320:	4c07      	ldr	r4, [pc, #28]	@ (8000340 <__libc_fini_array+0x24>)
 8000322:	1b2c      	subs	r4, r5, r4
 8000324:	10a4      	asrs	r4, r4, #2
 8000326:	d005      	beq.n	8000334 <__libc_fini_array+0x18>
 8000328:	3c01      	subs	r4, #1
 800032a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800032e:	4798      	blx	r3
 8000330:	2c00      	cmp	r4, #0
 8000332:	d1f9      	bne.n	8000328 <__libc_fini_array+0xc>
 8000334:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000338:	f000 b858 	b.w	80003ec <_fini>
 800033c:	0800041c 	.word	0x0800041c
 8000340:	08000418 	.word	0x08000418

08000344 <__retarget_lock_acquire_recursive>:
 8000344:	4770      	bx	lr
 8000346:	bf00      	nop

08000348 <__retarget_lock_release_recursive>:
 8000348:	4770      	bx	lr
 800034a:	bf00      	nop

0800034c <__register_exitproc>:
 800034c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000350:	4d1b      	ldr	r5, [pc, #108]	@ (80003c0 <__register_exitproc+0x74>)
 8000352:	4606      	mov	r6, r0
 8000354:	6828      	ldr	r0, [r5, #0]
 8000356:	4698      	mov	r8, r3
 8000358:	460f      	mov	r7, r1
 800035a:	4691      	mov	r9, r2
 800035c:	f7ff fff2 	bl	8000344 <__retarget_lock_acquire_recursive>
 8000360:	4b18      	ldr	r3, [pc, #96]	@ (80003c4 <__register_exitproc+0x78>)
 8000362:	681c      	ldr	r4, [r3, #0]
 8000364:	b31c      	cbz	r4, 80003ae <__register_exitproc+0x62>
 8000366:	6828      	ldr	r0, [r5, #0]
 8000368:	6865      	ldr	r5, [r4, #4]
 800036a:	2d1f      	cmp	r5, #31
 800036c:	dc22      	bgt.n	80003b4 <__register_exitproc+0x68>
 800036e:	b94e      	cbnz	r6, 8000384 <__register_exitproc+0x38>
 8000370:	1c6b      	adds	r3, r5, #1
 8000372:	3502      	adds	r5, #2
 8000374:	6063      	str	r3, [r4, #4]
 8000376:	f844 7025 	str.w	r7, [r4, r5, lsl #2]
 800037a:	f7ff ffe5 	bl	8000348 <__retarget_lock_release_recursive>
 800037e:	2000      	movs	r0, #0
 8000380:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8000384:	2301      	movs	r3, #1
 8000386:	eb04 0185 	add.w	r1, r4, r5, lsl #2
 800038a:	f8c1 9088 	str.w	r9, [r1, #136]	@ 0x88
 800038e:	f8d4 2188 	ldr.w	r2, [r4, #392]	@ 0x188
 8000392:	40ab      	lsls	r3, r5
 8000394:	431a      	orrs	r2, r3
 8000396:	2e02      	cmp	r6, #2
 8000398:	f8c4 2188 	str.w	r2, [r4, #392]	@ 0x188
 800039c:	f8c1 8108 	str.w	r8, [r1, #264]	@ 0x108
 80003a0:	d1e6      	bne.n	8000370 <__register_exitproc+0x24>
 80003a2:	f8d4 218c 	ldr.w	r2, [r4, #396]	@ 0x18c
 80003a6:	431a      	orrs	r2, r3
 80003a8:	f8c4 218c 	str.w	r2, [r4, #396]	@ 0x18c
 80003ac:	e7e0      	b.n	8000370 <__register_exitproc+0x24>
 80003ae:	4c06      	ldr	r4, [pc, #24]	@ (80003c8 <__register_exitproc+0x7c>)
 80003b0:	601c      	str	r4, [r3, #0]
 80003b2:	e7d8      	b.n	8000366 <__register_exitproc+0x1a>
 80003b4:	f7ff ffc8 	bl	8000348 <__retarget_lock_release_recursive>
 80003b8:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 80003bc:	e7e0      	b.n	8000380 <__register_exitproc+0x34>
 80003be:	bf00      	nop
 80003c0:	20000004 	.word	0x20000004
 80003c4:	200001b8 	.word	0x200001b8
 80003c8:	20000028 	.word	0x20000028

080003cc <register_fini>:
 80003cc:	4b02      	ldr	r3, [pc, #8]	@ (80003d8 <register_fini+0xc>)
 80003ce:	b113      	cbz	r3, 80003d6 <register_fini+0xa>
 80003d0:	4802      	ldr	r0, [pc, #8]	@ (80003dc <register_fini+0x10>)
 80003d2:	f7ff bf75 	b.w	80002c0 <atexit>
 80003d6:	4770      	bx	lr
 80003d8:	00000000 	.word	0x00000000
 80003dc:	0800031d 	.word	0x0800031d

080003e0 <_init>:
 80003e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80003e2:	bf00      	nop
 80003e4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80003e6:	bc08      	pop	{r3}
 80003e8:	469e      	mov	lr, r3
 80003ea:	4770      	bx	lr

080003ec <_fini>:
 80003ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80003ee:	bf00      	nop
 80003f0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80003f2:	bc08      	pop	{r3}
 80003f4:	469e      	mov	lr, r3
 80003f6:	4770      	bx	lr
