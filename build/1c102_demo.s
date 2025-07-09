
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438010f 	lu12i.w	$r15,114696(0x1c008)
1c00000c:	039e71ef 	ori	$r15,$r15,0x79c
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038081ef 	ori	$r15,$r15,0x20
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	0380a1ad 	ori	$r13,$r13,0x28
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	54355400 	bl	13652(0x3554) # 1c0045e4 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54359c00 	bl	13724(0x359c) # 1c004634 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54362800 	bl	13864(0x3628) # 1c0046c8 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54365c00 	bl	13916(0x365c) # 1c004704 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54347c00 	bl	13436(0x347c) # 1c00452c <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	5437d000 	bl	14288(0x37d0) # 1c004888 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54371400 	bl	14100(0x3714) # 1c0047dc <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b63084 	ld.w	$r4,$r4,-628(0xd8c)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017000 	bl	368(0x170) # 1c0014c0 <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54015800 	bl	344(0x158) # 1c0014c0 <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014000 	bl	320(0x140) # 1c0014c0 <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54012c00 	bl	300(0x12c) # 1c0014c0 <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54011400 	bl	276(0x114) # 1c0014c0 <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541c6000 	bl	7264(0x1c60) # 1c003034 <DisableInt>
1c0013d8:	541bc400 	bl	7108(0x1bc4) # 1c002f9c <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54230000 	bl	8960(0x2300) # 1c0036e0 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54224000 	bl	8768(0x2240) # 1c003628 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	5415e800 	bl	5608(0x15e8) # 1c0029dc <Uart1_init>
1c0013f8:	541e3000 	bl	7728(0x1e30) # 1c003228 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541c3c00 	bl	7228(0x1c3c) # 1c003058 <EnableInt>
1c001420:	541ed000 	bl	7888(0x1ed0) # 1c0032f0 <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541c9800 	bl	7320(0x1c98) # 1c0030c0 <Wake_Set>
1c00142c:	54228800 	bl	8840(0x2288) # 1c0036b4 <WDG_DogFeed>
1c001430:	541d3c00 	bl	7484(0x1d3c) # 1c00316c <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001444:	02b27084 	addi.w	$r4,$r4,-868(0xc9c)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	541d8c00 	bl	7564(0x1d8c) # 1c0031d8 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00145c:	02b25084 	addi.w	$r4,$r4,-876(0xc94)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	544fe800 	bl	20456(0x4fe8) # 1c00644c <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00147c:	02b20084 	addi.w	$r4,$r4,-896(0xc80)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	544fc800 	bl	20424(0x4fc8) # 1c00644c <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00149c:	02b1c084 	addi.w	$r4,$r4,-912(0xc70)
1c0014a0:	5406f400 	bl	1780(0x6f4) # 1c001b94 <myprintf>
1c0014a4:	57fd43ff 	bl	-704(0xffffd40) # 1c0011e4 <cpu_sleep>
1c0014a8:	0015000c 	move	$r12,$r0
1c0014ac:	00150184 	move	$r4,$r12
1c0014b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014bc:	4c000020 	jirl	$r0,$r1,0

1c0014c0 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014d0:	001500ac 	move	$r12,$r5
1c0014d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014d8:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014dc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014e4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014ec:	2880018c 	ld.w	$r12,$r12,0
1c0014f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014f4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0014f8:	50006c00 	b	108(0x6c) # 1c001564 <AFIO_RemapConfig+0xa4>
1c0014fc:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c001500:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001504:	001831ac 	sra.w	$r12,$r13,$r12
1c001508:	0340058c 	andi	$r12,$r12,0x1
1c00150c:	40004d80 	beqz	$r12,76(0x4c) # 1c001558 <AFIO_RemapConfig+0x98>
1c001510:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001514:	0040858c 	slli.w	$r12,$r12,0x1
1c001518:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00151c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001520:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001524:	001731ac 	sll.w	$r12,$r13,$r12
1c001528:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00152c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001530:	0014300c 	nor	$r12,$r0,$r12
1c001534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001538:	0014b1ac 	and	$r12,$r13,$r12
1c00153c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001540:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001544:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001548:	001731ac 	sll.w	$r12,$r13,$r12
1c00154c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001550:	001531ac 	or	$r12,$r13,$r12
1c001554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001558:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00155c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001560:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001564:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001568:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00156c:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c0014fc <AFIO_RemapConfig+0x3c>
1c001570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001574:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001578:	2980018d 	st.w	$r13,$r12,0
1c00157c:	03400000 	andi	$r0,$r0,0x0
1c001580:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001584:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001588:	4c000020 	jirl	$r0,$r1,0

1c00158c <gpio_get_pin>:
gpio_get_pin():
1c00158c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001590:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001594:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001598:	0015008c 	move	$r12,$r4
1c00159c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015a8:	0382018c 	ori	$r12,$r12,0x80
1c0015ac:	001031ac 	add.w	$r12,$r13,$r12
1c0015b0:	29000180 	st.b	$r0,$r12,0
1c0015b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015bc:	0382018c 	ori	$r12,$r12,0x80
1c0015c0:	001031ac 	add.w	$r12,$r13,$r12
1c0015c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0015c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015cc:	00150184 	move	$r4,$r12
1c0015d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015d8:	4c000020 	jirl	$r0,$r1,0

1c0015dc <gpio_write_pin>:
gpio_write_pin():
1c0015dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015e8:	0015008c 	move	$r12,$r4
1c0015ec:	001500ad 	move	$r13,$r5
1c0015f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015f4:	001501ac 	move	$r12,$r13
1c0015f8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015fc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c001600:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001604:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001628 <gpio_write_pin+0x4c>
1c001608:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00160c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001610:	0382018c 	ori	$r12,$r12,0x80
1c001614:	001031ac 	add.w	$r12,$r13,$r12
1c001618:	0015018d 	move	$r13,$r12
1c00161c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001620:	290001ac 	st.b	$r12,$r13,0
1c001624:	50002000 	b	32(0x20) # 1c001644 <gpio_write_pin+0x68>
1c001628:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00162c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001630:	0382018c 	ori	$r12,$r12,0x80
1c001634:	001031ac 	add.w	$r12,$r13,$r12
1c001638:	0015018d 	move	$r13,$r12
1c00163c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001640:	290001ac 	st.b	$r12,$r13,0
1c001644:	03400000 	andi	$r0,$r0,0x0
1c001648:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00164c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001650:	4c000020 	jirl	$r0,$r1,0

1c001654 <gpio_pin_remap>:
gpio_pin_remap():
1c001654:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001658:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00165c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001660:	0015008c 	move	$r12,$r4
1c001664:	001500ad 	move	$r13,$r5
1c001668:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00166c:	001501ac 	move	$r12,$r13
1c001670:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001674:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001678:	0044918c 	srli.w	$r12,$r12,0x4
1c00167c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001680:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001684:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001688:	03403d8c 	andi	$r12,$r12,0xf
1c00168c:	0040858c 	slli.w	$r12,$r12,0x1
1c001690:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001694:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001698:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c00169c:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c001850 <gpio_pin_remap+0x1fc>
1c0016a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016a8:	580089ac 	beq	$r13,$r12,136(0x88) # 1c001730 <gpio_pin_remap+0xdc>
1c0016ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016b0:	40002180 	beqz	$r12,32(0x20) # 1c0016d0 <gpio_pin_remap+0x7c>
1c0016b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016bc:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c001790 <gpio_pin_remap+0x13c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016c8:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017f0 <gpio_pin_remap+0x19c>
1c0016cc:	50018800 	b	392(0x188) # 1c001854 <gpio_pin_remap+0x200>
1c0016d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016d4:	0380418c 	ori	$r12,$r12,0x10
1c0016d8:	2880018d 	ld.w	$r13,$r12,0
1c0016dc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0016e8:	0014300c 	nor	$r12,$r0,$r12
1c0016ec:	0015018e 	move	$r14,$r12
1c0016f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016f4:	0380418c 	ori	$r12,$r12,0x10
1c0016f8:	0014b9ad 	and	$r13,$r13,$r14
1c0016fc:	2980018d 	st.w	$r13,$r12,0
1c001700:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001704:	0380418c 	ori	$r12,$r12,0x10
1c001708:	2880018d 	ld.w	$r13,$r12,0
1c00170c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001710:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001714:	001731cc 	sll.w	$r12,$r14,$r12
1c001718:	0015018e 	move	$r14,$r12
1c00171c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001720:	0380418c 	ori	$r12,$r12,0x10
1c001724:	001539ad 	or	$r13,$r13,$r14
1c001728:	2980018d 	st.w	$r13,$r12,0
1c00172c:	50012800 	b	296(0x128) # 1c001854 <gpio_pin_remap+0x200>
1c001730:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001734:	0380518c 	ori	$r12,$r12,0x14
1c001738:	2880018d 	ld.w	$r13,$r12,0
1c00173c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001740:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001744:	001731cc 	sll.w	$r12,$r14,$r12
1c001748:	0014300c 	nor	$r12,$r0,$r12
1c00174c:	0015018e 	move	$r14,$r12
1c001750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001754:	0380518c 	ori	$r12,$r12,0x14
1c001758:	0014b9ad 	and	$r13,$r13,$r14
1c00175c:	2980018d 	st.w	$r13,$r12,0
1c001760:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001764:	0380518c 	ori	$r12,$r12,0x14
1c001768:	2880018d 	ld.w	$r13,$r12,0
1c00176c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001770:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001774:	001731cc 	sll.w	$r12,$r14,$r12
1c001778:	0015018e 	move	$r14,$r12
1c00177c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001780:	0380518c 	ori	$r12,$r12,0x14
1c001784:	001539ad 	or	$r13,$r13,$r14
1c001788:	2980018d 	st.w	$r13,$r12,0
1c00178c:	5000c800 	b	200(0xc8) # 1c001854 <gpio_pin_remap+0x200>
1c001790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001794:	0380618c 	ori	$r12,$r12,0x18
1c001798:	2880018d 	ld.w	$r13,$r12,0
1c00179c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017a4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017a8:	0014300c 	nor	$r12,$r0,$r12
1c0017ac:	0015018e 	move	$r14,$r12
1c0017b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b4:	0380618c 	ori	$r12,$r12,0x18
1c0017b8:	0014b9ad 	and	$r13,$r13,$r14
1c0017bc:	2980018d 	st.w	$r13,$r12,0
1c0017c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c4:	0380618c 	ori	$r12,$r12,0x18
1c0017c8:	2880018d 	ld.w	$r13,$r12,0
1c0017cc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017d4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017d8:	0015018e 	move	$r14,$r12
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	0380618c 	ori	$r12,$r12,0x18
1c0017e4:	001539ad 	or	$r13,$r13,$r14
1c0017e8:	2980018d 	st.w	$r13,$r12,0
1c0017ec:	50006800 	b	104(0x68) # 1c001854 <gpio_pin_remap+0x200>
1c0017f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017f4:	0380718c 	ori	$r12,$r12,0x1c
1c0017f8:	2880018d 	ld.w	$r13,$r12,0
1c0017fc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001800:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001804:	001731cc 	sll.w	$r12,$r14,$r12
1c001808:	0014300c 	nor	$r12,$r0,$r12
1c00180c:	0015018e 	move	$r14,$r12
1c001810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001814:	0380718c 	ori	$r12,$r12,0x1c
1c001818:	0014b9ad 	and	$r13,$r13,$r14
1c00181c:	2980018d 	st.w	$r13,$r12,0
1c001820:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001824:	0380718c 	ori	$r12,$r12,0x1c
1c001828:	2880018d 	ld.w	$r13,$r12,0
1c00182c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001830:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001834:	001731cc 	sll.w	$r12,$r14,$r12
1c001838:	0015018e 	move	$r14,$r12
1c00183c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001840:	0380718c 	ori	$r12,$r12,0x1c
1c001844:	001539ad 	or	$r13,$r13,$r14
1c001848:	2980018d 	st.w	$r13,$r12,0
1c00184c:	50000800 	b	8(0x8) # 1c001854 <gpio_pin_remap+0x200>
1c001850:	03400000 	andi	$r0,$r0,0x0
1c001854:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001858:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00185c:	4c000020 	jirl	$r0,$r1,0

1c001860 <gpio_set_direction>:
gpio_set_direction():
1c001860:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001864:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001868:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00186c:	0015008c 	move	$r12,$r4
1c001870:	001500ad 	move	$r13,$r5
1c001874:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001878:	001501ac 	move	$r12,$r13
1c00187c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001880:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001884:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001888:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00188c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001890:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c0018f4 <gpio_set_direction+0x94>
1c001894:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001898:	0381018c 	ori	$r12,$r12,0x40
1c00189c:	2880018d 	ld.w	$r13,$r12,0
1c0018a0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018a8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018ac:	0014300c 	nor	$r12,$r0,$r12
1c0018b0:	0015018e 	move	$r14,$r12
1c0018b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018b8:	0381018c 	ori	$r12,$r12,0x40
1c0018bc:	0014b9ad 	and	$r13,$r13,$r14
1c0018c0:	2980018d 	st.w	$r13,$r12,0
1c0018c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018c8:	0381018c 	ori	$r12,$r12,0x40
1c0018cc:	2880018d 	ld.w	$r13,$r12,0
1c0018d0:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018d8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018dc:	0015018e 	move	$r14,$r12
1c0018e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018e4:	0381018c 	ori	$r12,$r12,0x40
1c0018e8:	001539ad 	or	$r13,$r13,$r14
1c0018ec:	2980018d 	st.w	$r13,$r12,0
1c0018f0:	50008c00 	b	140(0x8c) # 1c00197c <gpio_set_direction+0x11c>
1c0018f4:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0018f8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0018fc:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c001978 <gpio_set_direction+0x118>
1c001900:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001904:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001908:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c001978 <gpio_set_direction+0x118>
1c00190c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001910:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001914:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00191c:	0381418c 	ori	$r12,$r12,0x50
1c001920:	2880018d 	ld.w	$r13,$r12,0
1c001924:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001928:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00192c:	001731cc 	sll.w	$r12,$r14,$r12
1c001930:	0014300c 	nor	$r12,$r0,$r12
1c001934:	0015018e 	move	$r14,$r12
1c001938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00193c:	0381418c 	ori	$r12,$r12,0x50
1c001940:	0014b9ad 	and	$r13,$r13,$r14
1c001944:	2980018d 	st.w	$r13,$r12,0
1c001948:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00194c:	0381418c 	ori	$r12,$r12,0x50
1c001950:	2880018d 	ld.w	$r13,$r12,0
1c001954:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001958:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00195c:	001731cc 	sll.w	$r12,$r14,$r12
1c001960:	0015018e 	move	$r14,$r12
1c001964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001968:	0381418c 	ori	$r12,$r12,0x50
1c00196c:	001539ad 	or	$r13,$r13,$r14
1c001970:	2980018d 	st.w	$r13,$r12,0
1c001974:	50000800 	b	8(0x8) # 1c00197c <gpio_set_direction+0x11c>
1c001978:	03400000 	andi	$r0,$r0,0x0
1c00197c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001980:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001984:	4c000020 	jirl	$r0,$r1,0

1c001988 <myputchar>:
myputchar():
1c001988:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00198c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001990:	29806076 	st.w	$r22,$r3,24(0x18)
1c001994:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001998:	0015008c 	move	$r12,$r4
1c00199c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019a4:	00150185 	move	$r5,$r12
1c0019a8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0019ac:	540fe400 	bl	4068(0xfe4) # 1c002990 <UART_SendData>
1c0019b0:	03400000 	andi	$r0,$r0,0x0
1c0019b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019c0:	4c000020 	jirl	$r0,$r1,0

1c0019c4 <printbase>:
printbase():
1c0019c4:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0019c8:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0019cc:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0019d0:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0019d4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0019d8:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0019dc:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0019e0:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0019e4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0019e8:	40002580 	beqz	$r12,36(0x24) # 1c001a0c <printbase+0x48>
1c0019ec:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f0:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a0c <printbase+0x48>
1c0019f4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f8:	0011300c 	sub.w	$r12,$r0,$r12
1c0019fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a00:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a04:	57ff87ff 	bl	-124(0xfffff84) # 1c001988 <myputchar>
1c001a08:	50000c00 	b	12(0xc) # 1c001a14 <printbase+0x50>
1c001a0c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a18:	50005000 	b	80(0x50) # 1c001a68 <printbase+0xa4>
1c001a1c:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a20:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a24:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a28:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a30 <printbase+0x6c>
1c001a2c:	002a0007 	break	0x7
1c001a30:	00005dcc 	ext.w.b	$r12,$r14
1c001a34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a38:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a3c:	001035cd 	add.w	$r13,$r14,$r13
1c001a40:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a44:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a48:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a4c:	002135cc 	div.wu	$r12,$r14,$r13
1c001a50:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a58 <printbase+0x94>
1c001a54:	002a0007 	break	0x7
1c001a58:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a68:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001a6c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a1c <printbase+0x58>
1c001a70:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a78:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001a7c:	001231ad 	slt	$r13,$r13,$r12
1c001a80:	0013b5ce 	masknez	$r14,$r14,$r13
1c001a84:	0013358c 	maskeqz	$r12,$r12,$r13
1c001a88:	001531cc 	or	$r12,$r14,$r12
1c001a8c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a90:	50007400 	b	116(0x74) # 1c001b04 <printbase+0x140>
1c001a94:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a9c:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001ab8 <printbase+0xf4>
1c001aa0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001aa4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001aa8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001aac:	001031ac 	add.w	$r12,$r13,$r12
1c001ab0:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001ab4:	50000800 	b	8(0x8) # 1c001abc <printbase+0xf8>
1c001ab8:	0015000c 	move	$r12,$r0
1c001abc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001ac0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001ac4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ac8:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001ae0 <printbase+0x11c>
1c001acc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ad0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ad4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001ad8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001adc:	50001400 	b	20(0x14) # 1c001af0 <printbase+0x12c>
1c001ae0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae8:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001aec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001af0:	00150184 	move	$r4,$r12
1c001af4:	57fe97ff 	bl	-364(0xffffe94) # 1c001988 <myputchar>
1c001af8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001afc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b08:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001a94 <printbase+0xd0>
1c001b0c:	0015000c 	move	$r12,$r0
1c001b10:	00150184 	move	$r4,$r12
1c001b14:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b18:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b1c:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b20:	4c000020 	jirl	$r0,$r1,0

1c001b24 <puts>:
puts():
1c001b24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b38:	50003000 	b	48(0x30) # 1c001b68 <puts+0x44>
1c001b3c:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b40:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b44:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b50 <puts+0x2c>
1c001b48:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b4c:	57fe3fff 	bl	-452(0xffffe3c) # 1c001988 <myputchar>
1c001b50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b54:	00150184 	move	$r4,$r12
1c001b58:	57fe33ff 	bl	-464(0xffffe30) # 1c001988 <myputchar>
1c001b5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b64:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b6c:	2a00018c 	ld.bu	$r12,$r12,0
1c001b70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b74:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001b78:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b3c <puts+0x18>
1c001b7c:	0015000c 	move	$r12,$r0
1c001b80:	00150184 	move	$r4,$r12
1c001b84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b90:	4c000020 	jirl	$r0,$r1,0

1c001b94 <myprintf>:
myprintf():
1c001b94:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001b98:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001b9c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001ba0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001ba4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001ba8:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bac:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bb0:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bb4:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bb8:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bbc:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bc0:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bc4:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001bc8:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001bcc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bd4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001bd8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001bdc:	50033000 	b	816(0x330) # 1c001f0c <myprintf+0x378>
1c001be0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001be4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001be8:	001031ac 	add.w	$r12,$r13,$r12
1c001bec:	2a00018c 	ld.bu	$r12,$r12,0
1c001bf0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001bf4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001bf8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001bfc:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001ee0 <myprintf+0x34c>
1c001c00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c14:	001031ac 	add.w	$r12,$r13,$r12
1c001c18:	2800018c 	ld.b	$r12,$r12,0
1c001c1c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c20:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c24:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001ed0 <myprintf+0x33c>
1c001c28:	0040898d 	slli.w	$r13,$r12,0x2
1c001c2c:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001c30:	0293a18c 	addi.w	$r12,$r12,1256(0x4e8)
1c001c34:	001031ac 	add.w	$r12,$r13,$r12
1c001c38:	2880018c 	ld.w	$r12,$r12,0
1c001c3c:	4c000180 	jirl	$r0,$r12,0
1c001c40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c44:	2880018c 	ld.w	$r12,$r12,0
1c001c48:	00150184 	move	$r4,$r12
1c001c4c:	57fedbff 	bl	-296(0xffffed8) # 1c001b24 <puts>
1c001c50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c54:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c68:	50029800 	b	664(0x298) # 1c001f00 <myprintf+0x36c>
1c001c6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c70:	2880018c 	ld.w	$r12,$r12,0
1c001c74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c78:	00150184 	move	$r4,$r12
1c001c7c:	57fd0fff 	bl	-756(0xffffd0c) # 1c001988 <myputchar>
1c001c80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c84:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c88:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c98:	50026800 	b	616(0x268) # 1c001f00 <myprintf+0x36c>
1c001c9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ca0:	2880018c 	ld.w	$r12,$r12,0
1c001ca4:	00150007 	move	$r7,$r0
1c001ca8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cac:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cb0:	00150184 	move	$r4,$r12
1c001cb4:	57fd13ff 	bl	-752(0xffffd10) # 1c0019c4 <printbase>
1c001cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cbc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cd0:	50023000 	b	560(0x230) # 1c001f00 <myprintf+0x36c>
1c001cd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cd8:	2880018c 	ld.w	$r12,$r12,0
1c001cdc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001ce0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001ce4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ce8:	00150184 	move	$r4,$r12
1c001cec:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019c4 <printbase>
1c001cf0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cf4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cf8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d08:	5001f800 	b	504(0x1f8) # 1c001f00 <myprintf+0x36c>
1c001d0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d10:	2880018c 	ld.w	$r12,$r12,0
1c001d14:	00150007 	move	$r7,$r0
1c001d18:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d1c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d20:	00150184 	move	$r4,$r12
1c001d24:	57fca3ff 	bl	-864(0xffffca0) # 1c0019c4 <printbase>
1c001d28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d40:	5001c000 	b	448(0x1c0) # 1c001f00 <myprintf+0x36c>
1c001d44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d48:	2880018c 	ld.w	$r12,$r12,0
1c001d4c:	00150007 	move	$r7,$r0
1c001d50:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d54:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d58:	00150184 	move	$r4,$r12
1c001d5c:	57fc6bff 	bl	-920(0xffffc68) # 1c0019c4 <printbase>
1c001d60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d78:	50018800 	b	392(0x188) # 1c001f00 <myprintf+0x36c>
1c001d7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d80:	2880018c 	ld.w	$r12,$r12,0
1c001d84:	00150007 	move	$r7,$r0
1c001d88:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001d8c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d90:	00150184 	move	$r4,$r12
1c001d94:	57fc33ff 	bl	-976(0xffffc30) # 1c0019c4 <printbase>
1c001d98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001db0:	50015000 	b	336(0x150) # 1c001f00 <myprintf+0x36c>
1c001db4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001db8:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001988 <myputchar>
1c001dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dc8:	50013800 	b	312(0x138) # 1c001f00 <myprintf+0x36c>
1c001dcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ddc:	50003c00 	b	60(0x3c) # 1c001e18 <myprintf+0x284>
1c001de0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001de4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001de8:	001c31ad 	mul.w	$r13,$r13,$r12
1c001dec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001df4:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001df8:	001031cc 	add.w	$r12,$r14,$r12
1c001dfc:	2800018c 	ld.b	$r12,$r12,0
1c001e00:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e04:	001031ac 	add.w	$r12,$r13,$r12
1c001e08:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e24:	001031ac 	add.w	$r12,$r13,$r12
1c001e28:	2800018d 	ld.b	$r13,$r12,0
1c001e2c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e30:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c08 <myprintf+0x74>
1c001e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e3c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e40:	001031ac 	add.w	$r12,$r13,$r12
1c001e44:	2800018d 	ld.b	$r13,$r12,0
1c001e48:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e4c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001de0 <myprintf+0x24c>
1c001e50:	53fdbbff 	b	-584(0xffffdb8) # 1c001c08 <myprintf+0x74>
1c001e54:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e58:	50003c00 	b	60(0x3c) # 1c001e94 <myprintf+0x300>
1c001e5c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e60:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e64:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e70:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e74:	001031cc 	add.w	$r12,$r14,$r12
1c001e78:	2800018c 	ld.b	$r12,$r12,0
1c001e7c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e80:	001031ac 	add.w	$r12,$r13,$r12
1c001e84:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e9c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ea0:	001031ac 	add.w	$r12,$r13,$r12
1c001ea4:	2800018d 	ld.b	$r13,$r12,0
1c001ea8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001eac:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c08 <myprintf+0x74>
1c001eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001eb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eb8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ebc:	001031ac 	add.w	$r12,$r13,$r12
1c001ec0:	2800018d 	ld.b	$r13,$r12,0
1c001ec4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001ec8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e5c <myprintf+0x2c8>
1c001ecc:	53fd3fff 	b	-708(0xffffd3c) # 1c001c08 <myprintf+0x74>
1c001ed0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ed4:	57fab7ff 	bl	-1356(0xffffab4) # 1c001988 <myputchar>
1c001ed8:	03400000 	andi	$r0,$r0,0x0
1c001edc:	50002400 	b	36(0x24) # 1c001f00 <myprintf+0x36c>
1c001ee0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ee4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ee8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001ef4 <myprintf+0x360>
1c001eec:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001ef0:	57fa9bff 	bl	-1384(0xffffa98) # 1c001988 <myputchar>
1c001ef4:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001ef8:	00150184 	move	$r4,$r12
1c001efc:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001988 <myputchar>
1c001f00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f14:	001031ac 	add.w	$r12,$r13,$r12
1c001f18:	2800018c 	ld.b	$r12,$r12,0
1c001f1c:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001be0 <myprintf+0x4c>
1c001f20:	0015000c 	move	$r12,$r0
1c001f24:	00150184 	move	$r4,$r12
1c001f28:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f2c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f30:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f34:	4c000020 	jirl	$r0,$r1,0

1c001f38 <vsputs>:
vsputs():
1c001f38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001f40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001f44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f4c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f50:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001f54:	5415c400 	bl	5572(0x15c4) # 1c003518 <strlen>
1c001f58:	0015008c 	move	$r12,$r4
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f68:	54155400 	bl	5460(0x1554) # 1c0034bc <strcpy>
1c001f6c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f74:	001031ac 	add.w	$r12,$r13,$r12
1c001f78:	00150184 	move	$r4,$r12
1c001f7c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001f80:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001f84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001f88:	4c000020 	jirl	$r0,$r1,0

1c001f8c <vsputchar>:
vsputchar():
1c001f8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001f94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f98:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001f9c:	001500ac 	move	$r12,$r5
1c001fa0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa8:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001fac:	2900018d 	st.b	$r13,$r12,0
1c001fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	00150184 	move	$r4,$r12
1c001fc4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001fc8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fcc:	4c000020 	jirl	$r0,$r1,0

1c001fd0 <vsprintbase>:
vsprintbase():
1c001fd0:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001fd4:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001fd8:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001fdc:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001fe0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001fe4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001fe8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001fec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ff0:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001ff4:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001ff8:	40002d80 	beqz	$r12,44(0x2c) # 1c002024 <vsprintbase+0x54>
1c001ffc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002000:	64002580 	bge	$r12,$r0,36(0x24) # 1c002024 <vsprintbase+0x54>
1c002004:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002008:	0011300c 	sub.w	$r12,$r0,$r12
1c00200c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002010:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c002014:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002018:	57ff77ff 	bl	-140(0xfffff74) # 1c001f8c <vsputchar>
1c00201c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002020:	50000c00 	b	12(0xc) # 1c00202c <vsprintbase+0x5c>
1c002024:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002028:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00202c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002030:	50005000 	b	80(0x50) # 1c002080 <vsprintbase+0xb0>
1c002034:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c002038:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00203c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c002040:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002048 <vsprintbase+0x78>
1c002044:	002a0007 	break	0x7
1c002048:	00005dcc 	ext.w.b	$r12,$r14
1c00204c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002050:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002054:	001035cd 	add.w	$r13,$r14,$r13
1c002058:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00205c:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c002060:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002064:	002135cc 	div.wu	$r12,$r14,$r13
1c002068:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002070 <vsprintbase+0xa0>
1c00206c:	002a0007 	break	0x7
1c002070:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002078:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00207c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002080:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002084:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c002034 <vsprintbase+0x64>
1c002088:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c00208c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002090:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002094:	001231ad 	slt	$r13,$r13,$r12
1c002098:	0013b5ce 	masknez	$r14,$r14,$r13
1c00209c:	0013358c 	maskeqz	$r12,$r12,$r13
1c0020a0:	001531cc 	or	$r12,$r14,$r12
1c0020a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020a8:	50008400 	b	132(0x84) # 1c00212c <vsprintbase+0x15c>
1c0020ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0020b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020b4:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020d0 <vsprintbase+0x100>
1c0020b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0020c0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0020c4:	001031ac 	add.w	$r12,$r13,$r12
1c0020c8:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0020cc:	50000800 	b	8(0x8) # 1c0020d4 <vsprintbase+0x104>
1c0020d0:	0015000c 	move	$r12,$r0
1c0020d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0020d8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0020dc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0020e0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020fc <vsprintbase+0x12c>
1c0020e4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0020e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020ec:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0020f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020f4:	00005d8c 	ext.w.b	$r12,$r12
1c0020f8:	50001800 	b	24(0x18) # 1c002110 <vsprintbase+0x140>
1c0020fc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002100:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002104:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c002108:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00210c:	00005d8c 	ext.w.b	$r12,$r12
1c002110:	00150185 	move	$r5,$r12
1c002114:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002118:	57fe77ff 	bl	-396(0xffffe74) # 1c001f8c <vsputchar>
1c00211c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002120:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002124:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002128:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00212c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002130:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c0020ac <vsprintbase+0xdc>
1c002134:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002138:	00150184 	move	$r4,$r12
1c00213c:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c002140:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002144:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002148:	4c000020 	jirl	$r0,$r1,0

1c00214c <vsprintf>:
vsprintf():
1c00214c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002150:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002154:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002158:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00215c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002160:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002164:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002168:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00216c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002170:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002174:	50036c00 	b	876(0x36c) # 1c0024e0 <vsprintf+0x394>
1c002178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00217c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002180:	001031ac 	add.w	$r12,$r13,$r12
1c002184:	2a00018c 	ld.bu	$r12,$r12,0
1c002188:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00218c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002190:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002194:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c0024a4 <vsprintf+0x358>
1c002198:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00219c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021a8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0021ac:	001031ac 	add.w	$r12,$r13,$r12
1c0021b0:	2800018c 	ld.b	$r12,$r12,0
1c0021b4:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0021b8:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0021bc:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c00248c <vsprintf+0x340>
1c0021c0:	0040898d 	slli.w	$r13,$r12,0x2
1c0021c4:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c0021c8:	0282818c 	addi.w	$r12,$r12,160(0xa0)
1c0021cc:	001031ac 	add.w	$r12,$r13,$r12
1c0021d0:	2880018c 	ld.w	$r12,$r12,0
1c0021d4:	4c000180 	jirl	$r0,$r12,0
1c0021d8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0021dc:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0021e0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0021e4:	2880018c 	ld.w	$r12,$r12,0
1c0021e8:	00150185 	move	$r5,$r12
1c0021ec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021f0:	57fd4bff 	bl	-696(0xffffd48) # 1c001f38 <vsputs>
1c0021f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002200:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002204:	5002d000 	b	720(0x2d0) # 1c0024d4 <vsprintf+0x388>
1c002208:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00220c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002210:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002214:	2880018c 	ld.w	$r12,$r12,0
1c002218:	00005d8c 	ext.w.b	$r12,$r12
1c00221c:	00150185 	move	$r5,$r12
1c002220:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002224:	57fd6bff 	bl	-664(0xffffd68) # 1c001f8c <vsputchar>
1c002228:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00222c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002230:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002234:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002238:	50029c00 	b	668(0x29c) # 1c0024d4 <vsprintf+0x388>
1c00223c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002240:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002244:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002248:	2880018c 	ld.w	$r12,$r12,0
1c00224c:	00150008 	move	$r8,$r0
1c002250:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002254:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002258:	00150185 	move	$r5,$r12
1c00225c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002260:	57fd73ff 	bl	-656(0xffffd70) # 1c001fd0 <vsprintbase>
1c002264:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002268:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00226c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002270:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002274:	50026000 	b	608(0x260) # 1c0024d4 <vsprintf+0x388>
1c002278:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00227c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002280:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002284:	2880018c 	ld.w	$r12,$r12,0
1c002288:	02800408 	addi.w	$r8,$r0,1(0x1)
1c00228c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002290:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002294:	00150185 	move	$r5,$r12
1c002298:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00229c:	57fd37ff 	bl	-716(0xffffd34) # 1c001fd0 <vsprintbase>
1c0022a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022b0:	50022400 	b	548(0x224) # 1c0024d4 <vsprintf+0x388>
1c0022b4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022b8:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022bc:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022c0:	2880018c 	ld.w	$r12,$r12,0
1c0022c4:	00150008 	move	$r8,$r0
1c0022c8:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0022cc:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022d0:	00150185 	move	$r5,$r12
1c0022d4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022d8:	57fcfbff 	bl	-776(0xffffcf8) # 1c001fd0 <vsprintbase>
1c0022dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022ec:	5001e800 	b	488(0x1e8) # 1c0024d4 <vsprintf+0x388>
1c0022f0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022f4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022f8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022fc:	2880018c 	ld.w	$r12,$r12,0
1c002300:	00150008 	move	$r8,$r0
1c002304:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002308:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c00230c:	00150185 	move	$r5,$r12
1c002310:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002314:	57fcbfff 	bl	-836(0xffffcbc) # 1c001fd0 <vsprintbase>
1c002318:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00231c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002320:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002324:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002328:	5001ac00 	b	428(0x1ac) # 1c0024d4 <vsprintf+0x388>
1c00232c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002330:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002334:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002338:	2880018c 	ld.w	$r12,$r12,0
1c00233c:	00150008 	move	$r8,$r0
1c002340:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002344:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002348:	00150185 	move	$r5,$r12
1c00234c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002350:	57fc83ff 	bl	-896(0xffffc80) # 1c001fd0 <vsprintbase>
1c002354:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002358:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00235c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002360:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002364:	50017000 	b	368(0x170) # 1c0024d4 <vsprintf+0x388>
1c002368:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00236c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002370:	57fc1fff 	bl	-996(0xffffc1c) # 1c001f8c <vsputchar>
1c002374:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002378:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00237c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002380:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002384:	50015000 	b	336(0x150) # 1c0024d4 <vsprintf+0x388>
1c002388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00238c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002390:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002394:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002398:	50003c00 	b	60(0x3c) # 1c0023d4 <vsprintf+0x288>
1c00239c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023a0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023a4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b0:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0023b4:	001031cc 	add.w	$r12,$r14,$r12
1c0023b8:	2800018c 	ld.b	$r12,$r12,0
1c0023bc:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023c0:	001031ac 	add.w	$r12,$r13,$r12
1c0023c4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023dc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023e0:	001031ac 	add.w	$r12,$r13,$r12
1c0023e4:	2800018d 	ld.b	$r13,$r12,0
1c0023e8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023ec:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c0021a0 <vsprintf+0x54>
1c0023f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023f8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023fc:	001031ac 	add.w	$r12,$r13,$r12
1c002400:	2800018d 	ld.b	$r13,$r12,0
1c002404:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002408:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00239c <vsprintf+0x250>
1c00240c:	53fd97ff 	b	-620(0xffffd94) # 1c0021a0 <vsprintf+0x54>
1c002410:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002414:	50003c00 	b	60(0x3c) # 1c002450 <vsprintf+0x304>
1c002418:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00241c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002420:	001c31ad 	mul.w	$r13,$r13,$r12
1c002424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00242c:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c002430:	001031cc 	add.w	$r12,$r14,$r12
1c002434:	2800018c 	ld.b	$r12,$r12,0
1c002438:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c00243c:	001031ac 	add.w	$r12,$r13,$r12
1c002440:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002448:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00244c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002454:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002458:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00245c:	001031ac 	add.w	$r12,$r13,$r12
1c002460:	2800018d 	ld.b	$r13,$r12,0
1c002464:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002468:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c0021a0 <vsprintf+0x54>
1c00246c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002470:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002474:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002478:	001031ac 	add.w	$r12,$r13,$r12
1c00247c:	2800018d 	ld.b	$r13,$r12,0
1c002480:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002484:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002418 <vsprintf+0x2cc>
1c002488:	53fd1bff 	b	-744(0xffffd18) # 1c0021a0 <vsprintf+0x54>
1c00248c:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002490:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002494:	57fafbff 	bl	-1288(0xffffaf8) # 1c001f8c <vsputchar>
1c002498:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00249c:	03400000 	andi	$r0,$r0,0x0
1c0024a0:	50003400 	b	52(0x34) # 1c0024d4 <vsprintf+0x388>
1c0024a4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0024a8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0024ac:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0024c0 <vsprintf+0x374>
1c0024b0:	02803405 	addi.w	$r5,$r0,13(0xd)
1c0024b4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024b8:	57fad7ff 	bl	-1324(0xffffad4) # 1c001f8c <vsputchar>
1c0024bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024c0:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c0024c4:	00150185 	move	$r5,$r12
1c0024c8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024cc:	57fac3ff 	bl	-1344(0xffffac0) # 1c001f8c <vsputchar>
1c0024d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024e4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0024e8:	001031ac 	add.w	$r12,$r13,$r12
1c0024ec:	2800018c 	ld.b	$r12,$r12,0
1c0024f0:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002178 <vsprintf+0x2c>
1c0024f4:	00150005 	move	$r5,$r0
1c0024f8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024fc:	57fa93ff 	bl	-1392(0xffffa90) # 1c001f8c <vsputchar>
1c002500:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002508:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00250c:	001131ac 	sub.w	$r12,$r13,$r12
1c002510:	00150184 	move	$r4,$r12
1c002514:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002518:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00251c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002520:	4c000020 	jirl	$r0,$r1,0

1c002524 <sprintf>:
sprintf():
1c002524:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c002528:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00252c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002530:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002534:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002538:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00253c:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002540:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002544:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002548:	298052c9 	st.w	$r9,$r22,20(0x14)
1c00254c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002550:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002554:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002558:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c00255c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002560:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002564:	00150186 	move	$r6,$r12
1c002568:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00256c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002570:	57fbdfff 	bl	-1060(0xffffbdc) # 1c00214c <vsprintf>
1c002574:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002578:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00257c:	00150184 	move	$r4,$r12
1c002580:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002584:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002588:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00258c:	4c000020 	jirl	$r0,$r1,0

1c002590 <UART_Init>:
UART_Init():
1c002590:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002594:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002598:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00259c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025a0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0025a4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025a8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0025ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025b0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025b8:	03403d8c 	andi	$r12,$r12,0xf
1c0025bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025c4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025cc:	0044918c 	srli.w	$r12,$r12,0x4
1c0025d0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0025d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025d8:	40000d80 	beqz	$r12,12(0xc) # 1c0025e4 <UART_Init+0x54>
1c0025dc:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0025e0:	44001980 	bnez	$r12,24(0x18) # 1c0025f8 <UART_Init+0x68>
1c0025e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025e8:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0025ec:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0025f0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0025f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0025fc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002600:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c002618 <UART_Init+0x88>
1c002604:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002608:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c00260c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002610:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002614:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00261c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002620:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002624:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002628:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00262c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00263c <UART_Init+0xac>
1c002630:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002634:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002638:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002698 <UART_Init+0x108>
1c00263c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002640:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002644:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002648:	2880018c 	ld.w	$r12,$r12,0
1c00264c:	002131ae 	div.wu	$r14,$r13,$r12
1c002650:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002658 <UART_Init+0xc8>
1c002654:	002a0007 	break	0x7
1c002658:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00265c:	002135cc 	div.wu	$r12,$r14,$r13
1c002660:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002668 <UART_Init+0xd8>
1c002664:	002a0007 	break	0x7
1c002668:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00266c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002670:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002674:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002678:	2880018e 	ld.w	$r14,$r12,0
1c00267c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002680:	001c31ce 	mul.w	$r14,$r14,$r12
1c002684:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002688:	001c31cc 	mul.w	$r12,$r14,$r12
1c00268c:	001131ac 	sub.w	$r12,$r13,$r12
1c002690:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002694:	50005400 	b	84(0x54) # 1c0026e8 <UART_Init+0x158>
1c002698:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00269c:	2880018c 	ld.w	$r12,$r12,0
1c0026a0:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026a4:	002131ae 	div.wu	$r14,$r13,$r12
1c0026a8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0026b0 <UART_Init+0x120>
1c0026ac:	002a0007 	break	0x7
1c0026b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0026b4:	002135cc 	div.wu	$r12,$r14,$r13
1c0026b8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0026c0 <UART_Init+0x130>
1c0026bc:	002a0007 	break	0x7
1c0026c0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026c8:	2880018d 	ld.w	$r13,$r12,0
1c0026cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026d0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026d8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0026dc:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026e0:	001131ac 	sub.w	$r12,$r13,$r12
1c0026e4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026e8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0026ec:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0026f0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026f8:	2880018c 	ld.w	$r12,$r12,0
1c0026fc:	002131ae 	div.wu	$r14,$r13,$r12
1c002700:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002708 <UART_Init+0x178>
1c002704:	002a0007 	break	0x7
1c002708:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00270c:	002135cc 	div.wu	$r12,$r14,$r13
1c002710:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002718 <UART_Init+0x188>
1c002714:	002a0007 	break	0x7
1c002718:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00271c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002720:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002724:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002728:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00272c:	001531ac 	or	$r12,$r13,$r12
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002738:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00273c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002740:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002744:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002748:	2900018d 	st.b	$r13,$r12,0
1c00274c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002750:	0044a18c 	srli.w	$r12,$r12,0x8
1c002754:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00275c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002760:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002764:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002768:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00276c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002774:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002778:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00277c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002780:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002784:	0341fd8c 	andi	$r12,$r12,0x7f
1c002788:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00278c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002790:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002794:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002798:	29000580 	st.b	$r0,$r12,1(0x1)
1c00279c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027a8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027ac:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0027b0:	001531ac 	or	$r12,$r13,$r12
1c0027b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027bc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027c4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027d0:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0027d4:	001531ac 	or	$r12,$r13,$r12
1c0027d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027f4:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0027f8:	001531ac 	or	$r12,$r13,$r12
1c0027fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002800:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002804:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002808:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00280c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002810:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002814:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002818:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c00281c:	001531ac 	or	$r12,$r13,$r12
1c002820:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002824:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002828:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00282c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002830:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002834:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002838:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00283c:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002840:	001531ac 	or	$r12,$r13,$r12
1c002844:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002848:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00284c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002850:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002854:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002858:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00285c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002860:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002864:	001531ac 	or	$r12,$r13,$r12
1c002868:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00286c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002870:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002874:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002878:	2a00018c 	ld.bu	$r12,$r12,0
1c00287c:	03400000 	andi	$r0,$r0,0x0
1c002880:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002884:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002888:	4c000020 	jirl	$r0,$r1,0

1c00288c <UART_StructInit>:
UART_StructInit():
1c00288c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002890:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002894:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002898:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00289c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028a0:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0028a4:	038801ad 	ori	$r13,$r13,0x200
1c0028a8:	2980018d 	st.w	$r13,$r12,0
1c0028ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028b0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0028b4:	038801ad 	ori	$r13,$r13,0x200
1c0028b8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0028bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028c0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0028c4:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0028c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028cc:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0028d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d4:	29003580 	st.b	$r0,$r12,13(0xd)
1c0028d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028dc:	29003180 	st.b	$r0,$r12,12(0xc)
1c0028e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e4:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0028e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028ec:	29003980 	st.b	$r0,$r12,14(0xe)
1c0028f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f4:	29402180 	st.h	$r0,$r12,8(0x8)
1c0028f8:	03400000 	andi	$r0,$r0,0x0
1c0028fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002900:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002904:	4c000020 	jirl	$r0,$r1,0

1c002908 <UART_ITConfig>:
UART_ITConfig():
1c002908:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00290c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002910:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002914:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002918:	001500ac 	move	$r12,$r5
1c00291c:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c002920:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002924:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002928:	40002980 	beqz	$r12,40(0x28) # 1c002950 <UART_ITConfig+0x48>
1c00292c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002930:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002934:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002938:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00293c:	001531ac 	or	$r12,$r13,$r12
1c002940:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002948:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00294c:	50003400 	b	52(0x34) # 1c002980 <UART_ITConfig+0x78>
1c002950:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002954:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002958:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00295c:	00005d8d 	ext.w.b	$r13,$r12
1c002960:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002964:	0014300c 	nor	$r12,$r0,$r12
1c002968:	00005d8c 	ext.w.b	$r12,$r12
1c00296c:	0014b1ac 	and	$r12,$r13,$r12
1c002970:	00005d8c 	ext.w.b	$r12,$r12
1c002974:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00297c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002980:	03400000 	andi	$r0,$r0,0x0
1c002984:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002988:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00298c:	4c000020 	jirl	$r0,$r1,0

1c002990 <UART_SendData>:
UART_SendData():
1c002990:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002994:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002998:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00299c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029a0:	001500ac 	move	$r12,$r5
1c0029a4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0029a8:	03400000 	andi	$r0,$r0,0x0
1c0029ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029b0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0029b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0029b8:	0340818c 	andi	$r12,$r12,0x20
1c0029bc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0029ac <UART_SendData+0x1c>
1c0029c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029c4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0029c8:	2900018d 	st.b	$r13,$r12,0
1c0029cc:	03400000 	andi	$r0,$r0,0x0
1c0029d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029d8:	4c000020 	jirl	$r0,$r1,0

1c0029dc <Uart1_init>:
Uart1_init():
1c0029dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029e0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0029e4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0029e8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029ec:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0029f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029f4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0029f8:	57ec5fff 	bl	-5028(0xfffec5c) # 1c001654 <gpio_pin_remap>
1c0029fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a00:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002a04:	57ec53ff 	bl	-5040(0xfffec50) # 1c001654 <gpio_pin_remap>
1c002a08:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a0c:	00150184 	move	$r4,$r12
1c002a10:	57fe7fff 	bl	-388(0xffffe7c) # 1c00288c <UART_StructInit>
1c002a14:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a18:	2897d18c 	ld.w	$r12,$r12,1524(0x5f4)
1c002a1c:	2880018c 	ld.w	$r12,$r12,0
1c002a20:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a24:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a28:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002a2c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a30:	00150185 	move	$r5,$r12
1c002a34:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a38:	57fb5bff 	bl	-1192(0xffffb58) # 1c002590 <UART_Init>
1c002a3c:	00150006 	move	$r6,$r0
1c002a40:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a44:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a48:	57fec3ff 	bl	-320(0xffffec0) # 1c002908 <UART_ITConfig>
1c002a4c:	03400000 	andi	$r0,$r0,0x0
1c002a50:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a54:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a58:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a5c:	4c000020 	jirl	$r0,$r1,0

1c002a60 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002a60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a64:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002a68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a6c:	1400006c 	lu12i.w	$r12,3(0x3)
1c002a70:	03ba018c 	ori	$r12,$r12,0xe80
1c002a74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a78:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002a7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a80:	2880018d 	ld.w	$r13,$r12,0
1c002a84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a88:	038101ad 	ori	$r13,$r13,0x40
1c002a8c:	2980018d 	st.w	$r13,$r12,0
1c002a90:	03400000 	andi	$r0,$r0,0x0
1c002a94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002a9c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002aa0:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002a94 <CLOCK_WaitForHSEStartUp+0x34>
1c002aa4:	50001c00 	b	28(0x1c) # 1c002ac0 <CLOCK_WaitForHSEStartUp+0x60>
1c002aa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002aac:	2880018e 	ld.w	$r14,$r12,0
1c002ab0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ab4:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002ab8:	0014b5cd 	and	$r13,$r14,$r13
1c002abc:	2980018d 	st.w	$r13,$r12,0
1c002ac0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ac4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002ac8:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002aa8 <CLOCK_WaitForHSEStartUp+0x48>
1c002acc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ad0:	2880018d 	ld.w	$r13,$r12,0
1c002ad4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ad8:	038201ad 	ori	$r13,$r13,0x80
1c002adc:	2980018d 	st.w	$r13,$r12,0
1c002ae0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ae4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002ae8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002aec:	00150184 	move	$r4,$r12
1c002af0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002af4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002af8:	4c000020 	jirl	$r0,$r1,0

1c002afc <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002afc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b08:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002b0c:	50008800 	b	136(0x88) # 1c002b94 <CLOCK_WaitForLSEStartUp+0x98>
1c002b10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b14:	2880018e 	ld.w	$r14,$r12,0
1c002b18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b1c:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002b20:	0014b5cd 	and	$r13,$r14,$r13
1c002b24:	2980018d 	st.w	$r13,$r12,0
1c002b28:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002b2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b30:	50001400 	b	20(0x14) # 1c002b44 <CLOCK_WaitForLSEStartUp+0x48>
1c002b34:	03400000 	andi	$r0,$r0,0x0
1c002b38:	03400000 	andi	$r0,$r0,0x0
1c002b3c:	03400000 	andi	$r0,$r0,0x0
1c002b40:	03400000 	andi	$r0,$r0,0x0
1c002b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b48:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b4c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b50:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002b34 <CLOCK_WaitForLSEStartUp+0x38>
1c002b54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b58:	2880018d 	ld.w	$r13,$r12,0
1c002b5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b60:	038081ad 	ori	$r13,$r13,0x20
1c002b64:	2980018d 	st.w	$r13,$r12,0
1c002b68:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002b6c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b70:	50001400 	b	20(0x14) # 1c002b84 <CLOCK_WaitForLSEStartUp+0x88>
1c002b74:	03400000 	andi	$r0,$r0,0x0
1c002b78:	03400000 	andi	$r0,$r0,0x0
1c002b7c:	03400000 	andi	$r0,$r0,0x0
1c002b80:	03400000 	andi	$r0,$r0,0x0
1c002b84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b88:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b8c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002b90:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002b74 <CLOCK_WaitForLSEStartUp+0x78>
1c002b94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b98:	0380118c 	ori	$r12,$r12,0x4
1c002b9c:	2880018d 	ld.w	$r13,$r12,0
1c002ba0:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002ba4:	0014b1ac 	and	$r12,$r13,$r12
1c002ba8:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002b10 <CLOCK_WaitForLSEStartUp+0x14>
1c002bac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bb0:	0380118c 	ori	$r12,$r12,0x4
1c002bb4:	2880018d 	ld.w	$r13,$r12,0
1c002bb8:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002bbc:	0014b1ac 	and	$r12,$r13,$r12
1c002bc0:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002b10 <CLOCK_WaitForLSEStartUp+0x14>
1c002bc4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002bc8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002bcc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002bd0:	00150184 	move	$r4,$r12
1c002bd4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002bd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002bdc:	4c000020 	jirl	$r0,$r1,0

1c002be0 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002be0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002be4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002be8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002bec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002bf0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002bf4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002bf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bfc:	2880018e 	ld.w	$r14,$r12,0
1c002c00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c04:	0014300d 	nor	$r13,$r0,$r12
1c002c08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c0c:	0014b5cd 	and	$r13,$r14,$r13
1c002c10:	2980018d 	st.w	$r13,$r12,0
1c002c14:	1400002c 	lu12i.w	$r12,1(0x1)
1c002c18:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002c1c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c20:	50001400 	b	20(0x14) # 1c002c34 <CLOCK_HSEConfig+0x54>
1c002c24:	03400000 	andi	$r0,$r0,0x0
1c002c28:	03400000 	andi	$r0,$r0,0x0
1c002c2c:	03400000 	andi	$r0,$r0,0x0
1c002c30:	03400000 	andi	$r0,$r0,0x0
1c002c34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c38:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c3c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c40:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c24 <CLOCK_HSEConfig+0x44>
1c002c44:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002c48:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002c4c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002c5c <CLOCK_HSEConfig+0x7c>
1c002c50:	57fe13ff 	bl	-496(0xffffe10) # 1c002a60 <CLOCK_WaitForHSEStartUp>
1c002c54:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002c58:	50002400 	b	36(0x24) # 1c002c7c <CLOCK_HSEConfig+0x9c>
1c002c5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c60:	2880018e 	ld.w	$r14,$r12,0
1c002c64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c68:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c6c:	0014b5cd 	and	$r13,$r14,$r13
1c002c70:	2980018d 	st.w	$r13,$r12,0
1c002c74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c80:	00150184 	move	$r4,$r12
1c002c84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002c88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002c8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c90:	4c000020 	jirl	$r0,$r1,0

1c002c94 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002c94:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c98:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c9c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ca0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ca4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ca8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002cac:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002cb0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002cb4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002cc4 <CLOCK_LSEConfig+0x30>
1c002cb8:	57fe47ff 	bl	-444(0xffffe44) # 1c002afc <CLOCK_WaitForLSEStartUp>
1c002cbc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002cc0:	50002400 	b	36(0x24) # 1c002ce4 <CLOCK_LSEConfig+0x50>
1c002cc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cc8:	2880018e 	ld.w	$r14,$r12,0
1c002ccc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cd0:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002cd4:	0014b5cd 	and	$r13,$r14,$r13
1c002cd8:	2980018d 	st.w	$r13,$r12,0
1c002cdc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ce0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ce4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ce8:	00150184 	move	$r4,$r12
1c002cec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002cf0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002cf4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002cf8:	4c000020 	jirl	$r0,$r1,0

1c002cfc <CLOCK_StructInit>:
CLOCK_StructInit():
1c002cfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002d04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002d08:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d10:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002d14:	2980018d 	st.w	$r13,$r12,0
1c002d18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d1c:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002d20:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002d24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d28:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002d2c:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002d30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d34:	29803180 	st.w	$r0,$r12,12(0xc)
1c002d38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d3c:	29804180 	st.w	$r0,$r12,16(0x10)
1c002d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d44:	29805180 	st.w	$r0,$r12,20(0x14)
1c002d48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d4c:	29806180 	st.w	$r0,$r12,24(0x18)
1c002d50:	03400000 	andi	$r0,$r0,0x0
1c002d54:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d5c:	4c000020 	jirl	$r0,$r1,0

1c002d60 <CLOCK_Init>:
CLOCK_Init():
1c002d60:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d64:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d68:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d6c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d70:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d7c:	2880018e 	ld.w	$r14,$r12,0
1c002d80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d84:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002d88:	0014b5cd 	and	$r13,$r14,$r13
1c002d8c:	2980018d 	st.w	$r13,$r12,0
1c002d90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d94:	2880018e 	ld.w	$r14,$r12,0
1c002d98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d9c:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002da0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002da4:	001535cd 	or	$r13,$r14,$r13
1c002da8:	2980018d 	st.w	$r13,$r12,0
1c002dac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002db0:	2880018e 	ld.w	$r14,$r12,0
1c002db4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002db8:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002dbc:	0014b5cd 	and	$r13,$r14,$r13
1c002dc0:	2980018d 	st.w	$r13,$r12,0
1c002dc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dc8:	2880018e 	ld.w	$r14,$r12,0
1c002dcc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002dd0:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002dd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dd8:	001535cd 	or	$r13,$r14,$r13
1c002ddc:	2980018d 	st.w	$r13,$r12,0
1c002de0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002de4:	2880018e 	ld.w	$r14,$r12,0
1c002de8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dec:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002df0:	039ffdad 	ori	$r13,$r13,0x7ff
1c002df4:	0014b5cd 	and	$r13,$r14,$r13
1c002df8:	2980018d 	st.w	$r13,$r12,0
1c002dfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e00:	2880018e 	ld.w	$r14,$r12,0
1c002e04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e08:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002e0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e10:	001535cd 	or	$r13,$r14,$r13
1c002e14:	2980018d 	st.w	$r13,$r12,0
1c002e18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e1c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002e20:	00150184 	move	$r4,$r12
1c002e24:	57fdbfff 	bl	-580(0xffffdbc) # 1c002be0 <CLOCK_HSEConfig>
1c002e28:	0015008d 	move	$r13,$r4
1c002e2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e30:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002e3c <CLOCK_Init+0xdc>
1c002e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e38:	50015000 	b	336(0x150) # 1c002f88 <CLOCK_Init+0x228>
1c002e3c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e40:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002e44:	00150184 	move	$r4,$r12
1c002e48:	57fe4fff 	bl	-436(0xffffe4c) # 1c002c94 <CLOCK_LSEConfig>
1c002e4c:	0015008d 	move	$r13,$r4
1c002e50:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e54:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002e60 <CLOCK_Init+0x100>
1c002e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e5c:	50012c00 	b	300(0x12c) # 1c002f88 <CLOCK_Init+0x228>
1c002e60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e64:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002e68:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002e6c:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c002f68 <CLOCK_Init+0x208>
1c002e70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e74:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002e78:	4000a180 	beqz	$r12,160(0xa0) # 1c002f18 <CLOCK_Init+0x1b8>
1c002e7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e80:	2880018e 	ld.w	$r14,$r12,0
1c002e84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e88:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002e8c:	03bffdad 	ori	$r13,$r13,0xfff
1c002e90:	0014b5cd 	and	$r13,$r14,$r13
1c002e94:	2980018d 	st.w	$r13,$r12,0
1c002e98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e9c:	2880018e 	ld.w	$r14,$r12,0
1c002ea0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ea4:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002ea8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eac:	001535cd 	or	$r13,$r14,$r13
1c002eb0:	2980018d 	st.w	$r13,$r12,0
1c002eb4:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002eb8:	0386c18c 	ori	$r12,$r12,0x1b0
1c002ebc:	2880018c 	ld.w	$r12,$r12,0
1c002ec0:	40004180 	beqz	$r12,64(0x40) # 1c002f00 <CLOCK_Init+0x1a0>
1c002ec4:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002ec8:	0386c18c 	ori	$r12,$r12,0x1b0
1c002ecc:	2880018c 	ld.w	$r12,$r12,0
1c002ed0:	0040898e 	slli.w	$r14,$r12,0x2
1c002ed4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002ed8:	002031cd 	div.w	$r13,$r14,$r12
1c002edc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002ee4 <CLOCK_Init+0x184>
1c002ee0:	002a0007 	break	0x7
1c002ee4:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002ee8:	001c31ac 	mul.w	$r12,$r13,$r12
1c002eec:	0015018d 	move	$r13,$r12
1c002ef0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ef4:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c002ef8:	2980018d 	st.w	$r13,$r12,0
1c002efc:	50008000 	b	128(0x80) # 1c002f7c <CLOCK_Init+0x21c>
1c002f00:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f04:	0284718c 	addi.w	$r12,$r12,284(0x11c)
1c002f08:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002f0c:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002f10:	2980018d 	st.w	$r13,$r12,0
1c002f14:	50006800 	b	104(0x68) # 1c002f7c <CLOCK_Init+0x21c>
1c002f18:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f1c:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f20:	2880018c 	ld.w	$r12,$r12,0
1c002f24:	40002d80 	beqz	$r12,44(0x2c) # 1c002f50 <CLOCK_Init+0x1f0>
1c002f28:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f2c:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f30:	2880018d 	ld.w	$r13,$r12,0
1c002f34:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002f38:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f3c:	0015018d 	move	$r13,$r12
1c002f40:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f44:	0283718c 	addi.w	$r12,$r12,220(0xdc)
1c002f48:	2980018d 	st.w	$r13,$r12,0
1c002f4c:	50003000 	b	48(0x30) # 1c002f7c <CLOCK_Init+0x21c>
1c002f50:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f54:	0283318c 	addi.w	$r12,$r12,204(0xcc)
1c002f58:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002f5c:	038801ad 	ori	$r13,$r13,0x200
1c002f60:	2980018d 	st.w	$r13,$r12,0
1c002f64:	50001800 	b	24(0x18) # 1c002f7c <CLOCK_Init+0x21c>
1c002f68:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f6c:	0282d18c 	addi.w	$r12,$r12,180(0xb4)
1c002f70:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002f74:	038801ad 	ori	$r13,$r13,0x200
1c002f78:	2980018d 	st.w	$r13,$r12,0
1c002f7c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f88:	00150184 	move	$r4,$r12
1c002f8c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002f90:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002f94:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002f98:	4c000020 	jirl	$r0,$r1,0

1c002f9c <SystemClockInit>:
SystemClockInit():
1c002f9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002fa0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002fa4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002fa8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002fac:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c002fb0:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002fb4:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c002fb8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002fbc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002fc0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002fc4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002fc8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002fcc:	00150184 	move	$r4,$r12
1c002fd0:	57fd2fff 	bl	-724(0xffffd2c) # 1c002cfc <CLOCK_StructInit>
1c002fd4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c002fd8:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c002fdc:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002fe0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002fe4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002fe8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002fec:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ff0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ff4:	1410000c 	lu12i.w	$r12,32768(0x8000)
1c002ff8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ffc:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003000:	00150184 	move	$r4,$r12
1c003004:	57fd5fff 	bl	-676(0xffffd5c) # 1c002d60 <CLOCK_Init>
1c003008:	0015008d 	move	$r13,$r4
1c00300c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003010:	58000dac 	beq	$r13,$r12,12(0xc) # 1c00301c <SystemClockInit+0x80>
1c003014:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003018:	50000800 	b	8(0x8) # 1c003020 <SystemClockInit+0x84>
1c00301c:	0015000c 	move	$r12,$r0
1c003020:	00150184 	move	$r4,$r12
1c003024:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003028:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00302c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003030:	4c000020 	jirl	$r0,$r1,0

1c003034 <DisableInt>:
DisableInt():
1c003034:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003038:	29803076 	st.w	$r22,$r3,12(0xc)
1c00303c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003040:	0380100c 	ori	$r12,$r0,0x4
1c003044:	04000180 	csrxchg	$r0,$r12,0x0
1c003048:	03400000 	andi	$r0,$r0,0x0
1c00304c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003050:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003054:	4c000020 	jirl	$r0,$r1,0

1c003058 <EnableInt>:
EnableInt():
1c003058:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00305c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003060:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003064:	0380100c 	ori	$r12,$r0,0x4
1c003068:	0400018c 	csrxchg	$r12,$r12,0x0
1c00306c:	03400000 	andi	$r0,$r0,0x0
1c003070:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003074:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003078:	4c000020 	jirl	$r0,$r1,0

1c00307c <Set_Timer_stop>:
Set_Timer_stop():
1c00307c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003080:	29803076 	st.w	$r22,$r3,12(0xc)
1c003084:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003088:	04010420 	csrwr	$r0,0x41
1c00308c:	03400000 	andi	$r0,$r0,0x0
1c003090:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003094:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003098:	4c000020 	jirl	$r0,$r1,0

1c00309c <Set_Timer_clear>:
Set_Timer_clear():
1c00309c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0030a0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0030a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0030a8:	0380040c 	ori	$r12,$r0,0x1
1c0030ac:	0401102c 	csrwr	$r12,0x44
1c0030b0:	03400000 	andi	$r0,$r0,0x0
1c0030b4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0030b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0030bc:	4c000020 	jirl	$r0,$r1,0

1c0030c0 <Wake_Set>:
Wake_Set():
1c0030c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0030c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0030c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0030cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0030d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030d4:	40006980 	beqz	$r12,104(0x68) # 1c00313c <Wake_Set+0x7c>
1c0030d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0030dc:	0040a18c 	slli.w	$r12,$r12,0x8
1c0030e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030e4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0030e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030ec:	0380218c 	ori	$r12,$r12,0x8
1c0030f0:	2880018d 	ld.w	$r13,$r12,0
1c0030f4:	14001fec 	lu12i.w	$r12,255(0xff)
1c0030f8:	03bffd8c 	ori	$r12,$r12,0xfff
1c0030fc:	0014b1ac 	and	$r12,$r13,$r12
1c003100:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003104:	001031ac 	add.w	$r12,$r13,$r12
1c003108:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00310c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003110:	0380318c 	ori	$r12,$r12,0xc
1c003114:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003118:	2980018d 	st.w	$r13,$r12,0
1c00311c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003120:	0380118c 	ori	$r12,$r12,0x4
1c003124:	2880018d 	ld.w	$r13,$r12,0
1c003128:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00312c:	0380118c 	ori	$r12,$r12,0x4
1c003130:	038601ad 	ori	$r13,$r13,0x180
1c003134:	2980018d 	st.w	$r13,$r12,0
1c003138:	50002400 	b	36(0x24) # 1c00315c <Wake_Set+0x9c>
1c00313c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003140:	0380118c 	ori	$r12,$r12,0x4
1c003144:	2880018e 	ld.w	$r14,$r12,0
1c003148:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00314c:	0380118c 	ori	$r12,$r12,0x4
1c003150:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003154:	0014b5cd 	and	$r13,$r14,$r13
1c003158:	2980018d 	st.w	$r13,$r12,0
1c00315c:	03400000 	andi	$r0,$r0,0x0
1c003160:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003164:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003168:	4c000020 	jirl	$r0,$r1,0

1c00316c <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c00316c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003170:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003174:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003178:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00317c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003180:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003184:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003188:	0014b1ac 	and	$r12,$r13,$r12
1c00318c:	44000d80 	bnez	$r12,12(0xc) # 1c003198 <PMU_GetRstRrc+0x2c>
1c003190:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003194:	50003000 	b	48(0x30) # 1c0031c4 <PMU_GetRstRrc+0x58>
1c003198:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00319c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0031a0:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0031a4:	0014b1ad 	and	$r13,$r13,$r12
1c0031a8:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0031ac:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0031bc <PMU_GetRstRrc+0x50>
1c0031b0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0031b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031b8:	50000c00 	b	12(0xc) # 1c0031c4 <PMU_GetRstRrc+0x58>
1c0031bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0031c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031c8:	00150184 	move	$r4,$r12
1c0031cc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0031d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0031d4:	4c000020 	jirl	$r0,$r1,0

1c0031d8 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0031d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031dc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0031e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031e8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0031ec:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0031f0:	0380198c 	ori	$r12,$r12,0x6
1c0031f4:	2a00018c 	ld.bu	$r12,$r12,0
1c0031f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0031fc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003200:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003204:	0340058c 	andi	$r12,$r12,0x1
1c003208:	40000d80 	beqz	$r12,12(0xc) # 1c003214 <PMU_GetBootSpiStatus+0x3c>
1c00320c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003210:	50000800 	b	8(0x8) # 1c003218 <PMU_GetBootSpiStatus+0x40>
1c003214:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003218:	00150184 	move	$r4,$r12
1c00321c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003220:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003224:	4c000020 	jirl	$r0,$r1,0

1c003228 <ls1x_logo>:
ls1x_logo():
1c003228:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00322c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003230:	29802076 	st.w	$r22,$r3,8(0x8)
1c003234:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003238:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00323c:	0285f084 	addi.w	$r4,$r4,380(0x17c)
1c003240:	57e957ff 	bl	-5804(0xfffe954) # 1c001b94 <myprintf>
1c003244:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003248:	0285d084 	addi.w	$r4,$r4,372(0x174)
1c00324c:	57e94bff 	bl	-5816(0xfffe948) # 1c001b94 <myprintf>
1c003250:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003254:	02873084 	addi.w	$r4,$r4,460(0x1cc)
1c003258:	57e93fff 	bl	-5828(0xfffe93c) # 1c001b94 <myprintf>
1c00325c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003260:	02889084 	addi.w	$r4,$r4,548(0x224)
1c003264:	57e933ff 	bl	-5840(0xfffe930) # 1c001b94 <myprintf>
1c003268:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00326c:	0289f084 	addi.w	$r4,$r4,636(0x27c)
1c003270:	57e927ff 	bl	-5852(0xfffe924) # 1c001b94 <myprintf>
1c003274:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003278:	028b5084 	addi.w	$r4,$r4,724(0x2d4)
1c00327c:	57e91bff 	bl	-5864(0xfffe918) # 1c001b94 <myprintf>
1c003280:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003284:	028cb084 	addi.w	$r4,$r4,812(0x32c)
1c003288:	57e90fff 	bl	-5876(0xfffe90c) # 1c001b94 <myprintf>
1c00328c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003290:	028e1084 	addi.w	$r4,$r4,900(0x384)
1c003294:	57e903ff 	bl	-5888(0xfffe900) # 1c001b94 <myprintf>
1c003298:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00329c:	028f7084 	addi.w	$r4,$r4,988(0x3dc)
1c0032a0:	57e8f7ff 	bl	-5900(0xfffe8f4) # 1c001b94 <myprintf>
1c0032a4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0032a8:	0290d084 	addi.w	$r4,$r4,1076(0x434)
1c0032ac:	57e8ebff 	bl	-5912(0xfffe8e8) # 1c001b94 <myprintf>
1c0032b0:	03400000 	andi	$r0,$r0,0x0
1c0032b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0032b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0032bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0032c0:	4c000020 	jirl	$r0,$r1,0

1c0032c4 <get_count>:
get_count():
1c0032c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032c8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032d0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032d4:	0000600c 	rdtimel.w	$r12,$r0
1c0032d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032e0:	00150184 	move	$r4,$r12
1c0032e4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032ec:	4c000020 	jirl	$r0,$r1,0

1c0032f0 <open_count>:
open_count():
1c0032f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0032f4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0032f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0032fc:	0380400c 	ori	$r12,$r0,0x10
1c003300:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003304:	03400000 	andi	$r0,$r0,0x0
1c003308:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00330c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003310:	4c000020 	jirl	$r0,$r1,0

1c003314 <start_count>:
start_count():
1c003314:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003318:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00331c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003320:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003324:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00332c:	29800180 	st.w	$r0,$r12,0
1c003330:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003334:	29801180 	st.w	$r0,$r12,4(0x4)
1c003338:	57ff8fff 	bl	-116(0xfffff8c) # 1c0032c4 <get_count>
1c00333c:	0015008d 	move	$r13,$r4
1c003340:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003344:	2980018d 	st.w	$r13,$r12,0
1c003348:	03400000 	andi	$r0,$r0,0x0
1c00334c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003350:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003354:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003358:	4c000020 	jirl	$r0,$r1,0

1c00335c <stop_count>:
stop_count():
1c00335c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003360:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003364:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003368:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00336c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003370:	57ff57ff 	bl	-172(0xfffff54) # 1c0032c4 <get_count>
1c003374:	0015008d 	move	$r13,$r4
1c003378:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00337c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003380:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003384:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003388:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00338c:	2880018c 	ld.w	$r12,$r12,0
1c003390:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c0033ac <stop_count+0x50>
1c003394:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003398:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00339c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033a0:	2880018c 	ld.w	$r12,$r12,0
1c0033a4:	001131ac 	sub.w	$r12,$r13,$r12
1c0033a8:	50002800 	b	40(0x28) # 1c0033d0 <stop_count+0x74>
1c0033ac:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0033b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033b8:	2880018c 	ld.w	$r12,$r12,0
1c0033bc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0033c0:	001131ad 	sub.w	$r13,$r13,$r12
1c0033c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033c8:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0033cc:	001031ac 	add.w	$r12,$r13,$r12
1c0033d0:	00150184 	move	$r4,$r12
1c0033d4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0033d8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0033dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0033e0:	4c000020 	jirl	$r0,$r1,0

1c0033e4 <delay_cycle>:
delay_cycle():
1c0033e4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0033e8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0033ec:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0033f0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0033f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0033f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033fc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003400:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003404:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003408:	00150184 	move	$r4,$r12
1c00340c:	57ff0bff 	bl	-248(0xfffff08) # 1c003314 <start_count>
1c003410:	50001400 	b	20(0x14) # 1c003424 <delay_cycle+0x40>
1c003414:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003418:	00150184 	move	$r4,$r12
1c00341c:	57ff43ff 	bl	-192(0xfffff40) # 1c00335c <stop_count>
1c003420:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003424:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003428:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00342c:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003414 <delay_cycle+0x30>
1c003430:	03400000 	andi	$r0,$r0,0x0
1c003434:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003438:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00343c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003440:	4c000020 	jirl	$r0,$r1,0

1c003444 <delay_us>:
delay_us():
1c003444:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003448:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00344c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003450:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003454:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003458:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00345c:	00408d8c 	slli.w	$r12,$r12,0x3
1c003460:	00150184 	move	$r4,$r12
1c003464:	57ff83ff 	bl	-128(0xfffff80) # 1c0033e4 <delay_cycle>
1c003468:	03400000 	andi	$r0,$r0,0x0
1c00346c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003470:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003474:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003478:	4c000020 	jirl	$r0,$r1,0

1c00347c <delay_ms>:
delay_ms():
1c00347c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003480:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003484:	29806076 	st.w	$r22,$r3,24(0x18)
1c003488:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00348c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003490:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003494:	1400002c 	lu12i.w	$r12,1(0x1)
1c003498:	03bd018c 	ori	$r12,$r12,0xf40
1c00349c:	001c31ac 	mul.w	$r12,$r13,$r12
1c0034a0:	00150184 	move	$r4,$r12
1c0034a4:	57ff43ff 	bl	-192(0xfffff40) # 1c0033e4 <delay_cycle>
1c0034a8:	03400000 	andi	$r0,$r0,0x0
1c0034ac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034b0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034b8:	4c000020 	jirl	$r0,$r1,0

1c0034bc <strcpy>:
strcpy():
1c0034bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034c0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0034c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034cc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0034d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034d8:	03400000 	andi	$r0,$r0,0x0
1c0034dc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0034e0:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c0034e4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0034e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034ec:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0034f0:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c0034f4:	280001ad 	ld.b	$r13,$r13,0
1c0034f8:	2900018d 	st.b	$r13,$r12,0
1c0034fc:	2800018c 	ld.b	$r12,$r12,0
1c003500:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0034dc <strcpy+0x20>
1c003504:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003508:	00150184 	move	$r4,$r12
1c00350c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003510:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003514:	4c000020 	jirl	$r0,$r1,0

1c003518 <strlen>:
strlen():
1c003518:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00351c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003520:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003524:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003528:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00352c:	50001000 	b	16(0x10) # 1c00353c <strlen+0x24>
1c003530:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003534:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003538:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00353c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003540:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003544:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003548:	2800018c 	ld.b	$r12,$r12,0
1c00354c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003530 <strlen+0x18>
1c003550:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003554:	00150184 	move	$r4,$r12
1c003558:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00355c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003560:	4c000020 	jirl	$r0,$r1,0

1c003564 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003564:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003568:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00356c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003570:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003574:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003578:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00357c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003580:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003584:	001531ad 	or	$r13,$r13,$r12
1c003588:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00358c:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003590:	03400000 	andi	$r0,$r0,0x0
1c003594:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003598:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00359c:	4c000020 	jirl	$r0,$r1,0

1c0035a0 <WDG_getOddValue>:
WDG_getOddValue():
1c0035a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035a4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035a8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035ac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035b4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0035b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035bc:	50003800 	b	56(0x38) # 1c0035f4 <WDG_getOddValue+0x54>
1c0035c0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0035c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035c8:	001731ac 	sll.w	$r12,$r13,$r12
1c0035cc:	0015018d 	move	$r13,$r12
1c0035d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035d4:	0014b1ac 	and	$r12,$r13,$r12
1c0035d8:	40001180 	beqz	$r12,16(0x10) # 1c0035e8 <WDG_getOddValue+0x48>
1c0035dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0035e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0035e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0035e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0035f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0035f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035f8:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0035fc:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0035c0 <WDG_getOddValue+0x20>
1c003600:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003604:	0340058c 	andi	$r12,$r12,0x1
1c003608:	44000d80 	bnez	$r12,12(0xc) # 1c003614 <WDG_getOddValue+0x74>
1c00360c:	1400010c 	lu12i.w	$r12,8(0x8)
1c003610:	50000800 	b	8(0x8) # 1c003618 <WDG_getOddValue+0x78>
1c003614:	0015000c 	move	$r12,$r0
1c003618:	00150184 	move	$r4,$r12
1c00361c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003620:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003624:	4c000020 	jirl	$r0,$r1,0

1c003628 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003628:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00362c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003630:	29806076 	st.w	$r22,$r3,24(0x18)
1c003634:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003638:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00363c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003640:	140000ec 	lu12i.w	$r12,7(0x7)
1c003644:	03bffd8c 	ori	$r12,$r12,0xfff
1c003648:	0014b1ac 	and	$r12,$r13,$r12
1c00364c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003650:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003654:	57ff4fff 	bl	-180(0xfffff4c) # 1c0035a0 <WDG_getOddValue>
1c003658:	0015008c 	move	$r12,$r4
1c00365c:	0015018d 	move	$r13,$r12
1c003660:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003664:	0015358c 	or	$r12,$r12,$r13
1c003668:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00366c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003670:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003674:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003678:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00367c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003680:	0014300c 	nor	$r12,$r0,$r12
1c003684:	0040c18c 	slli.w	$r12,$r12,0x10
1c003688:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00368c:	001531ac 	or	$r12,$r13,$r12
1c003690:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003694:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003698:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00369c:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0036a0:	03400000 	andi	$r0,$r0,0x0
1c0036a4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0036a8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0036ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036b0:	4c000020 	jirl	$r0,$r1,0

1c0036b4 <WDG_DogFeed>:
WDG_DogFeed():
1c0036b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0036b8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0036bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0036c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0036c4:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0036c8:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0036cc:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0036d0:	03400000 	andi	$r0,$r0,0x0
1c0036d4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0036d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0036dc:	4c000020 	jirl	$r0,$r1,0

1c0036e0 <WdgInit>:
WdgInit():
1c0036e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0036e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0036e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0036ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0036f0:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c0036f4:	03bffd84 	ori	$r4,$r12,0xfff
1c0036f8:	57ff33ff 	bl	-208(0xfffff30) # 1c003628 <WDG_SetWatchDog>
1c0036fc:	03400000 	andi	$r0,$r0,0x0
1c003700:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003704:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003708:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00370c:	4c000020 	jirl	$r0,$r1,0

1c003710 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003710:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003714:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003718:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00371c:	0015008c 	move	$r12,$r4
1c003720:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003724:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003728:	0040898c 	slli.w	$r12,$r12,0x2
1c00372c:	0015018d 	move	$r13,$r12
1c003730:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003734:	0381018c 	ori	$r12,$r12,0x40
1c003738:	001031ac 	add.w	$r12,$r13,$r12
1c00373c:	2880018c 	ld.w	$r12,$r12,0
1c003740:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003744:	037ffd8c 	andi	$r12,$r12,0xfff
1c003748:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00374c:	00150184 	move	$r4,$r12
1c003750:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003754:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003758:	4c000020 	jirl	$r0,$r1,0

1c00375c <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c00375c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003760:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003764:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003768:	0015008c 	move	$r12,$r4
1c00376c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003770:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003774:	0040898c 	slli.w	$r12,$r12,0x2
1c003778:	0015018d 	move	$r13,$r12
1c00377c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003780:	0382018c 	ori	$r12,$r12,0x80
1c003784:	001031ac 	add.w	$r12,$r13,$r12
1c003788:	2880018c 	ld.w	$r12,$r12,0
1c00378c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003790:	037ffd8c 	andi	$r12,$r12,0xfff
1c003794:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003798:	00150184 	move	$r4,$r12
1c00379c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0037a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0037a4:	4c000020 	jirl	$r0,$r1,0

1c0037a8 <Printf_KeyChannel>:
Printf_KeyChannel():
1c0037a8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0037ac:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0037b0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0037b4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037b8:	0015008c 	move	$r12,$r4
1c0037bc:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0037c0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0037c4:	50003400 	b	52(0x34) # 1c0037f8 <Printf_KeyChannel+0x50>
1c0037c8:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c0037cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037d0:	001831ac 	sra.w	$r12,$r13,$r12
1c0037d4:	0340058c 	andi	$r12,$r12,0x1
1c0037d8:	40001580 	beqz	$r12,20(0x14) # 1c0037ec <Printf_KeyChannel+0x44>
1c0037dc:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c0037e0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0037e4:	02bd7084 	addi.w	$r4,$r4,-164(0xf5c)
1c0037e8:	57e3afff 	bl	-7252(0xfffe3ac) # 1c001b94 <myprintf>
1c0037ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0037f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037fc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003800:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c0037c8 <Printf_KeyChannel+0x20>
1c003804:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003808:	02bcf084 	addi.w	$r4,$r4,-196(0xf3c)
1c00380c:	57e38bff 	bl	-7288(0xfffe388) # 1c001b94 <myprintf>
1c003810:	03400000 	andi	$r0,$r0,0x0
1c003814:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003818:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00381c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003820:	4c000020 	jirl	$r0,$r1,0

1c003824 <Printf_KeyType>:
Printf_KeyType():
1c003824:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003828:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00382c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003830:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003834:	0015008c 	move	$r12,$r4
1c003838:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00383c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003840:	0340058c 	andi	$r12,$r12,0x1
1c003844:	40001180 	beqz	$r12,16(0x10) # 1c003854 <Printf_KeyType+0x30>
1c003848:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00384c:	02bbf084 	addi.w	$r4,$r4,-260(0xefc)
1c003850:	57e347ff 	bl	-7356(0xfffe344) # 1c001b94 <myprintf>
1c003854:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003858:	0340098c 	andi	$r12,$r12,0x2
1c00385c:	40001180 	beqz	$r12,16(0x10) # 1c00386c <Printf_KeyType+0x48>
1c003860:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003864:	02bbb084 	addi.w	$r4,$r4,-276(0xeec)
1c003868:	57e32fff 	bl	-7380(0xfffe32c) # 1c001b94 <myprintf>
1c00386c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003870:	0340118c 	andi	$r12,$r12,0x4
1c003874:	40001180 	beqz	$r12,16(0x10) # 1c003884 <Printf_KeyType+0x60>
1c003878:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00387c:	02bb7084 	addi.w	$r4,$r4,-292(0xedc)
1c003880:	57e317ff 	bl	-7404(0xfffe314) # 1c001b94 <myprintf>
1c003884:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003888:	0340218c 	andi	$r12,$r12,0x8
1c00388c:	40001180 	beqz	$r12,16(0x10) # 1c00389c <Printf_KeyType+0x78>
1c003890:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003894:	02bb4084 	addi.w	$r4,$r4,-304(0xed0)
1c003898:	57e2ffff 	bl	-7428(0xfffe2fc) # 1c001b94 <myprintf>
1c00389c:	03400000 	andi	$r0,$r0,0x0
1c0038a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038a4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038ac:	4c000020 	jirl	$r0,$r1,0

1c0038b0 <Printf_KeyVal>:
Printf_KeyVal():
1c0038b0:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c0038b4:	2982b061 	st.w	$r1,$r3,172(0xac)
1c0038b8:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c0038bc:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c0038c0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0038c4:	5000d800 	b	216(0xd8) # 1c00399c <Printf_KeyVal+0xec>
1c0038c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038cc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0038d0:	00150184 	move	$r4,$r12
1c0038d4:	57fe8bff 	bl	-376(0xffffe88) # 1c00375c <TOUCH_GetCountValue>
1c0038d8:	0015008c 	move	$r12,$r4
1c0038dc:	0015018d 	move	$r13,$r12
1c0038e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038e4:	0040898c 	slli.w	$r12,$r12,0x2
1c0038e8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0038ec:	001031cc 	add.w	$r12,$r14,$r12
1c0038f0:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c0038f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038f8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0038fc:	00150184 	move	$r4,$r12
1c003900:	57fe13ff 	bl	-496(0xffffe10) # 1c003710 <TOUCH_GetBaseVal>
1c003904:	0015008c 	move	$r12,$r4
1c003908:	0015018d 	move	$r13,$r12
1c00390c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003910:	0040898c 	slli.w	$r12,$r12,0x2
1c003914:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003918:	001031cc 	add.w	$r12,$r14,$r12
1c00391c:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003920:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003924:	0040898c 	slli.w	$r12,$r12,0x2
1c003928:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00392c:	001031ac 	add.w	$r12,$r13,$r12
1c003930:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003934:	40004980 	beqz	$r12,72(0x48) # 1c00397c <Printf_KeyVal+0xcc>
1c003938:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00393c:	0040898c 	slli.w	$r12,$r12,0x2
1c003940:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003944:	001031ac 	add.w	$r12,$r13,$r12
1c003948:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c00394c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003950:	0040898c 	slli.w	$r12,$r12,0x2
1c003954:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003958:	001031cc 	add.w	$r12,$r14,$r12
1c00395c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003960:	001131ad 	sub.w	$r13,$r13,$r12
1c003964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003968:	0040898c 	slli.w	$r12,$r12,0x2
1c00396c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003970:	001031cc 	add.w	$r12,$r14,$r12
1c003974:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003978:	50001800 	b	24(0x18) # 1c003990 <Printf_KeyVal+0xe0>
1c00397c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003980:	0040898c 	slli.w	$r12,$r12,0x2
1c003984:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003988:	001031ac 	add.w	$r12,$r13,$r12
1c00398c:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003990:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003994:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003998:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00399c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0039a0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0039a4:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c0038c8 <Printf_KeyVal+0x18>
1c0039a8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0039ac:	02b71084 	addi.w	$r4,$r4,-572(0xdc4)
1c0039b0:	57e1e7ff 	bl	-7708(0xfffe1e4) # 1c001b94 <myprintf>
1c0039b4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0039b8:	02b78084 	addi.w	$r4,$r4,-544(0xde0)
1c0039bc:	57e1dbff 	bl	-7720(0xfffe1d8) # 1c001b94 <myprintf>
1c0039c0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0039c4:	50003400 	b	52(0x34) # 1c0039f8 <Printf_KeyVal+0x148>
1c0039c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039cc:	0040898c 	slli.w	$r12,$r12,0x2
1c0039d0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0039d4:	001031ac 	add.w	$r12,$r13,$r12
1c0039d8:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c0039dc:	00150185 	move	$r5,$r12
1c0039e0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0039e4:	02b6f084 	addi.w	$r4,$r4,-580(0xdbc)
1c0039e8:	57e1afff 	bl	-7764(0xfffe1ac) # 1c001b94 <myprintf>
1c0039ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0039f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0039fc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003a00:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0039c8 <Printf_KeyVal+0x118>
1c003a04:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003a08:	02b68084 	addi.w	$r4,$r4,-608(0xda0)
1c003a0c:	57e18bff 	bl	-7800(0xfffe188) # 1c001b94 <myprintf>
1c003a10:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003a14:	50003400 	b	52(0x34) # 1c003a48 <Printf_KeyVal+0x198>
1c003a18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a1c:	0040898c 	slli.w	$r12,$r12,0x2
1c003a20:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003a24:	001031ac 	add.w	$r12,$r13,$r12
1c003a28:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003a2c:	00150185 	move	$r5,$r12
1c003a30:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003a34:	02b5b084 	addi.w	$r4,$r4,-660(0xd6c)
1c003a38:	57e15fff 	bl	-7844(0xfffe15c) # 1c001b94 <myprintf>
1c003a3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a44:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a48:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a4c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003a50:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003a18 <Printf_KeyVal+0x168>
1c003a54:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003a58:	02b57084 	addi.w	$r4,$r4,-676(0xd5c)
1c003a5c:	57e13bff 	bl	-7880(0xfffe138) # 1c001b94 <myprintf>
1c003a60:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003a64:	50007400 	b	116(0x74) # 1c003ad8 <Printf_KeyVal+0x228>
1c003a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a6c:	0040898c 	slli.w	$r12,$r12,0x2
1c003a70:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003a74:	001031ac 	add.w	$r12,$r13,$r12
1c003a78:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003a7c:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003aa8 <Printf_KeyVal+0x1f8>
1c003a80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a84:	0040898c 	slli.w	$r12,$r12,0x2
1c003a88:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003a8c:	001031ac 	add.w	$r12,$r13,$r12
1c003a90:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003a94:	00150185 	move	$r5,$r12
1c003a98:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003a9c:	02b49084 	addi.w	$r4,$r4,-732(0xd24)
1c003aa0:	57e0f7ff 	bl	-7948(0xfffe0f4) # 1c001b94 <myprintf>
1c003aa4:	50002800 	b	40(0x28) # 1c003acc <Printf_KeyVal+0x21c>
1c003aa8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003aac:	0040898c 	slli.w	$r12,$r12,0x2
1c003ab0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ab4:	001031ac 	add.w	$r12,$r13,$r12
1c003ab8:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003abc:	00150185 	move	$r5,$r12
1c003ac0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003ac4:	02b41084 	addi.w	$r4,$r4,-764(0xd04)
1c003ac8:	57e0cfff 	bl	-7988(0xfffe0cc) # 1c001b94 <myprintf>
1c003acc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ad0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ad4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ad8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003adc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ae0:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003a68 <Printf_KeyVal+0x1b8>
1c003ae4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003ae8:	02b17084 	addi.w	$r4,$r4,-932(0xc5c)
1c003aec:	57e0abff 	bl	-8024(0xfffe0a8) # 1c001b94 <myprintf>
1c003af0:	03400000 	andi	$r0,$r0,0x0
1c003af4:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003af8:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003afc:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003b00:	4c000020 	jirl	$r0,$r1,0

1c003b04 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003b04:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b08:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003b0c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b10:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003b14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b18:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003b1c:	2880018d 	ld.w	$r13,$r12,0
1c003b20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b24:	0014b1ac 	and	$r12,$r13,$r12
1c003b28:	40001180 	beqz	$r12,16(0x10) # 1c003b38 <TIM_GetITStatus+0x34>
1c003b2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003b30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b34:	50000800 	b	8(0x8) # 1c003b3c <TIM_GetITStatus+0x38>
1c003b38:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b40:	00150184 	move	$r4,$r12
1c003b44:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003b48:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003b4c:	4c000020 	jirl	$r0,$r1,0

1c003b50 <TIM_ClearIT>:
TIM_ClearIT():
1c003b50:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b54:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003b58:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b5c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003b60:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003b64:	2880018e 	ld.w	$r14,$r12,0
1c003b68:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003b6c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b70:	001535cd 	or	$r13,$r14,$r13
1c003b74:	2980018d 	st.w	$r13,$r12,0
1c003b78:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003b7c:	03800d8c 	ori	$r12,$r12,0x3
1c003b80:	2a00018c 	ld.bu	$r12,$r12,0
1c003b84:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003b88:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003b8c:	03800d8c 	ori	$r12,$r12,0x3
1c003b90:	038005ad 	ori	$r13,$r13,0x1
1c003b94:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003b98:	2900018d 	st.b	$r13,$r12,0
1c003b9c:	03400000 	andi	$r0,$r0,0x0
1c003ba0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003ba4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ba8:	4c000020 	jirl	$r0,$r1,0

1c003bac <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003bac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003bb0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003bb4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003bb8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003bbc:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003bc0:	02b6b0c6 	addi.w	$r6,$r6,-596(0xdac)
1c003bc4:	02804805 	addi.w	$r5,$r0,18(0x12)
1c003bc8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003bcc:	02b01084 	addi.w	$r4,$r4,-1020(0xc04)
1c003bd0:	57dfc7ff 	bl	-8252(0xfffdfc4) # 1c001b94 <myprintf>
1c003bd4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003bd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bdc:	03808184 	ori	$r4,$r12,0x20
1c003be0:	57f987ff 	bl	-1660(0xffff984) # 1c003564 <EXTI_ClearITPendingBit>
1c003be4:	03400000 	andi	$r0,$r0,0x0
1c003be8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003bec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003bf0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003bf4:	4c000020 	jirl	$r0,$r1,0

1c003bf8 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003bf8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003bfc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c00:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c04:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c08:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003c0c:	02b5e0c6 	addi.w	$r6,$r6,-648(0xd78)
1c003c10:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c003c14:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c18:	02aee084 	addi.w	$r4,$r4,-1096(0xbb8)
1c003c1c:	57df7bff 	bl	-8328(0xfffdf78) # 1c001b94 <myprintf>
1c003c20:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003c24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c28:	03808184 	ori	$r4,$r12,0x20
1c003c2c:	57f93bff 	bl	-1736(0xffff938) # 1c003564 <EXTI_ClearITPendingBit>
1c003c30:	03400000 	andi	$r0,$r0,0x0
1c003c34:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c38:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c40:	4c000020 	jirl	$r0,$r1,0

1c003c44 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c003c44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c48:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c4c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c54:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003c58:	02b510c6 	addi.w	$r6,$r6,-700(0xd44)
1c003c5c:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c003c60:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c64:	02adb084 	addi.w	$r4,$r4,-1172(0xb6c)
1c003c68:	57df2fff 	bl	-8404(0xfffdf2c) # 1c001b94 <myprintf>
1c003c6c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003c70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c74:	03808184 	ori	$r4,$r12,0x20
1c003c78:	57f8efff 	bl	-1812(0xffff8ec) # 1c003564 <EXTI_ClearITPendingBit>
1c003c7c:	03400000 	andi	$r0,$r0,0x0
1c003c80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c84:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c8c:	4c000020 	jirl	$r0,$r1,0

1c003c90 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003c90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c94:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c98:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c9c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ca0:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003ca4:	02b440c6 	addi.w	$r6,$r6,-752(0xd10)
1c003ca8:	02808405 	addi.w	$r5,$r0,33(0x21)
1c003cac:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003cb0:	02ac8084 	addi.w	$r4,$r4,-1248(0xb20)
1c003cb4:	57dee3ff 	bl	-8480(0xfffdee0) # 1c001b94 <myprintf>
1c003cb8:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003cbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cc0:	03808184 	ori	$r4,$r12,0x20
1c003cc4:	57f8a3ff 	bl	-1888(0xffff8a0) # 1c003564 <EXTI_ClearITPendingBit>
1c003cc8:	03400000 	andi	$r0,$r0,0x0
1c003ccc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003cd0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003cd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cd8:	4c000020 	jirl	$r0,$r1,0

1c003cdc <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c003cdc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ce0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ce4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ce8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003cec:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003cf0:	02b370c6 	addi.w	$r6,$r6,-804(0xcdc)
1c003cf4:	02809805 	addi.w	$r5,$r0,38(0x26)
1c003cf8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003cfc:	02ab5084 	addi.w	$r4,$r4,-1324(0xad4)
1c003d00:	57de97ff 	bl	-8556(0xfffde94) # 1c001b94 <myprintf>
1c003d04:	02804005 	addi.w	$r5,$r0,16(0x10)
1c003d08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d0c:	03808184 	ori	$r4,$r12,0x20
1c003d10:	57f857ff 	bl	-1964(0xffff854) # 1c003564 <EXTI_ClearITPendingBit>
1c003d14:	03400000 	andi	$r0,$r0,0x0
1c003d18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d24:	4c000020 	jirl	$r0,$r1,0

1c003d28 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c003d28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d30:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d38:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003d3c:	02b2a0c6 	addi.w	$r6,$r6,-856(0xca8)
1c003d40:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c003d44:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d48:	02aa2084 	addi.w	$r4,$r4,-1400(0xa88)
1c003d4c:	57de4bff 	bl	-8632(0xfffde48) # 1c001b94 <myprintf>
1c003d50:	02808005 	addi.w	$r5,$r0,32(0x20)
1c003d54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d58:	03808184 	ori	$r4,$r12,0x20
1c003d5c:	57f80bff 	bl	-2040(0xffff808) # 1c003564 <EXTI_ClearITPendingBit>
1c003d60:	03400000 	andi	$r0,$r0,0x0
1c003d64:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d68:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d70:	4c000020 	jirl	$r0,$r1,0

1c003d74 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c003d74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d78:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d7c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d84:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003d88:	02b1d0c6 	addi.w	$r6,$r6,-908(0xc74)
1c003d8c:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c003d90:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d94:	02a8f084 	addi.w	$r4,$r4,-1476(0xa3c)
1c003d98:	57ddffff 	bl	-8708(0xfffddfc) # 1c001b94 <myprintf>
1c003d9c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003da0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003da4:	03808184 	ori	$r4,$r12,0x20
1c003da8:	57f7bfff 	bl	-2116(0xffff7bc) # 1c003564 <EXTI_ClearITPendingBit>
1c003dac:	03400000 	andi	$r0,$r0,0x0
1c003db0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003db4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003db8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003dbc:	4c000020 	jirl	$r0,$r1,0

1c003dc0 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c003dc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003dc4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003dc8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003dcc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003dd0:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003dd4:	02b100c6 	addi.w	$r6,$r6,-960(0xc40)
1c003dd8:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c003ddc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003de0:	02a7c084 	addi.w	$r4,$r4,-1552(0x9f0)
1c003de4:	57ddb3ff 	bl	-8784(0xfffddb0) # 1c001b94 <myprintf>
1c003de8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c003dec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003df0:	03808184 	ori	$r4,$r12,0x20
1c003df4:	57f773ff 	bl	-2192(0xffff770) # 1c003564 <EXTI_ClearITPendingBit>
1c003df8:	03400000 	andi	$r0,$r0,0x0
1c003dfc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e00:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e08:	4c000020 	jirl	$r0,$r1,0

1c003e0c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c003e0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e10:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e14:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e1c:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003e20:	02b030c6 	addi.w	$r6,$r6,-1012(0xc0c)
1c003e24:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c003e28:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e2c:	02a69084 	addi.w	$r4,$r4,-1628(0x9a4)
1c003e30:	57dd67ff 	bl	-8860(0xfffdd64) # 1c001b94 <myprintf>
1c003e34:	02840005 	addi.w	$r5,$r0,256(0x100)
1c003e38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e3c:	03808184 	ori	$r4,$r12,0x20
1c003e40:	57f727ff 	bl	-2268(0xffff724) # 1c003564 <EXTI_ClearITPendingBit>
1c003e44:	03400000 	andi	$r0,$r0,0x0
1c003e48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e4c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e54:	4c000020 	jirl	$r0,$r1,0

1c003e58 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c003e58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e60:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e68:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003e6c:	02af60c6 	addi.w	$r6,$r6,-1064(0xbd8)
1c003e70:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c003e74:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e78:	02a56084 	addi.w	$r4,$r4,-1704(0x958)
1c003e7c:	57dd1bff 	bl	-8936(0xfffdd18) # 1c001b94 <myprintf>
1c003e80:	02880005 	addi.w	$r5,$r0,512(0x200)
1c003e84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e88:	03808184 	ori	$r4,$r12,0x20
1c003e8c:	57f6dbff 	bl	-2344(0xffff6d8) # 1c003564 <EXTI_ClearITPendingBit>
1c003e90:	03400000 	andi	$r0,$r0,0x0
1c003e94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ea0:	4c000020 	jirl	$r0,$r1,0

1c003ea4 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c003ea4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ea8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003eac:	29802076 	st.w	$r22,$r3,8(0x8)
1c003eb0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003eb4:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003eb8:	02ae90c6 	addi.w	$r6,$r6,-1116(0xba4)
1c003ebc:	02811005 	addi.w	$r5,$r0,68(0x44)
1c003ec0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003ec4:	02a43084 	addi.w	$r4,$r4,-1780(0x90c)
1c003ec8:	57dccfff 	bl	-9012(0xfffdccc) # 1c001b94 <myprintf>
1c003ecc:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c003ed0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ed4:	03808184 	ori	$r4,$r12,0x20
1c003ed8:	57f68fff 	bl	-2420(0xffff68c) # 1c003564 <EXTI_ClearITPendingBit>
1c003edc:	03400000 	andi	$r0,$r0,0x0
1c003ee0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ee4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ee8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003eec:	4c000020 	jirl	$r0,$r1,0

1c003ef0 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c003ef0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ef4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ef8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003efc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f00:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003f04:	02adc0c6 	addi.w	$r6,$r6,-1168(0xb70)
1c003f08:	02812405 	addi.w	$r5,$r0,73(0x49)
1c003f0c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003f10:	02a30084 	addi.w	$r4,$r4,-1856(0x8c0)
1c003f14:	57dc83ff 	bl	-9088(0xfffdc80) # 1c001b94 <myprintf>
1c003f18:	03a00005 	ori	$r5,$r0,0x800
1c003f1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f20:	03808184 	ori	$r4,$r12,0x20
1c003f24:	57f643ff 	bl	-2496(0xffff640) # 1c003564 <EXTI_ClearITPendingBit>
1c003f28:	03400000 	andi	$r0,$r0,0x0
1c003f2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f38:	4c000020 	jirl	$r0,$r1,0

1c003f3c <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c003f3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f40:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f44:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f4c:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003f50:	02acf0c6 	addi.w	$r6,$r6,-1220(0xb3c)
1c003f54:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c003f58:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003f5c:	02a1d084 	addi.w	$r4,$r4,-1932(0x874)
1c003f60:	57dc37ff 	bl	-9164(0xfffdc34) # 1c001b94 <myprintf>
1c003f64:	14000025 	lu12i.w	$r5,1(0x1)
1c003f68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f6c:	03808184 	ori	$r4,$r12,0x20
1c003f70:	57f5f7ff 	bl	-2572(0xffff5f4) # 1c003564 <EXTI_ClearITPendingBit>
1c003f74:	03400000 	andi	$r0,$r0,0x0
1c003f78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f7c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f84:	4c000020 	jirl	$r0,$r1,0

1c003f88 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c003f88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f90:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f98:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003f9c:	02ac20c6 	addi.w	$r6,$r6,-1272(0xb08)
1c003fa0:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c003fa4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003fa8:	02a0a084 	addi.w	$r4,$r4,-2008(0x828)
1c003fac:	57dbebff 	bl	-9240(0xfffdbe8) # 1c001b94 <myprintf>
1c003fb0:	14000045 	lu12i.w	$r5,2(0x2)
1c003fb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fb8:	03808184 	ori	$r4,$r12,0x20
1c003fbc:	57f5abff 	bl	-2648(0xffff5a8) # 1c003564 <EXTI_ClearITPendingBit>
1c003fc0:	03400000 	andi	$r0,$r0,0x0
1c003fc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fc8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fcc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fd0:	4c000020 	jirl	$r0,$r1,0

1c003fd4 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c003fd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fdc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fe0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fe4:	1c000086 	pcaddu12i	$r6,4(0x4)
1c003fe8:	02ab50c6 	addi.w	$r6,$r6,-1324(0xad4)
1c003fec:	02816005 	addi.w	$r5,$r0,88(0x58)
1c003ff0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ff4:	029f7084 	addi.w	$r4,$r4,2012(0x7dc)
1c003ff8:	57db9fff 	bl	-9316(0xfffdb9c) # 1c001b94 <myprintf>
1c003ffc:	14000085 	lu12i.w	$r5,4(0x4)
1c004000:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004004:	03808184 	ori	$r4,$r12,0x20
1c004008:	57f55fff 	bl	-2724(0xffff55c) # 1c003564 <EXTI_ClearITPendingBit>
1c00400c:	03400000 	andi	$r0,$r0,0x0
1c004010:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004014:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004018:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00401c:	4c000020 	jirl	$r0,$r1,0

1c004020 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004020:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004024:	29803061 	st.w	$r1,$r3,12(0xc)
1c004028:	29802076 	st.w	$r22,$r3,8(0x8)
1c00402c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004030:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004034:	02aa80c6 	addi.w	$r6,$r6,-1376(0xaa0)
1c004038:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c00403c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004040:	029e4084 	addi.w	$r4,$r4,1936(0x790)
1c004044:	57db53ff 	bl	-9392(0xfffdb50) # 1c001b94 <myprintf>
1c004048:	14000105 	lu12i.w	$r5,8(0x8)
1c00404c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004050:	03808184 	ori	$r4,$r12,0x20
1c004054:	57f513ff 	bl	-2800(0xffff510) # 1c003564 <EXTI_ClearITPendingBit>
1c004058:	03400000 	andi	$r0,$r0,0x0
1c00405c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004060:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004064:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004068:	4c000020 	jirl	$r0,$r1,0

1c00406c <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c00406c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004070:	29803061 	st.w	$r1,$r3,12(0xc)
1c004074:	29802076 	st.w	$r22,$r3,8(0x8)
1c004078:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00407c:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004080:	02a9b0c6 	addi.w	$r6,$r6,-1428(0xa6c)
1c004084:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c004088:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00408c:	029d1084 	addi.w	$r4,$r4,1860(0x744)
1c004090:	57db07ff 	bl	-9468(0xfffdb04) # 1c001b94 <myprintf>
1c004094:	14000205 	lu12i.w	$r5,16(0x10)
1c004098:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00409c:	03808184 	ori	$r4,$r12,0x20
1c0040a0:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c003564 <EXTI_ClearITPendingBit>
1c0040a4:	03400000 	andi	$r0,$r0,0x0
1c0040a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040b4:	4c000020 	jirl	$r0,$r1,0

1c0040b8 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0040b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040c8:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0040cc:	02a8e0c6 	addi.w	$r6,$r6,-1480(0xa38)
1c0040d0:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c0040d4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040d8:	029be084 	addi.w	$r4,$r4,1784(0x6f8)
1c0040dc:	57dabbff 	bl	-9544(0xfffdab8) # 1c001b94 <myprintf>
1c0040e0:	14000405 	lu12i.w	$r5,32(0x20)
1c0040e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040e8:	03808184 	ori	$r4,$r12,0x20
1c0040ec:	57f47bff 	bl	-2952(0xffff478) # 1c003564 <EXTI_ClearITPendingBit>
1c0040f0:	03400000 	andi	$r0,$r0,0x0
1c0040f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004100:	4c000020 	jirl	$r0,$r1,0

1c004104 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004104:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004108:	29803061 	st.w	$r1,$r3,12(0xc)
1c00410c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004110:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004114:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004118:	02a810c6 	addi.w	$r6,$r6,-1532(0xa04)
1c00411c:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c004120:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004124:	029ab084 	addi.w	$r4,$r4,1708(0x6ac)
1c004128:	57da6fff 	bl	-9620(0xfffda6c) # 1c001b94 <myprintf>
1c00412c:	14000805 	lu12i.w	$r5,64(0x40)
1c004130:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004134:	03808184 	ori	$r4,$r12,0x20
1c004138:	57f42fff 	bl	-3028(0xffff42c) # 1c003564 <EXTI_ClearITPendingBit>
1c00413c:	03400000 	andi	$r0,$r0,0x0
1c004140:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004144:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004148:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00414c:	4c000020 	jirl	$r0,$r1,0

1c004150 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004150:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004154:	29803061 	st.w	$r1,$r3,12(0xc)
1c004158:	29802076 	st.w	$r22,$r3,8(0x8)
1c00415c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004160:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004164:	02a740c6 	addi.w	$r6,$r6,-1584(0x9d0)
1c004168:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c00416c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004170:	02998084 	addi.w	$r4,$r4,1632(0x660)
1c004174:	57da23ff 	bl	-9696(0xfffda20) # 1c001b94 <myprintf>
1c004178:	14001005 	lu12i.w	$r5,128(0x80)
1c00417c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004180:	03808184 	ori	$r4,$r12,0x20
1c004184:	57f3e3ff 	bl	-3104(0xffff3e0) # 1c003564 <EXTI_ClearITPendingBit>
1c004188:	03400000 	andi	$r0,$r0,0x0
1c00418c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004190:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004194:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004198:	4c000020 	jirl	$r0,$r1,0

1c00419c <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c00419c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041ac:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0041b0:	02a670c6 	addi.w	$r6,$r6,-1636(0x99c)
1c0041b4:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c0041b8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041bc:	02985084 	addi.w	$r4,$r4,1556(0x614)
1c0041c0:	57d9d7ff 	bl	-9772(0xfffd9d4) # 1c001b94 <myprintf>
1c0041c4:	14002005 	lu12i.w	$r5,256(0x100)
1c0041c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041cc:	03808184 	ori	$r4,$r12,0x20
1c0041d0:	57f397ff 	bl	-3180(0xffff394) # 1c003564 <EXTI_ClearITPendingBit>
1c0041d4:	03400000 	andi	$r0,$r0,0x0
1c0041d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041e4:	4c000020 	jirl	$r0,$r1,0

1c0041e8 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0041e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041f8:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0041fc:	02a5a0c6 	addi.w	$r6,$r6,-1688(0x968)
1c004200:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c004204:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004208:	02972084 	addi.w	$r4,$r4,1480(0x5c8)
1c00420c:	57d98bff 	bl	-9848(0xfffd988) # 1c001b94 <myprintf>
1c004210:	14004005 	lu12i.w	$r5,512(0x200)
1c004214:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004218:	03808184 	ori	$r4,$r12,0x20
1c00421c:	57f34bff 	bl	-3256(0xffff348) # 1c003564 <EXTI_ClearITPendingBit>
1c004220:	03400000 	andi	$r0,$r0,0x0
1c004224:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004228:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00422c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004230:	4c000020 	jirl	$r0,$r1,0

1c004234 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004234:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004238:	29803061 	st.w	$r1,$r3,12(0xc)
1c00423c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004240:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004244:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004248:	02a4d0c6 	addi.w	$r6,$r6,-1740(0x934)
1c00424c:	02820405 	addi.w	$r5,$r0,129(0x81)
1c004250:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004254:	0295f084 	addi.w	$r4,$r4,1404(0x57c)
1c004258:	57d93fff 	bl	-9924(0xfffd93c) # 1c001b94 <myprintf>
1c00425c:	14008005 	lu12i.w	$r5,1024(0x400)
1c004260:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004264:	03808184 	ori	$r4,$r12,0x20
1c004268:	57f2ffff 	bl	-3332(0xffff2fc) # 1c003564 <EXTI_ClearITPendingBit>
1c00426c:	03400000 	andi	$r0,$r0,0x0
1c004270:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004274:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004278:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00427c:	4c000020 	jirl	$r0,$r1,0

1c004280 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004280:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004284:	29803061 	st.w	$r1,$r3,12(0xc)
1c004288:	29802076 	st.w	$r22,$r3,8(0x8)
1c00428c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004290:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004294:	02a400c6 	addi.w	$r6,$r6,-1792(0x900)
1c004298:	02821805 	addi.w	$r5,$r0,134(0x86)
1c00429c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042a0:	0294c084 	addi.w	$r4,$r4,1328(0x530)
1c0042a4:	57d8f3ff 	bl	-10000(0xfffd8f0) # 1c001b94 <myprintf>
1c0042a8:	14010005 	lu12i.w	$r5,2048(0x800)
1c0042ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042b0:	03808184 	ori	$r4,$r12,0x20
1c0042b4:	57f2b3ff 	bl	-3408(0xffff2b0) # 1c003564 <EXTI_ClearITPendingBit>
1c0042b8:	03400000 	andi	$r0,$r0,0x0
1c0042bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042c8:	4c000020 	jirl	$r0,$r1,0

1c0042cc <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0042cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042dc:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0042e0:	02a330c6 	addi.w	$r6,$r6,-1844(0x8cc)
1c0042e4:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c0042e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042ec:	02939084 	addi.w	$r4,$r4,1252(0x4e4)
1c0042f0:	57d8a7ff 	bl	-10076(0xfffd8a4) # 1c001b94 <myprintf>
1c0042f4:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0042f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042fc:	03808184 	ori	$r4,$r12,0x20
1c004300:	57f267ff 	bl	-3484(0xffff264) # 1c003564 <EXTI_ClearITPendingBit>
1c004304:	03400000 	andi	$r0,$r0,0x0
1c004308:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00430c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004310:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004314:	4c000020 	jirl	$r0,$r1,0

1c004318 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004318:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00431c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004320:	29802076 	st.w	$r22,$r3,8(0x8)
1c004324:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004328:	1c000086 	pcaddu12i	$r6,4(0x4)
1c00432c:	02a260c6 	addi.w	$r6,$r6,-1896(0x898)
1c004330:	02824005 	addi.w	$r5,$r0,144(0x90)
1c004334:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004338:	02926084 	addi.w	$r4,$r4,1176(0x498)
1c00433c:	57d85bff 	bl	-10152(0xfffd858) # 1c001b94 <myprintf>
1c004340:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004344:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004348:	03808184 	ori	$r4,$r12,0x20
1c00434c:	57f21bff 	bl	-3560(0xffff218) # 1c003564 <EXTI_ClearITPendingBit>
1c004350:	03400000 	andi	$r0,$r0,0x0
1c004354:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004358:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00435c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004360:	4c000020 	jirl	$r0,$r1,0

1c004364 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004364:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004368:	29803061 	st.w	$r1,$r3,12(0xc)
1c00436c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004370:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004374:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004378:	02a190c6 	addi.w	$r6,$r6,-1948(0x864)
1c00437c:	02825405 	addi.w	$r5,$r0,149(0x95)
1c004380:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004384:	02913084 	addi.w	$r4,$r4,1100(0x44c)
1c004388:	57d80fff 	bl	-10228(0xfffd80c) # 1c001b94 <myprintf>
1c00438c:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004390:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004394:	03808184 	ori	$r4,$r12,0x20
1c004398:	57f1cfff 	bl	-3636(0xffff1cc) # 1c003564 <EXTI_ClearITPendingBit>
1c00439c:	03400000 	andi	$r0,$r0,0x0
1c0043a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043ac:	4c000020 	jirl	$r0,$r1,0

1c0043b0 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c0043b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043c0:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0043c4:	02a0c0c6 	addi.w	$r6,$r6,-2000(0x830)
1c0043c8:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c0043cc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043d0:	02900084 	addi.w	$r4,$r4,1024(0x400)
1c0043d4:	57d7c3ff 	bl	-10304(0xfffd7c0) # 1c001b94 <myprintf>
1c0043d8:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0043dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043e0:	03808184 	ori	$r4,$r12,0x20
1c0043e4:	57f183ff 	bl	-3712(0xffff180) # 1c003564 <EXTI_ClearITPendingBit>
1c0043e8:	03400000 	andi	$r0,$r0,0x0
1c0043ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043f8:	4c000020 	jirl	$r0,$r1,0

1c0043fc <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0043fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004400:	29803061 	st.w	$r1,$r3,12(0xc)
1c004404:	29802076 	st.w	$r22,$r3,8(0x8)
1c004408:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00440c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004410:	029ff0c6 	addi.w	$r6,$r6,2044(0x7fc)
1c004414:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c004418:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00441c:	028ed084 	addi.w	$r4,$r4,948(0x3b4)
1c004420:	57d777ff 	bl	-10380(0xfffd774) # 1c001b94 <myprintf>
1c004424:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004428:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00442c:	03808184 	ori	$r4,$r12,0x20
1c004430:	57f137ff 	bl	-3788(0xffff134) # 1c003564 <EXTI_ClearITPendingBit>
1c004434:	03400000 	andi	$r0,$r0,0x0
1c004438:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00443c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004440:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004444:	4c000020 	jirl	$r0,$r1,0

1c004448 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004448:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00444c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004450:	29802076 	st.w	$r22,$r3,8(0x8)
1c004454:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004458:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00445c:	029f20c6 	addi.w	$r6,$r6,1992(0x7c8)
1c004460:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c004464:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004468:	028da084 	addi.w	$r4,$r4,872(0x368)
1c00446c:	57d72bff 	bl	-10456(0xfffd728) # 1c001b94 <myprintf>
1c004470:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004474:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004478:	03808184 	ori	$r4,$r12,0x20
1c00447c:	57f0ebff 	bl	-3864(0xffff0e8) # 1c003564 <EXTI_ClearITPendingBit>
1c004480:	03400000 	andi	$r0,$r0,0x0
1c004484:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004488:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00448c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004490:	4c000020 	jirl	$r0,$r1,0

1c004494 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004494:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004498:	29803061 	st.w	$r1,$r3,12(0xc)
1c00449c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044a8:	029e50c6 	addi.w	$r6,$r6,1940(0x794)
1c0044ac:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c0044b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044b4:	028c7084 	addi.w	$r4,$r4,796(0x31c)
1c0044b8:	57d6dfff 	bl	-10532(0xfffd6dc) # 1c001b94 <myprintf>
1c0044bc:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0044c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044c4:	03808184 	ori	$r4,$r12,0x20
1c0044c8:	57f09fff 	bl	-3940(0xffff09c) # 1c003564 <EXTI_ClearITPendingBit>
1c0044cc:	03400000 	andi	$r0,$r0,0x0
1c0044d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044dc:	4c000020 	jirl	$r0,$r1,0

1c0044e0 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0044e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044f4:	029d80c6 	addi.w	$r6,$r6,1888(0x760)
1c0044f8:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c0044fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004500:	028b4084 	addi.w	$r4,$r4,720(0x2d0)
1c004504:	57d693ff 	bl	-10608(0xfffd690) # 1c001b94 <myprintf>
1c004508:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00450c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004510:	03808184 	ori	$r4,$r12,0x20
1c004514:	57f053ff 	bl	-4016(0xffff050) # 1c003564 <EXTI_ClearITPendingBit>
1c004518:	03400000 	andi	$r0,$r0,0x0
1c00451c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004520:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004524:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004528:	4c000020 	jirl	$r0,$r1,0

1c00452c <ext_handler>:
ext_handler():
1c00452c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004530:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004534:	29806076 	st.w	$r22,$r3,24(0x18)
1c004538:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00453c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004540:	0380f18c 	ori	$r12,$r12,0x3c
1c004544:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004548:	2980018d 	st.w	$r13,$r12,0
1c00454c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004550:	0380818c 	ori	$r12,$r12,0x20
1c004554:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004558:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00455c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004560:	0380818c 	ori	$r12,$r12,0x20
1c004564:	2880018c 	ld.w	$r12,$r12,0
1c004568:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00456c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004570:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004574:	0014b1ac 	and	$r12,$r13,$r12
1c004578:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00457c:	03400000 	andi	$r0,$r0,0x0
1c004580:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004584:	50004000 	b	64(0x40) # 1c0045c4 <ext_handler+0x98>
1c004588:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00458c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004590:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004594:	0340058c 	andi	$r12,$r12,0x1
1c004598:	40002180 	beqz	$r12,32(0x20) # 1c0045b8 <ext_handler+0x8c>
1c00459c:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0045a0:	028c21ad 	addi.w	$r13,$r13,776(0x308)
1c0045a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045a8:	0040898c 	slli.w	$r12,$r12,0x2
1c0045ac:	001031ac 	add.w	$r12,$r13,$r12
1c0045b0:	2880018c 	ld.w	$r12,$r12,0
1c0045b4:	4c000181 	jirl	$r1,$r12,0
1c0045b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0045c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0045c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0045c8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0045cc:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004588 <ext_handler+0x5c>
1c0045d0:	03400000 	andi	$r0,$r0,0x0
1c0045d4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0045d8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0045dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0045e0:	4c000020 	jirl	$r0,$r1,0

1c0045e4 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c0045e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0045e8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0045ec:	29806076 	st.w	$r22,$r3,24(0x18)
1c0045f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0045f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045f8:	0380f18c 	ori	$r12,$r12,0x3c
1c0045fc:	1400020d 	lu12i.w	$r13,16(0x10)
1c004600:	2980018d 	st.w	$r13,$r12,0
1c004604:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004608:	0380118c 	ori	$r12,$r12,0x4
1c00460c:	2880018c 	ld.w	$r12,$r12,0
1c004610:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004614:	57f0a3ff 	bl	-3936(0xffff0a0) # 1c0036b4 <WDG_DogFeed>
1c004618:	02801804 	addi.w	$r4,$r0,6(0x6)
1c00461c:	57eaa7ff 	bl	-5468(0xfffeaa4) # 1c0030c0 <Wake_Set>
1c004620:	03400000 	andi	$r0,$r0,0x0
1c004624:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004628:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00462c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004630:	4c000020 	jirl	$r0,$r1,0

1c004634 <TOUCH>:
TOUCH():
1c004634:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004638:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00463c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004640:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004644:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004648:	0380118c 	ori	$r12,$r12,0x4
1c00464c:	2880018c 	ld.w	$r12,$r12,0
1c004650:	0044c18c 	srli.w	$r12,$r12,0x10
1c004654:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004658:	037ffd8c 	andi	$r12,$r12,0xfff
1c00465c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004660:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004664:	0380118c 	ori	$r12,$r12,0x4
1c004668:	2880018c 	ld.w	$r12,$r12,0
1c00466c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004670:	03403d8c 	andi	$r12,$r12,0xf
1c004674:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004678:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00467c:	0380f18c 	ori	$r12,$r12,0x3c
1c004680:	1400040d 	lu12i.w	$r13,32(0x20)
1c004684:	2980018d 	st.w	$r13,$r12,0
1c004688:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00468c:	0380118c 	ori	$r12,$r12,0x4
1c004690:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004694:	2980018d 	st.w	$r13,$r12,0
1c004698:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00469c:	00150184 	move	$r4,$r12
1c0046a0:	57f187ff 	bl	-3708(0xffff184) # 1c003824 <Printf_KeyType>
1c0046a4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0046a8:	00150184 	move	$r4,$r12
1c0046ac:	57f0ffff 	bl	-3844(0xffff0fc) # 1c0037a8 <Printf_KeyChannel>
1c0046b0:	57f203ff 	bl	-3584(0xffff200) # 1c0038b0 <Printf_KeyVal>
1c0046b4:	03400000 	andi	$r0,$r0,0x0
1c0046b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0046bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0046c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0046c4:	4c000020 	jirl	$r0,$r1,0

1c0046c8 <UART2_INT>:
UART2_INT():
1c0046c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0046cc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0046d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0046d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046d8:	0380f18c 	ori	$r12,$r12,0x3c
1c0046dc:	1400080d 	lu12i.w	$r13,64(0x40)
1c0046e0:	2980018d 	st.w	$r13,$r12,0
1c0046e4:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0046e8:	0380098c 	ori	$r12,$r12,0x2
1c0046ec:	2a00018c 	ld.bu	$r12,$r12,0
1c0046f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0046f4:	03400000 	andi	$r0,$r0,0x0
1c0046f8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0046fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004700:	4c000020 	jirl	$r0,$r1,0

1c004704 <BAT_FAIL>:
BAT_FAIL():
1c004704:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004708:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00470c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004710:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004714:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004718:	0380118c 	ori	$r12,$r12,0x4
1c00471c:	2880018c 	ld.w	$r12,$r12,0
1c004720:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004724:	03407d8c 	andi	$r12,$r12,0x1f
1c004728:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00472c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004730:	0380118c 	ori	$r12,$r12,0x4
1c004734:	2880018e 	ld.w	$r14,$r12,0
1c004738:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00473c:	0380f18c 	ori	$r12,$r12,0x3c
1c004740:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004744:	0014b5cd 	and	$r13,$r14,$r13
1c004748:	2980018d 	st.w	$r13,$r12,0
1c00474c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004750:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004754:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c0047c4 <BAT_FAIL+0xc0>
1c004758:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00475c:	0040898d 	slli.w	$r13,$r12,0x2
1c004760:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004764:	0287118c 	addi.w	$r12,$r12,452(0x1c4)
1c004768:	001031ac 	add.w	$r12,$r13,$r12
1c00476c:	2880018c 	ld.w	$r12,$r12,0
1c004770:	4c000180 	jirl	$r0,$r12,0
1c004774:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004778:	02827084 	addi.w	$r4,$r4,156(0x9c)
1c00477c:	57d41bff 	bl	-11240(0xfffd418) # 1c001b94 <myprintf>
1c004780:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004784:	0380118c 	ori	$r12,$r12,0x4
1c004788:	29800180 	st.w	$r0,$r12,0
1c00478c:	50003c00 	b	60(0x3c) # 1c0047c8 <BAT_FAIL+0xc4>
1c004790:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004794:	0282a084 	addi.w	$r4,$r4,168(0xa8)
1c004798:	57d3ffff 	bl	-11268(0xfffd3fc) # 1c001b94 <myprintf>
1c00479c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047a0:	0380118c 	ori	$r12,$r12,0x4
1c0047a4:	2880018e 	ld.w	$r14,$r12,0
1c0047a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047ac:	0380118c 	ori	$r12,$r12,0x4
1c0047b0:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c0047b4:	03bffdad 	ori	$r13,$r13,0xfff
1c0047b8:	0014b5cd 	and	$r13,$r14,$r13
1c0047bc:	2980018d 	st.w	$r13,$r12,0
1c0047c0:	50000800 	b	8(0x8) # 1c0047c8 <BAT_FAIL+0xc4>
1c0047c4:	03400000 	andi	$r0,$r0,0x0
1c0047c8:	03400000 	andi	$r0,$r0,0x0
1c0047cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0047d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0047d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0047d8:	4c000020 	jirl	$r0,$r1,0

1c0047dc <intc_handler>:
intc_handler():
1c0047dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0047e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0047e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0047e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0047ec:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0047f0:	0380158c 	ori	$r12,$r12,0x5
1c0047f4:	2a00018c 	ld.bu	$r12,$r12,0
1c0047f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0047fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004800:	0340058c 	andi	$r12,$r12,0x1
1c004804:	40002980 	beqz	$r12,40(0x28) # 1c00482c <intc_handler+0x50>
1c004808:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00480c:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003b04 <TIM_GetITStatus>
1c004810:	0015008c 	move	$r12,$r4
1c004814:	40001980 	beqz	$r12,24(0x18) # 1c00482c <intc_handler+0x50>
1c004818:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00481c:	57f337ff 	bl	-3276(0xffff334) # 1c003b50 <TIM_ClearIT>
1c004820:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004824:	0280f084 	addi.w	$r4,$r4,60(0x3c)
1c004828:	57d36fff 	bl	-11412(0xfffd36c) # 1c001b94 <myprintf>
1c00482c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004830:	0340118c 	andi	$r12,$r12,0x4
1c004834:	40001580 	beqz	$r12,20(0x14) # 1c004848 <intc_handler+0x6c>
1c004838:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00483c:	03800d8c 	ori	$r12,$r12,0x3
1c004840:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004844:	2900018d 	st.b	$r13,$r12,0
1c004848:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00484c:	0340218c 	andi	$r12,$r12,0x8
1c004850:	40001580 	beqz	$r12,20(0x14) # 1c004864 <intc_handler+0x88>
1c004854:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004858:	03800d8c 	ori	$r12,$r12,0x3
1c00485c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004860:	2900018d 	st.b	$r13,$r12,0
1c004864:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004868:	03800d8c 	ori	$r12,$r12,0x3
1c00486c:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004870:	2900018d 	st.b	$r13,$r12,0
1c004874:	03400000 	andi	$r0,$r0,0x0
1c004878:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00487c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004880:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004884:	4c000020 	jirl	$r0,$r1,0

1c004888 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004888:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00488c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004890:	29802076 	st.w	$r22,$r3,8(0x8)
1c004894:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004898:	57e807ff 	bl	-6140(0xfffe804) # 1c00309c <Set_Timer_clear>
1c00489c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0048a0:	02bfa084 	addi.w	$r4,$r4,-24(0xfe8)
1c0048a4:	57d2f3ff 	bl	-11536(0xfffd2f0) # 1c001b94 <myprintf>
1c0048a8:	57e7d7ff 	bl	-6188(0xfffe7d4) # 1c00307c <Set_Timer_stop>
1c0048ac:	03400000 	andi	$r0,$r0,0x0
1c0048b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048bc:	4c000020 	jirl	$r0,$r1,0

1c0048c0 <IIC_Delay>:
IIC_Delay():
1c0048c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0048c4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0048c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0048cc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0048d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0048d4:	50001000 	b	16(0x10) # 1c0048e4 <IIC_Delay+0x24>
1c0048d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048dc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0048e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0048e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048e8:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0048d8 <IIC_Delay+0x18>
1c0048ec:	03400000 	andi	$r0,$r0,0x0
1c0048f0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0048f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0048f8:	4c000020 	jirl	$r0,$r1,0

1c0048fc <IIC_Init>:
IIC_Init():
1c0048fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004900:	29803061 	st.w	$r1,$r3,12(0xc)
1c004904:	29802076 	st.w	$r22,$r3,8(0x8)
1c004908:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00490c:	00150005 	move	$r5,$r0
1c004910:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004914:	57cd43ff 	bl	-12992(0xfffcd40) # 1c001654 <gpio_pin_remap>
1c004918:	00150005 	move	$r5,$r0
1c00491c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004920:	57cd37ff 	bl	-13004(0xfffcd34) # 1c001654 <gpio_pin_remap>
1c004924:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004928:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00492c:	57cf37ff 	bl	-12492(0xfffcf34) # 1c001860 <gpio_set_direction>
1c004930:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004934:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004938:	57cf2bff 	bl	-12504(0xfffcf28) # 1c001860 <gpio_set_direction>
1c00493c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004940:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004944:	57cc9bff 	bl	-13160(0xfffcc98) # 1c0015dc <gpio_write_pin>
1c004948:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00494c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004950:	57cc8fff 	bl	-13172(0xfffcc8c) # 1c0015dc <gpio_write_pin>
1c004954:	03400000 	andi	$r0,$r0,0x0
1c004958:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00495c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004960:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004964:	4c000020 	jirl	$r0,$r1,0

1c004968 <SDA_IN>:
SDA_IN():
1c004968:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00496c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004970:	29802076 	st.w	$r22,$r3,8(0x8)
1c004974:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004978:	00150005 	move	$r5,$r0
1c00497c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004980:	57cee3ff 	bl	-12576(0xfffcee0) # 1c001860 <gpio_set_direction>
1c004984:	03400000 	andi	$r0,$r0,0x0
1c004988:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00498c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004990:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004994:	4c000020 	jirl	$r0,$r1,0

1c004998 <SDA_OUT>:
SDA_OUT():
1c004998:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00499c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0049ac:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0049b0:	57ceb3ff 	bl	-12624(0xfffceb0) # 1c001860 <gpio_set_direction>
1c0049b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0049b8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0049bc:	57cc23ff 	bl	-13280(0xfffcc20) # 1c0015dc <gpio_write_pin>
1c0049c0:	03400000 	andi	$r0,$r0,0x0
1c0049c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049d0:	4c000020 	jirl	$r0,$r1,0

1c0049d4 <IIC_Start>:
IIC_Start():
1c0049d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049e4:	57ffb7ff 	bl	-76(0xfffffb4) # 1c004998 <SDA_OUT>
1c0049e8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0049ec:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0049f0:	57cbefff 	bl	-13332(0xfffcbec) # 1c0015dc <gpio_write_pin>
1c0049f4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0049f8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0049fc:	57cbe3ff 	bl	-13344(0xfffcbe0) # 1c0015dc <gpio_write_pin>
1c004a00:	57fec3ff 	bl	-320(0xffffec0) # 1c0048c0 <IIC_Delay>
1c004a04:	00150005 	move	$r5,$r0
1c004a08:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004a0c:	57cbd3ff 	bl	-13360(0xfffcbd0) # 1c0015dc <gpio_write_pin>
1c004a10:	57feb3ff 	bl	-336(0xffffeb0) # 1c0048c0 <IIC_Delay>
1c004a14:	00150005 	move	$r5,$r0
1c004a18:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004a1c:	57cbc3ff 	bl	-13376(0xfffcbc0) # 1c0015dc <gpio_write_pin>
1c004a20:	03400000 	andi	$r0,$r0,0x0
1c004a24:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a28:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a2c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a30:	4c000020 	jirl	$r0,$r1,0

1c004a34 <IIC_Stop>:
IIC_Stop():
1c004a34:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a38:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a3c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a40:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a44:	57ff57ff 	bl	-172(0xfffff54) # 1c004998 <SDA_OUT>
1c004a48:	00150005 	move	$r5,$r0
1c004a4c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004a50:	57cb8fff 	bl	-13428(0xfffcb8c) # 1c0015dc <gpio_write_pin>
1c004a54:	00150005 	move	$r5,$r0
1c004a58:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004a5c:	57cb83ff 	bl	-13440(0xfffcb80) # 1c0015dc <gpio_write_pin>
1c004a60:	57fe63ff 	bl	-416(0xffffe60) # 1c0048c0 <IIC_Delay>
1c004a64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004a68:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004a6c:	57cb73ff 	bl	-13456(0xfffcb70) # 1c0015dc <gpio_write_pin>
1c004a70:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004a74:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004a78:	57cb67ff 	bl	-13468(0xfffcb64) # 1c0015dc <gpio_write_pin>
1c004a7c:	57fe47ff 	bl	-444(0xffffe44) # 1c0048c0 <IIC_Delay>
1c004a80:	03400000 	andi	$r0,$r0,0x0
1c004a84:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a88:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a8c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a90:	4c000020 	jirl	$r0,$r1,0

1c004a94 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c004a94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a98:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a9c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004aa0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004aa4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004aa8:	57fec3ff 	bl	-320(0xffffec0) # 1c004968 <SDA_IN>
1c004aac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ab0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004ab4:	57cb2bff 	bl	-13528(0xfffcb28) # 1c0015dc <gpio_write_pin>
1c004ab8:	57fe0bff 	bl	-504(0xffffe08) # 1c0048c0 <IIC_Delay>
1c004abc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ac0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004ac4:	57cb1bff 	bl	-13544(0xfffcb18) # 1c0015dc <gpio_write_pin>
1c004ac8:	57fdfbff 	bl	-520(0xffffdf8) # 1c0048c0 <IIC_Delay>
1c004acc:	50002800 	b	40(0x28) # 1c004af4 <IIC_Wait_Ack+0x60>
1c004ad0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ad4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ad8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004adc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004ae0:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c004ae4:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c004af4 <IIC_Wait_Ack+0x60>
1c004ae8:	57ff4fff 	bl	-180(0xfffff4c) # 1c004a34 <IIC_Stop>
1c004aec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004af0:	50002400 	b	36(0x24) # 1c004b14 <IIC_Wait_Ack+0x80>
1c004af4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004af8:	57ca97ff 	bl	-13676(0xfffca94) # 1c00158c <gpio_get_pin>
1c004afc:	0015008c 	move	$r12,$r4
1c004b00:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c004ad0 <IIC_Wait_Ack+0x3c>
1c004b04:	00150005 	move	$r5,$r0
1c004b08:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004b0c:	57cad3ff 	bl	-13616(0xfffcad0) # 1c0015dc <gpio_write_pin>
1c004b10:	0015000c 	move	$r12,$r0
1c004b14:	00150184 	move	$r4,$r12
1c004b18:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b1c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b24:	4c000020 	jirl	$r0,$r1,0

1c004b28 <IIC_Send_Byte>:
IIC_Send_Byte():
1c004b28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004b2c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004b30:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004b34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004b38:	0015008c 	move	$r12,$r4
1c004b3c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004b40:	57fe5bff 	bl	-424(0xffffe58) # 1c004998 <SDA_OUT>
1c004b44:	00150005 	move	$r5,$r0
1c004b48:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004b4c:	57ca93ff 	bl	-13680(0xfffca90) # 1c0015dc <gpio_write_pin>
1c004b50:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004b54:	50006000 	b	96(0x60) # 1c004bb4 <IIC_Send_Byte+0x8c>
1c004b58:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c004b5c:	64001580 	bge	$r12,$r0,20(0x14) # 1c004b70 <IIC_Send_Byte+0x48>
1c004b60:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004b64:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004b68:	57ca77ff 	bl	-13708(0xfffca74) # 1c0015dc <gpio_write_pin>
1c004b6c:	50001000 	b	16(0x10) # 1c004b7c <IIC_Send_Byte+0x54>
1c004b70:	00150005 	move	$r5,$r0
1c004b74:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004b78:	57ca67ff 	bl	-13724(0xfffca64) # 1c0015dc <gpio_write_pin>
1c004b7c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004b80:	0040858c 	slli.w	$r12,$r12,0x1
1c004b84:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004b88:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004b8c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004b90:	57ca4fff 	bl	-13748(0xfffca4c) # 1c0015dc <gpio_write_pin>
1c004b94:	57fd2fff 	bl	-724(0xffffd2c) # 1c0048c0 <IIC_Delay>
1c004b98:	00150005 	move	$r5,$r0
1c004b9c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004ba0:	57ca3fff 	bl	-13764(0xfffca3c) # 1c0015dc <gpio_write_pin>
1c004ba4:	57fd1fff 	bl	-740(0xffffd1c) # 1c0048c0 <IIC_Delay>
1c004ba8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004bac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004bb0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004bb4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004bb8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004bbc:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c004b58 <IIC_Send_Byte+0x30>
1c004bc0:	03400000 	andi	$r0,$r0,0x0
1c004bc4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004bc8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004bcc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004bd0:	4c000020 	jirl	$r0,$r1,0

1c004bd4 <DHT11_Rst>:
DHT11_Rst():
1c004bd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004bd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004bdc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004be0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004be4:	54007000 	bl	112(0x70) # 1c004c54 <DHT11_IO_Out>
1c004be8:	00150005 	move	$r5,$r0
1c004bec:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004bf0:	57c9efff 	bl	-13844(0xfffc9ec) # 1c0015dc <gpio_write_pin>
1c004bf4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004bf8:	57e887ff 	bl	-6012(0xfffe884) # 1c00347c <delay_ms>
1c004bfc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c00:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004c04:	57c9dbff 	bl	-13864(0xfffc9d8) # 1c0015dc <gpio_write_pin>
1c004c08:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c004c0c:	57e83bff 	bl	-6088(0xfffe838) # 1c003444 <delay_us>
1c004c10:	03400000 	andi	$r0,$r0,0x0
1c004c14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c20:	4c000020 	jirl	$r0,$r1,0

1c004c24 <DHT11_IO_In>:
DHT11_IO_In():
1c004c24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c28:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c2c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c30:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c34:	00150005 	move	$r5,$r0
1c004c38:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004c3c:	57cc27ff 	bl	-13276(0xfffcc24) # 1c001860 <gpio_set_direction>
1c004c40:	03400000 	andi	$r0,$r0,0x0
1c004c44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c48:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c50:	4c000020 	jirl	$r0,$r1,0

1c004c54 <DHT11_IO_Out>:
DHT11_IO_Out():
1c004c54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c58:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c5c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c60:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c68:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004c6c:	57cbf7ff 	bl	-13324(0xfffcbf4) # 1c001860 <gpio_set_direction>
1c004c70:	03400000 	andi	$r0,$r0,0x0
1c004c74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c78:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c80:	4c000020 	jirl	$r0,$r1,0

1c004c84 <DHT11_Check>:
DHT11_Check():
1c004c84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c88:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c8c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c90:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c94:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004c98:	57ff8fff 	bl	-116(0xfffff8c) # 1c004c24 <DHT11_IO_In>
1c004c9c:	50001000 	b	16(0x10) # 1c004cac <DHT11_Check+0x28>
1c004ca0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ca4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ca8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004cac:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004cb0:	57c8dfff 	bl	-14116(0xfffc8dc) # 1c00158c <gpio_get_pin>
1c004cb4:	0015008c 	move	$r12,$r4
1c004cb8:	40001180 	beqz	$r12,16(0x10) # 1c004cc8 <DHT11_Check+0x44>
1c004cbc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004cc0:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004cc4:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c004ca0 <DHT11_Check+0x1c>
1c004cc8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004ccc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004cd0:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c004cdc <DHT11_Check+0x58>
1c004cd4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004cd8:	50004c00 	b	76(0x4c) # 1c004d24 <DHT11_Check+0xa0>
1c004cdc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004ce0:	50001000 	b	16(0x10) # 1c004cf0 <DHT11_Check+0x6c>
1c004ce4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ce8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004cec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004cf0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004cf4:	57c89bff 	bl	-14184(0xfffc898) # 1c00158c <gpio_get_pin>
1c004cf8:	0015008c 	move	$r12,$r4
1c004cfc:	44001180 	bnez	$r12,16(0x10) # 1c004d0c <DHT11_Check+0x88>
1c004d00:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004d04:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004d08:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c004ce4 <DHT11_Check+0x60>
1c004d0c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004d10:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004d14:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c004d20 <DHT11_Check+0x9c>
1c004d18:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004d1c:	50000800 	b	8(0x8) # 1c004d24 <DHT11_Check+0xa0>
1c004d20:	0015000c 	move	$r12,$r0
1c004d24:	00150184 	move	$r4,$r12
1c004d28:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d2c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d34:	4c000020 	jirl	$r0,$r1,0

1c004d38 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c004d38:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d3c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004d40:	29806076 	st.w	$r22,$r3,24(0x18)
1c004d44:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004d48:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004d4c:	50001000 	b	16(0x10) # 1c004d5c <DHT11_Read_Bit+0x24>
1c004d50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004d54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004d5c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004d60:	57c82fff 	bl	-14292(0xfffc82c) # 1c00158c <gpio_get_pin>
1c004d64:	0015008c 	move	$r12,$r4
1c004d68:	40001180 	beqz	$r12,16(0x10) # 1c004d78 <DHT11_Read_Bit+0x40>
1c004d6c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004d70:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004d74:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c004d50 <DHT11_Read_Bit+0x18>
1c004d78:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004d7c:	50001000 	b	16(0x10) # 1c004d8c <DHT11_Read_Bit+0x54>
1c004d80:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004d84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004d8c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004d90:	57c7ffff 	bl	-14340(0xfffc7fc) # 1c00158c <gpio_get_pin>
1c004d94:	0015008c 	move	$r12,$r4
1c004d98:	44001180 	bnez	$r12,16(0x10) # 1c004da8 <DHT11_Read_Bit+0x70>
1c004d9c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004da0:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c004da4:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c004d80 <DHT11_Read_Bit+0x48>
1c004da8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c004dac:	57e69bff 	bl	-6504(0xfffe698) # 1c003444 <delay_us>
1c004db0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004db4:	57c7dbff 	bl	-14376(0xfffc7d8) # 1c00158c <gpio_get_pin>
1c004db8:	0015008c 	move	$r12,$r4
1c004dbc:	40000d80 	beqz	$r12,12(0xc) # 1c004dc8 <DHT11_Read_Bit+0x90>
1c004dc0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004dc4:	50000800 	b	8(0x8) # 1c004dcc <DHT11_Read_Bit+0x94>
1c004dc8:	0015000c 	move	$r12,$r0
1c004dcc:	00150184 	move	$r4,$r12
1c004dd0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004dd4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004dd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ddc:	4c000020 	jirl	$r0,$r1,0

1c004de0 <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c004de0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004de4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004de8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004dec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004df0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004df4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004df8:	50003400 	b	52(0x34) # 1c004e2c <DHT11_Read_Byte+0x4c>
1c004dfc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004e00:	0040858c 	slli.w	$r12,$r12,0x1
1c004e04:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004e08:	57ff33ff 	bl	-208(0xfffff30) # 1c004d38 <DHT11_Read_Bit>
1c004e0c:	0015008c 	move	$r12,$r4
1c004e10:	0015018d 	move	$r13,$r12
1c004e14:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004e18:	001531ac 	or	$r12,$r13,$r12
1c004e1c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004e20:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004e24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004e28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004e2c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004e30:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004e34:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c004dfc <DHT11_Read_Byte+0x1c>
1c004e38:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004e3c:	00150184 	move	$r4,$r12
1c004e40:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004e44:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004e48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e4c:	4c000020 	jirl	$r0,$r1,0

1c004e50 <DHT11_Read_Data>:
DHT11_Read_Data():
1c004e50:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004e54:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004e58:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004e5c:	29809077 	st.w	$r23,$r3,36(0x24)
1c004e60:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004e64:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004e68:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004e6c:	57fd6bff 	bl	-664(0xffffd68) # 1c004bd4 <DHT11_Rst>
1c004e70:	57fe17ff 	bl	-492(0xffffe14) # 1c004c84 <DHT11_Check>
1c004e74:	0015008c 	move	$r12,$r4
1c004e78:	4400c180 	bnez	$r12,192(0xc0) # 1c004f38 <DHT11_Read_Data+0xe8>
1c004e7c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004e80:	50002800 	b	40(0x28) # 1c004ea8 <DHT11_Read_Data+0x58>
1c004e84:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c004e88:	57ff5bff 	bl	-168(0xfffff58) # 1c004de0 <DHT11_Read_Byte>
1c004e8c:	0015008c 	move	$r12,$r4
1c004e90:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004e94:	00105dad 	add.w	$r13,$r13,$r23
1c004e98:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c004e9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ea0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ea4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004ea8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004eac:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c004eb0:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c004e84 <DHT11_Read_Data+0x34>
1c004eb4:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c004eb8:	0015018d 	move	$r13,$r12
1c004ebc:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c004ec0:	001031ac 	add.w	$r12,$r13,$r12
1c004ec4:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c004ec8:	0010358c 	add.w	$r12,$r12,$r13
1c004ecc:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c004ed0:	0010358c 	add.w	$r12,$r12,$r13
1c004ed4:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c004ed8:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c004f40 <DHT11_Read_Data+0xf0>
1c004edc:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c004ee0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004ee4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004ee8:	001c31ac 	mul.w	$r12,$r13,$r12
1c004eec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004ef0:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c004ef4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004ef8:	001031ac 	add.w	$r12,$r13,$r12
1c004efc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004f00:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004f04:	2940018d 	st.h	$r13,$r12,0
1c004f08:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c004f0c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004f10:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004f14:	001c31ac 	mul.w	$r12,$r13,$r12
1c004f18:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004f1c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c004f20:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004f24:	001031ac 	add.w	$r12,$r13,$r12
1c004f28:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004f2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004f30:	2940018d 	st.h	$r13,$r12,0
1c004f34:	50000c00 	b	12(0xc) # 1c004f40 <DHT11_Read_Data+0xf0>
1c004f38:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004f3c:	50000800 	b	8(0x8) # 1c004f44 <DHT11_Read_Data+0xf4>
1c004f40:	0015000c 	move	$r12,$r0
1c004f44:	00150184 	move	$r4,$r12
1c004f48:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004f4c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004f50:	28809077 	ld.w	$r23,$r3,36(0x24)
1c004f54:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004f58:	4c000020 	jirl	$r0,$r1,0

1c004f5c <DHT11_Init>:
DHT11_Init():
1c004f5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f60:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f64:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f6c:	00150005 	move	$r5,$r0
1c004f70:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004f74:	57c6e3ff 	bl	-14624(0xfffc6e0) # 1c001654 <gpio_pin_remap>
1c004f78:	57fcdfff 	bl	-804(0xffffcdc) # 1c004c54 <DHT11_IO_Out>
1c004f7c:	57fc5bff 	bl	-936(0xffffc58) # 1c004bd4 <DHT11_Rst>
1c004f80:	57fd07ff 	bl	-764(0xffffd04) # 1c004c84 <DHT11_Check>
1c004f84:	0015008c 	move	$r12,$r4
1c004f88:	00150184 	move	$r4,$r12
1c004f8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f90:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f98:	4c000020 	jirl	$r0,$r1,0

1c004f9c <LED_Init>:
LED_Init():
1c004f9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004fa0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004fa4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004fa8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004fac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fb0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004fb4:	57c8afff 	bl	-14164(0xfffc8ac) # 1c001860 <gpio_set_direction>
1c004fb8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fbc:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c004fc0:	57c8a3ff 	bl	-14176(0xfffc8a0) # 1c001860 <gpio_set_direction>
1c004fc4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fc8:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c004fcc:	57c897ff 	bl	-14188(0xfffc894) # 1c001860 <gpio_set_direction>
1c004fd0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fd4:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c004fd8:	57c88bff 	bl	-14200(0xfffc888) # 1c001860 <gpio_set_direction>
1c004fdc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004fe0:	54001800 	bl	24(0x18) # 1c004ff8 <LED_On>
1c004fe4:	03400000 	andi	$r0,$r0,0x0
1c004fe8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004fec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ff0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ff4:	4c000020 	jirl	$r0,$r1,0

1c004ff8 <LED_On>:
LED_On():
1c004ff8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ffc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005000:	29806076 	st.w	$r22,$r3,24(0x18)
1c005004:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005008:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00500c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005010:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005014:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005018:	00150184 	move	$r4,$r12
1c00501c:	57c5c3ff 	bl	-14912(0xfffc5c0) # 1c0015dc <gpio_write_pin>
1c005020:	03400000 	andi	$r0,$r0,0x0
1c005024:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005028:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00502c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005030:	4c000020 	jirl	$r0,$r1,0

1c005034 <LED_Off>:
LED_Off():
1c005034:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005038:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00503c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005040:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005044:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005048:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00504c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005050:	00150005 	move	$r5,$r0
1c005054:	00150184 	move	$r4,$r12
1c005058:	57c587ff 	bl	-14972(0xfffc584) # 1c0015dc <gpio_write_pin>
1c00505c:	03400000 	andi	$r0,$r0,0x0
1c005060:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005064:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005068:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00506c:	4c000020 	jirl	$r0,$r1,0

1c005070 <KEY_init>:
KEY_init():
1c005070:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005074:	29803061 	st.w	$r1,$r3,12(0xc)
1c005078:	29802076 	st.w	$r22,$r3,8(0x8)
1c00507c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005080:	00150005 	move	$r5,$r0
1c005084:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005088:	57c7dbff 	bl	-14376(0xfffc7d8) # 1c001860 <gpio_set_direction>
1c00508c:	00150005 	move	$r5,$r0
1c005090:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c005094:	57c7cfff 	bl	-14388(0xfffc7cc) # 1c001860 <gpio_set_direction>
1c005098:	00150005 	move	$r5,$r0
1c00509c:	02806004 	addi.w	$r4,$r0,24(0x18)
1c0050a0:	57c7c3ff 	bl	-14400(0xfffc7c0) # 1c001860 <gpio_set_direction>
1c0050a4:	00150005 	move	$r5,$r0
1c0050a8:	02806404 	addi.w	$r4,$r0,25(0x19)
1c0050ac:	57c7b7ff 	bl	-14412(0xfffc7b4) # 1c001860 <gpio_set_direction>
1c0050b0:	03400000 	andi	$r0,$r0,0x0
1c0050b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0050b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0050bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050c0:	4c000020 	jirl	$r0,$r1,0

1c0050c4 <KEY_Check>:
KEY_Check():
1c0050c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0050d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0050d4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0050d8:	57c4b7ff 	bl	-15180(0xfffc4b4) # 1c00158c <gpio_get_pin>
1c0050dc:	0015008c 	move	$r12,$r4
1c0050e0:	44002580 	bnez	$r12,36(0x24) # 1c005104 <KEY_Check+0x40>
1c0050e4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0050e8:	57e397ff 	bl	-7276(0xfffe394) # 1c00347c <delay_ms>
1c0050ec:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0050f0:	57c49fff 	bl	-15204(0xfffc49c) # 1c00158c <gpio_get_pin>
1c0050f4:	0015008c 	move	$r12,$r4
1c0050f8:	44009d80 	bnez	$r12,156(0x9c) # 1c005194 <KEY_Check+0xd0>
1c0050fc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005100:	50009800 	b	152(0x98) # 1c005198 <KEY_Check+0xd4>
1c005104:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c005108:	57c487ff 	bl	-15228(0xfffc484) # 1c00158c <gpio_get_pin>
1c00510c:	0015008c 	move	$r12,$r4
1c005110:	44002580 	bnez	$r12,36(0x24) # 1c005134 <KEY_Check+0x70>
1c005114:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005118:	57e367ff 	bl	-7324(0xfffe364) # 1c00347c <delay_ms>
1c00511c:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c005120:	57c46fff 	bl	-15252(0xfffc46c) # 1c00158c <gpio_get_pin>
1c005124:	0015008c 	move	$r12,$r4
1c005128:	44006d80 	bnez	$r12,108(0x6c) # 1c005194 <KEY_Check+0xd0>
1c00512c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005130:	50006800 	b	104(0x68) # 1c005198 <KEY_Check+0xd4>
1c005134:	02806004 	addi.w	$r4,$r0,24(0x18)
1c005138:	57c457ff 	bl	-15276(0xfffc454) # 1c00158c <gpio_get_pin>
1c00513c:	0015008c 	move	$r12,$r4
1c005140:	44002580 	bnez	$r12,36(0x24) # 1c005164 <KEY_Check+0xa0>
1c005144:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005148:	57e337ff 	bl	-7372(0xfffe334) # 1c00347c <delay_ms>
1c00514c:	02806004 	addi.w	$r4,$r0,24(0x18)
1c005150:	57c43fff 	bl	-15300(0xfffc43c) # 1c00158c <gpio_get_pin>
1c005154:	0015008c 	move	$r12,$r4
1c005158:	44003d80 	bnez	$r12,60(0x3c) # 1c005194 <KEY_Check+0xd0>
1c00515c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005160:	50003800 	b	56(0x38) # 1c005198 <KEY_Check+0xd4>
1c005164:	02806404 	addi.w	$r4,$r0,25(0x19)
1c005168:	57c427ff 	bl	-15324(0xfffc424) # 1c00158c <gpio_get_pin>
1c00516c:	0015008c 	move	$r12,$r4
1c005170:	44002580 	bnez	$r12,36(0x24) # 1c005194 <KEY_Check+0xd0>
1c005174:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005178:	57e307ff 	bl	-7420(0xfffe304) # 1c00347c <delay_ms>
1c00517c:	02806404 	addi.w	$r4,$r0,25(0x19)
1c005180:	57c40fff 	bl	-15348(0xfffc40c) # 1c00158c <gpio_get_pin>
1c005184:	0015008c 	move	$r12,$r4
1c005188:	44000d80 	bnez	$r12,12(0xc) # 1c005194 <KEY_Check+0xd0>
1c00518c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005190:	50000800 	b	8(0x8) # 1c005198 <KEY_Check+0xd4>
1c005194:	0015000c 	move	$r12,$r0
1c005198:	00150184 	move	$r4,$r12
1c00519c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0051a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0051a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0051a8:	4c000020 	jirl	$r0,$r1,0

1c0051ac <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c0051ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0051b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0051b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0051b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0051bc:	57f743ff 	bl	-2240(0xffff740) # 1c0048fc <IIC_Init>
1c0051c0:	03400000 	andi	$r0,$r0,0x0
1c0051c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0051c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0051cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0051d0:	4c000020 	jirl	$r0,$r1,0

1c0051d4 <OLED_WR_Byte>:
OLED_WR_Byte():
1c0051d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0051d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0051dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0051e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0051e4:	0015008c 	move	$r12,$r4
1c0051e8:	001500ad 	move	$r13,$r5
1c0051ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0051f0:	001501ac 	move	$r12,$r13
1c0051f4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0051f8:	57f7dfff 	bl	-2084(0xffff7dc) # 1c0049d4 <IIC_Start>
1c0051fc:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c005200:	57f92bff 	bl	-1752(0xffff928) # 1c004b28 <IIC_Send_Byte>
1c005204:	57f893ff 	bl	-1904(0xffff890) # 1c004a94 <IIC_Wait_Ack>
1c005208:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00520c:	00150184 	move	$r4,$r12
1c005210:	57f91bff 	bl	-1768(0xffff918) # 1c004b28 <IIC_Send_Byte>
1c005214:	57f883ff 	bl	-1920(0xffff880) # 1c004a94 <IIC_Wait_Ack>
1c005218:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00521c:	00150184 	move	$r4,$r12
1c005220:	57f90bff 	bl	-1784(0xffff908) # 1c004b28 <IIC_Send_Byte>
1c005224:	57f873ff 	bl	-1936(0xffff870) # 1c004a94 <IIC_Wait_Ack>
1c005228:	57f80fff 	bl	-2036(0xffff80c) # 1c004a34 <IIC_Stop>
1c00522c:	03400000 	andi	$r0,$r0,0x0
1c005230:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005234:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005238:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00523c:	4c000020 	jirl	$r0,$r1,0

1c005240 <OLED_Set_Pos>:
OLED_Set_Pos():
1c005240:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005244:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005248:	29806076 	st.w	$r22,$r3,24(0x18)
1c00524c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005250:	0015008c 	move	$r12,$r4
1c005254:	001500ad 	move	$r13,$r5
1c005258:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00525c:	001501ac 	move	$r12,$r13
1c005260:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005264:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005268:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c00526c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005270:	00150005 	move	$r5,$r0
1c005274:	00150184 	move	$r4,$r12
1c005278:	57ff5fff 	bl	-164(0xfffff5c) # 1c0051d4 <OLED_WR_Byte>
1c00527c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005280:	0044918c 	srli.w	$r12,$r12,0x4
1c005284:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005288:	0380418c 	ori	$r12,$r12,0x10
1c00528c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005290:	00150005 	move	$r5,$r0
1c005294:	00150184 	move	$r4,$r12
1c005298:	57ff3fff 	bl	-196(0xfffff3c) # 1c0051d4 <OLED_WR_Byte>
1c00529c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052a0:	03403d8c 	andi	$r12,$r12,0xf
1c0052a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052a8:	00150005 	move	$r5,$r0
1c0052ac:	00150184 	move	$r4,$r12
1c0052b0:	57ff27ff 	bl	-220(0xfffff24) # 1c0051d4 <OLED_WR_Byte>
1c0052b4:	03400000 	andi	$r0,$r0,0x0
1c0052b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0052bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0052c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0052c4:	4c000020 	jirl	$r0,$r1,0

1c0052c8 <OLED_Clear>:
OLED_Clear():
1c0052c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052cc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0052d0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0052d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0052d8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0052dc:	50006800 	b	104(0x68) # 1c005344 <OLED_Clear+0x7c>
1c0052e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052e4:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0052e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052ec:	00150005 	move	$r5,$r0
1c0052f0:	00150184 	move	$r4,$r12
1c0052f4:	57fee3ff 	bl	-288(0xffffee0) # 1c0051d4 <OLED_WR_Byte>
1c0052f8:	00150005 	move	$r5,$r0
1c0052fc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005300:	57fed7ff 	bl	-300(0xffffed4) # 1c0051d4 <OLED_WR_Byte>
1c005304:	00150005 	move	$r5,$r0
1c005308:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00530c:	57fecbff 	bl	-312(0xffffec8) # 1c0051d4 <OLED_WR_Byte>
1c005310:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005314:	50001c00 	b	28(0x1c) # 1c005330 <OLED_Clear+0x68>
1c005318:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00531c:	00150004 	move	$r4,$r0
1c005320:	57feb7ff 	bl	-332(0xffffeb4) # 1c0051d4 <OLED_WR_Byte>
1c005324:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005328:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00532c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005330:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005334:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c005318 <OLED_Clear+0x50>
1c005338:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00533c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005340:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005344:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005348:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00534c:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c0052e0 <OLED_Clear+0x18>
1c005350:	03400000 	andi	$r0,$r0,0x0
1c005354:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005358:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00535c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005360:	4c000020 	jirl	$r0,$r1,0

1c005364 <OLED_Init>:
OLED_Init():
1c005364:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005368:	29803061 	st.w	$r1,$r3,12(0xc)
1c00536c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005370:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005374:	57fe3bff 	bl	-456(0xffffe38) # 1c0051ac <OLED_Hardware_Init>
1c005378:	02819004 	addi.w	$r4,$r0,100(0x64)
1c00537c:	57e103ff 	bl	-7936(0xfffe100) # 1c00347c <delay_ms>
1c005380:	57ff4bff 	bl	-184(0xfffff48) # 1c0052c8 <OLED_Clear>
1c005384:	00150005 	move	$r5,$r0
1c005388:	00150004 	move	$r4,$r0
1c00538c:	57feb7ff 	bl	-332(0xffffeb4) # 1c005240 <OLED_Set_Pos>
1c005390:	00150005 	move	$r5,$r0
1c005394:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005398:	57fe3fff 	bl	-452(0xffffe3c) # 1c0051d4 <OLED_WR_Byte>
1c00539c:	00150005 	move	$r5,$r0
1c0053a0:	00150004 	move	$r4,$r0
1c0053a4:	57fe33ff 	bl	-464(0xffffe30) # 1c0051d4 <OLED_WR_Byte>
1c0053a8:	00150005 	move	$r5,$r0
1c0053ac:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0053b0:	57fe27ff 	bl	-476(0xffffe24) # 1c0051d4 <OLED_WR_Byte>
1c0053b4:	00150005 	move	$r5,$r0
1c0053b8:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0053bc:	57fe1bff 	bl	-488(0xffffe18) # 1c0051d4 <OLED_WR_Byte>
1c0053c0:	00150005 	move	$r5,$r0
1c0053c4:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0053c8:	57fe0fff 	bl	-500(0xffffe0c) # 1c0051d4 <OLED_WR_Byte>
1c0053cc:	00150005 	move	$r5,$r0
1c0053d0:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c0053d4:	57fe03ff 	bl	-512(0xffffe00) # 1c0051d4 <OLED_WR_Byte>
1c0053d8:	00150005 	move	$r5,$r0
1c0053dc:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c0053e0:	57fdf7ff 	bl	-524(0xffffdf4) # 1c0051d4 <OLED_WR_Byte>
1c0053e4:	00150005 	move	$r5,$r0
1c0053e8:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c0053ec:	57fdebff 	bl	-536(0xffffde8) # 1c0051d4 <OLED_WR_Byte>
1c0053f0:	00150005 	move	$r5,$r0
1c0053f4:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0053f8:	57fddfff 	bl	-548(0xffffddc) # 1c0051d4 <OLED_WR_Byte>
1c0053fc:	00150005 	move	$r5,$r0
1c005400:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c005404:	57fdd3ff 	bl	-560(0xffffdd0) # 1c0051d4 <OLED_WR_Byte>
1c005408:	00150005 	move	$r5,$r0
1c00540c:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005410:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0051d4 <OLED_WR_Byte>
1c005414:	00150005 	move	$r5,$r0
1c005418:	02820404 	addi.w	$r4,$r0,129(0x81)
1c00541c:	57fdbbff 	bl	-584(0xffffdb8) # 1c0051d4 <OLED_WR_Byte>
1c005420:	00150005 	move	$r5,$r0
1c005424:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c005428:	57fdafff 	bl	-596(0xffffdac) # 1c0051d4 <OLED_WR_Byte>
1c00542c:	00150005 	move	$r5,$r0
1c005430:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005434:	57fda3ff 	bl	-608(0xffffda0) # 1c0051d4 <OLED_WR_Byte>
1c005438:	00150005 	move	$r5,$r0
1c00543c:	00150004 	move	$r4,$r0
1c005440:	57fd97ff 	bl	-620(0xffffd94) # 1c0051d4 <OLED_WR_Byte>
1c005444:	00150005 	move	$r5,$r0
1c005448:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c00544c:	57fd8bff 	bl	-632(0xffffd88) # 1c0051d4 <OLED_WR_Byte>
1c005450:	00150005 	move	$r5,$r0
1c005454:	02820004 	addi.w	$r4,$r0,128(0x80)
1c005458:	57fd7fff 	bl	-644(0xffffd7c) # 1c0051d4 <OLED_WR_Byte>
1c00545c:	00150005 	move	$r5,$r0
1c005460:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c005464:	57fd73ff 	bl	-656(0xffffd70) # 1c0051d4 <OLED_WR_Byte>
1c005468:	00150005 	move	$r5,$r0
1c00546c:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c005470:	57fd67ff 	bl	-668(0xffffd64) # 1c0051d4 <OLED_WR_Byte>
1c005474:	00150005 	move	$r5,$r0
1c005478:	02836804 	addi.w	$r4,$r0,218(0xda)
1c00547c:	57fd5bff 	bl	-680(0xffffd58) # 1c0051d4 <OLED_WR_Byte>
1c005480:	00150005 	move	$r5,$r0
1c005484:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005488:	57fd4fff 	bl	-692(0xffffd4c) # 1c0051d4 <OLED_WR_Byte>
1c00548c:	00150005 	move	$r5,$r0
1c005490:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c005494:	57fd43ff 	bl	-704(0xffffd40) # 1c0051d4 <OLED_WR_Byte>
1c005498:	00150005 	move	$r5,$r0
1c00549c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0054a0:	57fd37ff 	bl	-716(0xffffd34) # 1c0051d4 <OLED_WR_Byte>
1c0054a4:	00150005 	move	$r5,$r0
1c0054a8:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0054ac:	57fd2bff 	bl	-728(0xffffd28) # 1c0051d4 <OLED_WR_Byte>
1c0054b0:	00150005 	move	$r5,$r0
1c0054b4:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0054b8:	57fd1fff 	bl	-740(0xffffd1c) # 1c0051d4 <OLED_WR_Byte>
1c0054bc:	00150005 	move	$r5,$r0
1c0054c0:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c0054c4:	57fd13ff 	bl	-752(0xffffd10) # 1c0051d4 <OLED_WR_Byte>
1c0054c8:	00150005 	move	$r5,$r0
1c0054cc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0054d0:	57fd07ff 	bl	-764(0xffffd04) # 1c0051d4 <OLED_WR_Byte>
1c0054d4:	00150005 	move	$r5,$r0
1c0054d8:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c0054dc:	57fcfbff 	bl	-776(0xffffcf8) # 1c0051d4 <OLED_WR_Byte>
1c0054e0:	00150005 	move	$r5,$r0
1c0054e4:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0054e8:	57fcefff 	bl	-788(0xffffcec) # 1c0051d4 <OLED_WR_Byte>
1c0054ec:	00150005 	move	$r5,$r0
1c0054f0:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0054f4:	57fce3ff 	bl	-800(0xffffce0) # 1c0051d4 <OLED_WR_Byte>
1c0054f8:	00150005 	move	$r5,$r0
1c0054fc:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c005500:	57fcd7ff 	bl	-812(0xffffcd4) # 1c0051d4 <OLED_WR_Byte>
1c005504:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0052c8 <OLED_Clear>
1c005508:	00150005 	move	$r5,$r0
1c00550c:	00150004 	move	$r4,$r0
1c005510:	57fd33ff 	bl	-720(0xffffd30) # 1c005240 <OLED_Set_Pos>
1c005514:	03400000 	andi	$r0,$r0,0x0
1c005518:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00551c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005520:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005524:	4c000020 	jirl	$r0,$r1,0

1c005528 <OLED_ShowChar>:
OLED_ShowChar():
1c005528:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00552c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005530:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005534:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005538:	0015008c 	move	$r12,$r4
1c00553c:	001500af 	move	$r15,$r5
1c005540:	001500ce 	move	$r14,$r6
1c005544:	001500ed 	move	$r13,$r7
1c005548:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00554c:	001501ec 	move	$r12,$r15
1c005550:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005554:	001501cc 	move	$r12,$r14
1c005558:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c00555c:	001501ac 	move	$r12,$r13
1c005560:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005564:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005568:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00556c:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c005570:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005574:	58000dac 	beq	$r13,$r12,12(0xc) # 1c005580 <OLED_ShowChar+0x58>
1c005578:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00557c:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005580:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c005584:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005588:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c00558c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005590:	50009800 	b	152(0x98) # 1c005628 <OLED_ShowChar+0x100>
1c005594:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005598:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00559c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0055a0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0055a4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055a8:	001031ac 	add.w	$r12,$r13,$r12
1c0055ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0055b0:	00150185 	move	$r5,$r12
1c0055b4:	001501c4 	move	$r4,$r14
1c0055b8:	57fc8bff 	bl	-888(0xffffc88) # 1c005240 <OLED_Set_Pos>
1c0055bc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0055c0:	50004800 	b	72(0x48) # 1c005608 <OLED_ShowChar+0xe0>
1c0055c4:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c0055c8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055cc:	00408d8e 	slli.w	$r14,$r12,0x3
1c0055d0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0055d4:	001031cc 	add.w	$r12,$r14,$r12
1c0055d8:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0055dc:	029a41ce 	addi.w	$r14,$r14,1680(0x690)
1c0055e0:	004091ad 	slli.w	$r13,$r13,0x4
1c0055e4:	001035cd 	add.w	$r13,$r14,$r13
1c0055e8:	001031ac 	add.w	$r12,$r13,$r12
1c0055ec:	2a00018c 	ld.bu	$r12,$r12,0
1c0055f0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0055f4:	00150184 	move	$r4,$r12
1c0055f8:	57fbdfff 	bl	-1060(0xffffbdc) # 1c0051d4 <OLED_WR_Byte>
1c0055fc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005600:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005604:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005608:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c00560c:	0044858c 	srli.w	$r12,$r12,0x1
1c005610:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005614:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005618:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c0055c4 <OLED_ShowChar+0x9c>
1c00561c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005620:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005624:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005628:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c00562c:	00448d8c 	srli.w	$r12,$r12,0x3
1c005630:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005634:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005638:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c005594 <OLED_ShowChar+0x6c>
1c00563c:	03400000 	andi	$r0,$r0,0x0
1c005640:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005644:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005648:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00564c:	4c000020 	jirl	$r0,$r1,0

1c005650 <OLED_ShowInt32Num>:
OLED_ShowInt32Num():
1c005650:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c005654:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005658:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00565c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005660:	0015008c 	move	$r12,$r4
1c005664:	001500af 	move	$r15,$r5
1c005668:	29bf22c6 	st.w	$r6,$r22,-56(0xfc8)
1c00566c:	001500ee 	move	$r14,$r7
1c005670:	0015010d 	move	$r13,$r8
1c005674:	297f3acc 	st.h	$r12,$r22,-50(0xfce)
1c005678:	001501ec 	move	$r12,$r15
1c00567c:	297f32cc 	st.h	$r12,$r22,-52(0xfcc)
1c005680:	001501cc 	move	$r12,$r14
1c005684:	293f1ecc 	st.b	$r12,$r22,-57(0xfc7)
1c005688:	001501ac 	move	$r12,$r13
1c00568c:	293f1acc 	st.b	$r12,$r22,-58(0xfc6)
1c005690:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005694:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005698:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00569c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0056a0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0056a4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0056a8:	2a3f1ecd 	ld.bu	$r13,$r22,-57(0xfc7)
1c0056ac:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0056b0:	6800bd8d 	bltu	$r12,$r13,188(0xbc) # 1c00576c <OLED_ShowInt32Num+0x11c>
1c0056b4:	2a3f1ecc 	ld.bu	$r12,$r22,-57(0xfc7)
1c0056b8:	02bf92cd 	addi.w	$r13,$r22,-28(0xfe4)
1c0056bc:	00150186 	move	$r6,$r12
1c0056c0:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0056c4:	02bdb0a5 	addi.w	$r5,$r5,-148(0xf6c)
1c0056c8:	001501a4 	move	$r4,$r13
1c0056cc:	57ce5bff 	bl	-12712(0xfffce58) # 1c002524 <sprintf>
1c0056d0:	02bf92cd 	addi.w	$r13,$r22,-28(0xfe4)
1c0056d4:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c0056d8:	28bf22c6 	ld.w	$r6,$r22,-56(0xfc8)
1c0056dc:	001501a5 	move	$r5,$r13
1c0056e0:	00150184 	move	$r4,$r12
1c0056e4:	57ce43ff 	bl	-12736(0xfffce40) # 1c002524 <sprintf>
1c0056e8:	50006c00 	b	108(0x6c) # 1c005754 <OLED_ShowInt32Num+0x104>
1c0056ec:	2a3f1acc 	ld.bu	$r12,$r22,-58(0xfc6)
1c0056f0:	0044858c 	srli.w	$r12,$r12,0x1
1c0056f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056f8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0056fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005700:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005704:	001c31ac 	mul.w	$r12,$r13,$r12
1c005708:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00570c:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c005710:	001031ac 	add.w	$r12,$r13,$r12
1c005714:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005718:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00571c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005720:	001035cd 	add.w	$r13,$r14,$r13
1c005724:	283fa1ad 	ld.b	$r13,$r13,-24(0xfe8)
1c005728:	006781ae 	bstrpick.w	$r14,$r13,0x7,0x0
1c00572c:	2a3f1acf 	ld.bu	$r15,$r22,-58(0xfc6)
1c005730:	2a7f32cd 	ld.hu	$r13,$r22,-52(0xfcc)
1c005734:	001501e7 	move	$r7,$r15
1c005738:	001501c6 	move	$r6,$r14
1c00573c:	001501a5 	move	$r5,$r13
1c005740:	00150184 	move	$r4,$r12
1c005744:	57fde7ff 	bl	-540(0xffffde4) # 1c005528 <OLED_ShowChar>
1c005748:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00574c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005750:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005754:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005758:	02bf62cd 	addi.w	$r13,$r22,-40(0xfd8)
1c00575c:	001031ac 	add.w	$r12,$r13,$r12
1c005760:	2800018c 	ld.b	$r12,$r12,0
1c005764:	47ff899f 	bnez	$r12,-120(0x7fff88) # 1c0056ec <OLED_ShowInt32Num+0x9c>
1c005768:	50000800 	b	8(0x8) # 1c005770 <OLED_ShowInt32Num+0x120>
1c00576c:	03400000 	andi	$r0,$r0,0x0
1c005770:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005774:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005778:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00577c:	4c000020 	jirl	$r0,$r1,0

1c005780 <OLED_DrawFont16>:
OLED_DrawFont16():
1c005780:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005784:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005788:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00578c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005790:	0015008c 	move	$r12,$r4
1c005794:	001500ad 	move	$r13,$r5
1c005798:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c00579c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0057a0:	001501ac 	move	$r12,$r13
1c0057a4:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0057a8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0057ac:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0057b0:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0057b4:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c0057b8:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c0057bc:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0057c0:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0057c4:	50013800 	b	312(0x138) # 1c0058fc <OLED_DrawFont16+0x17c>
1c0057c8:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0057cc:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0057d0:	02aa31ad 	addi.w	$r13,$r13,-1396(0xa8c)
1c0057d4:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0057d8:	001c31cc 	mul.w	$r12,$r14,$r12
1c0057dc:	001031ac 	add.w	$r12,$r13,$r12
1c0057e0:	2a00018d 	ld.bu	$r13,$r12,0
1c0057e4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0057e8:	2a00018c 	ld.bu	$r12,$r12,0
1c0057ec:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c0058f0 <OLED_DrawFont16+0x170>
1c0057f0:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0057f4:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0057f8:	02a991ad 	addi.w	$r13,$r13,-1436(0xa64)
1c0057fc:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005800:	001c31cc 	mul.w	$r12,$r14,$r12
1c005804:	001031ac 	add.w	$r12,$r13,$r12
1c005808:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c00580c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005810:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005814:	2a00018c 	ld.bu	$r12,$r12,0
1c005818:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c0058f0 <OLED_DrawFont16+0x170>
1c00581c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005820:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005824:	02a8e1ad 	addi.w	$r13,$r13,-1480(0xa38)
1c005828:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00582c:	001c31cc 	mul.w	$r12,$r14,$r12
1c005830:	001031ac 	add.w	$r12,$r13,$r12
1c005834:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c005838:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00583c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005840:	2a00018c 	ld.bu	$r12,$r12,0
1c005844:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c0058f0 <OLED_DrawFont16+0x170>
1c005848:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00584c:	50009400 	b	148(0x94) # 1c0058e0 <OLED_DrawFont16+0x160>
1c005850:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005854:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005858:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00585c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005860:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005864:	001031ac 	add.w	$r12,$r13,$r12
1c005868:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00586c:	00150185 	move	$r5,$r12
1c005870:	001501c4 	move	$r4,$r14
1c005874:	57f9cfff 	bl	-1588(0xffff9cc) # 1c005240 <OLED_Set_Pos>
1c005878:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00587c:	50004c00 	b	76(0x4c) # 1c0058c8 <OLED_DrawFont16+0x148>
1c005880:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005884:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005888:	0040918d 	slli.w	$r13,$r12,0x4
1c00588c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005890:	001031ad 	add.w	$r13,$r13,$r12
1c005894:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c005898:	02a711ce 	addi.w	$r14,$r14,-1596(0x9c4)
1c00589c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0058a0:	001c31ec 	mul.w	$r12,$r15,$r12
1c0058a4:	001031cc 	add.w	$r12,$r14,$r12
1c0058a8:	0010358c 	add.w	$r12,$r12,$r13
1c0058ac:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0058b0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0058b4:	00150184 	move	$r4,$r12
1c0058b8:	57f91fff 	bl	-1764(0xffff91c) # 1c0051d4 <OLED_WR_Byte>
1c0058bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0058c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0058c8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0058cc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0058d0:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005880 <OLED_DrawFont16+0x100>
1c0058d4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0058d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058dc:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0058e0:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0058e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0058e8:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c005850 <OLED_DrawFont16+0xd0>
1c0058ec:	50001c00 	b	28(0x1c) # 1c005908 <OLED_DrawFont16+0x188>
1c0058f0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0058f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058f8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0058fc:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005900:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005904:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c0057c8 <OLED_DrawFont16+0x48>
1c005908:	03400000 	andi	$r0,$r0,0x0
1c00590c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005910:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005914:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005918:	4c000020 	jirl	$r0,$r1,0

1c00591c <OLED_DrawFont32>:
OLED_DrawFont32():
1c00591c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005920:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005924:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005928:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00592c:	0015008c 	move	$r12,$r4
1c005930:	001500ad 	move	$r13,$r5
1c005934:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005938:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00593c:	001501ac 	move	$r12,$r13
1c005940:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005944:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005948:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00594c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005950:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005954:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005958:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c00595c:	50014400 	b	324(0x144) # 1c005aa0 <OLED_DrawFont32+0x184>
1c005960:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005964:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005968:	02a3d1ad 	addi.w	$r13,$r13,-1804(0x8f4)
1c00596c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005970:	001c31cc 	mul.w	$r12,$r14,$r12
1c005974:	001031ac 	add.w	$r12,$r13,$r12
1c005978:	2a00018c 	ld.bu	$r12,$r12,0
1c00597c:	0015018d 	move	$r13,$r12
1c005980:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005984:	2800018c 	ld.b	$r12,$r12,0
1c005988:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c005a94 <OLED_DrawFont32+0x178>
1c00598c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005990:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005994:	02a321ad 	addi.w	$r13,$r13,-1848(0x8c8)
1c005998:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00599c:	001c31cc 	mul.w	$r12,$r14,$r12
1c0059a0:	001031ac 	add.w	$r12,$r13,$r12
1c0059a4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0059a8:	0015018d 	move	$r13,$r12
1c0059ac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0059b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059b4:	2800018c 	ld.b	$r12,$r12,0
1c0059b8:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c005a94 <OLED_DrawFont32+0x178>
1c0059bc:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0059c0:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0059c4:	02a261ad 	addi.w	$r13,$r13,-1896(0x898)
1c0059c8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0059cc:	001c31cc 	mul.w	$r12,$r14,$r12
1c0059d0:	001031ac 	add.w	$r12,$r13,$r12
1c0059d4:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0059d8:	0015018d 	move	$r13,$r12
1c0059dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0059e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059e4:	2800018c 	ld.b	$r12,$r12,0
1c0059e8:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005a94 <OLED_DrawFont32+0x178>
1c0059ec:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0059f0:	50009400 	b	148(0x94) # 1c005a84 <OLED_DrawFont32+0x168>
1c0059f4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0059f8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0059fc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005a00:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005a04:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005a08:	001031ac 	add.w	$r12,$r13,$r12
1c005a0c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a10:	00150185 	move	$r5,$r12
1c005a14:	001501c4 	move	$r4,$r14
1c005a18:	57f82bff 	bl	-2008(0xffff828) # 1c005240 <OLED_Set_Pos>
1c005a1c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005a20:	50004c00 	b	76(0x4c) # 1c005a6c <OLED_DrawFont32+0x150>
1c005a24:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005a28:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005a2c:	0040958d 	slli.w	$r13,$r12,0x5
1c005a30:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a34:	001031ad 	add.w	$r13,$r13,$r12
1c005a38:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c005a3c:	02afd1ce 	addi.w	$r14,$r14,-1036(0xbf4)
1c005a40:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c005a44:	001c31ec 	mul.w	$r12,$r15,$r12
1c005a48:	001031cc 	add.w	$r12,$r14,$r12
1c005a4c:	0010358c 	add.w	$r12,$r12,$r13
1c005a50:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005a54:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005a58:	00150184 	move	$r4,$r12
1c005a5c:	57f77bff 	bl	-2184(0xffff778) # 1c0051d4 <OLED_WR_Byte>
1c005a60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a68:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005a6c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005a70:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005a74:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005a24 <OLED_DrawFont32+0x108>
1c005a78:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005a7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a80:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005a84:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005a88:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005a8c:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c0059f4 <OLED_DrawFont32+0xd8>
1c005a90:	50001c00 	b	28(0x1c) # 1c005aac <OLED_DrawFont32+0x190>
1c005a94:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005a98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a9c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005aa0:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005aa4:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005aa8:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c005960 <OLED_DrawFont32+0x44>
1c005aac:	03400000 	andi	$r0,$r0,0x0
1c005ab0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005ab4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005ab8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005abc:	4c000020 	jirl	$r0,$r1,0

1c005ac0 <OLED_Show_Str>:
OLED_Show_Str():
1c005ac0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005ac4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005ac8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005acc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ad0:	0015008c 	move	$r12,$r4
1c005ad4:	001500ae 	move	$r14,$r5
1c005ad8:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005adc:	001500ed 	move	$r13,$r7
1c005ae0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005ae4:	001501cc 	move	$r12,$r14
1c005ae8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005aec:	001501ac 	move	$r12,$r13
1c005af0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005af4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005af8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005afc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b00:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005b04:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005b08:	580209ac 	beq	$r13,$r12,520(0x208) # 1c005d10 <OLED_Show_Str+0x250>
1c005b0c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005b10:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005b14:	5001fc00 	b	508(0x1fc) # 1c005d10 <OLED_Show_Str+0x250>
1c005b18:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005b1c:	44012580 	bnez	$r12,292(0x124) # 1c005c40 <OLED_Show_Str+0x180>
1c005b20:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005b24:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b28:	0044858c 	srli.w	$r12,$r12,0x1
1c005b2c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b30:	0015018e 	move	$r14,$r12
1c005b34:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005b38:	0011398c 	sub.w	$r12,$r12,$r14
1c005b3c:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005b68 <OLED_Show_Str+0xa8>
1c005b40:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005b44:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b48:	00448d8c 	srli.w	$r12,$r12,0x3
1c005b4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b50:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b54:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005b58:	001031ac 	add.w	$r12,$r13,$r12
1c005b5c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005b60:	03401d8c 	andi	$r12,$r12,0x7
1c005b64:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005b68:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005b6c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b70:	00448d8c 	srli.w	$r12,$r12,0x3
1c005b74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b78:	0015018e 	move	$r14,$r12
1c005b7c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005b80:	0011398c 	sub.w	$r12,$r12,$r14
1c005b84:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005b8c <OLED_Show_Str+0xcc>
1c005b88:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005b8c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b90:	2800018c 	ld.b	$r12,$r12,0
1c005b94:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005b98:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005b9c:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005bac <OLED_Show_Str+0xec>
1c005ba0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005ba4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005ba8:	50016800 	b	360(0x168) # 1c005d10 <OLED_Show_Str+0x250>
1c005bac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005bb0:	2800018d 	ld.b	$r13,$r12,0
1c005bb4:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c005bb8:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c005be8 <OLED_Show_Str+0x128>
1c005bbc:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005bc0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bc4:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005bc8:	001031ac 	add.w	$r12,$r13,$r12
1c005bcc:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005bd0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005bd4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005bd8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005bdc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005be0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005be4:	50004c00 	b	76(0x4c) # 1c005c30 <OLED_Show_Str+0x170>
1c005be8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005bec:	2800018c 	ld.b	$r12,$r12,0
1c005bf0:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005bf4:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c005bf8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005bfc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005c00:	001501e7 	move	$r7,$r15
1c005c04:	001501c6 	move	$r6,$r14
1c005c08:	001501a5 	move	$r5,$r13
1c005c0c:	00150184 	move	$r4,$r12
1c005c10:	57f91bff 	bl	-1768(0xffff918) # 1c005528 <OLED_ShowChar>
1c005c14:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005c18:	0044858c 	srli.w	$r12,$r12,0x1
1c005c1c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c20:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c24:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005c28:	001031ac 	add.w	$r12,$r13,$r12
1c005c2c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005c30:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005c34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c38:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005c3c:	5000d400 	b	212(0xd4) # 1c005d10 <OLED_Show_Str+0x250>
1c005c40:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005c44:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005c48:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c005c4c:	001131cc 	sub.w	$r12,$r14,$r12
1c005c50:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005c7c <OLED_Show_Str+0x1bc>
1c005c54:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005c58:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005c5c:	00448d8c 	srli.w	$r12,$r12,0x3
1c005c60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c64:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c68:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005c6c:	001031ac 	add.w	$r12,$r13,$r12
1c005c70:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c74:	03401d8c 	andi	$r12,$r12,0x7
1c005c78:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005c7c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005c80:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005c84:	00448d8c 	srli.w	$r12,$r12,0x3
1c005c88:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c8c:	0015018e 	move	$r14,$r12
1c005c90:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005c94:	0011398c 	sub.w	$r12,$r12,$r14
1c005c98:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005ca0 <OLED_Show_Str+0x1e0>
1c005c9c:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005ca0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ca4:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005ca8:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005cac:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005ccc <OLED_Show_Str+0x20c>
1c005cb0:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005cb4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005cb8:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005cbc:	001501a5 	move	$r5,$r13
1c005cc0:	00150184 	move	$r4,$r12
1c005cc4:	57fc5bff 	bl	-936(0xffffc58) # 1c00591c <OLED_DrawFont32>
1c005cc8:	50002800 	b	40(0x28) # 1c005cf0 <OLED_Show_Str+0x230>
1c005ccc:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005cd0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005cd4:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005cf0 <OLED_Show_Str+0x230>
1c005cd8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005cdc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005ce0:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005ce4:	001501a5 	move	$r5,$r13
1c005ce8:	00150184 	move	$r4,$r12
1c005cec:	57fa97ff 	bl	-1388(0xffffa94) # 1c005780 <OLED_DrawFont16>
1c005cf0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005cf4:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005cf8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005cfc:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005d00:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005d04:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005d08:	001031ac 	add.w	$r12,$r13,$r12
1c005d0c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005d10:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005d14:	2800018c 	ld.b	$r12,$r12,0
1c005d18:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c005b18 <OLED_Show_Str+0x58>
1c005d1c:	03400000 	andi	$r0,$r0,0x0
1c005d20:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005d24:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005d28:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005d2c:	4c000020 	jirl	$r0,$r1,0

1c005d30 <Cmd_Write_BH1750>:
Cmd_Write_BH1750():
1c005d30:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005d34:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005d38:	29806076 	st.w	$r22,$r3,24(0x18)
1c005d3c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005d40:	0015008c 	move	$r12,$r4
1c005d44:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005d48:	54039400 	bl	916(0x394) # 1c0060dc <MY_IIC_Start>
1c005d4c:	02811804 	addi.w	$r4,$r0,70(0x46)
1c005d50:	54059800 	bl	1432(0x598) # 1c0062e8 <MY_IIC_Send_Byte>
1c005d54:	03400000 	andi	$r0,$r0,0x0
1c005d58:	54044400 	bl	1092(0x444) # 1c00619c <MY_IIC_Wait_Ack>
1c005d5c:	0015008c 	move	$r12,$r4
1c005d60:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c005d58 <Cmd_Write_BH1750+0x28>
1c005d64:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005d68:	00150184 	move	$r4,$r12
1c005d6c:	54057c00 	bl	1404(0x57c) # 1c0062e8 <MY_IIC_Send_Byte>
1c005d70:	03400000 	andi	$r0,$r0,0x0
1c005d74:	54042800 	bl	1064(0x428) # 1c00619c <MY_IIC_Wait_Ack>
1c005d78:	0015008c 	move	$r12,$r4
1c005d7c:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c005d74 <Cmd_Write_BH1750+0x44>
1c005d80:	5403bc00 	bl	956(0x3bc) # 1c00613c <MY_IIC_Stop>
1c005d84:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005d88:	57d6f7ff 	bl	-10508(0xfffd6f4) # 1c00347c <delay_ms>
1c005d8c:	03400000 	andi	$r0,$r0,0x0
1c005d90:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005d94:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005d98:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005d9c:	4c000020 	jirl	$r0,$r1,0

1c005da0 <Start_BH1750>:
Start_BH1750():
1c005da0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005da4:	29803061 	st.w	$r1,$r3,12(0xc)
1c005da8:	29802076 	st.w	$r22,$r3,8(0x8)
1c005dac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005db0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005db4:	57ff7fff 	bl	-132(0xfffff7c) # 1c005d30 <Cmd_Write_BH1750>
1c005db8:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c005dbc:	57ff77ff 	bl	-140(0xfffff74) # 1c005d30 <Cmd_Write_BH1750>
1c005dc0:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005dc4:	57ff6fff 	bl	-148(0xfffff6c) # 1c005d30 <Cmd_Write_BH1750>
1c005dc8:	03400000 	andi	$r0,$r0,0x0
1c005dcc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005dd0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005dd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005dd8:	4c000020 	jirl	$r0,$r1,0

1c005ddc <Read_BH1750>:
Read_BH1750():
1c005ddc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005de0:	29803061 	st.w	$r1,$r3,12(0xc)
1c005de4:	29802076 	st.w	$r22,$r3,8(0x8)
1c005de8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005dec:	5402f000 	bl	752(0x2f0) # 1c0060dc <MY_IIC_Start>
1c005df0:	02811c04 	addi.w	$r4,$r0,71(0x47)
1c005df4:	5404f400 	bl	1268(0x4f4) # 1c0062e8 <MY_IIC_Send_Byte>
1c005df8:	03400000 	andi	$r0,$r0,0x0
1c005dfc:	5403a000 	bl	928(0x3a0) # 1c00619c <MY_IIC_Wait_Ack>
1c005e00:	0015008c 	move	$r12,$r4
1c005e04:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c005dfc <Read_BH1750+0x20>
1c005e08:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005e0c:	54058c00 	bl	1420(0x58c) # 1c006398 <MY_IIC_Read_Byte>
1c005e10:	0015008c 	move	$r12,$r4
1c005e14:	0015018d 	move	$r13,$r12
1c005e18:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e1c:	2887f18c 	ld.w	$r12,$r12,508(0x1fc)
1c005e20:	2900018d 	st.b	$r13,$r12,0
1c005e24:	00150004 	move	$r4,$r0
1c005e28:	54057000 	bl	1392(0x570) # 1c006398 <MY_IIC_Read_Byte>
1c005e2c:	0015008c 	move	$r12,$r4
1c005e30:	0015018d 	move	$r13,$r12
1c005e34:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e38:	2887818c 	ld.w	$r12,$r12,480(0x1e0)
1c005e3c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c005e40:	5402fc00 	bl	764(0x2fc) # 1c00613c <MY_IIC_Stop>
1c005e44:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005e48:	57d637ff 	bl	-10700(0xfffd634) # 1c00347c <delay_ms>
1c005e4c:	03400000 	andi	$r0,$r0,0x0
1c005e50:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005e54:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005e58:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005e5c:	4c000020 	jirl	$r0,$r1,0

1c005e60 <Convert_BH1750>:
Convert_BH1750():
1c005e60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005e64:	29803076 	st.w	$r22,$r3,12(0xc)
1c005e68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005e6c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e70:	2886a18c 	ld.w	$r12,$r12,424(0x1a8)
1c005e74:	2a00018c 	ld.bu	$r12,$r12,0
1c005e78:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005e7c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e80:	0286118c 	addi.w	$r12,$r12,388(0x184)
1c005e84:	2940018d 	st.h	$r13,$r12,0
1c005e88:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e8c:	0285e18c 	addi.w	$r12,$r12,376(0x178)
1c005e90:	2a40018c 	ld.hu	$r12,$r12,0
1c005e94:	0040a18c 	slli.w	$r12,$r12,0x8
1c005e98:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005e9c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ea0:	2885e18c 	ld.w	$r12,$r12,376(0x178)
1c005ea4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005ea8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005eac:	001031ac 	add.w	$r12,$r13,$r12
1c005eb0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005eb4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005eb8:	0285318c 	addi.w	$r12,$r12,332(0x14c)
1c005ebc:	2940018d 	st.h	$r13,$r12,0
1c005ec0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ec4:	0285018c 	addi.w	$r12,$r12,320(0x140)
1c005ec8:	2a40018d 	ld.hu	$r13,$r12,0
1c005ecc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005ed0:	002131ae 	div.wu	$r14,$r13,$r12
1c005ed4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005edc <Convert_BH1750+0x7c>
1c005ed8:	002a0007 	break	0x7
1c005edc:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005ee0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ee4:	0284818c 	addi.w	$r12,$r12,288(0x120)
1c005ee8:	2940018d 	st.h	$r13,$r12,0
1c005eec:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ef0:	0284518c 	addi.w	$r12,$r12,276(0x114)
1c005ef4:	2a40018d 	ld.hu	$r13,$r12,0
1c005ef8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005efc:	001c31ac 	mul.w	$r12,$r13,$r12
1c005f00:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005f04:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f08:	0283f18c 	addi.w	$r12,$r12,252(0xfc)
1c005f0c:	2940018d 	st.h	$r13,$r12,0
1c005f10:	03400000 	andi	$r0,$r0,0x0
1c005f14:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005f18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005f1c:	4c000020 	jirl	$r0,$r1,0

1c005f20 <BH1750_Hardware_Init>:
BH1750_Hardware_Init():
1c005f20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005f24:	29803061 	st.w	$r1,$r3,12(0xc)
1c005f28:	29802076 	st.w	$r22,$r3,8(0x8)
1c005f2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005f30:	5400d400 	bl	212(0xd4) # 1c006004 <MY_IIC_Init>
1c005f34:	03400000 	andi	$r0,$r0,0x0
1c005f38:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005f3c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005f40:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005f44:	4c000020 	jirl	$r0,$r1,0

1c005f48 <BH1750_Software_Init>:
BH1750_Software_Init():
1c005f48:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005f4c:	29803076 	st.w	$r22,$r3,12(0xc)
1c005f50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005f54:	03400000 	andi	$r0,$r0,0x0
1c005f58:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005f5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005f60:	4c000020 	jirl	$r0,$r1,0

1c005f64 <BH1750_Init>:
BH1750_Init():
1c005f64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005f68:	29803061 	st.w	$r1,$r3,12(0xc)
1c005f6c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005f70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005f74:	57ffafff 	bl	-84(0xfffffac) # 1c005f20 <BH1750_Hardware_Init>
1c005f78:	57ffd3ff 	bl	-48(0xfffffd0) # 1c005f48 <BH1750_Software_Init>
1c005f7c:	03400000 	andi	$r0,$r0,0x0
1c005f80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005f84:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005f88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005f8c:	4c000020 	jirl	$r0,$r1,0

1c005f90 <BH1750_Test>:
BH1750_Test():
1c005f90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005f94:	29803061 	st.w	$r1,$r3,12(0xc)
1c005f98:	29802076 	st.w	$r22,$r3,8(0x8)
1c005f9c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005fa0:	57fe03ff 	bl	-512(0xffffe00) # 1c005da0 <Start_BH1750>
1c005fa4:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005fa8:	57d4d7ff 	bl	-11052(0xfffd4d4) # 1c00347c <delay_ms>
1c005fac:	57fe33ff 	bl	-464(0xffffe30) # 1c005ddc <Read_BH1750>
1c005fb0:	57feb3ff 	bl	-336(0xffffeb0) # 1c005e60 <Convert_BH1750>
1c005fb4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005fb8:	0281318c 	addi.w	$r12,$r12,76(0x4c)
1c005fbc:	2a40018c 	ld.hu	$r12,$r12,0
1c005fc0:	00150186 	move	$r6,$r12
1c005fc4:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005fc8:	0299c0a5 	addi.w	$r5,$r5,1648(0x670)
1c005fcc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005fd0:	28811084 	ld.w	$r4,$r4,68(0x44)
1c005fd4:	57c553ff 	bl	-15024(0xfffc550) # 1c002524 <sprintf>
1c005fd8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005fdc:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c005fe0:	2880d0c6 	ld.w	$r6,$r6,52(0x34)
1c005fe4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005fe8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005fec:	57fad7ff 	bl	-1324(0xffffad4) # 1c005ac0 <OLED_Show_Str>
1c005ff0:	03400000 	andi	$r0,$r0,0x0
1c005ff4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005ff8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005ffc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006000:	4c000020 	jirl	$r0,$r1,0

1c006004 <MY_IIC_Init>:
MY_IIC_Init():
1c006004:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006008:	29803061 	st.w	$r1,$r3,12(0xc)
1c00600c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006010:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006014:	00150005 	move	$r5,$r0
1c006018:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c00601c:	57b63bff 	bl	-18888(0xfffb638) # 1c001654 <gpio_pin_remap>
1c006020:	00150005 	move	$r5,$r0
1c006024:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006028:	57b62fff 	bl	-18900(0xfffb62c) # 1c001654 <gpio_pin_remap>
1c00602c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006030:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c006034:	57b82fff 	bl	-18388(0xfffb82c) # 1c001860 <gpio_set_direction>
1c006038:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00603c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006040:	57b823ff 	bl	-18400(0xfffb820) # 1c001860 <gpio_set_direction>
1c006044:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006048:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c00604c:	57b593ff 	bl	-19056(0xfffb590) # 1c0015dc <gpio_write_pin>
1c006050:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006054:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006058:	57b587ff 	bl	-19068(0xfffb584) # 1c0015dc <gpio_write_pin>
1c00605c:	03400000 	andi	$r0,$r0,0x0
1c006060:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006064:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006068:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00606c:	4c000020 	jirl	$r0,$r1,0

1c006070 <MY_SDA_IN>:
MY_SDA_IN():
1c006070:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006074:	29803061 	st.w	$r1,$r3,12(0xc)
1c006078:	29802076 	st.w	$r22,$r3,8(0x8)
1c00607c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006080:	00150005 	move	$r5,$r0
1c006084:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006088:	57b7dbff 	bl	-18472(0xfffb7d8) # 1c001860 <gpio_set_direction>
1c00608c:	03400000 	andi	$r0,$r0,0x0
1c006090:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006094:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006098:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00609c:	4c000020 	jirl	$r0,$r1,0

1c0060a0 <MY_SDA_OUT>:
MY_SDA_OUT():
1c0060a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0060a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0060ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060b0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060b4:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0060b8:	57b7abff 	bl	-18520(0xfffb7a8) # 1c001860 <gpio_set_direction>
1c0060bc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060c0:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0060c4:	57b51bff 	bl	-19176(0xfffb518) # 1c0015dc <gpio_write_pin>
1c0060c8:	03400000 	andi	$r0,$r0,0x0
1c0060cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060d8:	4c000020 	jirl	$r0,$r1,0

1c0060dc <MY_IIC_Start>:
MY_IIC_Start():
1c0060dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0060e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0060e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060ec:	57ffb7ff 	bl	-76(0xfffffb4) # 1c0060a0 <MY_SDA_OUT>
1c0060f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060f4:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0060f8:	57b4e7ff 	bl	-19228(0xfffb4e4) # 1c0015dc <gpio_write_pin>
1c0060fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006100:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c006104:	57b4dbff 	bl	-19240(0xfffb4d8) # 1c0015dc <gpio_write_pin>
1c006108:	57e7bbff 	bl	-6216(0xfffe7b8) # 1c0048c0 <IIC_Delay>
1c00610c:	00150005 	move	$r5,$r0
1c006110:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006114:	57b4cbff 	bl	-19256(0xfffb4c8) # 1c0015dc <gpio_write_pin>
1c006118:	57e7abff 	bl	-6232(0xfffe7a8) # 1c0048c0 <IIC_Delay>
1c00611c:	00150005 	move	$r5,$r0
1c006120:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c006124:	57b4bbff 	bl	-19272(0xfffb4b8) # 1c0015dc <gpio_write_pin>
1c006128:	03400000 	andi	$r0,$r0,0x0
1c00612c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006130:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006134:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006138:	4c000020 	jirl	$r0,$r1,0

1c00613c <MY_IIC_Stop>:
MY_IIC_Stop():
1c00613c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006140:	29803061 	st.w	$r1,$r3,12(0xc)
1c006144:	29802076 	st.w	$r22,$r3,8(0x8)
1c006148:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00614c:	57ff57ff 	bl	-172(0xfffff54) # 1c0060a0 <MY_SDA_OUT>
1c006150:	00150005 	move	$r5,$r0
1c006154:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c006158:	57b487ff 	bl	-19324(0xfffb484) # 1c0015dc <gpio_write_pin>
1c00615c:	00150005 	move	$r5,$r0
1c006160:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006164:	57b47bff 	bl	-19336(0xfffb478) # 1c0015dc <gpio_write_pin>
1c006168:	57e75bff 	bl	-6312(0xfffe758) # 1c0048c0 <IIC_Delay>
1c00616c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006170:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c006174:	57b46bff 	bl	-19352(0xfffb468) # 1c0015dc <gpio_write_pin>
1c006178:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00617c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006180:	57b45fff 	bl	-19364(0xfffb45c) # 1c0015dc <gpio_write_pin>
1c006184:	57e73fff 	bl	-6340(0xfffe73c) # 1c0048c0 <IIC_Delay>
1c006188:	03400000 	andi	$r0,$r0,0x0
1c00618c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006190:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006194:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006198:	4c000020 	jirl	$r0,$r1,0

1c00619c <MY_IIC_Wait_Ack>:
MY_IIC_Wait_Ack():
1c00619c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0061a0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0061a4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0061a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0061ac:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c0061b0:	57fec3ff 	bl	-320(0xffffec0) # 1c006070 <MY_SDA_IN>
1c0061b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0061b8:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0061bc:	57b423ff 	bl	-19424(0xfffb420) # 1c0015dc <gpio_write_pin>
1c0061c0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0061c4:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0061c8:	57b417ff 	bl	-19436(0xfffb414) # 1c0015dc <gpio_write_pin>
1c0061cc:	50002800 	b	40(0x28) # 1c0061f4 <MY_IIC_Wait_Ack+0x58>
1c0061d0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0061d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0061d8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0061dc:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0061e0:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c0061e4:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0061f4 <MY_IIC_Wait_Ack+0x58>
1c0061e8:	57ff57ff 	bl	-172(0xfffff54) # 1c00613c <MY_IIC_Stop>
1c0061ec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0061f0:	50002400 	b	36(0x24) # 1c006214 <MY_IIC_Wait_Ack+0x78>
1c0061f4:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0061f8:	57b397ff 	bl	-19564(0xfffb394) # 1c00158c <gpio_get_pin>
1c0061fc:	0015008c 	move	$r12,$r4
1c006200:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c0061d0 <MY_IIC_Wait_Ack+0x34>
1c006204:	00150005 	move	$r5,$r0
1c006208:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c00620c:	57b3d3ff 	bl	-19504(0xfffb3d0) # 1c0015dc <gpio_write_pin>
1c006210:	0015000c 	move	$r12,$r0
1c006214:	00150184 	move	$r4,$r12
1c006218:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00621c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006220:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006224:	4c000020 	jirl	$r0,$r1,0

1c006228 <MY_IIC_Ack>:
MY_IIC_Ack():
1c006228:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00622c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006230:	29802076 	st.w	$r22,$r3,8(0x8)
1c006234:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006238:	00150005 	move	$r5,$r0
1c00623c:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c006240:	57b39fff 	bl	-19556(0xfffb39c) # 1c0015dc <gpio_write_pin>
1c006244:	57fe5fff 	bl	-420(0xffffe5c) # 1c0060a0 <MY_SDA_OUT>
1c006248:	00150005 	move	$r5,$r0
1c00624c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006250:	57b38fff 	bl	-19572(0xfffb38c) # 1c0015dc <gpio_write_pin>
1c006254:	57e66fff 	bl	-6548(0xfffe66c) # 1c0048c0 <IIC_Delay>
1c006258:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00625c:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c006260:	57b37fff 	bl	-19588(0xfffb37c) # 1c0015dc <gpio_write_pin>
1c006264:	57e65fff 	bl	-6564(0xfffe65c) # 1c0048c0 <IIC_Delay>
1c006268:	00150005 	move	$r5,$r0
1c00626c:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c006270:	57b36fff 	bl	-19604(0xfffb36c) # 1c0015dc <gpio_write_pin>
1c006274:	03400000 	andi	$r0,$r0,0x0
1c006278:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00627c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006280:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006284:	4c000020 	jirl	$r0,$r1,0

1c006288 <MY_IIC_NAck>:
MY_IIC_NAck():
1c006288:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00628c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006290:	29802076 	st.w	$r22,$r3,8(0x8)
1c006294:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006298:	00150005 	move	$r5,$r0
1c00629c:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0062a0:	57b33fff 	bl	-19652(0xfffb33c) # 1c0015dc <gpio_write_pin>
1c0062a4:	57fdffff 	bl	-516(0xffffdfc) # 1c0060a0 <MY_SDA_OUT>
1c0062a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0062ac:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0062b0:	57b32fff 	bl	-19668(0xfffb32c) # 1c0015dc <gpio_write_pin>
1c0062b4:	57e60fff 	bl	-6644(0xfffe60c) # 1c0048c0 <IIC_Delay>
1c0062b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0062bc:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0062c0:	57b31fff 	bl	-19684(0xfffb31c) # 1c0015dc <gpio_write_pin>
1c0062c4:	57e5ffff 	bl	-6660(0xfffe5fc) # 1c0048c0 <IIC_Delay>
1c0062c8:	00150005 	move	$r5,$r0
1c0062cc:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0062d0:	57b30fff 	bl	-19700(0xfffb30c) # 1c0015dc <gpio_write_pin>
1c0062d4:	03400000 	andi	$r0,$r0,0x0
1c0062d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0062dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0062e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0062e4:	4c000020 	jirl	$r0,$r1,0

1c0062e8 <MY_IIC_Send_Byte>:
MY_IIC_Send_Byte():
1c0062e8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0062ec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0062f0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0062f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0062f8:	0015008c 	move	$r12,$r4
1c0062fc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006300:	57fda3ff 	bl	-608(0xffffda0) # 1c0060a0 <MY_SDA_OUT>
1c006304:	00150005 	move	$r5,$r0
1c006308:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c00630c:	57b2d3ff 	bl	-19760(0xfffb2d0) # 1c0015dc <gpio_write_pin>
1c006310:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006314:	50006400 	b	100(0x64) # 1c006378 <MY_IIC_Send_Byte+0x90>
1c006318:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c00631c:	64001580 	bge	$r12,$r0,20(0x14) # 1c006330 <MY_IIC_Send_Byte+0x48>
1c006320:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006324:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006328:	57b2b7ff 	bl	-19788(0xfffb2b4) # 1c0015dc <gpio_write_pin>
1c00632c:	50001000 	b	16(0x10) # 1c00633c <MY_IIC_Send_Byte+0x54>
1c006330:	00150005 	move	$r5,$r0
1c006334:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006338:	57b2a7ff 	bl	-19804(0xfffb2a4) # 1c0015dc <gpio_write_pin>
1c00633c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006340:	0040858c 	slli.w	$r12,$r12,0x1
1c006344:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006348:	57e57bff 	bl	-6792(0xfffe578) # 1c0048c0 <IIC_Delay>
1c00634c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006350:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c006354:	57b28bff 	bl	-19832(0xfffb288) # 1c0015dc <gpio_write_pin>
1c006358:	57e56bff 	bl	-6808(0xfffe568) # 1c0048c0 <IIC_Delay>
1c00635c:	00150005 	move	$r5,$r0
1c006360:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c006364:	57b27bff 	bl	-19848(0xfffb278) # 1c0015dc <gpio_write_pin>
1c006368:	57e55bff 	bl	-6824(0xfffe558) # 1c0048c0 <IIC_Delay>
1c00636c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006370:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006374:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006378:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00637c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006380:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c006318 <MY_IIC_Send_Byte+0x30>
1c006384:	03400000 	andi	$r0,$r0,0x0
1c006388:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00638c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006390:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006394:	4c000020 	jirl	$r0,$r1,0

1c006398 <MY_IIC_Read_Byte>:
MY_IIC_Read_Byte():
1c006398:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00639c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0063a0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0063a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0063a8:	0015008c 	move	$r12,$r4
1c0063ac:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0063b0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0063b4:	57fcbfff 	bl	-836(0xffffcbc) # 1c006070 <MY_SDA_IN>
1c0063b8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0063bc:	50005800 	b	88(0x58) # 1c006414 <MY_IIC_Read_Byte+0x7c>
1c0063c0:	00150005 	move	$r5,$r0
1c0063c4:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0063c8:	57b217ff 	bl	-19948(0xfffb214) # 1c0015dc <gpio_write_pin>
1c0063cc:	57e4f7ff 	bl	-6924(0xfffe4f4) # 1c0048c0 <IIC_Delay>
1c0063d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0063d4:	0280f404 	addi.w	$r4,$r0,61(0x3d)
1c0063d8:	57b207ff 	bl	-19964(0xfffb204) # 1c0015dc <gpio_write_pin>
1c0063dc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0063e0:	0040858c 	slli.w	$r12,$r12,0x1
1c0063e4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0063e8:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c0063ec:	57b1a3ff 	bl	-20064(0xfffb1a0) # 1c00158c <gpio_get_pin>
1c0063f0:	0015008c 	move	$r12,$r4
1c0063f4:	40001180 	beqz	$r12,16(0x10) # 1c006404 <MY_IIC_Read_Byte+0x6c>
1c0063f8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0063fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006400:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006404:	57e4bfff 	bl	-6980(0xfffe4bc) # 1c0048c0 <IIC_Delay>
1c006408:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00640c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006410:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006414:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006418:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00641c:	6fffa58d 	bgeu	$r12,$r13,-92(0x3ffa4) # 1c0063c0 <MY_IIC_Read_Byte+0x28>
1c006420:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006424:	44000d80 	bnez	$r12,12(0xc) # 1c006430 <MY_IIC_Read_Byte+0x98>
1c006428:	57fe63ff 	bl	-416(0xffffe60) # 1c006288 <MY_IIC_NAck>
1c00642c:	50000800 	b	8(0x8) # 1c006434 <MY_IIC_Read_Byte+0x9c>
1c006430:	57fdfbff 	bl	-520(0xffffdf8) # 1c006228 <MY_IIC_Ack>
1c006434:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006438:	00150184 	move	$r4,$r12
1c00643c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006440:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006444:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006448:	4c000020 	jirl	$r0,$r1,0

1c00644c <main>:
main():
1c00644c:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c006450:	29813061 	st.w	$r1,$r3,76(0x4c)
1c006454:	29812076 	st.w	$r22,$r3,72(0x48)
1c006458:	02814076 	addi.w	$r22,$r3,80(0x50)
1c00645c:	29bef2c4 	st.w	$r4,$r22,-68(0xfbc)
1c006460:	29bee2c5 	st.w	$r5,$r22,-72(0xfb8)
1c006464:	297f5ac0 	st.h	$r0,$r22,-42(0xfd6)
1c006468:	297f52c0 	st.h	$r0,$r22,-44(0xfd4)
1c00646c:	0280840c 	addi.w	$r12,$r0,33(0x21)
1c006470:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006474:	0280780c 	addi.w	$r12,$r0,30(0x1e)
1c006478:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00647c:	0280840c 	addi.w	$r12,$r0,33(0x21)
1c006480:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c006484:	0280780c 	addi.w	$r12,$r0,30(0x1e)
1c006488:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c00648c:	0280c80c 	addi.w	$r12,$r0,50(0x32)
1c006490:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c006494:	29bf42c0 	st.w	$r0,$r22,-48(0xfd0)
1c006498:	29bf32c0 	st.w	$r0,$r22,-52(0xfcc)
1c00649c:	29bf22c0 	st.w	$r0,$r22,-56(0xfc8)
1c0064a0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0064a4:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0064a8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0064ac:	57caf3ff 	bl	-13584(0xfffcaf0) # 1c002f9c <SystemClockInit>
1c0064b0:	57ae7fff 	bl	-20868(0xfffae7c) # 1c00132c <GPIOInit>
1c0064b4:	57eeb3ff 	bl	-4432(0xfffeeb0) # 1c005364 <OLED_Init>
1c0064b8:	57eaa7ff 	bl	-5468(0xfffeaa4) # 1c004f5c <DHT11_Init>
1c0064bc:	57faabff 	bl	-1368(0xffffaa8) # 1c005f64 <BH1750_Init>
1c0064c0:	57eadfff 	bl	-5412(0xfffeadc) # 1c004f9c <LED_Init>
1c0064c4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0064c8:	57eb6fff 	bl	-5268(0xfffeb6c) # 1c005034 <LED_Off>
1c0064cc:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c0064d0:	57eb67ff 	bl	-5276(0xfffeb64) # 1c005034 <LED_Off>
1c0064d4:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c0064d8:	57eb5fff 	bl	-5284(0xfffeb5c) # 1c005034 <LED_Off>
1c0064dc:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c0064e0:	57eb57ff 	bl	-5292(0xfffeb54) # 1c005034 <LED_Off>
1c0064e4:	57eb8fff 	bl	-5236(0xfffeb8c) # 1c005070 <KEY_init>
1c0064e8:	57cb73ff 	bl	-13456(0xfffcb70) # 1c003058 <EnableInt>
1c0064ec:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c0064f0:	02bf5acc 	addi.w	$r12,$r22,-42(0xfd6)
1c0064f4:	001501a5 	move	$r5,$r13
1c0064f8:	00150184 	move	$r4,$r12
1c0064fc:	57e957ff 	bl	-5804(0xfffe954) # 1c004e50 <DHT11_Read_Data>
1c006500:	02bf22ce 	addi.w	$r14,$r22,-56(0xfc8)
1c006504:	02bf32cd 	addi.w	$r13,$r22,-52(0xfcc)
1c006508:	02bf42cc 	addi.w	$r12,$r22,-48(0xfd0)
1c00650c:	001501c6 	move	$r6,$r14
1c006510:	001501a5 	move	$r5,$r13
1c006514:	00150184 	move	$r4,$r12
1c006518:	540a5400 	bl	2644(0xa54) # 1c006f6c <KEY_CONTROL>
1c00651c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006520:	44004d80 	bnez	$r12,76(0x4c) # 1c00656c <main+0x120>
1c006524:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c006528:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00652c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c00653c <main+0xf0>
1c006530:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006534:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006538:	50004400 	b	68(0x44) # 1c00657c <main+0x130>
1c00653c:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c006540:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006544:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006554 <main+0x108>
1c006548:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00654c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006550:	50002c00 	b	44(0x2c) # 1c00657c <main+0x130>
1c006554:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c006558:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00655c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00657c <main+0x130>
1c006560:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006564:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006568:	50001400 	b	20(0x14) # 1c00657c <main+0x130>
1c00656c:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c006570:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006574:	5c0009ac 	bne	$r13,$r12,8(0x8) # 1c00657c <main+0x130>
1c006578:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c00657c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006580:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006584:	58002dac 	beq	$r13,$r12,44(0x2c) # 1c0065b0 <main+0x164>
1c006588:	57eddfff 	bl	-4644(0xfffeddc) # 1c005364 <OLED_Init>
1c00658c:	00150005 	move	$r5,$r0
1c006590:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006594:	57b04bff 	bl	-20408(0xfffb048) # 1c0015dc <gpio_write_pin>
1c006598:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00659c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0065a0:	29bf42c0 	st.w	$r0,$r22,-48(0xfd0)
1c0065a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065a8:	02a9818c 	addi.w	$r12,$r12,-1440(0xa60)
1c0065ac:	29800180 	st.w	$r0,$r12,0
1c0065b0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0065b4:	44006580 	bnez	$r12,100(0x64) # 1c006618 <main+0x1cc>
1c0065b8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0065bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0065c0:	028210c6 	addi.w	$r6,$r6,132(0x84)
1c0065c4:	00150005 	move	$r5,$r0
1c0065c8:	00150004 	move	$r4,$r0
1c0065cc:	57f4f7ff 	bl	-2828(0xffff4f4) # 1c005ac0 <OLED_Show_Str>
1c0065d0:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0065d4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0065d8:	0281f0c6 	addi.w	$r6,$r6,124(0x7c)
1c0065dc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0065e0:	00150004 	move	$r4,$r0
1c0065e4:	57f4dfff 	bl	-2852(0xffff4dc) # 1c005ac0 <OLED_Show_Str>
1c0065e8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0065ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0065f0:	0281d0c6 	addi.w	$r6,$r6,116(0x74)
1c0065f4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0065f8:	00150004 	move	$r4,$r0
1c0065fc:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c005ac0 <OLED_Show_Str>
1c006600:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006604:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006608:	0281b0c6 	addi.w	$r6,$r6,108(0x6c)
1c00660c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006610:	00150004 	move	$r4,$r0
1c006614:	57f4afff 	bl	-2900(0xffff4ac) # 1c005ac0 <OLED_Show_Str>
1c006618:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c00661c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006620:	5c0221ac 	bne	$r13,$r12,544(0x220) # 1c006840 <main+0x3f4>
1c006624:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006628:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00662c:	028180c6 	addi.w	$r6,$r6,96(0x60)
1c006630:	00150005 	move	$r5,$r0
1c006634:	00150004 	move	$r4,$r0
1c006638:	57f48bff 	bl	-2936(0xffff488) # 1c005ac0 <OLED_Show_Str>
1c00663c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006640:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006644:	028140c6 	addi.w	$r6,$r6,80(0x50)
1c006648:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00664c:	00150004 	move	$r4,$r0
1c006650:	57f473ff 	bl	-2960(0xffff470) # 1c005ac0 <OLED_Show_Str>
1c006654:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006658:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00665c:	028100c6 	addi.w	$r6,$r6,64(0x40)
1c006660:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006664:	00150004 	move	$r4,$r0
1c006668:	57f45bff 	bl	-2984(0xffff458) # 1c005ac0 <OLED_Show_Str>
1c00666c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006670:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006674:	0280c0c6 	addi.w	$r6,$r6,48(0x30)
1c006678:	00150005 	move	$r5,$r0
1c00667c:	02810404 	addi.w	$r4,$r0,65(0x41)
1c006680:	57f443ff 	bl	-3008(0xffff440) # 1c005ac0 <OLED_Show_Str>
1c006684:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006688:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00668c:	028070c6 	addi.w	$r6,$r6,28(0x1c)
1c006690:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006694:	02810404 	addi.w	$r4,$r0,65(0x41)
1c006698:	57f42bff 	bl	-3032(0xffff428) # 1c005ac0 <OLED_Show_Str>
1c00669c:	2a7f5acd 	ld.hu	$r13,$r22,-42(0xfd6)
1c0066a0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0066a4:	002131ae 	div.wu	$r14,$r13,$r12
1c0066a8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0066b0 <main+0x264>
1c0066ac:	002a0007 	break	0x7
1c0066b0:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0066b4:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0066b8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0066bc:	00150186 	move	$r6,$r12
1c0066c0:	00150005 	move	$r5,$r0
1c0066c4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0066c8:	57ef8bff 	bl	-4216(0xfffef88) # 1c005650 <OLED_ShowInt32Num>
1c0066cc:	2a7f52cd 	ld.hu	$r13,$r22,-44(0xfd4)
1c0066d0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0066d4:	002131ae 	div.wu	$r14,$r13,$r12
1c0066d8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0066e0 <main+0x294>
1c0066dc:	002a0007 	break	0x7
1c0066e0:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0066e4:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0066e8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0066ec:	00150186 	move	$r6,$r12
1c0066f0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0066f4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0066f8:	57ef5bff 	bl	-4264(0xfffef58) # 1c005650 <OLED_ShowInt32Num>
1c0066fc:	57f897ff 	bl	-1900(0xffff894) # 1c005f90 <BH1750_Test>
1c006700:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006704:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006708:	02be90c6 	addi.w	$r6,$r6,-92(0xfa4)
1c00670c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006710:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006714:	57f3afff 	bl	-3156(0xffff3ac) # 1c005ac0 <OLED_Show_Str>
1c006718:	2a7f5acd 	ld.hu	$r13,$r22,-42(0xfd6)
1c00671c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006720:	002131ae 	div.wu	$r14,$r13,$r12
1c006724:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00672c <main+0x2e0>
1c006728:	002a0007 	break	0x7
1c00672c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006730:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c006734:	6800398d 	bltu	$r12,$r13,56(0x38) # 1c00676c <main+0x320>
1c006738:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00673c:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006740:	57ae9fff 	bl	-20836(0xfffae9c) # 1c0015dc <gpio_write_pin>
1c006744:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006748:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00674c:	02bdc0c6 	addi.w	$r6,$r6,-144(0xf70)
1c006750:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006754:	02814004 	addi.w	$r4,$r0,80(0x50)
1c006758:	57f36bff 	bl	-3224(0xffff368) # 1c005ac0 <OLED_Show_Str>
1c00675c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006760:	02a2a18c 	addi.w	$r12,$r12,-1880(0x8a8)
1c006764:	29800180 	st.w	$r0,$r12,0
1c006768:	5000d800 	b	216(0xd8) # 1c006840 <main+0x3f4>
1c00676c:	2a7f52cd 	ld.hu	$r13,$r22,-44(0xfd4)
1c006770:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006774:	002131ae 	div.wu	$r14,$r13,$r12
1c006778:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006780 <main+0x334>
1c00677c:	002a0007 	break	0x7
1c006780:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006784:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c006788:	6c00898d 	bgeu	$r12,$r13,136(0x88) # 1c006810 <main+0x3c4>
1c00678c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006790:	02a1e18c 	addi.w	$r12,$r12,-1928(0x878)
1c006794:	2880018c 	ld.w	$r12,$r12,0
1c006798:	44005180 	bnez	$r12,80(0x50) # 1c0067e8 <main+0x39c>
1c00679c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0067a0:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0067a4:	57ae3bff 	bl	-20936(0xfffae38) # 1c0015dc <gpio_write_pin>
1c0067a8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0067ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0067b0:	02bc50c6 	addi.w	$r6,$r6,-236(0xf14)
1c0067b4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0067b8:	02814004 	addi.w	$r4,$r0,80(0x50)
1c0067bc:	57f307ff 	bl	-3324(0xffff304) # 1c005ac0 <OLED_Show_Str>
1c0067c0:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0067c4:	57ccbbff 	bl	-13128(0xfffccb8) # 1c00347c <delay_ms>
1c0067c8:	00150005 	move	$r5,$r0
1c0067cc:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0067d0:	57ae0fff 	bl	-20980(0xfffae0c) # 1c0015dc <gpio_write_pin>
1c0067d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0067d8:	02a0c18c 	addi.w	$r12,$r12,-2000(0x830)
1c0067dc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0067e0:	2980018d 	st.w	$r13,$r12,0
1c0067e4:	50005c00 	b	92(0x5c) # 1c006840 <main+0x3f4>
1c0067e8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0067ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0067f0:	02bb50c6 	addi.w	$r6,$r6,-300(0xed4)
1c0067f4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0067f8:	02814004 	addi.w	$r4,$r0,80(0x50)
1c0067fc:	57f2c7ff 	bl	-3388(0xffff2c4) # 1c005ac0 <OLED_Show_Str>
1c006800:	00150005 	move	$r5,$r0
1c006804:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006808:	57add7ff 	bl	-21036(0xfffadd4) # 1c0015dc <gpio_write_pin>
1c00680c:	50003400 	b	52(0x34) # 1c006840 <main+0x3f4>
1c006810:	00150005 	move	$r5,$r0
1c006814:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006818:	57adc7ff 	bl	-21052(0xfffadc4) # 1c0015dc <gpio_write_pin>
1c00681c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006820:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006824:	02baa0c6 	addi.w	$r6,$r6,-344(0xea8)
1c006828:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00682c:	02814004 	addi.w	$r4,$r0,80(0x50)
1c006830:	57f293ff 	bl	-3440(0xffff290) # 1c005ac0 <OLED_Show_Str>
1c006834:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006838:	029f418c 	addi.w	$r12,$r12,2000(0x7d0)
1c00683c:	29800180 	st.w	$r0,$r12,0
1c006840:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006844:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006848:	5c0235ac 	bne	$r13,$r12,564(0x234) # 1c006a7c <main+0x630>
1c00684c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006850:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006854:	02b8e0c6 	addi.w	$r6,$r6,-456(0xe38)
1c006858:	00150005 	move	$r5,$r0
1c00685c:	00150004 	move	$r4,$r0
1c006860:	57f263ff 	bl	-3488(0xffff260) # 1c005ac0 <OLED_Show_Str>
1c006864:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006868:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00686c:	02b8a0c6 	addi.w	$r6,$r6,-472(0xe28)
1c006870:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006874:	00150004 	move	$r4,$r0
1c006878:	57f24bff 	bl	-3512(0xffff248) # 1c005ac0 <OLED_Show_Str>
1c00687c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006880:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006884:	02b860c6 	addi.w	$r6,$r6,-488(0xe18)
1c006888:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00688c:	00150004 	move	$r4,$r0
1c006890:	57f233ff 	bl	-3536(0xffff230) # 1c005ac0 <OLED_Show_Str>
1c006894:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006898:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00689c:	02b820c6 	addi.w	$r6,$r6,-504(0xe08)
1c0068a0:	00150005 	move	$r5,$r0
1c0068a4:	02810404 	addi.w	$r4,$r0,65(0x41)
1c0068a8:	57f21bff 	bl	-3560(0xffff218) # 1c005ac0 <OLED_Show_Str>
1c0068ac:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0068b0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0068b4:	02b7d0c6 	addi.w	$r6,$r6,-524(0xdf4)
1c0068b8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0068bc:	02810404 	addi.w	$r4,$r0,65(0x41)
1c0068c0:	57f203ff 	bl	-3584(0xffff200) # 1c005ac0 <OLED_Show_Str>
1c0068c4:	2a7f5acd 	ld.hu	$r13,$r22,-42(0xfd6)
1c0068c8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0068cc:	002131ae 	div.wu	$r14,$r13,$r12
1c0068d0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0068d8 <main+0x48c>
1c0068d4:	002a0007 	break	0x7
1c0068d8:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0068dc:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0068e0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0068e4:	00150186 	move	$r6,$r12
1c0068e8:	00150005 	move	$r5,$r0
1c0068ec:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0068f0:	57ed63ff 	bl	-4768(0xfffed60) # 1c005650 <OLED_ShowInt32Num>
1c0068f4:	2a7f52cd 	ld.hu	$r13,$r22,-44(0xfd4)
1c0068f8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0068fc:	002131ae 	div.wu	$r14,$r13,$r12
1c006900:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006908 <main+0x4bc>
1c006904:	002a0007 	break	0x7
1c006908:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c00690c:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006910:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006914:	00150186 	move	$r6,$r12
1c006918:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00691c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006920:	57ed33ff 	bl	-4816(0xfffed30) # 1c005650 <OLED_ShowInt32Num>
1c006924:	57f66fff 	bl	-2452(0xffff66c) # 1c005f90 <BH1750_Test>
1c006928:	02804007 	addi.w	$r7,$r0,16(0x10)
1c00692c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006930:	02b690c6 	addi.w	$r6,$r6,-604(0xda4)
1c006934:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006938:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00693c:	57f187ff 	bl	-3708(0xffff184) # 1c005ac0 <OLED_Show_Str>
1c006940:	2a7f5acd 	ld.hu	$r13,$r22,-42(0xfd6)
1c006944:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006948:	002131ae 	div.wu	$r14,$r13,$r12
1c00694c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006954 <main+0x508>
1c006950:	002a0007 	break	0x7
1c006954:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006958:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c00695c:	6c00198d 	bgeu	$r12,$r13,24(0x18) # 1c006974 <main+0x528>
1c006960:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006964:	289ab18c 	ld.w	$r12,$r12,1708(0x6ac)
1c006968:	2a40018c 	ld.hu	$r12,$r12,0
1c00696c:	2a7f9acd 	ld.hu	$r13,$r22,-26(0xfe6)
1c006970:	6800398d 	bltu	$r12,$r13,56(0x38) # 1c0069a8 <main+0x55c>
1c006974:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006978:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c00697c:	57ac63ff 	bl	-21408(0xfffac60) # 1c0015dc <gpio_write_pin>
1c006980:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006984:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006988:	02b4d0c6 	addi.w	$r6,$r6,-716(0xd34)
1c00698c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006990:	02814004 	addi.w	$r4,$r0,80(0x50)
1c006994:	57f12fff 	bl	-3796(0xffff12c) # 1c005ac0 <OLED_Show_Str>
1c006998:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00699c:	0299b18c 	addi.w	$r12,$r12,1644(0x66c)
1c0069a0:	29800180 	st.w	$r0,$r12,0
1c0069a4:	5000d800 	b	216(0xd8) # 1c006a7c <main+0x630>
1c0069a8:	2a7f52cd 	ld.hu	$r13,$r22,-44(0xfd4)
1c0069ac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0069b0:	002131ae 	div.wu	$r14,$r13,$r12
1c0069b4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0069bc <main+0x570>
1c0069b8:	002a0007 	break	0x7
1c0069bc:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0069c0:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c0069c4:	6c00898d 	bgeu	$r12,$r13,136(0x88) # 1c006a4c <main+0x600>
1c0069c8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069cc:	0298f18c 	addi.w	$r12,$r12,1596(0x63c)
1c0069d0:	2880018c 	ld.w	$r12,$r12,0
1c0069d4:	44005180 	bnez	$r12,80(0x50) # 1c006a24 <main+0x5d8>
1c0069d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0069dc:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0069e0:	57abffff 	bl	-21508(0xfffabfc) # 1c0015dc <gpio_write_pin>
1c0069e4:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0069e8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0069ec:	02b360c6 	addi.w	$r6,$r6,-808(0xcd8)
1c0069f0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0069f4:	02814004 	addi.w	$r4,$r0,80(0x50)
1c0069f8:	57f0cbff 	bl	-3896(0xffff0c8) # 1c005ac0 <OLED_Show_Str>
1c0069fc:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c006a00:	57ca7fff 	bl	-13700(0xfffca7c) # 1c00347c <delay_ms>
1c006a04:	00150005 	move	$r5,$r0
1c006a08:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006a0c:	57abd3ff 	bl	-21552(0xfffabd0) # 1c0015dc <gpio_write_pin>
1c006a10:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006a14:	0297d18c 	addi.w	$r12,$r12,1524(0x5f4)
1c006a18:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006a1c:	2980018d 	st.w	$r13,$r12,0
1c006a20:	50005c00 	b	92(0x5c) # 1c006a7c <main+0x630>
1c006a24:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006a28:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006a2c:	02b260c6 	addi.w	$r6,$r6,-872(0xc98)
1c006a30:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006a34:	02814004 	addi.w	$r4,$r0,80(0x50)
1c006a38:	57f08bff 	bl	-3960(0xffff088) # 1c005ac0 <OLED_Show_Str>
1c006a3c:	00150005 	move	$r5,$r0
1c006a40:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006a44:	57ab9bff 	bl	-21608(0xfffab98) # 1c0015dc <gpio_write_pin>
1c006a48:	50003400 	b	52(0x34) # 1c006a7c <main+0x630>
1c006a4c:	00150005 	move	$r5,$r0
1c006a50:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006a54:	57ab8bff 	bl	-21624(0xfffab88) # 1c0015dc <gpio_write_pin>
1c006a58:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006a5c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006a60:	02b1b0c6 	addi.w	$r6,$r6,-916(0xc6c)
1c006a64:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006a68:	02814004 	addi.w	$r4,$r0,80(0x50)
1c006a6c:	57f057ff 	bl	-4012(0xffff054) # 1c005ac0 <OLED_Show_Str>
1c006a70:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006a74:	0296518c 	addi.w	$r12,$r12,1428(0x594)
1c006a78:	29800180 	st.w	$r0,$r12,0
1c006a7c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006a80:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006a84:	5c04ddac 	bne	$r13,$r12,1244(0x4dc) # 1c006f60 <main+0xb14>
1c006a88:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006a8c:	0296018c 	addi.w	$r12,$r12,1408(0x580)
1c006a90:	2880018c 	ld.w	$r12,$r12,0
1c006a94:	44000d80 	bnez	$r12,12(0xc) # 1c006aa0 <main+0x654>
1c006a98:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006a9c:	50000800 	b	8(0x8) # 1c006aa4 <main+0x658>
1c006aa0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006aa4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006aa8:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c006aac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006ab0:	5c008dac 	bne	$r13,$r12,140(0x8c) # 1c006b3c <main+0x6f0>
1c006ab4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006ab8:	0295618c 	addi.w	$r12,$r12,1368(0x558)
1c006abc:	2880018c 	ld.w	$r12,$r12,0
1c006ac0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006ac4:	5c0045ac 	bne	$r13,$r12,68(0x44) # 1c006b08 <main+0x6bc>
1c006ac8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006acc:	0295018c 	addi.w	$r12,$r12,1344(0x540)
1c006ad0:	2880018c 	ld.w	$r12,$r12,0
1c006ad4:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c006ad8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006adc:	0020b1cd 	mod.w	$r13,$r14,$r12
1c006ae0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006ae8 <main+0x69c>
1c006ae4:	002a0007 	break	0x7
1c006ae8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006aec:	0294818c 	addi.w	$r12,$r12,1312(0x520)
1c006af0:	2980018d 	st.w	$r13,$r12,0
1c006af4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006af8:	0294618c 	addi.w	$r12,$r12,1304(0x518)
1c006afc:	29800180 	st.w	$r0,$r12,0
1c006b00:	57e867ff 	bl	-6044(0xfffe864) # 1c005364 <OLED_Init>
1c006b04:	5001f000 	b	496(0x1f0) # 1c006cf4 <main+0x8a8>
1c006b08:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006b0c:	0294118c 	addi.w	$r12,$r12,1284(0x504)
1c006b10:	2880018c 	ld.w	$r12,$r12,0
1c006b14:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c006b18:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006b1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b20:	0020b1cd 	mod.w	$r13,$r14,$r12
1c006b24:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006b2c <main+0x6e0>
1c006b28:	002a0007 	break	0x7
1c006b2c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006b30:	0293818c 	addi.w	$r12,$r12,1248(0x4e0)
1c006b34:	2980018d 	st.w	$r13,$r12,0
1c006b38:	5001bc00 	b	444(0x1bc) # 1c006cf4 <main+0x8a8>
1c006b3c:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c006b40:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006b44:	5c00c1ac 	bne	$r13,$r12,192(0xc0) # 1c006c04 <main+0x7b8>
1c006b48:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006b4c:	0293018c 	addi.w	$r12,$r12,1216(0x4c0)
1c006b50:	2880018c 	ld.w	$r12,$r12,0
1c006b54:	44004980 	bnez	$r12,72(0x48) # 1c006b9c <main+0x750>
1c006b58:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006b5c:	0292d18c 	addi.w	$r12,$r12,1204(0x4b4)
1c006b60:	2880018c 	ld.w	$r12,$r12,0
1c006b64:	44001580 	bnez	$r12,20(0x14) # 1c006b78 <main+0x72c>
1c006b68:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006b6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b70:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006b74:	50018000 	b	384(0x180) # 1c006cf4 <main+0x8a8>
1c006b78:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006b7c:	0292518c 	addi.w	$r12,$r12,1172(0x494)
1c006b80:	2880018d 	ld.w	$r13,$r12,0
1c006b84:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006b88:	5c016dac 	bne	$r13,$r12,364(0x16c) # 1c006cf4 <main+0x8a8>
1c006b8c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006b90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b94:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006b98:	50015c00 	b	348(0x15c) # 1c006cf4 <main+0x8a8>
1c006b9c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006ba0:	0291c18c 	addi.w	$r12,$r12,1136(0x470)
1c006ba4:	2880018c 	ld.w	$r12,$r12,0
1c006ba8:	44001580 	bnez	$r12,20(0x14) # 1c006bbc <main+0x770>
1c006bac:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c006bb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006bb4:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c006bb8:	50013c00 	b	316(0x13c) # 1c006cf4 <main+0x8a8>
1c006bbc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006bc0:	0291418c 	addi.w	$r12,$r12,1104(0x450)
1c006bc4:	2880018d 	ld.w	$r13,$r12,0
1c006bc8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006bcc:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c006be0 <main+0x794>
1c006bd0:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c006bd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006bd8:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c006bdc:	50011800 	b	280(0x118) # 1c006cf4 <main+0x8a8>
1c006be0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006be4:	0290b18c 	addi.w	$r12,$r12,1068(0x42c)
1c006be8:	2880018d 	ld.w	$r13,$r12,0
1c006bec:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006bf0:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c006cf4 <main+0x8a8>
1c006bf4:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c006bf8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006bfc:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c006c00:	5000f400 	b	244(0xf4) # 1c006cf4 <main+0x8a8>
1c006c04:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c006c08:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006c0c:	5c00c1ac 	bne	$r13,$r12,192(0xc0) # 1c006ccc <main+0x880>
1c006c10:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006c14:	028fe18c 	addi.w	$r12,$r12,1016(0x3f8)
1c006c18:	2880018c 	ld.w	$r12,$r12,0
1c006c1c:	44004980 	bnez	$r12,72(0x48) # 1c006c64 <main+0x818>
1c006c20:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006c24:	028fb18c 	addi.w	$r12,$r12,1004(0x3ec)
1c006c28:	2880018c 	ld.w	$r12,$r12,0
1c006c2c:	44001580 	bnez	$r12,20(0x14) # 1c006c40 <main+0x7f4>
1c006c30:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006c34:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006c38:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006c3c:	5000b800 	b	184(0xb8) # 1c006cf4 <main+0x8a8>
1c006c40:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006c44:	028f318c 	addi.w	$r12,$r12,972(0x3cc)
1c006c48:	2880018d 	ld.w	$r13,$r12,0
1c006c4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006c50:	5c00a5ac 	bne	$r13,$r12,164(0xa4) # 1c006cf4 <main+0x8a8>
1c006c54:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006c58:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006c5c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006c60:	50009400 	b	148(0x94) # 1c006cf4 <main+0x8a8>
1c006c64:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006c68:	028ea18c 	addi.w	$r12,$r12,936(0x3a8)
1c006c6c:	2880018c 	ld.w	$r12,$r12,0
1c006c70:	44001580 	bnez	$r12,20(0x14) # 1c006c84 <main+0x838>
1c006c74:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c006c78:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006c7c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c006c80:	50007400 	b	116(0x74) # 1c006cf4 <main+0x8a8>
1c006c84:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006c88:	028e218c 	addi.w	$r12,$r12,904(0x388)
1c006c8c:	2880018d 	ld.w	$r13,$r12,0
1c006c90:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006c94:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c006ca8 <main+0x85c>
1c006c98:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c006c9c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006ca0:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c006ca4:	50005000 	b	80(0x50) # 1c006cf4 <main+0x8a8>
1c006ca8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006cac:	028d918c 	addi.w	$r12,$r12,868(0x364)
1c006cb0:	2880018d 	ld.w	$r13,$r12,0
1c006cb4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006cb8:	5c003dac 	bne	$r13,$r12,60(0x3c) # 1c006cf4 <main+0x8a8>
1c006cbc:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c006cc0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006cc4:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c006cc8:	50002c00 	b	44(0x2c) # 1c006cf4 <main+0x8a8>
1c006ccc:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c006cd0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006cd4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006cf4 <main+0x8a8>
1c006cd8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c006cdc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006ce0:	028cb18c 	addi.w	$r12,$r12,812(0x32c)
1c006ce4:	29800180 	st.w	$r0,$r12,0
1c006ce8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006cec:	028c918c 	addi.w	$r12,$r12,804(0x324)
1c006cf0:	29800180 	st.w	$r0,$r12,0
1c006cf4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006cf8:	028c518c 	addi.w	$r12,$r12,788(0x314)
1c006cfc:	2880018c 	ld.w	$r12,$r12,0
1c006d00:	4400fd80 	bnez	$r12,252(0xfc) # 1c006dfc <main+0x9b0>
1c006d04:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d08:	028c218c 	addi.w	$r12,$r12,776(0x308)
1c006d0c:	2880018c 	ld.w	$r12,$r12,0
1c006d10:	44001180 	bnez	$r12,16(0x10) # 1c006d20 <main+0x8d4>
1c006d14:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006d18:	02a7318c 	addi.w	$r12,$r12,-1588(0x9cc)
1c006d1c:	50000c00 	b	12(0xc) # 1c006d28 <main+0x8dc>
1c006d20:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006d24:	02a7418c 	addi.w	$r12,$r12,-1584(0x9d0)
1c006d28:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006d2c:	00150186 	move	$r6,$r12
1c006d30:	00150005 	move	$r5,$r0
1c006d34:	00150004 	move	$r4,$r0
1c006d38:	57ed8bff 	bl	-4728(0xfffed88) # 1c005ac0 <OLED_Show_Str>
1c006d3c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d40:	028b418c 	addi.w	$r12,$r12,720(0x2d0)
1c006d44:	2880018d 	ld.w	$r13,$r12,0
1c006d48:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006d4c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006d5c <main+0x910>
1c006d50:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006d54:	02a6c18c 	addi.w	$r12,$r12,-1616(0x9b0)
1c006d58:	50000c00 	b	12(0xc) # 1c006d64 <main+0x918>
1c006d5c:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006d60:	02a6d18c 	addi.w	$r12,$r12,-1612(0x9b4)
1c006d64:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006d68:	00150186 	move	$r6,$r12
1c006d6c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006d70:	00150004 	move	$r4,$r0
1c006d74:	57ed4fff 	bl	-4788(0xfffed4c) # 1c005ac0 <OLED_Show_Str>
1c006d78:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006d7c:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006d80:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d84:	00150186 	move	$r6,$r12
1c006d88:	00150005 	move	$r5,$r0
1c006d8c:	02814004 	addi.w	$r4,$r0,80(0x50)
1c006d90:	57e8c3ff 	bl	-5952(0xfffe8c0) # 1c005650 <OLED_ShowInt32Num>
1c006d94:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006d98:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006d9c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006da0:	00150186 	move	$r6,$r12
1c006da4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006da8:	02814004 	addi.w	$r4,$r0,80(0x50)
1c006dac:	57e8a7ff 	bl	-5980(0xfffe8a4) # 1c005650 <OLED_ShowInt32Num>
1c006db0:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006db4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006db8:	02a3b0c6 	addi.w	$r6,$r6,-1812(0x8ec)
1c006dbc:	00150005 	move	$r5,$r0
1c006dc0:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006dc4:	57ecffff 	bl	-4868(0xfffecfc) # 1c005ac0 <OLED_Show_Str>
1c006dc8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006dcc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006dd0:	02a360c6 	addi.w	$r6,$r6,-1832(0x8d8)
1c006dd4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006dd8:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006ddc:	57ece7ff 	bl	-4892(0xfffece4) # 1c005ac0 <OLED_Show_Str>
1c006de0:	02802007 	addi.w	$r7,$r0,8(0x8)
1c006de4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006de8:	02a4f0c6 	addi.w	$r6,$r6,-1732(0x93c)
1c006dec:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006df0:	00150004 	move	$r4,$r0
1c006df4:	57eccfff 	bl	-4916(0xfffeccc) # 1c005ac0 <OLED_Show_Str>
1c006df8:	50016800 	b	360(0x168) # 1c006f60 <main+0xb14>
1c006dfc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006e00:	0288418c 	addi.w	$r12,$r12,528(0x210)
1c006e04:	2880018c 	ld.w	$r12,$r12,0
1c006e08:	44001180 	bnez	$r12,16(0x10) # 1c006e18 <main+0x9cc>
1c006e0c:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006e10:	02a4b18c 	addi.w	$r12,$r12,-1748(0x92c)
1c006e14:	50000c00 	b	12(0xc) # 1c006e20 <main+0x9d4>
1c006e18:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006e1c:	02a4c18c 	addi.w	$r12,$r12,-1744(0x930)
1c006e20:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006e24:	00150186 	move	$r6,$r12
1c006e28:	00150005 	move	$r5,$r0
1c006e2c:	00150004 	move	$r4,$r0
1c006e30:	57ec93ff 	bl	-4976(0xfffec90) # 1c005ac0 <OLED_Show_Str>
1c006e34:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006e38:	0287618c 	addi.w	$r12,$r12,472(0x1d8)
1c006e3c:	2880018d 	ld.w	$r13,$r12,0
1c006e40:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006e44:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006e54 <main+0xa08>
1c006e48:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006e4c:	02a4418c 	addi.w	$r12,$r12,-1776(0x910)
1c006e50:	50000c00 	b	12(0xc) # 1c006e5c <main+0xa10>
1c006e54:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006e58:	02a4518c 	addi.w	$r12,$r12,-1772(0x914)
1c006e5c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006e60:	00150186 	move	$r6,$r12
1c006e64:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006e68:	00150004 	move	$r4,$r0
1c006e6c:	57ec57ff 	bl	-5036(0xfffec54) # 1c005ac0 <OLED_Show_Str>
1c006e70:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006e74:	0286718c 	addi.w	$r12,$r12,412(0x19c)
1c006e78:	2880018d 	ld.w	$r13,$r12,0
1c006e7c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006e80:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006e90 <main+0xa44>
1c006e84:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006e88:	02a3d18c 	addi.w	$r12,$r12,-1804(0x8f4)
1c006e8c:	50000c00 	b	12(0xc) # 1c006e98 <main+0xa4c>
1c006e90:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c006e94:	02a3e18c 	addi.w	$r12,$r12,-1800(0x8f8)
1c006e98:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006e9c:	00150186 	move	$r6,$r12
1c006ea0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006ea4:	00150004 	move	$r4,$r0
1c006ea8:	57ec1bff 	bl	-5096(0xfffec18) # 1c005ac0 <OLED_Show_Str>
1c006eac:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c006eb0:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006eb4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006eb8:	00150186 	move	$r6,$r12
1c006ebc:	00150005 	move	$r5,$r0
1c006ec0:	02814004 	addi.w	$r4,$r0,80(0x50)
1c006ec4:	57e78fff 	bl	-6260(0xfffe78c) # 1c005650 <OLED_ShowInt32Num>
1c006ec8:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c006ecc:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006ed0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ed4:	00150186 	move	$r6,$r12
1c006ed8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006edc:	02814004 	addi.w	$r4,$r0,80(0x50)
1c006ee0:	57e773ff 	bl	-6288(0xfffe770) # 1c005650 <OLED_ShowInt32Num>
1c006ee4:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c006ee8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006eec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ef0:	00150186 	move	$r6,$r12
1c006ef4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006ef8:	02814004 	addi.w	$r4,$r0,80(0x50)
1c006efc:	57e757ff 	bl	-6316(0xfffe754) # 1c005650 <OLED_ShowInt32Num>
1c006f00:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006f04:	1c000026 	pcaddu12i	$r6,1(0x1)
1c006f08:	029e70c6 	addi.w	$r6,$r6,1948(0x79c)
1c006f0c:	00150005 	move	$r5,$r0
1c006f10:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006f14:	57ebafff 	bl	-5204(0xfffebac) # 1c005ac0 <OLED_Show_Str>
1c006f18:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006f1c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c006f20:	029e20c6 	addi.w	$r6,$r6,1928(0x788)
1c006f24:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006f28:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006f2c:	57eb97ff 	bl	-5228(0xfffeb94) # 1c005ac0 <OLED_Show_Str>
1c006f30:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006f34:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006f38:	02a190c6 	addi.w	$r6,$r6,-1948(0x864)
1c006f3c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006f40:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006f44:	57eb7fff 	bl	-5252(0xfffeb7c) # 1c005ac0 <OLED_Show_Str>
1c006f48:	02802007 	addi.w	$r7,$r0,8(0x8)
1c006f4c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c006f50:	029f50c6 	addi.w	$r6,$r6,2004(0x7d4)
1c006f54:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006f58:	00150004 	move	$r4,$r0
1c006f5c:	57eb67ff 	bl	-5276(0xfffeb64) # 1c005ac0 <OLED_Show_Str>
1c006f60:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006f64:	57c51bff 	bl	-15080(0xfffc518) # 1c00347c <delay_ms>
1c006f68:	53f587ff 	b	-2684(0xffff584) # 1c0064ec <main+0xa0>

1c006f6c <KEY_CONTROL>:
KEY_CONTROL():
1c006f6c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006f70:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006f74:	29806076 	st.w	$r22,$r3,24(0x18)
1c006f78:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006f7c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006f80:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c006f84:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c006f88:	57e13fff 	bl	-7876(0xfffe13c) # 1c0050c4 <KEY_Check>
1c006f8c:	0015008c 	move	$r12,$r4
1c006f90:	0015018d 	move	$r13,$r12
1c006f94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006f98:	2980018d 	st.w	$r13,$r12,0
1c006f9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006fa0:	2880018c 	ld.w	$r12,$r12,0
1c006fa4:	4000ad80 	beqz	$r12,172(0xac) # 1c007050 <KEY_CONTROL+0xe4>
1c006fa8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006fac:	2880018c 	ld.w	$r12,$r12,0
1c006fb0:	4400a180 	bnez	$r12,160(0xa0) # 1c007050 <KEY_CONTROL+0xe4>
1c006fb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006fb8:	2880018d 	ld.w	$r13,$r12,0
1c006fbc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006fc0:	2980018d 	st.w	$r13,$r12,0
1c006fc4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006fc8:	57e06fff 	bl	-8084(0xfffe06c) # 1c005034 <LED_Off>
1c006fcc:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006fd0:	57e067ff 	bl	-8092(0xfffe064) # 1c005034 <LED_Off>
1c006fd4:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c006fd8:	57e05fff 	bl	-8100(0xfffe05c) # 1c005034 <LED_Off>
1c006fdc:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c006fe0:	57e057ff 	bl	-8108(0xfffe054) # 1c005034 <LED_Off>
1c006fe4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006fe8:	2880018c 	ld.w	$r12,$r12,0
1c006fec:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006ff0:	5800398d 	beq	$r12,$r13,56(0x38) # 1c007028 <KEY_CONTROL+0xbc>
1c006ff4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006ff8:	600011ac 	blt	$r13,$r12,16(0x10) # 1c007008 <KEY_CONTROL+0x9c>
1c006ffc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007000:	58001d8d 	beq	$r12,$r13,28(0x1c) # 1c00701c <KEY_CONTROL+0xb0>
1c007004:	50008c00 	b	140(0x8c) # 1c007090 <KEY_CONTROL+0x124>
1c007008:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00700c:	5800298d 	beq	$r12,$r13,40(0x28) # 1c007034 <KEY_CONTROL+0xc8>
1c007010:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c007014:	58002d8d 	beq	$r12,$r13,44(0x2c) # 1c007040 <KEY_CONTROL+0xd4>
1c007018:	50007800 	b	120(0x78) # 1c007090 <KEY_CONTROL+0x124>
1c00701c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c007020:	57dfdbff 	bl	-8232(0xfffdfd8) # 1c004ff8 <LED_On>
1c007024:	50002800 	b	40(0x28) # 1c00704c <KEY_CONTROL+0xe0>
1c007028:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c00702c:	57dfcfff 	bl	-8244(0xfffdfcc) # 1c004ff8 <LED_On>
1c007030:	50001c00 	b	28(0x1c) # 1c00704c <KEY_CONTROL+0xe0>
1c007034:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c007038:	57dfc3ff 	bl	-8256(0xfffdfc0) # 1c004ff8 <LED_On>
1c00703c:	50001000 	b	16(0x10) # 1c00704c <KEY_CONTROL+0xe0>
1c007040:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c007044:	57dfb7ff 	bl	-8268(0xfffdfb4) # 1c004ff8 <LED_On>
1c007048:	03400000 	andi	$r0,$r0,0x0
1c00704c:	50004400 	b	68(0x44) # 1c007090 <KEY_CONTROL+0x124>
1c007050:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007054:	2880018c 	ld.w	$r12,$r12,0
1c007058:	44003980 	bnez	$r12,56(0x38) # 1c007090 <KEY_CONTROL+0x124>
1c00705c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007060:	2880018c 	ld.w	$r12,$r12,0
1c007064:	40002d80 	beqz	$r12,44(0x2c) # 1c007090 <KEY_CONTROL+0x124>
1c007068:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00706c:	57dfcbff 	bl	-8248(0xfffdfc8) # 1c005034 <LED_Off>
1c007070:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c007074:	57dfc3ff 	bl	-8256(0xfffdfc0) # 1c005034 <LED_Off>
1c007078:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c00707c:	57dfbbff 	bl	-8264(0xfffdfb8) # 1c005034 <LED_Off>
1c007080:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c007084:	57dfb3ff 	bl	-8272(0xfffdfb0) # 1c005034 <LED_Off>
1c007088:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00708c:	29800180 	st.w	$r0,$r12,0
1c007090:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007094:	2880018d 	ld.w	$r13,$r12,0
1c007098:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00709c:	2980018d 	st.w	$r13,$r12,0
1c0070a0:	03400000 	andi	$r0,$r0,0x0
1c0070a4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0070a8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0070ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0070b0:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c0070c0 <msg_wakeup>:
msg_wakeup():
1c0070c0:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01dc20 <_sidata+0x15484>
1c0070c4:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c0070c9 <hexdecarr>:
hexdecarr():
1c0070c9:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c0070cd:	37363534 	0x37363534
1c0070d1:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfed209 <_start-0x12df7>
1c0070d5:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed639 <_start-0x129c7>
1c0070d9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0070dd:	79654b0a 	0x79654b0a
1c0070e1:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c0070e5:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c0070e9:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c0070ed:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01e15d <_sidata+0x159c1>
1c0070f1:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffe051 <_start-0x1faf>
1c0070f5:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c0070f9:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffe05d <_start-0x1fa3>
1c0070fd:	72616220 	0x72616220
1c007101:	0a0d216b 	0x0a0d216b
1c007105:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007109:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffd27d <_start-0x2d83>
1c00710d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c007111:	b4000a0d 	0xb4000a0d
1c007115:	d01c001d 	0xd01c001d
1c007119:	d01c001e 	0xd01c001e
1c00711d:	d01c001e 	0xd01c001e
1c007121:	d01c001e 	0xd01c001e
1c007125:	d01c001e 	0xd01c001e
1c007129:	d01c001e 	0xd01c001e
1c00712d:	d01c001e 	0xd01c001e
1c007131:	d01c001e 	0xd01c001e
1c007135:	d01c001e 	0xd01c001e
1c007139:	d01c001e 	0xd01c001e
1c00713d:	cc1c001e 	0xcc1c001e
1c007141:	541c001d 	bl	7609344(0x741c00) # 1c748d41 <_sidata+0x7405a5>
1c007145:	541c001e 	bl	7871488(0x781c00) # 1c788d45 <_sidata+0x7805a9>
1c007149:	541c001e 	bl	7871488(0x781c00) # 1c788d49 <_sidata+0x7805ad>
1c00714d:	541c001e 	bl	7871488(0x781c00) # 1c788d4d <_sidata+0x7805b1>
1c007151:	541c001e 	bl	7871488(0x781c00) # 1c788d51 <_sidata+0x7805b5>
1c007155:	541c001e 	bl	7871488(0x781c00) # 1c788d55 <_sidata+0x7805b9>
1c007159:	541c001e 	bl	7871488(0x781c00) # 1c788d59 <_sidata+0x7805bd>
1c00715d:	541c001e 	bl	7871488(0x781c00) # 1c788d5d <_sidata+0x7805c1>
1c007161:	541c001e 	bl	7871488(0x781c00) # 1c788d61 <_sidata+0x7805c5>
1c007165:	d01c001e 	0xd01c001e
1c007169:	d01c001e 	0xd01c001e
1c00716d:	d01c001e 	0xd01c001e
1c007171:	d01c001e 	0xd01c001e
1c007175:	d01c001e 	0xd01c001e
1c007179:	d01c001e 	0xd01c001e
1c00717d:	d01c001e 	0xd01c001e
1c007181:	d01c001e 	0xd01c001e
1c007185:	d01c001e 	0xd01c001e
1c007189:	d01c001e 	0xd01c001e
1c00718d:	d01c001e 	0xd01c001e
1c007191:	d01c001e 	0xd01c001e
1c007195:	d01c001e 	0xd01c001e
1c007199:	d01c001e 	0xd01c001e
1c00719d:	d01c001e 	0xd01c001e
1c0071a1:	d01c001e 	0xd01c001e
1c0071a5:	d01c001e 	0xd01c001e
1c0071a9:	d01c001e 	0xd01c001e
1c0071ad:	d01c001e 	0xd01c001e
1c0071b1:	d01c001e 	0xd01c001e
1c0071b5:	d01c001e 	0xd01c001e
1c0071b9:	d01c001e 	0xd01c001e
1c0071bd:	d01c001e 	0xd01c001e
1c0071c1:	d01c001e 	0xd01c001e
1c0071c5:	d01c001e 	0xd01c001e
1c0071c9:	d01c001e 	0xd01c001e
1c0071cd:	d01c001e 	0xd01c001e
1c0071d1:	d01c001e 	0xd01c001e
1c0071d5:	d01c001e 	0xd01c001e
1c0071d9:	d01c001e 	0xd01c001e
1c0071dd:	d01c001e 	0xd01c001e
1c0071e1:	d01c001e 	0xd01c001e
1c0071e5:	d01c001e 	0xd01c001e
1c0071e9:	d01c001e 	0xd01c001e
1c0071ed:	d01c001e 	0xd01c001e
1c0071f1:	d01c001e 	0xd01c001e
1c0071f5:	d01c001e 	0xd01c001e
1c0071f9:	d01c001e 	0xd01c001e
1c0071fd:	d01c001e 	0xd01c001e
1c007201:	d01c001e 	0xd01c001e
1c007205:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf88e05 <_start-0x771fb>
1c007209:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c008e09 <_sidata+0x66d>
1c00720d:	d41c001c 	0xd41c001c
1c007211:	d01c001c 	0xd01c001c
1c007215:	d01c001e 	0xd01c001e
1c007219:	d01c001e 	0xd01c001e
1c00721d:	d01c001e 	0xd01c001e
1c007221:	d01c001e 	0xd01c001e
1c007225:	d01c001e 	0xd01c001e
1c007229:	d01c001e 	0xd01c001e
1c00722d:	d01c001e 	0xd01c001e
1c007231:	d01c001e 	0xd01c001e
1c007235:	d01c001e 	0xd01c001e
1c007239:	0c1c001e 	0x0c1c001e
1c00723d:	7c1c001d 	0x7c1c001d
1c007241:	d01c001d 	0xd01c001d
1c007245:	d01c001e 	0xd01c001e
1c007249:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf88e49 <_start-0x771b7>
1c00724d:	d01c001c 	0xd01c001c
1c007251:	9c1c001e 	0x9c1c001e
1c007255:	d01c001c 	0xd01c001c
1c007259:	d01c001e 	0xd01c001e
1c00725d:	7c1c001e 	0x7c1c001e
1c007261:	681c001d 	bltu	$r0,$r29,7168(0x1c00) # 1c008e61 <_sidata+0x6c5>
1c007265:	8c1c0023 	0x8c1c0023
1c007269:	8c1c0024 	0x8c1c0024
1c00726d:	8c1c0024 	0x8c1c0024
1c007271:	8c1c0024 	0x8c1c0024
1c007275:	8c1c0024 	0x8c1c0024
1c007279:	8c1c0024 	0x8c1c0024
1c00727d:	8c1c0024 	0x8c1c0024
1c007281:	8c1c0024 	0x8c1c0024
1c007285:	8c1c0024 	0x8c1c0024
1c007289:	8c1c0024 	0x8c1c0024
1c00728d:	881c0024 	0x881c0024
1c007291:	101c0023 	addu16i.d	$r3,$r1,1792(0x700)
1c007295:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007299:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c00729d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072a1:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072a5:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072a9:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072ad:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072b1:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c0072b5:	8c1c0024 	0x8c1c0024
1c0072b9:	8c1c0024 	0x8c1c0024
1c0072bd:	8c1c0024 	0x8c1c0024
1c0072c1:	8c1c0024 	0x8c1c0024
1c0072c5:	8c1c0024 	0x8c1c0024
1c0072c9:	8c1c0024 	0x8c1c0024
1c0072cd:	8c1c0024 	0x8c1c0024
1c0072d1:	8c1c0024 	0x8c1c0024
1c0072d5:	8c1c0024 	0x8c1c0024
1c0072d9:	8c1c0024 	0x8c1c0024
1c0072dd:	8c1c0024 	0x8c1c0024
1c0072e1:	8c1c0024 	0x8c1c0024
1c0072e5:	8c1c0024 	0x8c1c0024
1c0072e9:	8c1c0024 	0x8c1c0024
1c0072ed:	8c1c0024 	0x8c1c0024
1c0072f1:	8c1c0024 	0x8c1c0024
1c0072f5:	8c1c0024 	0x8c1c0024
1c0072f9:	8c1c0024 	0x8c1c0024
1c0072fd:	8c1c0024 	0x8c1c0024
1c007301:	8c1c0024 	0x8c1c0024
1c007305:	8c1c0024 	0x8c1c0024
1c007309:	8c1c0024 	0x8c1c0024
1c00730d:	8c1c0024 	0x8c1c0024
1c007311:	8c1c0024 	0x8c1c0024
1c007315:	8c1c0024 	0x8c1c0024
1c007319:	8c1c0024 	0x8c1c0024
1c00731d:	8c1c0024 	0x8c1c0024
1c007321:	8c1c0024 	0x8c1c0024
1c007325:	8c1c0024 	0x8c1c0024
1c007329:	8c1c0024 	0x8c1c0024
1c00732d:	8c1c0024 	0x8c1c0024
1c007331:	8c1c0024 	0x8c1c0024
1c007335:	8c1c0024 	0x8c1c0024
1c007339:	8c1c0024 	0x8c1c0024
1c00733d:	8c1c0024 	0x8c1c0024
1c007341:	8c1c0024 	0x8c1c0024
1c007345:	8c1c0024 	0x8c1c0024
1c007349:	8c1c0024 	0x8c1c0024
1c00734d:	8c1c0024 	0x8c1c0024
1c007351:	8c1c0024 	0x8c1c0024
1c007355:	f01c0024 	0xf01c0024
1c007359:	081c0022 	fmadd.s	$f2,$f1,$f0,$f24
1c00735d:	781c0022 	0x781c0022
1c007361:	8c1c0022 	0x8c1c0022
1c007365:	8c1c0024 	0x8c1c0024
1c007369:	8c1c0024 	0x8c1c0024
1c00736d:	8c1c0024 	0x8c1c0024
1c007371:	8c1c0024 	0x8c1c0024
1c007375:	8c1c0024 	0x8c1c0024
1c007379:	8c1c0024 	0x8c1c0024
1c00737d:	8c1c0024 	0x8c1c0024
1c007381:	8c1c0024 	0x8c1c0024
1c007385:	8c1c0024 	0x8c1c0024
1c007389:	b41c0024 	0xb41c0024
1c00738d:	2c1c0022 	vld	$vr2,$r1,1792(0x700)
1c007391:	8c1c0023 	0x8c1c0023
1c007395:	8c1c0024 	0x8c1c0024
1c007399:	d81c0024 	0xd81c0024
1c00739d:	8c1c0021 	0x8c1c0021
1c0073a1:	3c1c0024 	0x3c1c0024
1c0073a5:	8c1c0022 	0x8c1c0022
1c0073a9:	8c1c0024 	0x8c1c0024
1c0073ad:	2c1c0024 	vld	$vr4,$r1,1792(0x700)
1c0073b1:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c0073b5:	7c000000 	0x7c000000
1c0073b9:	7c7c7c7c 	0x7c7c7c7c
1c0073bd:	7c7c7c7c 	0x7c7c7c7c
1c0073c1:	7c7c7c7c 	0x7c7c7c7c
1c0073c5:	7c7c7c7c 	0x7c7c7c7c
1c0073c9:	7c7c7c7c 	0x7c7c7c7c
1c0073cd:	7c7c7c7c 	0x7c7c7c7c
1c0073d1:	7c7c7c7c 	0x7c7c7c7c
1c0073d5:	7c7c7c7c 	0x7c7c7c7c
1c0073d9:	7c7c7c7c 	0x7c7c7c7c
1c0073dd:	7c7c7c7c 	0x7c7c7c7c
1c0073e1:	7c7c7c7c 	0x7c7c7c7c
1c0073e5:	7c7c7c7c 	0x7c7c7c7c
1c0073e9:	7c7c7c7c 	0x7c7c7c7c
1c0073ed:	7c7c7c7c 	0x7c7c7c7c
1c0073f1:	7c7c7c7c 	0x7c7c7c7c
1c0073f5:	7c7c7c7c 	0x7c7c7c7c
1c0073f9:	7c7c7c7c 	0x7c7c7c7c
1c0073fd:	7c7c7c7c 	0x7c7c7c7c
1c007401:	7c7c7c7c 	0x7c7c7c7c
1c007405:	7c7c7c7c 	0x7c7c7c7c
1c007409:	7c7c7c7c 	0x7c7c7c7c
1c00740d:	7c7c7c7c 	0x7c7c7c7c
1c007411:	7c7c7c7c 	0x7c7c7c7c
1c007415:	7c7c7c7c 	0x7c7c7c7c
1c007419:	7c00000a 	0x7c00000a
1c00741d:	7c20207c 	0x7c20207c
1c007421:	7c7c7c7c 	0x7c7c7c7c
1c007425:	7c7c7c7c 	0x7c7c7c7c
1c007429:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00742d:	7c202020 	0x7c202020
1c007431:	7c7c7c7c 	0x7c7c7c7c
1c007435:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007439:	7c202020 	0x7c202020
1c00743d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007441:	7c7c2020 	0x7c7c2020
1c007445:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007449:	7c7c7c20 	0x7c7c7c20
1c00744d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007451:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007455:	7c7c7c7c 	0x7c7c7c7c
1c007459:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00745d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007461:	7c7c7c7c 	0x7c7c7c7c
1c007465:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007469:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00746d:	7c7c7c7c 	0x7c7c7c7c
1c007471:	7c202020 	0x7c202020
1c007475:	7c7c7c7c 	0x7c7c7c7c
1c007479:	7c7c2020 	0x7c7c2020
1c00747d:	7c00000a 	0x7c00000a
1c007481:	7c20207c 	0x7c20207c
1c007485:	7c7c7c7c 	0x7c7c7c7c
1c007489:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00748d:	7c7c2020 	0x7c7c2020
1c007491:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007495:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007499:	7c7c2020 	0x7c7c2020
1c00749d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0074a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074a5:	7c202020 	0x7c202020
1c0074a9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074ad:	7c7c7c20 	0x7c7c7c20
1c0074b1:	7c20207c 	0x7c20207c
1c0074b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074b9:	7c7c7c20 	0x7c7c7c20
1c0074bd:	7c202020 	0x7c202020
1c0074c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074c5:	7c7c7c20 	0x7c7c7c20
1c0074c9:	7c202020 	0x7c202020
1c0074cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074d1:	7c7c7c20 	0x7c7c7c20
1c0074d5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0074d9:	7c7c7c7c 	0x7c7c7c7c
1c0074dd:	7c7c2020 	0x7c7c2020
1c0074e1:	7c00000a 	0x7c00000a
1c0074e5:	7c20207c 	0x7c20207c
1c0074e9:	7c7c7c7c 	0x7c7c7c7c
1c0074ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074f1:	7c7c7c20 	0x7c7c7c20
1c0074f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074fd:	7c7c7c20 	0x7c7c7c20
1c007501:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007505:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007509:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00750d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007511:	7c7c7c20 	0x7c7c7c20
1c007515:	7c7c2020 	0x7c7c2020
1c007519:	7c7c7c7c 	0x7c7c7c7c
1c00751d:	7c7c7c7c 	0x7c7c7c7c
1c007521:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007525:	7c7c7c20 	0x7c7c7c20
1c007529:	7c7c7c7c 	0x7c7c7c7c
1c00752d:	7c7c2020 	0x7c7c2020
1c007531:	7c7c7c7c 	0x7c7c7c7c
1c007535:	7c7c7c20 	0x7c7c7c20
1c007539:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00753d:	7c7c7c20 	0x7c7c7c20
1c007541:	7c7c2020 	0x7c7c2020
1c007545:	7c00000a 	0x7c00000a
1c007549:	7c20207c 	0x7c20207c
1c00754d:	7c7c7c7c 	0x7c7c7c7c
1c007551:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007555:	7c7c7c20 	0x7c7c7c20
1c007559:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00755d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007561:	7c7c7c20 	0x7c7c7c20
1c007565:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007569:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00756d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007571:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007575:	7c7c7c20 	0x7c7c7c20
1c007579:	7c7c2020 	0x7c7c2020
1c00757d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007581:	7c7c7c20 	0x7c7c7c20
1c007585:	7c7c7c7c 	0x7c7c7c7c
1c007589:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00758d:	7c7c7c7c 	0x7c7c7c7c
1c007591:	7c7c2020 	0x7c7c2020
1c007595:	7c7c7c7c 	0x7c7c7c7c
1c007599:	7c7c7c20 	0x7c7c7c20
1c00759d:	7c7c2020 	0x7c7c2020
1c0075a1:	7c7c2020 	0x7c7c2020
1c0075a5:	7c7c2020 	0x7c7c2020
1c0075a9:	7c00000a 	0x7c00000a
1c0075ad:	7c20207c 	0x7c20207c
1c0075b1:	7c7c7c7c 	0x7c7c7c7c
1c0075b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075b9:	7c7c7c20 	0x7c7c7c20
1c0075bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075c5:	7c7c7c20 	0x7c7c7c20
1c0075c9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075d1:	7c7c7c20 	0x7c7c7c20
1c0075d5:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0075d9:	7c7c7c20 	0x7c7c7c20
1c0075dd:	7c7c2020 	0x7c7c2020
1c0075e1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075e5:	7c7c7c20 	0x7c7c7c20
1c0075e9:	7c7c7c7c 	0x7c7c7c7c
1c0075ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075f1:	7c7c7c20 	0x7c7c7c20
1c0075f5:	7c7c2020 	0x7c7c2020
1c0075f9:	7c7c7c7c 	0x7c7c7c7c
1c0075fd:	7c7c7c20 	0x7c7c7c20
1c007601:	7c7c2020 	0x7c7c2020
1c007605:	7c20207c 	0x7c20207c
1c007609:	7c7c2020 	0x7c7c2020
1c00760d:	7c00000a 	0x7c00000a
1c007611:	7c20207c 	0x7c20207c
1c007615:	7c7c7c7c 	0x7c7c7c7c
1c007619:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00761d:	7c7c2020 	0x7c7c2020
1c007621:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007625:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007629:	7c7c2020 	0x7c7c2020
1c00762d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007631:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007635:	7c7c7c20 	0x7c7c7c20
1c007639:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00763d:	7c7c7c20 	0x7c7c7c20
1c007641:	7c202020 	0x7c202020
1c007645:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007649:	7c7c7c20 	0x7c7c7c20
1c00764d:	7c202020 	0x7c202020
1c007651:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007655:	7c7c7c7c 	0x7c7c7c7c
1c007659:	7c202020 	0x7c202020
1c00765d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007661:	7c7c7c20 	0x7c7c7c20
1c007665:	7c7c2020 	0x7c7c2020
1c007669:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00766d:	7c7c2020 	0x7c7c2020
1c007671:	7c00000a 	0x7c00000a
1c007675:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007679:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00767d:	7c7c7c7c 	0x7c7c7c7c
1c007681:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007685:	7c202020 	0x7c202020
1c007689:	7c7c7c7c 	0x7c7c7c7c
1c00768d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007691:	7c202020 	0x7c202020
1c007695:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007699:	7c7c7c20 	0x7c7c7c20
1c00769d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0076a1:	7c7c7c20 	0x7c7c7c20
1c0076a5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0076a9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0076ad:	7c7c7c7c 	0x7c7c7c7c
1c0076b1:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0076b5:	7c202020 	0x7c202020
1c0076b9:	7c7c7c7c 	0x7c7c7c7c
1c0076bd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0076c1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0076c5:	7c7c7c7c 	0x7c7c7c7c
1c0076c9:	7c7c2020 	0x7c7c2020
1c0076cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0076d1:	7c7c2020 	0x7c7c2020
1c0076d5:	7c00000a 	0x7c00000a
1c0076d9:	7c7c7c7c 	0x7c7c7c7c
1c0076dd:	7c7c7c7c 	0x7c7c7c7c
1c0076e1:	7c7c7c7c 	0x7c7c7c7c
1c0076e5:	7c7c7c7c 	0x7c7c7c7c
1c0076e9:	7c7c7c7c 	0x7c7c7c7c
1c0076ed:	7c7c7c7c 	0x7c7c7c7c
1c0076f1:	7c7c7c7c 	0x7c7c7c7c
1c0076f5:	7c7c7c7c 	0x7c7c7c7c
1c0076f9:	7c7c7c7c 	0x7c7c7c7c
1c0076fd:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c007701:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c007705:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c007709:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00770d:	7c7c7c5d 	0x7c7c7c5d
1c007711:	7c7c7c7c 	0x7c7c7c7c
1c007715:	7c7c7c7c 	0x7c7c7c7c
1c007719:	7c7c7c7c 	0x7c7c7c7c
1c00771d:	7c7c7c7c 	0x7c7c7c7c
1c007721:	7c7c7c7c 	0x7c7c7c7c
1c007725:	7c7c7c7c 	0x7c7c7c7c
1c007729:	7c7c7c7c 	0x7c7c7c7c
1c00772d:	7c7c7c7c 	0x7c7c7c7c
1c007731:	7c7c7c7c 	0x7c7c7c7c
1c007735:	7c7c7c7c 	0x7c7c7c7c
1c007739:	0900000a 	0x0900000a
1c00773d:	0a006425 	0x0a006425
1c007741:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007745:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c007749:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00774d:	0050550a 	0x0050550a
1c007751:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007755:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00eca1 <_sidata+0x6505>
1c007759:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00775d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007761:	756f430a 	0x756f430a
1c007765:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007769:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00776d:	3030090a 	0x3030090a
1c007771:	09313009 	0x09313009
1c007775:	30093230 	0x30093230
1c007779:	34300933 	0x34300933
1c00777d:	09353009 	0x09353009
1c007781:	30093630 	0x30093630
1c007785:	38300937 	fldx.s	$f23,$r9,$r2
1c007789:	09393009 	0x09393009
1c00778d:	31093031 	0x31093031
1c007791:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c007795:	746e630a 	0x746e630a
1c007799:	09000000 	0x09000000
1c00779d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c0077a1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0077a5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c0077a9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d8fd <_sidata+0x5161>
1c0077ad:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0077b1:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeed01 <_start-0x112ff>
1c0077b5:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c0077b9:	09000000 	0x09000000
1c0077bd:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c0077c1:	09000000 	0x09000000
1c0077c5:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c0077c9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0077cd:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0077d1:	3a515249 	0x3a515249
1c0077d5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0077d9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe64d <_start-0x19b3>
1c0077dd:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0077e1:	0d3e2020 	0x0d3e2020
1c0077e5:	0a00000a 	0x0a00000a
1c0077e9:	2e2e2e2e 	0x2e2e2e2e
1c0077ed:	2e2e2e2e 	0x2e2e2e2e
1c0077f1:	2e2e2e2e 	0x2e2e2e2e
1c0077f5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac745 <_sidata+0x3a3fa9>
1c0077f9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c0077fd:	2e2e2e54 	0x2e2e2e54
1c007801:	2e2e2e2e 	0x2e2e2e2e
1c007805:	2e2e2e2e 	0x2e2e2e2e
1c007809:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00780d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c007811:	2e2e2e0a 	0x2e2e2e0a
1c007815:	2e2e2e2e 	0x2e2e2e2e
1c007819:	2e2e2e2e 	0x2e2e2e2e
1c00781d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39ba49 <_sidata+0x3932ad>
1c007821:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1be7d <_start-0x2e4183>
1c007825:	2e2e4c49 	0x2e2e4c49
1c007829:	2e2e2e2e 	0x2e2e2e2e
1c00782d:	2e2e2e2e 	0x2e2e2e2e
1c007831:	2e2e2e2e 	0x2e2e2e2e
1c007835:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c007839:	2e2e2e0a 	0x2e2e2e0a
1c00783d:	2e2e2e2e 	0x2e2e2e2e
1c007841:	2e2e2e2e 	0x2e2e2e2e
1c007845:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b971 <_sidata+0x3831d5>
1c007849:	2e2e2e43 	0x2e2e2e43
1c00784d:	2e2e2e2e 	0x2e2e2e2e
1c007851:	2e2e2e2e 	0x2e2e2e2e
1c007855:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c007859:	5000000a 	b	2621440(0x280000) # 1c287859 <_sidata+0x27f0bd>
1c00785d:	70697265 	vavgr.w	$vr5,$vr19,$vr28
1c007861:	61726568 	blt	$r11,$r8,94820(0x17264) # 1c01eac5 <_sidata+0x16329>
1c007865:	5420736c 	bl	-38789008(0xdb02070) # 19b098d5 <_start-0x24f672b>
1c007869:	72656d69 	0x72656d69
1c00786d:	656c6320 	bge	$r25,$r0,93280(0x16c60) # 1c01e4cd <_sidata+0x15d31>
1c007871:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c0198e1 <_sidata+0x11145>
1c007875:	7265746e 	0x7265746e
1c007879:	74707572 	xvmax.b	$xr18,$xr11,$xr29
1c00787d:	0a0d2e2e 	0x0a0d2e2e
1c007881:	43000000 	beqz	$r0,196608(0x30000) # 1c037881 <_sidata+0x2f0e5>
1c007885:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c007889:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e5f1 <_sidata+0x15e55>
1c00788d:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00dbad <_sidata+0x5411>
1c007891:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c007895:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01ed01 <_sidata+0x16565>
1c007899:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00789d:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c0078a1:	 	0xac00000a

1c0078a4 <Ext_IrqHandle>:
1c0078a4:	1c003bac 	pcaddu12i	$r12,477(0x1dd)
1c0078a8:	1c003bf8 	pcaddu12i	$r24,479(0x1df)
1c0078ac:	1c003c44 	pcaddu12i	$r4,482(0x1e2)
1c0078b0:	1c003c90 	pcaddu12i	$r16,484(0x1e4)
1c0078b4:	1c003cdc 	pcaddu12i	$r28,486(0x1e6)
1c0078b8:	1c003d28 	pcaddu12i	$r8,489(0x1e9)
1c0078bc:	1c003d74 	pcaddu12i	$r20,491(0x1eb)
1c0078c0:	1c003dc0 	pcaddu12i	$r0,494(0x1ee)
1c0078c4:	1c003e0c 	pcaddu12i	$r12,496(0x1f0)
1c0078c8:	1c003e58 	pcaddu12i	$r24,498(0x1f2)
1c0078cc:	1c003ea4 	pcaddu12i	$r4,501(0x1f5)
1c0078d0:	1c003ef0 	pcaddu12i	$r16,503(0x1f7)
1c0078d4:	1c003f3c 	pcaddu12i	$r28,505(0x1f9)
1c0078d8:	1c003f88 	pcaddu12i	$r8,508(0x1fc)
1c0078dc:	1c003fd4 	pcaddu12i	$r20,510(0x1fe)
1c0078e0:	1c004020 	pcaddu12i	$r0,513(0x201)
1c0078e4:	1c00406c 	pcaddu12i	$r12,515(0x203)
1c0078e8:	1c0040b8 	pcaddu12i	$r24,517(0x205)
1c0078ec:	1c004104 	pcaddu12i	$r4,520(0x208)
1c0078f0:	1c004150 	pcaddu12i	$r16,522(0x20a)
1c0078f4:	1c00419c 	pcaddu12i	$r28,524(0x20c)
1c0078f8:	1c0041e8 	pcaddu12i	$r8,527(0x20f)
1c0078fc:	1c004234 	pcaddu12i	$r20,529(0x211)
1c007900:	1c004280 	pcaddu12i	$r0,532(0x214)
1c007904:	1c0042cc 	pcaddu12i	$r12,534(0x216)
1c007908:	1c004318 	pcaddu12i	$r24,536(0x218)
1c00790c:	1c004364 	pcaddu12i	$r4,539(0x21b)
1c007910:	1c0043b0 	pcaddu12i	$r16,541(0x21d)
1c007914:	1c0043fc 	pcaddu12i	$r28,543(0x21f)
1c007918:	1c004448 	pcaddu12i	$r8,546(0x222)
1c00791c:	1c004494 	pcaddu12i	$r20,548(0x224)
1c007920:	1c0044e0 	pcaddu12i	$r0,551(0x227)
1c007924:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007928:	1c004774 	pcaddu12i	$r20,571(0x23b)
1c00792c:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007930:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007934:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007938:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c00793c:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007940:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007944:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007948:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c00794c:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007950:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007954:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007958:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c00795c:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007960:	1c0047c4 	pcaddu12i	$r4,574(0x23e)
1c007964:	1c004790 	pcaddu12i	$r16,572(0x23c)

1c007968 <__FUNCTION__.1552>:
1c007968:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ede0 <_sidata+0x16644>
1c00796c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9d0 <_sidata+0x16234>
1c007970:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa9d0 <_start-0x5630>
1c007974:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeae4 <_start-0x151c>
1c007978:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7d8 <_sidata+0x603c>
1c00797c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007980 <__FUNCTION__.1556>:
1c007980:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edf8 <_sidata+0x1665c>
1c007984:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9e8 <_sidata+0x1624c>
1c007988:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffaae8 <_start-0x5518>
1c00798c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeafc <_start-0x1504>
1c007990:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7f0 <_sidata+0x6054>
1c007994:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007998 <__FUNCTION__.1560>:
1c007998:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee10 <_sidata+0x16674>
1c00799c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea00 <_sidata+0x16264>
1c0079a0:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffac00 <_start-0x5400>
1c0079a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb14 <_start-0x14ec>
1c0079a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e808 <_sidata+0x606c>
1c0079ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079b0 <__FUNCTION__.1564>:
1c0079b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee28 <_sidata+0x1668c>
1c0079b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea18 <_sidata+0x1627c>
1c0079b8:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffad18 <_start-0x52e8>
1c0079bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb2c <_start-0x14d4>
1c0079c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e820 <_sidata+0x6084>
1c0079c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079c8 <__FUNCTION__.1568>:
1c0079c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee40 <_sidata+0x166a4>
1c0079cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea30 <_sidata+0x16294>
1c0079d0:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffae30 <_start-0x51d0>
1c0079d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb44 <_start-0x14bc>
1c0079d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e838 <_sidata+0x609c>
1c0079dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079e0 <__FUNCTION__.1572>:
1c0079e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee58 <_sidata+0x166bc>
1c0079e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea48 <_sidata+0x162ac>
1c0079e8:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffaf48 <_start-0x50b8>
1c0079ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb5c <_start-0x14a4>
1c0079f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e850 <_sidata+0x60b4>
1c0079f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079f8 <__FUNCTION__.1576>:
1c0079f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee70 <_sidata+0x166d4>
1c0079fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea60 <_sidata+0x162c4>
1c007a00:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffb060 <_start-0x4fa0>
1c007a04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb74 <_start-0x148c>
1c007a08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e868 <_sidata+0x60cc>
1c007a0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a10 <__FUNCTION__.1580>:
1c007a10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee88 <_sidata+0x166ec>
1c007a14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea78 <_sidata+0x162dc>
1c007a18:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffb178 <_start-0x4e88>
1c007a1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb8c <_start-0x1474>
1c007a20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e880 <_sidata+0x60e4>
1c007a24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a28 <__FUNCTION__.1584>:
1c007a28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eea0 <_sidata+0x16704>
1c007a2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea90 <_sidata+0x162f4>
1c007a30:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffaa90 <_start-0x5570>
1c007a34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeba4 <_start-0x145c>
1c007a38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e898 <_sidata+0x60fc>
1c007a3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a40 <__FUNCTION__.1588>:
1c007a40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eeb8 <_sidata+0x1671c>
1c007a44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eaa8 <_sidata+0x1630c>
1c007a48:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffaba8 <_start-0x5458>
1c007a4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebbc <_start-0x1444>
1c007a50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8b0 <_sidata+0x6114>
1c007a54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a58 <__FUNCTION__.1592>:
1c007a58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eed0 <_sidata+0x16734>
1c007a5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eac0 <_sidata+0x16324>
1c007a60:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffacc0 <_start-0x5340>
1c007a64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebd4 <_start-0x142c>
1c007a68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8c8 <_sidata+0x612c>
1c007a6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a70 <__FUNCTION__.1596>:
1c007a70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eee8 <_sidata+0x1674c>
1c007a74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ead8 <_sidata+0x1633c>
1c007a78:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffadd8 <_start-0x5228>
1c007a7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebec <_start-0x1414>
1c007a80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8e0 <_sidata+0x6144>
1c007a84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a88 <__FUNCTION__.1600>:
1c007a88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef00 <_sidata+0x16764>
1c007a8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eaf0 <_sidata+0x16354>
1c007a90:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffaef0 <_start-0x5110>
1c007a94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec04 <_start-0x13fc>
1c007a98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8f8 <_sidata+0x615c>
1c007a9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007aa0 <__FUNCTION__.1604>:
1c007aa0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef18 <_sidata+0x1677c>
1c007aa4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb08 <_sidata+0x1636c>
1c007aa8:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffb008 <_start-0x4ff8>
1c007aac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec1c <_start-0x13e4>
1c007ab0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e910 <_sidata+0x6174>
1c007ab4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ab8 <__FUNCTION__.1608>:
1c007ab8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef30 <_sidata+0x16794>
1c007abc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb20 <_sidata+0x16384>
1c007ac0:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffb120 <_start-0x4ee0>
1c007ac4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec34 <_start-0x13cc>
1c007ac8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e928 <_sidata+0x618c>
1c007acc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ad0 <__FUNCTION__.1612>:
1c007ad0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef48 <_sidata+0x167ac>
1c007ad4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb38 <_sidata+0x1639c>
1c007ad8:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffb238 <_start-0x4dc8>
1c007adc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec4c <_start-0x13b4>
1c007ae0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e940 <_sidata+0x61a4>
1c007ae4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ae8 <__FUNCTION__.1616>:
1c007ae8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef60 <_sidata+0x167c4>
1c007aec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb50 <_sidata+0x163b4>
1c007af0:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffab50 <_start-0x54b0>
1c007af4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec64 <_start-0x139c>
1c007af8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e958 <_sidata+0x61bc>
1c007afc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b00 <__FUNCTION__.1620>:
1c007b00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef78 <_sidata+0x167dc>
1c007b04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb68 <_sidata+0x163cc>
1c007b08:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffac68 <_start-0x5398>
1c007b0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec7c <_start-0x1384>
1c007b10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e970 <_sidata+0x61d4>
1c007b14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b18 <__FUNCTION__.1624>:
1c007b18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef90 <_sidata+0x167f4>
1c007b1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb80 <_sidata+0x163e4>
1c007b20:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffad80 <_start-0x5280>
1c007b24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec94 <_start-0x136c>
1c007b28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e988 <_sidata+0x61ec>
1c007b2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b30 <__FUNCTION__.1628>:
1c007b30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efa8 <_sidata+0x1680c>
1c007b34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb98 <_sidata+0x163fc>
1c007b38:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffae98 <_start-0x5168>
1c007b3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecac <_start-0x1354>
1c007b40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9a0 <_sidata+0x6204>
1c007b44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b48 <__FUNCTION__.1632>:
1c007b48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efc0 <_sidata+0x16824>
1c007b4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebb0 <_sidata+0x16414>
1c007b50:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffafb0 <_start-0x5050>
1c007b54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecc4 <_start-0x133c>
1c007b58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9b8 <_sidata+0x621c>
1c007b5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b60 <__FUNCTION__.1636>:
1c007b60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efd8 <_sidata+0x1683c>
1c007b64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebc8 <_sidata+0x1642c>
1c007b68:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffb0c8 <_start-0x4f38>
1c007b6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecdc <_start-0x1324>
1c007b70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9d0 <_sidata+0x6234>
1c007b74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b78 <__FUNCTION__.1640>:
1c007b78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eff0 <_sidata+0x16854>
1c007b7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebe0 <_sidata+0x16444>
1c007b80:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffb1e0 <_start-0x4e20>
1c007b84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecf4 <_start-0x130c>
1c007b88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9e8 <_sidata+0x624c>
1c007b8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b90 <__FUNCTION__.1644>:
1c007b90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f008 <_sidata+0x1686c>
1c007b94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebf8 <_sidata+0x1645c>
1c007b98:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffb2f8 <_start-0x4d08>
1c007b9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed0c <_start-0x12f4>
1c007ba0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea00 <_sidata+0x6264>
1c007ba4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ba8 <__FUNCTION__.1648>:
1c007ba8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f020 <_sidata+0x16884>
1c007bac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec10 <_sidata+0x16474>
1c007bb0:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffac14 <_start-0x53ec>
1c007bb4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed24 <_start-0x12dc>
1c007bb8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea18 <_sidata+0x627c>
1c007bbc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bc0 <__FUNCTION__.1652>:
1c007bc0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f038 <_sidata+0x1689c>
1c007bc4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec28 <_sidata+0x1648c>
1c007bc8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffad2c <_start-0x52d4>
1c007bcc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed3c <_start-0x12c4>
1c007bd0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea30 <_sidata+0x6294>
1c007bd4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bd8 <__FUNCTION__.1656>:
1c007bd8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f050 <_sidata+0x168b4>
1c007bdc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec40 <_sidata+0x164a4>
1c007be0:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffae44 <_start-0x51bc>
1c007be4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed54 <_start-0x12ac>
1c007be8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea48 <_sidata+0x62ac>
1c007bec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bf0 <__FUNCTION__.1660>:
1c007bf0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f068 <_sidata+0x168cc>
1c007bf4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec58 <_sidata+0x164bc>
1c007bf8:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffaf5c <_start-0x50a4>
1c007bfc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed6c <_start-0x1294>
1c007c00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea60 <_sidata+0x62c4>
1c007c04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c08 <__FUNCTION__.1664>:
1c007c08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f080 <_sidata+0x168e4>
1c007c0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec70 <_sidata+0x164d4>
1c007c10:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffb074 <_start-0x4f8c>
1c007c14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed84 <_start-0x127c>
1c007c18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea78 <_sidata+0x62dc>
1c007c1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c20 <__FUNCTION__.1668>:
1c007c20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f098 <_sidata+0x168fc>
1c007c24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec88 <_sidata+0x164ec>
1c007c28:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffb18c <_start-0x4e74>
1c007c2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed9c <_start-0x1264>
1c007c30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea90 <_sidata+0x62f4>
1c007c34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c38 <__FUNCTION__.1672>:
1c007c38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f0b0 <_sidata+0x16914>
1c007c3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eca0 <_sidata+0x16504>
1c007c40:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffb2a4 <_start-0x4d5c>
1c007c44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffedb4 <_start-0x124c>
1c007c48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00eaa8 <_sidata+0x630c>
1c007c4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c50 <__FUNCTION__.1676>:
1c007c50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f0c8 <_sidata+0x1692c>
1c007c54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ecb8 <_sidata+0x1651c>
1c007c58:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffb3bc <_start-0x4c44>
1c007c5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffedcc <_start-0x1234>
1c007c60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00eac0 <_sidata+0x6324>
1c007c64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c68 <asc2_1608>:
	...
1c007c78:	f8000000 	0xf8000000
1c007c7c:	00000000 	0x00000000
1c007c80:	33000000 	0x33000000
1c007c84:	00000000 	0x00000000
1c007c88:	020c1000 	slti	$r0,$r0,772(0x304)
1c007c8c:	00020c10 	0x00020c10
	...
1c007c98:	78c04000 	0x78c04000
1c007c9c:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c007ca0:	043f0400 	csrrd	$r0,0xfc1
1c007ca4:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c007ca8:	88887000 	0x88887000
1c007cac:	003008fc 	0x003008fc
1c007cb0:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c007cb4:	001e21ff 	mulh.d	$r31,$r15,$r8
1c007cb8:	80f008f0 	0x80f008f0
1c007cbc:	00001860 	cto.w	$r0,$r3
1c007cc0:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c007cc4:	001e211e 	mulh.d	$r30,$r8,$r8
1c007cc8:	8808f000 	0x8808f000
1c007ccc:	00000070 	0x00000070
1c007cd0:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c007cd4:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c007cd8:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c007ce8:	e0000000 	0xe0000000
1c007cec:	00020418 	0x00020418
1c007cf0:	07000000 	0x07000000
1c007cf4:	00402018 	0x00402018
1c007cf8:	18040200 	pcaddi	$r0,8208(0x2010)
1c007cfc:	000000e0 	0x000000e0
1c007d00:	18204000 	pcaddi	$r0,66048(0x10200)
1c007d04:	00000007 	0x00000007
1c007d08:	f0804040 	0xf0804040
1c007d0c:	00404080 	0x00404080
1c007d10:	0f010202 	0x0f010202
1c007d14:	00020201 	0x00020201
1c007d18:	00000000 	0x00000000
1c007d1c:	000000e0 	0x000000e0
1c007d20:	01010100 	fadd.d	$f0,$f8,$f0
1c007d24:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c007d30:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c007d40:	01010100 	fadd.d	$f0,$f8,$f0
1c007d44:	00010101 	0x00010101
	...
1c007d50:	00303000 	0x00303000
	...
1c007d5c:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c007d60:	07186000 	0x07186000
1c007d64:	00000000 	0x00000000
1c007d68:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c007d6c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007d70:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c007d74:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007d78:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007d7c:	000000f8 	0x000000f8
1c007d80:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c007d84:	0020203f 	div.w	$r31,$r1,$r8
1c007d88:	08087000 	0x08087000
1c007d8c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007d90:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c007d94:	00302122 	0x00302122
1c007d98:	08083000 	0x08083000
1c007d9c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007da0:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c007da4:	001c2221 	mul.w	$r1,$r17,$r8
1c007da8:	40800000 	beqz	$r0,32768(0x8000) # 1c00fda8 <_sidata+0x760c>
1c007dac:	0000f830 	0x0000f830
1c007db0:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c007db4:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c007db8:	8888f800 	0x8888f800
1c007dbc:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c007dc0:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c007dc4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007dc8:	8810e000 	0x8810e000
1c007dcc:	00009088 	0x00009088
1c007dd0:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c007dd4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007dd8:	08081800 	0x08081800
1c007ddc:	00186888 	sra.w	$r8,$r4,$r26
1c007de0:	3e000000 	0x3e000000
1c007de4:	00000001 	0x00000001
1c007de8:	08887000 	0x08887000
1c007dec:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007df0:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c007df4:	001c2221 	mul.w	$r1,$r17,$r8
1c007df8:	0808f000 	0x0808f000
1c007dfc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007e00:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c007e04:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007e08:	c0000000 	0xc0000000
1c007e0c:	000000c0 	0x000000c0
1c007e10:	30000000 	0x30000000
1c007e14:	00000030 	0x00000030
1c007e18:	80000000 	0x80000000
1c007e1c:	00000000 	0x00000000
1c007e20:	e0000000 	0xe0000000
1c007e24:	00000000 	0x00000000
1c007e28:	40800000 	beqz	$r0,32768(0x8000) # 1c00fe28 <_sidata+0x768c>
1c007e2c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007e30:	04020100 	csrxchg	$r0,$r8,0x80
1c007e34:	00201008 	div.w	$r8,$r0,$r4
1c007e38:	40404000 	beqz	$r0,16448(0x4040) # 1c00be78 <_sidata+0x36dc>
1c007e3c:	00404040 	0x00404040
1c007e40:	02020200 	slti	$r0,$r16,128(0x80)
1c007e44:	00020202 	0x00020202
1c007e48:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007e4c:	00008040 	0x00008040
1c007e50:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c007e54:	00010204 	0x00010204
1c007e58:	08487000 	0x08487000
1c007e5c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007e60:	30000000 	0x30000000
1c007e64:	00000037 	0x00000037
1c007e68:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c007e6c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c007e70:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c007e74:	0017282f 	sll.w	$r15,$r1,$r10
1c007e78:	38c00000 	0x38c00000
1c007e7c:	000000e0 	0x000000e0
1c007e80:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c007e84:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c007e88:	8888f808 	0x8888f808
1c007e8c:	00007088 	0x00007088
1c007e90:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007e94:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007e98:	080830c0 	0x080830c0
1c007e9c:	00380808 	0x00380808
1c007ea0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007ea4:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007ea8:	0808f808 	0x0808f808
1c007eac:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007eb0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007eb4:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007eb8:	8888f808 	0x8888f808
1c007ebc:	001008e8 	add.w	$r8,$r7,$r2
1c007ec0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007ec4:	00182023 	sra.w	$r3,$r1,$r8
1c007ec8:	8888f808 	0x8888f808
1c007ecc:	001008e8 	add.w	$r8,$r7,$r2
1c007ed0:	00203f20 	div.w	$r0,$r25,$r15
1c007ed4:	00000003 	0x00000003
1c007ed8:	080830c0 	0x080830c0
1c007edc:	00003808 	revb.2w	$r8,$r0
1c007ee0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007ee4:	00021e22 	0x00021e22
1c007ee8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007eec:	08f80800 	0x08f80800
1c007ef0:	01213f20 	0x01213f20
1c007ef4:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c007ef8:	f8080800 	0xf8080800
1c007efc:	00000808 	0x00000808
1c007f00:	3f202000 	0x3f202000
1c007f04:	00002020 	clo.d	$r0,$r1
1c007f08:	08080000 	0x08080000
1c007f0c:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c007f10:	808080c0 	0x808080c0
1c007f14:	0000007f 	0x0000007f
1c007f18:	c088f808 	0xc088f808
1c007f1c:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c007f20:	01203f20 	0x01203f20
1c007f24:	00203826 	div.w	$r6,$r1,$r14
1c007f28:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007f2c:	00000000 	0x00000000
1c007f30:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007f34:	00302020 	0x00302020
1c007f38:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c007f3c:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c007f40:	3e013f20 	0x3e013f20
1c007f44:	00203f01 	div.w	$r1,$r24,$r15
1c007f48:	c030f808 	0xc030f808
1c007f4c:	08f80800 	0x08f80800
1c007f50:	00203f20 	div.w	$r0,$r25,$r15
1c007f54:	003f1807 	0x003f1807
1c007f58:	080810e0 	0x080810e0
1c007f5c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007f60:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c007f64:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007f68:	0808f808 	0x0808f808
1c007f6c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007f70:	01213f20 	0x01213f20
1c007f74:	00000101 	0x00000101
1c007f78:	080810e0 	0x080810e0
1c007f7c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007f80:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c007f84:	004f5030 	0x004f5030
1c007f88:	8888f808 	0x8888f808
1c007f8c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c007f90:	00203f20 	div.w	$r0,$r25,$r15
1c007f94:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c007f98:	08887000 	0x08887000
1c007f9c:	00380808 	0x00380808
1c007fa0:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c007fa4:	001c2221 	mul.w	$r1,$r17,$r8
1c007fa8:	f8080818 	0xf8080818
1c007fac:	00180808 	sra.w	$r8,$r0,$r2
1c007fb0:	3f200000 	0x3f200000
1c007fb4:	00000020 	0x00000020
1c007fb8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007fbc:	08f80800 	0x08f80800
1c007fc0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007fc4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007fc8:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c007fcc:	0838c800 	0x0838c800
1c007fd0:	38070000 	0x38070000
1c007fd4:	0000010e 	0x0000010e
1c007fd8:	f800f808 	0xf800f808
1c007fdc:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c007fe0:	013e0300 	0x013e0300
1c007fe4:	0000033e 	0x0000033e
1c007fe8:	80681808 	0x80681808
1c007fec:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c007ff0:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c007ff4:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c007ff8:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c007ffc:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c008000:	3f200000 	0x3f200000
1c008004:	00000020 	0x00000020
1c008008:	08080810 	0x08080810
1c00800c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c008010:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c008014:	00182020 	sra.w	$r0,$r1,$r8
1c008018:	fe000000 	0xfe000000
1c00801c:	00020202 	0x00020202
1c008020:	7f000000 	0x7f000000
1c008024:	00404040 	0x00404040
1c008028:	c0380400 	0xc0380400
1c00802c:	00000000 	0x00000000
1c008030:	01000000 	0x01000000
1c008034:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c008038:	02020200 	slti	$r0,$r16,128(0x80)
1c00803c:	000000fe 	0x000000fe
1c008040:	40404000 	beqz	$r0,16448(0x4040) # 1c00c080 <_sidata+0x38e4>
1c008044:	0000007f 	0x0000007f
1c008048:	02040000 	slti	$r0,$r0,256(0x100)
1c00804c:	00000402 	0x00000402
	...
1c008060:	80808080 	0x80808080
1c008064:	80808080 	0x80808080
1c008068:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c008078:	80800000 	0x80800000
1c00807c:	00000080 	0x00000080
1c008080:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c008084:	00203f12 	div.w	$r18,$r24,$r15
1c008088:	8000f010 	0x8000f010
1c00808c:	00000080 	0x00000080
1c008090:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c008094:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008098:	80000000 	0x80000000
1c00809c:	00008080 	0x00008080
1c0080a0:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0080a4:	00112020 	sub.w	$r0,$r1,$r8
1c0080a8:	80800000 	0x80800000
1c0080ac:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c0080b0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0080b4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c0080b8:	80800000 	0x80800000
1c0080bc:	00008080 	0x00008080
1c0080c0:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c0080c4:	00172424 	sll.w	$r4,$r1,$r9
1c0080c8:	e0808000 	0xe0808000
1c0080cc:	00209090 	mod.w	$r16,$r4,$r4
1c0080d0:	3f202000 	0x3f202000
1c0080d4:	00002020 	clo.d	$r0,$r1
1c0080d8:	80800000 	0x80800000
1c0080dc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0080e0:	94946b00 	0x94946b00
1c0080e4:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c0080e8:	8000f010 	0x8000f010
1c0080ec:	00008080 	0x00008080
1c0080f0:	00213f20 	div.wu	$r0,$r25,$r15
1c0080f4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c0080f8:	98988000 	0x98988000
1c0080fc:	00000000 	0x00000000
1c008100:	3f202000 	0x3f202000
1c008104:	00002020 	clo.d	$r0,$r1
1c008108:	80000000 	0x80000000
1c00810c:	00009898 	0x00009898
1c008110:	8080c000 	0x8080c000
1c008114:	00007f80 	0x00007f80
1c008118:	0000f010 	0x0000f010
1c00811c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008120:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c008124:	00203029 	div.w	$r9,$r1,$r12
1c008128:	f8101000 	0xf8101000
1c00812c:	00000000 	0x00000000
1c008130:	3f202000 	0x3f202000
1c008134:	00002020 	clo.d	$r0,$r1
1c008138:	80808080 	0x80808080
1c00813c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008140:	00203f20 	div.w	$r0,$r25,$r15
1c008144:	3f00203f 	0x3f00203f
1c008148:	80008080 	0x80008080
1c00814c:	00008080 	0x00008080
1c008150:	00213f20 	div.wu	$r0,$r25,$r15
1c008154:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c008158:	80800000 	0x80800000
1c00815c:	00008080 	0x00008080
1c008160:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008164:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c008168:	80008080 	0x80008080
1c00816c:	00000080 	0x00000080
1c008170:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c008174:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008178:	80000000 	0x80000000
1c00817c:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c008180:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c008184:	80ff9120 	0x80ff9120
1c008188:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00818c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008190:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c008194:	00010020 	asrtle.d	$r1,$r0
1c008198:	80800000 	0x80800000
1c00819c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0081a0:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c0081a4:	00192424 	srl.d	$r4,$r1,$r9
1c0081a8:	e0808000 	0xe0808000
1c0081ac:	00008080 	0x00008080
1c0081b0:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c0081b4:	00102020 	add.w	$r0,$r1,$r8
1c0081b8:	00008080 	0x00008080
1c0081bc:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0081c0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0081c4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c0081c8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0081cc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0081d0:	300c0300 	0x300c0300
1c0081d4:	0000030c 	0x0000030c
1c0081d8:	80008080 	0x80008080
1c0081dc:	80800080 	0x80800080
1c0081e0:	0c300e01 	0x0c300e01
1c0081e4:	01063807 	0x01063807
1c0081e8:	80808000 	0x80808000
1c0081ec:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0081f0:	0e312000 	0x0e312000
1c0081f4:	0020312e 	div.w	$r14,$r9,$r12
1c0081f8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0081fc:	80808000 	0x80808000
1c008200:	78868100 	0x78868100
1c008204:	00010618 	0x00010618
1c008208:	80808000 	0x80808000
1c00820c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008210:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c008214:	00302122 	0x00302122
1c008218:	00000000 	0x00000000
1c00821c:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c008220:	00000000 	0x00000000
1c008224:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04c260 <_sidata+0x43ac4>
1c008228:	00000000 	0x00000000
1c00822c:	000000ff 	0x000000ff
1c008230:	00000000 	0x00000000
1c008234:	000000ff 	0x000000ff
1c008238:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c00823c:	00000000 	0x00000000
1c008240:	013e4040 	0x013e4040
1c008244:	00000000 	0x00000000
1c008248:	02010200 	slti	$r0,$r16,64(0x40)
1c00824c:	00020402 	0x00020402
	...

1c008258 <tfont16>:
1c008258:	10a9b8e6 	addu16i.d	$r6,$r7,10862(0x2a6e)
1c00825c:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c008260:	9292fe00 	0x9292fe00
1c008264:	fe929292 	0xfe929292
1c008268:	04000000 	csrrd	$r0,0x0
1c00826c:	40017e04 	beqz	$r16,1048956(0x10017c) # 1c1083e8 <_sidata+0xffc4c>
1c008270:	7e42427e 	0x7e42427e
1c008274:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ac4f0 <_sidata+0xa3d54>
1c008278:	e500407e 	0xe500407e
1c00827c:	0000a6ba 	0x0000a6ba
1c008280:	242424fc 	ldptr.w	$r28,$r7,9252(0x2424)
1c008284:	242625fc 	ldptr.w	$r28,$r15,9764(0x2624)
1c008288:	242424fc 	ldptr.w	$r28,$r7,9252(0x2424)
1c00828c:	30400004 	vldrepl.h	$vr4,$r0,0
1c008290:	4c84808f 	jirl	$r15,$r4,33920(0x8480)
1c008294:	25252555 	stptr.w	$r21,$r10,9508(0x2524)
1c008298:	80804c55 	0x80804c55
1c00829c:	b9e60080 	0xb9e60080
1c0082a0:	026010bf 	sltui	$r31,$r5,-2044(0x804)
1c0082a4:	92fe008c 	0x92fe008c
1c0082a8:	92929292 	0x92929292
1c0082ac:	0000fe92 	0x0000fe92
1c0082b0:	7e040400 	0x7e040400
1c0082b4:	50484401 	b	280644(0x44844) # 1c04caf8 <_sidata+0x4435c>
1c0082b8:	7f40407f 	0x7f40407f
1c0082bc:	40444850 	beqz	$r2,-4176824(0x404448) # 1bc0c704 <_start-0x3f38fc>
1c0082c0:	89aee500 	0x89aee500
1c0082c4:	848c9080 	0x848c9080
1c0082c8:	86f58484 	0x86f58484
1c0082cc:	84848484 	0x84848484
1c0082d0:	00808c94 	bstrins.d	$r20,$r4,0x0,0x23
1c0082d4:	84808000 	0x84808000
1c0082d8:	10284946 	addu16i.d	$r6,$r10,2578(0xa12)
1c0082dc:	40232c10 	beqz	$r0,-4185300(0x40232c) # 1bc0a608 <_start-0x3f59f8>
1c0082e0:	00000080 	0x00000080
1c0082e4:	80a885e5 	0x80a885e5
1c0082e8:	50204080 	b	33562688(0x2002040) # 1e00a328 <_sidata+0x2001b8c>
1c0082ec:	44c34448 	bnez	$r2,2147140(0x20c344) # 1c214630 <_sidata+0x20be94>
1c0082f0:	40205048 	beqz	$r2,2105424(0x202050) # 1c20a340 <_sidata+0x201ba4>
1c0082f4:	00008080 	0x00008080
1c0082f8:	44444040 	bnez	$r2,17472(0x4440) # 1c00c738 <_sidata+0x3f9c>
1c0082fc:	447f4444 	bnez	$r2,1081156(0x107f44) # 1c110240 <_sidata+0x107aa4>
1c008300:	40444444 	beqz	$r2,1066052(0x104444) # 1c10c744 <_sidata+0x103fa8>
1c008304:	e7000040 	0xe7000040
1c008308:	0000ab81 	0x0000ab81
1c00830c:	000038c0 	revb.2w	$r0,$r6
1c008310:	0000ff00 	0x0000ff00
1c008314:	00182040 	sra.w	$r0,$r2,$r8
1c008318:	81800000 	0x81800000
1c00831c:	0c102040 	fcmp.caf.s	$fcc0,$f2,$f8
1c008320:	0c030003 	0x0c030003
1c008324:	80402010 	0x80402010
1c008328:	81e70080 	0x81e70080
1c00832c:	040c10be 	csrxchg	$r30,$r5,0x304
1c008330:	050404c4 	0x050404c4
1c008334:	040404f6 	csrxchg	$r22,$r7,0x101
1c008338:	0c14c404 	fcmp.sun.s	$fcc4,$f0,$f17
1c00833c:	42808000 	beqz	$r0,163968(0x28080) # 1c0303bc <_sidata+0x27c20>
1c008340:	0c102041 	fcmp.caf.s	$fcc1,$f2,$f8
1c008344:	22100c03 	ll.d	$r3,$r0,4108(0x100c)
1c008348:	80804041 	0x80804041
1c00834c:	8985e500 	0x8985e500
1c008350:	44424040 	bnez	$r2,16960(0x4240) # 1c00c590 <_sidata+0x3df4>
1c008354:	7f40c058 	0x7f40c058
1c008358:	4850c040 	bceqz	$fcc2,20672(0x50c0) # 1c00d418 <_sidata+0x4c7c>
1c00835c:	00404046 	0x00404046
1c008360:	20408080 	ll.w	$r0,$r4,16512(0x4080)
1c008364:	00000718 	0x00000718
1c008368:	40403f00 	beqz	$r24,16444(0x403c) # 1c00c3a4 <_sidata+0x3c08>
1c00836c:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
1c008370:	00a785e7 	bstrins.d	$r7,$r15,0x27,0x21
1c008374:	424242fe 	beqz	$r23,-376256(0x7a4240) # 1bfac5b4 <_start-0x53a4c>
1c008378:	a24200fe 	0xa24200fe
1c00837c:	c2a2829e 	0xc2a2829e
1c008380:	800000be 	0x800000be
1c008384:	2808086f 	ld.b	$r15,$r3,514(0x202)
1c008388:	2f0000cf 	0x2f0000cf
1c00838c:	280808c8 	ld.b	$r8,$r6,514(0x202)
1c008390:	e20000cf 	0xe20000cf
1c008394:	09068384 	0x09068384
1c008398:	0cf8e609 	0x0cf8e609
1c00839c:	02020204 	slti	$r4,$r16,128(0x80)
1c0083a0:	1e040202 	pcaddu18i	$r2,8208(0x2010)
1c0083a4:	00000000 	0x00000000
1c0083a8:	301f0700 	0x301f0700
1c0083ac:	40404020 	beqz	$r1,16448(0x4040) # 1c00c3ec <_sidata+0x3c50>
1c0083b0:	10204040 	addu16i.d	$r0,$r2,2064(0x810)
1c0083b4:	bbe90000 	0xbbe90000
1c0083b8:	3e000091 	0x3e000091
1c0083bc:	22322a22 	ll.d	$r2,$r17,12840(0x3228)
1c0083c0:	2a3222fe 	ld.bu	$r30,$r23,-888(0xc88)
1c0083c4:	00003e22 	revb.d	$r2,$r17
1c0083c8:	09688800 	vfmsub.d	$vr0,$vr0,$vr2,$vr17
1c0083cc:	09c92909 	0x09c92909
1c0083d0:	09c9290f 	0x09c9290f
1c0083d4:	08c82909 	0x08c82909
1c0083d8:	979ae600 	0x979ae600
1c0083dc:	8484fc00 	0x8484fc00
1c0083e0:	544440fc 	bl	66077760(0x3f04440) # 1ff0c820 <_sidata+0x3f04084>
1c0083e4:	64444665 	bge	$r19,$r5,17476(0x4444) # 1c00c828 <_sidata+0x408c>
1c0083e8:	00404454 	0x00404454
1c0083ec:	10103f00 	addu16i.d	$r0,$r24,1039(0x40f)
1c0083f0:	ff00003f 	0xff00003f
1c0083f4:	49494949 	bcnez	$fcc2,2443592(0x254948) # 1c25cd3c <_sidata+0x2545a0>
1c0083f8:	000000ff 	0x000000ff
1c0083fc:	10a1a8e6 	addu16i.d	$r6,$r7,10346(0x286a)
1c008400:	90ffd010 	0x90ffd010
1c008404:	a4afe414 	0xa4afe414
1c008408:	e4afa4a4 	0xe4afa4a4
1c00840c:	04000004 	csrrd	$r4,0x0
1c008410:	00ff0003 	bstrpick.d	$r3,$r0,0x3f,0x0
1c008414:	1a2a4b89 	pcalau12i	$r9,86620(0x1525c)
1c008418:	4b2a1a0e 	0x4b2a1a0e
1c00841c:	e5008088 	0xe5008088
1c008420:	10108fbc 	addu16i.d	$r28,$r29,1059(0x423)
1c008424:	90909090 	0x90909090
1c008428:	ff101090 	0xff101090
1c00842c:	16111010 	lu32i.d	$r16,34944(0x8880)
1c008430:	20000010 	ll.w	$r16,$r0,0
1c008434:	103f2060 	addu16i.d	$r0,$r3,4040(0xfc8)
1c008438:	03001010 	lu52i.d	$r16,$r0,4(0x4)
1c00843c:	4020100c 	beqz	$r0,3153936(0x302010) # 1c30a44c <_sidata+0x301cb0>
1c008440:	9ce600f8 	0x9ce600f8
1c008444:	c0404080 	0xc0404080
1c008448:	d555555f 	0xd555555f
1c00844c:	55555555 	bl	89478484(0x5555554) # 2155d9a0 <_sidata+0x5555204>
1c008450:	4040405f 	beqz	$r2,-245696(0x7c4040) # 1bfcc490 <_start-0x33b70>
1c008454:	3f602000 	0x3f602000
1c008458:	ff151525 	0xff151525
1c00845c:	11294790 	addu16i.d	$r16,$r28,19025(0x4a51)
1c008460:	8080432d 	0x8080432d
1c008464:	a7a4e500 	0xa7a4e500
1c008468:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00846c:	ff202020 	0xff202020
1c008470:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008474:	00202020 	div.w	$r0,$r1,$r8
1c008478:	20408080 	ll.w	$r0,$r4,16512(0x4080)
1c00847c:	00030c10 	0x00030c10
1c008480:	20100c03 	ll.w	$r3,$r0,4108(0x100c)
1c008484:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
1c008488:	00bbb8e4 	bstrins.d	$r4,$r7,0x3b,0x2e
1c00848c:	08080808 	0x08080808
1c008490:	08fa0908 	0x08fa0908
1c008494:	08080808 	0x08080808
1c008498:	40000008 	beqz	$r0,2097152(0x200000) # 1c208498 <_sidata+0x1ffcfc>
1c00849c:	41414140 	beqz	$r10,82240(0x14140) # 1c01c5dc <_sidata+0x13e40>
1c0084a0:	417f4141 	beqz	$r10,360256(0x57f40) # 1c0603e0 <_sidata+0x57c44>
1c0084a4:	41414141 	beqz	$r10,344384(0x54140) # 1c05c5e4 <_sidata+0x53e48>
1c0084a8:	e8004040 	0xe8004040
1c0084ac:	04049c8f 	csrxchg	$r15,$r4,0x127
1c0084b0:	444fc444 	bnez	$r2,1068996(0x104fc4) # 1c10d474 <_sidata+0x104cd8>
1c0084b4:	2424c444 	ldptr.w	$r4,$r2,9412(0x24c4)
1c0084b8:	0424b42f 	csrwr	$r15,0x92d
1c0084bc:	44400004 	bnez	$r0,1064960(0x104000) # 1c10c4bc <_sidata+0x103d20>
1c0084c0:	0c152424 	fcmp.cult.s	$fcc4,$f1,$f9
1c0084c4:	0c04fe04 	0x0c04fe04
1c0084c8:	44242415 	bnez	$r0,-2874332(0x542424) # 1bd4a8ec <_start-0x2b5714>
1c0084cc:	8de50040 	0x8de50040
1c0084d0:	f8000095 	0xf8000095
1c0084d4:	484c4a49 	0x484c4a49
1c0084d8:	4a4c48f8 	bceqz	$fcc7,-1946552(0x624c48) # 1be2d120 <_start-0x1d2ee0>
1c0084dc:	0000f849 	0x0000f849
1c0084e0:	13101000 	addu16i.d	$r0,$r0,-15356(0xc404)
1c0084e4:	12121212 	addu16i.d	$r18,$r16,-31612(0x8484)
1c0084e8:	121212ff 	addu16i.d	$r31,$r23,-31612(0x8484)
1c0084ec:	10101312 	addu16i.d	$r18,$r24,1028(0x404)
1c0084f0:	8586e500 	0x8586e500
1c0084f4:	0808f800 	0x0808f800
1c0084f8:	7f880808 	0x7f880808
1c0084fc:	08080888 	0x08080888
1c008500:	0000f808 	0x0000f808
1c008504:	0800ff00 	0x0800ff00
1c008508:	00010204 	0x00010204
1c00850c:	4c020100 	jirl	$r0,$r8,512(0x200)
1c008510:	00007f80 	0x00007f80
1c008514:	4083b0e8 	beqz	$r7,2130864(0x2083b0) # 1c2108c4 <_sidata+0x208128>
1c008518:	0000cc42 	0x0000cc42
1c00851c:	929282fe 	0x929282fe
1c008520:	829292fe 	0x829292fe
1c008524:	000000fe 	0x000000fe
1c008528:	88103f00 	0x88103f00
1c00852c:	121e007f 	addu16i.d	$r31,$r3,-30848(0x8780)
1c008530:	805e1212 	0x805e1212
1c008534:	e800007f 	0xe800007f
1c008538:	404095af 	beqz	$r13,3948692(0x3c4094) # 1c3cc5cc <_sidata+0x3c3e30>
1c00853c:	9000cc42 	0x9000cc42
1c008540:	90909090 	0x90909090
1c008544:	161110ff 	lu32i.d	$r31,34951(0x8887)
1c008548:	00000010 	0x00000010
1c00854c:	28103f00 	ld.b	$r0,$r24,1039(0x40f)
1c008550:	10103f60 	addu16i.d	$r0,$r27,1039(0x40f)
1c008554:	40300e01 	beqz	$r16,274444(0x4300c) # 1c04b560 <_sidata+0x42dc4>
1c008558:	80e900f0 	0x80e900f0
1c00855c:	42404089 	beqz	$r4,2506816(0x264040) # 1c26c59c <_sidata+0x263e00>
1c008560:	4e5000cc 	jirl	$r12,$r6,-110592(0x25000)
1c008564:	c87f48c8 	0xc87f48c8
1c008568:	00404848 	0x00404848
1c00856c:	20400000 	ll.w	$r0,$r0,16384(0x4000)
1c008570:	4c50201f 	jirl	$r31,$r0,20512(0x5020)
1c008574:	4f404043 	jirl	$r3,$r2,-49088(0x34040)
1c008578:	405c5050 	beqz	$r2,-4170672(0x405c50) # 1bc0e1c8 <_start-0x3f1e38>
1c00857c:	a98be600 	0xa98be600
1c008580:	10ff1010 	addu16i.d	$r16,$r0,16324(0x3fc4)
1c008584:	4a868200 	0x4a868200
1c008588:	4a52a252 	0x4a52a252
1c00858c:	00808086 	bstrins.d	$r6,$r4,0x0,0x20
1c008590:	017f8242 	0x017f8242
1c008594:	12121000 	addu16i.d	$r0,$r0,-31612(0x8484)
1c008598:	1212ff12 	addu16i.d	$r18,$r24,-31553(0x84bf)
1c00859c:	00001012 	clo.w	$r18,$r0
1c0085a0:	10a08ae5 	addu16i.d	$r5,$r23,10274(0x2822)
1c0085a4:	10ff1010 	addu16i.d	$r16,$r0,16324(0x3fc4)
1c0085a8:	0000f010 	0x0000f010
1c0085ac:	080808f8 	0x080808f8
1c0085b0:	800000f8 	0x800000f8
1c0085b4:	400f3040 	beqz	$r2,3888(0xf30) # 1c0094e4 <_sidata+0xd48>
1c0085b8:	00007f80 	0x00007f80
1c0085bc:	2020207f 	ll.w	$r31,$r3,8224(0x2020)
1c0085c0:	e500007f 	0xe500007f
1c0085c4:	02008f87 	slti	$r7,$r28,35(0x23)
1c0085c8:	f800c00c 	0xf800c00c
1c0085cc:	48484808 	bceqz	$fcc0,2115656(0x204848) # 1c20ce14 <_sidata+0x204678>
1c0085d0:	0908ff08 	0x0908ff08
1c0085d4:	0202008a 	slti	$r10,$r4,128(0x80)
1c0085d8:	3f40807f 	0x3f40807f
1c0085dc:	5e921e00 	bne	$r16,$r0,-93668(0x2921c) # 1bff17f8 <_start-0xe808>
1c0085e0:	46381720 	bnez	$r25,145428(0x23814) # 1c02bdf4 <_sidata+0x23658>
1c0085e4:	98e600f1 	0x98e600f1
1c0085e8:	00000093 	0x00000093
1c0085ec:	49c97f00 	0x49c97f00
1c0085f0:	49494949 	bcnez	$fcc2,2443592(0x254948) # 1c25cf38 <_sidata+0x25479c>
1c0085f4:	0000007f 	0x0000007f
1c0085f8:	04080000 	csrrd	$r0,0x200
1c0085fc:	8e122342 	0x8e122342
1c008600:	420e3242 	beqz	$r18,658992(0xa0e30) # 1c0a9430 <_sidata+0xa0c94>
1c008604:	003e4282 	0x003e4282
1c008608:	8387e700 	0x8387e700
1c00860c:	ff007080 	0xff007080
1c008610:	27982810 	stptr.d	$r16,$r0,-26584(0x9828)
1c008614:	7f903cc4 	0x7f903cc4
1c008618:	00141290 	nor	$r16,$r20,$r4
1c00861c:	07186080 	0x07186080
1c008620:	03649808 	andi	$r8,$r0,0x926
1c008624:	c021c628 	0xc021c628
1c008628:	00c82611 	bstrpick.d	$r17,$r16,0x8,0x9

1c00862c <tfont32>:
1c00862c:	64252525 	bge	$r9,$r5,9508(0x2524) # 1c00ab50 <_sidata+0x23b4>
1c008630:	00000064 	0x00000064
1c008634:	4c206425 	jirl	$r5,$r1,8292(0x2064)
1c008638:	20207875 	ll.w	$r21,$r3,8312(0x2078)
1c00863c:	00202020 	div.w	$r0,$r1,$r8
1c008640:	85e52e31 	0x85e52e31
1c008644:	a785e789 	0xa785e789
1c008648:	e5a1a8e6 	0xe5a1a8e6
1c00864c:	00008fbc 	0x00008fbc
1c008650:	bbe92e32 	0xbbe92e32
1c008654:	979ae691 	0x979ae691
1c008658:	e5a1a8e6 	0xe5a1a8e6
1c00865c:	00008fbc 	0x00008fbc
1c008660:	b0e82e33 	0xb0e82e33
1c008664:	95afe883 	0x95afe883
1c008668:	e5a1a8e6 	0xe5a1a8e6
1c00866c:	00008fbc 	0x00008fbc
1c008670:	b8e42e34 	0xb8e42e34
1c008674:	9c8fe8bb 	0x9c8fe8bb
1c008678:	28958de5 	ld.w	$r5,$r15,1379(0x563)
1c00867c:	e5a1a8e6 	0xe5a1a8e6
1c008680:	86e58fbc 	0x86e58fbc
1c008684:	00002985 	cto.d	$r5,$r12
1c008688:	e5a9b8e6 	0xe5a9b8e6
1c00868c:	003aa6ba 	0x003aa6ba
1c008690:	e5bfb9e6 	0xe5bfb9e6
1c008694:	003aa6ba 	0x003aa6ba
1c008698:	e78985e5 	0xe78985e5
1c00869c:	003aa785 	0x003aa785
1c0086a0:	008384e2 	bstrins.d	$r2,$r7,0x3,0x21
1c0086a4:	00000025 	0x00000025
1c0086a8:	e78985e5 	0xe78985e5
1c0086ac:	a8e6a785 	0xa8e6a785
1c0086b0:	8fbce5a1 	0x8fbce5a1
1c0086b4:	0000003a 	0x0000003a
1c0086b8:	e7ab81e7 	0xe7ab81e7
1c0086bc:	0000be81 	0x0000be81
1c0086c0:	e79398e6 	0xe79398e6
1c0086c4:	00008387 	0x00008387
1c0086c8:	e589aee5 	0xe589aee5
1c0086cc:	0000a885 	0x0000a885
1c0086d0:	e691bbe9 	0xe691bbe9
1c0086d4:	a8e6979a 	0xa8e6979a
1c0086d8:	8fbce5a1 	0x8fbce5a1
1c0086dc:	0000003a 	0x0000003a
1c0086e0:	85e53e2d 	0x85e53e2d
1c0086e4:	a785e789 	0xa785e789
1c0086e8:	a9b8e63a 	0xa9b8e63a
1c0086ec:	0000003a 	0x0000003a
1c0086f0:	85e52020 	0x85e52020
1c0086f4:	a785e789 	0xa785e789
1c0086f8:	a9b8e63a 	0xa9b8e63a
1c0086fc:	0000003a 	0x0000003a
1c008700:	85e53e2d 	0x85e53e2d
1c008704:	a785e789 	0xa785e789
1c008708:	bfb9e63a 	0xbfb9e63a
1c00870c:	0000003a 	0x0000003a
1c008710:	85e52020 	0x85e52020
1c008714:	a785e789 	0xa785e789
1c008718:	bfb9e63a 	0xbfb9e63a
1c00871c:	0000003a 	0x0000003a
1c008720:	80e92e31 	0x80e92e31
1c008724:	a98be689 	0xa98be689
1c008728:	e52e3220 	0xe52e3220
1c00872c:	3320a08a 	xvstelm.w	$xr10,$r4,160(0xa0),0x0
1c008730:	8f87e52e 	0x8f87e52e
1c008734:	00000000 	0x00000000
1c008738:	bbe93e2d 	0xbbe93e2d
1c00873c:	979ae691 	0x979ae691
1c008740:	a9b8e63a 	0xa9b8e63a
1c008744:	0000003a 	0x0000003a
1c008748:	bbe92020 	0xbbe92020
1c00874c:	979ae691 	0x979ae691
1c008750:	a9b8e63a 	0xa9b8e63a
1c008754:	0000003a 	0x0000003a
1c008758:	bbe93e2d 	0xbbe93e2d
1c00875c:	979ae691 	0x979ae691
1c008760:	bfb9e63a 	0xbfb9e63a
1c008764:	0000003a 	0x0000003a
1c008768:	bbe92020 	0xbbe92020
1c00876c:	979ae691 	0x979ae691
1c008770:	bfb9e63a 	0xbfb9e63a
1c008774:	0000003a 	0x0000003a
1c008778:	bbe93e2d 	0xbbe93e2d
1c00877c:	979ae691 	0x979ae691
1c008780:	8985e53a 	0x8985e53a
1c008784:	0000003a 	0x0000003a
1c008788:	bbe92020 	0xbbe92020
1c00878c:	979ae691 	0x979ae691
1c008790:	8985e53a 	0x8985e53a
1c008794:	0000003a 	0x0000003a
1c008798:	0078754c 	bstrins.w	$r12,$r10,0x18,0x1d

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c0070c9 	pcaddu12i	$r9,902(0x386)
80001008:	8000101c 	0x8000101c
8000100c:	80000000 	0x80000000
80001010:	80000010 	0x80000010
80001014:	80000024 	0x80000024
80001018:	1c0070c0 	pcaddu12i	$r0,902(0x386)

8000101c <g_SystemFreq>:
8000101c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

Disassembly of section .bss:

80000000 <Lx_value>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <humidity_alarm_flag.2464>:
80000004:	00000000 	0x00000000

80000008 <debug_page.2470>:
80000008:	00000000 	0x00000000

8000000c <select_index.2471>:
8000000c:	00000000 	0x00000000

80000010 <display>:
	...

80000024 <BUF>:
80000024:	00000000 	0x00000000

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
