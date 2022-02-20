.include "asm/macro.inc"
.syntax unified

	thumb_func_start sub_0800A4A8
sub_0800A4A8: @ 0x0800A4A8
	push {r4, r5, lr}
	ldr r5, _0800A4D0 @ =gUnknown_0200E930
	adds r4, r5, #0
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800A4BC
	ldr r0, _0800A4D4 @ =gUnknown_0831AFF0
	bl sub_080050A8
_0800A4BC:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A4D0: .4byte gUnknown_0200E930
_0800A4D4: .4byte gUnknown_0831AFF0

	thumb_func_start sub_0800A4D8
sub_0800A4D8: @ 0x0800A4D8
	ldr r0, _0800A4E4 @ =gUnknown_0200C1A0
	ldr r1, _0800A4E8 @ =0x00000C24
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800A4E4: .4byte gUnknown_0200C1A0
_0800A4E8: .4byte 0x00000C24

	thumb_func_start sub_0800A4EC
sub_0800A4EC: @ 0x0800A4EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _0800A518 @ =gUnknown_0200CCC4
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #0x40
	bne _0800A504
	ldr r0, _0800A51C @ =gUnknown_0831B010
	bl sub_080050A8
_0800A504:
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r6
	str r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A518: .4byte gUnknown_0200CCC4
_0800A51C: .4byte gUnknown_0831B010

	thumb_func_start sub_0800A520
sub_0800A520: @ 0x0800A520
	push {r4, r5, lr}
	ldr r5, _0800A54C @ =gUnknown_0200CCC4
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800A536
	ldr r0, _0800A550 @ =gUnknown_0831B028
	bl sub_080050A8
_0800A536:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A54C: .4byte gUnknown_0200CCC4
_0800A550: .4byte gUnknown_0831B028

	thumb_func_start sub_0800A554
sub_0800A554: @ 0x0800A554
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsrs r6, r1, #2
	lsls r0, r6, #2
	subs r7, r1, r0
	movs r5, #0
	cmp r5, r6
	bhs _0800A586
_0800A566:
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x18
	ldrb r1, [r4, #2]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r4, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r4]
	orrs r0, r1
	adds r4, #4
	bl sub_0800A4EC
	adds r5, #1
	cmp r5, r6
	blo _0800A566
_0800A586:
	cmp r7, #0
	beq _0800A5AA
	movs r0, #0
	str r0, [sp]
	movs r5, #0
	cmp r5, r7
	bhs _0800A5A4
	mov r2, sp
_0800A596:
	ldrb r1, [r4]
	adds r4, #1
	adds r0, r5, r2
	strb r1, [r0]
	adds r5, #1
	cmp r5, r7
	blo _0800A596
_0800A5A4:
	ldr r0, [sp]
	bl sub_0800A4EC
_0800A5AA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A5B4
sub_0800A5B4: @ 0x0800A5B4
	push {r4, r5, r6, lr}
	sub sp, #4
	lsrs r6, r1, #2
	lsls r2, r6, #2
	subs r4, r1, r2
	adds r5, r0, r1
	cmp r4, #0
	beq _0800A5E0
	bl sub_0800A520
	str r0, [sp]
	subs r4, #1
	cmp r4, #0
	blt _0800A5E0
	mov r1, sp
_0800A5D2:
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r5, #1
	strb r0, [r5]
	subs r4, #1
	cmp r4, #0
	bge _0800A5D2
_0800A5E0:
	movs r4, #0
	cmp r4, r6
	bhs _0800A600
_0800A5E6:
	bl sub_0800A520
	subs r5, #4
	strb r0, [r5]
	lsrs r1, r0, #8
	strb r1, [r5, #1]
	lsrs r1, r0, #0x10
	strb r1, [r5, #2]
	lsrs r1, r0, #0x18
	strb r1, [r5, #3]
	adds r4, #1
	cmp r4, r6
	blo _0800A5E6
_0800A600:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A608
sub_0800A608: @ 0x0800A608
	ldr r1, _0800A624 @ =gUnknown_0200C1A0
	movs r2, #0xb2
	lsls r2, r2, #4
	adds r0, r1, r2
	movs r2, #0
	strb r2, [r0]
	ldr r3, _0800A628 @ =0x000027B0
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _0800A62C @ =0x00000C24
	adds r1, r1, r0
	strb r2, [r1]
	bx lr
	.align 2, 0
_0800A624: .4byte gUnknown_0200C1A0
_0800A628: .4byte 0x000027B0
_0800A62C: .4byte 0x00000C24

	thumb_func_start sub_0800A630
sub_0800A630: @ 0x0800A630
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r1, #1
	ldrb r2, [r1]
	adds r1, #1
	cmp r2, #0
	beq _0800A65A
	movs r5, #0x3f
	movs r4, #0x7e
_0800A642:
	ldrb r0, [r1]
	adds r1, #1
	eors r2, r5
	eors r0, r4
	strb r2, [r3]
	adds r3, #1
	strb r0, [r3]
	adds r3, #1
	ldrb r2, [r1]
	adds r1, #1
	cmp r2, #0
	bne _0800A642
_0800A65A:
	movs r0, #0
	strb r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A664
sub_0800A664: @ 0x0800A664
	push {r4, lr}
	bl sub_08011880
	adds r1, r0, #0
	movs r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0800A676
	movs r2, #1
_0800A676:
	cmp r2, #0
	bne _0800A67E
	adds r0, r1, #0
	b _0800A688
_0800A67E:
	ldr r4, _0800A690 @ =gUnknown_0200E954
	adds r0, r4, #0
	bl sub_0800A630
	adds r0, r4, #0
_0800A688:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A690: .4byte gUnknown_0200E954

	thumb_func_start sub_0800A694
sub_0800A694: @ 0x0800A694
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800A728 @ =0x00008340
	movs r3, #0
	cmp r0, r2
	bgt _0800A6A8
	adds r0, #0x3e
	cmp r2, r0
	bgt _0800A6A8
	movs r3, #1
_0800A6A8:
	cmp r3, #0
	beq _0800A6AE
	subs r2, #0xa1
_0800A6AE:
	ldr r0, _0800A728 @ =0x00008340
	movs r3, #0
	cmp r0, r1
	bgt _0800A6BE
	adds r0, #0x3e
	cmp r1, r0
	bgt _0800A6BE
	movs r3, #1
_0800A6BE:
	cmp r3, #0
	beq _0800A6C4
	subs r1, #0xa1
_0800A6C4:
	ldr r0, _0800A72C @ =0x00008380
	movs r3, #0
	cmp r0, r2
	bgt _0800A6D4
	adds r0, #0x13
	cmp r2, r0
	bgt _0800A6D4
	movs r3, #1
_0800A6D4:
	cmp r3, #0
	beq _0800A6DA
	subs r2, #0xa2
_0800A6DA:
	ldr r0, _0800A72C @ =0x00008380
	movs r3, #0
	cmp r0, r1
	bgt _0800A6EA
	adds r0, #0x13
	cmp r1, r0
	bgt _0800A6EA
	movs r3, #1
_0800A6EA:
	cmp r3, #0
	beq _0800A6F0
	subs r1, #0xa2
_0800A6F0:
	ldr r0, _0800A730 @ =0x00008281
	movs r3, #0
	cmp r0, r2
	bgt _0800A700
	adds r0, #0x19
	cmp r2, r0
	bgt _0800A700
	movs r3, #1
_0800A700:
	cmp r3, #0
	beq _0800A706
	subs r2, #0x21
_0800A706:
	ldr r0, _0800A730 @ =0x00008281
	movs r3, #0
	cmp r0, r1
	bgt _0800A716
	adds r0, #0x19
	cmp r1, r0
	bgt _0800A716
	movs r3, #1
_0800A716:
	cmp r3, #0
	beq _0800A71C
	subs r1, #0x21
_0800A71C:
	movs r0, #0
	cmp r2, r1
	bne _0800A724
	movs r0, #1
_0800A724:
	pop {r1}
	bx r1
	.align 2, 0
_0800A728: .4byte 0x00008340
_0800A72C: .4byte 0x00008380
_0800A730: .4byte 0x00008281

	thumb_func_start sub_0800A734
sub_0800A734: @ 0x0800A734
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
_0800A73A:
	ldrb r0, [r5]
	adds r5, #1
	ldrb r3, [r4]
	adds r4, #1
	cmp r0, #0
	bne _0800A74E
	cmp r3, #0
	bne _0800A770
	movs r0, #1
	b _0800A772
_0800A74E:
	cmp r0, #0x7f
	bhi _0800A758
	cmp r0, r3
	beq _0800A73A
	b _0800A770
_0800A758:
	ldrb r1, [r5]
	adds r5, #1
	ldrb r2, [r4]
	adds r4, #1
	lsls r0, r0, #8
	orrs r0, r1
	lsls r1, r3, #8
	orrs r1, r2
	bl sub_0800A694
	cmp r0, #0
	bne _0800A73A
_0800A770:
	movs r0, #0
_0800A772:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A778
sub_0800A778: @ 0x0800A778
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, _0800A7B4 @ =gUnknown_0200E9C4
	str r3, [r4]
	ldrb r0, [r3, #4]
	adds r2, r3, #5
	movs r1, #2
	cmp r0, #0
	beq _0800A78C
	movs r1, #3
_0800A78C:
	strb r1, [r4, #4]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	ldrb r1, [r3, #5]
	orrs r0, r1
	strh r0, [r4, #6]
	adds r2, r3, #7
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	ldrb r0, [r3, #7]
	orrs r1, r0
	strh r1, [r4, #8]
	adds r2, #2
	str r2, [r4, #0xc]
	ldrb r0, [r4, #4]
	muls r0, r1, r0
	strh r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A7B4: .4byte gUnknown_0200E9C4

	thumb_func_start sub_0800A7B8
sub_0800A7B8: @ 0x0800A7B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _0800A7F0 @ =gUnknown_0200E9C4
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0800A7CC
	ldr r0, _0800A7F4 @ =gUnknown_0831B048
	bl sub_080050A8
_0800A7CC:
	ldrh r0, [r4, #0x10]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	ldrb r2, [r4, #4]
	adds r1, r2, #0
	muls r1, r6, r1
	adds r1, r0, r1
	cmp r2, #2
	bne _0800A7F8
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	ldrb r1, [r1]
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _0800A818
	.align 2, 0
_0800A7F0: .4byte gUnknown_0200E9C4
_0800A7F4: .4byte gUnknown_0831B048
_0800A7F8:
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x10
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	orrs r2, r0
	ldrb r0, [r1]
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0800A816
	movs r0, #0xff
	lsls r0, r0, #0x18
	orrs r2, r0
_0800A816:
	adds r0, r2, #0
_0800A818:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800A820
sub_0800A820: @ 0x0800A820
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _0800A854 @ =gUnknown_0200E9C4
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0800A834
	ldr r0, _0800A858 @ =gUnknown_0831B06C
	bl sub_080050A8
_0800A834:
	ldrh r0, [r4, #0x10]
	muls r0, r5, r0
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	ldrb r0, [r4, #4]
	muls r0, r6, r0
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	ldrb r1, [r1]
	orrs r0, r1
	bl sub_0800A664
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800A854: .4byte gUnknown_0200E9C4
_0800A858: .4byte gUnknown_0831B06C

	thumb_func_start sub_0800A85C
sub_0800A85C: @ 0x0800A85C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r6, _0800A880 @ =gUnknown_0200E9C4
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0800A870
	ldr r0, _0800A884 @ =gUnknown_0831B094
	bl sub_080050A8
_0800A870:
	ldrb r0, [r6, #4]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r0, [r6, #0xc]
	adds r4, r0, r1
	movs r5, #0
	b _0800A8A8
	.align 2, 0
_0800A880: .4byte gUnknown_0200E9C4
_0800A884: .4byte gUnknown_0831B094
_0800A888:
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	ldrb r1, [r4]
	orrs r0, r1
	bl sub_0800A664
	adds r1, r7, #0
	bl sub_08000D80
	cmp r0, #0
	beq _0800A8A2
	adds r0, r5, #0
	b _0800A8B2
_0800A8A2:
	ldrh r0, [r6, #0x10]
	adds r4, r4, r0
	adds r5, #1
_0800A8A8:
	ldrh r0, [r6, #6]
	cmp r5, r0
	blo _0800A888
	movs r0, #1
	rsbs r0, r0, #0
_0800A8B2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A8B8
sub_0800A8B8: @ 0x0800A8B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r6, _0800A8DC @ =gUnknown_0200E9C4
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _0800A8CC
	ldr r0, _0800A8E0 @ =gUnknown_0831B0BC
	bl sub_080050A8
_0800A8CC:
	ldrb r0, [r6, #4]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r0, [r6, #0xc]
	adds r4, r0, r1
	movs r5, #0
	b _0800A904
	.align 2, 0
_0800A8DC: .4byte gUnknown_0200E9C4
_0800A8E0: .4byte gUnknown_0831B0BC
_0800A8E4:
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	ldrb r1, [r4]
	orrs r0, r1
	bl sub_0800A664
	adds r1, r7, #0
	bl sub_0800A734
	cmp r0, #0
	beq _0800A8FE
	adds r0, r5, #0
	b _0800A90E
_0800A8FE:
	ldrh r0, [r6, #0x10]
	adds r4, r4, r0
	adds r5, #1
_0800A904:
	ldrh r0, [r6, #6]
	cmp r5, r0
	blo _0800A8E4
	movs r0, #1
	rsbs r0, r0, #0
_0800A90E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800A914
sub_0800A914: @ 0x0800A914
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	mov sb, r2
	adds r0, #0x2f
	ldrb r0, [r0]
	mov r2, r8
	adds r5, r2, r0
	adds r6, r1, #0
	movs r0, #0x2e
	add r0, r8
	mov sl, r0
	movs r7, #0
	b _0800A97C
_0800A936:
	cmp r4, #0x24
	bne _0800A93E
	adds r6, #2
	b _0800A97C
_0800A93E:
	cmp r5, sl
	blo _0800A948
	ldr r0, _0800A964 @ =gUnknown_0831B0E4
	bl sub_0800A9BC
_0800A948:
	cmp r4, #0x23
	beq _0800A958
	ldr r0, _0800A968 @ =gUnknown_083D6088
	lsrs r1, r4, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800A96C
_0800A958:
	strb r4, [r5]
	ldrb r0, [r6, #1]
	strb r0, [r5, #1]
	adds r6, #2
	adds r5, #2
	b _0800A972
	.align 2, 0
_0800A964: .4byte gUnknown_0831B0E4
_0800A968: .4byte gUnknown_083D6088
_0800A96C:
	strb r4, [r5]
	adds r6, #1
	adds r5, #1
_0800A972:
	adds r7, #1
	mov r4, r8
	adds r4, #0x2f
	cmp r7, sb
	beq _0800A9A0
_0800A97C:
	ldrb r4, [r6]
	cmp r4, #0
	bne _0800A936
	mov r4, r8
	adds r4, #0x2f
	cmp r7, sb
	bhs _0800A9A0
	movs r6, #0x20
_0800A98C:
	cmp r5, sl
	blo _0800A996
	ldr r0, _0800A9B8 @ =gUnknown_0831B0E4
	bl sub_0800A9BC
_0800A996:
	strb r6, [r5]
	adds r5, #1
	adds r7, #1
	cmp r7, sb
	blo _0800A98C
_0800A9A0:
	movs r0, #0
	strb r0, [r5]
	mov r1, r8
	subs r0, r5, r1
	strb r0, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A9B8: .4byte gUnknown_0831B0E4

	thumb_func_start sub_0800A9BC
sub_0800A9BC: @ 0x0800A9BC
	push {lr}
	sub sp, #0x100
	ldr r1, _0800A9D8 @ =gUnknown_0831B0F8
	mov r0, sp
	mov r2, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x100
	pop {r0}
	bx r0
	.align 2, 0
_0800A9D8: .4byte gUnknown_0831B0F8

	thumb_func_start sub_0800A9DC
sub_0800A9DC: @ 0x0800A9DC
	push {lr}
	ldr r0, _0800A9E8 @ =gUnknown_0831B118
	bl sub_0800A9BC
	pop {r0}
	bx r0
	.align 2, 0
_0800A9E8: .4byte gUnknown_0831B118

	thumb_func_start sub_0800A9EC
sub_0800A9EC: @ 0x0800A9EC
	push {r4, r5, r6, r7, lr}
	ldr r3, _0800AA20 @ =gUnknown_020132E0
	movs r2, #0
	ldr r7, _0800AA24 @ =0x0000017F
	movs r6, #0
	movs r5, #0x58
	movs r4, #1
	adds r1, r3, #0
	adds r1, #0x2f
	adds r0, r3, #0
_0800AA00:
	strb r5, [r0]
	strb r6, [r0, #1]
	strb r4, [r1]
	adds r1, #0x30
	adds r0, #0x30
	adds r2, #1
	cmp r2, r7
	bls _0800AA00
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r3, r1
	str r3, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AA20: .4byte gUnknown_020132E0
_0800AA24: .4byte 0x0000017F

	thumb_func_start sub_0800AA28
sub_0800AA28: @ 0x0800AA28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800AA50 @ =gUnknown_020132E0
	ldr r0, _0800AA54 @ =0x0000017F
	cmp r4, r0
	bls _0800AA3A
	ldr r0, _0800AA58 @ =gUnknown_0831B134
	bl sub_0800A9BC
_0800AA3A:
	movs r0, #0x90
	lsls r0, r0, #7
	adds r1, r5, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r5
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AA50: .4byte gUnknown_020132E0
_0800AA54: .4byte 0x0000017F
_0800AA58: .4byte gUnknown_0831B134

	thumb_func_start sub_0800AA5C
sub_0800AA5C: @ 0x0800AA5C
	push {lr}
	ldr r0, _0800AA78 @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0800AA72
	bl sub_0800A9DC
	movs r0, #0
_0800AA72:
	pop {r1}
	bx r1
	.align 2, 0
_0800AA78: .4byte gUnknown_020132E0

	thumb_func_start sub_0800AA7C
sub_0800AA7C: @ 0x0800AA7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800AA9C @ =0x0000017F
	cmp r4, r0
	bls _0800AA8C
	ldr r0, _0800AAA0 @ =gUnknown_0831B134
	bl sub_0800A9BC
_0800AA8C:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _0800AAA4 @ =gUnknown_020132E0
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800AA9C: .4byte 0x0000017F
_0800AAA0: .4byte gUnknown_0831B134
_0800AAA4: .4byte gUnknown_020132E0

	thumb_func_start sub_0800AAA8
sub_0800AAA8: @ 0x0800AAA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0800AAD8 @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _0800AAC0
	bl sub_0800A9DC
_0800AAC0:
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0800A914
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AAD8: .4byte gUnknown_020132E0

	thumb_func_start sub_0800AADC
sub_0800AADC: @ 0x0800AADC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0800AAFC @ =0x0000017F
	cmp r4, r0
	bls _0800AAEE
	ldr r0, _0800AB00 @ =gUnknown_0831B134
	bl sub_0800A9BC
_0800AAEE:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _0800AB04 @ =gUnknown_020132E0
	adds r6, r0, r1
	movs r7, #0
	b _0800AB18
	.align 2, 0
_0800AAFC: .4byte 0x0000017F
_0800AB00: .4byte gUnknown_0831B134
_0800AB04: .4byte gUnknown_020132E0
_0800AB08:
	cmp r7, #0x2d
	bls _0800AB12
	ldr r0, _0800AB2C @ =gUnknown_0831B140
	bl sub_080050A8
_0800AB12:
	strb r4, [r6]
	adds r6, #1
	adds r7, #1
_0800AB18:
	ldrb r4, [r5]
	adds r5, #1
	cmp r4, #0
	bne _0800AB08
	movs r0, #0
	strb r0, [r6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB2C: .4byte gUnknown_0831B140

	thumb_func_start sub_0800AB30
sub_0800AB30: @ 0x0800AB30
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0800AB58 @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _0800AB48
	bl sub_0800A9DC
_0800AB48:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0800A914
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB58: .4byte gUnknown_020132E0

	thumb_func_start sub_0800AB5C
sub_0800AB5C: @ 0x0800AB5C
	push {r4, r5, r6, lr}
	sub sp, #0x4c
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, _0800AB9C @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	bne _0800AB76
	bl sub_0800A9DC
_0800AB76:
	cmp r4, #0x20
	bls _0800AB80
	ldr r0, _0800ABA0 @ =gUnknown_0831B15C
	bl sub_080050A8
_0800AB80:
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0800D0D0
	adds r0, r5, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_0800A914
	add sp, #0x4c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB9C: .4byte gUnknown_020132E0
_0800ABA0: .4byte gUnknown_0831B15C

	thumb_func_start sub_0800ABA4
sub_0800ABA4: @ 0x0800ABA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x40
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _0800ABF4 @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r7, #0
	bne _0800ABC4
	bl sub_0800A9DC
_0800ABC4:
	ldr r1, _0800ABF8 @ =gUnknown_0831B180
	mov r0, sp
	adds r2, r4, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_0803E06C
	adds r4, r0, #0
	cmp r4, r8
	blo _0800ABFC
	mov r2, r8
	subs r0, r4, r2
	add r4, sp, #0x10
	mov r2, sp
	adds r1, r2, r0
	adds r0, r4, #0
	bl sub_0803E020
	mov sb, r4
	adds r6, r7, #0
	adds r6, #0x2f
	b _0800AC34
	.align 2, 0
_0800ABF4: .4byte gUnknown_020132E0
_0800ABF8: .4byte gUnknown_0831B180
_0800ABFC:
	mov r1, r8
	subs r0, r1, r4
	mov r3, sp
	add r1, sp, #0x10
	movs r2, #0
	mov sb, r1
	adds r6, r7, #0
	adds r6, #0x2f
	cmp r2, r0
	bhs _0800AC1C
	movs r5, #0x20
_0800AC12:
	strb r5, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, r0
	blo _0800AC12
_0800AC1C:
	movs r2, #0
	cmp r2, r4
	bhs _0800AC30
_0800AC22:
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r1, #1
	adds r2, #1
	cmp r2, r4
	blo _0800AC22
_0800AC30:
	movs r0, #0
	strb r0, [r1]
_0800AC34:
	ldrb r0, [r6]
	adds r5, r7, r0
	add r0, r8
	adds r0, #1
	cmp r0, #0x2f
	bls _0800AC46
	ldr r0, _0800AC64 @ =gUnknown_0831B0E4
	bl sub_0800A9BC
_0800AC46:
	adds r0, r5, #0
	mov r1, sb
	bl sub_0803E020
	ldrb r0, [r6]
	add r0, r8
	strb r0, [r6]
	add sp, #0x40
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC64: .4byte gUnknown_0831B0E4

	thumb_func_start sub_0800AC68
sub_0800AC68: @ 0x0800AC68
	push {lr}
	ldr r1, _0800AC80 @ =gUnknown_0200E594
	ldr r0, _0800AC84 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	bl sub_080006F8
	pop {r0}
	bx r0
	.align 2, 0
_0800AC80: .4byte gUnknown_0200E594
_0800AC84: .4byte 0x0000FFFF

	thumb_func_start sub_0800AC88
sub_0800AC88: @ 0x0800AC88
	push {lr}
	subs r0, #1
	cmp r0, #1
	bhi _0800AC96
	adds r0, r1, #0
	bl sub_0800ACD0
_0800AC96:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800AC9C
sub_0800AC9C: @ 0x0800AC9C
	push {lr}
	cmp r0, #1
	beq _0800ACA6
	cmp r0, #3
	bne _0800ACAC
_0800ACA6:
	adds r0, r1, #0
	bl sub_0800AD4C
_0800ACAC:
	pop {r0}
	bx r0

	thumb_func_start sub_0800ACB0
sub_0800ACB0: @ 0x0800ACB0
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0800ACC8 @ =gUnknown_0200E594
	movs r0, #0
	bl sub_08000694
	ldr r0, _0800ACCC @ =0x0000FFFF
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ACC8: .4byte gUnknown_0200E594
_0800ACCC: .4byte 0x0000FFFF

	thumb_func_start sub_0800ACD0
sub_0800ACD0: @ 0x0800ACD0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800ACE4 @ =gUnknown_0200E594
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800ACEC
	ldr r0, _0800ACE8 @ =0x0000FFFF
	strh r0, [r5]
	b _0800ACFE
	.align 2, 0
_0800ACE4: .4byte gUnknown_0200E594
_0800ACE8: .4byte 0x0000FFFF
_0800ACEC:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r4, r0
	beq _0800ACFE
	movs r0, #0
	adds r1, r4, #0
	bl sub_08000634
	strh r4, [r5]
_0800ACFE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800AD04
sub_0800AD04: @ 0x0800AD04
	push {r4, lr}
	ldr r4, _0800AD20 @ =gUnknown_0200E594
	movs r0, #0
	bl sub_0800065C
	ldrh r0, [r4]
	strh r0, [r4, #2]
	ldr r2, _0800AD24 @ =0x0000FFFF
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD20: .4byte gUnknown_0200E594
_0800AD24: .4byte 0x0000FFFF

	thumb_func_start sub_0800AD28
sub_0800AD28: @ 0x0800AD28
	push {r4, lr}
	ldr r4, _0800AD48 @ =gUnknown_0200E594
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800AD42
	movs r0, #0
	bl sub_08000678
	ldrh r0, [r4, #2]
	strh r0, [r4]
_0800AD42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD48: .4byte gUnknown_0200E594

	thumb_func_start sub_0800AD4C
sub_0800AD4C: @ 0x0800AD4C
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _0800AD74 @ =gUnknown_0200E594
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800AD6E
	ldr r0, _0800AD78 @ =gUnknown_083E7C5C
	adds r0, r2, r0
	ldrb r1, [r0]
	movs r0, #0
	bl sub_08000694
	ldr r0, _0800AD7C @ =0x0000FFFF
	strh r0, [r4]
_0800AD6E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD74: .4byte gUnknown_0200E594
_0800AD78: .4byte gUnknown_083E7C5C
_0800AD7C: .4byte 0x0000FFFF

	thumb_func_start sub_0800AD80
sub_0800AD80: @ 0x0800AD80
	push {lr}
	adds r1, r0, #0
	lsls r0, r1, #8
	movs r1, #0x64
	bl sub_0803D34C
	adds r1, r0, #0
	ldr r0, _0800ADA4 @ =0x000003FF
	cmp r0, r1
	ble _0800AD96
	adds r0, r1, #0
_0800AD96:
	adds r1, r0, #0
	movs r0, #0
	bl sub_080006B4
	pop {r0}
	bx r0
	.align 2, 0
_0800ADA4: .4byte 0x000003FF

	thumb_func_start sub_0800ADA8
sub_0800ADA8: @ 0x0800ADA8
	push {r4, r5, lr}
	ldr r5, _0800ADC8 @ =gUnknown_0200E594
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0800ADC2
	movs r0, #0
	bl sub_080006DC
	cmp r0, #0
	bne _0800ADCC
_0800ADC2:
	adds r0, r4, #0
	b _0800ADD0
	.align 2, 0
_0800ADC8: .4byte gUnknown_0200E594
_0800ADCC:
	movs r1, #0
	ldrsh r0, [r5, r1]
_0800ADD0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800ADD8
sub_0800ADD8: @ 0x0800ADD8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	adds r1, r4, #0
	bl sub_08000634
	ldr r0, _0800ADF4 @ =gUnknown_0200C1A0
	ldr r1, _0800ADF8 @ =0x000023F8
	adds r0, r0, r1
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ADF4: .4byte gUnknown_0200C1A0
_0800ADF8: .4byte 0x000023F8

	thumb_func_start sub_0800ADFC
sub_0800ADFC: @ 0x0800ADFC
	push {lr}
	movs r0, #1
	bl sub_0800065C
	ldr r0, _0800AE14 @ =gUnknown_0200C1A0
	ldr r1, _0800AE18 @ =0x000023F8
	adds r0, r0, r1
	ldr r1, _0800AE1C @ =0x0000FFFF
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0800AE14: .4byte gUnknown_0200C1A0
_0800AE18: .4byte 0x000023F8
_0800AE1C: .4byte 0x0000FFFF

	thumb_func_start sub_0800AE20
sub_0800AE20: @ 0x0800AE20
	push {lr}
	ldr r1, _0800AE3C @ =gUnknown_083E7C5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	bl sub_08000694
	ldr r0, _0800AE40 @ =gUnknown_0200C1A0
	ldr r1, _0800AE44 @ =0x000023F8
	adds r0, r0, r1
	ldr r1, _0800AE48 @ =0x0000FFFF
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0800AE3C: .4byte gUnknown_083E7C5C
_0800AE40: .4byte gUnknown_0200C1A0
_0800AE44: .4byte 0x000023F8
_0800AE48: .4byte 0x0000FFFF

	thumb_func_start sub_0800AE4C
sub_0800AE4C: @ 0x0800AE4C
	push {r4, r5, lr}
	ldr r5, _0800AE6C @ =gUnknown_0200E594
	movs r1, #4
	ldrsh r0, [r5, r1]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _0800AE66
	movs r0, #1
	bl sub_080006DC
	cmp r0, #0
	bne _0800AE70
_0800AE66:
	adds r0, r4, #0
	b _0800AE74
	.align 2, 0
_0800AE6C: .4byte gUnknown_0200E594
_0800AE70:
	movs r1, #4
	ldrsh r0, [r5, r1]
_0800AE74:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800AE7C
sub_0800AE7C: @ 0x0800AE7C
	push {lr}
	adds r1, r0, #0
	movs r0, #2
	bl sub_08000634
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800AE8C
sub_0800AE8C: @ 0x0800AE8C
	push {lr}
	movs r0, #2
	bl sub_0800065C
	pop {r0}
	bx r0

	thumb_func_start sub_0800AE98
sub_0800AE98: @ 0x0800AE98
	push {lr}
	ldr r1, _0800AEAC @ =gUnknown_083E7C5C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	bl sub_08000694
	pop {r0}
	bx r0
	.align 2, 0
_0800AEAC: .4byte gUnknown_083E7C5C

	thumb_func_start sub_0800AEB0
sub_0800AEB0: @ 0x0800AEB0
	push {r4, lr}
	ldr r4, _0800AED8 @ =gUnknown_0200E594
	bl sub_080006F8
	movs r0, #0
	bl sub_0800065C
	ldrh r0, [r4]
	strh r0, [r4, #2]
	ldr r2, _0800AEDC @ =0x0000FFFF
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldrh r0, [r4, #4]
	orrs r0, r1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AED8: .4byte gUnknown_0200E594
_0800AEDC: .4byte 0x0000FFFF

	thumb_func_start sub_0800AEE0
sub_0800AEE0: @ 0x0800AEE0
	push {r4, lr}
	ldr r4, _0800AF00 @ =gUnknown_0200E594
	ldr r1, _0800AF04 @ =gUnknown_083E7C5C
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08000704
	ldr r0, _0800AF08 @ =0x0000FFFF
	strh r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF00: .4byte gUnknown_0200E594
_0800AF04: .4byte gUnknown_083E7C5C
_0800AF08: .4byte 0x0000FFFF

	thumb_func_start sub_0800AF0C
sub_0800AF0C: @ 0x0800AF0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	ldr r2, _0800AFA4 @ =gUnknown_083E7C5F
	movs r3, #0x34
	ldrsh r0, [r0, r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	mov sl, r0
	mov r4, sb
	ldrh r2, [r4, #0x36]
	mov r5, sp
	movs r4, #0x1f
	adds r0, r2, #0
	ands r0, r4
	mov r3, sp
	strb r0, [r3]
	lsrs r0, r2, #5
	ands r0, r4
	strb r0, [r5, #1]
	lsrs r2, r2, #0xa
	ands r2, r4
	strb r2, [r5, #2]
	movs r7, #1
	add r6, sp, #4
	mov r8, r4
	add r4, sp, #8
	adds r5, r1, #2
_0800AF4C:
	lsls r1, r7, #1
	mov r0, sb
	adds r0, #0x36
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	add r1, sp, #4
	strb r0, [r1]
	lsrs r0, r2, #5
	mov r3, r8
	ands r0, r3
	strb r0, [r6, #1]
	lsrs r2, r2, #0xa
	ands r2, r3
	strb r2, [r6, #2]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r6, #0
	mov r3, sl
	bl sub_0800A3BC
	ldrb r1, [r4, #2]
	lsls r1, r1, #0xa
	ldrb r0, [r4, #1]
	lsls r0, r0, #5
	orrs r1, r0
	add r0, sp, #8
	ldrb r0, [r0]
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	adds r7, #1
	cmp r7, #3
	bls _0800AF4C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AFA4: .4byte gUnknown_083E7C5F

	thumb_func_start sub_0800AFA8
sub_0800AFA8: @ 0x0800AFA8
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _0800AFD0 @ =gUnknown_02001DBC
	ldrb r0, [r0]
	ldr r4, _0800AFD4 @ =0x05000098
	cmp r0, #0
	beq _0800AFB8
	subs r4, #0x18
_0800AFB8:
	cmp r1, #0
	bne _0800AFD8
	ldrh r0, [r4]
	strh r0, [r2, #0x36]
	ldrh r0, [r4, #2]
	strh r0, [r2, #0x38]
	ldrh r0, [r4, #4]
	strh r0, [r2, #0x3a]
	ldrh r0, [r4, #6]
	strh r0, [r2, #0x3c]
	strh r1, [r2, #0x34]
	b _0800B01E
	.align 2, 0
_0800AFD0: .4byte gUnknown_02001DBC
_0800AFD4: .4byte 0x05000098
_0800AFD8:
	cmp r1, #1
	bne _0800B002
	ldrh r5, [r2, #0x34]
	lsls r3, r5, #0x10
	asrs r1, r3, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B01E
	lsrs r0, r3, #0x10
	cmp r0, #0x3b
	beq _0800AFF4
	adds r0, r5, #1
	b _0800AFF6
_0800AFF4:
	movs r0, #0
_0800AFF6:
	strh r0, [r2, #0x34]
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_0800AF0C
	b _0800B01E
_0800B002:
	cmp r1, #2
	bne _0800B01E
	movs r0, #0x34
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B01E
	ldrh r0, [r2, #0x38]
	strh r0, [r4, #2]
	ldrh r0, [r2, #0x3a]
	strh r0, [r4, #4]
	ldrh r0, [r2, #0x3c]
	strh r0, [r4, #6]
_0800B01E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B024
sub_0800B024: @ 0x0800B024
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r3, #0
	movs r1, #0
_0800B02E:
	mov r2, sp
	adds r0, r2, r3
	strb r1, [r0]
	adds r3, #1
	cmp r3, #0xf
	bls _0800B02E
	bl sub_08010118
	adds r1, r0, #0
	mov r0, sp
	bl sub_0803E020
	movs r3, #0
	adds r4, #0x44
	mov r2, sp
_0800B04C:
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r0, r1
	stm r4!, {r0}
	adds r2, #2
	adds r3, #1
	cmp r3, #6
	bls _0800B04C
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B068
sub_0800B068: @ 0x0800B068
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08010154
	adds r2, r0, #0
	cmp r4, #0
	beq _0800B07E
	movs r1, #0xa0
	lsls r1, r1, #1
	b _0800B082
_0800B07E:
	movs r1, #0xd2
	lsls r1, r1, #2
_0800B082:
	adds r0, r5, r1
	movs r4, #0
	movs r5, #0xff
	adds r3, r0, #0
_0800B08A:
	ldr r1, [r3, #4]
	adds r0, r1, #0
	ands r0, r5
	strb r0, [r2]
	adds r2, #1
	lsrs r1, r1, #8
	ands r1, r5
	strb r1, [r2]
	adds r2, #1
	adds r3, #4
	adds r4, #1
	cmp r4, #6
	bls _0800B08A
	movs r0, #0
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B0B0
sub_0800B0B0: @ 0x0800B0B0
	push {r4, r5, lr}
	cmp r1, #0
	beq _0800B0BC
	movs r1, #0xd2
	lsls r1, r1, #2
	b _0800B0C0
_0800B0BC:
	movs r1, #0xa0
	lsls r1, r1, #1
_0800B0C0:
	adds r5, r0, r1
	movs r0, #6
	bl sub_08010170
	adds r4, r0, #0
	movs r0, #5
	bl sub_08010170
	lsls r4, r4, #8
	orrs r4, r0
	str r4, [r5, #4]
	movs r0, #8
	bl sub_08010170
	adds r4, r0, #0
	movs r0, #7
	bl sub_08010170
	lsls r4, r4, #8
	orrs r4, r0
	str r4, [r5, #8]
	movs r0, #9
	bl sub_08010170
	str r0, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B0F8
sub_0800B0F8: @ 0x0800B0F8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	cmp r1, #0
	beq _0800B108
	movs r1, #0xa0
	lsls r1, r1, #1
	b _0800B10C
_0800B108:
	movs r1, #0xd2
	lsls r1, r1, #2
_0800B10C:
	adds r0, r0, r1
	ldr r4, [r0, #4]
	ldr r5, [r0, #8]
	ldr r0, [r0, #0xc]
	mov r8, r0
	movs r6, #0xff
	adds r1, r4, #0
	ands r1, r6
	movs r0, #0xa
	bl sub_08010180
	lsrs r4, r4, #8
	ands r4, r6
	movs r0, #0xb
	adds r1, r4, #0
	bl sub_08010180
	adds r1, r5, #0
	ands r1, r6
	movs r0, #0xc
	bl sub_08010180
	lsrs r5, r5, #8
	ands r5, r6
	movs r0, #0xd
	adds r1, r5, #0
	bl sub_08010180
	mov r0, r8
	ands r0, r6
	mov r8, r0
	movs r0, #0xe
	mov r1, r8
	bl sub_08010180
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B15C
sub_0800B15C: @ 0x0800B15C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #9]
	cmp r0, #0
	bne _0800B1A8
	ldrb r3, [r2, #0xa]
	ldrb r0, [r2, #0x13]
	cmp r0, #1
	bne _0800B18C
	movs r1, #1
	subs r3, #2
	cmp r1, r3
	bhi _0800B1A8
	adds r5, r2, #0
	adds r5, #0x44
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r4, r2, r0
_0800B180:
	ldm r5!, {r0}
	stm r4!, {r0}
	adds r1, #1
	cmp r1, r3
	bls _0800B180
	b _0800B1A8
_0800B18C:
	movs r1, #1
	subs r3, #2
	cmp r1, r3
	bhi _0800B1A8
	adds r5, r2, #0
	adds r5, #0x44
	movs r0, #0xd3
	lsls r0, r0, #2
	adds r4, r2, r0
_0800B19E:
	ldm r5!, {r0}
	stm r4!, {r0}
	adds r1, #1
	cmp r1, r3
	bls _0800B19E
_0800B1A8:
	ldr r3, [r2, #0x18]
	ldr r4, [r2, #0x1c]
	ldrb r0, [r2, #0x13]
	cmp r0, #1
	bne _0800B1C4
	movs r5, #0
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r4, #0x80
	lsls r4, r4, #0x18
	adds r0, r3, r4
	str r0, [r1]
	b _0800B1D8
_0800B1C4:
	movs r5, #1
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r2, r0
	str r3, [r1]
	ldrb r0, [r2, #0xa]
	subs r0, #1
	lsls r0, r0, #2
	adds r1, r1, r0
	str r4, [r1]
_0800B1D8:
	ldrb r0, [r2, #8]
	cmp r0, #2
	bne _0800B1FA
	cmp r5, #0
	bne _0800B1FA
	movs r6, #0x18
	movs r4, #0
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r5, r2, r0
_0800B1EC:
	adds r0, r6, r4
	bl sub_08010170
	stm r5!, {r0}
	adds r4, #1
	cmp r4, #5
	bls _0800B1EC
_0800B1FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B200
sub_0800B200: @ 0x0800B200
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	bl sub_0803D380
	ldr r0, [r6, #0x2c]
	adds r0, #1
	str r0, [r6, #0x2c]
	bl sub_08000BC0
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _0800B24A
	ldr r0, _0800B29C @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B24A
	ldrb r0, [r6, #8]
	cmp r0, #4
	bne _0800B240
	movs r2, #0x34
	ldrsh r1, [r6, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B24A
_0800B240:
	adds r1, r6, #0
	adds r1, #0x31
	movs r0, #1
	strb r0, [r1]
	mov r8, r0
_0800B24A:
	ldrb r0, [r6, #0x10]
	cmp r0, #1
	bne _0800B262
	ldr r1, _0800B2A0 @ =gUnknown_02001D0C
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0800B262
	adds r0, #2
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_0800A124
_0800B262:
	ldrb r0, [r6, #0x10]
	movs r1, #0
	cmp r0, #1
	ble _0800B270
	cmp r0, #3
	bgt _0800B270
	movs r1, #1
_0800B270:
	cmp r1, #0
	beq _0800B2C6
	ldr r4, _0800B2A0 @ =gUnknown_02001D0C
	ldrb r1, [r4]
	adds r0, r1, #0
	cmp r0, #0x10
	bne _0800B2A4
	ldr r0, [r6, #0x2c]
	ldrb r2, [r6, #0x11]
	cmp r0, r2
	bne _0800B2C6
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800B2C6
	subs r0, r1, #2
	strb r0, [r4]
	ldrb r0, [r4]
	bl sub_0800A124
	b _0800B2C6
	.align 2, 0
_0800B29C: .4byte gUnknown_02000020
_0800B2A0: .4byte gUnknown_02001D0C
_0800B2A4:
	cmp r0, #0
	beq _0800B2C6
	subs r0, r1, #2
	strb r0, [r4]
	ldrb r0, [r4]
	bl sub_0800A124
	ldrb r0, [r6, #0x10]
	cmp r0, #3
	bne _0800B2C6
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800B2C6
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800AFA8
_0800B2C6:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0800AFA8
	ldrb r0, [r6, #0x12]
	cmp r0, #0
	beq _0800B2DA
	adds r0, r6, #0
	bl sub_0800BD94
_0800B2DA:
	ldrb r0, [r6, #8]
	cmp r0, #4
	bne _0800B33E
	movs r4, #0
	ldr r0, [r6, #0x2c]
	ldrb r1, [r6, #0x11]
	cmp r0, r1
	bne _0800B2F6
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800B2F6
	movs r4, #1
_0800B2F6:
	adds r0, r6, #0
	adds r0, #0x32
	ldrb r3, [r0]
	movs r2, #0x34
	ldrsh r1, [r6, r2]
	mvns r1, r1
	rsbs r2, r1, #0
	orrs r2, r1
	adds r7, r0, #0
	cmp r2, #0
	blt _0800B33A
	cmp r4, #0
	bne _0800B314
	cmp r3, #0
	beq _0800B33A
_0800B314:
	ldr r4, _0800B34C @ =gUnknown_030013B0
	ldr r5, _0800B350 @ =gUnknown_0831B184
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08004CF0
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x12
	adds r3, r5, #0
	bl sub_08004EC0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800AFA8
_0800B33A:
	movs r0, #0
	strb r0, [r7]
_0800B33E:
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B34C: .4byte gUnknown_030013B0
_0800B350: .4byte gUnknown_0831B184

	thumb_func_start sub_0800B354
sub_0800B354: @ 0x0800B354
	push {lr}
	adds r2, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r2, #0xa]
	cmp r0, r1
	blo _0800B39C
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r3, r2, r0
	ldr r1, [r3]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	bne _0800B38C
	ldrb r0, [r2, #0xa]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r3, r0
	ldr r1, [r0]
	ldr r0, [r2, #0x1c]
	cmp r1, r0
	beq _0800B390
_0800B38C:
	movs r0, #2
	b _0800B39E
_0800B390:
	movs r0, #0xe4
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	b _0800B39E
_0800B39C:
	movs r0, #0
_0800B39E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800B3A4
sub_0800B3A4: @ 0x0800B3A4
	push {lr}
	adds r2, r0, #0
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800B3DE
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r2, #0x18]
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r1, r1, r3
	ldr r0, [r0]
	cmp r0, r1
	beq _0800B3D2
	movs r0, #2
	b _0800B3E0
_0800B3D2:
	movs r0, #0xd1
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	b _0800B3E0
_0800B3DE:
	movs r0, #0
_0800B3E0:
	pop {r1}
	bx r1

	thumb_func_start sub_0800B3E4
sub_0800B3E4: @ 0x0800B3E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #8
	bls _0800B3FE
	ldr r0, _0800B434 @ =gUnknown_0831B1C0
	bl sub_080050A8
_0800B3FE:
	ldrb r1, [r5, #8]
	ldr r0, _0800B438 @ =0x0007A5B4
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldr r0, _0800B43C @ =0x0007FFFF
	bics r0, r1
	str r0, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0x31
	movs r0, #0
	strb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x32
	strb r0, [r1]
	ldr r0, _0800B440 @ =0x0000FFFF
	strh r0, [r5, #0x34]
	ldrb r0, [r5, #0xf]
	mov sb, r2
	mov sl, r1
	cmp r0, #0
	beq _0800B45E
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800AFA8
	b _0800B45E
	.align 2, 0
_0800B434: .4byte gUnknown_0831B1C0
_0800B438: .4byte 0x0007A5B4
_0800B43C: .4byte 0x0007FFFF
_0800B440: .4byte 0x0000FFFF
_0800B444:
	ldrb r0, [r5, #8]
	cmp r0, #4
	bne _0800B450
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
_0800B450:
	movs r4, #0
_0800B452:
	adds r0, r5, #0
	bl sub_0800B200
	adds r4, #1
	cmp r4, #1
	bls _0800B452
_0800B45E:
	bl sub_0800134C
	mov r2, sb
	ldrb r1, [r2]
	cmp r1, #0
	beq _0800B46C
	b _0800B6D2
_0800B46C:
	strb r1, [r5, #0x13]
	strb r1, [r5, #0x14]
	str r1, [r5, #0x2c]
	adds r4, r5, #0
	adds r4, #0x30
	strb r1, [r4]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	movs r2, #0xd1
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #0x44
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #8
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r5, #0
	bl sub_0800B200
	cmp r0, #0
	beq _0800B4A0
	b _0800B6D2
_0800B4A0:
	bl sub_080013A8
	b _0800B4B6
_0800B4A6:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	beq _0800B4B6
	ldr r0, [r5, #0x2c]
	ldrh r1, [r5, #0xc]
	cmp r0, r1
	blo _0800B4B6
	b _0800B6E0
_0800B4B6:
	adds r0, r5, #0
	bl sub_0800B200
	cmp r0, #0
	beq _0800B4C2
	b _0800B6D2
_0800B4C2:
	ldr r1, _0800B4D8 @ =gUnknown_03000B50
	ldr r0, [r1]
	cmp r0, #0
	beq _0800B4DC
	ldr r0, [r1]
	cmp r0, #1
	beq _0800B51A
	ldr r0, [r1]
	cmp r0, #2
	beq _0800B51A
	b _0800B68A
	.align 2, 0
_0800B4D8: .4byte gUnknown_03000B50
_0800B4DC:
	ldr r1, _0800B4F8 @ =gUnknown_03000B58
	ldr r0, [r1]
	cmp r0, #0
	beq _0800B4A6
	movs r0, #1
	strb r0, [r4]
	ldr r0, [r1]
	cmp r0, #1
	bne _0800B4FC
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #9]
	cmp r0, #2
	bne _0800B508
	b _0800B68A
	.align 2, 0
_0800B4F8: .4byte gUnknown_03000B58
_0800B4FC:
	movs r0, #2
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #9]
	cmp r0, #1
	bne _0800B508
	b _0800B68A
_0800B508:
	adds r0, r5, #0
	bl sub_0800B15C
	ldrb r0, [r5, #0x13]
	cmp r0, #1
	beq _0800B52C
	add r2, sp, #4
	mov r8, r2
	b _0800B63E
_0800B51A:
	bl sub_0800134C
_0800B51E:
	adds r0, r5, #0
	bl sub_0800B200
	cmp r0, #0
	beq _0800B52A
	b _0800B6D2
_0800B52A:
	b _0800B51E
_0800B52C:
	movs r0, #0xe4
	lsls r0, r0, #2
	adds r6, r5, r0
	b _0800B58A
_0800B534:
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r4, r5, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800B574
	ldr r0, _0800B594 @ =gUnknown_03001364
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B568
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r5, r2
	bl sub_08001A28
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800B55C
	b _0800B68A
_0800B55C:
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	strb r0, [r4]
_0800B568:
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B584
_0800B574:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0800B584
	mov r2, r8
	cmp r2, #0
	bne _0800B584
	bl sub_080013F8
_0800B584:
	adds r0, r5, #0
	bl sub_0800B200
_0800B58A:
	movs r7, #0
	movs r0, #0
	mov r8, r0
	b _0800B5B4
	.align 2, 0
_0800B594: .4byte gUnknown_03001364
_0800B598:
	ldr r0, [sp]
	cmp r0, #0
	beq _0800B5B0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800B5B0
	adds r0, r5, #0
	bl sub_0800B354
	cmp r0, #2
	bne _0800B5B0
	b _0800B444
_0800B5B0:
	cmp r4, #1
	beq _0800B5EA
_0800B5B4:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0800B5C2
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r1, r5, r2
	b _0800B5D4
_0800B5C2:
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, r0
_0800B5D4:
	mov r0, sp
	bl sub_08001C60
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0800B68A
	cmp r4, #0
	bne _0800B598
	movs r7, #1
_0800B5EA:
	cmp r7, #0
	beq _0800B534
	b _0800B69E
_0800B5F0:
	movs r0, #0xe4
	lsls r0, r0, #2
	adds r6, r5, r0
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800B638
	ldr r0, _0800B648 @ =gUnknown_03001364
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B638
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r4, r5, r1
	ldrb r1, [r4]
	lsls r1, r1, #2
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08001BD0
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800B68A
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r5, #0xa]
	cmp r0, r1
	blo _0800B638
	movs r0, #1
	strb r0, [r6]
_0800B638:
	adds r0, r5, #0
	bl sub_0800B200
_0800B63E:
	movs r7, #0
	movs r2, #0xd1
	lsls r2, r2, #2
	adds r6, r5, r2
	b _0800B668
	.align 2, 0
_0800B648: .4byte gUnknown_03001364
_0800B64C:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0800B664
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800B664
	adds r0, r5, #0
	bl sub_0800B3A4
	cmp r0, #2
	bne _0800B664
	b _0800B444
_0800B664:
	cmp r4, #1
	beq _0800B69A
_0800B668:
	ldrb r0, [r6]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r5, r2
	cmp r0, #0
	beq _0800B67A
	movs r0, #0x91
	lsls r0, r0, #2
	adds r1, r5, r0
_0800B67A:
	mov r0, r8
	bl sub_08001AE0
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800B694
_0800B68A:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _0800B692
	b _0800B444
_0800B692:
	b _0800B6E0
_0800B694:
	cmp r4, #0
	bne _0800B64C
	movs r7, #1
_0800B69A:
	cmp r7, #0
	beq _0800B5F0
_0800B69E:
	ldrb r0, [r5, #8]
	cmp r0, #1
	bne _0800B6CE
	ldrb r0, [r5, #0x13]
	cmp r0, #1
	bne _0800B6B2
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	b _0800B6B8
_0800B6B2:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
_0800B6B8:
	ldr r0, [r0]
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x24]
	ldr r0, [r5, #0x28]
	cmp r1, r0
	beq _0800B6CE
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800B6D2
	b _0800B444
_0800B6CE:
	movs r0, #0
	b _0800B6E6
_0800B6D2:
	bl sub_0800134C
	movs r0, #0x79
	bl sub_0800ADD8
	movs r0, #1
	b _0800B6E6
_0800B6E0:
	bl sub_0800134C
	movs r0, #2
_0800B6E6:
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0800AFA8
	ldrb r0, [r5, #0x10]
	cmp r0, #1
	bne _0800B70C
	ldr r1, _0800B748 @ =gUnknown_02001D0C
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0800B70C
	adds r4, r1, #0
_0800B700:
	adds r0, r5, #0
	bl sub_0800B200
	ldrb r0, [r4]
	cmp r0, #0xf
	bls _0800B700
_0800B70C:
	ldrb r0, [r5, #0x10]
	movs r1, #0
	cmp r0, #1
	ble _0800B71A
	cmp r0, #3
	bgt _0800B71A
	movs r1, #1
_0800B71A:
	cmp r1, #0
	beq _0800B738
	ldr r1, _0800B748 @ =gUnknown_02001D0C
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0800B738
	cmp r0, #0
	beq _0800B738
	adds r4, r1, #0
_0800B72C:
	adds r0, r5, #0
	bl sub_0800B200
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800B72C
_0800B738:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B748: .4byte gUnknown_02001D0C

	thumb_func_start sub_0800B74C
sub_0800B74C: @ 0x0800B74C
	push {lr}
	ldr r0, _0800B760 @ =gUnknown_0200E59C
	movs r1, #0xe5
	lsls r1, r1, #2
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_0800B760: .4byte gUnknown_0200E59C

	thumb_func_start sub_0800B764
sub_0800B764: @ 0x0800B764
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800B780 @ =gUnknown_0200E59C
	cmp r4, #7
	bls _0800B774
	ldr r0, _0800B784 @ =gUnknown_0831B1D4
	bl sub_080050A8
_0800B774:
	adds r0, r4, r5
	ldrb r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800B780: .4byte gUnknown_0200E59C
_0800B784: .4byte gUnknown_0831B1D4

	thumb_func_start sub_0800B788
sub_0800B788: @ 0x0800B788
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _0800B7A4 @ =gUnknown_0200E59C
	cmp r4, #7
	bls _0800B79A
	ldr r0, _0800B7A8 @ =gUnknown_0831B1D4
	bl sub_080050A8
_0800B79A:
	adds r0, r4, r6
	strb r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B7A4: .4byte gUnknown_0200E59C
_0800B7A8: .4byte gUnknown_0831B1D4

	thumb_func_start sub_0800B7AC
sub_0800B7AC: @ 0x0800B7AC
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	ldr r4, _0800B810 @ =gUnknown_0200E59C
	movs r3, #0x1e
	movs r0, #0
	strb r1, [r4, #8]
	movs r2, #0
	strh r0, [r4, #0xc]
	movs r6, #1
	strb r6, [r4, #0xe]
	strb r6, [r4, #0xf]
	strb r2, [r4, #0x10]
	strb r2, [r4, #0x11]
	strb r2, [r4, #0x12]
	cmp r1, #0
	bne _0800B838
	ldr r0, _0800B814 @ =gUnknown_0300136C
	ldr r1, [r0]
	ldr r0, _0800B818 @ =0x0007FFFF
	ands r1, r0
	str r1, [r4, #0x20]
	strb r2, [r4, #9]
	movs r0, #4
	strb r0, [r4, #0xa]
	ldrb r2, [r4, #1]
	ldrb r0, [r4, #2]
	lsls r0, r0, #8
	orrs r0, r2
	str r0, [r4, #0x44]
	str r1, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0800B7F6
	b _0800BAB2
_0800B7F6:
	ldrb r0, [r4, #0x13]
	subs r5, r0, #1
	strb r5, [r4]
	cmp r5, #0
	bne _0800B81C
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0]
	movs r2, #0xd4
	lsls r2, r2, #2
	b _0800B828
	.align 2, 0
_0800B810: .4byte gUnknown_0200E59C
_0800B814: .4byte gUnknown_0300136C
_0800B818: .4byte 0x0007FFFF
_0800B81C:
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r1, [r0]
	movs r2, #0xa4
	lsls r2, r2, #1
_0800B828:
	adds r0, r4, r2
	ldr r2, [r0]
	strb r1, [r4, #1]
	lsrs r0, r1, #8
	strb r0, [r4, #2]
	str r2, [r4, #0x24]
_0800B834:
	ldrb r0, [r4, #0x14]
	b _0800BAB2
_0800B838:
	cmp r1, #1
	bne _0800B89C
	ldrb r5, [r4]
	movs r0, #4
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	adds r1, r6, #0
	ands r1, r0
	ldr r2, [r4, #0x20]
	cmp r5, #0
	bne _0800B85E
	strb r6, [r4, #9]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	str r1, [r0]
	movs r1, #0xa4
	lsls r1, r1, #1
	b _0800B86E
_0800B85E:
	movs r0, #2
	strb r0, [r4, #9]
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r4, r3
	str r1, [r0]
	movs r1, #0xd4
	lsls r1, r1, #2
_0800B86E:
	adds r0, r4, r1
	str r2, [r0]
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0800B880
	b _0800BAB2
_0800B880:
	cmp r5, #0
	bne _0800B88C
	movs r2, #0xd3
	lsls r2, r2, #2
	adds r0, r4, r2
	b _0800B892
_0800B88C:
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
_0800B892:
	ldr r1, [r0]
	movs r0, #1
	ands r1, r0
	strb r1, [r4, #3]
	b _0800B834
_0800B89C:
	cmp r1, #5
	bne _0800B8CC
	strb r2, [r4, #0xe]
	strb r2, [r4, #9]
	movs r0, #9
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_0800B024
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0800B8BC
	b _0800BAB2
_0800B8BC:
	ldrb r0, [r4, #0x13]
	subs r5, r0, #1
	strb r5, [r4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B068
	b _0800B834
_0800B8CC:
	cmp r1, #6
	bne _0800B918
	ldrb r5, [r4]
	strb r2, [r4, #0xe]
	movs r0, #3
	strb r0, [r4, #0xa]
	cmp r5, #0
	bne _0800B8F2
	strh r3, [r4, #0xc]
	strb r2, [r4, #0xf]
	strb r6, [r4, #9]
	movs r0, #0xf
	bl sub_08010170
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r1, r4, r2
	str r0, [r1]
	b _0800B8F6
_0800B8F2:
	movs r0, #2
	strb r0, [r4, #9]
_0800B8F6:
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0800B904
	b _0800BAB2
_0800B904:
	cmp r5, #0
	beq _0800B834
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrb r1, [r0]
	movs r0, #0xf
	bl sub_08010180
	b _0800B834
_0800B918:
	cmp r1, #7
	bne _0800B93C
	ldrb r5, [r4]
	strb r2, [r4, #0xe]
	strb r2, [r4, #0xf]
	movs r0, #3
	strb r0, [r4, #0x10]
	strb r3, [r4, #0x11]
	movs r0, #5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B0B0
	cmp r5, #0
	bne _0800B93A
	b _0800BA4E
_0800B93A:
	b _0800BA52
_0800B93C:
	cmp r1, #2
	bne _0800B98E
	strb r6, [r4, #0xe]
	strb r2, [r4, #0xf]
	strb r6, [r4, #0x12]
	strb r2, [r4, #9]
	movs r0, #9
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_0800B024
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _0800B960
	b _0800BAB2
_0800B960:
	ldrb r0, [r4, #0x13]
	subs r5, r0, #1
	strb r5, [r4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B068
	cmp r5, #0
	bne _0800B974
	b _0800B834
_0800B974:
	movs r7, #0x18
	movs r5, #0
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r6, r4, r0
_0800B97E:
	ldm r6!, {r1}
	adds r0, r7, r5
	bl sub_08010180
	adds r5, #1
	cmp r5, #5
	bls _0800B97E
	b _0800B834
_0800B98E:
	cmp r1, #3
	bne _0800BA34
	ldrb r5, [r4]
	ldrb r6, [r4, #4]
	ldrb r1, [r4, #6]
	cmp r6, #0
	beq _0800B9A2
	cmp r1, #0
	bne _0800B9A2
	strb r2, [r4, #0xe]
_0800B9A2:
	movs r0, #0
	strb r0, [r4, #0xf]
	movs r0, #3
	strb r0, [r4, #0xa]
	cmp r5, #0
	bne _0800B9B2
	movs r0, #1
	b _0800B9B4
_0800B9B2:
	movs r0, #2
_0800B9B4:
	strb r0, [r4, #9]
	cmp r6, #0
	beq _0800B9F6
	cmp r1, #0
	bne _0800B9C6
	strh r3, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x10]
	b _0800B9CA
_0800B9C6:
	movs r0, #1
	strb r0, [r4, #0x12]
_0800B9CA:
	movs r0, #0xf
	bl sub_08010170
	adds r1, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0800B9DE
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r1, r0
_0800B9DE:
	cmp r5, #0
	bne _0800B9EC
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r4, r2
	str r1, [r0]
	b _0800B9FA
_0800B9EC:
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r4, r3
	str r1, [r0]
	b _0800B9FA
_0800B9F6:
	movs r0, #1
	strb r0, [r4, #0x12]
_0800B9FA:
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0800BAB2
	cmp r6, #0
	beq _0800BA0C
	b _0800B834
_0800BA0C:
	cmp r5, #0
	bne _0800BA18
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, r1
	b _0800BA1E
_0800BA18:
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r4, r2
_0800BA1E:
	ldr r5, [r0]
	movs r1, #0xff
	ands r1, r5
	movs r0, #0xf
	bl sub_08010180
	lsrs r0, r5, #8
	movs r1, #1
	ands r0, r1
	strb r0, [r4, #5]
	b _0800B834
_0800BA34:
	cmp r1, #4
	bne _0800BA6C
	ldrb r5, [r4]
	strb r2, [r4, #0xf]
	strb r3, [r4, #0x11]
	movs r0, #5
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B0B0
	cmp r5, #0
	bne _0800BA52
_0800BA4E:
	strb r6, [r4, #9]
	b _0800BA56
_0800BA52:
	movs r0, #2
	strb r0, [r4, #9]
_0800BA56:
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0800BAB2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800B0F8
	b _0800B834
_0800BA6C:
	cmp r1, #8
	bne _0800BAAA
	ldrb r5, [r4]
	movs r0, #3
	strb r0, [r4, #0xa]
	cmp r5, #0
	bne _0800BA88
	strb r6, [r4, #9]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r1, r4, r3
	ldrb r0, [r4, #7]
	str r0, [r1]
	b _0800BA8C
_0800BA88:
	movs r0, #2
	strb r0, [r4, #9]
_0800BA8C:
	adds r0, r4, #0
	bl sub_0800B3E4
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0800BAB2
	cmp r5, #0
	bne _0800BA9E
	b _0800B834
_0800BA9E:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	strb r0, [r4, #7]
	b _0800B834
_0800BAAA:
	ldr r0, _0800BAB8 @ =gUnknown_0831B1C0
	bl sub_080050A8
	movs r0, #0
_0800BAB2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BAB8: .4byte gUnknown_0831B1C0

	thumb_func_start sub_0800BABC
sub_0800BABC: @ 0x0800BABC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	mov sb, r2
	movs r0, #0
	mov r8, r0
	mov r4, sp
	movs r7, #0x1f
_0800BAD4:
	ldrh r2, [r5]
	lsls r1, r2, #0x10
	adds r5, #2
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r4]
	lsrs r0, r1, #0x15
	ands r0, r7
	strb r0, [r4, #1]
	lsrs r1, r1, #0x1a
	ands r1, r7
	strb r1, [r4, #2]
	mov r0, sp
	movs r1, #0x10
	movs r2, #0x10
	bl sub_0800A37C
	mov r0, sp
	mov r1, sb
	bl sub_0800A358
	ldrb r1, [r4, #2]
	lsls r1, r1, #0xa
	ldrb r0, [r4, #1]
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r4]
	orrs r1, r0
	strh r1, [r6]
	adds r6, #2
	movs r0, #1
	add r8, r0
	mov r0, r8
	cmp r0, #0xf
	bls _0800BAD4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800BB28
sub_0800BB28: @ 0x0800BB28
	push {lr}
	lsls r1, r0, #4
	ldr r3, _0800BB5C @ =0x0600E800
	adds r2, r1, r3
	movs r3, #0x96
	lsls r3, r3, #2
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0800BB3E
	adds r3, #0x20
_0800BB3E:
	movs r1, #0
_0800BB40:
	movs r0, #0
	adds r1, #1
_0800BB44:
	strh r3, [r2]
	adds r2, #2
	adds r3, #1
	adds r0, #1
	cmp r0, #7
	bls _0800BB44
	adds r2, #0x30
	cmp r1, #3
	bls _0800BB40
	pop {r0}
	bx r0
	.align 2, 0
_0800BB5C: .4byte 0x0600E800

	thumb_func_start sub_0800BB60
sub_0800BB60: @ 0x0800BB60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r1, #0
	movs r1, #0x20
	subs r1, r1, r7
	lsls r1, r1, #1
	ldr r2, _0800BBEC @ =0x0600E800
	adds r1, r1, r2
	lsls r0, r0, #8
	adds r2, r0, r2
	adds r4, r7, #0
	movs r5, #0
	mov r8, r0
	lsls r0, r4, #1
	mov ip, r0
	rsbs r6, r0, #0
_0800BB82:
	movs r3, #0
	cmp r3, r4
	bhs _0800BB96
_0800BB88:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, r4
	blo _0800BB88
_0800BB96:
	adds r0, r1, #0
	adds r0, #0x40
	adds r1, r0, r6
	adds r0, r2, #0
	adds r0, #0x40
	adds r2, r0, r6
	adds r5, #1
	cmp r5, #3
	bls _0800BB82
	ldr r1, _0800BBEC @ =0x0600E800
	mov r2, ip
	adds r0, r2, r1
	mov r3, r8
	adds r2, r3, r0
	movs r0, #0x20
	subs r4, r0, r7
	movs r5, #0
	lsls r0, r4, #1
	rsbs r6, r0, #0
_0800BBBC:
	movs r3, #0
	adds r5, #1
	cmp r3, r4
	bhs _0800BBD2
_0800BBC4:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, r4
	blo _0800BBC4
_0800BBD2:
	adds r0, r1, #0
	adds r0, #0x40
	adds r1, r0, r6
	adds r0, r2, #0
	adds r0, #0x40
	adds r2, r0, r6
	cmp r5, #3
	bls _0800BBBC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BBEC: .4byte 0x0600E800

	thumb_func_start sub_0800BBF0
sub_0800BBF0: @ 0x0800BBF0
	push {lr}
	movs r0, #0
	bl sub_0800BB28
	movs r0, #1
	bl sub_0800BB28
	movs r0, #2
	bl sub_0800BB28
	movs r0, #3
	bl sub_0800BB28
	movs r0, #1
	movs r1, #4
	bl sub_0800BB60
	movs r0, #2
	movs r1, #8
	bl sub_0800BB60
	movs r0, #3
	movs r1, #0xc
	bl sub_0800BB60
	movs r0, #4
	movs r1, #0x10
	bl sub_0800BB60
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800BC30
sub_0800BC30: @ 0x0800BC30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r1, #0
	ldr r1, _0800BC58 @ =gUnknown_030013B0
	mov sl, r1
	movs r1, #0
	strh r1, [r0, #0x3e]
	bl sub_08011C18
	cmp r7, #0
	bne _0800BC60
	movs r2, #0x14
	movs r3, #4
	ldr r0, _0800BC5C @ =gUnknown_0831B1F4
	b _0800BC7A
	.align 2, 0
_0800BC58: .4byte gUnknown_030013B0
_0800BC5C: .4byte gUnknown_0831B1F4
_0800BC60:
	cmp r7, #1
	bne _0800BC74
	movs r2, #0x14
	movs r3, #6
	ldr r1, _0800BC70 @ =gUnknown_0831B218
	mov r8, r1
	b _0800BC7C
	.align 2, 0
_0800BC70: .4byte gUnknown_0831B218
_0800BC74:
	movs r2, #0x14
	movs r3, #4
	ldr r0, _0800BD50 @ =gUnknown_0831B258
_0800BC7A:
	mov r8, r0
_0800BC7C:
	movs r4, #0x14
	movs r5, #1
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _0800BC8A
	adds r4, r2, #1
_0800BC8A:
	movs r1, #0xf
	lsrs r0, r4, #1
	subs r6, r1, r0
	adds r1, r3, #0
	adds r0, r3, #0
	ands r0, r5
	cmp r0, #0
	beq _0800BC9C
	adds r1, r3, #1
_0800BC9C:
	movs r4, #0xa
	lsrs r0, r1, #1
	subs r4, r4, r0
	movs r1, #0
	mov sb, r1
	str r1, [sp]
	str r1, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800C06C
	mov r0, sl
	movs r1, #0
	movs r2, #0
	bl sub_08004CF0
	adds r1, r6, #1
	adds r4, #1
	mov r0, sl
	adds r2, r4, #0
	mov r3, r8
	bl sub_08004E28
	ldr r1, _0800BD54 @ =gUnknown_083E6C3C
	ldr r5, _0800BD58 @ =0x06009600
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	adds r5, r5, r4
	ldr r1, _0800BD5C @ =gUnknown_083E745C
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	movs r4, #4
	cmp r7, #0
	bne _0800BCEE
	movs r4, #1
_0800BCEE:
	ldr r1, _0800BD60 @ =gUnknown_083E6C1C
	ldr r5, _0800BD64 @ =0x05000100
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0800BABC
	adds r5, #0x20
	ldr r1, _0800BD68 @ =gUnknown_083E743C
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0800BABC
	bl sub_0800BBF0
	movs r2, #0x80
	lsls r2, r2, #0x13
	movs r0, #0x80
	lsls r0, r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	adds r2, #8
	ldrh r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r2, #4
	movs r0, #0xec
	lsls r0, r0, #5
	adds r1, r0, #0
	movs r0, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800BD6C @ =0x04000018
	mov r1, sb
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BD50: .4byte gUnknown_0831B258
_0800BD54: .4byte gUnknown_083E6C3C
_0800BD58: .4byte 0x06009600
_0800BD5C: .4byte gUnknown_083E745C
_0800BD60: .4byte gUnknown_083E6C1C
_0800BD64: .4byte 0x05000100
_0800BD68: .4byte gUnknown_083E743C
_0800BD6C: .4byte 0x04000018

	thumb_func_start sub_0800BD70
sub_0800BD70: @ 0x0800BD70
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldr r0, _0800BD90 @ =0xFFFFFBFF
	ldrh r1, [r2]
	ands r0, r1
	strh r0, [r2]
	adds r2, #8
	ldrh r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0800BD90: .4byte 0xFFFFFBFF

	thumb_func_start sub_0800BD94
sub_0800BD94: @ 0x0800BD94
	ldrh r3, [r0, #0x3e]
	adds r1, r3, #1
	movs r2, #0xff
	ands r1, r2
	strh r1, [r0, #0x3e]
	ldr r0, _0800BDA8 @ =0x04000018
	rsbs r3, r3, #0
	strh r3, [r0]
	bx lr
	.align 2, 0
_0800BDA8: .4byte 0x04000018

	thumb_func_start sub_0800BDAC
sub_0800BDAC: @ 0x0800BDAC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0800BDB2:
	adds r0, r4, #5
	adds r1, r5, r4
	ldrb r1, [r1]
	bl sub_08010180
	adds r4, #1
	cmp r4, #4
	bls _0800BDB2
	movs r0, #4
	bl sub_0800B7AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800BDD0
sub_0800BDD0: @ 0x0800BDD0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl sub_08011C70
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800BC30
	movs r4, #7
_0800BDE6:
	bl sub_0803D380
	lsls r0, r4, #1
	bl sub_0800A124
	adds r0, r5, #0
	bl sub_0800BD94
	subs r4, #1
	cmp r4, #0
	bge _0800BDE6
	ldr r0, _0800BE18 @ =0x00000391
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800BE20
	ldr r1, _0800BE1C @ =0x00000392
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_0800ACD0
	movs r0, #0
	strb r0, [r4]
	b _0800BE2E
	.align 2, 0
_0800BE18: .4byte 0x00000391
_0800BE1C: .4byte 0x00000392
_0800BE20:
	movs r1, #0xb6
	cmp r6, #0
	bne _0800BE28
	movs r1, #0xb4
_0800BE28:
	adds r0, r7, #0
	bl sub_0800AC88
_0800BE2E:
	movs r0, #3
	cmp r6, #0
	bne _0800BE36
	movs r0, #2
_0800BE36:
	bl sub_0800B7AC
	adds r6, r0, #0
	cmp r6, #0
	beq _0800BE52
	ldr r0, _0800BE84 @ =0x00000391
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	bl sub_0800ADA8
	ldr r2, _0800BE88 @ =0x00000392
	adds r1, r5, r2
	strh r0, [r1]
_0800BE52:
	cmp r6, #1
	beq _0800BE5E
	adds r0, r7, #0
	movs r1, #0
	bl sub_0800AC9C
_0800BE5E:
	movs r4, #0
_0800BE60:
	bl sub_0803D380
	lsls r0, r4, #1
	bl sub_0800A124
	adds r0, r5, #0
	bl sub_0800BD94
	adds r4, #1
	cmp r4, #8
	ble _0800BE60
	bl sub_0800BD70
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BE84: .4byte 0x00000391
_0800BE88: .4byte 0x00000392

	thumb_func_start sub_0800BE8C
sub_0800BE8C: @ 0x0800BE8C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800BEA4 @ =gUnknown_0200E59C
	ldr r1, _0800BEA8 @ =0x00000391
	adds r3, r0, r1
	movs r1, #0
	strb r1, [r3]
	bl sub_0800BDD0
	pop {r1}
	bx r1
	.align 2, 0
_0800BEA4: .4byte gUnknown_0200E59C
_0800BEA8: .4byte 0x00000391

	thumb_func_start sub_0800BEAC
sub_0800BEAC: @ 0x0800BEAC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _0800BEE4 @ =gUnknown_0200E59C
	ldrb r1, [r4, #4]
	ldr r2, _0800BEE8 @ =0x00000391
	adds r0, r4, r2
	movs r2, #0
	strb r2, [r0]
	cmp r1, #0
	beq _0800BEEC
	strb r2, [r4, #6]
	movs r0, #3
	bl sub_0800B7AC
	cmp r0, #0
	beq _0800BEFC
	movs r0, #1
	strb r0, [r4, #6]
	movs r5, #2
_0800BED2:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0800BDD0
	cmp r0, #0
	bne _0800BED2
	strb r0, [r4, #6]
	b _0800BEFC
	.align 2, 0
_0800BEE4: .4byte gUnknown_0200E59C
_0800BEE8: .4byte 0x00000391
_0800BEEC:
	movs r5, #1
_0800BEEE:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0800BDD0
	cmp r0, #0
	bne _0800BEEE
_0800BEFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800BF04
sub_0800BF04: @ 0x0800BF04
	push {r4, lr}
	ldr r4, _0800BF2C @ =gUnknown_0200EC1C
	ldr r2, _0800BF30 @ =gUnknown_083E7C9B
	adds r2, r0, r2
	ldr r1, _0800BF34 @ =gUnknown_083E7C9E
	adds r0, r0, r1
	ldrb r3, [r0]
	ldrb r1, [r2]
	cmp r1, r3
	bhi _0800BF24
	movs r2, #0
_0800BF1A:
	adds r0, r4, r1
	strb r2, [r0]
	adds r1, #1
	cmp r1, r3
	bls _0800BF1A
_0800BF24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF2C: .4byte gUnknown_0200EC1C
_0800BF30: .4byte gUnknown_083E7C9B
_0800BF34: .4byte gUnknown_083E7C9E

	thumb_func_start sub_0800BF38
sub_0800BF38: @ 0x0800BF38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r3, _0800BF84 @ =gUnknown_0200E9DC
	movs r2, #0
	ldr r1, _0800BF88 @ =0xFFFFFB08
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800BF4C
	movs r2, #1
_0800BF4C:
	ldr r1, _0800BF8C @ =gUnknown_083E7C9B
	adds r1, r2, r1
	ldr r0, _0800BF90 @ =gUnknown_083E7C9E
	adds r0, r2, r0
	ldrb r2, [r0]
	ldrb r4, [r1]
	cmp r4, r2
	bhi _0800BF9C
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r1, r0, r3
_0800BF64:
	movs r5, #0x90
	lsls r5, r5, #2
	adds r0, r3, r5
	adds r5, r0, r4
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800BF94
	adds r0, r1, #0
	adds r1, r6, #0
	movs r2, #0x48
	bl sub_080002C4
	movs r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	b _0800BFA4
	.align 2, 0
_0800BF84: .4byte gUnknown_0200E9DC
_0800BF88: .4byte 0xFFFFFB08
_0800BF8C: .4byte gUnknown_083E7C9B
_0800BF90: .4byte gUnknown_083E7C9E
_0800BF94:
	adds r1, #0x48
	adds r4, #1
	cmp r4, r2
	bls _0800BF64
_0800BF9C:
	ldr r0, _0800BFAC @ =gUnknown_0831B27C
	bl sub_080050A8
	movs r0, #0
_0800BFA4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800BFAC: .4byte gUnknown_0831B27C

	thumb_func_start sub_0800BFB0
sub_0800BFB0: @ 0x0800BFB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800BFD0 @ =gUnknown_0200E9DC
	movs r1, #0
	cmp r1, r4
	bgt _0800BFC2
	cmp r4, #7
	bgt _0800BFC2
	movs r1, #1
_0800BFC2:
	cmp r1, #0
	bne _0800BFD8
	ldr r0, _0800BFD4 @ =gUnknown_0831B2A4
	bl sub_080050A8
	movs r0, #0
	b _0800BFF6
	.align 2, 0
_0800BFD0: .4byte gUnknown_0200E9DC
_0800BFD4: .4byte gUnknown_0831B2A4
_0800BFD8:
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800BFEC
	ldr r0, _0800BFFC @ =gUnknown_0831B2D4
	bl sub_080050A8
_0800BFEC:
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _0800C000 @ =gUnknown_0200E9DC
	adds r0, r0, r1
_0800BFF6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800BFFC: .4byte gUnknown_0831B2D4
_0800C000: .4byte gUnknown_0200E9DC

	thumb_func_start sub_0800C004
sub_0800C004: @ 0x0800C004
	ldr r1, _0800C014 @ =gUnknown_0200C1A0
	ldr r2, _0800C018 @ =0x00002A7C
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800C014: .4byte gUnknown_0200C1A0
_0800C018: .4byte 0x00002A7C

	thumb_func_start sub_0800C01C
sub_0800C01C: @ 0x0800C01C
	push {r4, r5, lr}
	ldr r5, _0800C04C @ =gUnknown_0200EC1C
	movs r4, #0
	ldr r2, _0800C050 @ =gUnknown_083E7C9B
	adds r2, r0, r2
	ldr r1, _0800C054 @ =gUnknown_083E7C9E
	adds r0, r0, r1
	ldrb r3, [r0]
	ldrb r1, [r2]
	cmp r1, r3
	bhi _0800C042
_0800C032:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C03C
	adds r4, #1
_0800C03C:
	adds r1, #1
	cmp r1, r3
	bls _0800C032
_0800C042:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800C04C: .4byte gUnknown_0200EC1C
_0800C050: .4byte gUnknown_083E7C9B
_0800C054: .4byte gUnknown_083E7C9E

	thumb_func_start sub_0800C058
sub_0800C058: @ 0x0800C058
	ldr r0, _0800C068 @ =gUnknown_0200E9D8
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r1, #8
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	.align 2, 0
_0800C068: .4byte gUnknown_0200E9D8

	thumb_func_start sub_0800C06C
sub_0800C06C: @ 0x0800C06C
	push {r4, r5, lr}
	sub sp, #0x48
	ldr r5, [sp, #0x54]
	mov r4, sp
	strb r0, [r4]
	mov r0, sp
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	strb r3, [r0, #3]
	mov r2, sp
	movs r1, #1
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #4]
	lsrs r0, r5, #1
	ands r0, r1
	strb r0, [r2, #5]
	lsrs r0, r5, #2
	ands r0, r1
	strb r0, [r2, #6]
	lsrs r0, r5, #3
	ands r0, r1
	strb r0, [r2, #7]
	ldr r0, _0800C0AC @ =gUnknown_0200C1A0
	ldr r1, _0800C0B0 @ =0x00002344
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800C0B4
	mov r0, sp
	strb r1, [r0, #8]
	b _0800C0BA
	.align 2, 0
_0800C0AC: .4byte gUnknown_0200C1A0
_0800C0B0: .4byte 0x00002344
_0800C0B4:
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #8]
_0800C0BA:
	str r5, [sp, #0x44]
	mov r0, sp
	bl sub_08005E9C
	mov r0, sp
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0800C0D0
	movs r0, #1
	bl sub_080059C4
_0800C0D0:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bne _0800C0DC
	movs r0, #1
	rsbs r0, r0, #0
	b _0800C0E2
_0800C0DC:
	mov r0, sp
	bl sub_0800BF38
_0800C0E2:
	add sp, #0x48
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800C0EC
sub_0800C0EC: @ 0x0800C0EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _0800C170 @ =gUnknown_0200E9D8
	movs r0, #2
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800C10E
	adds r1, r2, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800C108
	adds r1, r2, #1
_0800C108:
	lsrs r1, r1, #1
	movs r0, #0xf
	subs r4, r0, r1
_0800C10E:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r5, r0
	bne _0800C128
	adds r1, r3, #0
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0800C122
	adds r1, r3, #1
_0800C122:
	lsrs r1, r1, #1
	movs r0, #0xa
	subs r5, r0, r1
_0800C128:
	adds r0, r4, r2
	subs r2, r0, #1
	adds r0, r5, r3
	subs r0, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r1, r4
	bge _0800C13A
	adds r1, r4, #0
_0800C13A:
	adds r4, r1, #0
	movs r1, #0x1e
	cmp r1, r2
	ble _0800C144
	adds r1, r2, #0
_0800C144:
	adds r2, r1, #0
	movs r1, #1
	rsbs r1, r1, #0
	cmp r1, r5
	bge _0800C150
	adds r1, r5, #0
_0800C150:
	adds r5, r1, #0
	movs r1, #0x14
	cmp r1, r0
	ble _0800C15A
	adds r1, r0, #0
_0800C15A:
	subs r0, r2, r4
	adds r2, r0, #1
	subs r0, r1, r5
	adds r3, r0, #1
	strb r4, [r6]
	strb r5, [r6, #1]
	strb r2, [r6, #2]
	strb r3, [r6, #3]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C170: .4byte gUnknown_0200E9D8

	thumb_func_start sub_0800C174
sub_0800C174: @ 0x0800C174
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, [sp, #0x14]
	ldr r4, _0800C1AC @ =gUnknown_0200E9D8
	bl sub_0800C0EC
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r6, r0, #1
	movs r0, #1
	ldrsb r0, [r4, r0]
	adds r1, r0, #1
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r2, r0, #2
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r3, r0, #2
	str r5, [sp]
	adds r0, r6, #0
	bl sub_0800D328
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C1AC: .4byte gUnknown_0200E9D8

	thumb_func_start sub_0800C1B0
sub_0800C1B0: @ 0x0800C1B0
	push {r4, r5, lr}
	sub sp, #8
	ldr r3, _0800C1E0 @ =gUnknown_0200E9D8
	lsrs r4, r0, #2
	movs r1, #1
	ands r4, r1
	movs r5, #0
	ldrsb r5, [r3, r5]
	movs r1, #1
	ldrsb r1, [r3, r1]
	movs r2, #2
	ldrsb r2, [r3, r2]
	ldrb r3, [r3, #3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	bl sub_0800C06C
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800C1E0: .4byte gUnknown_0200E9D8

	thumb_func_start sub_0800C1E4
sub_0800C1E4: @ 0x0800C1E4
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	blt _0800C21E
	bl sub_0800BFB0
	adds r0, r5, #0
	bl sub_0800BFB0
	adds r4, r0, #0
	bl sub_08005F9C
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800C218
	bl sub_0800C5C0
	movs r1, #0
	cmp r0, #1
	bhi _0800C20E
	movs r1, #1
_0800C20E:
	cmp r1, #0
	beq _0800C218
	movs r0, #0
	bl sub_080059C4
_0800C218:
	adds r0, r5, #0
	bl sub_0800C004
_0800C21E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C224
sub_0800C224: @ 0x0800C224
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	movs r6, #0
	movs r5, #0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r6, r0
	bhs _0800C252
	adds r4, r1, #0
	adds r7, r4, r2
_0800C23C:
	ldr r0, [r4]
	bl sub_08004954
	cmp r0, r6
	bls _0800C248
	adds r6, r0, #0
_0800C248:
	adds r4, #8
	adds r5, #1
	ldrh r0, [r7]
	cmp r5, r0
	blo _0800C23C
_0800C252:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800C25C
sub_0800C25C: @ 0x0800C25C
	push {r4, lr}
	adds r1, r0, #0
	ldr r2, _0800C274 @ =0x00000802
	adds r0, r1, r2
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0800C27C
	b _0800C2A0
	.align 2, 0
_0800C274: .4byte 0x00000802
_0800C278:
	adds r0, r2, #0
	b _0800C2A2
_0800C27C:
	movs r2, #0
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r1, r4
	ldrh r0, [r0]
	cmp r2, r0
	bhs _0800C29A
	adds r4, r0, #0
_0800C28C:
	ldrh r0, [r1, #4]
	cmp r0, r3
	beq _0800C278
	adds r1, #8
	adds r2, #1
	cmp r2, r4
	blo _0800C28C
_0800C29A:
	ldr r0, _0800C2A8 @ =gUnknown_0831B330
	bl sub_080050A8
_0800C2A0:
	movs r0, #0
_0800C2A2:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800C2A8: .4byte gUnknown_0831B330

	thumb_func_start sub_0800C2AC
sub_0800C2AC: @ 0x0800C2AC
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r3, r0
	bhs _0800C2D4
	adds r1, r0, #0
_0800C2C2:
	ldrh r0, [r2, #4]
	cmp r0, r4
	bne _0800C2CC
	adds r0, r3, #0
	b _0800C2DC
_0800C2CC:
	adds r2, #8
	adds r3, #1
	cmp r3, r1
	blo _0800C2C2
_0800C2D4:
	ldr r0, _0800C2E4 @ =gUnknown_0831B35C
	bl sub_080050A8
	movs r0, #0
_0800C2DC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800C2E4: .4byte gUnknown_0831B35C

	thumb_func_start sub_0800C2E8
sub_0800C2E8: @ 0x0800C2E8
	ldr r1, _0800C300 @ =gUnknown_0200EC24
	movs r0, #0x80
	lsls r0, r0, #4
	adds r2, r1, r0
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0800C304 @ =0x00000802
	adds r1, r1, r0
	ldr r0, _0800C308 @ =0x0000FFFF
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800C300: .4byte gUnknown_0200EC24
_0800C304: .4byte 0x00000802
_0800C308: .4byte 0x0000FFFF

	thumb_func_start sub_0800C30C
sub_0800C30C: @ 0x0800C30C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, _0800C350 @ =gUnknown_0200EC24
	mov r8, r0
	movs r4, #0x80
	lsls r4, r4, #4
	add r4, r8
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0800C332
	ldr r0, _0800C354 @ =gUnknown_0831B38C
	bl sub_080050A8
_0800C332:
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	add r0, r8
	str r5, [r0]
	strh r6, [r0, #4]
	strb r7, [r0, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C350: .4byte gUnknown_0200EC24
_0800C354: .4byte gUnknown_0831B38C

	thumb_func_start sub_0800C358
sub_0800C358: @ 0x0800C358
	ldr r1, _0800C364 @ =gUnknown_0200EC24
	ldr r2, _0800C368 @ =0x00000802
	adds r1, r1, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800C364: .4byte gUnknown_0200EC24
_0800C368: .4byte 0x00000802

	thumb_func_start sub_0800C36C
sub_0800C36C: @ 0x0800C36C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	bl sub_0800C51C
	adds r4, r0, #0
	ldr r0, _0800C3B4 @ =0x0000080C
	adds r0, r0, r4
	mov sb, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800C2AC
	adds r1, r0, #0
	lsls r0, r1, #3
	adds r0, r4, r0
	str r6, [r0]
	mov r2, r8
	strb r2, [r0, #6]
	ldr r0, _0800C3B8 @ =gUnknown_0200C1A0
	ldr r2, _0800C3BC @ =0x00006610
	adds r0, r0, r2
	str r4, [r0]
	mov r0, sb
	bl sub_080069B8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C3B4: .4byte 0x0000080C
_0800C3B8: .4byte gUnknown_0200C1A0
_0800C3BC: .4byte 0x00006610

	thumb_func_start sub_0800C3C0
sub_0800C3C0: @ 0x0800C3C0
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0800C408
	movs r2, #0
	ldr r1, _0800C3F8 @ =gUnknown_0200C1A0
	ldr r3, _0800C3FC @ =0x00002344
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800C3DE
	movs r2, #1
_0800C3DE:
	lsls r0, r2, #2
	ldr r2, _0800C400 @ =0x00006614
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _0800C410
	ldr r0, _0800C404 @ =gUnknown_0831B3C0
	bl sub_080050A8
	movs r0, #0
	b _0800C41E
	.align 2, 0
_0800C3F8: .4byte gUnknown_0200C1A0
_0800C3FC: .4byte 0x00002344
_0800C400: .4byte 0x00006614
_0800C404: .4byte gUnknown_0831B3C0
_0800C408:
	adds r0, r2, #0
	bl sub_0800C51C
	adds r4, r0, #0
_0800C410:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800C2AC
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r0, [r0]
_0800C41E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C424
sub_0800C424: @ 0x0800C424
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r5, _0800C458 @ =gUnknown_020127A8
	ldr r1, _0800C45C @ =gUnknown_083E7CA1
	adds r1, r3, r1
	ldr r0, _0800C460 @ =gUnknown_083E7CA4
	adds r0, r3, r0
	ldrb r2, [r0]
	ldrb r1, [r1]
	ldr r0, _0800C464 @ =0xFFFF99F8
	adds r6, r5, r0
	cmp r1, r2
	bhi _0800C44A
	movs r4, #0
_0800C440:
	adds r0, r5, r1
	strb r4, [r0]
	adds r1, #1
	cmp r1, r2
	bls _0800C440
_0800C44A:
	cmp r3, #0
	bne _0800C46C
	ldr r1, _0800C468 @ =0x00006614
	adds r0, r6, r1
	str r3, [r0]
	b _0800C48E
	.align 2, 0
_0800C458: .4byte gUnknown_020127A8
_0800C45C: .4byte gUnknown_083E7CA1
_0800C460: .4byte gUnknown_083E7CA4
_0800C464: .4byte 0xFFFF99F8
_0800C468: .4byte 0x00006614
_0800C46C:
	cmp r3, #1
	bne _0800C480
	ldr r2, _0800C47C @ =0x00006618
	adds r1, r6, r2
	movs r0, #0
	str r0, [r1]
	b _0800C48E
	.align 2, 0
_0800C47C: .4byte 0x00006618
_0800C480:
	ldr r1, _0800C494 @ =0x00006614
	adds r0, r6, r1
	movs r1, #0
	str r1, [r0]
	ldr r2, _0800C498 @ =0x00006618
	adds r0, r6, r2
	str r1, [r0]
_0800C48E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C494: .4byte 0x00006614
_0800C498: .4byte 0x00006618

	thumb_func_start sub_0800C49C
sub_0800C49C: @ 0x0800C49C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r6, _0800C4E4 @ =gUnknown_0200F430
	movs r2, #0
	ldr r1, _0800C4E8 @ =0xFFFFF0B4
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800C4B0
	movs r2, #1
_0800C4B0:
	ldr r1, _0800C4EC @ =gUnknown_083E7CA1
	adds r1, r2, r1
	ldr r0, _0800C4F0 @ =gUnknown_083E7CA4
	adds r0, r2, r0
	ldrb r3, [r0]
	ldrb r4, [r1]
	cmp r4, r3
	bhi _0800C506
	ldr r2, _0800C4F4 @ =0x00000894
	adds r0, r4, #0
	muls r0, r2, r0
	adds r1, r0, r6
_0800C4C8:
	ldr r5, _0800C4F8 @ =0x00003378
	adds r0, r6, r5
	adds r5, r0, r4
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800C4FC
	adds r0, r1, #0
	adds r1, r7, #0
	bl sub_080002C4
	movs r0, #1
	strb r0, [r5]
	adds r0, r4, #0
	b _0800C50E
	.align 2, 0
_0800C4E4: .4byte gUnknown_0200F430
_0800C4E8: .4byte 0xFFFFF0B4
_0800C4EC: .4byte gUnknown_083E7CA1
_0800C4F0: .4byte gUnknown_083E7CA4
_0800C4F4: .4byte 0x00000894
_0800C4F8: .4byte 0x00003378
_0800C4FC:
	ldr r0, _0800C514 @ =0x00000894
	adds r1, r1, r0
	adds r4, #1
	cmp r4, r3
	bls _0800C4C8
_0800C506:
	ldr r0, _0800C518 @ =gUnknown_0831B3F0
	bl sub_080050A8
	movs r0, #0
_0800C50E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C514: .4byte 0x00000894
_0800C518: .4byte gUnknown_0831B3F0

	thumb_func_start sub_0800C51C
sub_0800C51C: @ 0x0800C51C
	push {lr}
	adds r1, r0, #0
	ldr r2, _0800C538 @ =gUnknown_0200F430
	movs r0, #0
	cmp r0, r1
	bgt _0800C52E
	cmp r1, #5
	bgt _0800C52E
	movs r0, #1
_0800C52E:
	cmp r0, #0
	bne _0800C540
	ldr r0, _0800C53C @ =gUnknown_0831B41C
	b _0800C55E
	.align 2, 0
_0800C538: .4byte gUnknown_0200F430
_0800C53C: .4byte gUnknown_0831B41C
_0800C540:
	ldr r3, _0800C554 @ =0x00003378
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C55C
	ldr r0, _0800C558 @ =0x00000894
	muls r0, r1, r0
	adds r0, r2, r0
	b _0800C564
	.align 2, 0
_0800C554: .4byte 0x00003378
_0800C558: .4byte 0x00000894
_0800C55C:
	ldr r0, _0800C568 @ =gUnknown_0831B44C
_0800C55E:
	bl sub_080050A8
	movs r0, #0
_0800C564:
	pop {r1}
	bx r1
	.align 2, 0
_0800C568: .4byte gUnknown_0831B44C

	thumb_func_start sub_0800C56C
sub_0800C56C: @ 0x0800C56C
	ldr r1, _0800C57C @ =gUnknown_0200C1A0
	ldr r2, _0800C580 @ =0x00006608
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800C57C: .4byte gUnknown_0200C1A0
_0800C580: .4byte 0x00006608

	thumb_func_start sub_0800C584
sub_0800C584: @ 0x0800C584
	push {r4, r5, lr}
	ldr r5, _0800C5B4 @ =gUnknown_020127A8
	movs r4, #0
	ldr r2, _0800C5B8 @ =gUnknown_083E7CA1
	adds r2, r0, r2
	ldr r1, _0800C5BC @ =gUnknown_083E7CA4
	adds r0, r0, r1
	ldrb r3, [r0]
	ldrb r1, [r2]
	cmp r1, r3
	bhi _0800C5AA
_0800C59A:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C5A4
	adds r4, #1
_0800C5A4:
	adds r1, #1
	cmp r1, r3
	bls _0800C59A
_0800C5AA:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800C5B4: .4byte gUnknown_020127A8
_0800C5B8: .4byte gUnknown_083E7CA1
_0800C5BC: .4byte gUnknown_083E7CA4

	thumb_func_start sub_0800C5C0
sub_0800C5C0: @ 0x0800C5C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0800C660 @ =gUnknown_0200E9DC
	ldr r0, _0800C664 @ =0x00000A54
	adds r0, r0, r2
	mov r8, r0
	movs r4, #0
	movs r5, #0
	ldr r1, _0800C668 @ =0xFFFFFB08
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800C5DE
	movs r5, #1
_0800C5DE:
	ldr r1, _0800C66C @ =gUnknown_083E7C9B
	adds r1, r5, r1
	ldr r0, _0800C670 @ =gUnknown_083E7C9E
	adds r0, r5, r0
	ldrb r3, [r0]
	ldrb r1, [r1]
	ldr r7, _0800C674 @ =gUnknown_083E7CA1
	ldr r6, _0800C678 @ =gUnknown_083E7CA4
	mov ip, r6
	cmp r1, r3
	bhi _0800C61A
	movs r0, #0x90
	lsls r0, r0, #2
	adds r6, r2, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, r2
_0800C602:
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C612
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _0800C612
	adds r4, #1
_0800C612:
	adds r2, #0x48
	adds r1, #1
	cmp r1, r3
	bls _0800C602
_0800C61A:
	adds r1, r5, r7
	mov r2, ip
	adds r0, r5, r2
	ldrb r3, [r0]
	ldrb r1, [r1]
	cmp r1, r3
	bhi _0800C652
	ldr r5, _0800C67C @ =0x00003378
	add r5, r8
	ldr r0, _0800C680 @ =0x00000894
	muls r0, r1, r0
	ldr r6, _0800C684 @ =0x0000081A
	adds r0, r0, r6
	mov r6, r8
	adds r2, r0, r6
_0800C638:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C648
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800C648
	adds r4, #1
_0800C648:
	ldr r0, _0800C680 @ =0x00000894
	adds r2, r2, r0
	adds r1, #1
	cmp r1, r3
	bls _0800C638
_0800C652:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C660: .4byte gUnknown_0200E9DC
_0800C664: .4byte 0x00000A54
_0800C668: .4byte 0xFFFFFB08
_0800C66C: .4byte gUnknown_083E7C9B
_0800C670: .4byte gUnknown_083E7C9E
_0800C674: .4byte gUnknown_083E7CA1
_0800C678: .4byte gUnknown_083E7CA4
_0800C67C: .4byte 0x00003378
_0800C680: .4byte 0x00000894
_0800C684: .4byte 0x0000081A

	thumb_func_start sub_0800C688
sub_0800C688: @ 0x0800C688
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r3, #0
	ldr r7, _0800C78C @ =gUnknown_0200EC24
	ldr r0, _0800C790 @ =0xFFFFFDB4
	adds r0, r0, r7
	mov sb, r0
	movs r1, #2
	rsbs r1, r1, #0
	mov r8, r1
	cmp r2, r8
	bne _0800C6B0
	adds r0, r7, #0
	bl sub_0800C224
	adds r2, r0, #2
_0800C6B0:
	movs r0, #3
	cmp r0, r2
	bge _0800C6B8
	adds r0, r2, #0
_0800C6B8:
	adds r2, r0, #0
	cmp r4, r8
	bne _0800C6CA
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r4, r0, #2
_0800C6CA:
	movs r0, #4
	cmp r0, r4
	bge _0800C6D2
	adds r0, r4, #0
_0800C6D2:
	adds r4, r0, #0
	cmp r5, r8
	bne _0800C6EA
	adds r1, r2, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800C6E4
	adds r1, r2, #1
_0800C6E4:
	lsrs r1, r1, #1
	movs r0, #0xf
	subs r5, r0, r1
_0800C6EA:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r5, r0
	bne _0800C6F6
	movs r0, #0x1d
	subs r5, r0, r2
_0800C6F6:
	movs r0, #4
	rsbs r0, r0, #0
	cmp r5, r0
	bne _0800C702
	movs r0, #0x1f
	subs r5, r0, r2
_0800C702:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0800C71C
	adds r1, r4, #0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800C716
	adds r1, r4, #1
_0800C716:
	lsrs r1, r1, #1
	movs r0, #0xa
	subs r6, r0, r1
_0800C71C:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0800C728
	movs r0, #0xe
	subs r6, r0, r4
_0800C728:
	adds r0, r5, r2
	subs r2, r0, #1
	adds r3, r6, r4
	subs r4, r3, #1
	cmp r2, #0x1e
	ble _0800C738
	subs r0, #0x1f
	subs r5, r5, r0
_0800C738:
	cmp r4, #0x14
	ble _0800C742
	adds r0, r3, #0
	subs r0, #0x15
	subs r6, r6, r0
_0800C742:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r0, r5
	bge _0800C74C
	adds r0, r5, #0
_0800C74C:
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r0, r6
	bge _0800C758
	adds r0, r6, #0
_0800C758:
	adds r6, r0, #0
	movs r0, #0x1e
	cmp r0, r2
	ble _0800C762
	adds r0, r2, #0
_0800C762:
	adds r2, r0, #0
	movs r1, #0x14
	cmp r1, r4
	ble _0800C76C
	adds r1, r4, #0
_0800C76C:
	subs r0, r2, r5
	adds r2, r0, #1
	subs r0, r1, r6
	adds r4, r0, #1
	mov r0, sb
	strb r5, [r0]
	strb r6, [r0, #1]
	strb r2, [r0, #2]
	strb r4, [r0, #3]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C78C: .4byte gUnknown_0200EC24
_0800C790: .4byte 0xFFFFFDB4

	thumb_func_start sub_0800C794
sub_0800C794: @ 0x0800C794
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r1, _0800C7D0 @ =gUnknown_0200C1A0
	ldr r2, _0800C7D4 @ =0x00006610
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r3, _0800C7D8 @ =0x00000804
	adds r1, r2, r3
	ldrb r3, [r1]
	ldr r4, _0800C7DC @ =0x00000808
	adds r1, r2, r4
	ldr r4, [r1]
	lsls r0, r0, #3
	adds r2, r2, r0
	ldr r5, [r2]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0800C7E0
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_08004D2C
	b _0800C808
	.align 2, 0
_0800C7D0: .4byte gUnknown_0200C1A0
_0800C7D4: .4byte 0x00006610
_0800C7D8: .4byte 0x00000804
_0800C7DC: .4byte 0x00000808
_0800C7E0:
	movs r2, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0800C7EA
	movs r2, #3
_0800C7EA:
	ldr r1, [sp, #0x1c]
	cmp r1, #1
	bne _0800C7F2
	movs r2, #1
_0800C7F2:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08004CF0
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r5, #0
	bl sub_08004E6C
_0800C808:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C814
sub_0800C814: @ 0x0800C814
	ldr r1, _0800C824 @ =gUnknown_0200C1A0
	ldr r2, _0800C828 @ =0x00006610
	adds r1, r1, r2
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	bx lr
	.align 2, 0
_0800C824: .4byte gUnknown_0200C1A0
_0800C828: .4byte 0x00006610

	thumb_func_start sub_0800C82C
sub_0800C82C: @ 0x0800C82C
	push {r4, r5, r6, r7, lr}
	ldr r4, _0800C864 @ =0xFFFFF76C
	add sp, r4
	adds r6, r0, #0
	ldr r5, _0800C868 @ =gUnknown_0200E9D8
	movs r0, #0x93
	lsls r0, r0, #2
	adds r7, r5, r0
	ldr r2, _0800C86C @ =0x0000080C
	mov r0, sp
	adds r1, r7, #0
	bl sub_080002C4
	movs r1, #1
	adds r0, r6, #0
	ands r0, r1
	ldr r1, _0800C870 @ =0x00000804
	add r1, sp
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0800C87C
	ldr r1, _0800C874 @ =0x00000808
	add r1, sp
	ldr r0, _0800C878 @ =gUnknown_030013D0
	b _0800C882
	.align 2, 0
_0800C864: .4byte 0xFFFFF76C
_0800C868: .4byte gUnknown_0200E9D8
_0800C86C: .4byte 0x0000080C
_0800C870: .4byte 0x00000804
_0800C874: .4byte 0x00000808
_0800C878: .4byte gUnknown_030013D0
_0800C87C:
	ldr r1, _0800C918 @ =0x00000808
	add r1, sp
	ldr r0, _0800C91C @ =gUnknown_030013B0
_0800C882:
	str r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrh r0, [r0]
	ldr r4, _0800C920 @ =0x0000080C
	add r4, sp
	strh r0, [r4]
	ldrb r1, [r5]
	ldr r0, _0800C924 @ =0x0000080E
	add r0, sp
	strb r1, [r0]
	ldrb r1, [r5, #1]
	ldr r0, _0800C928 @ =0x0000080F
	add r0, sp
	strb r1, [r0]
	ldrb r0, [r5, #2]
	subs r0, #2
	movs r1, #0x81
	lsls r1, r1, #4
	add r1, sp
	strb r0, [r1]
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, #2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, _0800C92C @ =0x00000811
	add r1, sp
	strb r0, [r1]
	ldr r1, _0800C930 @ =0x00000814
	add r1, sp
	ldr r0, _0800C934 @ =sub_0800C794
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0800C25C
	ldr r1, _0800C938 @ =0x00000818
	add r1, sp
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0800663C
	movs r2, #1
	adds r0, r6, #0
	ands r0, r2
	ldr r1, _0800C93C @ =0x0000081A
	add r1, sp
	strb r0, [r1]
	lsrs r0, r6, #1
	ands r0, r2
	ldr r1, _0800C940 @ =0x0000081B
	add r1, sp
	strb r0, [r1]
	lsrs r0, r6, #2
	ands r0, r2
	ldr r1, _0800C944 @ =0x0000081C
	add r1, sp
	strb r0, [r1]
	lsrs r0, r6, #3
	ands r0, r2
	ldr r1, _0800C948 @ =0x0000081D
	add r1, sp
	strb r0, [r1]
	ldr r0, _0800C94C @ =gUnknown_0200C1A0
	ldr r2, _0800C950 @ =0x00002344
	adds r0, r0, r2
	ldrb r1, [r0]
	cmp r1, #2
	bne _0800C958
	ldr r0, _0800C954 @ =0x0000081E
	add r0, sp
	strb r1, [r0]
	b _0800C960
	.align 2, 0
_0800C918: .4byte 0x00000808
_0800C91C: .4byte gUnknown_030013B0
_0800C920: .4byte 0x0000080C
_0800C924: .4byte 0x0000080E
_0800C928: .4byte 0x0000080F
_0800C92C: .4byte 0x00000811
_0800C930: .4byte 0x00000814
_0800C934: .4byte sub_0800C794
_0800C938: .4byte 0x00000818
_0800C93C: .4byte 0x0000081A
_0800C940: .4byte 0x0000081B
_0800C944: .4byte 0x0000081C
_0800C948: .4byte 0x0000081D
_0800C94C: .4byte gUnknown_0200C1A0
_0800C950: .4byte 0x00002344
_0800C954: .4byte 0x0000081E
_0800C958:
	ldr r1, _0800C9A0 @ =0x0000081E
	add r1, sp
	movs r0, #1
	strb r0, [r1]
_0800C960:
	ldr r1, _0800C9A4 @ =0x00000821
	add r1, sp
	movs r3, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r1]
	lsrs r0, r6, #6
	ands r0, r2
	ldr r1, _0800C9A8 @ =0x00000823
	add r1, sp
	strb r0, [r1]
	ldr r0, _0800C9AC @ =0x00000824
	add r0, sp
	strb r3, [r0]
	lsrs r0, r6, #7
	ands r0, r2
	ldr r1, _0800C9B0 @ =0x00000825
	add r1, sp
	strb r0, [r1]
	ldr r0, _0800C9B4 @ =0x00000826
	add r0, sp
	strh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r1, r6
	cmp r1, #0
	beq _0800C9BC
	ldr r1, _0800C9B8 @ =0x00000828
	add r1, sp
	movs r0, #0x72
	strh r0, [r1]
	b _0800C9C2
	.align 2, 0
_0800C9A0: .4byte 0x0000081E
_0800C9A4: .4byte 0x00000821
_0800C9A8: .4byte 0x00000823
_0800C9AC: .4byte 0x00000824
_0800C9B0: .4byte 0x00000825
_0800C9B4: .4byte 0x00000826
_0800C9B8: .4byte 0x00000828
_0800C9BC:
	ldr r0, _0800C9D8 @ =0x00000828
	add r0, sp
	strh r1, [r0]
_0800C9C2:
	movs r1, #0x80
	lsls r1, r1, #3
	ands r1, r6
	cmp r1, #0
	beq _0800C9E0
	ldr r1, _0800C9DC @ =0x0000082A
	add r1, sp
	movs r0, #0x79
	strh r0, [r1]
	b _0800C9E6
	.align 2, 0
_0800C9D8: .4byte 0x00000828
_0800C9DC: .4byte 0x0000082A
_0800C9E0:
	ldr r0, _0800CA54 @ =0x0000082A
	add r0, sp
	strh r1, [r0]
_0800C9E6:
	ldr r1, _0800CA58 @ =0x0000082C
	add r1, sp
	movs r0, #0x73
	strh r0, [r1]
	ldr r1, _0800CA5C @ =0x0000082E
	add r1, sp
	movs r0, #0x77
	strh r0, [r1]
	ldr r1, _0800CA60 @ =0x00000834
	add r1, sp
	ldr r0, _0800CA64 @ =sub_0800C814+1
	str r0, [r1]
	ldr r0, _0800CA68 @ =0x00000884
	add r0, sp
	str r6, [r0]
	mov r0, sp
	bl sub_0800C49C
	adds r7, r0, #0
	bl sub_0800C51C
	adds r4, r0, #0
	ldr r1, _0800CA6C @ =0x0000080C
	adds r0, r4, r1
	ldr r5, _0800CA70 @ =gUnknown_0200C1A0
	ldr r2, _0800CA74 @ =0x00006610
	adds r1, r5, r2
	str r4, [r1]
	bl sub_08006768
	movs r1, #0
	ldr r2, _0800CA78 @ =0x00002344
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800CA30
	movs r1, #1
_0800CA30:
	lsls r0, r1, #2
	ldr r2, _0800CA7C @ =0x00006614
	adds r1, r5, r2
	adds r0, r0, r1
	str r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r6
	cmp r0, #0
	beq _0800CA48
	bl sub_08011C80
_0800CA48:
	adds r0, r7, #0
	ldr r3, _0800CA80 @ =0x00000894
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800CA54: .4byte 0x0000082A
_0800CA58: .4byte 0x0000082C
_0800CA5C: .4byte 0x0000082E
_0800CA60: .4byte 0x00000834
_0800CA64: .4byte sub_0800C814+1
_0800CA68: .4byte 0x00000884
_0800CA6C: .4byte 0x0000080C
_0800CA70: .4byte gUnknown_0200C1A0
_0800CA74: .4byte 0x00006610
_0800CA78: .4byte 0x00002344
_0800CA7C: .4byte 0x00006614
_0800CA80: .4byte 0x00000894

	thumb_func_start sub_0800CA84
sub_0800CA84: @ 0x0800CA84
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, _0800CAD8 @ =gUnknown_0200C1A0
	ldr r0, _0800CADC @ =0x00002344
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #3
	bne _0800CA9E
	ldr r2, _0800CAE0 @ =0x000023F0
	adds r0, r7, r2
	ldr r6, [r0]
	movs r0, #0
	strb r0, [r1]
_0800CA9E:
	adds r0, r6, #0
	bl sub_0800C51C
	ldr r1, _0800CAE4 @ =0x0000080C
	adds r5, r0, r1
	ldr r4, [r5, #0x78]
	ldr r2, _0800CAE8 @ =0x00006610
	adds r1, r7, r2
	str r0, [r1]
	adds r0, r5, #0
	bl sub_080067EC
	bl sub_08011E9C
	movs r0, #0x80
	lsls r0, r0, #6
	ands r4, r0
	cmp r4, #0
	beq _0800CAEC
	bl sub_0800FA6C
	cmp r0, #0
	beq _0800CAEC
	ldr r1, _0800CAE0 @ =0x000023F0
	adds r0, r7, r1
	str r6, [r0]
	movs r0, #0
	b _0800CB1A
	.align 2, 0
_0800CAD8: .4byte gUnknown_0200C1A0
_0800CADC: .4byte 0x00002344
_0800CAE0: .4byte 0x000023F0
_0800CAE4: .4byte 0x0000080C
_0800CAE8: .4byte 0x00006610
_0800CAEC:
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800CAFA
	movs r0, #2
	b _0800CB1A
_0800CAFA:
	cmp r0, #2
	bne _0800CB02
	movs r0, #3
	b _0800CB1A
_0800CB02:
	cmp r0, #3
	bne _0800CB0A
	movs r0, #4
	b _0800CB1A
_0800CB0A:
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CB18
	movs r0, #0
	b _0800CB1A
_0800CB18:
	movs r0, #1
_0800CB1A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800CB20
sub_0800CB20: @ 0x0800CB20
	push {lr}
	bl sub_0800C51C
	ldr r2, _0800CB38 @ =0x00000888
	adds r1, r0, r2
	ldrh r1, [r1]
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	pop {r1}
	bx r1
	.align 2, 0
_0800CB38: .4byte 0x00000888

	thumb_func_start sub_0800CB3C
sub_0800CB3C: @ 0x0800CB3C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0800C51C
	ldr r1, _0800CB80 @ =0x0000080C
	adds r4, r0, r1
	ldr r0, [r4, #0x78]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0800CB58
	bl sub_08011C70
_0800CB58:
	bl sub_0800C5C0
	cmp r0, #1
	bls _0800CB64
	movs r0, #1
	strb r0, [r4, #0x13]
_0800CB64:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080066D4
	movs r0, #0xe0
	lsls r0, r0, #0x13
	bl sub_08005C74
	adds r0, r5, #0
	bl sub_0800C56C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CB80: .4byte 0x0000080C

	thumb_func_start sub_0800CB84
sub_0800CB84: @ 0x0800CB84
	push {r4, r5, lr}
	adds r1, r0, #0
	ldr r2, _0800CBA4 @ =gUnknown_0200C1A0
	ldr r3, _0800CBA8 @ =0x00002344
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #3
	bne _0800CBBC
	ldr r1, _0800CBAC @ =0x000023F0
	adds r0, r2, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_0800C51C
	b _0800CBC4
	.align 2, 0
_0800CBA4: .4byte gUnknown_0200C1A0
_0800CBA8: .4byte 0x00002344
_0800CBAC: .4byte 0x000023F0
_0800CBB0:
	adds r0, r5, #0
	bl sub_0800CB3C
	movs r0, #1
	rsbs r0, r0, #0
	b _0800CBF6
_0800CBBC:
	adds r0, r1, #0
	bl sub_0800C82C
	adds r5, r0, #0
_0800CBC4:
	ldr r4, _0800CBC8 @ =gUnknown_0200E4E4
	b _0800CBD0
	.align 2, 0
_0800CBC8: .4byte gUnknown_0200E4E4
_0800CBCC:
	cmp r1, #3
	beq _0800CBB0
_0800CBD0:
	adds r0, r5, #0
	bl sub_0800CA84
	adds r1, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0800CBF4
	cmp r1, #2
	bne _0800CBCC
	adds r0, r5, #0
	bl sub_0800CB20
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0800CB3C
	adds r0, r4, #0
	b _0800CBF6
_0800CBF4:
	movs r0, #0
_0800CBF6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800CBFC
sub_0800CBFC: @ 0x0800CBFC
	push {r4, r5, lr}
	movs r1, #3
	rsbs r1, r1, #0
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r1, #0
	adds r2, r3, #0
	bl sub_0800C688
	movs r0, #6
	bl sub_0800C82C
	adds r5, r0, #0
_0800CC16:
	adds r0, r5, #0
	bl sub_0800CA84
	cmp r0, #2
	bne _0800CC16
	adds r0, r5, #0
	bl sub_0800CB20
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0800CB3C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800CC38
sub_0800CC38: @ 0x0800CC38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0800C2E8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0800C30C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #1
	bl sub_0800C30C
	bl sub_0800CBFC
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800CC60
sub_0800CC60: @ 0x0800CC60
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800C2E8
	ldr r0, _0800CC8C @ =gUnknown_08318598
	movs r1, #0
	movs r2, #1
	bl sub_0800C30C
	ldr r0, _0800CC90 @ =gUnknown_08318590
	movs r1, #1
	movs r2, #1
	bl sub_0800C30C
	adds r0, r4, #0
	bl sub_0800C358
	bl sub_0800CBFC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800CC8C: .4byte gUnknown_08318598
_0800CC90: .4byte gUnknown_08318590

	thumb_func_start sub_0800CC94
sub_0800CC94: @ 0x0800CC94
	push {r4, r5, r6, r7, lr}
	ldr r7, _0800CCC0 @ =gUnknown_030013B0
	ldr r4, _0800CCC4 @ =gUnknown_083E7CA8
	movs r6, #0
	ldr r5, _0800CCC8 @ =gUnknown_020127CC
_0800CC9E:
	ldrb r1, [r4]
	adds r4, #1
	ldrb r0, [r4]
	adds r4, #1
	lsls r1, r1, #8
	orrs r1, r0
	adds r0, r7, #0
	bl sub_08004918
	strh r0, [r5]
	adds r5, #2
	adds r6, #1
	cmp r6, #0x18
	bls _0800CC9E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CCC0: .4byte gUnknown_030013B0
_0800CCC4: .4byte gUnknown_083E7CA8
_0800CCC8: .4byte gUnknown_020127CC

	thumb_func_start sub_0800CCCC
sub_0800CCCC: @ 0x0800CCCC
	push {lr}
	movs r2, #0
	ldr r1, _0800CCDC @ =gUnknown_020127CC
_0800CCD2:
	ldrh r3, [r1]
	cmp r0, r3
	bne _0800CCE0
	movs r0, #1
	b _0800CCEA
	.align 2, 0
_0800CCDC: .4byte gUnknown_020127CC
_0800CCE0:
	adds r1, #2
	adds r2, #1
	cmp r2, #0x18
	bls _0800CCD2
	movs r0, #0
_0800CCEA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800CCF0
sub_0800CCF0: @ 0x0800CCF0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r1
	adds r6, r2, #0
	adds r4, r3, #0
	ldr r5, [r0, #0xc]
	ldrb r1, [r0, #5]
	ldrb r2, [r0, #8]
	adds r0, r5, #0
	bl sub_08004CF0
	lsls r4, r4, #5
	ldr r2, [r5]
	adds r2, r2, r4
	ldrh r0, [r5, #0x14]
	muls r0, r6, r0
	add r0, r8
	lsls r0, r0, #6
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08004990
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CD2C
sub_0800CD2C: @ 0x0800CD2C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #6]
	cmp r0, r1
	bls _0800CD52
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800CD58
	ldrb r0, [r4, #2]
	subs r0, #1
	cmp r0, r1
	bgt _0800CD58
	adds r0, r5, #0
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800CD58
_0800CD52:
	adds r0, r4, #0
	bl sub_0800D000
_0800CD58:
	ldrb r1, [r4]
	ldrb r0, [r4, #6]
	adds r1, r1, r0
	ldrb r2, [r4, #7]
	lsls r2, r2, #1
	ldrb r0, [r4, #1]
	adds r2, r2, r0
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_0800CCF0
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CD7C
sub_0800CD7C: @ 0x0800CD7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, [r4, #0xc]
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #6]
	cmp r0, r1
	bhi _0800CD92
	adds r0, r4, #0
	bl sub_0800D000
_0800CD92:
	ldrb r2, [r4]
	ldrb r0, [r4, #6]
	adds r2, r2, r0
	ldrb r0, [r4, #7]
	lsls r0, r0, #1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	ldrh r1, [r5, #0x14]
	muls r0, r1, r0
	adds r0, r0, r2
	lsls r0, r0, #6
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	ldrb r0, [r4, #5]
	movs r2, #0x10
	cmp r0, #0
	beq _0800CDB6
	movs r2, #0x40
_0800CDB6:
	strh r2, [r5, #0x18]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_08004824
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800CDCC
sub_0800CDCC: @ 0x0800CDCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r4, _0800CDFC @ =gUnknown_030013B0
	ldrb r0, [r6]
	adds r0, r0, r1
	mov r8, r0
	lsls r2, r2, #1
	ldrb r0, [r6, #1]
	adds r7, r2, r0
	mov r0, r8
	cmp r0, #0x1d
	bhi _0800CE1E
	cmp r7, #0x13
	bhi _0800CE1E
	cmp r3, #0
	beq _0800CE04
	ldr r1, _0800CE00 @ =0x000081A5
	adds r0, r4, #0
	bl sub_08004918
	adds r3, r0, #0
	b _0800CE06
	.align 2, 0
_0800CDFC: .4byte gUnknown_030013B0
_0800CE00: .4byte 0x000081A5
_0800CE04:
	movs r3, #1
_0800CE06:
	ldr r5, [r6, #0xc]
	str r4, [r6, #0xc]
	ldrb r4, [r6, #8]
	movs r0, #0
	strb r0, [r6, #8]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_0800CCF0
	str r5, [r6, #0xc]
	strb r4, [r6, #8]
_0800CE1E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800CE28
sub_0800CE28: @ 0x0800CE28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0800CEAC @ =gUnknown_030013B0
	mov r8, r0
	ldrb r0, [r6, #3]
	movs r7, #0
	cmp r0, #1
	beq _0800CE80
_0800CE3C:
	lsls r0, r7, #1
	ldrb r1, [r6, #1]
	adds r0, r0, r1
	mov r2, r8
	ldrh r1, [r2, #0x14]
	muls r0, r1, r0
	ldrb r1, [r6]
	adds r0, r0, r1
	lsls r0, r0, #6
	ldr r4, [r2, #0x10]
	adds r4, r4, r0
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r1, r4, r2
	ldrb r5, [r6, #2]
	lsls r5, r5, #6
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08000314
	movs r1, #0xf0
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r2, #0xb4
	lsls r2, r2, #5
	adds r1, r4, r2
	adds r2, r5, #0
	bl sub_08000314
	adds r7, #1
	ldrb r0, [r6, #3]
	subs r0, #1
	cmp r7, r0
	blo _0800CE3C
_0800CE80:
	ldrb r0, [r6, #3]
	subs r0, #1
	lsls r0, r0, #1
	ldrb r1, [r6, #1]
	adds r2, r0, r1
	ldrb r0, [r6, #5]
	movs r1, #0x10
	cmp r0, #0
	beq _0800CE94
	movs r1, #0x40
_0800CE94:
	mov r0, r8
	strh r1, [r0, #0x18]
	ldrb r1, [r6]
	ldrb r3, [r6, #2]
	bl sub_08004D2C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CEAC: .4byte gUnknown_030013B0

	thumb_func_start sub_0800CEB0
sub_0800CEB0: @ 0x0800CEB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sb, r1
	ldrb r1, [r7, #1]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrb r1, [r7]
	adds r0, r0, r1
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r6, r0, r1
	movs r0, #0
	mov r8, r0
	ldrb r1, [r7, #3]
	cmp r8, r1
	bhs _0800CF20
	movs r0, #0xf0
	lsls r0, r0, #3
	mov sl, r0
_0800CEE2:
	mov r1, sb
	lsls r4, r1, #6
	adds r4, r6, r4
	ldrb r5, [r7, #2]
	subs r5, r5, r1
	lsls r5, r5, #6
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_080003B4
	mov r0, sl
	adds r1, r6, r0
	add r4, sl
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_080003B4
	ldr r0, _0800CF30 @ =gUnknown_030013B0
	adds r1, r6, #0
	mov r2, sb
	bl sub_08004B58
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r6, r6, r1
	movs r0, #1
	add r8, r0
	ldrb r1, [r7, #3]
	cmp r8, r1
	blo _0800CEE2
_0800CF20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CF30: .4byte gUnknown_030013B0

	thumb_func_start sub_0800CF34
sub_0800CF34: @ 0x0800CF34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r7, r1, #0
	ldrb r2, [r0]
	subs r2, r2, r7
	ldrb r0, [r0, #2]
	adds r3, r0, r7
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r5, r0, r1
	movs r0, #0
	mov r8, r0
	mov r1, sb
	ldrb r1, [r1, #3]
	cmp r8, r1
	bhs _0800CFAE
	subs r0, r3, r7
	lsls r6, r0, #6
	movs r0, #0xf0
	lsls r0, r0, #3
	mov sl, r0
_0800CF74:
	lsls r4, r7, #6
	adds r4, r5, r4
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08000314
	add r4, sl
	mov r0, sl
	adds r1, r5, r0
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08000314
	adds r1, r5, r6
	ldr r0, _0800CFBC @ =gUnknown_030013B0
	adds r2, r7, #0
	bl sub_08004B58
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r5, r5, r1
	movs r0, #1
	add r8, r0
	mov r1, sb
	ldrb r1, [r1, #3]
	cmp r8, r1
	blo _0800CF74
_0800CFAE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CFBC: .4byte gUnknown_030013B0

	thumb_func_start sub_0800CFC0
sub_0800CFC0: @ 0x0800CFC0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800CFE4 @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CFF8
	cmp r1, #0
	beq _0800CFDE
	ldr r0, _0800CFE8 @ =gUnknown_02000008
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800CFF8
_0800CFDE:
	movs r4, #0
	b _0800CFF2
	.align 2, 0
_0800CFE4: .4byte gUnknown_02001D0C
_0800CFE8: .4byte gUnknown_02000008
_0800CFEC:
	bl sub_08011E9C
	adds r4, #1
_0800CFF2:
	ldrb r0, [r5, #9]
	cmp r4, r0
	blo _0800CFEC
_0800CFF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D000
sub_0800D000: @ 0x0800D000
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	strb r5, [r4, #6]
	ldrb r0, [r4, #7]
	adds r0, #1
	strb r0, [r4, #7]
	ldrb r1, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bhi _0800D026
	adds r0, r4, #0
	bl sub_0800CE28
	strb r5, [r4, #6]
	ldrb r0, [r4, #3]
	subs r0, #1
	strb r0, [r4, #7]
_0800D026:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D02C
sub_0800D02C: @ 0x0800D02C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _0800D048 @ =gUnknown_030013B0
	movs r0, #0
	strb r0, [r4, #7]
	strb r0, [r4, #6]
	ldrb r0, [r4, #5]
	movs r1, #0x10
	cmp r0, #0
	beq _0800D042
	movs r1, #0x40
_0800D042:
	strh r1, [r6, #0x18]
	movs r5, #0
	b _0800D05E
	.align 2, 0
_0800D048: .4byte gUnknown_030013B0
_0800D04C:
	lsls r2, r5, #1
	ldrb r0, [r4, #1]
	adds r2, r2, r0
	ldrb r1, [r4]
	ldrb r3, [r4, #2]
	adds r0, r6, #0
	bl sub_08004D2C
	adds r5, #1
_0800D05E:
	ldrb r0, [r4, #3]
	cmp r5, r0
	blo _0800D04C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D06C
sub_0800D06C: @ 0x0800D06C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	movs r2, #0
	ldrb r3, [r1]
	cmp r3, #0
	beq _0800D0B4
	ldr r6, _0800D084 @ =gUnknown_083D6088
_0800D07C:
	cmp r3, #0x24
	bne _0800D088
	adds r1, #2
	b _0800D0AE
	.align 2, 0
_0800D084: .4byte gUnknown_083D6088
_0800D088:
	cmp r3, #0x23
	beq _0800D096
	lsrs r0, r3, #4
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D0A2
_0800D096:
	strb r3, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	adds r1, #2
	adds r4, #2
	b _0800D0A8
_0800D0A2:
	strb r3, [r4]
	adds r1, #1
	adds r4, #1
_0800D0A8:
	adds r2, #1
	cmp r2, r5
	beq _0800D0C4
_0800D0AE:
	ldrb r3, [r1]
	cmp r3, #0
	bne _0800D07C
_0800D0B4:
	cmp r2, r5
	bhs _0800D0C4
	movs r0, #0x20
_0800D0BA:
	strb r0, [r4]
	adds r4, #1
	adds r2, #1
	cmp r2, r5
	blo _0800D0BA
_0800D0C4:
	movs r0, #0
	strb r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D0D0
sub_0800D0D0: @ 0x0800D0D0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	movs r6, #0
	adds r0, r4, #0
	bl sub_08004954
	cmp r0, r7
	bhs _0800D0FA
	movs r2, #0
	subs r1, r7, r0
	cmp r6, r1
	bhs _0800D0FA
	movs r3, #0x20
_0800D0EE:
	strb r3, [r5]
	adds r5, #1
	adds r6, #1
	adds r2, #1
	cmp r2, r1
	blo _0800D0EE
_0800D0FA:
	cmp r0, #0
	beq _0800D18A
	ldrb r1, [r4]
	cmp r0, r7
	bls _0800D14A
	subs r3, r0, r7
	movs r2, #0
	cmp r2, r3
	bhs _0800D14A
	adds r0, r1, #0
	cmp r1, #0
	beq _0800D14A
	ldr r1, _0800D120 @ =gUnknown_083D6088
	mov ip, r1
_0800D116:
	cmp r0, #0x24
	bne _0800D124
	adds r4, #2
	b _0800D13E
	.align 2, 0
_0800D120: .4byte gUnknown_083D6088
_0800D124:
	cmp r0, #0x23
	bne _0800D12C
	adds r4, #2
	b _0800D13C
_0800D12C:
	lsrs r0, r0, #4
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D13A
	adds r4, #2
	b _0800D13C
_0800D13A:
	adds r4, #1
_0800D13C:
	adds r2, #1
_0800D13E:
	ldrb r1, [r4]
	cmp r2, r3
	bhs _0800D14A
	adds r0, r1, #0
	cmp r1, #0
	bne _0800D116
_0800D14A:
	cmp r1, #0
	beq _0800D188
	ldr r2, _0800D158 @ =gUnknown_083D6088
_0800D150:
	cmp r1, #0x24
	bne _0800D15C
	adds r4, #2
	b _0800D182
	.align 2, 0
_0800D158: .4byte gUnknown_083D6088
_0800D15C:
	cmp r1, #0x23
	beq _0800D16A
	lsrs r0, r1, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D176
_0800D16A:
	strb r1, [r5]
	ldrb r0, [r4, #1]
	strb r0, [r5, #1]
	adds r4, #2
	adds r5, #2
	b _0800D17C
_0800D176:
	strb r1, [r5]
	adds r4, #1
	adds r5, #1
_0800D17C:
	adds r6, #1
	cmp r6, r7
	beq _0800D188
_0800D182:
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800D150
_0800D188:
	movs r0, #0
_0800D18A:
	strb r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D194
sub_0800D194: @ 0x0800D194
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r1, [sp, #0x14]
	movs r7, #1
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	beq _0800D1AA
	adds r1, #1
_0800D1AA:
	movs r0, #2
	cmp r0, r1
	bge _0800D1B2
	adds r0, r1, #0
_0800D1B2:
	adds r1, r0, #0
	movs r0, #2
	cmp r0, r3
	bge _0800D1BC
	adds r0, r3, #0
_0800D1BC:
	adds r3, r6, r0
	subs r3, #1
	movs r2, #0x1d
	cmp r2, r3
	ble _0800D1C8
	adds r2, r3, #0
_0800D1C8:
	adds r0, r5, r1
	subs r0, #1
	movs r1, #0x13
	cmp r1, r0
	ble _0800D1D4
	adds r1, r0, #0
_0800D1D4:
	subs r0, r2, r6
	adds r3, r0, #1
	subs r0, r1, r5
	adds r1, r0, #1
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	beq _0800D1E8
	subs r5, #1
	adds r1, #1
_0800D1E8:
	movs r2, #0
	strb r6, [r4]
	strb r5, [r4, #1]
	strb r3, [r4, #2]
	lsrs r0, r1, #1
	strb r0, [r4, #3]
	ldr r0, [sp, #0x18]
	strb r0, [r4, #4]
	ldr r0, [sp, #0x1c]
	strb r0, [r4, #5]
	strb r2, [r4, #6]
	strb r2, [r4, #7]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0800D20E
	strb r2, [r4, #8]
	strb r7, [r4, #9]
	ldr r0, _0800D214 @ =gUnknown_030013B0
	str r0, [r4, #0xc]
_0800D20E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D214: .4byte gUnknown_030013B0

	thumb_func_start sub_0800D218
sub_0800D218: @ 0x0800D218
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	b _0800D238
_0800D220:
	adds r0, r6, #0
	movs r1, #0xf
	bl sub_0803D34C
	ands r4, r0
	ldrb r1, [r5, #6]
	ldrb r2, [r5, #7]
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_0800CDCC
	adds r6, #1
_0800D238:
	bl sub_08011E9C
	bl sub_0800FA6C
	cmp r0, #0
	bne _0800D268
	ldr r0, _0800D264 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800D220
	ldrb r1, [r5, #6]
	ldrb r2, [r5, #7]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0800CDCC
	movs r0, #0
	b _0800D26A
	.align 2, 0
_0800D264: .4byte gUnknown_02000020
_0800D268:
	movs r0, #1
_0800D26A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800D270
sub_0800D270: @ 0x0800D270
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _0800D2A4 @ =0x00000E01
	cmp r1, r0
	bne _0800D29C
	ldrb r0, [r4, #2]
	cmp r0, #7
	bls _0800D29C
	ldrb r0, [r4, #3]
	cmp r0, #3
	bne _0800D29C
	adds r0, r4, #0
	movs r1, #6
	bl sub_0800CEB0
	ldrb r0, [r4]
	adds r0, #6
	strb r0, [r4]
	ldrb r0, [r4, #2]
	subs r0, #6
	strb r0, [r4, #2]
_0800D29C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D2A4: .4byte 0x00000E01

	thumb_func_start sub_0800D2A8
sub_0800D2A8: @ 0x0800D2A8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _0800D2DC @ =0x00000E07
	cmp r1, r0
	bne _0800D2D4
	ldrb r0, [r4, #2]
	cmp r0, #7
	bls _0800D2D4
	ldrb r0, [r4, #3]
	cmp r0, #3
	bne _0800D2D4
	adds r0, r4, #0
	movs r1, #6
	bl sub_0800CF34
	ldrb r0, [r4]
	subs r0, #6
	strb r0, [r4]
	ldrb r0, [r4, #2]
	adds r0, #6
	strb r0, [r4, #2]
_0800D2D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D2DC: .4byte 0x00000E07

	thumb_func_start sub_0800D2E0
sub_0800D2E0: @ 0x0800D2E0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0800D324 @ =gUnknown_020127BC
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, #0
	beq _0800D300
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r2, #0
	movs r1, #0xd
	movs r2, #0x20
	movs r3, #8
	bl sub_0800C06C
_0800D300:
	movs r2, #1
	movs r0, #6
	movs r1, #0
	str r0, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xe
	movs r3, #0x1d
	bl sub_0800D194
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D324: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D328
sub_0800D328: @ 0x0800D328
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, [sp, #0x20]
	ldr r0, _0800D354 @ =gUnknown_020127BC
	movs r1, #0
	str r3, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800D194
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D354: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D358
sub_0800D358: @ 0x0800D358
	ldr r1, _0800D360 @ =gUnknown_020127BC
	movs r0, #1
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_0800D360: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D364
sub_0800D364: @ 0x0800D364
	push {r4, r5, lr}
	ldr r4, _0800D390 @ =gUnknown_020127BC
	ldrb r5, [r4]
	adds r2, r5, r0
	movs r0, #0x1d
	cmp r0, r2
	ble _0800D374
	adds r0, r2, #0
_0800D374:
	ldrb r3, [r4, #1]
	adds r1, r3, r1
	movs r2, #0x12
	cmp r2, r1
	ble _0800D380
	adds r2, r1, #0
_0800D380:
	subs r0, r0, r5
	strb r0, [r4, #6]
	subs r0, r2, r3
	lsrs r0, r0, #1
	strb r0, [r4, #7]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D390: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D394
sub_0800D394: @ 0x0800D394
	push {lr}
	ldr r2, _0800D3A8 @ =gUnknown_020127BC
	movs r1, #3
	cmp r1, r0
	ble _0800D3A0
	adds r1, r0, #0
_0800D3A0:
	strb r1, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800D3A8: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D3AC
sub_0800D3AC: @ 0x0800D3AC
	ldr r1, _0800D3B4 @ =gUnknown_020127BC
	strb r0, [r1, #9]
	bx lr
	.align 2, 0
_0800D3B4: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D3B8
sub_0800D3B8: @ 0x0800D3B8
	push {lr}
	ldr r0, _0800D3C8 @ =gUnknown_020127BC
	movs r1, #0xc
	bl sub_0800A554
	pop {r0}
	bx r0
	.align 2, 0
_0800D3C8: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D3CC
sub_0800D3CC: @ 0x0800D3CC
	push {lr}
	ldr r0, _0800D3DC @ =gUnknown_020127BC
	movs r1, #0xc
	bl sub_0800A5B4
	pop {r0}
	bx r0
	.align 2, 0
_0800D3DC: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D3E0
sub_0800D3E0: @ 0x0800D3E0
	push {lr}
	ldr r0, _0800D3EC @ =gUnknown_020127BC
	bl sub_0800D000
	pop {r0}
	bx r0
	.align 2, 0
_0800D3EC: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D3F0
sub_0800D3F0: @ 0x0800D3F0
	push {lr}
	ldr r0, _0800D3FC @ =gUnknown_020127BC
	bl sub_0800D02C
	pop {r0}
	bx r0
	.align 2, 0
_0800D3FC: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D400
sub_0800D400: @ 0x0800D400
	push {r4, lr}
	ldr r4, _0800D418 @ =gUnknown_020127BC
	adds r0, r4, #0
	bl sub_0800D218
	cmp r0, #0
	bne _0800D41C
	adds r0, r4, #0
	bl sub_0800D02C
	movs r0, #0
	b _0800D41E
	.align 2, 0
_0800D418: .4byte gUnknown_020127BC
_0800D41C:
	movs r0, #1
_0800D41E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800D424
sub_0800D424: @ 0x0800D424
	push {lr}
	ldr r0, _0800D430 @ =gUnknown_020127BC
	bl sub_0800D218
	pop {r1}
	bx r1
	.align 2, 0
_0800D430: .4byte gUnknown_020127BC

	thumb_func_start sub_0800D434
sub_0800D434: @ 0x0800D434
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne _0800D442
	movs r0, #3
	strb r0, [r4, #8]
	b _0800D4B4
_0800D442:
	cmp r1, #2
	bne _0800D44A
	strb r1, [r4, #8]
	b _0800D4B4
_0800D44A:
	cmp r1, #3
	bne _0800D454
	movs r0, #1
	strb r0, [r4, #8]
	b _0800D4B4
_0800D454:
	cmp r1, #4
	bne _0800D45E
	movs r0, #0
	strb r0, [r4, #8]
	b _0800D4B6
_0800D45E:
	cmp r1, #5
	bne _0800D46A
	adds r0, r4, #0
	bl sub_0800D000
	b _0800D4B4
_0800D46A:
	cmp r1, #6
	bne _0800D476
	adds r0, r4, #0
	bl sub_0800D02C
	b _0800D4B4
_0800D476:
	cmp r1, #7
	bne _0800D490
	adds r0, r4, #0
	bl sub_0800D218
	cmp r0, #0
	beq _0800D488
	movs r0, #1
	b _0800D4B6
_0800D488:
	adds r0, r4, #0
	bl sub_0800D02C
	b _0800D4B4
_0800D490:
	cmp r1, #8
	bne _0800D49C
	adds r0, r4, #0
	bl sub_0800D218
	b _0800D4B6
_0800D49C:
	cmp r1, #9
	bne _0800D4A8
	movs r0, #0x14
	bl sub_08011B68
	b _0800D4B4
_0800D4A8:
	cmp r1, #0xa
	bne _0800D4B4
	ldr r0, _0800D4BC @ =gUnknown_0200C1B4
	movs r1, #0
	bl sub_0800D55C
_0800D4B4:
	movs r0, #0
_0800D4B6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800D4BC: .4byte gUnknown_0200C1B4

	thumb_func_start sub_0800D4C0
sub_0800D4C0: @ 0x0800D4C0
	push {r4, r5, r6, r7, lr}
	ldr r5, _0800D4F0 @ =gUnknown_020127BC
	ldr r7, _0800D4F4 @ =gUnknown_030013B0
	adds r4, r0, #0
	ldr r0, _0800D4F8 @ =0xFFFFBD28
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #3
	bne _0800D4DC
	ldr r2, _0800D4FC @ =0xFFFFBDD0
	adds r0, r5, r2
	ldr r4, [r0]
	movs r0, #0
	strb r0, [r1]
_0800D4DC:
	ldr r0, _0800D4FC @ =0xFFFFBDD0
	adds r6, r5, r0
_0800D4E0:
	ldrb r0, [r4]
	adds r2, r0, #0
	adds r4, #1
	cmp r2, #0
	bne _0800D500
	adds r0, r4, #0
	b _0800D556
	.align 2, 0
_0800D4F0: .4byte gUnknown_020127BC
_0800D4F4: .4byte gUnknown_030013B0
_0800D4F8: .4byte 0xFFFFBD28
_0800D4FC: .4byte 0xFFFFBDD0
_0800D500:
	cmp r2, #1
	bne _0800D528
	ldrb r0, [r4]
	adds r1, r0, #0
	adds r4, #1
	cmp r1, #0xa
	bhi _0800D520
	adds r0, r5, #0
	bl sub_0800D434
	cmp r0, #0
	beq _0800D4E0
	subs r0, r4, #2
	str r0, [r6]
	movs r0, #0
	b _0800D556
_0800D520:
	adds r0, r5, #0
	bl sub_0800CD7C
	b _0800D4E0
_0800D528:
	cmp r2, #0xf7
	bhi _0800D538
	ldr r0, [r7, #0xc]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r2, r0, #1
	b _0800D544
_0800D538:
	ldrb r1, [r4]
	adds r4, #1
	adds r0, r2, #0
	subs r0, #0xf8
	lsls r2, r0, #8
	orrs r2, r1
_0800D544:
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_0800CD2C
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800CFC0
	b _0800D4E0
_0800D556:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800D55C
sub_0800D55C: @ 0x0800D55C
	push {r4, r5, r6, r7, lr}
	ldr r5, _0800D574 @ =gUnknown_020127BC
	adds r4, r0, #0
	cmp r1, #0
	beq _0800D57C
	ldr r0, _0800D578 @ =gUnknown_030013D0
	str r0, [r5, #0xc]
	adds r6, r0, #0
	movs r0, #0
	strb r0, [r5, #4]
	b _0800D582
	.align 2, 0
_0800D574: .4byte gUnknown_020127BC
_0800D578: .4byte gUnknown_030013D0
_0800D57C:
	ldr r0, _0800D5B0 @ =gUnknown_030013B0
	str r0, [r5, #0xc]
	adds r6, r0, #0
_0800D582:
	ldr r1, _0800D5B4 @ =gUnknown_0200C1A0
	ldr r0, _0800D5B8 @ =0x00002344
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #3
	bne _0800D598
	ldr r3, _0800D5BC @ =0x000023EC
	adds r0, r1, r3
	ldr r4, [r0]
	movs r0, #0
	strb r0, [r2]
_0800D598:
	ldr r0, _0800D5BC @ =0x000023EC
	adds r7, r1, r0
_0800D59C:
	ldrb r0, [r4]
	adds r2, r0, #0
	adds r4, #1
	cmp r2, #0
	bne _0800D5C0
	ldr r0, _0800D5B0 @ =gUnknown_030013B0
	str r0, [r5, #0xc]
	movs r0, #0
	b _0800D6BC
	.align 2, 0
_0800D5B0: .4byte gUnknown_030013B0
_0800D5B4: .4byte gUnknown_0200C1A0
_0800D5B8: .4byte 0x00002344
_0800D5BC: .4byte 0x000023EC
_0800D5C0:
	cmp r2, #0xa
	bne _0800D5CE
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800D434
	b _0800D59C
_0800D5CE:
	cmp r2, #0x24
	bne _0800D66A
	ldrb r0, [r4]
	adds r1, r0, #0
	movs r3, #0
	cmp r0, #0x60
	ble _0800D5E2
	cmp r0, #0x7a
	bgt _0800D5E2
	movs r3, #1
_0800D5E2:
	adds r0, r1, #0
	cmp r3, #0
	beq _0800D5EA
	subs r0, #0x20
_0800D5EA:
	cmp r0, #0x52
	bne _0800D5F4
	adds r0, r5, #0
	movs r1, #1
	b _0800D662
_0800D5F4:
	cmp r0, #0x47
	bne _0800D5FE
	adds r0, r5, #0
	movs r1, #2
	b _0800D662
_0800D5FE:
	cmp r0, #0x59
	bne _0800D608
	adds r0, r5, #0
	movs r1, #3
	b _0800D662
_0800D608:
	cmp r0, #0x42
	bne _0800D612
	adds r0, r5, #0
	movs r1, #4
	b _0800D662
_0800D612:
	cmp r0, #0x4e
	bne _0800D61C
	adds r0, r5, #0
	movs r1, #5
	b _0800D662
_0800D61C:
	cmp r0, #0x43
	bne _0800D626
	adds r0, r5, #0
	movs r1, #6
	b _0800D662
_0800D626:
	cmp r0, #0x50
	bne _0800D638
	adds r0, r5, #0
	movs r1, #7
	bl sub_0800D434
	cmp r0, #0
	bne _0800D648
	b _0800D666
_0800D638:
	cmp r0, #0x57
	bne _0800D650
	adds r0, r5, #0
	movs r1, #8
	bl sub_0800D434
	cmp r0, #0
	beq _0800D666
_0800D648:
	subs r0, r4, #1
	str r0, [r7]
	movs r0, #1
	b _0800D6BC
_0800D650:
	cmp r0, #0x4d
	bne _0800D65A
	adds r0, r5, #0
	movs r1, #9
	b _0800D662
_0800D65A:
	cmp r0, #0x48
	bne _0800D66A
	adds r0, r5, #0
	movs r1, #0xa
_0800D662:
	bl sub_0800D434
_0800D666:
	adds r4, #1
	b _0800D59C
_0800D66A:
	cmp r2, #0x23
	bne _0800D680
	ldrb r0, [r4]
	adds r4, #1
	bl sub_08004788
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0800CD7C
	b _0800D59C
_0800D680:
	ldr r0, _0800D6A0 @ =gUnknown_083D6088
	lsrs r1, r2, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800D6A4
	ldrb r0, [r4]
	adds r4, #1
	lsls r1, r2, #8
	orrs r1, r0
	adds r0, r6, #0
	bl sub_08004918
	adds r1, r0, #0
	b _0800D6AC
	.align 2, 0
_0800D6A0: .4byte gUnknown_083D6088
_0800D6A4:
	ldr r1, [r6, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
_0800D6AC:
	adds r0, r5, #0
	bl sub_0800CD2C
	adds r0, r5, #0
	movs r1, #1
	bl sub_0800CFC0
	b _0800D59C
_0800D6BC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800D6C4
sub_0800D6C4: @ 0x0800D6C4
	push {r4, r5, lr}
	sub sp, #0x44
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #0x20
	bls _0800D6D6
	ldr r0, _0800D6F0 @ =gUnknown_0831B4A4
	bl sub_080050A8
_0800D6D6:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0800D06C
	mov r0, sp
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x44
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D6F0: .4byte gUnknown_0831B4A4

	thumb_func_start sub_0800D6F4
sub_0800D6F4: @ 0x0800D6F4
	push {r4, r5, lr}
	sub sp, #0x44
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #0x20
	bls _0800D706
	ldr r0, _0800D720 @ =gUnknown_0831B4C0
	bl sub_080050A8
_0800D706:
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0800D0D0
	mov r0, sp
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x44
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D720: .4byte gUnknown_0831B4C0

	thumb_func_start sub_0800D724
sub_0800D724: @ 0x0800D724
	push {lr}
	sub sp, #0x10
	adds r2, r0, #0
	ldr r1, _0800D740 @ =gUnknown_0831B180
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_0800D740: .4byte gUnknown_0831B180

	thumb_func_start sub_0800D744
sub_0800D744: @ 0x0800D744
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0800D778 @ =gUnknown_0831B4E4
	mov r0, sp
	movs r2, #4
	bl sub_0803DEBC
	mov r0, sp
	adds r4, #0x30
	strb r4, [r0, #1]
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, sp
	adds r2, r5, #0
	bl sub_0803DFE0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D778: .4byte gUnknown_0831B4E4

	thumb_func_start sub_0800D77C
sub_0800D77C: @ 0x0800D77C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	ldr r1, _0800D818 @ =gUnknown_0831B4E8
	mov r0, sp
	movs r2, #4
	bl sub_0803DEBC
	subs r1, r4, #2
	movs r0, #1
	cmp r0, r6
	bge _0800D79A
	adds r0, r6, #0
_0800D79A:
	cmp r1, r0
	ble _0800D7A0
	adds r1, r0, #0
_0800D7A0:
	adds r6, r1, #0
	mov r1, sp
	adds r0, r4, #0
	adds r0, #0x2f
	strb r0, [r1, #1]
	add r4, sp, #4
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803DFE0
	adds r0, r4, #0
	bl sub_0803E06C
	adds r5, r0, #0
	subs r0, r5, r6
	subs r2, r0, #1
	subs r1, r5, #1
	mov ip, r4
	add r7, sp, #0x18
	cmp r2, r1
	bhi _0800D7DE
	adds r0, r1, #0
_0800D7CC:
	adds r3, r4, r2
	ldrb r1, [r3]
	cmp r1, #0x20
	bne _0800D7D6
	movs r1, #0x30
_0800D7D6:
	strb r1, [r3]
	adds r2, #1
	cmp r2, r0
	bls _0800D7CC
_0800D7DE:
	adds r3, r7, #0
	movs r2, #0
	cmp r2, r5
	bhs _0800D802
	subs r1, r5, r6
	movs r6, #0x2e
	mov r4, ip
_0800D7EC:
	cmp r2, r1
	bne _0800D7F4
	strb r6, [r3]
	adds r3, #1
_0800D7F4:
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	cmp r2, r5
	blo _0800D7EC
_0800D802:
	movs r0, #0
	strb r0, [r3]
	adds r0, r7, #0
	movs r1, #0
	bl sub_0800D55C
	add sp, #0x2c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D818: .4byte gUnknown_0831B4E8

	thumb_func_start sub_0800D81C
sub_0800D81C: @ 0x0800D81C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov ip, r2
	mov r8, r3
	ldr r6, _0800D878 @ =gUnknown_0200C1A0
	ldr r2, _0800D87C @ =0x0000661C
	adds r6, r6, r2
	mov r5, sp
	adds r4, r6, #0
	ldm r4!, {r2, r3, r7}
	stm r5!, {r2, r3, r7}
	ldr r4, [r4]
	str r4, [r5]
	movs r5, #0
	strb r0, [r6]
	strb r1, [r6, #1]
	movs r4, #0x1e
	subs r4, r4, r0
	strb r4, [r6, #2]
	movs r0, #0x14
	subs r0, r0, r1
	strb r0, [r6, #3]
	mov r3, ip
	strb r3, [r6, #5]
	strb r5, [r6, #6]
	strb r5, [r6, #7]
	strb r5, [r6, #8]
	strb r5, [r6, #9]
	mov r0, r8
	movs r1, #0
	bl sub_0800D55C
	mov r0, sp
	ldm r0!, {r1, r2, r7}
	stm r6!, {r1, r2, r7}
	ldr r0, [r0]
	str r0, [r6]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D878: .4byte gUnknown_0200C1A0
_0800D87C: .4byte 0x0000661C

	thumb_func_start sub_0800D880
sub_0800D880: @ 0x0800D880
	push {lr}
	ldr r1, _0800D8A0 @ =gUnknown_02012800
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x70
	strh r0, [r1, #2]
	strb r2, [r1, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800D8E0
	pop {r0}
	bx r0
	.align 2, 0
_0800D8A0: .4byte gUnknown_02012800

	thumb_func_start sub_0800D8A4
sub_0800D8A4: @ 0x0800D8A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800D8C0 @ =gUnknown_083E3E74
	movs r1, #0x36
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800D8C4
	adds r0, r1, #0
	b _0800D8D0
	.align 2, 0
_0800D8C0: .4byte gUnknown_083E3E74
_0800D8C4:
	ldr r0, _0800D8D8 @ =gUnknown_0831B4EC
	ldr r2, _0800D8DC @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800D8D0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800D8D8: .4byte gUnknown_0831B4EC
_0800D8DC: .4byte gUnknown_0831B4F8

	thumb_func_start sub_0800D8E0
sub_0800D8E0: @ 0x0800D8E0
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, _0800D910 @ =0x07000048
	cmp r2, #0
	beq _0800D91C
	movs r0, #0xff
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r4]
	ldr r1, _0800D914 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldr r2, _0800D918 @ =0xFFFFC000
	adds r0, r2, #0
	orrs r3, r0
	strh r3, [r4, #2]
	movs r1, #0xe6
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r4, #4]
	b _0800D920
	.align 2, 0
_0800D910: .4byte 0x07000048
_0800D914: .4byte 0x000001FF
_0800D918: .4byte 0xFFFFC000
_0800D91C:
	movs r0, #0xa0
	strh r0, [r4]
_0800D920:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D928
sub_0800D928: @ 0x0800D928
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0800D9A0
	ldr r3, _0800D98C @ =gUnknown_085371D8
	ldr r1, _0800D990 @ =gUnknown_083E4F04
	ldrb r0, [r5, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r1]
	ldr r0, [r1, #4]
	adds r7, r0, r3
	ldrb r4, [r5, #6]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #8]
	adds r6, r0, r3
	cmp r4, r2
	blo _0800D966
	ldr r1, _0800D994 @ =gUnknown_0831B508
	ldr r2, [r5, #8]
	mov r0, sp
	adds r3, r4, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_0800D966:
	ldr r1, _0800D998 @ =0x05000300
	adds r0, r1, #0
	adds r1, r7, #0
	movs r2, #0x40
	bl sub_08000314
	ldr r1, _0800D99C @ =0x06014C00
	adds r0, r6, #0
	bl sub_0803D358
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	movs r2, #1
	bl sub_0800D8E0
	b _0800D9AA
	.align 2, 0
_0800D98C: .4byte gUnknown_085371D8
_0800D990: .4byte gUnknown_083E4F04
_0800D994: .4byte gUnknown_0831B508
_0800D998: .4byte 0x05000300
_0800D99C: .4byte 0x06014C00
_0800D9A0:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800D8E0
_0800D9AA:
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D9B4
sub_0800D9B4: @ 0x0800D9B4
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800D9D0 @ =gUnknown_02012800
	strh r2, [r0]
	strh r1, [r0, #2]
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0800D9CC
	adds r0, r2, #0
	movs r2, #1
	bl sub_0800D8E0
_0800D9CC:
	pop {r0}
	bx r0
	.align 2, 0
_0800D9D0: .4byte gUnknown_02012800

	thumb_func_start sub_0800D9D4
sub_0800D9D4: @ 0x0800D9D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _0800D9E8 @ =gUnknown_02012800
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800D9EC
	bl sub_0800DA40
	b _0800DA38
	.align 2, 0
_0800D9E8: .4byte gUnknown_02012800
_0800D9EC:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800F008
	ldr r1, [r4]
	movs r0, #0xe0
	lsls r0, r0, #0xf
	cmp r1, r0
	bne _0800DA06
	adds r0, r4, #0
	subs r0, #0x44
	bl sub_0800D270
_0800DA06:
	adds r0, r5, #0
	bl sub_0800D8A4
	adds r1, r0, #0
	movs r2, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800DA22
	ldrb r0, [r4, #5]
	cmp r1, r0
	bne _0800DA22
	ldrb r0, [r4, #6]
	cmp r6, r0
	beq _0800DA24
_0800DA22:
	movs r2, #1
_0800DA24:
	movs r0, #1
	strb r0, [r4, #4]
	strb r1, [r4, #5]
	strb r6, [r4, #6]
	str r5, [r4, #8]
	cmp r2, #0
	beq _0800DA38
	adds r0, r4, #0
	bl sub_0800D928
_0800DA38:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DA40
sub_0800DA40: @ 0x0800DA40
	push {r4, lr}
	ldr r4, _0800DA6C @ =gUnknown_02012800
	bl sub_0800F028
	movs r0, #0
	strb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	bl sub_0800D8E0
	ldr r1, [r4]
	movs r0, #0xe0
	lsls r0, r0, #0xf
	cmp r1, r0
	bne _0800DA66
	adds r0, r4, #0
	subs r0, #0x44
	bl sub_0800D2A8
_0800DA66:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DA6C: .4byte gUnknown_02012800

	thumb_func_start sub_0800DA70
sub_0800DA70: @ 0x0800DA70
	push {lr}
	ldr r1, _0800DA84 @ =gUnknown_0201280C
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	movs r2, #0
	bl sub_0800DAC4
	pop {r0}
	bx r0
	.align 2, 0
_0800DA84: .4byte gUnknown_0201280C

	thumb_func_start sub_0800DA88
sub_0800DA88: @ 0x0800DA88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800DAA4 @ =gUnknown_083E3F4C
	movs r1, #0x1f
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800DAA8
	adds r0, r1, #0
	b _0800DAB4
	.align 2, 0
_0800DAA4: .4byte gUnknown_083E3F4C
_0800DAA8:
	ldr r0, _0800DABC @ =gUnknown_0831B528
	ldr r2, _0800DAC0 @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800DAB4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800DABC: .4byte gUnknown_0831B528
_0800DAC0: .4byte gUnknown_0831B4F8

	thumb_func_start sub_0800DAC4
sub_0800DAC4: @ 0x0800DAC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	mov ip, r1
	str r2, [sp]
	ldr r7, _0800DC20 @ =0x07000050
	cmp r2, #0
	bne _0800DADE
	b _0800DC48
_0800DADE:
	movs r6, #0
	cmp r2, #0xf
	bhi _0800DAE8
	movs r6, #0x80
	lsls r6, r6, #3
_0800DAE8:
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	mov r1, ip
	orrs r1, r0
	orrs r1, r6
	strh r1, [r7]
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r2, r0, #0
	mov r5, sl
	orrs r5, r2
	strh r5, [r7, #2]
	ldr r0, _0800DC24 @ =0x00000C8C
	strh r0, [r7, #4]
	adds r7, #8
	strh r1, [r7]
	movs r1, #0x40
	add r1, sl
	mov r8, r1
	mov r4, r8
	orrs r4, r2
	strh r4, [r7, #2]
	adds r0, #0x80
	strh r0, [r7, #4]
	adds r7, #8
	mov r0, ip
	movs r2, #0xa0
	lsls r2, r2, #8
	orrs r0, r2
	orrs r0, r6
	strh r0, [r7]
	mov r0, sl
	adds r0, #0x80
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	ldr r3, [sp, #4]
	orrs r3, r0
	strh r3, [r7, #2]
	ldr r0, _0800DC28 @ =0x00000D8C
	strh r0, [r7, #4]
	adds r7, #8
	mov r0, ip
	adds r0, #0x20
	orrs r0, r2
	orrs r0, r6
	strh r0, [r7]
	strh r3, [r7, #2]
	ldr r0, _0800DC2C @ =0x00000D9C
	strh r0, [r7, #4]
	adds r7, #8
	mov r2, ip
	adds r2, #0x40
	movs r0, #0xc0
	lsls r0, r0, #7
	mov sb, r0
	adds r1, r2, #0
	mov r0, sb
	orrs r1, r0
	orrs r1, r6
	strh r1, [r7]
	strh r5, [r7, #2]
	ldr r0, _0800DC30 @ =0x00000DAC
	strh r0, [r7, #4]
	adds r7, #8
	strh r1, [r7]
	strh r4, [r7, #2]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r4, r1, #0
	adds r0, #0x40
	strh r0, [r7, #4]
	adds r7, #8
	movs r1, #0x8b
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #8
	orrs r2, r0
	orrs r2, r6
	strh r2, [r7]
	strh r3, [r7, #2]
	lsls r0, r1, #1
	orrs r0, r4
	strh r0, [r7, #4]
	adds r7, #8
	adds r1, #8
	mov r2, ip
	adds r2, #0x60
	mov r0, sb
	orrs r2, r0
	orrs r2, r6
	strh r2, [r7]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r3, r0, #0
	mov r0, sl
	orrs r0, r3
	strh r0, [r7, #2]
	lsls r0, r1, #1
	orrs r0, r4
	strh r0, [r7, #4]
	adds r7, #8
	adds r1, #4
	strh r2, [r7]
	mov r0, sl
	adds r0, #0x20
	orrs r0, r3
	strh r0, [r7, #2]
	lsls r0, r1, #1
	orrs r0, r4
	strh r0, [r7, #4]
	adds r7, #8
	adds r1, #4
	strh r2, [r7]
	mov r0, r8
	orrs r0, r3
	strh r0, [r7, #2]
	lsls r0, r1, #1
	orrs r0, r4
	strh r0, [r7, #4]
	adds r7, #8
	adds r1, #4
	strh r2, [r7]
	mov r0, sl
	adds r0, #0x60
	orrs r0, r3
	strh r0, [r7, #2]
	lsls r0, r1, #1
	orrs r0, r4
	strh r0, [r7, #4]
	adds r7, #8
	adds r1, #4
	strh r2, [r7]
	mov r2, sp
	ldrh r2, [r2, #4]
	strh r2, [r7, #2]
	lsls r1, r1, #1
	orrs r1, r4
	strh r1, [r7, #4]
	ldr r0, [sp]
	cmp r0, #0xf
	bhi _0800DC3C
	movs r1, #0xbd
	lsls r1, r1, #6
	ldr r0, _0800DC34 @ =0x04000050
	strh r1, [r0]
	movs r0, #0x10
	ldr r1, [sp]
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r0, r1
	ldr r1, _0800DC38 @ =0x04000052
	strh r0, [r1]
	b _0800DC68
	.align 2, 0
_0800DC20: .4byte 0x07000050
_0800DC24: .4byte 0x00000C8C
_0800DC28: .4byte 0x00000D8C
_0800DC2C: .4byte 0x00000D9C
_0800DC30: .4byte 0x00000DAC
_0800DC34: .4byte 0x04000050
_0800DC38: .4byte 0x04000052
_0800DC3C:
	ldr r0, _0800DC44 @ =gUnknown_02001D0C
	ldrb r1, [r0]
	b _0800DC5A
	.align 2, 0
_0800DC44: .4byte gUnknown_02001D0C
_0800DC48:
	movs r0, #0
	ldr r2, _0800DC78 @ =gUnknown_02001D0C
	movs r1, #0xa0
_0800DC4E:
	strh r1, [r7]
	adds r7, #8
	adds r0, #1
	cmp r0, #0xb
	bls _0800DC4E
	ldrb r1, [r2]
_0800DC5A:
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	bne _0800DC68
	ldr r0, _0800DC7C @ =0x04000050
	strh r1, [r0]
_0800DC68:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DC78: .4byte gUnknown_02001D0C
_0800DC7C: .4byte 0x04000050

	thumb_func_start sub_0800DC80
sub_0800DC80: @ 0x0800DC80
	push {r4, lr}
	ldr r2, _0800DCAC @ =gUnknown_08572050
	ldr r1, _0800DCB0 @ =gUnknown_083E4FDC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, r1, r2
	adds r4, r1, #0
	adds r4, #0x40
	ldr r2, _0800DCB4 @ =0x050002C0
	adds r0, r2, #0
	movs r2, #0x40
	bl sub_08000314
	ldr r2, _0800DCB8 @ =0x06011180
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0803D358
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DCAC: .4byte gUnknown_08572050
_0800DCB0: .4byte gUnknown_083E4FDC
_0800DCB4: .4byte 0x050002C0
_0800DCB8: .4byte 0x06011180

	thumb_func_start sub_0800DCBC
sub_0800DCBC: @ 0x0800DCBC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800DCD8
	ldrb r0, [r1, #1]
	bl sub_0800DC80
	movs r0, #0x30
	movs r1, #0
	movs r2, #0x10
	bl sub_0800DAC4
	b _0800DCE2
_0800DCD8:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0800DAC4
_0800DCE2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DCE8
sub_0800DCE8: @ 0x0800DCE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, _0800DD08 @ =gUnknown_0201280C
	mov sb, r0
	movs r7, #0x30
	movs r1, #0
	mov r8, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800DD0C
	bl sub_0800DD94
	b _0800DD86
	.align 2, 0
_0800DD08: .4byte gUnknown_0201280C
_0800DD0C:
	adds r0, r4, #0
	bl sub_0800F038
	adds r0, r4, #0
	bl sub_0800DA88
	adds r6, r0, #0
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800DD48
	ldrb r0, [r1, #1]
	cmp r6, r0
	beq _0800DD86
	ldr r0, _0800DD64 @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800DD48
	movs r4, #0
	movs r5, #0x10
_0800DD34:
	bl sub_08011E9C
	subs r2, r5, r4
	adds r0, r7, #0
	mov r1, r8
	bl sub_0800DAC4
	adds r4, #2
	cmp r4, #0x10
	bls _0800DD34
_0800DD48:
	adds r0, r6, #0
	bl sub_0800DC80
	ldr r0, _0800DD64 @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DD68
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0x10
	bl sub_0800DAC4
	b _0800DD7E
	.align 2, 0
_0800DD64: .4byte gUnknown_02001D0C
_0800DD68:
	movs r4, #2
_0800DD6A:
	bl sub_08011E9C
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_0800DAC4
	adds r4, #2
	cmp r4, #0x10
	bls _0800DD6A
_0800DD7E:
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	strb r6, [r1, #1]
_0800DD86:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DD94
sub_0800DD94: @ 0x0800DD94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0800DDC4 @ =gUnknown_0201280C
	mov r8, r0
	movs r7, #0x30
	movs r6, #0
	bl sub_0800F04C
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800DDEA
	ldr r0, _0800DDC8 @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800DDCC
	movs r0, #0x30
	movs r1, #0
	movs r2, #0
	bl sub_0800DAC4
	b _0800DDE4
	.align 2, 0
_0800DDC4: .4byte gUnknown_0201280C
_0800DDC8: .4byte gUnknown_02001D0C
_0800DDCC:
	movs r4, #0
	movs r5, #0x10
_0800DDD0:
	bl sub_08011E9C
	subs r2, r5, r4
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0800DAC4
	adds r4, #2
	cmp r4, #0x10
	bls _0800DDD0
_0800DDE4:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_0800DDEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800DDF4
sub_0800DDF4: @ 0x0800DDF4
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0
	bne _0800DE1C
	ldr r0, _0800DE14 @ =gUnknown_083E4120
	movs r1, #0x25
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800DE50
	ldr r0, _0800DE18 @ =gUnknown_0831B534
	b _0800DE36
	.align 2, 0
_0800DE14: .4byte gUnknown_083E4120
_0800DE18: .4byte gUnknown_0831B534
_0800DE1C:
	cmp r0, #5
	bne _0800DE54
	ldr r0, _0800DE44 @ =gUnknown_083E411C
	movs r1, #1
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800DE50
	ldr r0, _0800DE48 @ =gUnknown_0831B544
_0800DE36:
	ldr r2, _0800DE4C @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
	b _0800DE5A
	.align 2, 0
_0800DE44: .4byte gUnknown_083E411C
_0800DE48: .4byte gUnknown_0831B544
_0800DE4C: .4byte gUnknown_0831B4F8
_0800DE50:
	adds r0, r1, #0
	b _0800DE5A
_0800DE54:
	adds r1, r4, #0
	bl sub_0800FD50
_0800DE5A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800DE60
sub_0800DE60: @ 0x0800DE60
	push {lr}
	ldr r0, _0800DE70 @ =0x07000018
	movs r1, #6
	bl sub_08000FEC
	pop {r0}
	bx r0
	.align 2, 0
_0800DE70: .4byte 0x07000018

	thumb_func_start sub_0800DE74
sub_0800DE74: @ 0x0800DE74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r7, _0800DF30 @ =0x07000018
	movs r6, #0xb8
	lsls r6, r6, #1
	cmp r0, #3
	bne _0800DF3C
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r8, r0
	add r6, r8
	movs r0, #0x80
	lsls r0, r0, #6
	mov sb, r0
	adds r0, r4, #0
	mov r1, sb
	orrs r0, r1
	strh r0, [r7]
	ldr r0, _0800DF34 @ =0xFFFF8000
	adds r2, r0, #0
	adds r1, r5, #0
	orrs r1, r2
	str r1, [sp]
	strh r1, [r7, #2]
	lsls r0, r6, #1
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
	mov r1, ip
	orrs r0, r1
	strh r0, [r7, #4]
	adds r7, #8
	movs r6, #0xc0
	lsls r6, r6, #1
	add r6, r8
	ldr r0, _0800DF38 @ =0xFFFFA000
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r7]
	adds r3, r5, #0
	adds r3, #0x20
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r7, #2]
	lsls r0, r6, #1
	mov r1, ip
	orrs r0, r1
	strh r0, [r7, #4]
	adds r7, #8
	movs r6, #0xc4
	lsls r6, r6, #1
	add r6, r8
	adds r2, r4, #0
	adds r2, #0x20
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r7, #2]
	lsls r0, r6, #1
	mov r1, ip
	orrs r0, r1
	strh r0, [r7, #4]
	adds r7, #8
	movs r6, #0xc8
	lsls r6, r6, #1
	add r6, r8
	mov r5, sb
	orrs r2, r5
	strh r2, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	strh r3, [r7, #2]
	lsls r0, r6, #1
	mov r2, ip
	orrs r0, r2
	strh r0, [r7, #4]
	adds r7, #8
	movs r0, #0xa0
	b _0800DF70
	.align 2, 0
_0800DF30: .4byte 0x07000018
_0800DF34: .4byte 0xFFFF8000
_0800DF38: .4byte 0xFFFFA000
_0800DF3C:
	subs r0, #4
	cmp r0, #1
	bhi _0800DF7C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r4, r0
	strh r4, [r7]
	ldr r2, _0800DF78 @ =0xFFFF8000
	adds r0, r2, #0
	orrs r5, r0
	strh r5, [r7, #2]
	lsls r0, r6, #1
	movs r5, #0xc0
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r7, #4]
	adds r7, #8
	movs r0, #0xa0
	strh r0, [r7]
	adds r7, #8
	strh r0, [r7]
	adds r7, #8
	strh r0, [r7]
	adds r7, #8
_0800DF70:
	strh r0, [r7]
	adds r7, #8
	strh r0, [r7]
	b _0800E02C
	.align 2, 0
_0800DF78: .4byte 0xFFFF8000
_0800DF7C:
	movs r0, #0x80
	lsls r0, r0, #6
	mov sl, r0
	adds r0, r4, #0
	mov r1, sl
	orrs r0, r1
	strh r0, [r7]
	ldr r2, _0800E03C @ =0xFFFF8000
	adds r1, r2, #0
	adds r3, r5, #0
	orrs r3, r1
	strh r3, [r7, #2]
	lsls r0, r6, #1
	movs r2, #0xc0
	lsls r2, r2, #4
	mov sb, r2
	mov r2, sb
	orrs r0, r2
	strh r0, [r7, #4]
	adds r7, #8
	adds r6, #0x10
	ldr r0, _0800E040 @ =0xFFFFA000
	mov r8, r0
	adds r0, r4, #0
	mov r2, r8
	orrs r0, r2
	strh r0, [r7]
	adds r5, #0x20
	mov ip, r5
	mov r2, ip
	orrs r2, r1
	strh r2, [r7, #2]
	lsls r0, r6, #1
	mov r5, sb
	orrs r0, r5
	strh r0, [r7, #4]
	adds r7, #8
	adds r6, #8
	adds r1, r4, #0
	adds r1, #0x20
	adds r0, r1, #0
	mov r5, sl
	orrs r0, r5
	strh r0, [r7]
	strh r3, [r7, #2]
	lsls r0, r6, #1
	mov r5, sb
	orrs r0, r5
	strh r0, [r7, #4]
	adds r7, #8
	adds r6, #0x10
	mov r0, r8
	orrs r1, r0
	strh r1, [r7]
	strh r2, [r7, #2]
	lsls r0, r6, #1
	orrs r0, r5
	strh r0, [r7, #4]
	adds r7, #8
	adds r6, #8
	adds r2, r4, #0
	adds r2, #0x40
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7]
	strh r3, [r7, #2]
	lsls r0, r6, #1
	mov r1, sb
	orrs r0, r1
	strh r0, [r7, #4]
	adds r7, #8
	adds r6, #8
	mov r5, sl
	orrs r2, r5
	strh r2, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r1, #0
	mov r2, ip
	orrs r2, r0
	strh r2, [r7, #2]
	lsls r0, r6, #1
	mov r5, sb
	orrs r0, r5
	strh r0, [r7, #4]
_0800E02C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E03C: .4byte 0xFFFF8000
_0800E040: .4byte 0xFFFFA000

	thumb_func_start sub_0800E044
sub_0800E044: @ 0x0800E044
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r6, r2, #5
	movs r0, #0xa0
	subs r5, r0, r3
	movs r2, #0
	cmp r2, r6
	bhs _0800E07C
	movs r7, #0xff
_0800E056:
	ldrb r0, [r1]
	adds r3, r0, #0
	adds r1, #1
	cmp r3, #0
	beq _0800E064
	adds r3, r3, r5
	ands r3, r7
_0800E064:
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	beq _0800E06E
	adds r0, r0, r5
_0800E06E:
	lsls r0, r0, #8
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r2, #1
	cmp r2, r6
	blo _0800E056
_0800E07C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E084
sub_0800E084: @ 0x0800E084
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r5, r1, #5
	movs r0, #0xa0
	subs r4, r0, r2
	movs r1, #0
	cmp r1, r5
	bhs _0800E0BA
	movs r6, #0xff
_0800E096:
	ldrh r0, [r3]
	adds r2, r6, #0
	ands r2, r0
	lsrs r0, r0, #8
	cmp r2, #0
	beq _0800E0A6
	adds r2, r2, r4
	ands r2, r6
_0800E0A6:
	cmp r0, #0
	beq _0800E0AC
	adds r0, r0, r4
_0800E0AC:
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r1, #1
	cmp r1, r5
	blo _0800E096
_0800E0BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E0C0
sub_0800E0C0: @ 0x0800E0C0
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0
	ldr r1, _0800E0D8 @ =0x05000340
	mov ip, r1
	ldr r7, _0800E0DC @ =0x06015C00
	cmp r0, #5
	bhi _0800E1A6
	lsls r0, r0, #2
	ldr r1, _0800E0E0 @ =_0800E0E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E0D8: .4byte 0x05000340
_0800E0DC: .4byte 0x06015C00
_0800E0E0: .4byte _0800E0E4
_0800E0E4: @ jump table
	.4byte _0800E0FC @ case 0
	.4byte _0800E10C @ case 1
	.4byte _0800E120 @ case 2
	.4byte _0800E134 @ case 3
	.4byte _0800E148 @ case 4
	.4byte _0800E15C @ case 5
_0800E0FC:
	ldr r2, _0800E104 @ =gUnknown_0858E944
	ldr r0, _0800E108 @ =gUnknown_083E51B0
	b _0800E160
	.align 2, 0
_0800E104: .4byte gUnknown_0858E944
_0800E108: .4byte gUnknown_083E51B0
_0800E10C:
	ldr r2, _0800E11C @ =gUnknown_08486E54
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x3c
	movs r5, #0x80
	b _0800E188
	.align 2, 0
_0800E11C: .4byte gUnknown_08486E54
_0800E120:
	ldr r2, _0800E130 @ =gUnknown_084912AC
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x3c
	movs r5, #0xa0
	b _0800E188
	.align 2, 0
_0800E130: .4byte gUnknown_084912AC
_0800E134:
	ldr r2, _0800E144 @ =gUnknown_0849CE78
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x90
	movs r5, #0xc0
	b _0800E188
	.align 2, 0
_0800E144: .4byte gUnknown_0849CE78
_0800E148:
	ldr r2, _0800E158 @ =gUnknown_084B51A4
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r0, r2
	movs r6, #0x10
	movs r5, #0xe0
	b _0800E188
	.align 2, 0
_0800E158: .4byte gUnknown_084B51A4
_0800E15C:
	ldr r2, _0800E180 @ =gUnknown_0858E804
	ldr r0, _0800E184 @ =gUnknown_083E51AC
_0800E160:
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r0, r2
	adds r4, r1, #0
	adds r4, #0xc0
	mov r0, ip
	movs r2, #0xc0
	bl sub_080002C4
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0803D358
	b _0800E1A6
	.align 2, 0
_0800E180: .4byte gUnknown_0858E804
_0800E184: .4byte gUnknown_083E51AC
_0800E188:
	adds r4, r1, #0
	adds r4, #0x40
	mov r0, ip
	movs r2, #0x40
	bl sub_080002C4
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0803D358
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0800E084
_0800E1A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E1AC
sub_0800E1AC: @ 0x0800E1AC
	push {lr}
	adds r2, r0, #0
	cmp r2, #3
	bhi _0800E1D8
	cmp r1, #3
	bhi _0800E1BE
	lsls r0, r1, #2
	adds r0, r0, r2
	b _0800E202
_0800E1BE:
	cmp r1, #7
	bhi _0800E1CC
	subs r0, r1, #4
	lsls r1, r0, #2
	adds r0, r2, #0
	adds r0, #0x18
	b _0800E200
_0800E1CC:
	adds r0, r1, #0
	subs r0, #8
	lsls r1, r0, #2
	adds r0, r2, #0
	adds r0, #0x30
	b _0800E200
_0800E1D8:
	cmp r1, #3
	bhi _0800E1E4
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0xc
	b _0800E200
_0800E1E4:
	cmp r1, #7
	bhi _0800E1F6
	subs r0, r1, #4
	lsls r1, r0, #1
	adds r0, r2, #0
	adds r0, #0x24
	b _0800E200
_0800E1F2:
	movs r0, #0
	b _0800E21A
_0800E1F6:
	adds r0, r1, #0
	subs r0, #8
	lsls r1, r0, #1
	adds r0, r2, #0
	adds r0, #0x34
_0800E200:
	adds r0, r1, r0
_0800E202:
	lsls r0, r0, #6
	ldr r2, _0800E220 @ =0x06015C00
	adds r1, r0, r2
	movs r2, #0
_0800E20A:
	ldr r0, [r1]
	cmp r0, #0
	bne _0800E1F2
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	bls _0800E20A
	movs r0, #1
_0800E21A:
	pop {r1}
	bx r1
	.align 2, 0
_0800E220: .4byte 0x06015C00

	thumb_func_start sub_0800E224
sub_0800E224: @ 0x0800E224
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0800E22A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800E1AC
	cmp r0, #0
	bne _0800E23A
	movs r0, #0
	b _0800E242
_0800E23A:
	adds r4, #1
	cmp r4, #5
	bls _0800E22A
	movs r0, #1
_0800E242:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E248
sub_0800E248: @ 0x0800E248
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r2, #0
	adds r4, r1, #0
	cmp r4, r5
	bhi _0800E26A
_0800E254:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800E1AC
	cmp r0, #0
	bne _0800E264
	movs r0, #0
	b _0800E26C
_0800E264:
	adds r4, #1
	cmp r4, r5
	bls _0800E254
_0800E26A:
	movs r0, #1
_0800E26C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800E274
sub_0800E274: @ 0x0800E274
	push {r4, lr}
	movs r4, #0
_0800E278:
	adds r0, r4, #0
	bl sub_0800E224
	cmp r0, #0
	bne _0800E286
	adds r0, r4, #0
	b _0800E28E
_0800E286:
	adds r4, #1
	cmp r4, #9
	bls _0800E278
	movs r0, #9
_0800E28E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E294
sub_0800E294: @ 0x0800E294
	push {r4, r5, lr}
	movs r4, #9
	adds r0, #1
	cmp r4, r0
	blo _0800E2B4
	adds r5, r0, #0
_0800E2A0:
	adds r0, r4, #0
	bl sub_0800E224
	cmp r0, #0
	bne _0800E2AE
	adds r0, r4, #0
	b _0800E2B6
_0800E2AE:
	subs r4, #1
	cmp r4, r5
	bhs _0800E2A0
_0800E2B4:
	movs r0, #9
_0800E2B6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E2BC
sub_0800E2BC: @ 0x0800E2BC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
_0800E2C4:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0800E248
	cmp r0, #0
	bne _0800E2D6
	adds r0, r4, #0
	b _0800E2DE
_0800E2D6:
	adds r4, #1
	cmp r4, #5
	bls _0800E2C4
	movs r0, #5
_0800E2DE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E2E4
sub_0800E2E4: @ 0x0800E2E4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	movs r4, #5
	adds r2, #1
	cmp r4, r2
	blo _0800E30C
	adds r5, r2, #0
_0800E2F4:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_0800E248
	cmp r0, #0
	bne _0800E306
	adds r0, r4, #0
	b _0800E30E
_0800E306:
	subs r4, #1
	cmp r4, r5
	bhs _0800E2F4
_0800E30C:
	movs r0, #5
_0800E30E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800E314
sub_0800E314: @ 0x0800E314
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	cmp r1, #3
	beq _0800E36A
	cmp r1, #3
	bhi _0800E364
	cmp r1, #1
	blo _0800E37A
	bl sub_0800E274
	adds r6, r0, #0
	bl sub_0800E294
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800E2BC
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800E2E4
	subs r0, r0, r5
	adds r0, #1
	lsls r0, r0, #2
	movs r1, #0x18
	subs r1, r1, r0
	lsls r5, r5, #3
	subs r1, r1, r5
	strh r1, [r7, #8]
	subs r4, r4, r6
	adds r4, #1
	lsls r4, r4, #2
	movs r0, #0x28
	subs r0, r0, r4
	lsls r6, r6, #3
	subs r0, r0, r6
	b _0800E37E
_0800E364:
	cmp r1, #4
	beq _0800E372
	b _0800E37A
_0800E36A:
	movs r0, #0
	strh r0, [r7, #8]
	movs r0, #0x10
	b _0800E37E
_0800E372:
	movs r0, #8
	strh r0, [r7, #8]
	movs r0, #0x18
	b _0800E37E
_0800E37A:
	movs r0, #0
	strh r0, [r7, #8]
_0800E37E:
	strh r0, [r7, #0xa]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E388
sub_0800E388: @ 0x0800E388
	push {lr}
	ldr r1, _0800E39C @ =gUnknown_02012810
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	bl sub_0800DE60
	pop {r0}
	bx r0
	.align 2, 0
_0800E39C: .4byte gUnknown_02012810

	thumb_func_start sub_0800E3A0
sub_0800E3A0: @ 0x0800E3A0
	push {r4, lr}
	ldr r3, _0800E3E8 @ =gUnknown_02012810
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800E3E2
	ldrb r0, [r3, #1]
	cmp r0, #3
	bne _0800E3E2
	ldrb r0, [r3, #0xc]
	adds r0, #1
	movs r1, #0
	strb r0, [r3, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0800E3E2
	strb r1, [r3, #0xc]
	ldrb r0, [r3, #0xd]
	adds r0, #1
	strb r0, [r3, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0800E3D2
	strb r1, [r3, #0xd]
_0800E3D2:
	ldrb r0, [r3, #1]
	movs r2, #4
	ldrsh r1, [r3, r2]
	movs r4, #6
	ldrsh r2, [r3, r4]
	ldrb r3, [r3, #0xd]
	bl sub_0800DE74
_0800E3E2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E3E8: .4byte gUnknown_02012810

	thumb_func_start sub_0800E3EC
sub_0800E3EC: @ 0x0800E3EC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800E416
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	bl sub_0800E0C0
	ldrb r0, [r4, #1]
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r2, [r4, r3]
	ldrb r3, [r4, #0xd]
	bl sub_0800DE74
	b _0800E41A
_0800E416:
	bl sub_0800DE60
_0800E41A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E420
sub_0800E420: @ 0x0800E420
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r4, _0800E464 @ =gUnknown_02012810
	bl sub_0800DDF4
	adds r6, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800E446
	ldrb r0, [r4, #1]
	cmp r5, r0
	bne _0800E446
	ldrb r1, [r4, #2]
	cmp r6, r1
	beq _0800E474
_0800E446:
	bl sub_0800DE60
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800E0C0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0800E468
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800E314
	b _0800E474
	.align 2, 0
_0800E464: .4byte gUnknown_02012810
_0800E468:
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r4, #0xa]
	mov r0, sp
	ldrh r0, [r0, #0x18]
	strh r0, [r4, #8]
_0800E474:
	movs r1, #8
	ldrsh r0, [r4, r1]
	adds r7, r7, r0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	add r8, r0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0
	bl sub_0800DE74
	movs r0, #1
	strb r0, [r4]
	strb r5, [r4, #1]
	strb r6, [r4, #2]
	movs r0, #0
	strh r7, [r4, #4]
	mov r1, r8
	strh r1, [r4, #6]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E4AC
sub_0800E4AC: @ 0x0800E4AC
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	bl sub_0800E420
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E4C0
sub_0800E4C0: @ 0x0800E4C0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r2, #0
	mov r8, r3
	movs r4, #0
	bl sub_0800FD0C
	adds r1, r0, #0
	str r4, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800E420
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E4F0
sub_0800E4F0: @ 0x0800E4F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r2, #0
	mov r8, r3
	movs r4, #1
	bl sub_0800FD0C
	adds r1, r0, #0
	str r4, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800E420
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E520
sub_0800E520: @ 0x0800E520
	push {lr}
	ldr r0, _0800E534 @ =gUnknown_02012810
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0800E538 @ =0x07000018
	movs r1, #6
	bl sub_08000FEC
	pop {r0}
	bx r0
	.align 2, 0
_0800E534: .4byte gUnknown_02012810
_0800E538: .4byte 0x07000018

	thumb_func_start sub_0800E53C
sub_0800E53C: @ 0x0800E53C
	push {lr}
	ldr r0, _0800E554 @ =gUnknown_02012820
	movs r1, #0x44
	movs r2, #0
	bl sub_08000498
	ldr r0, _0800E558 @ =0x070000B0
	movs r1, #8
	bl sub_08000FEC
	pop {r0}
	bx r0
	.align 2, 0
_0800E554: .4byte gUnknown_02012820
_0800E558: .4byte 0x070000B0

	thumb_func_start sub_0800E55C
sub_0800E55C: @ 0x0800E55C
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r2, [sp, #0x10]
	lsls r0, r0, #3
	ldr r6, _0800E5A0 @ =0x070000B0
	adds r5, r0, r6
	lsls r1, r1, #2
	adds r1, #0x3a
	movs r6, #3
	cmp r2, #0
	beq _0800E574
	movs r6, #2
_0800E574:
	movs r0, #0xff
	ands r3, r0
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r3, r0
	strh r3, [r5]
	ldr r2, _0800E5A4 @ =0x000001FF
	adds r0, r2, #0
	ands r4, r0
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r4, r0
	strh r4, [r5, #2]
	lsls r0, r6, #0xa
	lsls r1, r1, #1
	orrs r0, r1
	strh r0, [r5, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5A0: .4byte 0x070000B0
_0800E5A4: .4byte 0x000001FF

	thumb_func_start sub_0800E5A8
sub_0800E5A8: @ 0x0800E5A8
	lsls r0, r0, #3
	ldr r1, _0800E5B4 @ =0x070000B0
	adds r0, r0, r1
	movs r1, #0xa0
	strh r1, [r0]
	bx lr
	.align 2, 0
_0800E5B4: .4byte 0x070000B0

	thumb_func_start sub_0800E5B8
sub_0800E5B8: @ 0x0800E5B8
	push {r4, r5, lr}
	ldr r1, _0800E5F4 @ =gUnknown_083E5460
	ldr r5, _0800E5F8 @ =0x050002A0
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_080002C4
	ldr r1, _0800E5FC @ =gUnknown_083E5480
	ldr r5, _0800E600 @ =0x06010E80
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	adds r5, r5, r4
	ldr r1, _0800E604 @ =gUnknown_083E5580
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	adds r5, r5, r4
	ldr r1, _0800E608 @ =gUnknown_083E5680
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08000314
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5F4: .4byte gUnknown_083E5460
_0800E5F8: .4byte 0x050002A0
_0800E5FC: .4byte gUnknown_083E5480
_0800E600: .4byte 0x06010E80
_0800E604: .4byte gUnknown_083E5580
_0800E608: .4byte gUnknown_083E5680

	thumb_func_start sub_0800E60C
sub_0800E60C: @ 0x0800E60C
	push {r4, r5, lr}
	sub sp, #4
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E61C
	bl sub_0800E5B8
_0800E61C:
	movs r5, #0
_0800E61E:
	lsls r0, r5, #3
	ldr r1, _0800E640 @ =gUnknown_02012820
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800E644
	ldrb r1, [r4, #1]
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #4
	ldrsh r3, [r4, r0]
	ldrb r0, [r4, #6]
	str r0, [sp]
	adds r0, r5, #0
	bl sub_0800E55C
	b _0800E64A
	.align 2, 0
_0800E640: .4byte gUnknown_02012820
_0800E644:
	adds r0, r5, #0
	bl sub_0800E5A8
_0800E64A:
	adds r5, #1
	cmp r5, #7
	bls _0800E61E
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E658
sub_0800E658: @ 0x0800E658
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, _0800E6B0 @ =gUnknown_0200C1A0
	mov r8, r0
	ldr r0, _0800E6B4 @ =0x000066C0
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800E67A
	bl sub_0800E5B8
_0800E67A:
	ldr r1, [sp, #0x1c]
	str r1, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0800E55C
	lsls r0, r4, #3
	movs r1, #0xcd
	lsls r1, r1, #7
	add r1, r8
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	strb r5, [r0, #1]
	strh r6, [r0, #2]
	strh r7, [r0, #4]
	mov r2, sp
	ldrb r2, [r2, #0x1c]
	strb r2, [r0, #6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6B0: .4byte gUnknown_0200C1A0
_0800E6B4: .4byte 0x000066C0

	thumb_func_start sub_0800E6B8
sub_0800E6B8: @ 0x0800E6B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800E5A8
	lsls r4, r4, #3
	ldr r0, _0800E6D0 @ =gUnknown_02012820
	adds r4, r4, r0
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6D0: .4byte gUnknown_02012820

	thumb_func_start sub_0800E6D4
sub_0800E6D4: @ 0x0800E6D4
	ldr r0, _0800E6E0 @ =gUnknown_0200C1A0
	ldr r1, _0800E6E4 @ =0x000066C4
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800E6E0: .4byte gUnknown_0200C1A0
_0800E6E4: .4byte 0x000066C4

	thumb_func_start sub_0800E6E8
sub_0800E6E8: @ 0x0800E6E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800E704 @ =gUnknown_083E3FC8
	movs r1, #0x37
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800E708
	adds r0, r1, #0
	b _0800E714
	.align 2, 0
_0800E704: .4byte gUnknown_083E3FC8
_0800E708:
	ldr r0, _0800E71C @ =gUnknown_0831B554
	ldr r2, _0800E720 @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800E714:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E71C: .4byte gUnknown_0831B554
_0800E720: .4byte gUnknown_0831B4F8

	thumb_func_start sub_0800E724
sub_0800E724: @ 0x0800E724
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0800E748 @ =gUnknown_085A072C
	ldr r0, _0800E74C @ =gUnknown_083E5058
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r2, [r4, #4]
	bl sub_0803D35C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E748: .4byte gUnknown_085A072C
_0800E74C: .4byte gUnknown_083E5058

	thumb_func_start sub_0800E750
sub_0800E750: @ 0x0800E750
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r3, _0800E7C8 @ =0x05000100
	movs r5, #0x80
	lsls r5, r5, #1
	ldr r1, [r0, #4]
	adds r0, r3, #0
	adds r2, r5, #0
	bl sub_08000314
	movs r3, #0xc0
	lsls r3, r3, #0x13
	movs r0, #0x1e
	subs r2, r0, r6
	movs r0, #0xd
	mov r1, r8
	subs r1, r0, r1
	mov sb, r1
	movs r7, #0
	cmp r7, r8
	bhs _0800E7A6
	lsls r6, r6, #6
	lsls r5, r2, #6
_0800E78A:
	adds r4, r4, r6
	adds r3, r3, r6
	adds r0, r3, #0
	adds r1, r4, #0
	adds r2, r5, #0
	str r3, [sp]
	bl sub_08000314
	adds r4, r4, r5
	ldr r3, [sp]
	adds r3, r3, r5
	adds r7, #1
	cmp r7, r8
	blo _0800E78A
_0800E7A6:
	mov r1, sb
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r5, r0, #7
	adds r0, r3, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08000314
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E7C8: .4byte 0x05000100

	thumb_func_start sub_0800E7CC
sub_0800E7CC: @ 0x0800E7CC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800E7E2
	ldr r0, _0800E7E8 @ =0x05000100
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, [r1, #4]
	bl sub_08000314
_0800E7E2:
	pop {r0}
	bx r0
	.align 2, 0
_0800E7E8: .4byte 0x05000100

	thumb_func_start sub_0800E7EC
sub_0800E7EC: @ 0x0800E7EC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	bl sub_08011A78
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_08011AD8
	adds r4, r0, #0
	lsls r4, r4, #1
	movs r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, #2
	adds r3, r4, #2
	str r0, [sp]
	str r0, [sp, #4]
	adds r2, r5, #0
	bl sub_08009C50
	mov r0, r8
	str r5, [r0]
	adds r4, #1
	mov r0, sb
	str r4, [r0]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_0800D81C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800E844
sub_0800E844: @ 0x0800E844
	push {lr}
	movs r1, #0
	bl sub_0800E850
	pop {r0}
	bx r0

	thumb_func_start sub_0800E850
sub_0800E850: @ 0x0800E850
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r7, _0800E86C @ =gUnknown_02012864
	bl sub_0800F05C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800E870
	bl sub_0800E6D4
	b _0800E8D2
	.align 2, 0
_0800E86C: .4byte gUnknown_02012864
_0800E870:
	cmp r4, #0
	beq _0800E87C
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800E87C
	movs r4, #0
_0800E87C:
	movs r1, #0xc3
	lsls r1, r1, #7
	ldr r0, _0800E8B8 @ =gUnknown_02001CC0
	bl sub_0800459C
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_0800E6E8
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800E724
	bl sub_0803D380
	cmp r4, #0
	beq _0800E8BC
	add r2, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl sub_0800E7EC
	ldr r2, [sp]
	ldr r3, [sp, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800E750
	b _0800E8C8
	.align 2, 0
_0800E8B8: .4byte gUnknown_02001CC0
_0800E8BC:
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800E750
_0800E8C8:
	ldr r0, _0800E8DC @ =gUnknown_02001CC0
	bl sub_08004604
	movs r0, #1
	strb r0, [r7]
_0800E8D2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E8DC: .4byte gUnknown_02001CC0

	thumb_func_start sub_0800E8E0
sub_0800E8E0: @ 0x0800E8E0
	ldr r0, _0800E8EC @ =gUnknown_0200C1A0
	ldr r1, _0800E8F0 @ =0x000066CC
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800E8EC: .4byte gUnknown_0200C1A0
_0800E8F0: .4byte 0x000066CC

	thumb_func_start sub_0800E8F4
sub_0800E8F4: @ 0x0800E8F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800E910 @ =gUnknown_083E40A4
	movs r1, #0x1e
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800E914
	adds r0, r1, #0
	b _0800E920
	.align 2, 0
_0800E910: .4byte gUnknown_083E40A4
_0800E914:
	ldr r0, _0800E928 @ =gUnknown_0831B560
	ldr r2, _0800E92C @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800E920:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800E928: .4byte gUnknown_0831B560
_0800E92C: .4byte gUnknown_0831B4F8

	thumb_func_start sub_0800E930
sub_0800E930: @ 0x0800E930
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0800E954 @ =gUnknown_0864C180
	ldr r0, _0800E958 @ =gUnknown_083E5134
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r2, [r4, #4]
	bl sub_0803D35C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E954: .4byte gUnknown_0864C180
_0800E958: .4byte gUnknown_083E5134

	thumb_func_start sub_0800E95C
sub_0800E95C: @ 0x0800E95C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r6, _0800E9B4 @ =0x05000100
	movs r3, #0x80
	lsls r3, r3, #1
	ldr r1, [r0, #4]
	adds r0, r6, #0
	adds r2, r3, #0
	bl sub_08000314
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r5
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r6, r0, r1
	movs r5, #0xa
	movs r3, #0xe0
	lsls r3, r3, #2
	movs r4, #0
_0800E98E:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r3, #0
	str r3, [sp]
	bl sub_08000314
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r6, r6, r0
	ldr r3, [sp]
	adds r7, r7, r3
	adds r4, #1
	cmp r4, r5
	blo _0800E98E
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9B4: .4byte 0x05000100

	thumb_func_start sub_0800E9B8
sub_0800E9B8: @ 0x0800E9B8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800E9CE
	ldr r0, _0800E9D4 @ =0x05000100
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, [r1, #4]
	bl sub_08000314
_0800E9CE:
	pop {r0}
	bx r0
	.align 2, 0
_0800E9D4: .4byte 0x05000100

	thumb_func_start sub_0800E9D8
sub_0800E9D8: @ 0x0800E9D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r7, r1, #0
	adds r5, r2, #0
	ldr r6, _0800EA44 @ =gUnknown_0201286C
	adds r0, r7, #0
	adds r0, #0xe
	cmp r0, #0x1e
	bhi _0800E9F8
	adds r0, r5, #0
	adds r0, #0xa
	cmp r0, #0x14
	bls _0800E9FE
_0800E9F8:
	ldr r0, _0800EA48 @ =gUnknown_0831B56C
	bl sub_080050A8
_0800E9FE:
	movs r0, #0xa
	lsls r0, r0, #6
	movs r1, #0xe
	muls r1, r0, r1
	ldr r0, _0800EA4C @ =gUnknown_02001CC0
	mov sb, r0
	bl sub_0800459C
	adds r4, r0, #0
	mov r0, r8
	bl sub_0800E8F4
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800E930
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_0800E95C
	mov r0, sb
	bl sub_08004604
	movs r0, #1
	strb r0, [r6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA44: .4byte gUnknown_0201286C
_0800EA48: .4byte gUnknown_0831B56C
_0800EA4C: .4byte gUnknown_02001CC0

	thumb_func_start sub_0800EA50
sub_0800EA50: @ 0x0800EA50
	ldr r0, _0800EA5C @ =gUnknown_0200C1A0
	ldr r1, _0800EA60 @ =0x000066D4
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800EA5C: .4byte gUnknown_0200C1A0
_0800EA60: .4byte 0x000066D4

	thumb_func_start sub_0800EA64
sub_0800EA64: @ 0x0800EA64
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800EA80 @ =gUnknown_083E41B4
	movs r1, #0x2d
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800EA84
	adds r0, r1, #0
	b _0800EA90
	.align 2, 0
_0800EA80: .4byte gUnknown_083E41B4
_0800EA84:
	ldr r0, _0800EA98 @ =gUnknown_0831B58C
	ldr r2, _0800EA9C @ =gUnknown_0831B4F8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0800EA90:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800EA98: .4byte gUnknown_0831B58C
_0800EA9C: .4byte gUnknown_0831B4F8

	thumb_func_start sub_0800EAA0
sub_0800EAA0: @ 0x0800EAA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0800EAC4 @ =gUnknown_0866F730
	ldr r0, _0800EAC8 @ =gUnknown_083E53AC
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r2, r2, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r2, [r4, #4]
	bl sub_0803D35C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAC4: .4byte gUnknown_0866F730
_0800EAC8: .4byte gUnknown_083E53AC

	thumb_func_start sub_0800EACC
sub_0800EACC: @ 0x0800EACC
	push {lr}
	ldr r1, [r0, #4]
	ldr r0, _0800EAE0 @ =0x05000100
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08000314
	pop {r0}
	bx r0
	.align 2, 0
_0800EAE0: .4byte 0x05000100

	thumb_func_start sub_0800EAE4
sub_0800EAE4: @ 0x0800EAE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r1, #0
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r8, r0
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	lsls r0, r0, #6
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r0, r2
	lsls r6, r1, #6
	movs r5, #0
	cmp r5, r8
	bhs _0800EB22
_0800EB0A:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08000314
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r7, r7, r6
	adds r5, #1
	cmp r5, r8
	blo _0800EB0A
_0800EB22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800EB2C
sub_0800EB2C: @ 0x0800EB2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r1
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0x80
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #0x10
	mov sl, r1
	movs r5, #0x80
	lsls r5, r5, #0x18
	orrs r5, r1
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r5, r0
	mov r1, r8
	orrs r5, r1
	movs r2, #0
	ldr r0, [sp, #0x2c]
	cmp r2, r0
	bhs _0800EBEC
	ldr r0, [sp, #0x28]
	lsls r7, r0, #4
_0800EB64:
	ldr r0, [sp, #4]
	adds r1, r0, r2
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp]
	adds r0, r0, r1
	lsls r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	movs r6, #0
	adds r2, #1
	mov ip, r2
	cmp r6, r7
	bhs _0800EBE4
_0800EB84:
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	ldm r0!, {r3}
	cmp r3, r5
	beq _0800EBDC
	ldr r1, [r4]
	movs r2, #0xff
	ands r2, r3
	cmp r2, r8
	beq _0800EBA2
	ldr r0, _0800EBFC @ =0xFFFFFF00
	ands r1, r0
	orrs r1, r2
_0800EBA2:
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _0800EBB6
	ldr r0, _0800EC00 @ =0xFFFF00FF
	ands r1, r0
	orrs r1, r2
_0800EBB6:
	movs r2, #0xff
	lsls r2, r2, #0x10
	ands r2, r3
	cmp r2, sl
	beq _0800EBC6
	ldr r0, _0800EC04 @ =0xFF00FFFF
	ands r1, r0
	orrs r1, r2
_0800EBC6:
	movs r2, #0xff
	lsls r2, r2, #0x18
	ands r2, r3
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	beq _0800EBDA
	ldr r0, _0800EC08 @ =0x00FFFFFF
	ands r1, r0
	orrs r1, r2
_0800EBDA:
	str r1, [r4]
_0800EBDC:
	adds r4, #4
	adds r6, #1
	cmp r6, r7
	blo _0800EB84
_0800EBE4:
	mov r2, ip
	ldr r1, [sp, #0x2c]
	cmp r2, r1
	blo _0800EB64
_0800EBEC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EBFC: .4byte 0xFFFFFF00
_0800EC00: .4byte 0xFFFF00FF
_0800EC04: .4byte 0xFF00FFFF
_0800EC08: .4byte 0x00FFFFFF

	thumb_func_start sub_0800EC0C
sub_0800EC0C: @ 0x0800EC0C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800EC22
	ldr r0, _0800EC28 @ =0x05000100
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, [r1, #4]
	bl sub_08000314
_0800EC22:
	pop {r0}
	bx r0
	.align 2, 0
_0800EC28: .4byte 0x05000100

	thumb_func_start sub_0800EC2C
sub_0800EC2C: @ 0x0800EC2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r1
	mov sb, r2
	str r3, [sp, #8]
	ldr r1, _0800ECB4 @ =gUnknown_02012874
	mov sl, r1
	bl sub_0800EA64
	adds r5, r0, #0
	ldr r1, _0800ECB8 @ =gUnknown_083E5244
	lsls r0, r5, #3
	adds r0, r0, r1
	ldr r7, [r0]
	lsls r0, r5, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [r0]
	mov r1, r8
	adds r0, r1, r7
	cmp r0, #0x1e
	bhi _0800EC6A
	mov r1, sb
	adds r0, r1, r6
	cmp r0, #0x14
	bls _0800EC70
_0800EC6A:
	ldr r0, _0800ECBC @ =gUnknown_0831B59C
	bl sub_080050A8
_0800EC70:
	lsls r0, r6, #6
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0800ECC0 @ =gUnknown_02001CC0
	bl sub_0800459C
	adds r4, r0, #0
	mov r0, sl
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800EAA0
	ldr r0, _0800ECC4 @ =gUnknown_0200C1A0
	ldr r1, _0800ECC8 @ =0x000068B9
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800EC9A
	mov r0, sl
	bl sub_0800EACC
_0800EC9A:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800ECCC
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, sl
	adds r1, r4, #0
	mov r2, r8
	mov r3, sb
	bl sub_0800EB2C
	b _0800ECDC
	.align 2, 0
_0800ECB4: .4byte gUnknown_02012874
_0800ECB8: .4byte gUnknown_083E5244
_0800ECBC: .4byte gUnknown_0831B59C
_0800ECC0: .4byte gUnknown_02001CC0
_0800ECC4: .4byte gUnknown_0200C1A0
_0800ECC8: .4byte 0x000068B9
_0800ECCC:
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, sl
	adds r1, r4, #0
	mov r2, r8
	mov r3, sb
	bl sub_0800EAE4
_0800ECDC:
	ldr r0, _0800ECF8 @ =gUnknown_02001CC0
	bl sub_08004604
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECF8: .4byte gUnknown_02001CC0

	thumb_func_start sub_0800ECFC
sub_0800ECFC: @ 0x0800ECFC
	push {lr}
	movs r3, #0
	bl sub_0800EC2C
	pop {r0}
	bx r0

	thumb_func_start sub_0800ED08
sub_0800ED08: @ 0x0800ED08
	push {lr}
	movs r3, #1
	bl sub_0800EC2C
	pop {r0}
	bx r0

	thumb_func_start sub_0800ED14
sub_0800ED14: @ 0x0800ED14
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #2
	bls _0800ED22
	ldr r0, _0800ED34 @ =gUnknown_0831B5BC
	bl sub_080050A8
_0800ED22:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0800ED38 @ =gUnknown_083E7CDC
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800ED34: .4byte gUnknown_0831B5BC
_0800ED38: .4byte gUnknown_083E7CDC

	thumb_func_start sub_0800ED3C
sub_0800ED3C: @ 0x0800ED3C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	ldrb r0, [r4, #2]
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0x40
	bl sub_080002C4
	ldr r2, [r4, #8]
	ldr r1, _0800ED78 @ =0x06009600
	adds r0, r2, #0
	bl sub_0803D358
	movs r5, #0x96
	lsls r5, r5, #2
	movs r3, #0
	ldrb r0, [r4, #1]
	cmp r3, r0
	bhs _0800ED96
	ldr r6, _0800ED7C @ =0x0600E800
_0800ED6E:
	lsls r0, r3, #6
	adds r1, r0, r6
	movs r2, #0
	adds r0, r3, #1
	b _0800ED88
	.align 2, 0
_0800ED78: .4byte 0x06009600
_0800ED7C: .4byte 0x0600E800
_0800ED80:
	strh r5, [r1]
	adds r1, #2
	adds r5, #1
	adds r2, #1
_0800ED88:
	ldrb r3, [r4]
	cmp r2, r3
	blo _0800ED80
	adds r3, r0, #0
	ldrb r0, [r4, #1]
	cmp r3, r0
	blo _0800ED6E
_0800ED96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800ED9C
sub_0800ED9C: @ 0x0800ED9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r6, [sp, #0x18]
	ldr r1, _0800EE5C @ =0x04000018
	rsbs r0, r4, #0
	ldr r7, _0800EE60 @ =0x000001FF
	adds r2, r7, #0
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	rsbs r0, r5, #0
	ands r0, r2
	strh r0, [r1]
	movs r1, #0
	cmp r1, r4
	bge _0800EDC6
	adds r1, r4, #0
_0800EDC6:
	movs r0, #0xf0
	mov ip, r0
	cmp ip, r1
	ble _0800EDD0
	mov ip, r1
_0800EDD0:
	movs r2, #0
	cmp r2, r5
	bge _0800EDD8
	adds r2, r5, #0
_0800EDD8:
	movs r7, #0xa0
	cmp r7, r2
	ble _0800EDE0
	adds r7, r2, #0
_0800EDE0:
	adds r1, r4, r3
	movs r0, #0
	cmp r0, r1
	bge _0800EDEA
	adds r0, r1, #0
_0800EDEA:
	movs r2, #0xf0
	cmp r2, r0
	ble _0800EDF2
	adds r2, r0, #0
_0800EDF2:
	adds r0, r5, r6
	movs r1, #0
	cmp r1, r0
	bge _0800EDFC
	adds r1, r0, #0
_0800EDFC:
	movs r0, #0xa0
	cmp r0, r1
	ble _0800EE04
	adds r0, r1, #0
_0800EE04:
	mov r1, ip
	subs r3, r2, r1
	subs r6, r0, r7
	mov r0, ip
	adds r1, r7, #0
	adds r2, r3, #0
	adds r3, r6, #0
	bl sub_08000E98
	mov r2, r8
	cmp r2, #0
	bne _0800EE50
	ldr r1, _0800EE64 @ =0x0400000C
	ldr r7, _0800EE68 @ =0x00001D81
	adds r0, r7, #0
	strh r0, [r1]
	adds r1, #0x3c
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x1b
	strh r0, [r1]
	ldr r0, _0800EE6C @ =gUnknown_02001D0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800EE3C
	bl sub_0803D380
_0800EE3C:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	strh r0, [r2]
_0800EE50:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EE5C: .4byte 0x04000018
_0800EE60: .4byte 0x000001FF
_0800EE64: .4byte 0x0400000C
_0800EE68: .4byte 0x00001D81
_0800EE6C: .4byte gUnknown_02001D0C

	thumb_func_start sub_0800EE70
sub_0800EE70: @ 0x0800EE70
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0800EE84 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _0800EE88 @ =0xFFFFDFFF
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0800EE84: .4byte 0xFFFFFBFF
_0800EE88: .4byte 0xFFFFDFFF

	thumb_func_start sub_0800EE8C
sub_0800EE8C: @ 0x0800EE8C
	push {lr}
	ldr r1, _0800EE9C @ =gUnknown_0201287C
	movs r0, #0
	strb r0, [r1]
	bl sub_0800EE70
	pop {r0}
	bx r0
	.align 2, 0
_0800EE9C: .4byte gUnknown_0201287C

	thumb_func_start sub_0800EEA0
sub_0800EEA0: @ 0x0800EEA0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800EEC8
	ldr r0, [r4, #8]
	bl sub_0800ED3C
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r0, #4
	ldrsh r2, [r4, r0]
	ldrh r3, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	str r0, [sp]
	movs r0, #0
	bl sub_0800ED9C
	b _0800EECC
_0800EEC8:
	bl sub_0800EE70
_0800EECC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800EED4
sub_0800EED4: @ 0x0800EED4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r4, _0800EF00 @ =gUnknown_0201287C
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800EF04
	ldrh r3, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	str r0, [sp]
	movs r0, #1
	bl sub_0800ED9C
	strh r7, [r4, #2]
	mov r0, r8
	strh r0, [r4, #4]
	b _0800EF66
	.align 2, 0
_0800EF00: .4byte gUnknown_0201287C
_0800EF04:
	adds r0, r6, #0
	bl sub_0800ED14
	adds r5, r0, #0
	movs r0, #1
	mov sb, r0
	mov r0, sb
	strb r0, [r4]
	strb r6, [r4, #1]
	movs r1, #0
	strh r7, [r4, #2]
	mov r0, r8
	strh r0, [r4, #4]
	str r5, [r4, #8]
	ldrb r0, [r5]
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	strh r0, [r4, #0xe]
	adds r6, r4, #0
	adds r6, #0x50
	strb r1, [r6]
	ldrb r0, [r5, #2]
	cmp r0, #0x30
	bne _0800EF50
	adds r1, r0, #0
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x10
	movs r2, #0x40
	bl sub_080002C4
	mov r0, sb
	strb r0, [r6]
_0800EF50:
	adds r0, r5, #0
	bl sub_0800ED3C
	ldrh r3, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	str r0, [sp]
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_0800ED9C
_0800EF66:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800EF74
sub_0800EF74: @ 0x0800EF74
	push {r4, r5, lr}
	ldr r4, _0800EFB0 @ =gUnknown_0201287C
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800EFA8
	adds r5, r4, #0
	adds r5, #0x50
	ldrb r0, [r5]
	cmp r0, #0
	beq _0800EF9E
	ldr r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x10
	ldrb r0, [r0, #2]
	lsls r0, r0, #1
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	movs r2, #0x40
	bl sub_080002C4
_0800EF9E:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r5]
	bl sub_0800EE70
_0800EFA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EFB0: .4byte gUnknown_0201287C

	thumb_func_start sub_0800EFB4
sub_0800EFB4: @ 0x0800EFB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x100
	adds r6, r0, #0
	adds r4, r1, #0
	movs r7, #0
	b _0800EFDA
_0800EFC0:
	cmp r7, #0x2e
	bls _0800EFD4
	mov r0, sp
	ldr r1, _0800EFF0 @ =gUnknown_0831B5DC
	adds r2, r4, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_0800EFD4:
	strb r5, [r6]
	adds r6, #1
	adds r7, #1
_0800EFDA:
	ldrb r5, [r4]
	adds r4, #1
	cmp r5, #0
	bne _0800EFC0
	movs r0, #0
	strb r0, [r6]
	add sp, #0x100
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EFF0: .4byte gUnknown_0831B5DC

	thumb_func_start sub_0800EFF4
sub_0800EFF4: @ 0x0800EFF4
	push {lr}
	ldr r0, _0800F004 @ =gUnknown_0200C4FC
	movs r1, #0xc4
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_0800F004: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F008
sub_0800F008: @ 0x0800F008
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r4, _0800F024 @ =gUnknown_0200C4FC
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0800EFB4
	adds r4, #0x30
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F024: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F028
sub_0800F028: @ 0x0800F028
	ldr r0, _0800F034 @ =gUnknown_0200C4FC
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x30
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800F034: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F038
sub_0800F038: @ 0x0800F038
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800F048 @ =gUnknown_0200C4FC
	adds r0, #0x31
	bl sub_0800EFB4
	pop {r0}
	bx r0
	.align 2, 0
_0800F048: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F04C
sub_0800F04C: @ 0x0800F04C
	ldr r0, _0800F058 @ =gUnknown_0200C4FC
	adds r0, #0x31
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800F058: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F05C
sub_0800F05C: @ 0x0800F05C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0800F080 @ =gUnknown_0200C4FC
	adds r0, r5, #0
	adds r0, #0x61
	adds r1, r2, #0
	bl sub_0800EFB4
	cmp r4, #0
	beq _0800F084
	adds r0, r5, #0
	adds r0, #0x91
	adds r1, r4, #0
	bl sub_0800EFB4
	b _0800F08A
	.align 2, 0
_0800F080: .4byte gUnknown_0200C4FC
_0800F084:
	adds r0, r5, #0
	adds r0, #0x91
	strb r4, [r0]
_0800F08A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F090
sub_0800F090: @ 0x0800F090
	push {r4, lr}
	ldr r4, _0800F0BC @ =gUnknown_0200C4FC
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0800D9D4
	adds r0, r4, #0
	adds r0, #0x31
	bl sub_0800DCE8
	adds r0, r4, #0
	adds r0, #0x61
	adds r4, #0x91
	adds r1, r4, #0
	bl sub_0800E850
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F0BC: .4byte gUnknown_0200C4FC

	thumb_func_start sub_0800F0C0
sub_0800F0C0: @ 0x0800F0C0
	push {lr}
	adds r0, r1, #0
	bl sub_080059C4
	pop {r0}
	bx r0

	thumb_func_start sub_0800F0CC
sub_0800F0CC: @ 0x0800F0CC
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _0800F0FC
	cmp r1, #0
	beq _0800F112
	movs r0, #1
	strb r0, [r2, #1]
	ldr r4, _0800F0F8 @ =0x05000100
	adds r0, r2, #0
	adds r0, #8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x80
	bl sub_08005964
	b _0800F112
	.align 2, 0
_0800F0F8: .4byte 0x05000100
_0800F0FC:
	cmp r1, #0
	bne _0800F112
	strb r1, [r2, #1]
	adds r4, r2, #0
	adds r4, #8
	ldr r0, _0800F118 @ =0x05000100
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl sub_080002C4
_0800F112:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F118: .4byte 0x05000100

	thumb_func_start sub_0800F11C
sub_0800F11C: @ 0x0800F11C
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0800F14C
	cmp r1, #0
	beq _0800F162
	movs r0, #1
	strb r0, [r2, #2]
	ldr r4, _0800F148 @ =0x05000300
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_08005964
	b _0800F162
	.align 2, 0
_0800F148: .4byte 0x05000300
_0800F14C:
	cmp r1, #0
	bne _0800F162
	strb r1, [r2, #2]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r2, r0
	ldr r0, _0800F168 @ =0x05000300
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_080002C4
_0800F162:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F168: .4byte 0x05000300

	thumb_func_start sub_0800F16C
sub_0800F16C: @ 0x0800F16C
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _0800F19C
	cmp r1, #0
	beq _0800F1B2
	movs r0, #1
	strb r0, [r2, #3]
	ldr r4, _0800F198 @ =0x050002C0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_08005964
	b _0800F1B2
	.align 2, 0
_0800F198: .4byte 0x050002C0
_0800F19C:
	cmp r1, #0
	bne _0800F1B2
	strb r1, [r2, #3]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r4, r2, r0
	ldr r0, _0800F1B8 @ =0x050002C0
	adds r1, r4, #0
	movs r2, #0x40
	bl sub_080002C4
_0800F1B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F1B8: .4byte 0x050002C0

	thumb_func_start sub_0800F1BC
sub_0800F1BC: @ 0x0800F1BC
	push {r4, lr}
	movs r1, #0
	ldr r4, _0800F1DC @ =gUnknown_020128D0
	movs r2, #0
	ldr r3, _0800F1E0 @ =gUnknown_0200C188
_0800F1C6:
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0800F1C6
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F1DC: .4byte gUnknown_020128D0
_0800F1E0: .4byte gUnknown_0200C188

	thumb_func_start sub_0800F1E4
sub_0800F1E4: @ 0x0800F1E4
	push {lr}
	ldr r1, _0800F218 @ =gUnknown_020128D0
	ldr r3, _0800F21C @ =gUnknown_0200C188
	movs r2, #0
	adds r0, r1, #0
	subs r0, #0xcc
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F1FC
	ldrb r0, [r1, #2]
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
_0800F1FC:
	strb r2, [r3, #2]
	movs r2, #0
	adds r0, r1, #0
	subs r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F210
	ldrb r0, [r1, #3]
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
_0800F210:
	strb r2, [r3, #3]
	pop {r0}
	bx r0
	.align 2, 0
_0800F218: .4byte gUnknown_020128D0
_0800F21C: .4byte gUnknown_0200C188

	thumb_func_start sub_0800F220
sub_0800F220: @ 0x0800F220
	push {r4, lr}
	ldr r4, _0800F248 @ =gUnknown_0200C188
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0800F232
	ldr r0, _0800F24C @ =0x05000300
	movs r1, #0x20
	bl sub_08005964
_0800F232:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0800F240
	ldr r0, _0800F250 @ =0x050002C0
	movs r1, #0x20
	bl sub_08005964
_0800F240:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F248: .4byte gUnknown_0200C188
_0800F24C: .4byte 0x05000300
_0800F250: .4byte 0x050002C0

	thumb_func_start sub_0800F254
sub_0800F254: @ 0x0800F254
	push {lr}
	ldr r2, _0800F270 @ =gUnknown_020128D0
	cmp r0, #1
	beq _0800F280
	cmp r0, #1
	blo _0800F278
	cmp r0, #2
	beq _0800F288
	cmp r0, #3
	beq _0800F290
	ldr r0, _0800F274 @ =gUnknown_0831B5F4
	bl sub_080050A8
	b _0800F296
	.align 2, 0
_0800F270: .4byte gUnknown_020128D0
_0800F274: .4byte gUnknown_0831B5F4
_0800F278:
	adds r0, r2, #0
	bl sub_0800F0C0
	b _0800F296
_0800F280:
	adds r0, r2, #0
	bl sub_0800F0CC
	b _0800F296
_0800F288:
	adds r0, r2, #0
	bl sub_0800F11C
	b _0800F296
_0800F290:
	adds r0, r2, #0
	bl sub_0800F16C
_0800F296:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F29C
sub_0800F29C: @ 0x0800F29C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	strb r4, [r3]
	cmp r4, #0
	bne _0800F2C4
	movs r2, #2
	strb r2, [r3, #2]
	movs r0, #0xc0
	strb r0, [r3, #3]
	movs r1, #0x10
	strb r1, [r3, #5]
	strb r4, [r3, #7]
	movs r0, #0xf0
	strb r0, [r3, #4]
	strb r1, [r3, #6]
	movs r0, #1
	strb r0, [r3, #8]
	strb r2, [r3, #9]
	strb r1, [r3, #0xa]
_0800F2C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F2CC
sub_0800F2CC: @ 0x0800F2CC
	push {r4, lr}
	adds r4, r1, #0
	adds r1, r0, #3
	adds r1, r1, r4
	ldrb r1, [r1]
	lsls r1, r1, #1
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	lsls r3, r4, #5
	adds r3, #0xc
	adds r3, r0, r3
	adds r0, #5
	adds r0, r0, r4
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r0, r3, #0
	bl sub_080002C4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F2F8
sub_0800F2F8: @ 0x0800F2F8
	push {r4, lr}
	adds r4, r1, #0
	lsls r1, r4, #5
	adds r1, #0xc
	adds r1, r0, r1
	adds r2, r0, #3
	adds r2, r2, r4
	ldrb r3, [r2]
	lsls r3, r3, #1
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r3, r3, r2
	adds r0, #5
	adds r0, r0, r4
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r0, r3, #0
	bl sub_080002C4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F324
sub_0800F324: @ 0x0800F324
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	lsls r0, r1, #5
	adds r0, #0xc
	adds r0, r0, r3
	mov ip, r0
	adds r0, r3, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r6, r0, r2
	adds r0, r3, #5
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r3, #7
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F374
	movs r2, #0
	cmp r2, r4
	bhs _0800F398
	adds r7, r3, #0
	adds r7, #0x4d
	subs r5, r4, #1
	mov r3, ip
_0800F35C:
	ldrb r0, [r7]
	adds r0, r2, r0
	ands r0, r5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r3]
	strh r1, [r0]
	adds r3, #2
	adds r2, #1
	cmp r2, r4
	blo _0800F35C
	b _0800F398
_0800F374:
	movs r2, #0
	cmp r2, r4
	bhs _0800F398
	adds r7, r3, #0
	adds r7, #0x4d
	subs r5, r4, #1
	mov r3, ip
_0800F382:
	ldrb r0, [r7]
	subs r0, r2, r0
	ands r0, r5
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r3]
	strh r1, [r0]
	adds r3, #2
	adds r2, #1
	cmp r2, r4
	blo _0800F382
_0800F398:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F3A0
sub_0800F3A0: @ 0x0800F3A0
	push {lr}
	ldr r1, _0800F3B0 @ =sub_0800F3EC
	cmp r0, #0
	beq _0800F3B4
	adds r0, r1, #0
	bl sub_080008FC
	b _0800F3C2
	.align 2, 0
_0800F3B0: .4byte sub_0800F3EC
_0800F3B4:
	ldr r0, _0800F3C8 @ =gUnknown_03000B54
	ldr r0, [r0]
	cmp r0, r1
	bne _0800F3C2
	movs r0, #0
	bl sub_080008FC
_0800F3C2:
	pop {r0}
	bx r0
	.align 2, 0
_0800F3C8: .4byte gUnknown_03000B54

	thumb_func_start sub_0800F3CC
sub_0800F3CC: @ 0x0800F3CC
	push {lr}
	ldr r0, _0800F3E4 @ =gUnknown_0200C1A0
	ldr r1, _0800F3E8 @ =0x000068B9
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800F3A0
	pop {r0}
	bx r0
	.align 2, 0
_0800F3E4: .4byte gUnknown_0200C1A0
_0800F3E8: .4byte 0x000068B9

	thumb_func_start sub_0800F3EC
sub_0800F3EC: @ 0x0800F3EC
	push {r4, r5, lr}
	ldr r4, _0800F438 @ =gUnknown_02012A58
	ldrb r2, [r4]
	adds r1, r4, #0
	adds r1, #0x4c
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r5, [r4, #9]
	cmp r0, r5
	blo _0800F41E
	strb r3, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r5, [r4, #0xa]
	cmp r0, r5
	blo _0800F41E
	strb r3, [r1]
_0800F41E:
	cmp r2, #0
	bne _0800F432
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800F324
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800F324
_0800F432:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F438: .4byte gUnknown_02012A58

	thumb_func_start sub_0800F43C
sub_0800F43C: @ 0x0800F43C
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, _0800F45C @ =gUnknown_02012A58
	ldrb r0, [r5, #1]
	cmp r0, r1
	beq _0800F492
	strb r1, [r5, #1]
	cmp r1, #0
	beq _0800F478
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_0800F29C
	movs r4, #0
	b _0800F46A
	.align 2, 0
_0800F45C: .4byte gUnknown_02012A58
_0800F460:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800F2CC
	adds r4, #1
_0800F46A:
	ldrb r0, [r5, #2]
	cmp r4, r0
	blo _0800F460
	movs r0, #1
	bl sub_0800F3A0
	b _0800F492
_0800F478:
	movs r0, #0
	bl sub_0800F3A0
	movs r4, #0
	b _0800F48C
_0800F482:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800F2F8
	adds r4, #1
_0800F48C:
	ldrb r0, [r5, #2]
	cmp r4, r0
	blo _0800F482
_0800F492:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F498
sub_0800F498: @ 0x0800F498
	adds r2, r1, #0
	adds r1, #0x41
	ldrb r1, [r1]
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x42
	ldrh r1, [r1]
	strh r1, [r0, #2]
	adds r1, r2, #0
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r1, r2, #0
	adds r1, #0x46
	ldrh r1, [r1]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0

	thumb_func_start sub_0800F4BC
sub_0800F4BC: @ 0x0800F4BC
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r0, #0
	bl sub_0803D320
	adds r4, r0, #0
	bl sub_0803D31C
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08000E54
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _0800F4F0
	ldr r1, _0800F500 @ =gUnknown_0831B608
	mov r0, sp
	adds r2, r5, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_0800F4F0:
	adds r0, r4, #0
	bl sub_0803D328
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800F500: .4byte gUnknown_0831B608

	thumb_func_start sub_0800F504
sub_0800F504: @ 0x0800F504
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r5, r4, #0
	adds r5, #0x20
	adds r6, r7, #0
	adds r6, #0x18
	movs r0, #0
	adds r1, r6, #0
	bl sub_0800FCA4
	str r6, [r4, #0x20]
	adds r6, #0x18
	movs r0, #1
	adds r1, r6, #0
	bl sub_0800FCA4
	str r6, [r5, #4]
	adds r6, #0x18
	movs r0, #2
	adds r1, r6, #0
	bl sub_0800FCA4
	str r6, [r5, #8]
	adds r6, #0x18
	movs r0, #3
	adds r1, r6, #0
	bl sub_0800FCA4
	str r6, [r5, #0xc]
	adds r6, #0x18
	movs r0, #4
	adds r1, r6, #0
	bl sub_0800FCA4
	str r6, [r5, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F554
sub_0800F554: @ 0x0800F554
	push {lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_0803D34C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800F56C
sub_0800F56C: @ 0x0800F56C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r3, #0
	movs r0, #0
	str r0, [sp]
	mov sl, r0
	cmp r1, #0
	bne _0800F58A
	movs r0, #1
	mov sl, r0
_0800F58A:
	movs r0, #0
	str r0, [sp, #4]
	cmp r1, #3
	bne _0800F596
	movs r0, #1
	str r0, [sp, #4]
_0800F596:
	movs r0, #0
	mov r8, r0
	cmp r1, #2
	bne _0800F5A2
	movs r0, #1
	mov r8, r0
_0800F5A2:
	movs r0, #0
	str r0, [sp, #8]
	cmp r1, #1
	bne _0800F5AE
	movs r0, #1
	str r0, [sp, #8]
_0800F5AE:
	strb r1, [r6]
	movs r0, #0
	mov r1, sl
	cmp r1, #0
	bne _0800F5C4
	mov r1, r8
	cmp r1, #0
	bne _0800F5C4
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0800F5C6
_0800F5C4:
	movs r0, #1
_0800F5C6:
	strb r0, [r6, #1]
	cmp r0, #0
	beq _0800F5D2
	movs r0, #0
	strb r0, [r6, #2]
	b _0800F5D4
_0800F5D2:
	strb r2, [r6, #2]
_0800F5D4:
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _0800F5EC
	adds r0, r4, #0
	bl sub_0800F4BC
	str r0, [sp]
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _0800F5EC
	str r4, [r6, #4]
	b _0800F5F0
_0800F5EC:
	ldr r0, _0800F604 @ =gUnknown_0831A0A8
	str r0, [r6, #4]
_0800F5F0:
	mov r2, sl
	cmp r2, #0
	bne _0800F5FC
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800F608
_0800F5FC:
	ldr r1, [sp]
	str r1, [r6, #8]
	b _0800F618
	.align 2, 0
_0800F604: .4byte gUnknown_0831A0A8
_0800F608:
	movs r0, #0xf
	bl sub_08010170
	adds r1, r0, #0
	movs r0, #6
	bl sub_0800FD0C
	str r0, [r6, #8]
_0800F618:
	movs r4, #0
	adds r2, r6, #0
	adds r2, #0x3a
	str r2, [sp, #0xc]
	movs r0, #0x40
	adds r0, r0, r6
	mov sb, r0
	adds r5, r6, #0
	adds r5, #0x20
	adds r7, r6, #0
	adds r7, #0xc
_0800F62E:
	adds r0, r4, #5
	bl sub_08010170
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800FD0C
	str r0, [r7]
	mov r1, sl
	cmp r1, #0
	bne _0800F64A
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0800F654
_0800F64A:
	adds r0, r6, #0
	ldr r1, [sp]
	bl sub_0800F504
	b _0800F672
_0800F654:
	mov r0, r8
	cmp r0, #0
	beq _0800F660
	adds r0, r4, #0
	adds r0, #0x24
	b _0800F664
_0800F660:
	adds r0, r4, #0
	adds r0, #0xa
_0800F664:
	bl sub_08010170
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800FD0C
	str r0, [r5]
_0800F672:
	adds r5, #4
	adds r7, #4
	adds r4, #1
	cmp r4, #4
	bls _0800F62E
	mov r1, sl
	cmp r1, #0
	beq _0800F688
	ldr r0, [sp, #0x38]
	strh r0, [r6, #0x34]
	b _0800F6A6
_0800F688:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0800F692
	movs r0, #0x1d
	b _0800F69A
_0800F692:
	mov r0, r8
	cmp r0, #0
	beq _0800F6A2
	movs r0, #0x23
_0800F69A:
	bl sub_08010170
	strh r0, [r6, #0x34]
	b _0800F6A6
_0800F6A2:
	mov r1, r8
	strh r1, [r6, #0x34]
_0800F6A6:
	mov r2, sl
	cmp r2, #0
	beq _0800F6B6
	ldr r0, [sp, #0x30]
	strh r0, [r6, #0x36]
	ldr r0, [sp, #0x34]
	strh r0, [r6, #0x38]
	b _0800F71C
_0800F6B6:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0800F6EE
	movs r0, #0x1b
	bl sub_08010170
	adds r5, r0, #0
	movs r0, #0x1c
	bl sub_08010170
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0800F554
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0800F554
	adds r4, r0, #0
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _0800F6E8
	strh r5, [r6, #0x36]
	strh r4, [r6, #0x38]
	b _0800F71C
_0800F6E8:
	strh r4, [r6, #0x36]
	strh r5, [r6, #0x38]
	b _0800F71C
_0800F6EE:
	mov r1, r8
	cmp r1, #0
	beq _0800F716
	movs r0, #0x21
	bl sub_08010170
	adds r4, r0, #0
	movs r0, #0x22
	bl sub_08010170
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0800F554
	strh r0, [r6, #0x36]
	adds r0, r5, #0
	bl sub_0800F554
	strh r0, [r6, #0x38]
	b _0800F71C
_0800F716:
	mov r2, r8
	strh r2, [r6, #0x36]
	strh r2, [r6, #0x38]
_0800F71C:
	movs r4, #0
_0800F71E:
	adds r0, r4, #0
	adds r0, #0x12
	bl sub_08010170
	ldr r2, [sp, #0xc]
	adds r1, r2, r4
	strb r0, [r1]
	adds r4, #1
	cmp r4, #5
	bls _0800F71E
	mov r0, sl
	cmp r0, #0
	beq _0800F73C
	ldr r0, [sp, #0x3c]
	b _0800F744
_0800F73C:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0800F74A
	movs r0, #1
_0800F744:
	mov r1, sb
	strb r0, [r1]
	b _0800F760
_0800F74A:
	mov r2, r8
	cmp r2, #0
	beq _0800F75A
	mov r0, sp
	ldrb r1, [r0, #4]
	mov r0, sb
	strb r1, [r0]
	b _0800F760
_0800F75A:
	mov r0, r8
	mov r2, sb
	strb r0, [r2]
_0800F760:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F770
sub_0800F770: @ 0x0800F770
	push {lr}
	adds r3, r0, #0
	ldr r1, _0800F784 @ =gUnknown_08312798
	movs r0, #3
	movs r2, #1
	bl sub_0800F8B0
	pop {r0}
	bx r0
	.align 2, 0
_0800F784: .4byte gUnknown_08312798

	thumb_func_start sub_0800F788
sub_0800F788: @ 0x0800F788
	push {r4, lr}
	bl sub_0800F4BC
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x18
	movs r0, #0
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0xa
	bl sub_08010180
	adds r1, r4, #0
	adds r1, #0x30
	movs r0, #1
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0xb
	bl sub_08010180
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #2
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0xc
	bl sub_08010180
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #3
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0xd
	bl sub_08010180
	adds r1, r4, #0
	adds r1, #0x78
	movs r0, #4
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0xe
	bl sub_08010180
	movs r0, #6
	adds r1, r4, #0
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #0x10
	bl sub_08010180
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800F800
sub_0800F800: @ 0x0800F800
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x58
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x74]
	ldr r0, _0800F8A8 @ =gUnknown_02012B50
	mov sb, r0
	movs r0, #0xa
	bl sub_0800F9E8
	movs r0, #0
	bl sub_0800AD4C
	bl sub_08011C70
	bl sub_0800AEB0
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	add r0, sp, #0x10
	movs r1, #0
	movs r2, #0
	mov r3, r8
	bl sub_0800F56C
	add r0, sp, #0x10
	bl sub_0801E5A4
	bl sub_0800FA04
	bl sub_08011E44
	bl sub_080006F8
	movs r0, #0
	bl sub_0800056C
	ldr r0, [sp, #0x18]
	ldr r1, _0800F8AC @ =gUnknown_0831AD10
	bl sub_08000D80
	cmp r0, #0
	bne _0800F874
	ldr r1, [sp, #0x18]
	movs r0, #6
	bl sub_0800FD50
	adds r1, r0, #0
	movs r0, #6
	bl sub_0800FCB0
_0800F874:
	mov r0, r8
	bl sub_0800FA10
	mov r4, sp
	adds r4, #0x51
	cmp r0, #0
	bne _0800F888
	ldrb r0, [r4]
	bl sub_08010250
_0800F888:
	mov r0, sb
	add r1, sp, #0x10
	bl sub_0800F498
	ldrb r0, [r4]
	cmp r0, #1
	bls _0800F898
	movs r0, #2
_0800F898:
	add sp, #0x58
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800F8A8: .4byte gUnknown_02012B50
_0800F8AC: .4byte gUnknown_0831AD10

	thumb_func_start sub_0800F8B0
sub_0800F8B0: @ 0x0800F8B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, _0800F8F0 @ =gUnknown_02012B50
	mov sl, r0
	adds r0, r7, #0
	adds r0, #0xa
	bl sub_0800F9E8
	movs r0, #0
	bl sub_0800AD4C
	bl sub_08011C70
	bl sub_0800AEB0
	cmp r7, #1
	bne _0800F8F4
	movs r4, #3
	movs r0, #0
	bl sub_0800B764
	adds r2, r0, #0
	b _0800F900
	.align 2, 0
_0800F8F0: .4byte gUnknown_02012B50
_0800F8F4:
	cmp r7, #2
	bne _0800F8FC
	movs r4, #2
	b _0800F8FE
_0800F8FC:
	movs r4, #1
_0800F8FE:
	movs r2, #0
_0800F900:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	adds r1, r4, #0
	adds r3, r5, #0
	bl sub_0800F56C
	mov r5, sp
	adds r5, #0x51
	mov r1, r8
	cmp r1, #0
	beq _0800F936
	movs r4, #0
	add r6, sp, #0x1c
_0800F922:
	mov r1, sb
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0800FD0C
	stm r6!, {r0}
	adds r4, #1
	cmp r4, #4
	bls _0800F922
_0800F936:
	add r0, sp, #0x10
	bl sub_0801E5A4
	mov r0, r8
	cmp r0, #0
	bne _0800F946
	bl sub_0800FA04
_0800F946:
	ldrb r0, [r5]
	cmp r0, #3
	bls _0800F956
	movs r0, #4
	bl sub_08000B68
	bl sub_0800134C
_0800F956:
	bl sub_0800A0F0
	mov r1, r8
	cmp r1, #0
	bne _0800F964
	bl sub_08011E44
_0800F964:
	bl sub_080006F8
	movs r0, #0
	bl sub_0800056C
	cmp r7, #1
	bne _0800F97C
	ldrb r0, [r5]
	cmp r0, #3
	bhi _0800F982
	bl sub_0801027C
_0800F97C:
	ldrb r0, [r5]
	cmp r0, #3
	bls _0800F986
_0800F982:
	movs r0, #3
	strb r0, [r5]
_0800F986:
	mov r0, r8
	cmp r0, #0
	bne _0800F994
	mov r0, sl
	add r1, sp, #0x10
	bl sub_0800F498
_0800F994:
	ldrb r0, [r5]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800F9A8
sub_0800F9A8: @ 0x0800F9A8
	push {lr}
	ldr r1, _0800F9BC @ =gUnknown_0831A0A8
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0800F8B0
	pop {r1}
	bx r1
	.align 2, 0
_0800F9BC: .4byte gUnknown_0831A0A8

	thumb_func_start sub_0800F9C0
sub_0800F9C0: @ 0x0800F9C0
	push {lr}
	adds r1, r0, #0
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_0800F8B0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800F9D4
sub_0800F9D4: @ 0x0800F9D4
	push {lr}
	adds r1, r0, #0
	movs r0, #3
	movs r2, #0
	movs r3, #0
	bl sub_0800F8B0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F9E8
sub_0800F9E8: @ 0x0800F9E8
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800FA00 @ =gUnknown_02001D70
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _0800F9FA
	adds r0, r1, #0
	bl sub_080052AC
_0800F9FA:
	pop {r0}
	bx r0
	.align 2, 0
_0800FA00: .4byte gUnknown_02001D70

	thumb_func_start sub_0800FA04
sub_0800FA04: @ 0x0800FA04
	push {lr}
	bl sub_0800A9EC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800FA10
sub_0800FA10: @ 0x0800FA10
	push {lr}
	ldr r1, _0800FA1C @ =gUnknown_08319014
	bl sub_08000D80
	pop {r1}
	bx r1
	.align 2, 0
_0800FA1C: .4byte gUnknown_08319014

	thumb_func_start sub_0800FA20
sub_0800FA20: @ 0x0800FA20
	push {lr}
	ldr r1, _0800FA2C @ =gUnknown_02012B50
	cmp r0, #0
	bne _0800FA30
	ldrb r0, [r1]
	b _0800FA56
	.align 2, 0
_0800FA2C: .4byte gUnknown_02012B50
_0800FA30:
	cmp r0, #1
	bne _0800FA38
	ldrh r0, [r1, #2]
	b _0800FA56
_0800FA38:
	cmp r0, #2
	bne _0800FA40
	ldrh r0, [r1, #4]
	b _0800FA56
_0800FA40:
	cmp r0, #3
	beq _0800FA54
	ldr r0, _0800FA50 @ =gUnknown_0831B624
	bl sub_080050A8
	movs r0, #0
	b _0800FA56
	.align 2, 0
_0800FA50: .4byte gUnknown_0831B624
_0800FA54:
	ldrh r0, [r1, #6]
_0800FA56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FA5C
sub_0800FA5C: @ 0x0800FA5C
	ldr r0, _0800FA68 @ =gUnknown_0200E4E4
	movs r1, #0
	strb r1, [r0]
	movs r1, #1
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_0800FA68: .4byte gUnknown_0200E4E4

	thumb_func_start sub_0800FA6C
sub_0800FA6C: @ 0x0800FA6C
	push {r4, lr}
	ldr r4, _0800FA8C @ =gUnknown_0200E4E4
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800FA88
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0800FA88
	ldr r0, _0800FA90 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800FA94
_0800FA88:
	movs r0, #0
	b _0800FAFE
	.align 2, 0
_0800FA8C: .4byte gUnknown_0200E4E4
_0800FA90: .4byte gUnknown_02000020
_0800FA94:
	ldr r1, _0800FB04 @ =0xFFFFE8E4
	adds r0, r4, r1
	ldr r0, [r0]
	subs r0, #1
	movs r1, #1
	strb r1, [r4]
	str r0, [r4, #4]
	ldrb r0, [r0]
	strb r0, [r4, #8]
	ldr r2, _0800FB08 @ =0xFFFFE8E0
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r4, #9]
	adds r0, r4, #0
	adds r0, #0xc
	movs r2, #0x8e
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r2, #0x70
	bl sub_080002C4
	ldr r0, _0800FB0C @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0x9c
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r2, #0x14
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x94
	ldr r2, _0800FB10 @ =0x000004F4
	adds r1, r4, r2
	movs r2, #4
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x98
	ldr r2, _0800FB14 @ =0x000042D8
	adds r1, r4, r2
	movs r2, #0x10
	bl sub_080002C4
	movs r0, #0
	bl sub_0800D2E0
	movs r0, #1
_0800FAFE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800FB04: .4byte 0xFFFFE8E4
_0800FB08: .4byte 0xFFFFE8E0
_0800FB0C: .4byte gUnknown_020132E0
_0800FB10: .4byte 0x000004F4
_0800FB14: .4byte 0x000042D8

	thumb_func_start sub_0800FB18
sub_0800FB18: @ 0x0800FB18
	ldr r1, _0800FB20 @ =gUnknown_0200E4E4
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_0800FB20: .4byte gUnknown_0200E4E4

	thumb_func_start sub_0800FB24
sub_0800FB24: @ 0x0800FB24
	ldr r0, _0800FB2C @ =gUnknown_0200E4E4
	ldrb r0, [r0, #1]
	bx lr
	.align 2, 0
_0800FB2C: .4byte gUnknown_0200E4E4

	thumb_func_start sub_0800FB30
sub_0800FB30: @ 0x0800FB30
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0800FB5C @ =gUnknown_0200E4E4
	ldr r0, _0800FB60 @ =0xFFFFDCBC
	adds r6, r5, r0
	ldrb r0, [r5]
	cmp r0, #2
	beq _0800FB46
	ldr r0, _0800FB64 @ =gUnknown_0831B644
	bl sub_080050A8
_0800FB46:
	cmp r4, #0
	bne _0800FBD4
	ldrb r0, [r5, #8]
	adds r0, #0x69
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0800FB68
	strb r4, [r5]
	b _0800FB6C
	.align 2, 0
_0800FB5C: .4byte gUnknown_0200E4E4
_0800FB60: .4byte 0xFFFFDCBC
_0800FB64: .4byte gUnknown_0831B644
_0800FB68:
	movs r0, #3
	strb r0, [r5]
_0800FB6C:
	ldr r2, _0800FBC4 @ =0x00000C28
	adds r1, r6, r2
	ldr r0, [r5, #4]
	str r0, [r1]
	ldrb r1, [r5, #9]
	subs r2, #4
	adds r0, r6, r2
	strb r1, [r0]
	ldr r4, _0800FBC8 @ =gUnknown_0200E954
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r4, #0
	movs r2, #0x70
	bl sub_080002C4
	ldr r0, _0800FBCC @ =gUnknown_020132E0
	movs r1, #0x90
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r1, [r5, #0x7c]
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x70
	adds r1, r5, #0
	adds r1, #0x80
	movs r2, #0x14
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x84
	adds r1, r5, #0
	adds r1, #0x94
	movs r2, #4
	bl sub_080002C4
	ldr r2, _0800FBD0 @ =0x00003E68
	adds r4, r4, r2
	adds r1, r5, #0
	adds r1, #0x98
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_080002C4
	b _0800FBEE
	.align 2, 0
_0800FBC4: .4byte 0x00000C28
_0800FBC8: .4byte gUnknown_0200E954
_0800FBCC: .4byte gUnknown_020132E0
_0800FBD0: .4byte 0x00003E68
_0800FBD4:
	movs r0, #0
	strb r0, [r5]
	bl sub_08011C70
	movs r0, #0
	bl sub_08011D8C
	ldr r0, _0800FBF4 @ =gUnknown_0831AF6C
	bl sub_080117CC
	ldr r2, _0800FBF8 @ =0xFFFFE8E4
	adds r1, r5, r2
	str r0, [r1]
_0800FBEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FBF4: .4byte gUnknown_0831AF6C
_0800FBF8: .4byte 0xFFFFE8E4

	thumb_func_start sub_0800FBFC
sub_0800FBFC: @ 0x0800FBFC
	push {lr}
	ldr r0, _0800FC08 @ =gUnknown_0831B69C
	bl sub_080050A8
	pop {r0}
	bx r0
	.align 2, 0
_0800FC08: .4byte gUnknown_0831B69C

	thumb_func_start sub_0800FC0C
sub_0800FC0C: @ 0x0800FC0C
	push {lr}
	sub sp, #0x80
	adds r3, r1, #0
	ldr r1, _0800FC30 @ =gUnknown_083E7D00
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, _0800FC34 @ =gUnknown_0831B6B8
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_0800FC30: .4byte gUnknown_083E7D00
_0800FC34: .4byte gUnknown_0831B6B8

	thumb_func_start sub_0800FC38
sub_0800FC38: @ 0x0800FC38
	push {lr}
	sub sp, #0x80
	adds r3, r1, #0
	ldr r1, _0800FC5C @ =gUnknown_083E7D00
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, _0800FC60 @ =gUnknown_0831B6DC
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
	add sp, #0x80
	pop {r0}
	bx r0
	.align 2, 0
_0800FC5C: .4byte gUnknown_083E7D00
_0800FC60: .4byte gUnknown_0831B6DC

	thumb_func_start sub_0800FC64
sub_0800FC64: @ 0x0800FC64
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #6
	bls _0800FC74
	bl sub_0800FBFC
	b _0800FC9C
_0800FC74:
	ldr r0, _0800FC8C @ =gUnknown_083E7D1C
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0800FC94
	ldr r1, _0800FC90 @ =gUnknown_083E7D40
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r3, #1
	adds r0, r0, r1
	b _0800FC9E
	.align 2, 0
_0800FC8C: .4byte gUnknown_083E7D1C
_0800FC90: .4byte gUnknown_083E7D40
_0800FC94:
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_0800FC0C
_0800FC9C:
	movs r0, #0
_0800FC9E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FCA4
sub_0800FCA4: @ 0x0800FCA4
	push {lr}
	bl sub_0800FD50
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800FCB0
sub_0800FCB0: @ 0x0800FCB0
	ldr r2, _0800FCC4 @ =gUnknown_083E7D40
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _0800FCC8 @ =0x00000101
	adds r1, r2, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_0800FCC4: .4byte gUnknown_083E7D40
_0800FCC8: .4byte 0x00000101

	thumb_func_start sub_0800FCCC
sub_0800FCCC: @ 0x0800FCCC
	push {lr}
	ldr r1, _0800FCE4 @ =gUnknown_083E7D24
	ldr r1, [r1, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800FCE8 @ =gUnknown_0831B700
	bl sub_08000DDC
	pop {r1}
	bx r1
	.align 2, 0
_0800FCE4: .4byte gUnknown_083E7D24
_0800FCE8: .4byte gUnknown_0831B700

	thumb_func_start sub_0800FCEC
sub_0800FCEC: @ 0x0800FCEC
	push {lr}
	adds r1, r0, #0
	cmp r1, #6
	bhi _0800FD00
	ldr r0, _0800FCFC @ =gUnknown_083E7D1C
	adds r0, r1, r0
	ldrb r0, [r0]
	b _0800FD06
	.align 2, 0
_0800FCFC: .4byte gUnknown_083E7D1C
_0800FD00:
	bl sub_0800FBFC
	movs r0, #0
_0800FD06:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FD0C
sub_0800FD0C: @ 0x0800FD0C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #6
	bls _0800FD1C
	bl sub_0800FBFC
	b _0800FD48
_0800FD1C:
	ldr r0, _0800FD38 @ =gUnknown_083E7D1C
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0800FD40
	ldr r1, _0800FD3C @ =gUnknown_083E7D24
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	b _0800FD4A
	.align 2, 0
_0800FD38: .4byte gUnknown_083E7D1C
_0800FD3C: .4byte gUnknown_083E7D24
_0800FD40:
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_0800FC0C
_0800FD48:
	movs r0, #0
_0800FD4A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FD50
sub_0800FD50: @ 0x0800FD50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	cmp r7, #6
	bls _0800FD68
	bl sub_0800FBFC
	b _0800FD9A
_0800FD64:
	adds r0, r5, #0
	b _0800FD9C
_0800FD68:
	ldr r0, _0800FDA8 @ =gUnknown_083E7D1C
	adds r0, r7, r0
	ldrb r6, [r0]
	ldr r1, _0800FDAC @ =gUnknown_083E7D24
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r5, #0
	cmp r5, r6
	bhs _0800FD92
	adds r4, r0, #0
_0800FD7E:
	ldr r1, [r4]
	mov r0, r8
	bl sub_08000D80
	cmp r0, #0
	bne _0800FD64
	adds r4, #4
	adds r5, #1
	cmp r5, r6
	blo _0800FD7E
_0800FD92:
	adds r0, r7, #0
	mov r1, r8
	bl sub_0800FC38
_0800FD9A:
	movs r0, #0
_0800FD9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800FDA8: .4byte gUnknown_083E7D1C
_0800FDAC: .4byte gUnknown_083E7D24

	thumb_func_start sub_0800FDB0
sub_0800FDB0: @ 0x0800FDB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0
_0800FDBA:
	ldr r0, _0800FDE0 @ =gUnknown_083E7D1C
	adds r0, r6, r0
	ldrb r7, [r0]
	ldr r1, _0800FDE4 @ =gUnknown_083E7D24
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r5, #0
	cmp r5, r7
	bhs _0800FDF0
	adds r4, r0, #0
_0800FDD0:
	ldr r1, [r4]
	mov r0, r8
	bl sub_08000D80
	cmp r0, #0
	beq _0800FDE8
	adds r0, r6, #0
	b _0800FDFA
	.align 2, 0
_0800FDE0: .4byte gUnknown_083E7D1C
_0800FDE4: .4byte gUnknown_083E7D24
_0800FDE8:
	adds r4, #4
	adds r5, #1
	cmp r5, r7
	blo _0800FDD0
_0800FDF0:
	adds r6, #1
	cmp r6, #6
	bls _0800FDBA
	movs r0, #1
	rsbs r0, r0, #0
_0800FDFA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800FE04
sub_0800FE04: @ 0x0800FE04
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #6
	bls _0800FE14
	bl sub_0800FBFC
	b _0800FE54
_0800FE14:
	ldr r0, _0800FE28 @ =gUnknown_083E7D1C
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	blo _0800FE2C
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_0800FC0C
	b _0800FE54
	.align 2, 0
_0800FE28: .4byte gUnknown_083E7D1C
_0800FE2C:
	ldr r1, _0800FE50 @ =gUnknown_083E7D24
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0x23
	bne _0800FE54
	ldrb r0, [r1, #1]
	cmp r0, #0x49
	beq _0800FE4A
	cmp r0, #0x41
	bne _0800FE54
_0800FE4A:
	movs r0, #1
	b _0800FE56
	.align 2, 0
_0800FE50: .4byte gUnknown_083E7D24
_0800FE54:
	movs r0, #0
_0800FE56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FE5C
sub_0800FE5C: @ 0x0800FE5C
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0]
	pop {r1}
	bx r1

	thumb_func_start sub_0800FE68
sub_0800FE68: @ 0x0800FE68
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	adds r3, r0, #0
	ldrb r1, [r3]
	adds r1, r1, r4
	movs r2, #0
	cmp r2, r1
	bge _0800FE7E
	adds r2, r1, #0
_0800FE7E:
	movs r1, #0x63
	cmp r1, r2
	ble _0800FE86
	adds r1, r2, #0
_0800FE86:
	strb r1, [r3]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FE90
sub_0800FE90: @ 0x0800FE90
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	adds r3, r0, #0
	ldrb r1, [r3]
	adds r1, r1, r4
	movs r2, #0
	cmp r2, r1
	bge _0800FEA6
	adds r2, r1, #0
_0800FEA6:
	movs r1, #0x63
	cmp r1, r2
	ble _0800FEAE
	adds r1, r2, #0
_0800FEAE:
	strb r1, [r3]
	ldrb r1, [r3, #1]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FEC0
sub_0800FEC0: @ 0x0800FEC0
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0, #1]
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1

	thumb_func_start sub_0800FED0
sub_0800FED0: @ 0x0800FED0
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	movs r1, #2
	rsbs r1, r1, #0
	ldrb r2, [r0, #1]
	ands r1, r2
	orrs r1, r4
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800FEEC
sub_0800FEEC: @ 0x0800FEEC
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0, #1]
	asrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FF00
sub_0800FF00: @ 0x0800FF00
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	movs r1, #3
	rsbs r1, r1, #0
	ldrb r2, [r0, #1]
	ands r1, r2
	lsls r4, r4, #1
	orrs r1, r4
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FF1C
sub_0800FF1C: @ 0x0800FF1C
	push {r4, r5, lr}
	movs r4, #0xd6
	ldr r5, _0800FF3C @ =0xFFFFFDFF
	movs r3, #0
	ldr r2, _0800FF40 @ =gUnknown_0200C208
_0800FF26:
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, r4
	blo _0800FF26
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FF3C: .4byte 0xFFFFFDFF
_0800FF40: .4byte gUnknown_0200C208

	thumb_func_start sub_0800FF44
sub_0800FF44: @ 0x0800FF44
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0, #1]
	asrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FF58
sub_0800FF58: @ 0x0800FF58
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	movs r1, #5
	rsbs r1, r1, #0
	ldrb r2, [r0, #1]
	ands r1, r2
	lsls r4, r4, #2
	orrs r1, r4
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FF74
sub_0800FF74: @ 0x0800FF74
	push {r4, r5, lr}
	movs r4, #0xd6
	ldr r5, _0800FF94 @ =0xFFFFFBFF
	movs r3, #0
	ldr r2, _0800FF98 @ =gUnknown_0200C208
_0800FF7E:
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, r4
	blo _0800FF7E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FF94: .4byte 0xFFFFFBFF
_0800FF98: .4byte gUnknown_0200C208

	thumb_func_start sub_0800FF9C
sub_0800FF9C: @ 0x0800FF9C
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0, #1]
	asrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FFB0
sub_0800FFB0: @ 0x0800FFB0
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	movs r1, #9
	rsbs r1, r1, #0
	ldrb r2, [r0, #1]
	ands r1, r2
	lsls r4, r4, #3
	orrs r1, r4
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FFCC
sub_0800FFCC: @ 0x0800FFCC
	push {lr}
	bl sub_0800FC64
	ldrb r0, [r0, #1]
	asrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800FFE0
sub_0800FFE0: @ 0x0800FFE0
	push {r4, lr}
	adds r4, r2, #0
	bl sub_0800FC64
	movs r1, #0x11
	rsbs r1, r1, #0
	ldrb r2, [r0, #1]
	ands r1, r2
	lsls r4, r4, #4
	orrs r1, r4
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FFFC
sub_0800FFFC: @ 0x0800FFFC
	push {lr}
	ldr r0, _08010010 @ =gUnknown_0200C208
	movs r1, #0xd6
	lsls r1, r1, #1
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_08010010: .4byte gUnknown_0200C208

	thumb_func_start sub_08010014
sub_08010014: @ 0x08010014
	push {r4, r5, r6, lr}
	ldr r2, _0801004C @ =gUnknown_083E7D40
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, _08010050 @ =gUnknown_083E7D1C
	adds r0, r0, r1
	ldrb r3, [r0]
	movs r5, #0
	movs r4, #0
	cmp r5, r3
	bhs _08010042
	movs r6, #0xff
_0801002E:
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0801003A
	adds r5, #1
_0801003A:
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	blo _0801002E
_08010042:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801004C: .4byte gUnknown_083E7D40
_08010050: .4byte gUnknown_083E7D1C

	thumb_func_start sub_08010054
sub_08010054: @ 0x08010054
	push {r4, r5, r6, r7, lr}
	ldr r2, _08010094 @ =gUnknown_083E7D40
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, _08010098 @ =gUnknown_083E7D1C
	adds r0, r0, r1
	ldrb r3, [r0]
	movs r5, #0
	movs r4, #0
	cmp r5, r3
	bhs _0801008C
	movs r7, #0xff
	movs r6, #1
_08010070:
	ldrh r1, [r2]
	adds r0, r1, #0
	ands r0, r7
	lsrs r1, r1, #9
	ands r1, r6
	cmp r0, #0
	beq _08010084
	cmp r1, #0
	bne _08010084
	adds r5, #1
_08010084:
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	blo _08010070
_0801008C:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08010094: .4byte gUnknown_083E7D40
_08010098: .4byte gUnknown_083E7D1C

	thumb_func_start sub_0801009C
sub_0801009C: @ 0x0801009C
	push {r4, r5, r6, r7, lr}
	ldr r2, _080100DC @ =gUnknown_083E7D40
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, _080100E0 @ =gUnknown_083E7D1C
	adds r0, r0, r1
	ldrb r3, [r0]
	movs r5, #0
	movs r4, #0
	cmp r5, r3
	bhs _080100D4
	movs r7, #0xff
	movs r6, #1
_080100B8:
	ldrh r1, [r2]
	adds r0, r1, #0
	ands r0, r7
	lsrs r1, r1, #0xa
	ands r1, r6
	cmp r0, #0
	beq _080100CC
	cmp r1, #0
	bne _080100CC
	adds r5, #1
_080100CC:
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	blo _080100B8
_080100D4:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080100DC: .4byte gUnknown_083E7D40
_080100E0: .4byte gUnknown_083E7D1C

	thumb_func_start sub_080100E4
sub_080100E4: @ 0x080100E4
	ldr r1, _080100EC @ =gUnknown_0200C1D8
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080100EC: .4byte gUnknown_0200C1D8

	thumb_func_start sub_080100F0
sub_080100F0: @ 0x080100F0
	ldr r0, _080100FC @ =gUnknown_0200C1A0
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080100FC: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08010100
sub_08010100: @ 0x08010100
	ldr r2, _08010114 @ =gUnknown_0200C1A0
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r2, r2, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08010114: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08010118
sub_08010118: @ 0x08010118
	ldr r0, _0801011C @ =gUnknown_0200C1B4
	bx lr
	.align 2, 0
_0801011C: .4byte gUnknown_0200C1B4

	thumb_func_start sub_08010120
sub_08010120: @ 0x08010120
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004954
	movs r1, #0
	cmp r0, #0
	ble _08010134
	cmp r0, #7
	bgt _08010134
	movs r1, #1
_08010134:
	cmp r1, #0
	bne _0801013E
	ldr r0, _0801014C @ =gUnknown_0831B708
	bl sub_080050A8
_0801013E:
	ldr r0, _08010150 @ =gUnknown_0200C1B4
	adds r1, r4, #0
	bl sub_0803E020
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801014C: .4byte gUnknown_0831B708
_08010150: .4byte gUnknown_0200C1B4

	thumb_func_start sub_08010154
sub_08010154: @ 0x08010154
	ldr r0, _08010158 @ =gUnknown_0200C1C4
	bx lr
	.align 2, 0
_08010158: .4byte gUnknown_0200C1C4

	thumb_func_start sub_0801015C
sub_0801015C: @ 0x0801015C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0801016C @ =gUnknown_0200C1C4
	bl sub_0803E020
	pop {r0}
	bx r0
	.align 2, 0
_0801016C: .4byte gUnknown_0200C1C4

	thumb_func_start sub_08010170
sub_08010170: @ 0x08010170
	ldr r1, _0801017C @ =gUnknown_0200C1B4
	adds r1, #0x24
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0801017C: .4byte gUnknown_0200C1B4

	thumb_func_start sub_08010180
sub_08010180: @ 0x08010180
	ldr r2, _0801018C @ =gUnknown_0200C1B4
	adds r2, #0x24
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0801018C: .4byte gUnknown_0200C1B4

	thumb_func_start sub_08010190
sub_08010190: @ 0x08010190
	ldr r0, _08010198 @ =gUnknown_0200C1A0
	ldr r0, [r0, #0x34]
	bx lr
	.align 2, 0
_08010198: .4byte gUnknown_0200C1A0

	thumb_func_start sub_0801019C
sub_0801019C: @ 0x0801019C
	push {lr}
	ldr r2, _080101B8 @ =gUnknown_0200C1B4
	movs r1, #0
	cmp r1, r0
	bge _080101A8
	adds r1, r0, #0
_080101A8:
	ldr r0, _080101BC @ =0x0098967F
	cmp r0, r1
	ble _080101B0
	adds r0, r1, #0
_080101B0:
	str r0, [r2, #0x20]
	pop {r0}
	bx r0
	.align 2, 0
_080101B8: .4byte gUnknown_0200C1B4
_080101BC: .4byte 0x0098967F

	thumb_func_start sub_080101C0
sub_080101C0: @ 0x080101C0
	push {lr}
	adds r1, r0, #0
	ldr r3, _080101E0 @ =gUnknown_0200C1B4
	ldr r0, [r3, #0x20]
	adds r1, r1, r0
	movs r2, #0
	cmp r2, r1
	bge _080101D2
	adds r2, r1, #0
_080101D2:
	ldr r0, _080101E4 @ =0x0098967F
	cmp r0, r2
	ble _080101DA
	adds r0, r2, #0
_080101DA:
	str r0, [r3, #0x20]
	pop {r0}
	bx r0
	.align 2, 0
_080101E0: .4byte gUnknown_0200C1B4
_080101E4: .4byte 0x0098967F

	thumb_func_start sub_080101E8
sub_080101E8: @ 0x080101E8
	push {lr}
	cmp r0, #0
	beq _080101F8
	ldr r0, _080101F4 @ =gUnknown_0200E200
	b _080101FA
	.align 2, 0
_080101F4: .4byte gUnknown_0200E200
_080101F8:
	ldr r0, _08010200 @ =gUnknown_0200E0C8
_080101FA:
	pop {r1}
	bx r1
	.align 2, 0
_08010200: .4byte gUnknown_0200E0C8

	thumb_func_start sub_08010204
sub_08010204: @ 0x08010204
	push {lr}
	adds r2, r0, #0
	ldrh r3, [r2]
	ldr r0, _08010224 @ =0x0000270E
	cmp r3, r0
	bhi _0801021E
	adds r0, r3, #1
	strh r0, [r2]
	cmp r1, #0
	beq _0801021E
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r2, #2]
_0801021E:
	pop {r0}
	bx r0
	.align 2, 0
_08010224: .4byte 0x0000270E

	thumb_func_start sub_08010228
sub_08010228: @ 0x08010228
	push {r4, lr}
	movs r4, #0
_0801022C:
	adds r0, r4, #5
	bl sub_08010170
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0800FE04
	cmp r0, #0
	beq _08010242
	movs r0, #1
	b _0801024A
_08010242:
	adds r4, #1
	cmp r4, #4
	bls _0801022C
	movs r0, #0
_0801024A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08010250
sub_08010250: @ 0x08010250
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08010228
	adds r5, r0, #0
	movs r0, #5
	bl sub_08010170
	adds r4, r0, #0
	movs r0, #6
	bl sub_08010170
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08010430
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801027C
sub_0801027C: @ 0x0801027C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov sb, r0
	bl sub_08010228
	mov r8, r0
	movs r0, #5
	bl sub_08010170
	adds r6, r0, #0
	movs r0, #6
	bl sub_08010170
	adds r5, r0, #0
	movs r0, #0xf
	bl sub_08010170
	adds r4, r0, #0
	bl sub_08010154
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08010490
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080102C8
sub_080102C8: @ 0x080102C8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r5, _080102F0 @ =gUnknown_0200E088
	bl sub_08000588
	cmp r4, #0
	beq _080102F8
	ldr r0, _080102F4 @ =0xFFFFE338
	adds r1, r5, r0
	adds r2, r5, #0
	adds r2, #0x40
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r2, #0
	adds r2, r3, #0
	bl sub_080002C4
	b _08010318
	.align 2, 0
_080102F0: .4byte gUnknown_0200E088
_080102F4: .4byte 0xFFFFE338
_080102F8:
	adds r0, r6, #0
	movs r1, #3
	bl sub_080107DC
	adds r1, r0, #0
	movs r0, #0x88
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r2, r5, #0
	adds r2, #0x40
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r2, #0
	adds r2, r3, #0
	bl sub_08010764
_08010318:
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r2, r5, r0
	adds r0, r6, #0
	movs r1, #2
	bl sub_080109C0
	bl sub_080005B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08010330
sub_08010330: @ 0x08010330
	push {r4, lr}
	adds r4, r1, #0
	bl sub_080101E8
	cmp r4, #0
	bne _08010340
	ldrh r0, [r0]
	b _08010342
_08010340:
	ldrh r0, [r0, #4]
_08010342:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08010348
sub_08010348: @ 0x08010348
	push {r4, lr}
	adds r4, r1, #0
	bl sub_080101E8
	cmp r4, #0
	bne _08010358
	ldrh r0, [r0, #2]
	b _0801035A
_08010358:
	ldrh r0, [r0, #6]
_0801035A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08010360
sub_08010360: @ 0x08010360
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r4, #6
	bne _08010380
	ldr r0, _0801037C @ =gUnknown_0200E200
	lsls r1, r5, #2
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080103A0
	.align 2, 0
_0801037C: .4byte gUnknown_0200E200
_08010380:
	bl sub_080101E8
	adds r1, r0, #0
	cmp r4, #0
	bne _08010394
	lsls r0, r5, #2
	adds r1, #8
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080103A0
_08010394:
	cmp r4, #1
	bne _080103A0
	lsls r0, r5, #2
	adds r1, #0x9c
	adds r1, r1, r0
	ldrh r0, [r1]
_080103A0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080103A8
sub_080103A8: @ 0x080103A8
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r4, #6
	bne _080103C8
	ldr r0, _080103C4 @ =gUnknown_0200E200
	lsls r1, r5, #2
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080103E8
	.align 2, 0
_080103C4: .4byte gUnknown_0200E200
_080103C8:
	bl sub_080101E8
	adds r1, r0, #0
	cmp r4, #0
	bne _080103DC
	lsls r0, r5, #2
	adds r1, #0xa
	adds r1, r1, r0
	ldrh r0, [r1]
	b _080103E8
_080103DC:
	cmp r4, #1
	bne _080103E8
	lsls r0, r5, #2
	adds r1, #0x9e
	adds r1, r1, r0
	ldrh r0, [r1]
_080103E8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080103F0
sub_080103F0: @ 0x080103F0
	ldr r0, _080103FC @ =gUnknown_0200E200
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080103FC: .4byte gUnknown_0200E200

	thumb_func_start sub_08010400
sub_08010400: @ 0x08010400
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08010428 @ =gUnknown_0200E200
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r4, r0
	blo _08010418
	ldr r0, _0801042C @ =gUnknown_0831B72C
	bl sub_080050A8
_08010418:
	lsls r0, r4, #4
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08010428: .4byte gUnknown_0200E200
_0801042C: .4byte gUnknown_0831B72C

	thumb_func_start sub_08010430
sub_08010430: @ 0x08010430
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r5, _0801046C @ =gUnknown_0200C3C0
	cmp r4, #1
	bls _08010440
	movs r4, #0
_08010440:
	adds r0, r5, #0
	cmp r1, #0
	beq _08010448
	adds r0, #4
_08010448:
	adds r1, r4, #0
	bl sub_08010204
	lsls r0, r6, #2
	adds r0, #8
	adds r0, r0, r5
	adds r1, r4, #0
	bl sub_08010204
	lsls r0, r7, #2
	adds r0, #0x9c
	adds r0, r0, r5
	adds r1, r4, #0
	bl sub_08010204
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801046C: .4byte gUnknown_0200C3C0

	thumb_func_start sub_08010470
sub_08010470: @ 0x08010470
	push {lr}
	ldr r0, _0801048C @ =gUnknown_0200E088
	adds r2, r0, #0
	adds r2, #0x2c
	movs r1, #0
	strb r1, [r2]
	strb r1, [r0]
	adds r0, #0x30
	movs r1, #0x10
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_0801048C: .4byte gUnknown_0200E088

	thumb_func_start sub_08010490
sub_08010490: @ 0x08010490
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r5, _080104B4 @ =gUnknown_0200E088
	cmp r4, #2
	bhi _080104D8
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #4
	bls _080104BC
	ldr r0, _080104B8 @ =gUnknown_0831B748
	bl sub_080050A8
	b _080104E8
	.align 2, 0
_080104B4: .4byte gUnknown_0200E088
_080104B8: .4byte gUnknown_0831B748
_080104BC:
	cmp r4, #2
	bne _080104C2
	movs r4, #0
_080104C2:
	adds r0, #1
	strb r0, [r2]
	lsls r0, r1, #3
	adds r0, #4
	adds r0, r0, r5
	strb r4, [r0]
	strb r6, [r0, #4]
	strb r7, [r0, #1]
	strb r3, [r0, #2]
	ldr r1, [sp, #0x14]
	strb r1, [r0, #3]
_080104D8:
	adds r0, r5, #0
	adds r0, #0x30
	ldr r1, [sp, #0x18]
	movs r2, #0x10
	bl sub_08000E14
	movs r0, #1
	strb r0, [r5]
_080104E8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080104F0
sub_080104F0: @ 0x080104F0
	push {r4, lr}
	adds r4, r2, #0
	subs r1, r4, r1
	adds r2, r0, r1
	lsrs r0, r3, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801050C
	adds r3, #4
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	ands r2, r0
_0801050C:
	adds r0, r2, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_08010770
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801051C
sub_0801051C: @ 0x0801051C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r5, [r0]
	cmp r5, #0x13
	bls _08010538
_08010532:
	movs r0, #1
	rsbs r0, r0, #0
	b _08010574
_08010538:
	movs r6, #0
	cmp r6, r5
	bhs _08010558
	movs r0, #0xc8
	lsls r0, r0, #1
	adds r4, r7, r0
_08010544:
	adds r0, r4, #0
	mov r1, r8
	bl sub_08000D80
	cmp r0, #0
	bne _08010532
	adds r4, #0x10
	adds r6, #1
	cmp r6, r5
	blo _08010544
_08010558:
	lsls r0, r5, #4
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r7, r0
	mov r1, r8
	bl sub_0803E020
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r1, r7, r0
	adds r0, r5, #1
	str r0, [r1]
	adds r0, r5, #0
_08010574:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08010580
sub_08010580: @ 0x08010580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _080105E0 @ =gUnknown_0200E088
	mov sl, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801059A
	b _0801071C
_0801059A:
	ldr r0, [sp]
	movs r1, #2
	bl sub_080107DC
	mov sb, r0
	movs r1, #0xb8
	lsls r1, r1, #2
	ldr r0, _080105E4 @ =gUnknown_02001CC0
	bl sub_0800459C
	mov r8, r0
	bl sub_08000588
	ldr r0, [sp]
	movs r1, #2
	mov r2, r8
	bl sub_080109C0
	mov r5, r8
	movs r7, #0
	ldr r1, _080105E8 @ =gUnknown_0200E0B4
	ldrb r1, [r1]
	cmp r7, r1
	bhs _0801062E
	mov r6, sl
	adds r6, #4
_080105CE:
	ldrb r4, [r6]
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _080105EC
	adds r0, r5, #4
	adds r1, r4, #0
	bl sub_08010204
	b _080105F4
	.align 2, 0
_080105E0: .4byte gUnknown_0200E088
_080105E4: .4byte gUnknown_02001CC0
_080105E8: .4byte gUnknown_0200E0B4
_080105EC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08010204
_080105F4:
	ldrb r0, [r6, #1]
	lsls r0, r0, #2
	adds r0, #8
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_08010204
	ldrb r0, [r6, #2]
	lsls r0, r0, #2
	adds r0, #0x9c
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_08010204
	ldrb r0, [r6, #3]
	lsls r0, r0, #2
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_08010204
	adds r6, #8
	adds r7, #1
	ldr r0, _0801072C @ =gUnknown_0200E0B4
	ldrb r0, [r0]
	cmp r7, r0
	blo _080105CE
_0801062E:
	adds r0, r5, #0
	ldr r1, _08010730 @ =gUnknown_0200E0B8
	bl sub_0801051C
	adds r6, r0, #0
	adds r2, r5, #0
	mov r0, sb
	mov r1, r8
	movs r3, #8
	bl sub_080104F0
	movs r7, #0
	ldr r1, _0801072C @ =gUnknown_0200E0B4
	ldrb r1, [r1]
	cmp r7, r1
	bhs _08010698
	mov r4, sl
	adds r4, #5
_08010652:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, #8
	adds r2, r5, r0
	mov r0, sb
	mov r1, r8
	movs r3, #4
	bl sub_080104F0
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, #0x9c
	adds r2, r5, r0
	mov r0, sb
	mov r1, r8
	movs r3, #4
	bl sub_080104F0
	ldrb r0, [r4, #2]
	lsls r0, r0, #2
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r5, r0
	mov r0, sb
	mov r1, r8
	movs r3, #4
	bl sub_080104F0
	adds r4, #8
	adds r7, #1
	ldr r0, _0801072C @ =gUnknown_0200E0B4
	ldrb r0, [r0]
	cmp r7, r0
	blo _08010652
_08010698:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _080106C4
	lsls r0, r6, #4
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r5, r0
	mov r0, sb
	mov r1, r8
	movs r3, #0x10
	bl sub_080104F0
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r2, r5, r0
	mov r0, sb
	mov r1, r8
	movs r3, #8
	bl sub_080104F0
_080106C4:
	mov r2, r8
	ldr r0, [sp]
	movs r1, #2
	bl sub_08010C64
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	movs r0, #2
	bl sub_08010180
	ldrh r0, [r5]
	movs r1, #0xff
	cmp r1, r0
	ble _080106E6
	adds r1, r0, #0
_080106E6:
	movs r0, #3
	bl sub_08010180
	ldrh r0, [r5, #4]
	movs r1, #0xff
	cmp r1, r0
	ble _080106F6
	adds r1, r0, #0
_080106F6:
	movs r0, #4
	bl sub_08010180
	movs r0, #2
	bl sub_080100E4
	adds r2, r0, #0
	ldr r0, [sp]
	adds r1, r2, #0
	movs r2, #3
	bl sub_08011380
	bl sub_080005B4
	ldr r0, _08010734 @ =gUnknown_02001CC0
	bl sub_08004604
	bl sub_08010470
_0801071C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801072C: .4byte gUnknown_0200E0B4
_08010730: .4byte gUnknown_0200E0B8
_08010734: .4byte gUnknown_02001CC0

	thumb_func_start sub_08010738
sub_08010738: @ 0x08010738
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000588
	adds r0, r4, #0
	movs r1, #2
	bl sub_08010AF0
	bl sub_080005B4
	ldr r0, _08010760 @ =gUnknown_0200E200
	movs r1, #0xb8
	lsls r1, r1, #2
	movs r2, #0
	bl sub_08000498
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010760: .4byte gUnknown_0200E200

	thumb_func_start sub_08010764
sub_08010764: @ 0x08010764
	push {lr}
	movs r3, #0
	bl sub_08000750
	pop {r0}
	bx r0

	thumb_func_start sub_08010770
sub_08010770: @ 0x08010770
	push {lr}
	adds r3, r0, #0
	adds r0, r1, #0
	adds r1, r3, #0
	movs r3, #0
	bl sub_080007A8
	cmp r0, #0
	beq _08010788
	ldr r0, _0801078C @ =gUnknown_0831B768
	bl sub_080050B8
_08010788:
	pop {r0}
	bx r0
	.align 2, 0
_0801078C: .4byte gUnknown_0831B768

	thumb_func_start sub_08010790
sub_08010790: @ 0x08010790
	push {lr}
	movs r3, #0
	bl sub_08000800
	cmp r0, #0
	beq _080107A2
	ldr r0, _080107A8 @ =gUnknown_0831B768
	bl sub_080050B8
_080107A2:
	pop {r0}
	bx r0
	.align 2, 0
_080107A8: .4byte gUnknown_0831B768

	thumb_func_start sub_080107AC
sub_080107AC: @ 0x080107AC
	push {lr}
	sub sp, #8
	adds r1, r0, #0
	mov r0, sp
	movs r2, #8
	bl sub_08010764
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r2}
	bx r2

	thumb_func_start sub_080107C4
sub_080107C4: @ 0x080107C4
	push {lr}
	sub sp, #8
	str r2, [sp]
	str r1, [sp, #4]
	mov r1, sp
	movs r2, #8
	bl sub_08010770
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080107DC
sub_080107DC: @ 0x080107DC
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _080107EC
	cmp r2, #3
	bne _080107F0
_080107EC:
	movs r6, #0
	b _08010816
_080107F0:
	cmp r2, #1
	bne _080107FA
	movs r6, #0x88
	lsls r6, r6, #2
	b _08010816
_080107FA:
	cmp r2, #2
	bne _08010808
	ldr r6, _08010804 @ =0x00000C38
	b _08010816
	.align 2, 0
_08010804: .4byte 0x00000C38
_08010808:
	ldr r1, _0801083C @ =gUnknown_0831B780
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_08010816:
	cmp r5, #1
	bls _0801082C
	add r4, sp, #0x80
	ldr r1, _08010840 @ =gUnknown_0831B7A4
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0803DFE0
	adds r0, r4, #0
	bl sub_080050A8
_0801082C:
	ldr r0, _08010844 @ =0x00000F18
	muls r0, r5, r0
	adds r6, r6, r0
	adds r0, r6, #0
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801083C: .4byte gUnknown_0831B780
_08010840: .4byte gUnknown_0831B7A4
_08010844: .4byte 0x00000F18

	thumb_func_start sub_08010848
sub_08010848: @ 0x08010848
	push {r4, lr}
	sub sp, #0x80
	adds r2, r0, #0
	cmp r2, #0
	bne _08010858
	movs r4, #0x88
	lsls r4, r4, #2
	b _08010896
_08010858:
	cmp r2, #1
	bne _08010864
	ldr r4, _08010860 @ =0x00000A18
	b _08010896
	.align 2, 0
_08010860: .4byte 0x00000A18
_08010864:
	cmp r2, #2
	bne _0801086E
	movs r4, #0xb8
	lsls r4, r4, #2
	b _08010896
_0801086E:
	cmp r2, #3
	bne _0801087C
	ldr r4, _08010878 @ =0x00000C38
	b _08010896
	.align 2, 0
_08010878: .4byte 0x00000C38
_0801087C:
	cmp r2, #4
	bne _08010888
	ldr r4, _08010884 @ =0x00000F18
	b _08010896
	.align 2, 0
_08010884: .4byte 0x00000F18
_08010888:
	ldr r1, _080108A0 @ =gUnknown_0831B7C8
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_08010896:
	adds r0, r4, #0
	add sp, #0x80
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080108A0: .4byte gUnknown_0831B7C8

	thumb_func_start sub_080108A4
sub_080108A4: @ 0x080108A4
	ldr r1, _080108B0 @ =gUnknown_084B5FA0
	ldr r0, _080108B4 @ =gUnknown_085371D8
	subs r0, r0, r1
	ldr r1, _080108B8 @ =0x00000F18
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080108B0: .4byte gUnknown_084B5FA0
_080108B4: .4byte gUnknown_085371D8
_080108B8: .4byte 0x00000F18

	thumb_func_start sub_080108BC
sub_080108BC: @ 0x080108BC
	push {r4, r5, lr}
	adds r4, r0, #0
	str r1, [r4]
	movs r5, #0
	str r5, [r4, #4]
	bl sub_080108A4
	adds r1, r0, #0
	str r1, [r4, #8]
	str r5, [r4, #0xc]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080108D8
sub_080108D8: @ 0x080108D8
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08010848
	adds r1, r0, #0
	subs r1, #8
	lsrs r1, r1, #2
	movs r3, #0
	movs r2, #0
	cmp r3, r1
	bhs _080108F8
_080108EE:
	ldm r4!, {r0}
	adds r3, r3, r0
	adds r2, #1
	cmp r2, r1
	blo _080108EE
_080108F8:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08010900
sub_08010900: @ 0x08010900
	adds r0, r0, r1
	adds r1, r0, #0
	subs r1, #8
	str r2, [r1]
	subs r1, r0, #4
	movs r0, #0
	str r0, [r1]
	bx lr

	thumb_func_start sub_08010910
sub_08010910: @ 0x08010910
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x80
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r7, r3, #0
	adds r0, r5, #0
	bl sub_08010848
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080108D8
	adds r4, r4, r6
	adds r1, r4, #0
	subs r1, #8
	ldr r3, [r1]
	subs r4, #4
	ldr r2, [r4]
	rsbs r1, r2, #0
	orrs r1, r2
	lsrs r1, r1, #0x1f
	cmp r0, r3
	beq _08010948
	movs r1, #1
_08010948:
	cmp r1, #0
	beq _0801096C
	cmp r7, #0
	beq _08010962
	ldr r1, _08010968 @ =gUnknown_0831B7F0
	mov r2, r8
	adds r2, #1
	mov r0, sp
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050B8
_08010962:
	movs r0, #1
	b _0801096E
	.align 2, 0
_08010968: .4byte gUnknown_0831B7F0
_0801096C:
	movs r0, #0
_0801096E:
	add sp, #0x80
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801097C
sub_0801097C: @ 0x0801097C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	bl sub_080107DC
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08010848
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08010764
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_08010910
	cmp r4, #0
	bne _080109B6
	ldr r0, [r7]
	cmp r0, #2
	beq _080109B6
	ldr r0, _080109BC @ =gUnknown_0831B80C
	bl sub_080050A8
_080109B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080109BC: .4byte gUnknown_0831B80C

	thumb_func_start sub_080109C0
sub_080109C0: @ 0x080109C0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #3
	bne _080109E2
	movs r1, #0
	bl sub_0801097C
	movs r0, #0x88
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0801097C
	b _080109EA
_080109E2:
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0801097C
_080109EA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080109F0
sub_080109F0: @ 0x080109F0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r4, #0
	bne _08010A04
	adds r0, r5, #0
	movs r1, #2
	bl sub_080108BC
_08010A04:
	adds r0, r4, #0
	bl sub_08010848
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080108D8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08010900
	cmp r4, #0
	bne _08010A30
	adds r0, r7, #0
	bl sub_08011124
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080002C4
_08010A30:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080107DC
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08010770
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010A48
sub_08010A48: @ 0x08010A48
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #3
	bne _08010A6A
	movs r1, #0
	bl sub_080109F0
	movs r0, #0x88
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_080109F0
	b _08010A72
_08010A6A:
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_080109F0
_08010A72:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08010A78
sub_08010A78: @ 0x08010A78
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	cmp r5, #0
	bne _08010AD0
	bl sub_08011124
	adds r6, r0, #0
	movs r0, #0
	bl sub_08010848
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000498
	adds r0, r6, #0
	movs r1, #0
	bl sub_080108BC
	movs r0, #0
	adds r1, r6, #0
	bl sub_080108D8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08010900
	adds r0, r7, #0
	bl sub_08011124
	adds r5, r0, #0
	adds r0, r7, #0
	movs r1, #0
	bl sub_080107DC
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08010770
	b _08010AEA
_08010AD0:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080107DC
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08010848
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_08010790
_08010AEA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08010AF0
sub_08010AF0: @ 0x08010AF0
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #3
	bne _08010B08
	movs r1, #0
	bl sub_08010A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08010A78
	b _08010B2C
_08010B08:
	cmp r1, #4
	bne _08010B26
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08010A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08010A78
	b _08010B2C
_08010B26:
	adds r0, r4, #0
	bl sub_08010A78
_08010B2C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010B34
sub_08010B34: @ 0x08010B34
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08011124
	adds r7, r0, #0
	movs r0, #0
	bl sub_08010848
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_08000498
	adds r0, r7, #0
	movs r1, #2
	bl sub_080108BC
	movs r0, #0
	adds r1, r7, #0
	bl sub_080108D8
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08010900
	adds r0, r5, #0
	bl sub_08011124
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_080107DC
	adds r7, r0, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08010770
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010B8C
sub_08010B8C: @ 0x08010B8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r1
	adds r6, r2, #0
	adds r0, r6, #0
	bl sub_08010848
	adds r7, r0, #0
	ldr r0, _08010C0C @ =gUnknown_02001CC0
	adds r1, r7, #0
	bl sub_0800459C
	mov r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080107DC
	adds r5, r0, #0
	mov r4, r8
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08010764
	cmp r6, #0
	bne _08010BE4
	ldr r0, [r4]
	cmp r0, #2
	beq _08010BD2
	ldr r0, _08010C10 @ =gUnknown_0831B830
	bl sub_080050A8
_08010BD2:
	adds r5, r4, #0
	mov r0, sb
	bl sub_08011124
	adds r4, r0, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080002C4
_08010BE4:
	mov r5, r8
	mov r0, sb
	adds r1, r6, #0
	bl sub_080107DC
	adds r4, r0, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08010770
	ldr r0, _08010C0C @ =gUnknown_02001CC0
	bl sub_08004604
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010C0C: .4byte gUnknown_02001CC0
_08010C10: .4byte gUnknown_0831B830

	thumb_func_start sub_08010C14
sub_08010C14: @ 0x08010C14
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #3
	bne _08010C30
	movs r2, #0
	bl sub_08010B8C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_08010B8C
	b _08010C5C
_08010C30:
	cmp r2, #4
	bne _08010C54
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08010B8C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_08010B8C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl sub_08010B8C
	b _08010C5C
_08010C54:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08010B8C
_08010C5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010C64
sub_08010C64: @ 0x08010C64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r0, r5, #0
	bl sub_080108D8
	adds r7, r0, #0
	mov r0, r8
	adds r1, r5, #0
	bl sub_080107DC
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08010848
	adds r6, r0, #0
	adds r0, r4, r6
	adds r4, r0, #0
	subs r4, #8
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	bl sub_080107C4
	cmp r5, #0
	bne _08010CB2
	mov r0, r8
	bl sub_08011124
	adds r4, r0, #0
	adds r0, r4, r6
	adds r4, r0, #0
	subs r4, #8
	str r7, [r4]
	subs r4, r0, #4
	str r5, [r4]
_08010CB2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08010CBC
sub_08010CBC: @ 0x08010CBC
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r4, _08010CEC @ =gUnknown_0200E080
	cmp r2, #0
	bne _08010CD0
	adds r0, r3, #0
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #4]
_08010CD0:
	cmp r2, #1
	bne _08010CE4
	adds r2, r3, #1
	cmp r2, #1
	bls _08010CDC
	movs r2, #0
_08010CDC:
	adds r0, r2, #0
	movs r1, #0
	str r0, [r4]
	str r1, [r4, #4]
_08010CE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010CEC: .4byte gUnknown_0200E080

	thumb_func_start sub_08010CF0
sub_08010CF0: @ 0x08010CF0
	push {lr}
	ldr r1, _08010D00 @ =0x00001FF8
	ldr r0, _08010D04 @ =gUnknown_0200E080
	movs r2, #8
	bl sub_08010764
	pop {r0}
	bx r0
	.align 2, 0
_08010D00: .4byte 0x00001FF8
_08010D04: .4byte gUnknown_0200E080

	thumb_func_start sub_08010D08
sub_08010D08: @ 0x08010D08
	push {lr}
	ldr r1, _08010D18 @ =gUnknown_0200E080
	ldr r0, _08010D1C @ =0x00001FF8
	movs r2, #8
	bl sub_08010770
	pop {r0}
	bx r0
	.align 2, 0
_08010D18: .4byte gUnknown_0200E080
_08010D1C: .4byte 0x00001FF8

	thumb_func_start sub_08010D20
sub_08010D20: @ 0x08010D20
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	bl sub_08010CBC
	bl sub_08010D08
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010D34
sub_08010D34: @ 0x08010D34
	push {lr}
	sub sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _08010D58 @ =0x00001FF0
	mov r0, sp
	movs r2, #8
	movs r3, #0
	bl sub_080007A8
	cmp r0, #0
	beq _08010D52
	ldr r0, _08010D5C @ =gUnknown_0831B768
	bl sub_080050B8
_08010D52:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08010D58: .4byte 0x00001FF0
_08010D5C: .4byte gUnknown_0831B768

	thumb_func_start sub_08010D60
sub_08010D60: @ 0x08010D60
	push {lr}
	ldr r0, _08010D78 @ =0x2F7E8D36
	ldr r1, _08010D7C @ =0x51A7B3C5
	bl sub_08010D34
	ldr r0, _08010D80 @ =0x3C0A5DE2
	ldr r1, _08010D84 @ =0x17FC43DA
	bl sub_08010D34
	pop {r0}
	bx r0
	.align 2, 0
_08010D78: .4byte 0x2F7E8D36
_08010D7C: .4byte 0x51A7B3C5
_08010D80: .4byte 0x3C0A5DE2
_08010D84: .4byte 0x17FC43DA

	thumb_func_start sub_08010D88
sub_08010D88: @ 0x08010D88
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_080107DC
	adds r6, r0, #0
	adds r4, r7, r6
	ldr r0, [r4]
	cmp r0, #2
	bne _08010DE4
	bl sub_080108A4
	ldr r1, [r4, #8]
	cmp r1, r0
	beq _08010DC2
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	bl sub_080107C4
	b _08010DE4
_08010DB6:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #3
	bl sub_080107C4
	b _08010DE4
_08010DC2:
	movs r4, #0
_08010DC4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080107DC
	adds r2, r0, #0
	adds r2, r7, r2
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl sub_08010910
	cmp r0, #0
	bne _08010DB6
	adds r4, #1
	cmp r4, #2
	bls _08010DC4
_08010DE4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010DEC
sub_08010DEC: @ 0x08010DEC
	push {r4, lr}
	ldr r4, _08010E3C @ =gUnknown_02017AF0
	bl sub_08000588
	movs r0, #4
	bl sub_08010848
	adds r2, r0, #0
	lsls r2, r2, #1
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010764
	bl sub_08010D60
	ldr r0, _08010E40 @ =0x00001FE8
	bl sub_080107AC
	ldr r2, _08010E44 @ =0x74E38D14
	cmp r0, r2
	beq _08010E48
	movs r4, #0
_08010E18:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080107DC
	movs r1, #0
	movs r2, #0
	bl sub_080107C4
	adds r4, #1
	cmp r4, #1
	bls _08010E18
	ldr r0, _08010E40 @ =0x00001FE8
	ldr r2, _08010E44 @ =0x74E38D14
	movs r1, #0
	bl sub_080107C4
	b _08010E58
	.align 2, 0
_08010E3C: .4byte gUnknown_02017AF0
_08010E40: .4byte 0x00001FE8
_08010E44: .4byte 0x74E38D14
_08010E48:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010D88
	adds r0, r4, #0
	movs r1, #1
	bl sub_08010D88
_08010E58:
	bl sub_080005B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010E64
sub_08010E64: @ 0x08010E64
	push {lr}
	ldr r2, _08010E78 @ =gUnknown_084B5FA0
	cmp r1, #0
	beq _08010E80
	ldr r3, _08010E7C @ =0x00000C28
	adds r1, r0, r3
	ldr r0, [r1]
	adds r0, r0, r2
	b _08010E88
	.align 2, 0
_08010E78: .4byte gUnknown_084B5FA0
_08010E7C: .4byte 0x00000C28
_08010E80:
	ldr r3, _08010E90 @ =0x00000C28
	adds r1, r0, r3
	ldr r0, [r1]
	subs r0, r0, r2
_08010E88:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08010E90: .4byte 0x00000C28

	thumb_func_start sub_08010E94
sub_08010E94: @ 0x08010E94
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _08010EC8 @ =gUnknown_0200CDD8
	ldr r0, _08010ECC @ =0xFFFFF3C8
	adds r1, r4, r0
	ldr r5, _08010ED0 @ =0x00000C38
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010E64
	ldr r0, _08010ED4 @ =0x00000C28
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, r0, r6
	str r0, [r1]
	adds r4, r4, r5
	movs r0, #1
	strb r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010EC8: .4byte gUnknown_0200CDD8
_08010ECC: .4byte 0xFFFFF3C8
_08010ED0: .4byte 0x00000C38
_08010ED4: .4byte 0x00000C28

	thumb_func_start sub_08010ED8
sub_08010ED8: @ 0x08010ED8
	push {r4, lr}
	ldr r2, _08010F1C @ =gUnknown_0200C1A0
	adds r1, r2, #0
	adds r1, #0x14
	ldr r0, _08010F20 @ =gUnknown_0831B854
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08010F24 @ =gUnknown_0831B860
	adds r3, r2, #0
	adds r3, #0x24
	ldr r0, [r1]
	str r0, [r2, #0x24]
	ldrh r0, [r1, #4]
	strh r0, [r3, #4]
	ldrb r0, [r1, #6]
	strb r0, [r3, #6]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08010F28 @ =0x00001870
	adds r0, r2, r1
	strb r3, [r0]
	ldr r4, _08010F2C @ =0x00001871
	adds r2, r2, r4
	strb r3, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010F1C: .4byte gUnknown_0200C1A0
_08010F20: .4byte gUnknown_0831B854
_08010F24: .4byte gUnknown_0831B860
_08010F28: .4byte 0x00001870
_08010F2C: .4byte 0x00001871

	thumb_func_start sub_08010F30
sub_08010F30: @ 0x08010F30
	push {r4, lr}
	ldr r4, _08010F50 @ =gUnknown_0200CDD8
	ldr r0, _08010F54 @ =0x00000C39
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08010F58
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08010E94
	bl sub_08011CD8
	str r0, [r4, #0x10]
	movs r0, #0
	b _08010F5E
	.align 2, 0
_08010F50: .4byte gUnknown_0200CDD8
_08010F54: .4byte 0x00000C39
_08010F58:
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
_08010F5E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08010F64
sub_08010F64: @ 0x08010F64
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	ldr r5, _08010FCC @ =0x00000C38
	ldr r0, _08010FD0 @ =gUnknown_02001CC0
	mov r8, r0
	adds r1, r5, #0
	bl sub_0800459C
	adds r4, r0, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000498
	ldr r1, _08010FD4 @ =gUnknown_0200C1A0
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r4, #0
	bl sub_080002C4
	movs r0, #0
	str r0, [r4, #0x10]
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	bl sub_08000588
	adds r0, r6, #0
	bl sub_08010D20
	adds r0, r6, #0
	movs r1, #3
	adds r2, r4, #0
	bl sub_08010A48
	adds r0, r6, #0
	movs r1, #2
	bl sub_08010AF0
	bl sub_080005B4
	mov r0, r8
	bl sub_08004604
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010FCC: .4byte 0x00000C38
_08010FD0: .4byte gUnknown_02001CC0
_08010FD4: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08010FD8
sub_08010FD8: @ 0x08010FD8
	push {lr}
	adds r1, r0, #0
	bl sub_08010FE4
	pop {r0}
	bx r0

	thumb_func_start sub_08010FE4
sub_08010FE4: @ 0x08010FE4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r5, _08011048 @ =gUnknown_0200CDD8
	ldr r1, _0801104C @ =0x00000C38
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08010FFC
	ldr r0, _08011050 @ =gUnknown_0831B868
	bl sub_080050A8
_08010FFC:
	bl sub_08011CD8
	str r0, [r5, #0x10]
	ldr r0, _08011054 @ =0xFFFFF400
	adds r6, r5, r0
	adds r3, r5, #0
	adds r3, #0x38
	movs r2, #5
_0801100C:
	adds r0, r3, r2
	adds r1, r6, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #0x2d
	bls _0801100C
	bl sub_08000588
	adds r0, r4, #0
	bl sub_08010D20
	adds r0, r4, #0
	movs r1, #3
	adds r2, r5, #0
	bl sub_08010A48
	cmp r4, r7
	beq _0801103C
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #2
	bl sub_08010C14
_0801103C:
	bl sub_080005B4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011048: .4byte gUnknown_0200CDD8
_0801104C: .4byte 0x00000C38
_08011050: .4byte gUnknown_0831B868
_08011054: .4byte 0xFFFFF400

	thumb_func_start sub_08011058
sub_08011058: @ 0x08011058
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_08011C70
	movs r0, #0
	bl sub_08011D8C
	bl sub_08000588
	ldr r4, _08011098 @ =gUnknown_0200C1A0
	adds r0, r7, #0
	movs r1, #3
	adds r2, r4, #0
	bl sub_080109C0
	bl sub_080005B4
	movs r5, #0
	ldr r0, _0801109C @ =0x00000C28
	adds r6, r4, r0
	ldr r0, [r6]
	cmp r0, #0
	bne _08011088
	movs r5, #1
_08011088:
	cmp r5, #0
	beq _080110A4
	ldr r0, _080110A0 @ =gUnknown_0831AF84
	bl sub_080117CC
	str r0, [r6]
	b _080110AC
	.align 2, 0
_08011098: .4byte gUnknown_0200C1A0
_0801109C: .4byte 0x00000C28
_080110A0: .4byte gUnknown_0831AF84
_080110A4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08010E64
_080110AC:
	ldr r4, _080110D4 @ =gUnknown_0200C1A0
	ldr r0, [r4, #0x10]
	bl sub_08011CF4
	movs r0, #0
	bl sub_08010E94
	movs r0, #0
	adds r1, r7, #0
	bl sub_08010CBC
	cmp r5, #0
	bne _080110CE
	ldr r0, _080110D8 @ =0x00001871
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
_080110CE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080110D4: .4byte gUnknown_0200C1A0
_080110D8: .4byte 0x00001871

	thumb_func_start sub_080110DC
sub_080110DC: @ 0x080110DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08000588
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl sub_08010C14
	bl sub_080005B4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080110FC
sub_080110FC: @ 0x080110FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000588
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010AF0
	movs r0, #1
	adds r1, r4, #0
	bl sub_08010CBC
	bl sub_08010D08
	bl sub_080005B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011124
sub_08011124: @ 0x08011124
	adds r1, r0, #0
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r1, _08011134 @ =gUnknown_0200DA18
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08011134: .4byte gUnknown_0200DA18

	thumb_func_start sub_08011138
sub_08011138: @ 0x08011138
	push {r4, r5, r6, lr}
	bl sub_08000588
	movs r6, #0
_08011140:
	adds r0, r6, #0
	movs r1, #0
	bl sub_080107DC
	adds r5, r0, #0
	adds r0, r6, #0
	bl sub_08011124
	adds r4, r0, #0
	movs r0, #0
	bl sub_08010848
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08010764
	adds r6, #1
	cmp r6, #1
	bls _08011140
	bl sub_08010CF0
	bl sub_080005B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011178
sub_08011178: @ 0x08011178
	push {lr}
	bl sub_08011124
	adds r1, r0, #0
	ldr r0, _08011190 @ =gUnknown_0200C1A0
	movs r2, #0x88
	lsls r2, r2, #2
	bl sub_080002C4
	pop {r0}
	bx r0
	.align 2, 0
_08011190: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08011194
sub_08011194: @ 0x08011194
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _080111A4 @ =gUnknown_0200DA18
	adds r1, r1, r0
	ldr r0, [r1, #0x10]
	bx lr
	.align 2, 0
_080111A4: .4byte gUnknown_0200DA18

	thumb_func_start sub_080111A8
sub_080111A8: @ 0x080111A8
	push {r4, r5, r6, r7, lr}
	ldr r4, _08011228 @ =0xFFFFFDD8
	add sp, r4
	adds r6, r0, #0
	ldr r0, _0801122C @ =gUnknown_0200C1A0
	mov ip, r0
	lsls r0, r6, #4
	adds r0, r0, r6
	lsls r0, r0, #5
	ldr r1, _08011230 @ =0x00001878
	add r1, ip
	adds r0, r0, r1
	ldr r7, [r0, #0x34]
	adds r4, r0, #0
	adds r4, #0x38
	movs r2, #0
	add r5, sp, #0x38
	add r3, sp, #0x220
_080111CC:
	adds r0, r3, r2
	adds r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #4
	bls _080111CC
	movs r4, #0x88
	lsls r4, r4, #2
	mov r0, sp
	mov r1, ip
	adds r2, r4, #0
	bl sub_080002C4
	movs r2, #0
	mov r0, sp
	adds r3, r0, r4
_080111EE:
	adds r0, r5, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #4
	bls _080111EE
	str r7, [sp, #0x34]
	bl sub_08011CD8
	str r0, [sp, #0x10]
	bl sub_08000588
	adds r0, r6, #0
	bl sub_08010D20
	adds r0, r6, #0
	movs r1, #0
	mov r2, sp
	bl sub_08010A48
	bl sub_080005B4
	movs r3, #0x8a
	lsls r3, r3, #2
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011228: .4byte 0xFFFFFDD8
_0801122C: .4byte gUnknown_0200C1A0
_08011230: .4byte 0x00001878

	thumb_func_start sub_08011234
sub_08011234: @ 0x08011234
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	bl sub_08010CBC
	bl sub_08000588
	ldr r2, _08011258 @ =gUnknown_0200C1A0
	adds r0, r4, #0
	movs r1, #0
	bl sub_080109C0
	bl sub_080005B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011258: .4byte gUnknown_0200C1A0

	thumb_func_start sub_0801125C
sub_0801125C: @ 0x0801125C
	push {r4, lr}
	ldr r4, _0801127C @ =gUnknown_0200C1A0
	ldr r1, _08011280 @ =0x00001CB8
	adds r0, r4, r1
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r4, #0
	bl sub_080002C4
	ldr r0, _08011284 @ =0x00001ED8
	adds r4, r4, r0
	movs r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801127C: .4byte gUnknown_0200C1A0
_08011280: .4byte 0x00001CB8
_08011284: .4byte 0x00001ED8

	thumb_func_start sub_08011288
sub_08011288: @ 0x08011288
	push {r4, lr}
	ldr r4, _080112B0 @ =gUnknown_0200C1A0
	ldr r1, _080112B4 @ =0x00001ED8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801129C
	ldr r0, _080112B8 @ =gUnknown_0831B884
	bl sub_080050A8
_0801129C:
	ldr r0, _080112BC @ =0x00001CB8
	adds r1, r4, r0
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r4, #0
	bl sub_080002C4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080112B0: .4byte gUnknown_0200C1A0
_080112B4: .4byte 0x00001ED8
_080112B8: .4byte gUnknown_0831B884
_080112BC: .4byte 0x00001CB8

	thumb_func_start sub_080112C0
sub_080112C0: @ 0x080112C0
	push {lr}
	ldr r0, _080112D0 @ =gUnknown_0200C1A0
	ldr r0, [r0]
	cmp r0, #3
	bls _080112CC
	movs r0, #3
_080112CC:
	pop {r1}
	bx r1
	.align 2, 0
_080112D0: .4byte gUnknown_0200C1A0

	thumb_func_start sub_080112D4
sub_080112D4: @ 0x080112D4
	push {lr}
	ldr r0, _080112F0 @ =gUnknown_0200C1A0
	movs r1, #0xf7
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	cmp r0, #1
	bne _080112E8
	movs r1, #1
_080112E8:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080112F0: .4byte gUnknown_0200C1A0

	thumb_func_start sub_080112F4
sub_080112F4: @ 0x080112F4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08011322
	subs r4, r1, r0
	adds r4, r5, r4
	adds r0, r4, #0
	bl sub_08000D48
	subs r0, r4, r5
	movs r1, #8
	rsbs r1, r1, #0
	bics r0, r1
	subs r4, r4, r0
	subs r0, r4, r5
	adds r0, r6, r0
	adds r1, r4, #0
	movs r2, #8
	bl sub_08010770
_08011322:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08011328
sub_08011328: @ 0x08011328
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	adds r1, r3, #0
	ldr r6, [sp, #0x14]
	cmp r6, #0
	beq _0801134E
	subs r4, r1, r0
	adds r5, r5, r4
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_080002C4
	adds r4, r7, r4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08010770
_0801134E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08011354
sub_08011354: @ 0x08011354
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08011378
	subs r4, r1, r0
	adds r5, r5, r4
	adds r0, r5, #0
	bl sub_08000D48
	adds r4, r6, r4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #8
	bl sub_08010770
_08011378:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011380
sub_08011380: @ 0x08011380
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r6, r1, #0
	adds r5, r2, #0
	bl sub_08011124
	mov sb, r0
	mov r0, sl
	movs r1, #0
	bl sub_080107DC
	mov r8, r0
	ldr r1, _080113BC @ =gUnknown_0200C1A0
	subs r0, r6, r1
	movs r1, #8
	subs r4, r1, r0
	movs r0, #7
	ands r4, r0
	cmp r4, r5
	blo _080113C0
	adds r4, r5, #0
	movs r5, #0
	movs r7, #0
	b _080113C8
	.align 2, 0
_080113BC: .4byte gUnknown_0200C1A0
_080113C0:
	subs r5, r5, r4
	lsrs r0, r5, #3
	lsls r7, r0, #3
	subs r5, r5, r7
_080113C8:
	str r4, [sp]
	ldr r0, _08011410 @ =gUnknown_0200C1A0
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl sub_080112F4
	adds r6, r6, r4
	str r7, [sp]
	ldr r0, _08011410 @ =gUnknown_0200C1A0
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl sub_08011328
	adds r6, r6, r7
	str r5, [sp]
	ldr r0, _08011410 @ =gUnknown_0200C1A0
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl sub_08011354
	mov r0, sl
	movs r1, #0
	mov r2, sb
	bl sub_08010C64
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011410: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08011414
sub_08011414: @ 0x08011414
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08011434 @ =gUnknown_0200C1A0
	bl sub_08011CD8
	str r0, [r4, #0x10]
	adds r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl sub_08011380
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011434: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08011438
sub_08011438: @ 0x08011438
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r7, _080114EC @ =gUnknown_0200C1A0
	bl sub_08000588
	bl sub_08011CD8
	str r0, [r7, #0x10]
	cmp r6, #0
	bne _0801145E
	movs r0, #0x18
	bl sub_080100E4
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #6
	bl sub_08011380
_0801145E:
	cmp r6, #1
	bne _08011488
	adds r0, r5, #0
	bl sub_08011414
	movs r0, #5
	bl sub_080100E4
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #5
	bl sub_08011380
	movs r0, #0x1e
	bl sub_080100E4
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08011380
_08011488:
	subs r0, r6, #2
	cmp r0, #1
	bhi _080114CE
	cmp r6, #3
	bne _080114AA
	movs r0, #1
	movs r1, #1
	bl sub_08010180
	movs r0, #1
	bl sub_080100E4
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #1
	bl sub_08011380
_080114AA:
	ldr r1, _080114F0 @ =gUnknown_0831AD80
	movs r0, #6
	bl sub_0800FD50
	adds r4, r0, #0
	movs r0, #6
	adds r1, r4, #0
	bl sub_0800FCB0
	lsls r4, r4, #1
	movs r0, #0xf1
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r1, r4, r7
	adds r0, r5, #0
	movs r2, #2
	bl sub_08011380
_080114CE:
	cmp r6, #4
	bne _080114E2
	movs r0, #0x11
	bl sub_080100E4
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #7
	bl sub_08011380
_080114E2:
	bl sub_080005B4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080114EC: .4byte gUnknown_0200C1A0
_080114F0: .4byte gUnknown_0831AD80

	thumb_func_start sub_080114F4
sub_080114F4: @ 0x080114F4
	ldr r1, _080114FC @ =gUnknown_02001DC0
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080114FC: .4byte gUnknown_02001DC0

	thumb_func_start sub_08011500
sub_08011500: @ 0x08011500
	push {r4, r5, lr}
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r4, _080115FC @ =gUnknown_02001DC8
	movs r2, #0x96
	lsls r2, r2, #8
	adds r0, r4, #0
	bl sub_08000314
	ldr r1, _08011600 @ =0x0600F000
	movs r0, #0x96
	lsls r0, r0, #8
	adds r4, r4, r0
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_08000314
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r3, #0xa0
	lsls r3, r3, #3
	adds r4, r4, r3
	adds r0, r4, #0
	movs r2, #0xc0
	bl sub_08000314
	ldr r1, _08011604 @ =0x06010000
	adds r4, #0xc0
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_08000314
	ldr r1, _08011608 @ =0x05000200
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x20
	ldr r5, _0801160C @ =gUnknown_020127BC
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x30
	adds r1, r5, #0
	adds r1, #0x44
	movs r2, #0xc
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r5, #0
	adds r1, #0x50
	movs r2, #4
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x40
	adds r1, r5, #0
	adds r1, #0x54
	movs r2, #0x10
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x50
	adds r1, r5, #0
	adds r1, #0x64
	movs r2, #0x44
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x94
	adds r1, r5, #0
	adds r1, #0xa8
	movs r2, #8
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0x9c
	adds r1, r5, #0
	adds r1, #0xb0
	movs r2, #8
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0xa4
	adds r1, r5, #0
	adds r1, #0xb8
	movs r2, #8
	bl sub_080002C4
	adds r0, r4, #0
	adds r0, #0xac
	adds r1, r5, #0
	adds r1, #0xc0
	movs r2, #0x54
	bl sub_080002C4
	bl sub_0800F1E4
	ldr r3, _08011610 @ =0xFFFF5D38
	adds r2, r4, r3
	ldr r0, _08011614 @ =gUnknown_02001DBC
	ldrb r1, [r0]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r4, r3
	strb r1, [r0]
	ldr r0, _08011618 @ =gUnknown_02001D6C
	ldrb r0, [r0]
	adds r3, #1
	adds r1, r4, r3
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080115FC: .4byte gUnknown_02001DC8
_08011600: .4byte 0x0600F000
_08011604: .4byte 0x06010000
_08011608: .4byte 0x05000200
_0801160C: .4byte gUnknown_020127BC
_08011610: .4byte 0xFFFF5D38
_08011614: .4byte gUnknown_02001DBC
_08011618: .4byte gUnknown_02001D6C

	thumb_func_start sub_0801161C
sub_0801161C: @ 0x0801161C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r7, _0801176C @ =gUnknown_02001DC0
	ldrb r0, [r7]
	cmp r0, #0
	bne _08011634
	ldr r0, _08011770 @ =gUnknown_0831B8B4
	bl sub_080050A8
_08011634:
	bl sub_08005A0C
	bl sub_08001004
	bl sub_08005C64
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r7, #0
	adds r1, #8
	movs r2, #0x96
	lsls r2, r2, #8
	bl sub_08000314
	ldr r0, _08011774 @ =0x0600F000
	ldr r2, _08011778 @ =0x00009608
	adds r1, r7, r2
	movs r2, #0xa0
	lsls r2, r2, #3
	bl sub_08000314
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r2, _0801177C @ =0x00009B08
	adds r1, r7, r2
	movs r2, #0xc0
	bl sub_08000314
	ldr r0, _08011780 @ =0x06010000
	ldr r2, _08011784 @ =0x00009BC8
	adds r1, r7, r2
	movs r2, #0xe0
	lsls r2, r2, #3
	bl sub_08000314
	ldr r0, _08011788 @ =0x05000200
	ldr r2, _0801178C @ =0x0000A2C8
	adds r1, r7, r2
	movs r2, #0x20
	bl sub_080002C4
	ldr r4, _08011790 @ =gUnknown_020127BC
	ldr r0, _08011794 @ =0x0000A2E8
	adds r1, r7, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_080002C4
	ldr r2, _08011798 @ =0x0000A2F8
	adds r1, r7, r2
	ldr r0, _0801179C @ =gUnknown_02012800
	movs r2, #0xc
	bl sub_080002C4
	ldr r0, _080117A0 @ =0x0000A304
	adds r1, r7, r0
	ldr r0, _080117A4 @ =gUnknown_0201280C
	movs r2, #4
	bl sub_080002C4
	movs r2, #0x54
	adds r2, r2, r4
	mov sl, r2
	ldr r0, _080117A8 @ =0x0000A308
	adds r1, r7, r0
	mov r0, sl
	movs r2, #0x10
	bl sub_080002C4
	movs r2, #0x64
	adds r2, r2, r4
	mov sb, r2
	ldr r0, _080117AC @ =0x0000A318
	adds r1, r7, r0
	mov r0, sb
	movs r2, #0x44
	bl sub_080002C4
	movs r2, #0xa8
	adds r2, r2, r4
	mov r8, r2
	ldr r0, _080117B0 @ =0x0000A35C
	adds r1, r7, r0
	mov r0, r8
	movs r2, #8
	bl sub_080002C4
	adds r6, r4, #0
	adds r6, #0xb0
	ldr r2, _080117B4 @ =0x0000A364
	adds r1, r7, r2
	adds r0, r6, #0
	movs r2, #8
	bl sub_080002C4
	adds r5, r4, #0
	adds r5, #0xb8
	ldr r0, _080117B8 @ =0x0000A36C
	adds r1, r7, r0
	adds r0, r5, #0
	movs r2, #8
	bl sub_080002C4
	adds r4, #0xc0
	ldr r2, _080117BC @ =0x0000A374
	adds r1, r7, r2
	adds r0, r4, #0
	movs r2, #0x54
	bl sub_080002C4
	ldr r1, _080117C0 @ =gUnknown_02001DBC
	ldr r2, _080117C4 @ =0x0000A3CC
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080117C8 @ =gUnknown_02001D6C
	adds r2, #1
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801179C @ =gUnknown_02012800
	bl sub_0800D928
	ldr r0, _080117A4 @ =gUnknown_0201280C
	bl sub_0800DCBC
	mov r0, sl
	bl sub_0800E3EC
	mov r0, sb
	bl sub_0800E60C
	mov r0, r8
	bl sub_0800E7CC
	adds r0, r6, #0
	bl sub_0800E9B8
	adds r0, r5, #0
	bl sub_0800EC0C
	adds r0, r4, #0
	bl sub_0800EEA0
	bl sub_0800F220
	movs r0, #1
	bl sub_08005E18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801176C: .4byte gUnknown_02001DC0
_08011770: .4byte gUnknown_0831B8B4
_08011774: .4byte 0x0600F000
_08011778: .4byte 0x00009608
_0801177C: .4byte 0x00009B08
_08011780: .4byte 0x06010000
_08011784: .4byte 0x00009BC8
_08011788: .4byte 0x05000200
_0801178C: .4byte 0x0000A2C8
_08011790: .4byte gUnknown_020127BC
_08011794: .4byte 0x0000A2E8
_08011798: .4byte 0x0000A2F8
_0801179C: .4byte gUnknown_02012800
_080117A0: .4byte 0x0000A304
_080117A4: .4byte gUnknown_0201280C
_080117A8: .4byte 0x0000A308
_080117AC: .4byte 0x0000A318
_080117B0: .4byte 0x0000A35C
_080117B4: .4byte 0x0000A364
_080117B8: .4byte 0x0000A36C
_080117BC: .4byte 0x0000A374
_080117C0: .4byte gUnknown_02001DBC
_080117C4: .4byte 0x0000A3CC
_080117C8: .4byte gUnknown_02001D6C

	thumb_func_start sub_080117CC
sub_080117CC: @ 0x080117CC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x82
	lsls r1, r1, #1
	ldr r0, _080117F4 @ =gUnknown_083E42A0
	adds r2, r4, #0
	bl sub_08000E54
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08011800
	ldr r0, _080117F8 @ =gUnknown_084B5FA0
	ldr r2, _080117FC @ =gUnknown_083E46B0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r0, r1, r0
	b _0801180C
	.align 2, 0
_080117F4: .4byte gUnknown_083E42A0
_080117F8: .4byte gUnknown_084B5FA0
_080117FC: .4byte gUnknown_083E46B0
_08011800:
	ldr r0, _08011814 @ =gUnknown_0831B8E0
	ldr r2, _08011818 @ =gUnknown_0831B8E8
	adds r1, r4, #0
	bl sub_080050E4
	movs r0, #0
_0801180C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08011814: .4byte gUnknown_0831B8E0
_08011818: .4byte gUnknown_0831B8E8

	thumb_func_start sub_0801181C
sub_0801181C: @ 0x0801181C
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r4, #3
	bls _0801183C
	ldr r1, _08011868 @ =gUnknown_0831B900
	mov r0, sp
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_0801183C:
	movs r1, #3
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #1
	adds r2, r1, #0
	lsls r2, r0
	ands r4, r1
	lsls r4, r0
	lsrs r0, r5, #2
	movs r3, #0x9a
	lsls r3, r3, #4
	adds r1, r6, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	bics r0, r2
	orrs r0, r4
	strb r0, [r1]
	add sp, #0x80
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011868: .4byte gUnknown_0831B900

	thumb_func_start sub_0801186C
sub_0801186C: @ 0x0801186C
	push {lr}
	bl sub_08005C64
	movs r0, #0xe0
	lsls r0, r0, #0x13
	movs r1, #3
	bl sub_08000FEC
	pop {r0}
	bx r0

	thumb_func_start sub_08011880
sub_08011880: @ 0x08011880
	lsrs r2, r0, #0xc
	ldr r1, _08011898 @ =0x00000FFF
	ands r1, r0
	ldr r0, _0801189C @ =gUnknown_083E4268
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r0, [r2]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_08011898: .4byte 0x00000FFF
_0801189C: .4byte gUnknown_083E4268

	thumb_func_start sub_080118A0
sub_080118A0: @ 0x080118A0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080118BC @ =0x0000015F
	cmp r1, r0
	bhi _080118C4
	ldr r0, _080118C0 @ =gUnknown_0200C1A0
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	b _080118CC
	.align 2, 0
_080118BC: .4byte 0x0000015F
_080118C0: .4byte gUnknown_0200C1A0
_080118C4:
	ldr r0, _080118D0 @ =gUnknown_0831B924
	bl sub_080050A8
	movs r0, #0
_080118CC:
	pop {r1}
	bx r1
	.align 2, 0
_080118D0: .4byte gUnknown_0831B924

	thumb_func_start sub_080118D4
sub_080118D4: @ 0x080118D4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080118FC @ =0x0000015F
	cmp r4, r0
	bls _080118E6
	ldr r0, _08011900 @ =gUnknown_0831B940
	bl sub_080050A8
_080118E6:
	ldr r0, _08011904 @ =gUnknown_0200C1A0
	lsls r1, r4, #2
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r1, r1, r0
	str r5, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080118FC: .4byte 0x0000015F
_08011900: .4byte gUnknown_0831B940
_08011904: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08011908
sub_08011908: @ 0x08011908
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08011930 @ =0x000002FF
	cmp r4, r0
	bhi _08011938
	ldr r2, _08011934 @ =gUnknown_0200C1A0
	movs r3, #3
	adds r1, r4, #0
	ands r1, r3
	lsls r1, r1, #1
	lsrs r0, r4, #2
	movs r4, #0x9a
	lsls r4, r4, #4
	adds r2, r2, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r1
	ands r0, r3
	b _08011940
	.align 2, 0
_08011930: .4byte 0x000002FF
_08011934: .4byte gUnknown_0200C1A0
_08011938:
	ldr r0, _08011948 @ =gUnknown_0831B95C
	bl sub_080050A8
	movs r0, #0
_08011940:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08011948: .4byte gUnknown_0831B95C

	thumb_func_start sub_0801194C
sub_0801194C: @ 0x0801194C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08011970 @ =0x000002FF
	cmp r4, r0
	bls _0801195E
	ldr r0, _08011974 @ =gUnknown_0831B97C
	bl sub_080050A8
_0801195E:
	ldr r0, _08011978 @ =gUnknown_0200C1A0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801181C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011970: .4byte 0x000002FF
_08011974: .4byte gUnknown_0831B97C
_08011978: .4byte gUnknown_0200C1A0

	thumb_func_start sub_0801197C
sub_0801197C: @ 0x0801197C
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x1f
	bhi _08011998
	ldr r0, _08011994 @ =gUnknown_0200C1A0
	lsls r1, r1, #2
	movs r2, #0xa6
	lsls r2, r2, #4
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	b _080119A0
	.align 2, 0
_08011994: .4byte gUnknown_0200C1A0
_08011998:
	ldr r0, _080119A4 @ =gUnknown_0831B99C
	bl sub_080050A8
	movs r0, #0
_080119A0:
	pop {r1}
	bx r1
	.align 2, 0
_080119A4: .4byte gUnknown_0831B99C

	thumb_func_start sub_080119A8
sub_080119A8: @ 0x080119A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, #0x1f
	bls _080119B8
	ldr r0, _080119CC @ =gUnknown_0831B9BC
	bl sub_080050A8
_080119B8:
	ldr r0, _080119D0 @ =gUnknown_0200C1A0
	lsls r1, r4, #2
	movs r2, #0xa6
	lsls r2, r2, #4
	adds r0, r0, r2
	adds r1, r1, r0
	str r5, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080119CC: .4byte gUnknown_0831B9BC
_080119D0: .4byte gUnknown_0200C1A0

	thumb_func_start sub_080119D4
sub_080119D4: @ 0x080119D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080119FC @ =0x0000015F
	cmp r4, r0
	bls _080119E4
	ldr r0, _08011A00 @ =gUnknown_0831B9DC
	bl sub_080050A8
_080119E4:
	ldr r0, _08011A04 @ =gUnknown_0200C1A0
	lsls r1, r4, #2
	movs r2, #0x84
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_0800A4EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080119FC: .4byte 0x0000015F
_08011A00: .4byte gUnknown_0831B9DC
_08011A04: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08011A08
sub_08011A08: @ 0x08011A08
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08011A30 @ =0x0000015F
	cmp r4, r0
	bls _08011A18
	ldr r0, _08011A34 @ =gUnknown_0831B9F8
	bl sub_080050A8
_08011A18:
	bl sub_0800A520
	ldr r1, _08011A38 @ =gUnknown_0200C1A0
	lsls r2, r4, #2
	movs r3, #0x84
	lsls r3, r3, #3
	adds r1, r1, r3
	adds r2, r2, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011A30: .4byte 0x0000015F
_08011A34: .4byte gUnknown_0831B9F8
_08011A38: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08011A3C
sub_08011A3C: @ 0x08011A3C
	push {lr}
	ldr r0, _08011A50 @ =gUnknown_0200C5C0
	movs r1, #0xd8
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_08011A50: .4byte gUnknown_0200C5C0

	thumb_func_start sub_08011A54
sub_08011A54: @ 0x08011A54
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803DF7C
	asrs r0, r0, #8
	adds r1, r4, #0
	bl sub_0803D350
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08011A6C
sub_08011A6C: @ 0x08011A6C
	push {lr}
	bl sub_0803DF70
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011A78
sub_08011A78: @ 0x08011A78
	push {r4, lr}
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	beq _08011ACE
	ldr r4, _08011AA0 @ =gUnknown_083D6088
_08011A8A:
	cmp r0, #0x23
	beq _08011ABC
	cmp r0, #0x24
	bne _08011AA4
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0x4e
	beq _08011AA8
	cmp r0, #0x6e
	bne _08011AC0
	b _08011AA8
	.align 2, 0
_08011AA0: .4byte gUnknown_083D6088
_08011AA4:
	cmp r0, #0xa
	bne _08011AB2
_08011AA8:
	cmp r2, r3
	bls _08011AAE
	adds r3, r2, #0
_08011AAE:
	movs r2, #0
	b _08011AC0
_08011AB2:
	lsrs r0, r0, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011ABE
_08011ABC:
	adds r1, #1
_08011ABE:
	adds r2, #1
_08011AC0:
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	bne _08011A8A
	cmp r2, r3
	bls _08011ACE
	adds r3, r2, #0
_08011ACE:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08011AD8
sub_08011AD8: @ 0x08011AD8
	push {lr}
	movs r2, #0
	adds r1, r0, #0
	b _08011AF6
_08011AE0:
	cmp r0, #0xa
	beq _08011AF4
	cmp r0, #0x24
	bne _08011AF6
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0x4e
	beq _08011AF4
	cmp r0, #0x6e
	bne _08011AF6
_08011AF4:
	adds r2, #1
_08011AF6:
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	bne _08011AE0
	adds r0, r2, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08011B04
sub_08011B04: @ 0x08011B04
	push {lr}
	movs r3, #0
	cmp r1, #0
	beq _08011B26
_08011B0C:
	ldrb r2, [r0]
	adds r0, #1
	cmp r2, #0
	bne _08011B1C
	ldr r0, _08011B18 @ =gUnknown_0831BA14
	b _08011B3A
	.align 2, 0
_08011B18: .4byte gUnknown_0831BA14
_08011B1C:
	cmp r2, #0x20
	bne _08011B0C
	adds r3, #1
	cmp r1, r3
	bne _08011B0C
_08011B26:
	ldr r2, _08011B30 @ =gUnknown_0200E954
	adds r3, r2, #0
	adds r3, #0x3f
	b _08011B4C
	.align 2, 0
_08011B30: .4byte gUnknown_0200E954
_08011B34:
	cmp r2, r3
	bne _08011B48
	ldr r0, _08011B44 @ =gUnknown_0831BA2C
_08011B3A:
	bl sub_080050A8
	movs r0, #0
	b _08011B5E
	.align 2, 0
_08011B44: .4byte gUnknown_0831BA2C
_08011B48:
	strb r1, [r2]
	adds r2, #1
_08011B4C:
	ldrb r1, [r0]
	adds r0, #1
	cmp r1, #0
	beq _08011B58
	cmp r1, #0x20
	bne _08011B34
_08011B58:
	movs r0, #0
	strb r0, [r2]
	ldr r0, _08011B64 @ =gUnknown_0200E954
_08011B5E:
	pop {r1}
	bx r1
	.align 2, 0
_08011B64: .4byte gUnknown_0200E954

	thumb_func_start sub_08011B68
sub_08011B68: @ 0x08011B68
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	cmp r4, r5
	bhs _08011B7C
_08011B72:
	bl sub_08011E9C
	adds r4, #1
	cmp r4, r5
	blo _08011B72
_08011B7C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011B84
sub_08011B84: @ 0x08011B84
	ldr r0, _08011B90 @ =gUnknown_0200C1A0
	ldr r1, _08011B94 @ =0x00000C24
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08011B90: .4byte gUnknown_0200C1A0
_08011B94: .4byte 0x00000C24

	thumb_func_start sub_08011B98
sub_08011B98: @ 0x08011B98
	ldr r0, _08011B9C @ =gUnknown_083E4288
	bx lr
	.align 2, 0
_08011B9C: .4byte gUnknown_083E4288

	thumb_func_start sub_08011BA0
sub_08011BA0: @ 0x08011BA0
	push {lr}
	ldr r1, _08011BB4 @ =gUnknown_02000008
	ldrh r1, [r1]
	ands r1, r0
	cmp r1, #0
	beq _08011BAE
	movs r1, #1
_08011BAE:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08011BB4: .4byte gUnknown_02000008

	thumb_func_start sub_08011BB8
sub_08011BB8: @ 0x08011BB8
	push {lr}
	ldr r1, _08011BCC @ =gUnknown_02000020
	ldrh r1, [r1]
	ands r1, r0
	cmp r1, #0
	beq _08011BC6
	movs r1, #1
_08011BC6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08011BCC: .4byte gUnknown_02000020

	thumb_func_start sub_08011BD0
sub_08011BD0: @ 0x08011BD0
	push {lr}
	ldr r1, _08011BE4 @ =gUnknown_02000004
	ldrh r1, [r1]
	ands r1, r0
	cmp r1, #0
	beq _08011BDE
	movs r1, #1
_08011BDE:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08011BE4: .4byte gUnknown_02000004

	thumb_func_start sub_08011BE8
sub_08011BE8: @ 0x08011BE8
	push {r4, lr}
	movs r4, #0
	ldr r0, _08011C10 @ =gUnknown_0200C1A0
	ldr r1, _08011C14 @ =0x00002344
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08011BFA
	movs r4, #1
_08011BFA:
	bl sub_08005A50
	bl sub_08005A34
	adds r0, r4, #0
	bl sub_08011D10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011C10: .4byte gUnknown_0200C1A0
_08011C14: .4byte 0x00002344

	thumb_func_start sub_08011C18
sub_08011C18: @ 0x08011C18
	push {lr}
	bl sub_08005A50
	bl sub_08005A34
	movs r0, #3
	bl sub_08011D10
	pop {r0}
	bx r0

	thumb_func_start sub_08011C2C
sub_08011C2C: @ 0x08011C2C
	push {r4, lr}
	movs r4, #0
	ldr r0, _08011C54 @ =gUnknown_0200C1A0
	ldr r1, _08011C58 @ =0x00002344
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08011C3E
	movs r4, #1
_08011C3E:
	bl sub_08005AFC
	bl sub_08005A34
	adds r0, r4, #0
	bl sub_08011D10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011C54: .4byte gUnknown_0200C1A0
_08011C58: .4byte 0x00002344

	thumb_func_start sub_08011C5C
sub_08011C5C: @ 0x08011C5C
	push {lr}
	bl sub_08005AFC
	bl sub_08005A34
	movs r0, #3
	bl sub_08011D10
	pop {r0}
	bx r0

	thumb_func_start sub_08011C70
sub_08011C70: @ 0x08011C70
	push {lr}
	ldr r0, _08011C7C @ =sub_08011E9C
	bl sub_0800A160
	pop {r0}
	bx r0
	.align 2, 0
_08011C7C: .4byte sub_08011E9C

	thumb_func_start sub_08011C80
sub_08011C80: @ 0x08011C80
	push {lr}
	ldr r0, _08011C8C @ =sub_08011E9C
	bl sub_0800A1A4
	pop {r0}
	bx r0
	.align 2, 0
_08011C8C: .4byte sub_08011E9C

	thumb_func_start sub_08011C90
sub_08011C90: @ 0x08011C90
	push {lr}
	ldr r1, _08011CA0 @ =0x00000DFF
	adds r0, r0, r1
	adds r1, #1
	bl sub_0803D34C
	pop {r1}
	bx r1
	.align 2, 0
_08011CA0: .4byte 0x00000DFF

	thumb_func_start sub_08011CA4
sub_08011CA4: @ 0x08011CA4
	push {r4, r5, lr}
	ldr r5, _08011CD0 @ =gUnknown_0200E994
	bl sub_08011C90
	adds r4, r0, #0
	movs r1, #0x3c
	bl sub_0803D34C
	adds r2, r0, #0
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r4, r4, r0
	ldr r1, _08011CD4 @ =gUnknown_0831BA44
	adds r0, r5, #0
	adds r3, r4, #0
	bl sub_0803DFE0
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08011CD0: .4byte gUnknown_0200E994
_08011CD4: .4byte gUnknown_0831BA44

	thumb_func_start sub_08011CD8
sub_08011CD8: @ 0x08011CD8
	ldr r0, _08011CEC @ =gUnknown_0300136C
	ldr r1, _08011CF0 @ =gUnknown_0200C1A0
	movs r2, #0x8d
	lsls r2, r2, #6
	adds r1, r1, r2
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	bx lr
	.align 2, 0
_08011CEC: .4byte gUnknown_0300136C
_08011CF0: .4byte gUnknown_0200C1A0

	thumb_func_start sub_08011CF4
sub_08011CF4: @ 0x08011CF4
	ldr r2, _08011D08 @ =gUnknown_0200C1A0
	movs r1, #0x8d
	lsls r1, r1, #6
	adds r2, r2, r1
	ldr r1, _08011D0C @ =gUnknown_0300136C
	ldr r1, [r1]
	subs r1, r1, r0
	str r1, [r2]
	bx lr
	.align 2, 0
_08011D08: .4byte gUnknown_0200C1A0
_08011D0C: .4byte gUnknown_0300136C

	thumb_func_start sub_08011D10
sub_08011D10: @ 0x08011D10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800C058
	cmp r4, #2
	bhi _08011D28
	adds r0, r4, #0
	bl sub_0800BF04
	adds r0, r4, #0
	bl sub_0800C424
_08011D28:
	movs r0, #0
	bl sub_0800D2E0
	bl sub_0800D880
	bl sub_0800DA70
	bl sub_0800E388
	bl sub_0800E53C
	bl sub_0800E6D4
	bl sub_0800E8E0
	bl sub_0800EA50
	bl sub_0800EE8C
	bl sub_0800EFF4
	bl sub_0800F1BC
	bl sub_0800F3CC
	bl sub_0800469C
	cmp r4, #0
	beq _08011D66
	cmp r4, #2
	bne _08011D6A
_08011D66:
	bl sub_080046B8
_08011D6A:
	subs r0, r4, #1
	cmp r0, #1
	bhi _08011D74
	bl sub_080046D4
_08011D74:
	movs r0, #1
	bl sub_08005E18
	movs r0, #0
	bl sub_080059C4
	bl sub_0801186C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011D8C
sub_08011D8C: @ 0x08011D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	cmp r7, #0
	beq _08011DB0
	ldr r0, _08011DA8 @ =gUnknown_0200C1A0
	ldr r1, _08011DAC @ =0x000069B8
	movs r2, #0
	bl sub_08000498
	b _08011DE6
	.align 2, 0
_08011DA8: .4byte gUnknown_0200C1A0
_08011DAC: .4byte 0x000069B8
_08011DB0:
	ldr r6, _08011E28 @ =gUnknown_0200DA18
	ldr r0, _08011E2C @ =gUnknown_02017AF0
	mov r8, r0
	movs r1, #0x88
	lsls r1, r1, #3
	mov sb, r1
	adds r1, r6, #0
	mov r2, sb
	bl sub_080002C4
	ldr r1, _08011E30 @ =0xFFFFE788
	adds r0, r6, r1
	ldr r1, _08011E34 @ =0xFFFFF268
	adds r5, r6, r1
	ldr r1, _08011E38 @ =0x00005140
	adds r4, r6, r1
	movs r1, #0x84
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08000498
	subs r4, r4, r5
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000498
_08011DE6:
	cmp r7, #0
	bne _08011DF4
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	bl sub_080002C4
_08011DF4:
	movs r0, #2
	bl sub_08011D10
	bl sub_0800CC94
	bl sub_08010ED8
	bl sub_0800FA5C
	bl sub_0800AC68
	bl sub_0800B74C
	ldr r0, _08011E3C @ =gUnknown_020132E0
	ldr r1, _08011E40 @ =0x00004804
	movs r2, #0
	bl sub_08000498
	bl sub_080114F4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011E28: .4byte gUnknown_0200DA18
_08011E2C: .4byte gUnknown_02017AF0
_08011E30: .4byte 0xFFFFE788
_08011E34: .4byte 0xFFFFF268
_08011E38: .4byte 0x00005140
_08011E3C: .4byte gUnknown_020132E0
_08011E40: .4byte 0x00004804

	thumb_func_start sub_08011E44
sub_08011E44: @ 0x08011E44
	push {lr}
	bl sub_0800A0F0
	movs r0, #0
	movs r1, #0
	bl sub_08005DB0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011E64
sub_08011E64: @ 0x08011E64
	push {r4, lr}
	ldr r4, _08011E90 @ =gUnknown_0200C1A0
	bl sub_08011E44
	bl sub_08005A50
	bl sub_08000B84
	movs r0, #1
	bl sub_08011D8C
	movs r0, #0
	bl sub_08011CF4
	ldr r0, _08011E94 @ =0x00000C28
	adds r4, r4, r0
	ldr r0, _08011E98 @ =gUnknown_084B5FA0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011E90: .4byte gUnknown_0200C1A0
_08011E94: .4byte 0x00000C28
_08011E98: .4byte gUnknown_084B5FA0

	thumb_func_start sub_08011E9C
sub_08011E9C: @ 0x08011E9C
	push {lr}
	bl sub_0803D380
	bl sub_08000BC0
	movs r0, #0xe0
	lsls r0, r0, #0x13
	bl sub_08005C74
	bl sub_0800E3A0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011EB8
sub_08011EB8: @ 0x08011EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18c
	ldr r7, _08011EF8 @ =gUnknown_0200C1A0
_08011EC6:
	ldr r0, _08011EFC @ =0x00000C28
	adds r2, r7, r0
	ldr r1, [r2]
	ldrb r0, [r1]
	adds r3, r0, #0
	adds r1, #1
	str r1, [r2]
	cmp r3, #1
	bne _08011EE4
	ldrb r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	orrs r3, r0
	adds r0, r1, #1
	str r0, [r2]
_08011EE4:
	ldr r0, _08011F00 @ =0x00000117
	cmp r3, r0
	bls _08011EEE
	bl _080137B6
_08011EEE:
	lsls r0, r3, #2
	ldr r1, _08011F04 @ =_08011F08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011EF8: .4byte gUnknown_0200C1A0
_08011EFC: .4byte 0x00000C28
_08011F00: .4byte 0x00000117
_08011F04: .4byte _08011F08
_08011F08: @ jump table
	.4byte _08012368 @ case 0
	.4byte _080137B6 @ case 1
	.4byte _08012374 @ case 2
	.4byte _0801238C @ case 3
	.4byte _080123A8 @ case 4
	.4byte _080123CC @ case 5
	.4byte _080123EC @ case 6
	.4byte _08012410 @ case 7
	.4byte _08012434 @ case 8
	.4byte _08012460 @ case 9
	.4byte _0801248C @ case 10
	.4byte _080124BC @ case 11
	.4byte _080124D8 @ case 12
	.4byte _08012518 @ case 13
	.4byte _08012530 @ case 14
	.4byte _08012536 @ case 15
	.4byte _0801254A @ case 16
	.4byte _08012552 @ case 17
	.4byte _08012560 @ case 18
	.4byte _0801257A @ case 19
	.4byte _0801258C @ case 20
	.4byte _0801259A @ case 21
	.4byte _080125A8 @ case 22
	.4byte _080125C2 @ case 23
	.4byte _080125D8 @ case 24
	.4byte _080125F2 @ case 25
	.4byte _0801260C @ case 26
	.4byte _08012626 @ case 27
	.4byte _0801263C @ case 28
	.4byte _0801264A @ case 29
	.4byte _08012658 @ case 30
	.4byte _08012666 @ case 31
	.4byte _08012680 @ case 32
	.4byte _0801269A @ case 33
	.4byte _080126AC @ case 34
	.4byte _080126C8 @ case 35
	.4byte _080126D4 @ case 36
	.4byte _08012710 @ case 37
	.4byte _08012718 @ case 38
	.4byte _08012738 @ case 39
	.4byte _08012788 @ case 40
	.4byte _08012790 @ case 41
	.4byte _080127C8 @ case 42
	.4byte _080127E8 @ case 43
	.4byte _0801280C @ case 44
	.4byte _08012844 @ case 45
	.4byte _0801286C @ case 46
	.4byte _08012890 @ case 47
	.4byte _080128B4 @ case 48
	.4byte _08011EC6 @ case 49
	.4byte _080128BC @ case 50
	.4byte _080128BC @ case 51
	.4byte _080128C4 @ case 52
	.4byte _080128D0 @ case 53
	.4byte _080128DC @ case 54
	.4byte _080128E6 @ case 55
	.4byte _080128FA @ case 56
	.4byte _08012904 @ case 57
	.4byte _08012918 @ case 58
	.4byte _08012928 @ case 59
	.4byte _0801293C @ case 60
	.4byte _08012948 @ case 61
	.4byte _08012954 @ case 62
	.4byte _0801295C @ case 63
	.4byte _08012968 @ case 64
	.4byte _08012974 @ case 65
	.4byte _08012984 @ case 66
	.4byte _08012998 @ case 67
	.4byte _080129AC @ case 68
	.4byte _080129C0 @ case 69
	.4byte _080129D4 @ case 70
	.4byte _080129E8 @ case 71
	.4byte _080129FA @ case 72
	.4byte _08012A12 @ case 73
	.4byte _08012A24 @ case 74
	.4byte _08012A36 @ case 75
	.4byte _08012A4C @ case 76
	.4byte _08012A6C @ case 77
	.4byte _08012A7C @ case 78
	.4byte _08012A8A @ case 79
	.4byte _08012A96 @ case 80
	.4byte _08012AA2 @ case 81
	.4byte _08012AAC @ case 82
	.4byte _08012AB8 @ case 83
	.4byte _08012AC2 @ case 84
	.4byte _08012ACC @ case 85
	.4byte _08012AE4 @ case 86
	.4byte _08012AF0 @ case 87
	.4byte _08012AF8 @ case 88
	.4byte _08012AFE @ case 89
	.4byte _08012B0A @ case 90
	.4byte _08012B14 @ case 91
	.4byte _08012B1E @ case 92
	.4byte _08012B28 @ case 93
	.4byte _08012B34 @ case 94
	.4byte _08012B3C @ case 95
	.4byte _08012B44 @ case 96
	.4byte _08012B50 @ case 97
	.4byte _08012B5C @ case 98
	.4byte _08012B64 @ case 99
	.4byte _08012B70 @ case 100
	.4byte _08012B78 @ case 101
	.4byte _08012B84 @ case 102
	.4byte _08012B8C @ case 103
	.4byte _08012B98 @ case 104
	.4byte _08012BA0 @ case 105
	.4byte _08012BAC @ case 106
	.4byte _08012BB4 @ case 107
	.4byte _08012BC0 @ case 108
	.4byte _08012BCC @ case 109
	.4byte _08012BE0 @ case 110
	.4byte _08012BEC @ case 111
	.4byte _08012BF8 @ case 112
	.4byte _08012C04 @ case 113
	.4byte _08012C0C @ case 114
	.4byte _08012C14 @ case 115
	.4byte _08012C38 @ case 116
	.4byte _08012C40 @ case 117
	.4byte _08012C48 @ case 118
	.4byte _08012C6C @ case 119
	.4byte _08012C74 @ case 120
	.4byte _08012C7C @ case 121
	.4byte _08012C84 @ case 122
	.4byte _08012C8C @ case 123
	.4byte _08012CB0 @ case 124
	.4byte _08012CDC @ case 125
	.4byte _08012CE8 @ case 126
	.4byte _08012CF4 @ case 127
	.4byte _08012CFC @ case 128
	.4byte _08012D18 @ case 129
	.4byte _08012D24 @ case 130
	.4byte _08012D48 @ case 131
	.4byte _08012D60 @ case 132
	.4byte _08012D84 @ case 133
	.4byte _08012D90 @ case 134
	.4byte _08012DBA @ case 135
	.4byte _08012DC6 @ case 136
	.4byte _08012DD2 @ case 137
	.4byte _08012E14 @ case 138
	.4byte _08012E1C @ case 139
	.4byte _08012E30 @ case 140
	.4byte _08012E3C @ case 141
	.4byte _08012E48 @ case 142
	.4byte _08012E74 @ case 143
	.4byte _08012E7C @ case 144
	.4byte _08012E90 @ case 145
	.4byte _08012E9C @ case 146
	.4byte _08012EA8 @ case 147
	.4byte _08012EB0 @ case 148
	.4byte _08012EB8 @ case 149
	.4byte _08012EC0 @ case 150
	.4byte _08012EC8 @ case 151
	.4byte _08012ECE @ case 152
	.4byte _08012ED4 @ case 153
	.4byte _08012EF0 @ case 154
	.4byte _08012F16 @ case 155
	.4byte _08012F48 @ case 156
	.4byte _08012F5C @ case 157
	.4byte _08012F70 @ case 158
	.4byte _08012F7C @ case 159
	.4byte _08012F90 @ case 160
	.4byte _08012FAC @ case 161
	.4byte _08012FB4 @ case 162
	.4byte _08012FC8 @ case 163
	.4byte _08012FDC @ case 164
	.4byte _08012FE4 @ case 165
	.4byte _08012FF0 @ case 166
	.4byte _08012FF8 @ case 167
	.4byte _0801301C @ case 168
	.4byte _08013040 @ case 169
	.4byte _08013064 @ case 170
	.4byte _0801306C @ case 171
	.4byte _08013098 @ case 172
	.4byte _080130A4 @ case 173
	.4byte _080130B0 @ case 174
	.4byte _080130C4 @ case 175
	.4byte _080130E0 @ case 176
	.4byte _080130FC @ case 177
	.4byte _08013118 @ case 178
	.4byte _08013134 @ case 179
	.4byte _0801313C @ case 180
	.4byte _0801314C @ case 181
	.4byte _08013160 @ case 182
	.4byte _08013170 @ case 183
	.4byte _08013180 @ case 184
	.4byte _08013190 @ case 185
	.4byte _08013198 @ case 186
	.4byte _080131AC @ case 187
	.4byte _080131C0 @ case 188
	.4byte _080131CC @ case 189
	.4byte _080131E4 @ case 190
	.4byte _080131F8 @ case 191
	.4byte _08013204 @ case 192
	.4byte _08013218 @ case 193
	.4byte _0801322C @ case 194
	.4byte _08013248 @ case 195
	.4byte _08013264 @ case 196
	.4byte _08013278 @ case 197
	.4byte _08013294 @ case 198
	.4byte _080132A8 @ case 199
	.4byte _080132C4 @ case 200
	.4byte _080132CC @ case 201
	.4byte _080132E0 @ case 202
	.4byte _080132FC @ case 203
	.4byte _08013304 @ case 204
	.4byte _08013318 @ case 205
	.4byte _08013334 @ case 206
	.4byte _08013348 @ case 207
	.4byte _08013364 @ case 208
	.4byte _0801336C @ case 209
	.4byte _08013378 @ case 210
	.4byte _08013384 @ case 211
	.4byte _08013390 @ case 212
	.4byte _0801339C @ case 213
	.4byte _080133AC @ case 214
	.4byte _080133B4 @ case 215
	.4byte _080133C0 @ case 216
	.4byte _080133C8 @ case 217
	.4byte _080133D4 @ case 218
	.4byte _080133E0 @ case 219
	.4byte _080133EC @ case 220
	.4byte _080133F8 @ case 221
	.4byte _08013404 @ case 222
	.4byte _08013410 @ case 223
	.4byte _08013424 @ case 224
	.4byte _0801342C @ case 225
	.4byte _08013438 @ case 226
	.4byte _08013444 @ case 227
	.4byte _0801344C @ case 228
	.4byte _08013458 @ case 229
	.4byte _08013464 @ case 230
	.4byte _08013478 @ case 231
	.4byte _08013484 @ case 232
	.4byte _08013498 @ case 233
	.4byte _080134A4 @ case 234
	.4byte _080134AC @ case 235
	.4byte _080134B8 @ case 236
	.4byte _080134C4 @ case 237
	.4byte _080134D0 @ case 238
	.4byte _080134DC @ case 239
	.4byte _080134E4 @ case 240
	.4byte _080134EC @ case 241
	.4byte _080134F4 @ case 242
	.4byte _080134FC @ case 243
	.4byte _08013510 @ case 244
	.4byte _0801351C @ case 245
	.4byte _08013524 @ case 246
	.4byte _08013530 @ case 247
	.4byte _0801353C @ case 248
	.4byte _08013550 @ case 249
	.4byte _08013564 @ case 250
	.4byte _0801356E @ case 251
	.4byte _08013586 @ case 252
	.4byte _0801358E @ case 253
	.4byte _080135AA @ case 254
	.4byte _080135B2 @ case 255
	.4byte _080135BA @ case 256
	.4byte _080135CE @ case 257
	.4byte _080135E2 @ case 258
	.4byte _080135F6 @ case 259
	.4byte _0801360A @ case 260
	.4byte _08013640 @ case 261
	.4byte _0801364C @ case 262
	.4byte _08013658 @ case 263
	.4byte _08013684 @ case 264
	.4byte _0801368C @ case 265
	.4byte _08013698 @ case 266
	.4byte _080136A4 @ case 267
	.4byte _080136B0 @ case 268
	.4byte _080136C4 @ case 269
	.4byte _080136D8 @ case 270
	.4byte _080136EC @ case 271
	.4byte _08013708 @ case 272
	.4byte _08013724 @ case 273
	.4byte _0801372C @ case 274
	.4byte _0801373C @ case 275
	.4byte _08013760 @ case 276
	.4byte _08013768 @ case 277
	.4byte _0801379E @ case 278
	.4byte _080137AA @ case 279
_08012368:
	ldr r0, _08012370 @ =gUnknown_0831BA4C
	bl sub_080050A8
	b _08011EC6
	.align 2, 0
_08012370: .4byte gUnknown_0831BA4C
_08012374:
	ldr r2, _08012388 @ =0x00000C28
	adds r1, r7, r2
	ldr r2, [r1]
	ldrb r0, [r2]
	adds r2, #1
	str r2, [r1]
_08012380:
	bl sub_0800A410
	b _08011EC6
	.align 2, 0
_08012388: .4byte 0x00000C28
_0801238C:
	ldr r4, _080123A4 @ =0x00000C28
	adds r3, r7, r4
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	ldrb r1, [r2]
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, #2
	b _080123C4
	.align 2, 0
_080123A4: .4byte 0x00000C28
_080123A8:
	ldr r0, _080123C8 @ =0x00000C28
	adds r3, r7, r0
	ldr r2, [r3]
	ldrb r0, [r2, #3]
	lsls r0, r0, #0x18
	ldrb r1, [r2, #2]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	adds r2, #4
_080123C4:
	str r2, [r3]
	b _08012380
	.align 2, 0
_080123C8: .4byte 0x00000C28
_080123CC:
	ldr r1, _080123E8 @ =0x00000C28
	adds r3, r7, r1
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	ldrb r1, [r2]
	orrs r0, r1
	adds r2, #2
	str r2, [r3]
	bl sub_08011880
	bl sub_0800A474
	b _08011EC6
	.align 2, 0
_080123E8: .4byte 0x00000C28
_080123EC:
	ldr r2, _0801240C @ =0x00000C28
	adds r3, r7, r2
	ldr r2, [r3]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	ldrb r0, [r2]
	orrs r1, r0
	adds r2, #2
	str r2, [r3]
	lsls r1, r1, #2
	movs r4, #0x84
	lsls r4, r4, #3
	adds r0, r7, r4
	adds r0, r0, r1
	ldr r0, [r0]
	b _08012380
	.align 2, 0
_0801240C: .4byte 0x00000C28
_08012410:
	ldr r0, _08012430 @ =0x00000C28
	adds r2, r7, r0
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A444
	lsls r4, r4, #2
	movs r2, #0x84
	lsls r2, r2, #3
	b _080128A6
	.align 2, 0
_08012430: .4byte 0x00000C28
_08012434:
	ldr r4, _0801245C @ =0x00000C28
	adds r2, r7, r4
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A444
	lsls r4, r4, #2
	movs r1, #0x84
	lsls r1, r1, #3
	adds r2, r7, r1
	adds r2, r2, r4
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	b _08011EC6
	.align 2, 0
_0801245C: .4byte 0x00000C28
_08012460:
	ldr r4, _08012488 @ =0x00000C28
	adds r2, r7, r4
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A444
	lsls r4, r4, #2
	movs r1, #0x84
	lsls r1, r1, #3
	adds r2, r7, r1
	adds r2, r2, r4
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	b _08011EC6
	.align 2, 0
_08012488: .4byte 0x00000C28
_0801248C:
	ldr r2, _080124B8 @ =0x00000C28
	adds r3, r7, r2
	ldr r1, [r3]
	ldrb r2, [r1, #1]
	lsls r2, r2, #8
	ldrb r0, [r1]
	orrs r2, r0
	adds r1, #2
	str r1, [r3]
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	lsls r1, r1, #1
	lsrs r2, r2, #2
	movs r4, #0x9a
	lsls r4, r4, #4
	adds r0, r7, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r1
	ands r0, r3
	b _08012380
	.align 2, 0
_080124B8: .4byte 0x00000C28
_080124BC:
	ldr r0, _080124D4 @ =0x00000C28
	adds r2, r7, r0
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A444
	b _0801285A
	.align 2, 0
_080124D4: .4byte 0x00000C28
_080124D8:
	ldr r1, _08012510 @ =0x00000C28
	adds r2, r7, r1
	ldr r1, [r2]
	ldrb r0, [r1]
	adds r3, r0, #0
	adds r1, #1
	str r1, [r2]
	lsls r1, r3, #2
	movs r2, #0xa6
	lsls r2, r2, #4
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	bne _08012506
	ldr r1, _08012514 @ =gUnknown_0831BA8C
	add r0, sp, #8
	adds r2, r3, #0
	bl sub_0803DFE0
	add r0, sp, #8
	bl sub_080050A8
_08012506:
	adds r0, r4, #0
	bl sub_0800A474
	b _08011EC6
	.align 2, 0
_08012510: .4byte 0x00000C28
_08012514: .4byte gUnknown_0831BA8C
_08012518:
	ldr r4, _0801252C @ =0x00000C28
	adds r1, r7, r4
	ldr r0, [r1]
	ldrb r4, [r0]
	adds r0, #1
	str r0, [r1]
	bl sub_0800A4A8
	b _080128A0
	.align 2, 0
_0801252C: .4byte 0x00000C28
_08012530:
	bl sub_0800A444
	b _08012A86
_08012536:
	bl sub_0800A444
	movs r1, #0
	cmp r0, #0
	beq _08012544
	bl _08012E06
_08012544:
	movs r1, #1
	bl _08012E06
_0801254A:
	bl sub_0800A444
	mvns r0, r0
	b _08012380
_08012552:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	muls r0, r4, r0
	b _08012380
_08012560:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	cmp r4, #2
	bne _08012572
	asrs r0, r0, #1
	b _08012380
_08012572:
	adds r1, r4, #0
	bl sub_0803D34C
	b _08012380
_0801257A:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0803D350
	b _08012380
_0801258C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r0, r0, r4
	b _08012380
_0801259A:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	subs r0, r0, r4
	b _08012380
_080125A8:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, r4
	beq _080125BC
	bl _08012E06
_080125BC:
	movs r1, #1
	bl _08012E06
_080125C2:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r0, #0
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	b _08012380
_080125D8:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, r4
	bge _080125EC
	bl _08012E06
_080125EC:
	movs r1, #1
	bl _08012E06
_080125F2:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, r4
	ble _08012606
	bl _08012E06
_08012606:
	movs r1, #1
	bl _08012E06
_0801260C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, r4
	bgt _08012620
	bl _08012E06
_08012620:
	movs r1, #1
	bl _08012E06
_08012626:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, r4
	blt _08012638
	b _08012E06
_08012638:
	movs r1, #1
	b _08012E06
_0801263C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	ands r0, r4
	b _08012380
_0801264A:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	orrs r0, r4
	b _08012380
_08012658:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	eors r0, r4
	b _08012380
_08012666:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, #0
	bne _08012678
	b _08012E06
_08012678:
	rsbs r0, r4, #0
	orrs r0, r4
	lsrs r1, r0, #0x1f
	b _08012E06
_08012680:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	movs r1, #0
	cmp r0, #0
	bne _08012696
	cmp r4, #0
	bne _08012696
	b _08012E06
_08012696:
	movs r1, #1
	b _08012E06
_0801269A:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_08000D80
	b _08012380
_080126AC:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_08000D80
	movs r1, #0
	cmp r0, #0
	beq _080126C4
	b _08012E06
_080126C4:
	movs r1, #1
	b _08012E06
_080126C8:
	ldr r4, _080126D0 @ =0x00000C28
	adds r3, r7, r4
	b _08012744
	.align 2, 0
_080126D0: .4byte 0x00000C28
_080126D4:
	ldr r0, _0801270C @ =0x00000C28
	adds r5, r7, r0
	ldr r1, [r5]
	ldrb r0, [r1, #2]
	lsls r4, r0, #0x10
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	orrs r4, r0
	ldrb r0, [r1]
	orrs r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080126F8
	movs r0, #0xff
	lsls r0, r0, #0x18
	orrs r4, r0
_080126F8:
	adds r0, r1, #3
	str r0, [r5]
	bl sub_0800A4EC
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	bl _08011EC6
	.align 2, 0
_0801270C: .4byte 0x00000C28
_08012710:
	bl sub_0800A520
	bl sub_080137E6
_08012718:
	bl sub_0800A444
	cmp r0, #0
	beq _0801272C
	ldr r4, _08012728 @ =0x00000C28
	adds r3, r7, r4
	b _08012744
	.align 2, 0
_08012728: .4byte 0x00000C28
_0801272C:
	ldr r0, _08012734 @ =0x00000C28
	adds r1, r7, r0
	b _08012778
	.align 2, 0
_08012734: .4byte 0x00000C28
_08012738:
	bl sub_0800A444
	cmp r0, #0
	bne _08012774
	ldr r1, _08012770 @ =0x00000C28
	adds r3, r7, r1
_08012744:
	ldr r2, [r3]
	ldrb r0, [r2, #2]
	lsls r1, r0, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2]
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08012764
	movs r0, #0xff
	lsls r0, r0, #0x18
	orrs r1, r0
_08012764:
	adds r0, r2, #3
	adds r0, r0, r1
	str r0, [r3]
	bl _08011EC6
	.align 2, 0
_08012770: .4byte 0x00000C28
_08012774:
	ldr r2, _08012784 @ =0x00000C28
	adds r1, r7, r2
_08012778:
	ldr r0, [r1]
	adds r0, #3
	str r0, [r1]
	bl _08011EC6
	.align 2, 0
_08012784: .4byte 0x00000C28
_08012788:
	bl sub_0800A400
	bl _08011EC6
_08012790:
	ldr r4, _080127C4 @ =0x00000C28
	adds r3, r7, r4
	ldr r2, [r3]
	ldrb r0, [r2, #2]
	lsls r1, r0, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2]
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080127B4
	movs r0, #0xff
	lsls r0, r0, #0x18
	orrs r1, r0
_080127B4:
	adds r0, r2, #3
	str r0, [r3]
	adds r0, r0, r1
	bl sub_0800A778
	bl _08011EC6
	.align 2, 0
_080127C4: .4byte 0x00000C28
_080127C8:
	ldr r0, _080127E4 @ =0x00000C28
	adds r3, r7, r0
	ldr r2, [r3]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	ldrb r0, [r2]
	orrs r1, r0
	adds r2, #2
	str r2, [r3]
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #3
	b _0801287E
	.align 2, 0
_080127E4: .4byte 0x00000C28
_080127E8:
	ldr r4, _08012808 @ =0x00000C28
	adds r2, r7, r4
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A520
	lsls r4, r4, #2
	movs r2, #0x84
	lsls r2, r2, #3
	b _080128A6
	.align 2, 0
_08012808: .4byte 0x00000C28
_0801280C:
	ldr r4, _08012840 @ =0x00000C28
	adds r3, r7, r4
	ldr r1, [r3]
	ldrb r2, [r1, #1]
	lsls r2, r2, #8
	ldrb r0, [r1]
	orrs r2, r0
	adds r1, #2
	str r1, [r3]
	movs r3, #3
	adds r1, r2, #0
	ands r1, r3
	lsls r1, r1, #1
	lsrs r2, r2, #2
	movs r4, #0x9a
	lsls r4, r4, #4
	adds r0, r7, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	lsrs r0, r1
	ands r0, r3
	bl sub_0800A4EC
	bl _08011EC6
	.align 2, 0
_08012840: .4byte 0x00000C28
_08012844:
	ldr r0, _08012868 @ =0x00000C28
	adds r2, r7, r0
	ldr r1, [r2]
	ldrb r4, [r1, #1]
	lsls r4, r4, #8
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #2
	str r1, [r2]
	bl sub_0800A520
_0801285A:
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0801181C
	bl _08011EC6
	.align 2, 0
_08012868: .4byte 0x00000C28
_0801286C:
	ldr r1, _0801288C @ =0x00000C28
	adds r2, r7, r1
	ldr r0, [r2]
	ldrb r1, [r0]
	adds r0, #1
	str r0, [r2]
	lsls r1, r1, #2
	movs r2, #0xa6
	lsls r2, r2, #4
_0801287E:
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0800A4EC
	bl _08011EC6
	.align 2, 0
_0801288C: .4byte 0x00000C28
_08012890:
	ldr r4, _080128B0 @ =0x00000C28
	adds r1, r7, r4
	ldr r0, [r1]
	ldrb r4, [r0]
	adds r0, #1
	str r0, [r1]
	bl sub_0800A520
_080128A0:
	lsls r4, r4, #2
	movs r2, #0xa6
	lsls r2, r2, #4
_080128A6:
	adds r1, r7, r2
	adds r1, r1, r4
	str r0, [r1]
	bl _08011EC6
	.align 2, 0
_080128B0: .4byte 0x00000C28
_080128B4:
	bl sub_0800A4A8
	bl _08011EC6
_080128BC:
	bl sub_0800A444
	bl _08011EC6
_080128C4:
	bl sub_0800A444
	bl sub_0800A3F0
	bl _08011EC6
_080128D0:
	bl sub_0800A4A8
	bl sub_0800A3F4
	bl _08011EC6
_080128DC:
	bl sub_0800A444
	bl sub_080118A0
	b _08012380
_080128E6:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_080118D4
	bl _08011EC6
_080128FA:
	bl sub_0800A444
	bl sub_08011908
	b _08012380
_08012904:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0801194C
	bl _08011EC6
_08012918:
	bl sub_0800A444
	bl sub_0801197C
	bl sub_0800A474
	bl _08011EC6
_08012928:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_080119A8
	bl _08011EC6
_0801293C:
	bl sub_0800A444
	bl sub_080119D4
	bl _08011EC6
_08012948:
	bl sub_0800A444
	bl sub_08011A08
	bl _08011EC6
_08012954:
	bl sub_08011A3C
	bl _08011EC6
_0801295C:
	bl sub_0800A444
	bl sub_0800AA28
	bl _08011EC6
_08012968:
	bl sub_0800AA5C
	bl sub_0800A474
	bl _08011EC6
_08012974:
	bl sub_0800A444
	bl sub_0800AA7C
	bl sub_0800A474
	bl _08011EC6
_08012984:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800AAA8
	bl _08011EC6
_08012998:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800AADC
	bl _08011EC6
_080129AC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800AB30
	bl _08011EC6
_080129C0:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800AB5C
	bl _08011EC6
_080129D4:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800ABA4
	bl _08011EC6
_080129E8:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800A7B8
	b _08012380
_080129FA:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800A820
	bl sub_0800A474
	bl _08011EC6
_08012A12:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800A85C
	b _08012380
_08012A24:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800A8B8
	b _08012380
_08012A36:
	bl sub_0800A4A8
	bl sub_080117CC
	ldr r4, _08012A48 @ =0x00000C28
	adds r1, r7, r4
	str r0, [r1]
	bl _08011EC6
	.align 2, 0
_08012A48: .4byte 0x00000C28
_08012A4C:
	bl sub_0800A4A8
	adds r5, r0, #0
	ldr r0, _08012A68 @ =0x00000C28
	adds r4, r7, r0
	ldr r0, [r4]
	bl sub_0800A4EC
	adds r0, r5, #0
	bl sub_080117CC
	str r0, [r4]
	bl _08011EC6
	.align 2, 0
_08012A68: .4byte 0x00000C28
_08012A6C:
	bl sub_0800A4A8
	bl sub_080117CC
	bl sub_0800A778
	bl _08011EC6
_08012A7C:
	bl sub_0800A444
	cmp r0, #0
	blt _08012A86
	b _08012380
_08012A86:
	rsbs r0, r0, #0
	b _08012380
_08012A8A:
	bl sub_0800A444
	adds r1, r0, #0
	movs r0, #1
	bics r0, r1
	b _08012380
_08012A96:
	bl sub_0800A444
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	b _08012380
_08012AA2:
	bl sub_0800A444
	bl sub_08011A54
	b _08012380
_08012AAC:
	bl sub_0800A444
	bl sub_08011A6C
	bl _08011EC6
_08012AB8:
	bl sub_0800A4A8
	bl sub_08011A78
	b _08012380
_08012AC2:
	bl sub_0800A4A8
	bl sub_08011AD8
	b _08012380
_08012ACC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_08011B04
	bl sub_0800A474
	bl _08011EC6
_08012AE4:
	bl sub_0800A444
	bl sub_08011B68
	bl _08011EC6
_08012AF0:
	bl sub_0800A4D8
	bl _08011EC6
_08012AF8:
	bl sub_08011B84
	b _08012380
_08012AFE:
	bl sub_08011B98
	bl sub_0800A474
	bl _08011EC6
_08012B0A:
	bl sub_0800A444
	bl sub_08011BA0
	b _08012380
_08012B14:
	bl sub_0800A444
	bl sub_08011BB8
	b _08012380
_08012B1E:
	bl sub_0800A444
	bl sub_08011BD0
	b _08012380
_08012B28:
	bl sub_0800A444
	bl sub_0800ACD0
	bl _08011EC6
_08012B34:
	bl sub_0800AD04
	bl _08011EC6
_08012B3C:
	bl sub_0800AD28
	bl _08011EC6
_08012B44:
	bl sub_0800A444
	bl sub_0800AD4C
	bl _08011EC6
_08012B50:
	bl sub_0800A444
	bl sub_0800AD80
	bl _08011EC6
_08012B5C:
	bl sub_0800ADA8
	bl _08012380
_08012B64:
	bl sub_0800A444
	bl sub_0800ADD8
	bl _08011EC6
_08012B70:
	bl sub_0800ADFC
	bl _08011EC6
_08012B78:
	bl sub_0800A444
	bl sub_0800AE20
	bl _08011EC6
_08012B84:
	bl sub_0800AE4C
	bl _08012380
_08012B8C:
	bl sub_0800A444
	bl sub_0800AE7C
	bl _08011EC6
_08012B98:
	bl sub_0800AE8C
	bl _08011EC6
_08012BA0:
	bl sub_0800A444
	bl sub_0800AE98
	bl _08011EC6
_08012BAC:
	bl sub_0800AEB0
	bl _08011EC6
_08012BB4:
	bl sub_0800A444
	bl sub_0800AEE0
	bl _08011EC6
_08012BC0:
	bl sub_0800A444
	bl sub_0800B764
	bl _08012380
_08012BCC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800B788
	bl _08011EC6
_08012BE0:
	bl sub_0800A444
	bl sub_0800B7AC
	bl _08012380
_08012BEC:
	bl sub_0800A444
	bl sub_0800BE8C
	bl _08012380
_08012BF8:
	bl sub_0800A444
	bl sub_0800BEAC
	bl _08011EC6
_08012C04:
	bl sub_08011BE8
	bl _08011EC6
_08012C0C:
	bl sub_08011C18
	bl _08011EC6
_08012C14:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005A64
	bl _08011EC6
_08012C38:
	bl sub_08011C2C
	bl _08011EC6
_08012C40:
	bl sub_08011C5C
	bl _08011EC6
_08012C48:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08005B50
	bl _08011EC6
_08012C6C:
	bl sub_08011500
	bl _08011EC6
_08012C74:
	bl sub_0801161C
	bl _08011EC6
_08012C7C:
	bl sub_08011C70
	bl _08011EC6
_08012C84:
	bl sub_08011C80
	bl _08011EC6
_08012C8C:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800C0EC
	bl _08011EC6
_08012CB0:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	mov r8, r0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	str r6, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0800C174
	bl _08011EC6
_08012CDC:
	bl sub_0800A444
	bl sub_0800C1B0
	bl _08012380
_08012CE8:
	bl sub_0800A444
	bl sub_0800C1E4
	bl _08011EC6
_08012CF4:
	bl sub_0800C2E8
	bl _08011EC6
_08012CFC:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800C30C
	bl _08011EC6
_08012D18:
	bl sub_0800A444
	bl sub_0800C358
	bl _08011EC6
_08012D24:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A4A8
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800C36C
	bl _08011EC6
_08012D48:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800C3C0
	bl sub_0800A474
	bl _08011EC6
_08012D60:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800C688
	bl _08011EC6
_08012D84:
	bl sub_0800A444
	bl sub_0800C82C
	bl _08012380
_08012D90:
	ldr r1, _08012DA4 @ =gUnknown_0200C1A0
	ldr r2, _08012DA8 @ =0x00002344
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #3
	bne _08012DB0
	ldr r4, _08012DAC @ =0x000023F0
	adds r0, r1, r4
	ldr r0, [r0]
	b _08012DB4
	.align 2, 0
_08012DA4: .4byte gUnknown_0200C1A0
_08012DA8: .4byte 0x00002344
_08012DAC: .4byte 0x000023F0
_08012DB0:
	bl sub_0800A444
_08012DB4:
	bl sub_0800CA84
	b _08012DF4
_08012DBA:
	bl sub_0800A444
	bl sub_0800CB20
	bl _08012380
_08012DC6:
	bl sub_0800A444
	bl sub_0800CB3C
	bl _08011EC6
_08012DD2:
	ldr r0, _08012DE4 @ =gUnknown_0200C1A0
	ldr r4, _08012DE8 @ =0x00002344
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #3
	bne _08012DEC
	movs r0, #0
	b _08012DF0
	.align 2, 0
_08012DE4: .4byte gUnknown_0200C1A0
_08012DE8: .4byte 0x00002344
_08012DEC:
	bl sub_0800A444
_08012DF0:
	bl sub_0800CB84
_08012DF4:
	adds r1, r0, #0
	ldr r0, _08012E0C @ =gUnknown_0200C1A0
	ldr r2, _08012E10 @ =0x00002344
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _08012E06
	bl sub_080137D6
_08012E06:
	adds r0, r1, #0
	bl _08012380
	.align 2, 0
_08012E0C: .4byte gUnknown_0200C1A0
_08012E10: .4byte 0x00002344
_08012E14:
	bl sub_0800CBFC
	bl _08012380
_08012E1C:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800CC38
	bl _08012380
_08012E30:
	bl sub_0800A444
	bl sub_0800CC60
	bl _08012380
_08012E3C:
	bl sub_0800A444
	bl sub_0800D2E0
	bl _08011EC6
_08012E48:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	mov r8, r0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	str r6, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0800D328
	bl _08011EC6
_08012E74:
	bl sub_0800D358
	bl _08011EC6
_08012E7C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800D364
	bl _08011EC6
_08012E90:
	bl sub_0800A444
	bl sub_0800D394
	bl _08011EC6
_08012E9C:
	bl sub_0800A444
	bl sub_0800D3AC
	bl _08011EC6
_08012EA8:
	bl sub_0800D3B8
	bl _08011EC6
_08012EB0:
	bl sub_0800D3CC
	bl _08011EC6
_08012EB8:
	bl sub_0800D3E0
	bl _08011EC6
_08012EC0:
	bl sub_0800D3F0
	bl _08011EC6
_08012EC8:
	bl sub_0800D400
	b _08012F3C
_08012ECE:
	bl sub_0800D424
	b _08012F3C
_08012ED4:
	ldr r0, _08012EEC @ =0x00000C28
	adds r4, r7, r0
	ldr r0, [r4]
	bl sub_0800D4C0
	cmp r0, #0
	bne _08012EE6
	bl sub_080137D6
_08012EE6:
	str r0, [r4]
	bl _08011EC6
	.align 2, 0
_08012EEC: .4byte 0x00000C28
_08012EF0:
	ldr r0, _08012F04 @ =gUnknown_0200C1A0
	ldr r1, _08012F08 @ =0x00002344
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08012F0C
	mov r0, sl
	movs r1, #0
	b _08012F38
	.align 2, 0
_08012F04: .4byte gUnknown_0200C1A0
_08012F08: .4byte 0x00002344
_08012F0C:
	bl sub_0800A4A8
	mov sl, r0
	movs r1, #0
	b _08012F38
_08012F16:
	ldr r0, _08012F28 @ =gUnknown_0200C1A0
	ldr r2, _08012F2C @ =0x00002344
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #3
	bne _08012F30
	ldr r0, [sp, #0x188]
	b _08012F36
	.align 2, 0
_08012F28: .4byte gUnknown_0200C1A0
_08012F2C: .4byte 0x00002344
_08012F30:
	bl sub_0800A4A8
	str r0, [sp, #0x188]
_08012F36:
	movs r1, #1
_08012F38:
	bl sub_0800D55C
_08012F3C:
	cmp r0, #0
	beq _08012F44
	bl sub_080137D6
_08012F44:
	bl _08011EC6
_08012F48:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800D6C4
	bl _08011EC6
_08012F5C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800D6F4
	bl _08011EC6
_08012F70:
	bl sub_0800A444
	bl sub_0800D724
	bl _08011EC6
_08012F7C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800D744
	bl _08011EC6
_08012F90:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800D77C
	bl _08011EC6
_08012FAC:
	bl sub_0800D880
	bl _08011EC6
_08012FB4:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800D9B4
	bl _08011EC6
_08012FC8:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800D9D4
	bl _08011EC6
_08012FDC:
	bl sub_0800DA40
	bl _08011EC6
_08012FE4:
	bl sub_0800A4A8
	bl sub_0800DCE8
	bl _08011EC6
_08012FF0:
	bl sub_0800DD94
	bl _08011EC6
_08012FF8:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800E4AC
	bl _08011EC6
_0801301C:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800E4C0
	bl _08011EC6
_08013040:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800E4F0
	bl _08011EC6
_08013064:
	bl sub_0800E520
	bl _08011EC6
_0801306C:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	mov r8, r0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	str r6, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0800E658
	bl _08011EC6
_08013098:
	bl sub_0800A444
	bl sub_0800E6B8
	bl _08011EC6
_080130A4:
	bl sub_0800A4A8
	bl sub_0800E844
	bl _08011EC6
_080130B0:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_0800E850
	bl _08011EC6
_080130C4:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800E9D8
	bl _08011EC6
_080130E0:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800ECFC
	bl _08011EC6
_080130FC:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800ED08
	bl _08011EC6
_08013118:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800EED4
	bl _08011EC6
_08013134:
	bl sub_0800EF74
	bl _08011EC6
_0801313C:
	ldr r0, _08013148 @ =gUnknown_0200C4FC
	bl sub_0800A474
	bl _08011EC6
	.align 2, 0
_08013148: .4byte gUnknown_0200C4FC
_0801314C:
	ldr r0, _0801315C @ =gUnknown_0200C1A0
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	bl _08012380
	.align 2, 0
_0801315C: .4byte gUnknown_0200C1A0
_08013160:
	ldr r0, _0801316C @ =gUnknown_0200C52D
	bl sub_0800A474
	bl _08011EC6
	.align 2, 0
_0801316C: .4byte gUnknown_0200C52D
_08013170:
	ldr r0, _0801317C @ =gUnknown_0200C55D
	bl sub_0800A474
	bl _08011EC6
	.align 2, 0
_0801317C: .4byte gUnknown_0200C55D
_08013180:
	ldr r0, _0801318C @ =gUnknown_0200C58D
	bl sub_0800A474
	bl _08011EC6
	.align 2, 0
_0801318C: .4byte gUnknown_0200C58D
_08013190:
	bl sub_0800F090
	bl _08011EC6
_08013198:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800F254
	bl _08011EC6
_080131AC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800F43C
	bl _08011EC6
_080131C0:
	bl sub_0800A444
	bl sub_0800FCEC
	bl _08012380
_080131CC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FD0C
	bl sub_0800A474
	bl _08011EC6
_080131E4:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FD50
	bl _08012380
_080131F8:
	bl sub_0800A4A8
	bl sub_0800FDB0
	bl _08012380
_08013204:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FE04
	bl _08012380
_08013218:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FE5C
	bl _08012380
_0801322C:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FE68
	bl _08011EC6
_08013248:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FE90
	bl _08011EC6
_08013264:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FEC0
	bl _08012380
_08013278:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FED0
	bl _08011EC6
_08013294:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FEEC
	bl _08012380
_080132A8:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FF00
	bl _08011EC6
_080132C4:
	bl sub_0800FF1C
	bl _08011EC6
_080132CC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FF44
	bl _08012380
_080132E0:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FF58
	bl _08011EC6
_080132FC:
	bl sub_0800FF74
	bl _08011EC6
_08013304:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FF9C
	bl _08012380
_08013318:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FFB0
	bl _08011EC6
_08013334:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_0800FFCC
	bl _08012380
_08013348:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800FFE0
	bl _08011EC6
_08013364:
	bl sub_0800FFFC
	bl _08011EC6
_0801336C:
	bl sub_0800A444
	bl sub_08010014
	bl _08012380
_08013378:
	bl sub_0800A444
	bl sub_08010054
	bl _08012380
_08013384:
	bl sub_0800A444
	bl sub_0801009C
	bl _08012380
_08013390:
	bl sub_0800A444
	bl sub_08011C90
	bl _08012380
_0801339C:
	bl sub_0800A444
	bl sub_08011CA4
	bl sub_0800A474
	bl _08011EC6
_080133AC:
	bl sub_08011CD8
	bl _08012380
_080133B4:
	bl sub_0800A444
	bl sub_08011CF4
	bl _08011EC6
_080133C0:
	bl sub_080100F0
	bl _08012380
_080133C8:
	bl sub_0800A444
	bl sub_08010100
	bl _08011EC6
_080133D4:
	bl sub_08010118
	bl sub_0800A474
	bl _08011EC6
_080133E0:
	bl sub_0800A4A8
	bl sub_08010120
	bl _08011EC6
_080133EC:
	bl sub_08010154
	bl sub_0800A474
	bl _08011EC6
_080133F8:
	bl sub_0800A4A8
	bl sub_0801015C
	bl _08011EC6
_08013404:
	bl sub_0800A444
	bl sub_08010170
	bl _08012380
_08013410:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08010180
	bl _08011EC6
_08013424:
	bl sub_08010190
	bl _08012380
_0801342C:
	bl sub_0800A444
	bl sub_0801019C
	bl _08011EC6
_08013438:
	bl sub_0800A444
	bl sub_080101C0
	bl _08011EC6
_08013444:
	bl sub_08010F30
	bl _08012380
_0801344C:
	bl sub_0800A444
	bl sub_08010F64
	bl _08011EC6
_08013458:
	bl sub_0800A444
	bl sub_08010FD8
	bl _08011EC6
_08013464:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08010FE4
	bl _08011EC6
_08013478:
	bl sub_0800A444
	bl sub_08011058
	bl _08011EC6
_08013484:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_080110DC
	bl _08011EC6
_08013498:
	bl sub_0800A444
	bl sub_080110FC
	bl _08011EC6
_080134A4:
	bl sub_08011138
	bl _08011EC6
_080134AC:
	bl sub_0800A444
	bl sub_08011178
	bl _08011EC6
_080134B8:
	bl sub_0800A444
	bl sub_08011194
	bl _08012380
_080134C4:
	bl sub_0800A444
	bl sub_080111A8
	bl _08011EC6
_080134D0:
	bl sub_0800A444
	bl sub_08011234
	bl _08011EC6
_080134DC:
	bl sub_0801125C
	bl _08011EC6
_080134E4:
	bl sub_08011288
	bl _08011EC6
_080134EC:
	bl sub_080112C0
	bl _08012380
_080134F4:
	bl sub_080112D4
	bl _08012380
_080134FC:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08011438
	bl _08011EC6
_08013510:
	bl sub_0800A444
	bl sub_0800FB18
	bl _08011EC6
_0801351C:
	bl sub_0800FB24
	bl _08012380
_08013524:
	bl sub_0800A444
	bl sub_0800FB30
	bl _08011EC6
_08013530:
	bl sub_0800A444
	bl sub_08013AD8
	bl _08012380
_0801353C:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08013BB4
	bl _08012380
_08013550:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08013EE8
	bl _08011EC6
_08013564:
	movs r0, #0
	bl sub_08013F38
	bl _08011EC6
_0801356E:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	adds r1, r4, #0
	bl sub_08013F74
	bl sub_0800A474
	bl _08011EC6
_08013586:
	bl sub_08013FAC
	bl _08011EC6
_0801358E:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08013FC0
	bl _08011EC6
_080135AA:
	bl sub_08013FF0
	bl _08012380
_080135B2:
	bl sub_08014030
	bl _08011EC6
_080135BA:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08014058
	bl _08011EC6
_080135CE:
	bl sub_0800A4A8
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08014068
	bl _08011EC6
_080135E2:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08014088
	bl _08011EC6
_080135F6:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08014098
	bl _08011EC6
_0801360A:
	bl sub_0800A444
	mov r8, r0
	bl sub_0800A4A8
	adds r5, r0, #0
	bl sub_0800A444
	mov sb, r0
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	str r5, [sp]
	mov r1, r8
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_080140AC
	bl _08012380
_08013640:
	bl sub_0800A444
	bl sub_080142D0
	bl _08011EC6
_0801364C:
	bl sub_0800A4A8
	bl sub_0800F788
	bl _08011EC6
_08013658:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	mov r8, r0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A4A8
	str r6, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0800F800
	bl _08012380
_08013684:
	bl sub_0800F9A8
	bl _08012380
_0801368C:
	bl sub_0800A4A8
	bl sub_0800F9C0
	bl _08012380
_08013698:
	bl sub_0800A4A8
	bl sub_0800F9D4
	bl _08011EC6
_080136A4:
	bl sub_0800A444
	bl sub_0800FA20
	bl _08012380
_080136B0:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_080102C8
	bl _08011EC6
_080136C4:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08010330
	bl _08012380
_080136D8:
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	bl sub_08010348
	bl _08012380
_080136EC:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08010360
	bl _08012380
_08013708:
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080103A8
	bl _08012380
_08013724:
	bl sub_080103F0
	bl _08012380
_0801372C:
	bl sub_0800A444
	bl sub_08010400
	bl sub_0800A474
	bl _08011EC6
_0801373C:
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08010430
	bl _08011EC6
_08013760:
	bl sub_08010470
	bl _08011EC6
_08013768:
	bl sub_0800A4A8
	mov r8, r0
	bl sub_0800A444
	adds r5, r0, #0
	bl sub_0800A444
	mov sb, r0
	bl sub_0800A444
	adds r6, r0, #0
	bl sub_0800A444
	adds r4, r0, #0
	bl sub_0800A444
	str r5, [sp]
	mov r2, r8
	str r2, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_08010490
	bl _08011EC6
_0801379E:
	bl sub_0800A444
	bl sub_08010580
	bl _08011EC6
_080137AA:
	bl sub_0800A444
	bl sub_08010738
	bl _08011EC6
_080137B6:
	ldr r4, _080137F0 @ =0x00000C28
	adds r0, r7, r4
	ldr r2, [r0]
	subs r2, #1
	ldr r0, _080137F4 @ =gUnknown_084B5FA0
	subs r2, r2, r0
	add r4, sp, #0x88
	ldr r1, _080137F8 @ =gUnknown_0831BABC
	str r2, [sp]
	adds r0, r4, #0
	adds r2, r3, #0
	bl sub_0803DFE0
	adds r0, r4, #0
	bl sub_080050A8

	non_word_aligned_thumb_func_start sub_080137D6
sub_080137D6: @ 0x080137D6
	ldr r0, _080137FC @ =gUnknown_0200C1A0
	ldr r1, _08013800 @ =0x00002344
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	ldr r0, _08013804 @ =gUnknown_0831AF54
	bl sub_080117CC

	non_word_aligned_thumb_func_start sub_080137E6
sub_080137E6: @ 0x080137E6
	ldr r2, _080137F0 @ =0x00000C28
	adds r1, r7, r2
	str r0, [r1]
	bl _08011EC6
	.align 2, 0
_080137F0: .4byte 0x00000C28
_080137F4: .4byte gUnknown_084B5FA0
_080137F8: .4byte gUnknown_0831BABC
_080137FC: .4byte gUnknown_0200C1A0
_08013800: .4byte 0x00002344
_08013804: .4byte gUnknown_0831AF54

	thumb_func_start sub_08013808
sub_08013808: @ 0x08013808
	push {lr}
	bl sub_08011E64
	bl sub_08011EB8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08013818
sub_08013818: @ 0x08013818
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r6, #0
	beq _080138B0
	cmp r6, #3
	beq _080138B0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FEC0
	cmp r0, #0
	bne _08013848
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FF9C
	cmp r0, #1
	bne _08013844
	movs r0, #0
	b _080138B2
_08013844:
	movs r0, #1
	b _080138B2
_08013848:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FE5C
	cmp r0, #0
	beq _080138AC
	subs r0, r6, #1
	cmp r0, #1
	bhi _08013868
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FEEC
	cmp r0, #1
	beq _080138AC
	b _080138B0
_08013868:
	cmp r6, #6
	bne _08013890
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FF44
	cmp r0, #1
	beq _080138AC
	movs r0, #0x19
	bl sub_08010170
	cmp r0, #0
	bne _080138B0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FE04
	cmp r0, #0
	bne _080138AC
	b _080138B0
_08013890:
	subs r0, r6, #4
	cmp r0, #1
	bhi _080138B0
	movs r0, #0x20
	bl sub_08010170
	cmp r0, #0
	bne _080138B0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800FE04
	cmp r0, #0
	beq _080138B0
_080138AC:
	movs r0, #2
	b _080138B2
_080138B0:
	movs r0, #3
_080138B2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080138B8
sub_080138B8: @ 0x080138B8
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_08013818
	cmp r0, #3
	beq _080138E2
	ldr r4, _080138EC @ =gUnknown_0831BAEC
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800FD0C
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_080138E2:
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080138EC: .4byte gUnknown_0831BAEC

	thumb_func_start sub_080138F0
sub_080138F0: @ 0x080138F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x100
	adds r7, r0, #0
	adds r5, r1, #0
	movs r0, #0
	mov sb, r0
	cmp r7, #5
	bne _0801390A
	movs r0, #1
	mov sb, r0
_0801390A:
	cmp r7, #3
	beq _08013994
	adds r0, r5, #0
	bl sub_0800FCEC
	mov r8, r0
	movs r0, #0
	cmp r7, #0
	beq _08013920
	cmp r7, #3
	bne _08013922
_08013920:
	movs r0, #1
_08013922:
	cmp r0, #0
	bne _0801392C
	movs r0, #3
	rsbs r0, r0, #0
	add r8, r0
_0801392C:
	mov r0, sb
	cmp r0, #0
	beq _08013938
	adds r0, r5, #0
	adds r0, #0x24
	b _0801393A
_08013938:
	adds r0, r5, #5
_0801393A:
	bl sub_08010170
	adds r6, r0, #0
	adds r4, r6, #0
	b _08013960
_08013944:
	adds r4, #1
	cmp r4, r8
	blo _0801394C
	movs r4, #0
_0801394C:
	cmp r4, r6
	bne _08013960
	mov r0, sp
	ldr r1, _08013984 @ =gUnknown_0831BAFC
	adds r2, r5, #0
	bl sub_0803DFE0
	mov r0, sp
	bl sub_080050A8
_08013960:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08013818
	cmp r0, #3
	bne _08013944
	cmp r4, r6
	beq _08013994
	mov r0, sb
	cmp r0, #0
	beq _08013988
	adds r0, r5, #0
	adds r0, #0x24
	adds r1, r4, #0
	bl sub_08010180
	b _08013990
	.align 2, 0
_08013984: .4byte gUnknown_0831BAFC
_08013988:
	adds r0, r5, #5
	adds r1, r4, #0
	bl sub_08010180
_08013990:
	movs r0, #1
	b _08013996
_08013994:
	movs r0, #0
_08013996:
	add sp, #0x100
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080139A4
sub_080139A4: @ 0x080139A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r3, r0, #0
	movs r0, #0
	strb r0, [r3]
	movs r7, #0
	adds r2, r3, #1
	adds r4, r1, #0
_080139BA:
	adds r1, r2, r7
	ldm r4!, {r0}
	strb r0, [r1]
	adds r7, #1
	cmp r7, #4
	bls _080139BA
	movs r0, #0
	strb r0, [r3, #6]
	strb r0, [r3, #7]
	strb r0, [r3, #9]
	strb r0, [r3, #0x11]
	ldr r0, _08013ABC @ =0x000005E4
	adds r1, r3, r0
	adds r0, r3, #0
	adds r0, #0x1c
	str r0, [r1]
	movs r2, #0xbd
	lsls r2, r2, #3
	adds r1, r3, r2
	movs r4, #0xb6
	lsls r4, r4, #1
	adds r0, r3, r4
	str r0, [r1]
	ldr r0, _08013AC0 @ =0x000005EC
	adds r1, r3, r0
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r3, r2
	str r0, [r1]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r1, r3, r4
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r3, r2
	str r0, [r1]
	adds r4, #4
	adds r1, r3, r4
	ldr r2, _08013AC4 @ =0x0000058C
	adds r0, r3, r2
	str r0, [r1]
	movs r7, #0
	movs r4, #0x14
	adds r4, r4, r3
	mov sb, r4
_08013A14:
	lsls r0, r7, #2
	ldr r2, _08013ABC @ =0x000005E4
	adds r1, r3, r2
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r7, #0
	str r3, [sp, #4]
	bl sub_0800FCEC
	adds r6, r0, #0
	mov r1, sb
	adds r0, r1, r7
	strb r6, [r0]
	movs r5, #0
	adds r2, r7, #1
	mov r8, r2
	ldr r3, [sp, #4]
	cmp r5, r6
	bhs _08013A5A
	movs r2, #3
_08013A3C:
	strb r5, [r4]
	strb r2, [r4, #1]
	adds r0, r7, #0
	adds r1, r5, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_0800FD0C
	str r0, [r4, #4]
	adds r4, #8
	adds r5, #1
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r5, r6
	blo _08013A3C
_08013A5A:
	mov r7, r8
	cmp r7, #4
	bls _08013A14
	movs r4, #0xbf
	lsls r4, r4, #3
	adds r0, r3, r4
	movs r2, #0
	strb r2, [r0]
	ldr r1, _08013AC8 @ =0x000005F9
	adds r0, r3, r1
	strb r2, [r0]
	adds r4, #2
	adds r0, r3, r4
	strb r2, [r0]
	ldr r0, _08013ACC @ =0x000005FC
	adds r1, r3, r0
	ldr r0, _08013AD0 @ =gUnknown_0831BB30
	str r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r3, r1
	movs r1, #1
	strb r1, [r0]
	adds r4, #7
	adds r0, r3, r4
	strb r2, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r2, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	ldr r1, _08013AD4 @ =0x00000606
	adds r0, r3, r1
	strb r2, [r0]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013ABC: .4byte 0x000005E4
_08013AC0: .4byte 0x000005EC
_08013AC4: .4byte 0x0000058C
_08013AC8: .4byte 0x000005F9
_08013ACC: .4byte 0x000005FC
_08013AD0: .4byte gUnknown_0831BB30
_08013AD4: .4byte 0x00000606

	thumb_func_start sub_08013AD8
sub_08013AD8: @ 0x08013AD8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
_08013AE0:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080138F0
	cmp r0, #0
	beq _08013AEE
	movs r5, #1
_08013AEE:
	adds r4, #1
	cmp r4, #4
	bls _08013AE0
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08013AFC
sub_08013AFC: @ 0x08013AFC
	push {r4, lr}
	lsls r3, r1, #2
	ldr r4, _08013B28 @ =0x000005E4
	adds r2, r0, r4
	adds r2, r2, r3
	ldr r2, [r2]
	adds r0, #0x14
	adds r0, r0, r1
	ldrb r3, [r0]
	lsls r1, r3, #3
	adds r2, r2, r1
	movs r1, #0
	strb r1, [r2]
	movs r1, #4
	strb r1, [r2, #1]
	ldr r1, _08013B2C @ =gUnknown_0831BB38
	str r1, [r2, #4]
	adds r3, #1
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013B28: .4byte 0x000005E4
_08013B2C: .4byte gUnknown_0831BB38

	thumb_func_start sub_08013B30
sub_08013B30: @ 0x08013B30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r0, r1, #0
	adds r7, r2, #0
	mov r8, r3
	adds r1, r7, #0
	mov r2, r8
	bl sub_08013818
	adds r2, r0, #0
	cmp r2, #0
	beq _08013BA4
	lsls r1, r7, #2
	ldr r0, _08013BB0 @ =0x000005E4
	add r0, sb
	adds r0, r0, r1
	ldr r4, [r0]
	mov r6, sb
	adds r6, #0x14
	adds r6, r6, r7
	ldrb r5, [r6]
	lsls r0, r5, #3
	adds r4, r4, r0
	mov r0, r8
	strb r0, [r4]
	strb r2, [r4, #1]
	adds r0, r7, #0
	mov r1, r8
	bl sub_0800FD0C
	str r0, [r4, #4]
	adds r5, #1
	strb r5, [r6]
	cmp r7, #0
	bne _08013B8A
	mov r0, r8
	cmp r0, #0x1e
	bne _08013B8A
	mov r0, sb
	movs r1, #0
	bl sub_08013AFC
_08013B8A:
	cmp r7, #3
	bne _08013BA4
	mov r0, r8
	cmp r0, #0x1b
	bne _08013BA4
	mov r0, sb
	movs r1, #3
	bl sub_08013AFC
	mov r0, sb
	movs r1, #3
	bl sub_08013AFC
_08013BA4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013BB0: .4byte 0x000005E4

	thumb_func_start sub_08013BB4
sub_08013BB4: @ 0x08013BB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08013D08 @ =0xFFFFF9A8
	add sp, r4
	adds r7, r0, #0
	movs r0, #0xc8
	lsls r0, r0, #3
	add r0, sp
	str r1, [r0]
	ldr r0, _08013D0C @ =gUnknown_0200C1A0
	ldr r1, _08013D10 @ =0x00002344
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov sl, r0
	cmp r7, #3
	bne _08013BE8
	movs r2, #0
	mov sl, r2
_08013BE8:
	mov r0, sl
	cmp r0, #0
	beq _08013BF6
	adds r0, r7, #0
	adds r0, #0x14
	bl sub_0800F9E8
_08013BF6:
	bl sub_08011C70
	movs r1, #0
	ldr r2, _08013D14 @ =0x00000644
	add r2, sp
	str r1, [r2]
	cmp r7, #3
	bne _08013C0A
	movs r0, #1
	str r0, [r2]
_08013C0A:
	movs r1, #0
	movs r2, #0xc9
	lsls r2, r2, #3
	add r2, sp
	str r1, [r2]
	cmp r7, #5
	bne _08013C1C
	movs r0, #1
	str r0, [r2]
_08013C1C:
	movs r1, #0
	ldr r2, _08013D18 @ =0x0000064C
	add r2, sp
	str r1, [r2]
	ldr r0, _08013D14 @ =0x00000644
	add r0, sp
	ldr r0, [r0]
	cmp r0, #0
	bne _08013C3A
	movs r1, #0xc9
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1]
	cmp r1, #0
	beq _08013C42
_08013C3A:
	movs r2, #1
	ldr r0, _08013D18 @ =0x0000064C
	add r0, sp
	str r2, [r0]
_08013C42:
	movs r1, #3
	eors r1, r7
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	movs r1, #0xca
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1]
	movs r0, #0
	cmp r7, #0
	beq _08013C5E
	cmp r7, #3
	bne _08013C60
_08013C5E:
	movs r0, #1
_08013C60:
	ldr r2, _08013D1C @ =0x00000654
	add r2, sp
	str r0, [r2]
	mov r0, sp
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #9]
	strb r1, [r0, #0x11]
	mov r1, sp
	movs r2, #0
	movs r0, #0xb7
	strh r0, [r1, #0x12]
	mov r0, sp
	strb r2, [r0, #6]
	ldr r1, _08013D20 @ =0x000005E4
	add r1, sp
	add r0, sp, #0x1c
	str r0, [r1]
	movs r1, #0xbd
	lsls r1, r1, #3
	add r1, sp
	add r0, sp, #0x16c
	str r0, [r1]
	ldr r1, _08013D24 @ =0x000005EC
	add r1, sp
	add r0, sp, #0x294
	str r0, [r1]
	movs r1, #0xbe
	lsls r1, r1, #3
	add r1, sp
	add r0, sp, #0x3f4
	str r0, [r1]
	ldr r1, _08013D28 @ =0x000005F4
	add r1, sp
	ldr r0, _08013D2C @ =0x0000058C
	add r0, sp
	str r0, [r1]
	movs r6, #0
	add r0, sp, #0x14
	mov r8, r0
	movs r1, #1
	add r1, sp
	mov sb, r1
_08013CBA:
	adds r0, r6, #0
	bl sub_0800FCEC
	adds r5, r0, #0
	ldr r2, _08013D1C @ =0x00000654
	add r2, sp
	ldr r2, [r2]
	cmp r2, #0
	bne _08013CCE
	subs r5, #3
_08013CCE:
	mov r0, r8
	adds r1, r0, r6
	movs r0, #0
	strb r0, [r1]
	movs r4, #0
	cmp r4, r5
	bhs _08013CEE
_08013CDC:
	mov r0, sp
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08013B30
	adds r4, #1
	cmp r4, r5
	blo _08013CDC
_08013CEE:
	adds r6, #1
	cmp r6, #4
	bls _08013CBA
	movs r6, #0
_08013CF6:
	ldr r1, _08013D14 @ =0x00000644
	add r1, sp
	ldr r1, [r1]
	cmp r1, #0
	beq _08013D30
	adds r0, r6, #0
	adds r0, #0xa
	b _08013D44
	.align 2, 0
_08013D08: .4byte 0xFFFFF9A8
_08013D0C: .4byte gUnknown_0200C1A0
_08013D10: .4byte 0x00002344
_08013D14: .4byte 0x00000644
_08013D18: .4byte 0x0000064C
_08013D1C: .4byte 0x00000654
_08013D20: .4byte 0x000005E4
_08013D24: .4byte 0x000005EC
_08013D28: .4byte 0x000005F4
_08013D2C: .4byte 0x0000058C
_08013D30:
	movs r2, #0xc9
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2]
	cmp r2, #0
	beq _08013D42
	adds r0, r6, #0
	adds r0, #0x24
	b _08013D44
_08013D42:
	adds r0, r6, #5
_08013D44:
	bl sub_08010170
	adds r2, r0, #0
	mov r0, sp
	adds r1, r6, #0
	bl sub_08008D0C
	mov r2, sb
	adds r1, r2, r6
	strb r0, [r1]
	adds r6, #1
	cmp r6, #4
	bls _08013CF6
	movs r1, #0
	ldr r0, _08013D9C @ =gUnknown_0200C1A0
	ldr r2, _08013DA0 @ =0x00002344
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _08013D6E
	movs r1, #1
_08013D6E:
	movs r0, #0xbf
	lsls r0, r0, #3
	add r0, sp
	strb r1, [r0]
	movs r1, #0
	cmp r7, #6
	bne _08013D7E
	movs r1, #1
_08013D7E:
	ldr r0, _08013DA4 @ =0x000005F9
	add r0, sp
	strb r1, [r0]
	ldr r0, _08013DA8 @ =0x000005FA
	add r0, sp
	mov r1, sl
	strb r1, [r0]
	ldr r2, _08013DAC @ =0x0000064C
	add r2, sp
	ldr r2, [r2]
	cmp r2, #0
	beq _08013DB0
	bl sub_08010154
	b _08013DB4
	.align 2, 0
_08013D9C: .4byte gUnknown_0200C1A0
_08013DA0: .4byte 0x00002344
_08013DA4: .4byte 0x000005F9
_08013DA8: .4byte 0x000005FA
_08013DAC: .4byte 0x0000064C
_08013DB0:
	bl sub_08010118
_08013DB4:
	ldr r1, _08013E38 @ =0x000005FC
	add r1, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #3
	add r0, sp
	movs r1, #0xc8
	lsls r1, r1, #3
	add r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	movs r1, #0
	cmp r7, #3
	bne _08013DD2
	movs r1, #1
_08013DD2:
	ldr r0, _08013E3C @ =0x00000601
	add r0, sp
	strb r1, [r0]
	mov r0, sp
	movs r1, #0
	cmp r7, #2
	beq _08013DE4
	cmp r7, #6
	bne _08013DE6
_08013DE4:
	movs r1, #1
_08013DE6:
	ldr r2, _08013E40 @ =0x00000602
	adds r0, r0, r2
	strb r1, [r0]
	movs r0, #3
	eors r0, r7
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldr r0, _08013E44 @ =0x00000603
	add r0, sp
	strb r1, [r0]
	movs r1, #0
	cmp r7, #3
	bne _08013E04
	movs r1, #1
_08013E04:
	ldr r0, _08013E48 @ =0x00000604
	add r0, sp
	strb r1, [r0]
	movs r1, #0
	cmp r7, #6
	bne _08013E12
	movs r1, #1
_08013E12:
	ldr r0, _08013E4C @ =0x00000605
	add r0, sp
	strb r1, [r0]
	ldr r1, _08013E50 @ =0x00000606
	add r1, sp
	movs r0, #1
	strb r0, [r1]
_08013E20:
	mov r0, sp
	bl sub_080090A8
	mov r0, sp
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _08013E54
	add r0, sp, #0xc
	bl sub_0800F770
	b _08013E20
	.align 2, 0
_08013E38: .4byte 0x000005FC
_08013E3C: .4byte 0x00000601
_08013E40: .4byte 0x00000602
_08013E44: .4byte 0x00000603
_08013E48: .4byte 0x00000604
_08013E4C: .4byte 0x00000605
_08013E50: .4byte 0x00000606
_08013E54:
	mov r0, sp
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	bne _08013E20
	movs r0, #0xca
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0]
	cmp r0, #0
	beq _08013EB2
	movs r6, #0
_08013E6A:
	ldr r0, _08013E88 @ =0x0000060C
	add r0, sp
	adds r0, r0, r6
	ldrb r1, [r0]
	ldr r2, _08013E8C @ =0x00000644
	add r2, sp
	ldr r2, [r2]
	cmp r2, #0
	beq _08013E90
	adds r0, r6, #0
	adds r0, #0xa
	bl sub_08010180
	b _08013EAC
	.align 2, 0
_08013E88: .4byte 0x0000060C
_08013E8C: .4byte 0x00000644
_08013E90:
	movs r0, #0xc9
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0]
	cmp r0, #0
	beq _08013EA6
	adds r0, r6, #0
	adds r0, #0x24
	bl sub_08010180
	b _08013EAC
_08013EA6:
	adds r0, r6, #5
	bl sub_08010180
_08013EAC:
	adds r6, #1
	cmp r6, #4
	bls _08013E6A
_08013EB2:
	ldr r0, _08013EE0 @ =0x000005FA
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08013EC0
	bl sub_0800FA04
_08013EC0:
	bl sub_08011E44
	ldr r0, _08013EE4 @ =0x00000607
	add r0, sp
	ldrb r0, [r0]
	movs r3, #0xcb
	lsls r3, r3, #3
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013EE0: .4byte 0x000005FA
_08013EE4: .4byte 0x00000607

	thumb_func_start sub_08013EE8
sub_08013EE8: @ 0x08013EE8
	push {r4, r5, lr}
	sub sp, #0x6c
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08011C70
	movs r0, #1
	movs r1, #0
	bl sub_08005DB0
	bl sub_08005AFC
	mov r0, sp
	movs r1, #1
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080087F8
	bl sub_08011C80
	ldr r5, _08013F34 @ =gUnknown_02000008
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r0, #0
_08013F18:
	bl sub_08011E9C
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	bne _08013F18
	bl sub_08011C70
	bl sub_08011E44
	add sp, #0x6c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013F34: .4byte gUnknown_02000008

	thumb_func_start sub_08013F38
sub_08013F38: @ 0x08013F38
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_080008BC
	cmp r4, #0
	beq _08013F4E
	movs r0, #1
	bl sub_080155BC
	b _08013F5C
_08013F4E:
	bl sub_08011C70
	movs r0, #0
	bl sub_080155BC
	bl sub_08011E44
_08013F5C:
	movs r0, #0
	bl sub_080008BC
	ldr r0, _08013F70 @ =gUnknown_02000038
	ldrh r0, [r0]
	bl sub_0803DF70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013F70: .4byte gUnknown_02000038

	thumb_func_start sub_08013F74
sub_08013F74: @ 0x08013F74
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r5, #0xa
	bls _08013F84
	ldr r0, _08013FA4 @ =gUnknown_0831BB3C
	bl sub_080050A8
_08013F84:
	bl sub_08011C70
	ldr r4, _08013FA8 @ =gUnknown_0200E9AC
	adds r0, r4, #0
	movs r1, #0x16
	bl sub_08000D68
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08015438
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08013FA4: .4byte gUnknown_0831BB3C
_08013FA8: .4byte gUnknown_0200E9AC

	thumb_func_start sub_08013FAC
sub_08013FAC: @ 0x08013FAC
	push {lr}
	ldr r0, _08013FBC @ =gUnknown_02012AA8
	movs r1, #0x44
	movs r2, #0
	bl sub_08000498
	pop {r0}
	bx r0
	.align 2, 0
_08013FBC: .4byte gUnknown_02012AA8

	thumb_func_start sub_08013FC0
sub_08013FC0: @ 0x08013FC0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r7, _08013FE8 @ =gUnknown_02012AA8
	cmp r4, #0x1f
	bls _08013FD4
	ldr r0, _08013FEC @ =gUnknown_0831BB54
	bl sub_080050A8
_08013FD4:
	adds r0, r4, r7
	strb r5, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r4, r0
	strb r6, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013FE8: .4byte gUnknown_02012AA8
_08013FEC: .4byte gUnknown_0831BB54

	thumb_func_start sub_08013FF0
sub_08013FF0: @ 0x08013FF0
	push {r4, r5, lr}
	ldr r4, _0801402C @ =gUnknown_02012AA8
	bl sub_08011C70
	movs r0, #0
	bl sub_08010170
	adds r5, r0, #0
	bl sub_08010190
	str r0, [r4, #0x40]
	adds r2, r4, #0
	adds r2, #0x40
	adds r3, r4, #0
	adds r3, #0x20
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801857C
	adds r4, r0, #0
	bl sub_08011E44
	movs r0, #0
	adds r1, r4, #0
	bl sub_08010180
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801402C: .4byte gUnknown_02012AA8

	thumb_func_start sub_08014030
sub_08014030: @ 0x08014030
	push {r4, lr}
	ldr r4, _08014050 @ =gUnknown_02012AA8
	adds r0, r4, #0
	movs r1, #0xa8
	movs r2, #0
	bl sub_08000498
	movs r0, #0
	ldr r1, _08014054 @ =gUnknown_0831BB6C
_08014042:
	stm r4!, {r1}
	adds r0, #1
	cmp r0, #0xf
	bls _08014042
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014050: .4byte gUnknown_02012AA8
_08014054: .4byte gUnknown_0831BB6C

	thumb_func_start sub_08014058
sub_08014058: @ 0x08014058
	ldr r2, _08014064 @ =gUnknown_02012AA8
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08014064: .4byte gUnknown_02012AA8

	thumb_func_start sub_08014068
sub_08014068: @ 0x08014068
	push {r4, lr}
	ldr r4, _08014084 @ =gUnknown_02012AA8
	lsls r2, r0, #2
	adds r3, r4, #0
	adds r3, #0x40
	adds r2, r2, r3
	str r1, [r2]
	adds r4, #0x80
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014084: .4byte gUnknown_02012AA8

	thumb_func_start sub_08014088
sub_08014088: @ 0x08014088
	ldr r2, _08014094 @ =gUnknown_02012AA8
	adds r2, #0x90
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08014094: .4byte gUnknown_02012AA8

	thumb_func_start sub_08014098
sub_08014098: @ 0x08014098
	ldr r2, _080140A8 @ =gUnknown_02012AA8
	adds r3, r2, #0
	adds r3, #0xa0
	str r0, [r3]
	adds r2, #0xa4
	str r1, [r2]
	bx lr
	.align 2, 0
_080140A8: .4byte gUnknown_02012AA8

	thumb_func_start sub_080140AC
sub_080140AC: @ 0x080140AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov sb, r0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	mov sl, r3
	ldr r5, _08014164 @ =gUnknown_02012AA8
	movs r0, #0
	str r0, [sp, #0x24]
	mov r1, sb
	cmp r1, #2
	bne _080140D4
	cmp r3, #7
	bne _080140D4
	movs r2, #1
	str r2, [sp, #0x24]
_080140D4:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _080140DE
	bl sub_08011C70
_080140DE:
	movs r2, #0
	adds r1, r5, #0
	adds r1, #0x80
	str r1, [sp, #0x28]
	movs r0, #0x40
	adds r0, r0, r5
	mov r8, r0
	movs r3, #0
	adds r4, r5, #0
	mov r7, r8
_080140F2:
	ldr r1, [sp, #0x28]
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r6, r2, #2
	cmp r0, #0
	bne _08014102
	ldr r0, [r4]
	str r0, [r7]
_08014102:
	ldr r0, [r4]
	ldr r1, _08014168 @ =gUnknown_0831BB78
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	bl sub_08000D80
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	cmp r0, #0
	beq _0801411E
	str r3, [r4]
	mov r1, r8
	adds r0, r1, r6
	str r3, [r0]
_0801411E:
	adds r4, #4
	adds r7, #4
	adds r2, #1
	cmp r2, #0xf
	bls _080140F2
	bl sub_08010118
	mov r1, r8
	movs r4, #0
	mov r2, sb
	cmp r2, #0
	bne _0801416C
	ldr r2, [sp, #0x58]
	str r2, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	str r0, [sp, #0x10]
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r2, sl
	ldr r3, [sp, #0x54]
	bl sub_0801A924
	b _08014204
	.align 2, 0
_08014164: .4byte gUnknown_02012AA8
_08014168: .4byte gUnknown_0831BB78
_0801416C:
	mov r2, sb
	cmp r2, #1
	bne _0801419E
	ldr r2, [sp, #0x58]
	str r2, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	str r0, [sp, #0x10]
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r2, sl
	ldr r3, [sp, #0x54]
	bl sub_0801A990
	b _08014204
_0801419E:
	mov r2, sb
	cmp r2, #2
	bne _080141D2
	ldr r2, [sp, #0x58]
	str r2, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	str r0, [sp, #0x10]
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r2, sl
	ldr r3, [sp, #0x54]
	bl sub_0801B114
	adds r4, r0, #0
	b _08014204
_080141D2:
	mov r1, sb
	cmp r1, #3
	bne _08014204
	ldr r2, [sp, #0x58]
	str r2, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, r8
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	str r0, [sp, #0x10]
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r2, sl
	ldr r3, [sp, #0x54]
	bl sub_0801B6CC
_08014204:
	ldr r1, [sp, #0x24]
	cmp r1, #0
	bne _0801420E
	bl sub_08011E44
_0801420E:
	adds r0, r4, #0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08014220
sub_08014220: @ 0x08014220
	push {r4, r5, r6, r7, lr}
	ldr r7, _080142A0 @ =0x00004AB6
	ldr r0, _080142A4 @ =0x06009600
	ldr r2, _080142A8 @ =0x30303030
	movs r1, #0x40
	bl sub_080004B8
	ldr r0, _080142AC @ =0x0600E800
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r2, _080142B0 @ =gUnknown_02580258
	bl sub_080004B8
	ldr r0, _080142B4 @ =0x05000060
	strh r7, [r0]
	ldr r1, _080142B8 @ =0x0400000C
	movs r2, #0xec
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080142BC @ =0x04000018
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bl sub_0803D380
	movs r2, #0x80
	lsls r2, r2, #0x13
	movs r0, #0x80
	lsls r0, r0, #3
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080142C0 @ =0x04000050
	ldr r2, _080142C4 @ =0x00003F44
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	movs r6, #0x10
	ldr r5, _080142C8 @ =0x04000052
_08014272:
	lsrs r1, r4, #2
	subs r0, r6, r1
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r5]
	bl sub_0803D380
	adds r4, #1
	cmp r4, #0x40
	bls _08014272
	ldr r1, _080142C0 @ =0x04000050
	ldr r2, _080142CC @ =0x00003F3F
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r7, [r0]
	subs r1, #0x50
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080142A0: .4byte 0x00004AB6
_080142A4: .4byte 0x06009600
_080142A8: .4byte 0x30303030
_080142AC: .4byte 0x0600E800
_080142B0: .4byte 0x02580258
_080142B4: .4byte 0x05000060
_080142B8: .4byte 0x0400000C
_080142BC: .4byte 0x04000018
_080142C0: .4byte 0x04000050
_080142C4: .4byte 0x00003F44
_080142C8: .4byte 0x04000052
_080142CC: .4byte 0x00003F3F

	thumb_func_start sub_080142D0
sub_080142D0: @ 0x080142D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800EF74
	bl sub_08014220
	adds r0, r4, #0
	bl sub_0801D8CC
	bl sub_0800A0F0
	bl sub_08011E44
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080142F0
sub_080142F0: @ 0x080142F0
	push {r4, r5, r6, lr}
	sub sp, #8
	bl sub_08000B84
	bl sub_08009B94
	movs r0, #1
	movs r1, #1
	movs r2, #0x1c
	movs r3, #0x12
	bl sub_08009C44
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #5
	movs r1, #5
	movs r2, #0x14
	movs r3, #0xa
	bl sub_08009C50
	movs r0, #3
	bl sub_08009D14
	ldr r2, _08014390 @ =gUnknown_08324E50
	movs r0, #6
	movs r1, #6
	bl sub_08009D4C
	movs r0, #0
	bl sub_08009D14
	ldr r2, _08014394 @ =gUnknown_08324E5C
	movs r0, #6
	movs r1, #8
	bl sub_08009D4C
	bl sub_08009C04
	movs r4, #0
	movs r5, #0
	movs r6, #0
_08014344:
	bl sub_08009BD0
	bl sub_08000BC0
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009EDC
	adds r4, #2
	adds r5, #1
	cmp r4, #0xe0
	ble _08014362
	movs r4, #0
	movs r5, #0
_08014362:
	adds r0, r6, #0
	adds r6, #1
	bl sub_08009F50
	adds r2, r0, #0
	adds r2, #8
	movs r0, #1
	movs r1, #8
	bl sub_08009F18
	ldr r0, _08014398 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08014344
	bl sub_08009BF4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014390: .4byte gUnknown_08324E50
_08014394: .4byte gUnknown_08324E5C
_08014398: .4byte gUnknown_02000020

	thumb_func_start sub_0801439C
sub_0801439C: @ 0x0801439C
	push {r4, lr}
	sub sp, #0x54
	bl sub_08000B84
	bl sub_08009B94
	bl sub_08009C38
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r0, #5
	movs r1, #5
	movs r2, #0x14
	movs r3, #0xa
	bl sub_08009C50
	movs r0, #3
	bl sub_08009D14
	ldr r2, _08014448 @ =gUnknown_08324E6C
	movs r0, #6
	movs r1, #6
	bl sub_08009D4C
	movs r0, #0
	bl sub_08009D14
	ldr r2, _0801444C @ =gUnknown_08324E78
	movs r0, #6
	movs r1, #8
	bl sub_08009D4C
	ldr r2, _08014450 @ =gUnknown_08324E5C
	movs r0, #6
	movs r1, #0xa
	bl sub_08009D4C
	bl sub_08009C04
	ldr r4, _08014454 @ =gUnknown_02000020
_080143EE:
	bl sub_08009BD0
	bl sub_08000BC0
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08014430
	movs r0, #6
	movs r1, #1
	movs r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r0, sp, #0xc
	movs r1, #3
	movs r2, #7
	movs r3, #0x18
	bl sub_08009C7C
	movs r0, #1
	bl sub_08009CB0
	movs r0, #0x1e
	bl sub_08000B68
	add r0, sp, #0xc
	bl sub_08009CA4
	movs r0, #0
	bl sub_08009CB0
_08014430:
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080143EE
	bl sub_08009BF4
	add sp, #0x54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014448: .4byte gUnknown_08324E6C
_0801444C: .4byte gUnknown_08324E78
_08014450: .4byte gUnknown_08324E5C
_08014454: .4byte gUnknown_02000020

	thumb_func_start sub_08014458
sub_08014458: @ 0x08014458
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08000B84
	bl sub_08009B94
	bl sub_08009C38
	movs r0, #3
	bl sub_08009D14
	ldr r2, _08014560 @ =gUnknown_08324E90
	movs r0, #0
	movs r1, #0
	bl sub_08009E44
	movs r0, #2
	bl sub_08009D14
	ldr r2, _08014564 @ =gUnknown_08324E5C
	movs r0, #0
	movs r1, #2
	bl sub_08009E44
	movs r0, #1
	bl sub_08009D14
	ldr r2, _08014568 @ =gUnknown_08324E9C
	movs r0, #0
	movs r1, #4
	movs r3, #6
	bl sub_08009EA8
	movs r1, #0x20
	movs r0, #0x40
	mov r8, r0
	ldr r0, _0801456C @ =0x05000200
	mov sl, r0
	mov r3, sl
	adds r3, #0x40
	lsls r0, r1, #6
	ldr r5, _08014570 @ =0x06010000
	adds r2, r0, r5
	ldr r6, _08014574 @ =gUnknown_08324EA8
	str r2, [sp]
	str r1, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009F78
	movs r7, #0xe0
	lsls r7, r7, #0x13
	adds r1, r7, #0
	adds r1, #0x40
	movs r4, #0x81
	lsls r4, r4, #6
	strh r4, [r1]
	ldr r0, _08014578 @ =0x0000C008
	strh r0, [r1, #2]
	mov r0, r8
	strh r0, [r1, #4]
	mov r3, sl
	adds r3, #0x80
	movs r1, #0x60
	mov sb, r1
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r2, r0, r5
	str r2, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	bl sub_08009F78
	adds r1, r7, #0
	adds r1, #0x48
	strh r4, [r1]
	ldr r0, _0801457C @ =0xFFFFC040
	strh r0, [r1, #2]
	movs r0, #0xc0
	strh r0, [r1, #4]
	mov r3, sl
	adds r3, #0xc0
	movs r0, #0xa0
	lsls r0, r0, #6
	adds r2, r0, r5
	ldr r0, _08014580 @ =gUnknown_08324EB0
	str r2, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0
	bl sub_08009F78
	adds r1, r7, #0
	adds r1, #0x50
	strh r4, [r1]
	ldr r0, _08014584 @ =0xFFFFC078
	strh r0, [r1, #2]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #4]
	bl sub_08009C04
	ldr r4, _08014588 @ =gUnknown_02000020
	movs r5, #1
_0801453A:
	bl sub_08009BD0
	bl sub_08000BC0
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0801453A
	bl sub_08009BF4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014560: .4byte gUnknown_08324E90
_08014564: .4byte gUnknown_08324E5C
_08014568: .4byte gUnknown_08324E9C
_0801456C: .4byte 0x05000200
_08014570: .4byte 0x06010000
_08014574: .4byte gUnknown_08324EA8
_08014578: .4byte 0x0000C008
_0801457C: .4byte 0xFFFFC040
_08014580: .4byte gUnknown_08324EB0
_08014584: .4byte 0xFFFFC078
_08014588: .4byte gUnknown_02000020

	thumb_func_start sub_0801458C
sub_0801458C: @ 0x0801458C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0x18]
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x1a
	adds r4, r0, #1
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x14
	asrs r0, r0, #0x1a
	adds r7, r0, #1
	ldr r0, [r6, #0x14]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	cmp r5, r8
	bhs _080145F2
_080145B2:
	ldr r0, [r6, #0x10]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080145D4
	movs r0, #1
	bl sub_08009D14
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, _080145D0 @ =gUnknown_08324EBC
	bl sub_08009D28
	b _080145E6
	.align 2, 0
_080145D0: .4byte gUnknown_08324EBC
_080145D4:
	movs r0, #0
	bl sub_08009D14
	ldr r2, [r6, #0x10]
	adds r2, r2, r5
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08009D28
_080145E6:
	adds r4, #1
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blo _080145B2
_080145F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080145FC
sub_080145FC: @ 0x080145FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r6, #0x1c]
	adds r7, r0, r1
	ldr r4, [r7]
	ldrb r1, [r7, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	cmp r5, r8
	bhs _080146A2
_08014636:
	ldrh r1, [r6, #0x22]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1b
	adds r0, r6, #0
	adds r0, #0x23
	ldrb r2, [r0]
	lsrs r2, r2, #3
	ldrb r0, [r7, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	muls r0, r2, r0
	adds r1, r1, r0
	cmp r5, r1
	bne _08014658
	ldrb r0, [r4, #9]
	lsls r0, r0, #0x1c
	b _0801465C
_08014658:
	ldrb r0, [r4, #9]
	lsls r0, r0, #0x1e
_0801465C:
	lsrs r0, r0, #0x1e
	bl sub_08009D14
	ldrh r1, [r4, #0xa]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0xc0
	bne _08014684
	ldr r0, [r4, #8]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1b
	movs r2, #1
	bl sub_08009D94
	b _08014696
_08014684:
	ldr r0, [r4, #8]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1b
	adds r2, r4, #0
	bl sub_08009D4C
_08014696:
	adds r4, #0xc
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blo _08014636
_080146A2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080146AC
sub_080146AC: @ 0x080146AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	ldr r3, [r0]
	ldrh r1, [r5, #0x22]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	adds r2, #0x23
	ldrb r2, [r2]
	lsrs r2, r2, #3
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, [r3, #8]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1b
	lsls r0, r0, #3
	adds r6, r0, #0
	subs r6, #0xc
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1b
	lsls r4, r0, #3
	mov r0, r8
	bl sub_08009F50
	adds r1, r0, #0
	adds r1, r6, r1
	movs r0, #0
	adds r2, r4, #0
	bl sub_08009EDC
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x18
	movs r1, #0
	cmp r1, r2
	bhs _0801473E
	ldr r3, [r5, #0x10]
	ldrb r0, [r3]
	ldrb r4, [r5, #0x18]
	ldrh r7, [r5, #0x18]
	cmp r0, #0
	beq _0801473A
_08014728:
	adds r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	bhs _0801473E
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08014728
_0801473A:
	cmp r1, r2
	blo _08014748
_0801473E:
	subs r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldrb r4, [r5, #0x18]
	ldrh r7, [r5, #0x18]
_08014748:
	lsls r0, r4, #0x1a
	asrs r0, r0, #0x1a
	lsrs r1, r1, #1
	adds r0, r0, r1
	adds r0, #1
	lsls r0, r0, #3
	subs r6, r0, #4
	lsls r0, r7, #0x14
	asrs r0, r0, #0x1a
	lsls r0, r0, #3
	subs r4, r0, #2
	mov r0, r8
	bl sub_08009F50
	adds r2, r0, #0
	adds r2, r4, r2
	movs r0, #1
	adds r1, r6, #0
	bl sub_08009F18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801477C
sub_0801477C: @ 0x0801477C
	push {r4, lr}
	sub sp, #8
	ldrb r4, [r0, #0x18]
	lsls r4, r4, #0x1a
	asrs r4, r4, #0x1a
	ldrh r1, [r0, #0x18]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	ldr r2, [r0, #0x18]
	lsls r2, r2, #0xe
	asrs r2, r2, #0x1a
	ldrb r3, [r0, #0x1a]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x1a
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_08009C50
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080147AC
sub_080147AC: @ 0x080147AC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x1a
	ldrh r1, [r4, #0xc]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	ldr r2, [r4, #0xc]
	lsls r2, r2, #0xe
	asrs r2, r2, #0x1a
	ldrb r3, [r4, #0xe]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x1a
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	bl sub_08009C50
	movs r0, #0
	bl sub_08009D14
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x1a
	adds r0, #1
	ldrh r1, [r4, #0xc]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	adds r1, #1
	ldr r2, [r4, #8]
	bl sub_08009D4C
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x1a
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	ldr r2, [r4, #4]
	lsls r2, r2, #0xe
	asrs r2, r2, #0x1a
	ldrb r3, [r4, #6]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x1a
	str r5, [sp]
	str r5, [sp, #4]
	bl sub_08009C50
	movs r0, #0
	bl sub_08009D14
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x1a
	adds r0, #1
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	adds r1, #1
	ldr r2, [r4]
	bl sub_08009D4C
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08014834
sub_08014834: @ 0x08014834
	push {r4, lr}
	sub sp, #8
	adds r1, r0, #0
	adds r1, #0x20
	ldrb r4, [r1]
	lsls r4, r4, #0x1a
	asrs r4, r4, #0x1a
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x1a
	ldr r2, [r0, #0x20]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1b
	adds r0, #0x22
	ldrb r3, [r0]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1b
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_08009C50
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801486C
sub_0801486C: @ 0x0801486C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	str r3, [sp]
	str r0, [r7]
	ldrb r2, [r7, #4]
	movs r6, #0x40
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r1, r2
	strb r1, [r7, #4]
	ldrh r1, [r7, #4]
	movs r2, #0xfc
	lsls r2, r2, #4
	mov sl, r2
	mov r2, sl
	orrs r1, r2
	strh r1, [r7, #4]
	bl sub_08009CBC
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	mov sb, r1
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, [r7, #4]
	ldr r2, _08014A08 @ =0xFFFC0FFF
	mov r8, r2
	ands r1, r2
	orrs r1, r0
	str r1, [r7, #4]
	ldr r0, [r7]
	bl sub_08009CC8
	lsls r0, r0, #3
	adds r0, #8
	ldrb r2, [r7, #6]
	movs r4, #3
	adds r1, r4, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #6]
	ldr r0, _08014A0C @ =gUnknown_087B632C
	str r0, [r7, #8]
	ldrb r2, [r7, #0xc]
	adds r1, r6, #0
	ands r1, r2
	movs r2, #0x13
	orrs r1, r2
	strb r1, [r7, #0xc]
	ldrh r1, [r7, #0xc]
	mov r2, sl
	orrs r1, r2
	strh r1, [r7, #0xc]
	bl sub_08009CBC
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, [r7, #0xc]
	mov r2, r8
	ands r1, r2
	orrs r1, r0
	str r1, [r7, #0xc]
	ldr r0, [r7, #8]
	bl sub_08009CC8
	lsls r0, r0, #3
	adds r0, #8
	ldrb r2, [r7, #0xe]
	adds r1, r4, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #0xe]
	ldr r0, [sp]
	str r0, [r7, #0x10]
	str r5, [r7, #0x14]
	adds r5, #2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r1, sb
	ands r5, r1
	lsls r5, r5, #0xc
	ldr r0, [r7, #0x18]
	mov r2, r8
	ands r0, r2
	orrs r0, r5
	str r0, [r7, #0x18]
	ldrb r0, [r7, #0x1a]
	ands r4, r0
	movs r0, #0x10
	orrs r4, r0
	strb r4, [r7, #0x1a]
	ldr r0, [r7, #0x18]
	lsls r0, r0, #0xe
	asrs r0, r0, #0x1a
	movs r1, #2
	bl sub_0803D350
	ldr r1, [r7, #0x18]
	lsls r1, r1, #0xe
	asrs r1, r1, #0x1b
	adds r1, r1, r0
	movs r2, #0xf
	subs r2, r2, r1
	movs r0, #0x3f
	ands r2, r0
	ldrb r1, [r7, #0x18]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #0x18]
	ldrh r1, [r7, #0x18]
	ldr r2, _08014A10 @ =0xFFFFF03F
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r7, #0x18]
	ldr r0, _08014A14 @ =gUnknown_087B6FDC
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	ldrb r0, [r1]
	ands r6, r0
	movs r3, #1
	orrs r6, r3
	strb r6, [r1]
	ldrh r0, [r7, #0x20]
	ands r2, r0
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r7, #0x20]
	ldr r0, [r7, #0x20]
	ldr r1, _08014A18 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0xe8
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r7, #0x20]
	adds r2, r7, #0
	adds r2, #0x22
	ldrb r1, [r2]
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x1c
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r7, #0x22]
	ldr r0, _08014A1C @ =0xFFFFF83F
	ands r0, r1
	strh r0, [r7, #0x22]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r2]
	orrs r0, r3
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x25
	movs r0, #4
	strb r0, [r1]
	adds r2, #2
	ldrb r1, [r2]
	subs r0, #6
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014A08: .4byte 0xFFFC0FFF
_08014A0C: .4byte gUnknown_087B632C
_08014A10: .4byte 0xFFFFF03F
_08014A14: .4byte gUnknown_087B6FDC
_08014A18: .4byte 0xFFFE0FFF
_08014A1C: .4byte 0xFFFFF83F

	thumb_func_start sub_08014A20
sub_08014A20: @ 0x08014A20
	push {r4, r5, lr}
	adds r5, r2, #0
	cmp r3, #0
	beq _08014A58
	adds r2, r0, r3
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08014A44
	cmp r3, #0
	ble _08014A3C
	cmp r2, r5
	ble _08014A56
	adds r2, r5, #0
	b _08014A56
_08014A3C:
	cmp r2, r1
	bge _08014A56
	adds r2, r1, #0
	b _08014A56
_08014A44:
	rsbs r4, r1, #0
	subs r1, r5, r1
	adds r1, #1
	adds r0, r2, r1
	adds r0, r0, r4
	bl sub_0803D350
	adds r2, r0, #0
	subs r2, r2, r4
_08014A56:
	adds r0, r2, #0
_08014A58:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014A60
sub_08014A60: @ 0x08014A60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r6, #0x1c]
	adds r7, r0, r1
	movs r0, #0
	mov sb, r0
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _08014A92
	movs r0, #1
	mov sb, r0
_08014A92:
	movs r1, #0
	mov r8, r1
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08014AA0
	movs r1, #1
	mov r8, r1
_08014AA0:
	ldrh r0, [r6, #0x22]
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x1b
	str r4, [sp, #0xc]
	adds r1, r6, #0
	adds r1, #0x23
	ldrb r0, [r1]
	lsrs r5, r0, #3
	mov sl, r5
	str r1, [sp, #0x10]
	mov r0, sb
	cmp r0, #1
	bne _08014AC0
	mov r1, r8
	cmp r1, #1
	beq _08014B7E
_08014AC0:
	mov r0, sb
	cmp r0, #0
	bne _08014AE6
	ldrb r2, [r7, #4]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1b
	subs r2, #1
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	ldr r3, [sp, #4]
	bl sub_08014A20
	adds r4, r0, #0
_08014AE6:
	mov r1, r8
	cmp r1, #0
	bne _08014B0C
	ldrh r2, [r7, #4]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x1b
	subs r2, #1
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	ldr r3, [sp, #8]
	bl sub_08014A20
	adds r5, r0, #0
_08014B0C:
	ldrb r0, [r7, #4]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #0x1b
	muls r0, r5, r0
	adds r0, r4, r0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r0, r0, r1
	ldrh r1, [r0, #0xa]
	movs r0, #0xe0
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0xc0
	bne _08014B6C
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08014B62
	cmp r4, #0
	beq _08014B46
	lsrs r0, r2, #0x1b
	subs r0, #1
	cmp r4, r0
	blo _08014B4C
_08014B46:
	ldr r4, [sp, #0xc]
	movs r1, #1
	mov sb, r1
_08014B4C:
	cmp r5, #0
	beq _08014B5C
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	subs r0, #1
	cmp r5, r0
	blo _08014B72
_08014B5C:
	mov r5, sl
	movs r0, #1
	b _08014B70
_08014B62:
	ldr r1, [sp, #0xc]
	cmp r4, r1
	bne _08014B72
	cmp r5, sl
	bne _08014B72
_08014B6C:
	movs r0, #1
	mov sb, r0
_08014B70:
	mov r8, r0
_08014B72:
	mov r1, sb
	cmp r1, #1
	bne _08014AC0
	mov r0, r8
	cmp r0, #1
	bne _08014AC0
_08014B7E:
	movs r0, #0x1f
	ands r4, r0
	lsls r2, r4, #6
	ldrh r1, [r6, #0x22]
	ldr r0, _08014BB0 @ =0xFFFFF83F
	ands r0, r1
	orrs r0, r2
	strh r0, [r6, #0x22]
	lsls r2, r5, #3
	ldr r0, [sp, #0x10]
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	orrs r0, r2
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014BB0: .4byte 0xFFFFF83F

	thumb_func_start sub_08014BB4
sub_08014BB4: @ 0x08014BB4
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08014BD6
	movs r0, #1
	movs r1, #0x50
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014BD6:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08014BF2
	movs r0, #1
	movs r1, #0x78
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014BF2:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08014C0E
	movs r0, #1
	movs r1, #0x79
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014C0E:
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08014C2A
	movs r0, #1
	movs r1, #0x52
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014C2A:
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08014C46
	movs r0, #1
	movs r1, #0x7b
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014C46:
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014C62
	movs r0, #1
	movs r1, #0x7c
	bl sub_08000634
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08014C62:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08014C68
sub_08014C68: @ 0x08014C68
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r6, r1, #0
	mov r1, ip
	adds r1, #0x24
	ldrb r4, [r1]
	lsls r4, r4, #0x1b
	lsrs r2, r4, #0x1c
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	mov r3, ip
	ldr r2, [r3, #0x1c]
	adds r5, r2, r1
	ldrh r2, [r3, #0x22]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x1b
	mov r1, ip
	adds r1, #0x23
	ldrb r3, [r1]
	lsrs r3, r3, #3
	ldrb r1, [r5, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	muls r1, r3, r1
	adds r2, r2, r1
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	ldr r2, [r5]
	adds r3, r2, r1
	lsrs r4, r4, #0x1c
	ldr r1, _08014CC8 @ =gUnknown_02000020
	ldrh r2, [r1]
	movs r1, #1
	ands r1, r2
	cmp r1, #0
	beq _08014CCC
	ldrh r2, [r3, #0xa]
	movs r1, #0xe0
	lsls r1, r1, #1
	ands r1, r2
	cmp r1, #0x40
	bne _08014CCC
	ldrb r0, [r3, #0xb]
	lsls r0, r0, #0x1c
	lsrs r4, r0, #0x1d
	b _08014CD2
	.align 2, 0
_08014CC8: .4byte gUnknown_02000020
_08014CCC:
	cmp r6, #0
	beq _08014D34
	adds r4, r4, r6
_08014CD2:
	mov r0, ip
	adds r0, #0x25
	ldrb r0, [r0]
	subs r0, #1
	cmp r4, r0
	ble _08014CE0
	movs r4, #0
_08014CE0:
	cmp r4, #0
	bge _08014CE6
	adds r4, r0, #0
_08014CE6:
	mov r3, ip
	adds r3, #0x24
	movs r0, #0xf
	ands r4, r0
	lsls r2, r4, #1
	ldrb r1, [r3]
	movs r0, #0x1f
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r2, ip
	ldr r0, [r2, #0x1c]
	adds r5, r0, r1
	ldrh r1, [r2, #0x22]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1b
	mov r0, ip
	adds r0, #0x23
	ldrb r2, [r0]
	lsrs r2, r2, #3
	ldrb r0, [r5, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r5]
	adds r3, r1, r0
	ldrh r0, [r3, #0xa]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1d
_08014D34:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08014D3C
sub_08014D3C: @ 0x08014D3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	mov sb, r1
	adds r6, r3, #0
	cmp r1, #0
	bne _08014D5A
	movs r7, #3
	movs r0, #0
	str r0, [sp]
	b _08014D60
_08014D5A:
	movs r7, #0
	movs r1, #3
	str r1, [sp]
_08014D60:
	movs r0, #3
	movs r1, #2
	bl sub_0803D350
	adds r0, #1
	movs r1, #0xf
	mov r8, r1
	subs r5, r1, r0
	adds r6, #2
	adds r0, r7, #0
	bl sub_08009D14
	ldr r2, _08014DC4 @ =gUnknown_087B6350
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08009D4C
	lsls r0, r5, #3
	adds r7, r0, #0
	subs r7, #0xc
	lsls r4, r6, #3
	movs r0, #3
	movs r1, #2
	bl sub_0803D350
	adds r0, #1
	mov r1, r8
	subs r5, r1, r0
	adds r6, #2
	ldr r0, [sp]
	bl sub_08009D14
	ldr r2, _08014DC8 @ =gUnknown_087B6358
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08009D4C
	mov r0, sb
	cmp r0, #0
	bne _08014DCC
	ldr r0, [sp, #0x24]
	bl sub_08009F50
	adds r1, r0, #0
	adds r1, r7, r1
	mov r0, sl
	adds r2, r4, #0
	bl sub_08009EDC
	b _08014DE0
	.align 2, 0
_08014DC4: .4byte gUnknown_087B6350
_08014DC8: .4byte gUnknown_087B6358
_08014DCC:
	ldr r0, [sp, #0x24]
	bl sub_08009F50
	adds r1, r0, #0
	adds r1, r7, r1
	adds r2, r4, #0
	adds r2, #0x10
	mov r0, sl
	bl sub_08009EDC
_08014DE0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08014DF0
sub_08014DF0: @ 0x08014DF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sb, r0
	mov r8, r1
	cmp r1, #0
	bne _08014E40
	ldr r0, [r0, #0x10]
	bl sub_08009CBC
	adds r6, r0, #2
	ldr r4, _08014E3C @ =gUnknown_087B6340
	adds r0, r4, #0
	bl sub_08009CBC
	adds r0, #2
	cmp r6, r0
	bhs _08014E22
	adds r0, r4, #0
	bl sub_08009CBC
	adds r6, r0, #2
_08014E22:
	movs r0, #0xa
	str r0, [sp, #0x6c]
	adds r0, r6, #0
	movs r1, #2
	bl sub_0803D350
	asrs r1, r6, #1
	adds r1, r1, r0
	movs r0, #0xf
	subs r7, r0, r1
	str r7, [sp, #0x64]
	str r6, [sp, #0x60]
	b _08014E52
	.align 2, 0
_08014E3C: .4byte gUnknown_087B6340
_08014E40:
	movs r6, #0xf
	movs r1, #4
	str r1, [sp, #0x6c]
	movs r0, #0xf
	movs r1, #2
	bl sub_0803D350
	adds r0, #7
	subs r7, r6, r0
_08014E52:
	movs r2, #0
	str r2, [sp, #0x68]
	movs r3, #0
	str r3, [sp, #0x5c]
	mov sl, r3
	bl sub_08009BD0
	movs r3, #0xe0
	lsls r3, r3, #0x13
	add r4, sp, #0x54
	ldrh r2, [r3]
	ldr r1, _08014F30 @ =0x0000FCFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldrh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r2, r5, #0
	orrs r0, r2
	strh r0, [r4]
	ldrh r0, [r4]
	strh r0, [r3]
	adds r3, #8
	ldrh r0, [r3]
	ands r1, r0
	strh r1, [r4]
	ldrh r0, [r4]
	orrs r0, r2
	strh r0, [r4]
	ldrh r0, [r4]
	strh r0, [r3]
	ldr r0, [sp, #0x6c]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	add r0, sp, #0xc
	adds r1, r7, #0
	movs r2, #7
	adds r3, r6, #0
	bl sub_08009C7C
	movs r0, #1
	bl sub_08009CB0
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_08009CD4
	movs r2, #8
	str r2, [sp, #0x58]
	mov r3, r8
	cmp r3, #0
	bne _08014F38
	mov r5, sb
	ldr r0, [r5, #0x10]
	bl sub_08009CBC
	adds r6, r0, #0
	movs r1, #2
	bl sub_0803D350
	asrs r1, r6, #1
	adds r1, r1, r0
	movs r0, #0xf
	subs r7, r0, r1
	movs r0, #2
	bl sub_08009D14
	ldr r2, [r5, #0x10]
	adds r0, r7, #0
	movs r1, #8
	bl sub_08009D4C
	ldr r4, _08014F34 @ =gUnknown_087B6340
	adds r0, r4, #0
	bl sub_08009CBC
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x60]
	adds r1, r2, r3
	subs r1, r1, r0
	subs r7, r1, #1
	movs r5, #0xa
	str r5, [sp, #0x58]
	movs r0, #0
	bl sub_08009D14
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl sub_08009D4C
	mov r4, sb
	adds r4, #0x26
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	mov r0, r8
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	adds r2, r7, #0
	movs r3, #0xa
	bl sub_08014D3C
	b _08014F66
	.align 2, 0
_08014F30: .4byte 0x0000FCFF
_08014F34: .4byte gUnknown_087B6340
_08014F38:
	ldr r5, _08014FEC @ =gUnknown_087B6360
	adds r0, r5, #0
	bl sub_08009CBC
	adds r6, r0, #0
	movs r1, #2
	bl sub_0803D350
	asrs r1, r6, #1
	adds r1, r1, r0
	movs r0, #0xf
	subs r7, r0, r1
	mov r4, sb
	adds r4, #0x26
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	adds r0, r7, #0
	movs r1, #8
	adds r2, r5, #0
	bl sub_08009D4C
_08014F66:
	ldr r6, _08014FF0 @ =gUnknown_02000020
	adds r5, r4, #0
_08014F6A:
	bl sub_08000BC0
	mov r1, r8
	cmp r1, #0
	bne _08014FB2
	ldrh r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08014F94
	movs r2, #0
	str r2, [sp, #0x5c]
	ldr r3, [sp, #0x68]
	cmp r3, #0
	beq _08014F90
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
_08014F90:
	movs r0, #0
	str r0, [sp, #0x68]
_08014F94:
	ldrh r1, [r6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08014FB2
	movs r1, #1
	str r1, [sp, #0x5c]
	ldr r2, [sp, #0x68]
	cmp r2, #1
	beq _08014FAE
	ldrb r0, [r5]
	orrs r0, r1
	strb r0, [r5]
_08014FAE:
	movs r3, #1
	str r3, [sp, #0x68]
_08014FB2:
	bl sub_08009BD0
	mov r0, r8
	cmp r0, #0
	bne _08014FCC
	mov r1, sl
	str r1, [sp]
	movs r0, #2
	ldr r1, [sp, #0x5c]
	adds r2, r7, #0
	ldr r3, [sp, #0x58]
	bl sub_08014D3C
_08014FCC:
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015006
	ldr r2, [sp, #0x5c]
	cmp r2, #0
	bne _08014FF4
	movs r6, #1
	mov r3, r8
	cmp r3, #0
	bne _0801502A
	ldrb r0, [r5]
	movs r1, #2
	b _08015000
	.align 2, 0
_08014FEC: .4byte gUnknown_087B6360
_08014FF0: .4byte gUnknown_02000020
_08014FF4:
	movs r6, #0
	mov r0, r8
	cmp r0, #0
	bne _0801502A
	ldrb r0, [r5]
	movs r1, #4
_08015000:
	orrs r0, r1
	strb r0, [r5]
	b _0801502A
_08015006:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801501A
	mov r0, sb
	bl sub_08014BB4
	movs r1, #1
	add sl, r1
	b _08014F6A
_0801501A:
	movs r6, #0
	mov r2, r8
	cmp r2, #0
	bne _0801502A
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
_0801502A:
	add r0, sp, #0xc
	bl sub_08009CA4
	movs r0, #0
	bl sub_08009CB0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009CD4
	mov r3, r8
	cmp r3, #0
	bne _0801506C
	ldr r3, _08015064 @ =0x07000010
	ldrh r1, [r3]
	ldr r0, _08015068 @ =0x0000FCFF
	ands r0, r1
	add r5, sp, #0x54
	strh r0, [r5]
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r5]
	strh r0, [r3]
	b _08015074
	.align 2, 0
_08015064: .4byte 0x07000010
_08015068: .4byte 0x0000FCFF
_0801506C:
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
_08015074:
	adds r0, r6, #0
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015088
sub_08015088: @ 0x08015088
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r3, [r4, #0x1c]
	adds r3, r3, r1
	ldrh r1, [r4, #0x22]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1b
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r2, [r0]
	lsrs r2, r2, #3
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r3]
	adds r5, r1, r0
	ldr r0, [r4, #0x10]
	bl sub_08009CBC
	adds r3, r0, #0
	movs r6, #0
	ldr r0, _08015100 @ =gUnknown_02000020
	ldrh r2, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080150E2
	ldrh r1, [r5, #0xa]
	movs r0, #0xe0
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0x80
	beq _080150EA
_080150E2:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801510C
_080150EA:
	cmp r3, #0
	beq _08015104
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014DF0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801510C
	movs r6, #1
	b _0801510C
	.align 2, 0
_08015100: .4byte gUnknown_02000020
_08015104:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08014DF0
_0801510C:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08015114
sub_08015114: @ 0x08015114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r0, r1, #0
	mov r8, r2
	movs r1, #0
	str r1, [sp]
	mov sl, r1
	cmp r1, r8
	bhs _08015174
	mov r7, sb
	adds r1, r7, #1
	str r1, [sp, #4]
	adds r6, r0, #4
	adds r5, r0, #3
	adds r4, r0, #0
_0801513C:
	adds r0, r4, #0
	bl sub_0803E06C
	adds r2, r0, #0
	mov r0, sb
	adds r1, r4, #0
	bl sub_0803E118
	cmp r0, #0
	bne _08015166
	movs r0, #2
	subs r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r7]
	ldrb r0, [r6]
	ldr r1, [sp, #4]
	strb r0, [r1]
	movs r0, #1
	str r0, [sp]
	b _08015174
_08015166:
	adds r6, #8
	adds r5, #8
	adds r4, #8
	movs r1, #1
	add sl, r1
	cmp sl, r8
	blo _0801513C
_08015174:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015188
sub_08015188: @ 0x08015188
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r3, [r5, #0x1c]
	adds r3, r3, r1
	ldrh r1, [r5, #0x22]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1b
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r2, [r0]
	lsrs r2, r2, #3
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	muls r0, r2, r0
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r3]
	adds r6, r1, r0
	movs r7, #0
	ldr r0, [r5, #0x10]
	bl sub_08009CBC
	adds r4, r0, #0
	ldr r0, _08015208 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015274
	ldrh r0, [r6, #0xa]
	movs r1, #0xe0
	lsls r1, r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0801520C
_080151E2:
	ldr r0, [r5, #0x14]
	cmp r4, r0
	bhs _080152A2
	ldr r4, [r5, #0x10]
	adds r0, r6, #0
	bl sub_0803E06C
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0803E0B0
	movs r7, #1
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	movs r1, #2
	b _0801529C
	.align 2, 0
_08015208: .4byte gUnknown_02000020
_0801520C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08015240
	cmp r4, #0
	beq _080151E2
	lsls r1, r4, #1
	subs r1, #2
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	ldr r1, _0801523C @ =gUnknown_087B700C
	movs r2, #0x29
	bl sub_08015114
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080151E2
	movs r7, #1
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #2
	b _080152AA
	.align 2, 0
_0801523C: .4byte gUnknown_087B700C
_08015240:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	bne _080152AE
	cmp r4, #0
	beq _080151E2
	lsls r1, r4, #1
	subs r1, #2
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	ldr r1, _08015270 @ =gUnknown_087B7154
	movs r2, #0xa
	bl sub_08015114
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080151E2
	movs r7, #1
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #2
	b _080152AA
	.align 2, 0
_08015270: .4byte gUnknown_087B7154
_08015274:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080152AE
	cmp r4, #0
	beq _080152A2
	ldr r0, [r5, #0x10]
	lsls r1, r4, #1
	adds r0, r1, r0
	subs r0, #1
	strb r7, [r0]
	ldr r0, [r5, #0x10]
	adds r1, r1, r0
	subs r1, #2
	strb r7, [r1]
	movs r7, #1
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	movs r1, #4
_0801529C:
	orrs r0, r1
	strb r0, [r2]
	b _080152AE
_080152A2:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #8
_080152AA:
	orrs r1, r2
	strb r1, [r0]
_080152AE:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080152B8
sub_080152B8: @ 0x080152B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	adds r1, r4, #0
	adds r1, #0x24
	str r1, [sp, #0xc]
	adds r6, r4, #0
	adds r6, #0x26
_080152D4:
	movs r2, #0
	str r2, [sp]
	mov sl, r2
	mov sb, r2
	bl sub_08000BC0
	ldr r3, [sp, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r5, r0, #0x1c
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08015414 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r1, r0
	cmp r1, #0
	beq _0801530E
	ldr r2, _08015418 @ =0x0000FFFF
_0801530E:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08014C68
	cmp r0, #3
	bne _08015320
	movs r0, #1
	str r0, [sp, #4]
_08015320:
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r5, r0
	beq _08015338
	movs r2, #1
	mov sl, r2
	ldrb r0, [r6]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6]
_08015338:
	ldrh r0, [r4, #0x22]
	lsls r0, r0, #0x15
	lsrs r7, r0, #0x1b
	adds r5, r4, #0
	adds r5, #0x23
	ldrb r0, [r5]
	lsrs r0, r0, #3
	mov r8, r0
	movs r2, #0
	ldr r0, _0801541C @ =gUnknown_02000004
	ldrh r3, [r0]
	movs r0, #0x10
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08015364
	ldr r1, _08015418 @ =0x0000FFFF
_08015364:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0801536E
	ldr r2, _08015418 @ =0x0000FFFF
_0801536E:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08015378
	movs r2, #1
_08015378:
	ldr r3, [sp, #4]
	cmp r3, #1
	bne _08015380
	ldr r2, _08015418 @ =0x0000FFFF
_08015380:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08014A60
	ldrh r0, [r4, #0x22]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1b
	cmp r7, r0
	beq _0801539C
	movs r0, #1
	mov sb, r0
_0801539C:
	ldrb r0, [r5]
	lsrs r0, r0, #3
	cmp r8, r0
	beq _080153A8
	movs r1, #1
	mov sb, r1
_080153A8:
	mov r2, sb
	cmp r2, #0
	beq _080153B6
	ldrb r0, [r6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6]
_080153B6:
	adds r0, r4, #0
	bl sub_08015188
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080153C8
	movs r3, #1
	str r3, [sp]
_080153C8:
	bl sub_08009BD0
	ldr r0, [sp]
	cmp r0, #1
	bne _080153D8
	adds r0, r4, #0
	bl sub_0801458C
_080153D8:
	adds r0, r4, #0
	ldr r1, [sp, #8]
	bl sub_080146AC
	mov r1, sb
	cmp r1, #1
	bne _080153EA
	movs r2, #1
	mov sl, r2
_080153EA:
	mov r3, sl
	cmp r3, #1
	bne _080153F6
	adds r0, r4, #0
	bl sub_080145FC
_080153F6:
	adds r0, r4, #0
	bl sub_08015088
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08015420
	adds r0, r4, #0
	bl sub_08014BB4
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	b _080152D4
	.align 2, 0
_08015414: .4byte gUnknown_02000020
_08015418: .4byte 0x0000FFFF
_0801541C: .4byte gUnknown_02000004
_08015420:
	adds r0, r4, #0
	bl sub_08014BB4
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08015438
sub_08015438: @ 0x08015438
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_08009B94
	bl sub_08000B84
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0801486C
	movs r0, #0
	movs r1, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_08009C44
	mov r0, sp
	bl sub_0801477C
	mov r0, sp
	bl sub_080147AC
	mov r0, sp
	bl sub_08014834
	mov r0, sp
	bl sub_0801458C
	mov r0, sp
	bl sub_080145FC
	mov r0, sp
	movs r1, #0
	bl sub_080146AC
	bl sub_08009C04
	mov r0, sp
	bl sub_080152B8
	adds r4, r0, #0
	bl sub_08009BF4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080154B0 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080154B0: .4byte 0x000080FF

	thumb_func_start sub_080154B4
sub_080154B4: @ 0x080154B4
	push {lr}
	ldr r0, _080154C8 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080154CC
	movs r0, #0
	b _080154CE
	.align 2, 0
_080154C8: .4byte gUnknown_02000020
_080154CC:
	movs r0, #1
_080154CE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080154D4
sub_080154D4: @ 0x080154D4
	ldr r1, _080154DC @ =0x04000050
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080154DC: .4byte 0x04000050

	thumb_func_start sub_080154E0
sub_080154E0: @ 0x080154E0
	ldr r1, _080154E8 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	bx lr
	.align 2, 0
_080154E8: .4byte 0x04000050

	thumb_func_start sub_080154EC
sub_080154EC: @ 0x080154EC
	ldr r1, _080154F4 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	bx lr
	.align 2, 0
_080154F4: .4byte 0x04000050

	thumb_func_start sub_080154F8
sub_080154F8: @ 0x080154F8
	ldr r1, _08015500 @ =0x04000054
	strh r0, [r1]
	bx lr
	.align 2, 0
_08015500: .4byte 0x04000054

	thumb_func_start sub_08015504
sub_08015504: @ 0x08015504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r1
	adds r6, r2, #0
	mov sl, r3
	cmp r0, #0
	bne _0801551E
	bl sub_080154EC
	b _08015522
_0801551E:
	bl sub_080154E0
_08015522:
	movs r0, #0
	mov sb, r0
	movs r7, #0
	cmp sb, r6
	bhs _0801558C
	subs r5, r6, #1
	movs r4, #0
_08015530:
	bl sub_08000BC0
	bl sub_08009BD0
	mov r0, r8
	cmp r0, #0
	bne _0801555C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803DD84
	lsls r0, r0, #4
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803DD84
	adds r1, r0, #0
	movs r0, #0x10
	subs r0, r0, r1
	bl sub_080154F8
	b _08015572
_0801555C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803DD84
	lsls r0, r0, #4
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803DD84
	bl sub_080154F8
_08015572:
	mov r0, sl
	cmp r0, #1
	bne _08015580
	bl sub_080154B4
	cmp r0, #1
	beq _080155A0
_08015580:
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r7, #1
	cmp r7, r6
	blo _08015530
_0801558C:
	mov r0, sb
	cmp r0, #0
	bne _080155AC
	mov r0, r8
	cmp r0, #0
	bne _080155A6
	movs r0, #0
	bl sub_080154F8
	b _080155AC
_080155A0:
	movs r0, #1
	mov sb, r0
	b _080155AC
_080155A6:
	movs r0, #0x10
	bl sub_080154F8
_080155AC:
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080155BC
sub_080155BC: @ 0x080155BC
	push {r4, lr}
	movs r4, #0
	cmp r0, #0
	beq _080155DC
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08015504
	bl sub_08017040
	cmp r0, #1
	bne _080155DC
	b _080155E4
_080155DA:
	movs r4, #0
_080155DC:
	bl sub_08016D88
	cmp r0, #1
	bne _080155E6
_080155E4:
	movs r4, #1
_080155E6:
	adds r0, r4, #0
	bl sub_08017440
	cmp r0, #0
	bne _080155DA
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080155F8
sub_080155F8: @ 0x080155F8
	push {r4, r5, lr}
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r4, _0801561C @ =gUnknown_0834C008
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080002C4
	ldr r0, _08015620 @ =0x05000200
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080002C4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801561C: .4byte gUnknown_0834C008
_08015620: .4byte 0x05000200

	thumb_func_start sub_08015624
sub_08015624: @ 0x08015624
	push {r4, r5, r6, lr}
	ldr r1, _08015678 @ =gUnknown_02038750
	movs r0, #0
	str r0, [r1]
	ldr r1, _0801567C @ =0x0400000C
	ldr r2, _08015680 @ =0x00004085
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08015684 @ =0x0000408A
	strh r0, [r1]
	movs r3, #0
	movs r0, #0
	movs r6, #0xc0
	lsls r6, r6, #0x13
_08015642:
	movs r2, #0
	adds r5, r0, #1
	lsls r4, r0, #5
_08015648:
	adds r1, r3, #1
	lsls r1, r1, #8
	orrs r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, r2
	adds r0, r0, r6
	strh r1, [r0]
	adds r0, r3, #2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _08015648
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08015642
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015678: .4byte gUnknown_02038750
_0801567C: .4byte 0x0400000C
_08015680: .4byte 0x00004085
_08015684: .4byte 0x0000408A

	thumb_func_start sub_08015688
sub_08015688: @ 0x08015688
	push {lr}
	sub sp, #4
	adds r2, r1, #0
	cmp r0, #0
	bne _0801569A
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #3
	b _080156A0
_0801569A:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #4
_080156A0:
	adds r0, r3, #0
	strh r0, [r1]
	cmp r2, #1
	bne _080156B6
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r1, sp
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
	b _080156C2
_080156B6:
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r0, sp
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
_080156C2:
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080156CC
sub_080156CC: @ 0x080156CC
	push {r4, lr}
	adds r4, r1, #0
	adds r1, r3, #0
	cmp r0, #0
	bne _080156E0
	ldr r0, _080156DC @ =0x06004000
	b _080156EE
	.align 2, 0
_080156DC: .4byte 0x06004000
_080156E0:
	cmp r4, #0
	bne _080156EC
	ldr r0, _080156E8 @ =0x06008000
	b _080156EE
	.align 2, 0
_080156E8: .4byte 0x06008000
_080156EC:
	ldr r0, _08015704 @ =0x0600C000
_080156EE:
	adds r1, r1, r0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08015708
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r2, [sp, #0xc]
	bl sub_080002C4
	b _0801570E
	.align 2, 0
_08015704: .4byte 0x0600C000
_08015708:
	adds r0, r2, #0
	bl sub_0803D358
_0801570E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08015714
sub_08015714: @ 0x08015714
	push {lr}
	sub sp, #4
	mov r2, sp
	ldr r0, _0801573C @ =0x0400000E
	ldrh r1, [r0]
	ldr r0, _08015740 @ =0x0000FFF3
	ands r0, r1
	strh r0, [r2]
	ldr r3, _08015744 @ =gUnknown_02038750
	ldr r0, [r3]
	cmp r0, #0
	bne _08015748
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #0xc
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	b _08015756
	.align 2, 0
_0801573C: .4byte 0x0400000E
_08015740: .4byte 0x0000FFF3
_08015744: .4byte gUnknown_02038750
_08015748:
	mov r2, sp
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
_08015756:
	str r0, [r3]
	ldr r0, _08015768 @ =0x0400000E
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08015768: .4byte 0x0400000E

	thumb_func_start sub_0801576C
sub_0801576C: @ 0x0801576C
	ldr r0, _08015774 @ =gUnknown_02038750
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08015774: .4byte gUnknown_02038750

	thumb_func_start sub_08015778
sub_08015778: @ 0x08015778
	push {lr}
	ldr r0, _08015788 @ =gUnknown_02038750
	ldr r0, [r0]
	cmp r0, #0
	beq _0801578C
	movs r0, #0
	b _0801578E
	.align 2, 0
_08015788: .4byte gUnknown_02038750
_0801578C:
	movs r0, #1
_0801578E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015794
sub_08015794: @ 0x08015794
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0x14]
	mov r8, r1
	mov sb, r2
	mov sl, r3
	ldr r7, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	ldr r5, [sp, #0x40]
	ldr r6, [sp, #0x44]
	movs r0, #0x80
	movs r1, #2
	bl sub_0803D34C
	add r0, r8
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0x80
	movs r1, #2
	bl sub_0803D34C
	add r0, sb
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r0, sp
	mov r1, sl
	strh r1, [r0, #8]
	strh r7, [r0, #0xa]
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_0803D7D4
	mov r1, sp
	strh r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #0
	bl sub_0803D7D4
	mov r1, sp
	strh r0, [r1, #0xe]
	mov r0, sp
	lsls r6, r6, #8
	strh r6, [r0, #0x10]
	ldr r1, [sp, #0x14]
	movs r2, #1
	bl sub_0803D344
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08015818
sub_08015818: @ 0x08015818
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	ldr r1, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r2, [sp]
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_08015794
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0801583C
sub_0801583C: @ 0x0801583C
	push {lr}
	adds r3, r1, #0
	cmp r0, #0
	bne _0801584C
	ldr r1, _08015848 @ =0x04000020
	b _0801584E
	.align 2, 0
_08015848: .4byte 0x04000020
_0801584C:
	ldr r1, _08015888 @ =0x04000030
_0801584E:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #6]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #8]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801588C @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0xc]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08015888: .4byte 0x04000030
_0801588C: .4byte 0x0FFF0000

	thumb_func_start sub_08015890
sub_08015890: @ 0x08015890
	push {r4, lr}
	sub sp, #4
	cmp r0, #0
	bne _080158D8
	mov r3, sp
	ldr r4, _080158CC @ =0x0400000C
	ldrh r1, [r4]
	ldr r2, _080158D0 @ =0x0000FFFC
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
	orrs r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, sp
	ldr r3, _080158D4 @ =0x0400000E
	ldrh r0, [r3]
	ands r2, r0
	strh r2, [r1]
	mov r2, sp
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #2
	b _08015908
	.align 2, 0
_080158CC: .4byte 0x0400000C
_080158D0: .4byte 0x0000FFFC
_080158D4: .4byte 0x0400000E
_080158D8:
	mov r3, sp
	ldr r4, _0801591C @ =0x0400000C
	ldrh r1, [r4]
	ldr r2, _08015920 @ =0x0000FFFC
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #2
	orrs r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
	mov r1, sp
	ldr r3, _08015924 @ =0x0400000E
	ldrh r0, [r3]
	ands r2, r0
	strh r2, [r1]
	mov r2, sp
	mov r0, sp
	ldrh r0, [r0]
	movs r1, #1
_08015908:
	orrs r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r3]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801591C: .4byte 0x0400000C
_08015920: .4byte 0x0000FFFC
_08015924: .4byte 0x0400000E

	thumb_func_start sub_08015928
sub_08015928: @ 0x08015928
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08015944 @ =gUnknown_02039E20
	ldr r0, [r0]
	lsls r0, r0, #5
	ldr r5, _08015948 @ =0x06010000
	adds r3, r0, r5
	cmp r1, #0
	bne _0801594C
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080002C4
	b _08015954
	.align 2, 0
_08015944: .4byte gUnknown_02039E20
_08015948: .4byte 0x06010000
_0801594C:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0803D358
_08015954:
	ldr r1, _08015964 @ =gUnknown_02039E20
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x20
	str r2, [r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08015964: .4byte gUnknown_02039E20

	thumb_func_start sub_08015968
sub_08015968: @ 0x08015968
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	cmp r3, #0x20
	bhi _0801599C
	lsls r2, r3, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	movs r5, #0x84
	lsls r5, r5, #6
	adds r0, r5, #0
	orrs r1, r0
	strh r1, [r2]
	lsls r0, r3, #9
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #2]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	orrs r4, r0
	strh r4, [r2, #4]
_0801599C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080159A4
sub_080159A4: @ 0x080159A4
	push {lr}
	cmp r0, #0x20
	bhi _080159C0
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0
	strh r1, [r0, #2]
	strh r1, [r0, #4]
_080159C0:
	pop {r0}
	bx r0

	thumb_func_start sub_080159C4
sub_080159C4: @ 0x080159C4
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	cmp r0, #0x20
	bhi _08015A0A
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	mov r2, sp
	ldrh r1, [r4]
	ldr r0, _080159F0 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	cmp r3, #0
	bne _080159F4
	mov r0, sp
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	b _080159FE
	.align 2, 0
_080159F0: .4byte 0x0000FCFF
_080159F4:
	mov r2, sp
	mov r0, sp
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #1
_080159FE:
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
_08015A0A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08015A14
sub_08015A14: @ 0x08015A14
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08015A88 @ =gUnknown_02039E20
	movs r0, #0
	str r0, [r1]
	ldr r0, _08015A8C @ =gUnknown_0834BE88
	movs r1, #1
	movs r2, #0
	bl sub_08015928
	str r0, [sp]
	ldr r0, _08015A90 @ =gUnknown_0834C208
	movs r1, #1
	movs r2, #0
	bl sub_08015928
	str r0, [sp, #4]
	movs r4, #0xe0
	lsls r4, r4, #0x13
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, #0
	movs r2, #0
	bl sub_08000498
	movs r5, #0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
_08015A4E:
	lsls r0, r5, #3
	adds r0, r0, r4
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _08015A4E
	movs r5, #0
_08015A60:
	lsls r0, r5, #2
	add r0, sp
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08015968
	adds r0, r5, #0
	movs r1, #0
	bl sub_080159C4
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08015A60
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015A88: .4byte gUnknown_02039E20
_08015A8C: .4byte gUnknown_0834BE88
_08015A90: .4byte gUnknown_0834C208

	thumb_func_start sub_08015A94
sub_08015A94: @ 0x08015A94
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	mov r8, r0
	adds r4, r2, #0
	adds r5, r3, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0803D7D4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _08015AFC @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r6
	orrs r1, r0
	str r1, [sp]
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_0803D7D4
	lsls r0, r0, #0x10
	ldr r2, _08015B00 @ =0x0000FFFF
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x10
	ldr r0, [sp, #4]
	ands r0, r6
	orrs r0, r5
	str r0, [sp, #4]
	mov r0, sp
	mov r1, r8
	movs r2, #1
	movs r3, #2
	bl sub_0803D360
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015AFC: .4byte 0xFFFF0000
_08015B00: .4byte 0x0000FFFF

	thumb_func_start sub_08015B04
sub_08015B04: @ 0x08015B04
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r6, #0x20
	bhi _08015B50
	lsls r2, r6, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0xff
	ands r4, r1
	orrs r0, r4
	strh r0, [r2]
	ldrh r1, [r2, #2]
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldr r4, _08015B58 @ =0x000001FF
	adds r1, r4, #0
	ands r5, r1
	orrs r0, r5
	strh r0, [r2, #2]
	lsls r1, r6, #5
	ldr r0, _08015B5C @ =0x07000006
	adds r1, r1, r0
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	strh r0, [r1, #8]
	ldrh r0, [r3, #4]
	strh r0, [r1, #0x10]
	ldrh r0, [r3, #6]
	strh r0, [r1, #0x18]
_08015B50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015B58: .4byte 0x000001FF
_08015B5C: .4byte 0x07000006

	thumb_func_start sub_08015B60
sub_08015B60: @ 0x08015B60
	ldr r1, _08015B68 @ =0x04000050
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08015B68: .4byte 0x04000050

	thumb_func_start sub_08015B6C
sub_08015B6C: @ 0x08015B6C
	ldr r1, _08015B78 @ =0x04000050
	ldr r2, _08015B7C @ =0x00002050
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08015B78: .4byte 0x04000050
_08015B7C: .4byte 0x00002050

	thumb_func_start sub_08015B80
sub_08015B80: @ 0x08015B80
	push {lr}
	cmp r0, #0
	bne _08015B94
	ldr r1, _08015B8C @ =0x04000050
	ldr r2, _08015B90 @ =0x00002044
	b _08015B98
	.align 2, 0
_08015B8C: .4byte 0x04000050
_08015B90: .4byte 0x00002044
_08015B94:
	ldr r1, _08015BA0 @ =0x04000050
	ldr r2, _08015BA4 @ =0x00002048
_08015B98:
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08015BA0: .4byte 0x04000050
_08015BA4: .4byte 0x00002048

	thumb_func_start sub_08015BA8
sub_08015BA8: @ 0x08015BA8
	push {lr}
	cmp r0, #0
	bne _08015BBC
	ldr r1, _08015BB4 @ =0x04000050
	ldr r2, _08015BB8 @ =0x00002054
	b _08015BC0
	.align 2, 0
_08015BB4: .4byte 0x04000050
_08015BB8: .4byte 0x00002054
_08015BBC:
	ldr r1, _08015BC8 @ =0x04000050
	ldr r2, _08015BCC @ =0x00002058
_08015BC0:
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08015BC8: .4byte 0x04000050
_08015BCC: .4byte 0x00002058

	thumb_func_start sub_08015BD0
sub_08015BD0: @ 0x08015BD0
	ldr r1, _08015BDC @ =0x04000050
	ldr r2, _08015BE0 @ =0x00002448
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08015BDC: .4byte 0x04000050
_08015BE0: .4byte 0x00002448

	thumb_func_start sub_08015BE4
sub_08015BE4: @ 0x08015BE4
	ldr r1, _08015BF0 @ =0x04000050
	ldr r2, _08015BF4 @ =0x0000207F
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08015BF0: .4byte 0x04000050
_08015BF4: .4byte 0x0000207F

	thumb_func_start sub_08015BF8
sub_08015BF8: @ 0x08015BF8
	ldr r2, _08015C04 @ =0x04000052
	lsls r1, r1, #8
	orrs r1, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_08015C04: .4byte 0x04000052

	thumb_func_start sub_08015C08
sub_08015C08: @ 0x08015C08
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r1, #0
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	movs r1, #0x60
	rsbs r1, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	adds r3, r6, #0
	bl sub_08015794
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015C30
sub_08015C30: @ 0x08015C30
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r1, #0
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	movs r1, #0x60
	rsbs r1, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	adds r3, r6, #0
	bl sub_08015794
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08015C58
sub_08015C58: @ 0x08015C58
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	ldr r1, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r2, [sp]
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	movs r1, #0x10
	movs r2, #0x20
	adds r3, r5, #0
	bl sub_08015794
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08015C7C
sub_08015C7C: @ 0x08015C7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	ldr r1, _08015D04 @ =gUnknown_08324EC0
	add r0, sp, #8
	movs r2, #2
	bl sub_0803DEBC
	add r4, sp, #0xc
	ldr r1, _08015D08 @ =gUnknown_08324EC2
	adds r0, r4, #0
	movs r2, #2
	bl sub_0803DEBC
	movs r0, #0xc8
	str r0, [sp, #0x30]
	subs r0, #0xcc
	str r0, [sp, #0x34]
	movs r7, #0x97
	movs r6, #0x97
	movs r0, #0
	mov sl, r0
	movs r0, #0x80
	lsls r0, r0, #7
	movs r1, #2
	bl sub_0803D34C
	str r0, [sp, #0x44]
	movs r1, #0
	mov r8, r1
	movs r0, #0
	str r0, [sp, #0x48]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp, #0x4c]
	str r0, [sp, #0x50]
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	movs r5, #0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x54]
	mov r0, sp
	adds r0, #0x20
	str r0, [sp, #0x58]
	movs r1, #1
	mov sb, r1
	movs r4, #0
_08015CEC:
	bl sub_08000BC0
	cmp r5, #0
	bne _08015D10
	mov r0, sb
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	ldr r2, _08015D0C @ =gUnknown_08370BDC
	b _08015D74
	.align 2, 0
_08015D04: .4byte gUnknown_08324EC0
_08015D08: .4byte gUnknown_08324EC2
_08015D0C: .4byte gUnknown_08370BDC
_08015D10:
	cmp r5, #1
	bne _08015D24
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	ldr r2, _08015D20 @ =gUnknown_08371490
	b _08015D54
	.align 2, 0
_08015D20: .4byte gUnknown_08371490
_08015D24:
	cmp r5, #2
	bne _08015D40
	bl sub_0801576C
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	ldr r2, _08015D3C @ =gUnknown_0832C2DC
	b _08015D74
	.align 2, 0
_08015D3C: .4byte gUnknown_0832C2DC
_08015D40:
	cmp r5, #3
	bne _08015D60
	bl sub_0801576C
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	ldr r2, _08015D5C @ =gUnknown_0832C7A8
_08015D54:
	ldr r3, [sp, #0x44]
	bl sub_080156CC
	b _08015D9A
	.align 2, 0
_08015D5C: .4byte gUnknown_0832C7A8
_08015D60:
	cmp r5, #4
	bne _08015D80
	bl sub_08015778
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	ldr r2, _08015D7C @ =gUnknown_0832CC30
_08015D74:
	movs r3, #0
	bl sub_080156CC
	b _08015D9A
	.align 2, 0
_08015D7C: .4byte gUnknown_0832CC30
_08015D80:
	cmp r5, #5
	bne _08015D9A
	bl sub_08015778
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #1
	ldr r2, _08015E4C @ =gUnknown_0832D0DC
	ldr r3, [sp, #0x44]
	bl sub_080156CC
_08015D9A:
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	add r0, sp, #0x10
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	add r0, sp, #0x20
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	add r1, sp, #0x10
	bl sub_0801583C
	movs r0, #1
	add r1, sp, #0x20
	bl sub_0801583C
	bl sub_080154B4
	cmp r0, #1
	bne _08015DE4
	b _08015FD8
_08015DE4:
	adds r5, #1
	cmp r5, #5
	bhi _08015DEC
	b _08015CEC
_08015DEC:
	movs r0, #1
	bl sub_08015890
	bl sub_08015BD0
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	bl sub_08015BF8
	movs r0, #0
	movs r1, #1
	bl sub_08015688
	movs r0, #1
	movs r1, #1
	bl sub_08015688
	bl sub_08015714
	movs r0, #0xd2
	bl sub_0801B750
	movs r0, #6
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	movs r0, #0
	str r0, [sp, #0x3c]
	ldr r5, [sp, #0x54]
	ldr r4, [sp, #0x58]
_08015E2C:
	bl sub_08000BC0
	ldr r0, [sp, #0x30]
	cmp r0, #0xa0
	ble _08015E50
	movs r0, #0x10
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x12
	bl sub_0803D34C
	adds r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x12
	b _08015EBE
	.align 2, 0
_08015E4C: .4byte gUnknown_0832D0DC
_08015E50:
	ldr r0, [sp, #0x30]
	cmp r0, #0x64
	ble _08015E6C
	movs r0, #0xe
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0803D34C
	adds r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x18
	b _08015EBE
_08015E6C:
	ldr r0, [sp, #0x30]
	cmp r0, #0x50
	ble _08015E88
	movs r0, #0xc
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x1a
	bl sub_0803D34C
	adds r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x1a
	b _08015EBE
_08015E88:
	ldr r0, [sp, #0x30]
	cmp r0, #0x28
	ble _08015EA4
	movs r0, #8
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x20
	bl sub_0803D34C
	adds r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x20
	b _08015EBE
_08015EA4:
	ldr r0, [sp, #0x30]
	cmp r0, #0x14
	ble _08015EC6
	movs r0, #6
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x30
	bl sub_0803D34C
	adds r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x30
_08015EBE:
	bl sub_0803D34C
	adds r6, r6, r0
	b _08015EDE
_08015EC6:
	ldr r0, [sp, #0x30]
	cmp r0, #6
	ble _08015ED2
	movs r0, #2
	rsbs r0, r0, #0
	b _08015EDC
_08015ED2:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ble _08015EDE
	movs r0, #1
	rsbs r0, r0, #0
_08015EDC:
	str r0, [sp, #0x38]
_08015EDE:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r7, r0
	ble _08015EE8
	adds r7, r0, #0
_08015EE8:
	cmp r6, r0
	ble _08015EEE
	adds r6, r0, #0
_08015EEE:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bgt _08015F54
	movs r0, #0
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	adds r1, r5, #0
	bl sub_0801583C
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	mov r0, sp
	add r0, r8
	adds r0, #0xc
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _08015FDC
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
	b _08015FDC
_08015F54:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	adds r1, r5, #0
	bl sub_0801583C
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	mov r0, sp
	add r0, r8
	adds r0, #0xc
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _08015FBE
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
_08015FBE:
	mov r0, r8
	cmp r0, #1
	bls _08015FC8
	movs r1, #0
	mov r8, r1
_08015FC8:
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	beq _08015FD8
	b _08015E2C
_08015FD8:
	movs r0, #1
	b _0801657E
_08015FDC:
	mov r1, r8
	cmp r1, #1
	bls _08015FE6
	movs r0, #0
	mov r8, r0
_08015FE6:
	ldr r1, [sp, #0x48]
	adds r1, #1
	str r1, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	beq _08015FD8
	movs r0, #0xc8
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x30]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	str r0, [sp, #0x40]
	movs r5, #0
	ldr r0, [sp, #0x54]
	mov sb, r0
	ldr r4, [sp, #0x58]
_08016010:
	bl sub_08000BC0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x38]
	adds r0, r0, r1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x40]
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803D34C
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	movs r0, #0xf5
	lsls r0, r0, #2
	muls r0, r1, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803D34C
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x30]
	movs r1, #4
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0801604C
	str r1, [sp, #0x30]
	movs r0, #0xc8
	lsls r0, r0, #1
	str r0, [sp, #0x38]
_0801604C:
	ldr r0, [sp, #0x30]
	cmp r0, #6
	ble _0801605A
	movs r0, #6
	str r0, [sp, #0x30]
	subs r0, #0xce
	str r0, [sp, #0x38]
_0801605A:
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, sb
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	mov r1, sb
	bl sub_0801583C
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	mov r0, sp
	add r0, r8
	adds r0, #0xc
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _080160B4
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
_080160B4:
	mov r0, r8
	cmp r0, #1
	bls _080160BE
	movs r1, #0
	mov r8, r1
_080160BE:
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	beq _08015FD8
	adds r5, #1
	cmp r5, #0x95
	bls _08016010
	movs r0, #1
	str r0, [sp, #0x3c]
	str r0, [sp, #0x38]
	mov sb, r0
	ldr r5, [sp, #0x54]
	ldr r4, [sp, #0x58]
_080160DE:
	bl sub_08000BC0
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _080160FC
	ldr r0, [sp, #0x34]
	cmp r0, #0xb
	bgt _080160F6
	movs r0, #2
	str r0, [sp, #0x3c]
	mov r0, sb
	b _08016110
_080160F6:
	ldr r0, [sp, #0x34]
	cmp r0, #0xd
	bgt _08016104
_080160FC:
	mov r1, sb
	str r1, [sp, #0x3c]
	str r1, [sp, #0x38]
	b _08016112
_08016104:
	ldr r0, [sp, #0x34]
	cmp r0, #0xf
	bgt _08016112
	mov r0, sb
	str r0, [sp, #0x3c]
	movs r0, #0
_08016110:
	str r0, [sp, #0x38]
_08016112:
	ldr r0, [sp, #0x34]
	cmp r0, #0xf
	ble _08016178
	movs r0, #0x10
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	adds r1, r5, #0
	bl sub_0801583C
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	mov r0, sp
	add r0, r8
	adds r0, #0xc
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _080161FE
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
	b _080161FE
_08016178:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r3, r7, #0
	bl sub_08015C08
	bl sub_08009BD0
	movs r0, #0
	adds r1, r5, #0
	bl sub_0801583C
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	mov r0, sp
	add r0, r8
	adds r0, #0xc
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _080161E2
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
_080161E2:
	mov r0, r8
	cmp r0, #1
	bls _080161EC
	movs r1, #0
	mov r8, r1
_080161EC:
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	beq _080161FC
	b _080160DE
_080161FC:
	b _08015FD8
_080161FE:
	mov r1, r8
	cmp r1, #1
	bls _08016208
	movs r0, #0
	mov r8, r0
_08016208:
	ldr r1, [sp, #0x48]
	adds r1, #1
	str r1, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	bne _08016218
	b _08015FD8
_08016218:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	movs r0, #0
	str r0, [sp, #0x3c]
	movs r5, #0
	ldr r0, [sp, #0x54]
	mov sb, r0
_08016228:
	bl sub_08000BC0
	cmp r5, #0
	bne _08016254
	bl sub_08015778
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, _08016250 @ =gUnknown_0832D564
	movs r3, #0
	bl sub_080156CC
	movs r1, #0
	mov r8, r1
	movs r0, #0
	str r0, [sp, #0x48]
	movs r5, #1
	b _080162E2
	.align 2, 0
_08016250: .4byte gUnknown_0832D564
_08016254:
	cmp r5, #1
	bne _0801628C
	bl sub_08015778
	adds r1, r0, #0
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	ldr r2, _08016288 @ =gUnknown_0832DB00
	ldr r3, [sp, #0x44]
	bl sub_080156CC
	movs r1, #0
	mov r8, r1
	add r0, sp, #8
	ldrb r0, [r0]
	str r0, [sp, #0x48]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x4c]
	movs r1, #0x25
	str r1, [sp, #0x50]
	movs r5, #2
	b _080162E2
	.align 2, 0
_08016288: .4byte gUnknown_0832DB00
_0801628C:
	cmp r5, #2
	bne _080162B8
	bl sub_08015778
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	ldr r2, _080162B4 @ =gUnknown_0832E0DC
	movs r3, #0
	bl sub_080156CC
	movs r0, #1
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	movs r5, #3
	b _080162E2
	.align 2, 0
_080162B4: .4byte gUnknown_0832E0DC
_080162B8:
	cmp r5, #3
	bne _080162E2
	bl sub_08015778
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	ldr r2, _080162F0 @ =gUnknown_0832E678
	ldr r3, [sp, #0x44]
	bl sub_080156CC
	movs r0, #1
	mov r8, r0
	mov r0, sp
	adds r0, #9
	ldrb r0, [r0]
	str r0, [sp, #0x48]
	movs r5, #4
_080162E2:
	ldr r0, [sp, #0x30]
	cmp r0, #8
	ble _080162F4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	b _080163CC
	.align 2, 0
_080162F0: .4byte gUnknown_0832E678
_080162F4:
	ldr r0, [sp, #0x30]
	cmp r0, #2
	ble _08016308
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	movs r1, #0xff
	add sl, r1
	movs r0, #0xff
	b _08016370
_08016308:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ble _08016316
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	b _0801636C
_08016316:
	ldr r0, [sp, #0x30]
	movs r2, #4
	rsbs r2, r2, #0
	cmp r0, r2
	ble _08016328
	movs r0, #5
	rsbs r0, r0, #0
	str r0, [sp, #0x38]
	b _080163CC
_08016328:
	ldr r1, [sp, #0x30]
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08016346
	adds r0, #8
	str r0, [sp, #0x38]
	adds r0, r7, #0
	movs r1, #0x20
	bl sub_0803D34C
	subs r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x40
	b _080163C6
_08016346:
	ldr r1, [sp, #0x30]
	movs r0, #0x28
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08016378
	adds r0, #0x1a
	str r0, [sp, #0x38]
	adds r0, #0xd
	str r0, [sp, #0x3c]
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0803D34C
	subs r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x40
	bl sub_0803D34C
	subs r6, r6, r0
_0801636C:
	movs r0, #0xff
	add sl, r0
_08016370:
	mov r1, sl
	ands r1, r0
	mov sl, r1
	b _080163CC
_08016378:
	ldr r1, [sp, #0x30]
	movs r0, #0x50
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08016390
	adds r0, #0x40
	str r0, [sp, #0x38]
	adds r0, #0xd
	str r0, [sp, #0x3c]
	adds r0, r7, #0
	movs r1, #0x10
	b _080163BC
_08016390:
	ldr r1, [sp, #0x30]
	movs r0, #0x8c
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080163A6
	adds r0, #0x7e
	str r0, [sp, #0x38]
	str r2, [sp, #0x3c]
	adds r0, r7, #0
	movs r1, #0x10
	b _080163BC
_080163A6:
	ldr r1, [sp, #0x30]
	movs r0, #0xdc
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080163CC
	adds r0, #0xd0
	str r0, [sp, #0x38]
	adds r0, #6
	str r0, [sp, #0x3c]
	adds r0, r7, #0
	movs r1, #8
_080163BC:
	bl sub_0803D34C
	subs r7, r7, r0
	adds r0, r6, #0
	movs r1, #0x20
_080163C6:
	bl sub_0803D34C
	subs r6, r6, r0
_080163CC:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x50]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0803D34C
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x50]
	cmp r7, #0
	bge _08016406
	movs r7, #1
_08016406:
	cmp r6, #0
	bge _0801640C
	movs r6, #1
_0801640C:
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _0801641C
	str r1, [sp, #0x4c]
_0801641C:
	ldr r0, [sp, #0x30]
	movs r1, #0xdc
	rsbs r1, r1, #0
	cmp r0, r1
	ble _080164C4
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, sb
	adds r3, r7, #0
	bl sub_08015818
	ldr r1, [sp, #0x30]
	adds r1, #0x78
	ldr r2, [sp, #0x34]
	adds r2, #0x50
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	ldr r0, [sp, #0x58]
	adds r3, r7, #0
	bl sub_08015C30
	bl sub_08009BD0
	movs r0, #0
	mov r1, sb
	bl sub_0801583C
	movs r0, #1
	ldr r1, [sp, #0x58]
	bl sub_0801583C
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	bl sub_08015BF8
	mov r0, sp
	add r0, r8
	adds r0, #8
	ldrb r0, [r0]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	bhi _0801648E
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0x48]
	bl sub_08015714
_0801648E:
	mov r0, r8
	cmp r0, #1
	bls _08016498
	movs r1, #0
	mov r8, r1
_08016498:
	ldr r0, [sp, #0x48]
	adds r0, #1
	str r0, [sp, #0x48]
	bl sub_080154B4
	cmp r0, #1
	beq _080164A8
	b _08016228
_080164A8:
	b _08015FD8
_080164AA:
	bl sub_08000BC0
	cmp r5, #0
	bne _080164DA
	ldr r2, _080164C0 @ =gUnknown_08371CD8
	movs r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	b _0801653E
	.align 2, 0
_080164C0: .4byte gUnknown_08371CD8
_080164C4:
	str r1, [sp, #0x30]
	movs r0, #0
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	movs r5, #0
	b _080164AA
_080164DA:
	cmp r5, #1
	bne _080164F0
	ldr r2, _080164EC @ =gUnknown_0837253C
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0
	b _0801651A
	.align 2, 0
_080164EC: .4byte gUnknown_0837253C
_080164F0:
	cmp r5, #2
	bne _08016504
	bl sub_0801576C
	adds r1, r0, #0
	ldr r2, _08016500 @ =gUnknown_0832ABA0
	b _08016534
	.align 2, 0
_08016500: .4byte gUnknown_0832ABA0
_08016504:
	cmp r5, #3
	bne _08016528
	bl sub_0801576C
	adds r1, r0, #0
	ldr r2, _08016524 @ =gUnknown_0832B13C
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
_0801651A:
	ldr r3, [sp, #0x44]
	bl sub_080156CC
	b _08016568
	.align 2, 0
_08016524: .4byte gUnknown_0832B13C
_08016528:
	cmp r5, #4
	bne _0801654C
	bl sub_08015778
	adds r1, r0, #0
	ldr r2, _08016548 @ =gUnknown_0832B6EC
_08016534:
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
_0801653E:
	movs r3, #0
	bl sub_080156CC
	b _08016568
	.align 2, 0
_08016548: .4byte gUnknown_0832B6EC
_0801654C:
	cmp r5, #5
	bne _08016568
	bl sub_08015778
	adds r1, r0, #0
	ldr r2, _08016590 @ =gUnknown_0832BCF4
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	ldr r3, [sp, #0x44]
	bl sub_080156CC
_08016568:
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	bne _08016576
	b _08015FD8
_08016576:
	adds r5, #1
	cmp r5, #5
	bls _080164AA
	movs r0, #0
_0801657E:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016590: .4byte gUnknown_0832BCF4

	thumb_func_start sub_08016594
sub_08016594: @ 0x08016594
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf4
	ldr r1, _08016628 @ =gUnknown_08324EC4
	mov r0, sp
	movs r2, #8
	bl sub_0803DEBC
	add r6, sp, #8
	ldr r1, _0801662C @ =gUnknown_08324ECC
	adds r0, r6, #0
	movs r2, #8
	bl sub_0803DEBC
	add r5, sp, #0x10
	ldr r1, _08016630 @ =gUnknown_08324ED4
	adds r0, r5, #0
	movs r2, #0xa8
	bl sub_0803DEBC
	movs r0, #0x10
	rsbs r0, r0, #0
	str r0, [sp, #0xc0]
	movs r1, #0x28
	str r1, [sp, #0xc4]
	movs r7, #0x80
	lsls r7, r7, #1
	movs r2, #0
	str r2, [sp, #0xd4]
	movs r0, #0
	str r0, [sp, #0xe0]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp, #0xd8]
	ldr r2, _08016634 @ =0x0000FFDB
	str r2, [sp, #0xdc]
	add r4, sp, #0xb8
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_08015A94
	bl sub_08009BD0
	bl sub_08015B6C
	movs r0, #0x10
	movs r1, #0
	bl sub_08015BF8
	mov r0, sp
	ldrb r0, [r0]
	ldr r1, [sp, #0xc0]
	subs r1, #0x10
	movs r2, #0x18
	adds r3, r4, #0
	bl sub_08015B04
	mov r0, sp
	ldrb r0, [r0]
	movs r1, #1
	bl sub_080159C4
	bl sub_080154B4
	cmp r0, #1
	bne _08016638
_08016622:
	movs r0, #1
	b _0801685E
	.align 2, 0
_08016628: .4byte gUnknown_08324EC4
_0801662C: .4byte gUnknown_08324ECC
_08016630: .4byte gUnknown_08324ED4
_08016634: .4byte 0x0000FFDB
_08016638:
	movs r0, #0
	str r0, [sp, #0xd0]
_0801663C:
	ldr r1, [sp, #0xc0]
	mov sl, r1
	ldr r2, [sp, #0xc4]
	str r2, [sp, #0xc8]
	str r7, [sp, #0xcc]
	movs r0, #0
	str r0, [sp, #0xe4]
	ldr r1, [sp, #0xd0]
	lsls r0, r1, #2
	adds r1, r0, #3
	lsls r1, r1, #1
	add r1, sp
	adds r1, #0x10
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r8, r0
	ldr r0, [sp, #0xd0]
	lsls r0, r0, #3
	str r0, [sp, #0xf0]
	ldr r2, [sp, #0xe4]
	cmp r2, r1
	blt _0801666A
	b _080167DC
_0801666A:
	add r0, sp, #0x10
	mov sb, r0
	mov r1, r8
	str r1, [sp, #0xe8]
	mov r0, r8
	adds r0, #2
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x10
	str r0, [sp, #0xec]
_0801667E:
	bl sub_08000BC0
	ldr r0, [sp, #0xf0]
	add r0, sb
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldr r5, [sp, #0xe8]
	adds r5, #3
	lsls r5, r5, #1
	add r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r2, [sp, #0xe4]
	lsls r6, r2, #0xa
	adds r0, r6, #0
	bl sub_0803D34C
	mov r1, sl
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	add r0, sl
	str r0, [sp, #0xc0]
	ldr r0, [sp, #0xe8]
	adds r0, #1
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	adds r0, r6, #0
	bl sub_0803D34C
	ldr r1, [sp, #0xc8]
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r0, r0, r1
	str r0, [sp, #0xc4]
	ldr r2, [sp, #0xec]
	movs r0, #0
	ldrsh r4, [r2, r0]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r0, r6, #0
	bl sub_0803D34C
	ldr r1, [sp, #0xcc]
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r7, r0, r1
	add r0, sp, #0xb8
	adds r1, r7, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_08015A94
	ldr r2, [sp, #0xd8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xdc]
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #0xd8]
	ldr r1, _08016750 @ =0x0CFF0000
	cmp r0, r1
	bgt _0801671C
	movs r0, #0xd0
	lsls r0, r0, #4
	str r0, [sp, #0xd8]
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xdc]
_0801671C:
	ldr r1, [sp, #0xd8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	ble _08016736
	str r1, [sp, #0xd8]
	ldr r2, [sp, #0xdc]
	lsls r0, r2, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	str r0, [sp, #0xdc]
_08016736:
	bl sub_08009BD0
	ldr r0, [sp, #0xd4]
	add r0, sp
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _08016754
	movs r0, #1
	movs r1, #0
	bl sub_080159C4
	b _0801675C
	.align 2, 0
_08016750: .4byte 0x0CFF0000
_08016754:
	movs r0, #0
	movs r1, #0
	bl sub_080159C4
_0801675C:
	ldrb r0, [r4]
	movs r1, #1
	bl sub_080159C4
	ldrb r0, [r4]
	ldr r1, [sp, #0xc0]
	subs r1, #0x10
	ldr r2, [sp, #0xc4]
	subs r2, #0x10
	add r3, sp, #0xb8
	bl sub_08015B04
	ldr r1, [sp, #0xd8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	bl sub_08015BF8
	ldr r0, [sp, #0xd4]
	add r0, sp
	adds r0, #8
	ldr r2, [sp, #0xe0]
	ldrb r0, [r0]
	cmp r2, r0
	bls _080167A8
	ldr r0, [sp, #0xd4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	cmp r0, #7
	bls _080167A2
	movs r0, #0
	str r0, [sp, #0xd4]
_080167A2:
	movs r1, #0
	str r1, [sp, #0xe0]
	b _080167B2
_080167A8:
	ldr r0, [sp, #0xe0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xe0]
_080167B2:
	bl sub_080154B4
	cmp r0, #1
	bne _080167BC
	b _08016622
_080167BC:
	ldr r0, [sp, #0xe4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xe4]
	mov r0, r8
	adds r0, #3
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #0xe4]
	cmp r1, r0
	bge _080167DC
	b _0801667E
_080167DC:
	ldr r0, [sp, #0xf0]
	add r0, sp
	adds r0, #0x10
	movs r2, #0
	ldrsh r4, [r0, r2]
	mov r5, r8
	adds r5, #3
	lsls r5, r5, #1
	add r5, sp
	adds r5, #0x10
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #0xa
	bl sub_0803D34C
	mov r1, sl
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	add r0, sl
	str r0, [sp, #0xc0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x10
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #0xa
	bl sub_0803D34C
	ldr r1, [sp, #0xc8]
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r0, r0, r1
	str r0, [sp, #0xc4]
	mov r0, r8
	adds r0, #2
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x10
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #0xa
	bl sub_0803D34C
	ldr r1, [sp, #0xcc]
	subs r4, r4, r1
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r7, r0, r1
	ldr r0, [sp, #0xd0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
	cmp r0, #0x14
	bhi _0801685C
	b _0801663C
_0801685C:
	movs r0, #0
_0801685E:
	add sp, #0xf4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016870
sub_08016870: @ 0x08016870
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	ldr r1, _08016928 @ =gUnknown_08324EC2
	add r0, sp, #8
	movs r2, #2
	bl sub_0803DEBC
	movs r7, #5
	movs r0, #0x9f
	lsls r0, r0, #8
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r2, #0
	str r2, [sp, #0x30]
	movs r0, #4
	str r0, [sp, #0x34]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp, #0x3c]
	add r6, sp, #0xc
	str r7, [sp]
	movs r4, #0x9f
	str r4, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0x54
	movs r3, #5
	bl sub_08015818
	add r5, sp, #0x1c
	str r7, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x54
	movs r3, #5
	bl sub_08015C58
	bl sub_08009BD0
	movs r0, #0
	adds r1, r6, #0
	bl sub_0801583C
	movs r0, #1
	adds r1, r5, #0
	bl sub_0801583C
	movs r0, #0
	movs r1, #1
	bl sub_08015688
	movs r0, #1
	movs r1, #1
	bl sub_08015688
	movs r0, #0
	movs r1, #0
	bl sub_080159C4
	movs r0, #1
	movs r1, #0
	bl sub_080159C4
	movs r0, #0
	bl sub_08015890
	movs r0, #1
	bl sub_08015BA8
	movs r0, #0x10
	movs r1, #0
	bl sub_08015BF8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r5, r2, #0
	add r0, sp, #0xc
	mov sl, r0
	movs r6, #0x54
_0801691A:
	bl sub_08000BC0
	cmp r7, #0x1f
	bhi _0801692C
	adds r0, r7, #0
	movs r1, #0x26
	b _080169AE
	.align 2, 0
_08016928: .4byte gUnknown_08324EC2
_0801692C:
	cmp r7, #0x34
	bhi _0801694E
	adds r0, r7, #0
	movs r1, #0x21
	bl sub_0803D34C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08016942
	movs r0, #1
_08016942:
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r2, r8
	adds r0, r2, r5
	b _080169C6
_0801694E:
	cmp r7, #0x4f
	bhi _08016958
	adds r0, r7, #0
	movs r1, #0x1c
	b _080169AE
_08016958:
	cmp r7, #0x64
	bhi _0801697A
	adds r0, r7, #0
	movs r1, #0x18
	bl sub_0803D34C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0801696E
	movs r0, #1
_0801696E:
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r2, r8
	adds r0, r2, r5
	b _080169C6
_0801697A:
	cmp r7, #0x7f
	bhi _08016984
	adds r0, r7, #0
	movs r1, #0x14
	b _080169AE
_08016984:
	cmp r7, #0x8f
	bhi _080169A6
	adds r0, r7, #0
	movs r1, #0x10
	bl sub_0803D34C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0801699A
	movs r0, #1
_0801699A:
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r2, r8
	adds r0, r2, r5
	b _080169C6
_080169A6:
	cmp r7, #0xff
	bhi _080169CC
	adds r0, r7, #0
	movs r1, #0x10
_080169AE:
	bl sub_0803D34C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _080169BC
	movs r0, #1
_080169BC:
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, r8
	adds r0, r1, r5
_080169C6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_080169CC:
	ldr r0, _08016A44 @ =0x00009EFF
	cmp r8, r0
	bhi _080169D6
	movs r2, #0
	mov r8, r2
_080169D6:
	cmp r7, #0xff
	bls _08016A48
	movs r7, #0x80
	lsls r7, r7, #1
	movs r0, #0
	mov r8, r0
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, sl
	movs r1, #0x78
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08015818
	str r7, [sp]
	mov r1, r8
	str r1, [sp, #4]
	add r0, sp, #0x1c
	movs r1, #0x78
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08015C58
	bl sub_08009BD0
	movs r0, #0
	mov r1, sl
	bl sub_0801583C
	movs r0, #1
	add r1, sp, #0x1c
	bl sub_0801583C
	ldr r2, [sp, #0x3c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x18
	movs r2, #0x10
	adds r0, r1, #0
	subs r1, r2, r1
	bl sub_08015BF8
	mov r0, sp
	add r0, sb
	adds r0, #8
	ldrb r0, [r0]
	ldr r1, [sp, #0x30]
	cmp r0, r1
	bhi _08016AC6
	movs r2, #1
	add sb, r2
	movs r0, #0
	str r0, [sp, #0x30]
	bl sub_08015714
	b _08016AC6
	.align 2, 0
_08016A44: .4byte 0x00009EFF
_08016A48:
	str r7, [sp]
	mov r1, r8
	lsrs r4, r1, #8
	str r4, [sp, #4]
	mov r0, sl
	movs r1, #0x78
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08015818
	str r7, [sp]
	str r4, [sp, #4]
	add r0, sp, #0x1c
	movs r1, #0x78
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08015C58
	bl sub_08009BD0
	movs r0, #0
	mov r1, sl
	bl sub_0801583C
	movs r0, #1
	add r1, sp, #0x1c
	bl sub_0801583C
	ldr r2, [sp, #0x3c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x18
	movs r2, #0x10
	adds r0, r1, #0
	subs r1, r2, r1
	bl sub_08015BF8
	mov r0, sp
	add r0, sb
	adds r0, #8
	ldrb r0, [r0]
	ldr r1, [sp, #0x30]
	cmp r0, r1
	bhi _08016AAA
	movs r2, #1
	add sb, r2
	movs r0, #0
	str r0, [sp, #0x30]
	bl sub_08015714
_08016AAA:
	mov r1, sb
	cmp r1, #1
	bls _08016AB4
	movs r2, #0
	mov sb, r2
_08016AB4:
	ldr r0, [sp, #0x30]
	adds r0, #1
	str r0, [sp, #0x30]
	bl sub_080154B4
	cmp r0, #1
	beq _08016AC4
	b _0801691A
_08016AC4:
	b _08016C08
_08016AC6:
	mov r1, sb
	cmp r1, #1
	bls _08016AD0
	movs r2, #0
	mov sb, r2
_08016AD0:
	ldr r0, [sp, #0x30]
	adds r0, #1
	str r0, [sp, #0x30]
	bl sub_080154B4
	cmp r0, #1
	bne _08016AE0
	b _08016C08
_08016AE0:
	ldr r1, _08016BFC @ =0xFFFFFED4
	str r1, [sp, #0x38]
	ldr r2, [sp, #0x34]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r6, r0, #3
	add r1, sp, #8
	movs r0, #3
	strb r0, [r1]
	movs r0, #5
	strb r0, [r1, #1]
	movs r0, #0
	str r0, [sp, #0x2c]
	mov r1, r8
	lsrs r1, r1, #8
	str r1, [sp, #0x40]
	add r2, sp, #0xc
	mov sl, r2
	add r0, sp, #0x1c
	mov r8, r0
_08016B0C:
	bl sub_08000BC0
	ldr r1, [sp, #0x38]
	adds r6, r6, r1
	subs r1, #0xa
	str r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08016C00 @ =0x0000FF80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x3c]
	cmp r6, #0
	bge _08016B32
	movs r6, #0
_08016B32:
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08016C04 @ =0x000007FF
	cmp r0, r2
	bgt _08016B44
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x3c]
_08016B44:
	adds r0, r6, #0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803D34C
	adds r5, r0, #0
	adds r5, #0x50
	str r7, [sp]
	ldr r4, [sp, #0x40]
	str r4, [sp, #4]
	mov r0, sl
	movs r1, #0x78
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_08015818
	str r7, [sp]
	str r4, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_08015C58
	bl sub_08009BD0
	movs r0, #0
	mov r1, sl
	bl sub_0801583C
	movs r0, #1
	mov r1, r8
	bl sub_0801583C
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x10
	subs r1, r1, r0
	bl sub_08015BF8
	mov r0, sp
	add r0, sb
	adds r0, #8
	ldrb r0, [r0]
	ldr r2, [sp, #0x30]
	cmp r0, r2
	bhi _08016BB0
	movs r0, #1
	add sb, r0
	movs r1, #0
	str r1, [sp, #0x30]
	bl sub_08015714
_08016BB0:
	mov r2, sb
	cmp r2, #1
	bls _08016BBA
	movs r0, #0
	mov sb, r0
_08016BBA:
	ldr r1, [sp, #0x30]
	adds r1, #1
	str r1, [sp, #0x30]
	bl sub_080154B4
	cmp r0, #1
	beq _08016C08
	ldr r2, [sp, #0x2c]
	adds r2, #1
	str r2, [sp, #0x2c]
	cmp r2, #0xc
	bls _08016B0C
	bl sub_08000BC0
	bl sub_08009BD0
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	bl sub_08015B60
	movs r0, #0x10
	movs r1, #0
	bl sub_08015BF8
	bl sub_080154B4
	cmp r0, #1
	beq _08016C08
	movs r0, #0
	b _08016C0A
	.align 2, 0
_08016BFC: .4byte 0xFFFFFED4
_08016C00: .4byte 0x0000FF80
_08016C04: .4byte 0x000007FF
_08016C08:
	movs r0, #1
_08016C0A:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08016C1C
sub_08016C1C: @ 0x08016C1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x108
	ldr r1, _08016CF8 @ =gUnknown_08324F7C
	add r0, sp, #8
	movs r2, #0xe0
	bl sub_0803DEBC
	add r6, sp, #0xe8
	ldr r1, _08016CFC @ =gUnknown_0832505C
	adds r0, r6, #0
	movs r2, #0xe
	bl sub_0803DEBC
	movs r7, #0
	movs r5, #0x80
	lsls r5, r5, #1
	movs r0, #0x80
	lsls r0, r0, #7
	movs r1, #4
	bl sub_0803D34C
	mov r8, r0
	add r4, sp, #0xf8
	str r5, [sp]
	str r7, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	adds r3, r5, #0
	bl sub_08015818
	movs r0, #1
	adds r1, r4, #0
	bl sub_0801583C
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #0
	bl sub_08015688
_08016C76:
	movs r4, #0
	ldrb r0, [r6]
	cmp r4, r0
	bhs _08016CC0
	movs r5, #0
_08016C80:
	bl sub_08000BC0
	cmp r4, #3
	bhi _08016CAA
	bl sub_08015778
	adds r1, r0, #0
	lsls r0, r7, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sp
	adds r0, #8
	ldr r2, [r0]
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	adds r3, r5, #0
	bl sub_080156CC
_08016CAA:
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	beq _08016CF2
	add r5, r8
	adds r4, #1
	ldrb r0, [r6]
	cmp r4, r0
	blo _08016C80
_08016CC0:
	cmp r7, #0
	bne _08016CD4
	movs r0, #0
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #1
	bl sub_08015688
_08016CD4:
	bl sub_08015714
	adds r6, #1
	adds r7, #1
	cmp r7, #0xd
	bls _08016C76
	movs r4, #0
_08016CE2:
	bl sub_08000BC0
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	bne _08016D00
_08016CF2:
	movs r0, #1
	b _08016D08
	.align 2, 0
_08016CF8: .4byte gUnknown_08324F7C
_08016CFC: .4byte gUnknown_0832505C
_08016D00:
	adds r4, #1
	cmp r4, #0x3b
	bls _08016CE2
	movs r0, #0
_08016D08:
	add sp, #0x108
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08016D14
sub_08016D14: @ 0x08016D14
	push {lr}
	bl sub_08015B60
	movs r0, #0x10
	movs r1, #0
	bl sub_08015BF8
	bl sub_08015C7C
	cmp r0, #1
	beq _08016D46
	bl sub_08016594
	cmp r0, #1
	beq _08016D46
	bl sub_08016870
	cmp r0, #1
	beq _08016D46
	bl sub_08016C1C
	cmp r0, #1
	beq _08016D46
	movs r0, #0
	b _08016D48
_08016D46:
	movs r0, #1
_08016D48:
	pop {r1}
	bx r1

	thumb_func_start sub_08016D4C
sub_08016D4C: @ 0x08016D4C
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08000498
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl sub_08000498
	bl sub_080155F8
	bl sub_08015624
	bl sub_08015A14
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _08016D84 @ =0x00001042
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08016D84: .4byte 0x00001042

	thumb_func_start sub_08016D88
sub_08016D88: @ 0x08016D88
	push {lr}
	bl sub_08000B84
	bl sub_08016D4C
	movs r0, #0
	movs r1, #0
	movs r2, #0x1e
	movs r3, #1
	bl sub_08015504
	cmp r0, #1
	beq _08016DE2
	bl sub_08016D14
	cmp r0, #1
	beq _08016DE2
	bl sub_0801B744
	movs r0, #1
	movs r1, #1
	movs r2, #5
	movs r3, #1
	bl sub_08015504
	cmp r0, #1
	beq _08016DE2
	movs r0, #0
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	movs r0, #0
	movs r1, #0
	bl sub_080159C4
	movs r0, #1
	movs r1, #0
	bl sub_080159C4
	movs r0, #0
	b _08016E14
_08016DE2:
	bl sub_0801B744
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08015504
	movs r0, #0
	movs r1, #0
	bl sub_08015688
	movs r0, #1
	movs r1, #0
	bl sub_08015688
	movs r0, #0
	movs r1, #0
	bl sub_080159C4
	movs r0, #1
	movs r1, #0
	bl sub_080159C4
	movs r0, #1
_08016E14:
	pop {r1}
	bx r1

	thumb_func_start sub_08016E18
sub_08016E18: @ 0x08016E18
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r1, r3, #0
	bl sub_080002EC
	pop {r0}
	bx r0

	thumb_func_start sub_08016E2C
sub_08016E2C: @ 0x08016E2C
	push {lr}
	ldr r0, _08016E3C @ =gUnknown_0836EA6C
	movs r1, #0x40
	bl sub_08016E18
	pop {r0}
	bx r0
	.align 2, 0
_08016E3C: .4byte gUnknown_0836EA6C

	thumb_func_start sub_08016E40
sub_08016E40: @ 0x08016E40
	push {lr}
	ldr r0, _08016E50 @ =gUnknown_08370698
	movs r1, #0x92
	bl sub_08016E18
	pop {r0}
	bx r0
	.align 2, 0
_08016E50: .4byte gUnknown_08370698

	thumb_func_start sub_08016E54
sub_08016E54: @ 0x08016E54
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _08016E90 @ =0x04000008
	movs r0, #0x8d
	strh r0, [r1]
	movs r4, #0
_08016E62:
	lsls r0, r4, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r2, #0x3c
	bl sub_080002EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _08016E62
	ldr r1, _08016E94 @ =0x0600C000
	adds r0, r6, #0
	bl sub_0803D358
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016E90: .4byte 0x04000008
_08016E94: .4byte 0x0600C000

	thumb_func_start sub_08016E98
sub_08016E98: @ 0x08016E98
	push {lr}
	ldr r0, _08016EA8 @ =gUnknown_0836E548
	ldr r1, _08016EAC @ =gUnknown_0836EAAC
	bl sub_08016E54
	pop {r0}
	bx r0
	.align 2, 0
_08016EA8: .4byte gUnknown_0836E548
_08016EAC: .4byte gUnknown_0836EAAC

	thumb_func_start sub_08016EB0
sub_08016EB0: @ 0x08016EB0
	push {lr}
	ldr r0, _08016EC0 @ =gUnknown_0836EF5C
	ldr r1, _08016EC4 @ =gUnknown_0837072C
	bl sub_08016E54
	pop {r0}
	bx r0
	.align 2, 0
_08016EC0: .4byte gUnknown_0836EF5C
_08016EC4: .4byte gUnknown_0837072C

	thumb_func_start sub_08016EC8
sub_08016EC8: @ 0x08016EC8
	push {lr}
	sub sp, #4
	mov r2, sp
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	strh r1, [r2]
	cmp r0, #0
	bne _08016EE8
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r0, sp
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
	b _08016EF4
_08016EE8:
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r1, sp
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
_08016EF4:
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_08016EFC
sub_08016EFC: @ 0x08016EFC
	push {r4, lr}
	bl sub_08016E2C
	bl sub_08016E98
	movs r0, #1
	bl sub_08016EC8
	movs r0, #1
	movs r1, #0
	movs r2, #0x19
	movs r3, #0
	bl sub_08015504
	movs r4, #0
_08016F1A:
	bl sub_08009BD0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x2d
	bls _08016F1A
	movs r0, #1
	movs r1, #1
	movs r2, #0x19
	movs r3, #0
	bl sub_08015504
	movs r0, #0
	bl sub_08016EC8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08016F40
sub_08016F40: @ 0x08016F40
	push {r4, lr}
	bl sub_08016E40
	bl sub_08016EB0
	movs r0, #1
	bl sub_08016EC8
	movs r0, #1
	movs r1, #0
	movs r2, #0x19
	movs r3, #1
	bl sub_08015504
	cmp r0, #1
	beq _08016F96
	movs r4, #0
_08016F62:
	bl sub_08000BC0
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	beq _08016F96
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x2d
	bls _08016F62
	movs r0, #0
	movs r1, #1
	movs r2, #0x19
	movs r3, #1
	bl sub_08015504
	cmp r0, #1
	beq _08016F96
	movs r0, #0
	bl sub_08016EC8
	movs r0, #0
	b _08016FAA
_08016F96:
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08015504
	movs r0, #0
	bl sub_08016EC8
	movs r0, #1
_08016FAA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08016FB0
sub_08016FB0: @ 0x08016FB0
	push {r4, lr}
	movs r4, #0
_08016FB4:
	bl sub_08009BD0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _08016FB4
	bl sub_08016EFC
	movs r4, #0
_08016FC8:
	bl sub_08000BC0
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	beq _08016FEA
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _08016FC8
	bl sub_08016F40
	cmp r0, #1
	bne _08016FEE
_08016FEA:
	movs r0, #1
	b _0801700C
_08016FEE:
	movs r4, #0
_08016FF0:
	bl sub_08000BC0
	bl sub_08009BD0
	bl sub_080154B4
	cmp r0, #1
	beq _08016FEA
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _08016FF0
	movs r0, #0
_0801700C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017014
sub_08017014: @ 0x08017014
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08000498
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl sub_08000498
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x41
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017040
sub_08017040: @ 0x08017040
	push {lr}
	bl sub_08000B84
	bl sub_08017014
	bl sub_08016FB0
	cmp r0, #1
	beq _08017056
	movs r0, #0
	b _08017058
_08017056:
	movs r0, #1
_08017058:
	pop {r1}
	bx r1

	thumb_func_start sub_0801705C
sub_0801705C: @ 0x0801705C
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r1, _0801707C @ =gUnknown_083551A8
	movs r2, #0xf0
	lsls r2, r2, #1
	bl sub_080002EC
	ldr r0, _08017080 @ =0x05000200
	ldr r1, _08017084 @ =gUnknown_0838C3EC
	movs r2, #0x12
	bl sub_080002EC
	pop {r0}
	bx r0
	.align 2, 0
_0801707C: .4byte gUnknown_083551A8
_08017080: .4byte 0x05000200
_08017084: .4byte gUnknown_0838C3EC

	thumb_func_start sub_08017088
sub_08017088: @ 0x08017088
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _080170C4 @ =0x04000008
	movs r0, #0x8d
	strh r0, [r1]
	movs r4, #0
_08017096:
	lsls r0, r4, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r2, #0x3c
	bl sub_080002EC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _08017096
	ldr r1, _080170C8 @ =0x0600C000
	adds r0, r6, #0
	bl sub_0803D358
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080170C4: .4byte 0x04000008
_080170C8: .4byte 0x0600C000

	thumb_func_start sub_080170CC
sub_080170CC: @ 0x080170CC
	push {lr}
	ldr r0, _080170DC @ =gUnknown_08352BB8
	ldr r1, _080170E0 @ =gUnknown_08355388
	bl sub_08017088
	pop {r0}
	bx r0
	.align 2, 0
_080170DC: .4byte gUnknown_08352BB8
_080170E0: .4byte gUnknown_08355388

	thumb_func_start sub_080170E4
sub_080170E4: @ 0x080170E4
	push {lr}
	sub sp, #4
	mov r2, sp
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	strh r1, [r2]
	cmp r0, #0
	bne _08017104
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r0, sp
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
	b _08017110
_08017104:
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r1, sp
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
_08017110:
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_08017118
sub_08017118: @ 0x08017118
	push {lr}
	sub sp, #4
	mov r2, sp
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	cmp r0, #0
	bne _08017138
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r0, sp
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
	b _08017144
_08017138:
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r1, sp
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
_08017144:
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_0801714C
sub_0801714C: @ 0x0801714C
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	cmp r0, #0
	blt _08017180
	lsls r2, r0, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0xff
	ands r3, r1
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2, #2]
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldr r3, _08017188 @ =0x000001FF
	adds r1, r3, #0
	ands r4, r1
	orrs r0, r4
	strh r0, [r2, #2]
_08017180:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017188: .4byte 0x000001FF

	thumb_func_start sub_0801718C
sub_0801718C: @ 0x0801718C
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	cmp r0, #0
	blt _080171CE
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	mov r2, sp
	ldrh r1, [r4]
	ldr r0, _080171BC @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	cmp r3, #0
	bne _080171C0
	mov r0, sp
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _080171C8
	.align 2, 0
_080171BC: .4byte 0x0000FCFF
_080171C0:
	mov r0, sp
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
_080171C8:
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
_080171CE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080171D8
sub_080171D8: @ 0x080171D8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	cmp r0, #0
	beq _080171F0
	ldr r1, [r5]
	lsls r1, r1, #5
	ldr r2, _08017224 @ =0x06010000
	adds r1, r1, r2
	bl sub_0803D358
_080171F0:
	lsls r3, r4, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r3, r3, r0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r3, #2]
	lsls r2, r6, #0xc
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r0, #0
	adds r0, r1, #0
	orrs r0, r4
	orrs r2, r0
	strh r2, [r3, #4]
	adds r1, #8
	str r1, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017224: .4byte 0x06010000

	thumb_func_start sub_08017228
sub_08017228: @ 0x08017228
	push {r4, r5, r6, lr}
	sub sp, #0xc4
	ldr r1, _0801726C @ =gUnknown_0832506C
	mov r0, sp
	movs r2, #0xc0
	bl sub_0803DEBC
	movs r0, #0
	add r1, sp, #0xc0
	str r0, [r1]
	movs r4, #0
	adds r6, r1, #0
	mov r5, sp
_08017242:
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_080171D8
	movs r1, #3
	ands r1, r4
	lsls r1, r1, #5
	adds r1, #0x38
	adds r0, r4, #0
	movs r2, #0x70
	bl sub_0801714C
	cmp r4, #3
	bhi _08017270
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801718C
	b _08017278
	.align 2, 0
_0801726C: .4byte gUnknown_0832506C
_08017270:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801718C
_08017278:
	adds r5, #4
	adds r4, #1
	cmp r4, #0x2f
	bls _08017242
	add sp, #0xc4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08017288
sub_08017288: @ 0x08017288
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x12
	lsrs r4, r2, #0x10
	adds r1, r4, #4
	cmp r4, r1
	bge _080172AC
	adds r5, r1, #0
_0801729A:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0801718C
	adds r1, r4, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r4, r5
	blt _0801729A
_080172AC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080172B4
sub_080172B4: @ 0x080172B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_0801705C
	bl sub_080170CC
	movs r0, #1
	bl sub_080170E4
	bl sub_08017228
	movs r0, #1
	bl sub_08017118
	movs r0, #5
	mov r8, r0
	movs r7, #0
	movs r4, #0
	movs r0, #0xd3
	bl sub_0801B750
	movs r0, #1
	movs r1, #0
	movs r2, #0xa
	movs r3, #1
	bl sub_08015504
	movs r6, #0
	ldr r5, _08017360 @ =0x00000707
_080172F0:
	bl sub_08000BC0
	bl sub_08009BD0
	cmp r7, r8
	blt _08017326
	adds r0, r4, #0
	movs r1, #0
	bl sub_08017288
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xb
	bls _08017310
	movs r4, #0
_08017310:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08017288
	movs r7, #0
	movs r0, #0x14
	mov r8, r0
	cmp r4, #0
	beq _08017326
	movs r0, #2
	mov r8, r0
_08017326:
	ldr r0, _08017364 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08017386
	adds r7, #1
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r5
	bls _080172F0
	bl sub_0801B744
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #0
	bl sub_08015504
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08017368 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	b _080173CE
	.align 2, 0
_08017360: .4byte 0x00000707
_08017364: .4byte gUnknown_02000020
_08017368: .4byte 0x000080FF
_0801736C:
	bl sub_08009BD0
	movs r0, #0
	adds r1, r5, #0
	bl sub_08017288
	adds r7, #1
	cmp r7, r8
	blt _080173A6
	cmp r5, #0
	bne _080173A2
	movs r5, #1
	b _080173A4
_08017386:
	movs r0, #1
	movs r1, #0x78
	bl sub_08000634
	movs r7, #0
	movs r0, #0xa
	mov r8, r0
	movs r5, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08017288
	movs r6, #0
	b _0801736C
_080173A2:
	movs r5, #0
_080173A4:
	movs r7, #0
_080173A6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x45
	bls _0801736C
	bl sub_0801B744
	movs r0, #0
	movs r1, #1
	movs r2, #0x1e
	movs r3, #0
	bl sub_08015504
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080173D8 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
_080173CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080173D8: .4byte 0x000080FF

	thumb_func_start sub_080173DC
sub_080173DC: @ 0x080173DC
	push {lr}
	bl sub_080172B4
	cmp r0, #1
	beq _080173EA
	movs r0, #0
	b _080173EC
_080173EA:
	movs r0, #1
_080173EC:
	pop {r1}
	bx r1

	thumb_func_start sub_080173F0
sub_080173F0: @ 0x080173F0
	push {r4, r5, lr}
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000498
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl sub_08000498
	movs r4, #0xe0
	lsls r4, r4, #0x13
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000498
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
_08017426:
	strh r1, [r4]
	adds r4, #8
	adds r0, #1
	cmp r0, #0x7f
	bls _08017426
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x41
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017440
sub_08017440: @ 0x08017440
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08000B84
	bl sub_080173F0
	adds r0, r4, #0
	bl sub_080173DC
	cmp r0, #1
	beq _0801745A
	movs r0, #0
	b _0801745C
_0801745A:
	movs r0, #1
_0801745C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017464
sub_08017464: @ 0x08017464
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08017490 @ =0x05000100
	ldr r1, [r4, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r2, [r4, #0x20]
	ldr r3, _08017494 @ =0xFFFFFF00
	adds r2, r2, r3
	bl sub_080002EC
	ldr r0, _08017498 @ =0x05000220
	ldr r1, [r4, #0x24]
	adds r1, #0x20
	ldrh r2, [r4, #0x28]
	subs r2, #0x20
	bl sub_080002EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017490: .4byte 0x05000100
_08017494: .4byte 0xFFFFFF00
_08017498: .4byte 0x05000220

	thumb_func_start sub_0801749C
sub_0801749C: @ 0x0801749C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	cmp r2, #0
	bne _080174B6
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080002C4
	b _080174BC
_080174B6:
	adds r0, r4, #0
	bl sub_0803D358
_080174BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080174C4
sub_080174C4: @ 0x080174C4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r2, #0
	ldr r0, [r3, #0x30]
	cmp r0, #0
	beq _08017516
	ldr r5, [r3, #0x50]
	movs r1, #1
	adds r0, r3, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r1, r0
	bhs _08017518
	adds r4, r0, #0
_080174E4:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r5
	adds r0, r3, #0
	adds r0, #0x51
	ldrb r0, [r0]
	cmp r0, r6
	bne _0801750A
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801750A
	adds r0, r3, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801750A
	movs r2, #1
_0801750A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _080174E4
	b _08017518
_08017516:
	movs r2, #1
_08017518:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08017520
sub_08017520: @ 0x08017520
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0801753E
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_0801749C
_0801753E:
	cmp r5, #0
	beq _080175B2
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _080175B2
	movs r6, #0x96
	lsls r6, r6, #2
	lsls r1, r6, #6
	movs r2, #1
	movs r3, #0
	bl sub_0801749C
	ldr r0, _080175C0 @ =0x0600F800
	mov sl, r0
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r3, [r0]
	adds r1, r4, #0
	adds r1, #0x37
	ldrb r0, [r1]
	adds r0, r3, r0
	mov sb, r1
	cmp r3, r0
	bge _080175B2
	adds r5, r4, #0
	adds r5, #0x34
	adds r7, r4, #0
	adds r7, #0x36
	ldrb r1, [r7]
	mov r8, r1
	mov ip, r3
_0801757C:
	ldrb r2, [r5]
	mov r1, r8
	adds r0, r2, r1
	adds r4, r3, #1
	cmp r2, r0
	bge _080175A6
	lsls r1, r2, #1
	lsls r0, r3, #6
	add r0, sl
	adds r3, r1, r0
_08017590:
	strh r6, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r3, #2
	adds r2, #1
	ldrb r0, [r5]
	ldrb r1, [r7]
	adds r0, r0, r1
	cmp r2, r0
	blt _08017590
_080175A6:
	adds r3, r4, #0
	mov r1, sb
	ldrb r0, [r1]
	add r0, ip
	cmp r3, r0
	blt _0801757C
_080175B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080175C0: .4byte 0x0600F800

	thumb_func_start sub_080175C4
sub_080175C4: @ 0x080175C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	adds r4, r1, #0
	cmp r2, #1
	bne _080175D8
	bl sub_08009CA4
_080175D8:
	movs r0, #6
	ldrsh r7, [r4, r0]
	movs r0, #8
	ldrsh r6, [r4, r0]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080175F0
	movs r0, #0xa
	ldrsh r5, [r4, r0]
	movs r0, #0xc
	ldrsh r2, [r4, r0]
	b _08017622
_080175F0:
	cmp r0, #1
	bne _08017608
	ldr r0, [r4]
	bl sub_08009CBC
	adds r5, r0, #2
	ldr r0, [r4]
	bl sub_08009CC8
	lsls r0, r0, #1
	adds r2, r0, #2
	b _08017622
_08017608:
	ldr r0, [r4]
	bl sub_08009CBC
	adds r5, r0, #2
	ldr r0, [r4]
	bl sub_08009CC8
	lsls r0, r0, #1
	adds r2, r0, #2
	movs r0, #0x1e
	subs r7, r0, r5
	movs r0, #8
	ldrsh r6, [r4, r0]
_08017622:
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08009C7C
	adds r0, r7, #1
	adds r1, r6, #1
	ldr r2, [r4]
	bl sub_08009D4C
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017650
sub_08017650: @ 0x08017650
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r1, _08017664 @ =gUnknown_0203A690
_08017658:
	ldr r0, [r1]
	cmp r0, r3
	bne _08017668
	movs r2, #4
	ldrsh r0, [r1, r2]
	b _08017674
	.align 2, 0
_08017664: .4byte gUnknown_0203A690
_08017668:
	adds r1, #8
	adds r2, #1
	cmp r2, #0x13
	bls _08017658
	movs r0, #1
	rsbs r0, r0, #0
_08017674:
	pop {r1}
	bx r1

	thumb_func_start sub_08017678
sub_08017678: @ 0x08017678
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, _080176A0 @ =gUnknown_020377F0
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r0, r8
	muls r0, r7, r0
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _080176A4 @ =0x000003FF
	cmp r1, r0
	bhi _0801770E
	movs r4, #0
	ldr r1, _080176A8 @ =gUnknown_0203A690
	b _080176B4
	.align 2, 0
_080176A0: .4byte gUnknown_020377F0
_080176A4: .4byte 0x000003FF
_080176A8: .4byte gUnknown_0203A690
_080176AC:
	adds r1, #8
	adds r4, #1
	cmp r4, #0x13
	bhi _0801770E
_080176B4:
	ldr r0, [r1]
	cmp r0, #0
	bne _080176AC
	cmp r4, #0x13
	bhi _0801770E
	adds r0, r5, #0
	bl sub_08017650
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0801770E
	ldr r0, _080176E8 @ =gUnknown_020377F0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #5
	ldr r2, _080176EC @ =0x06010000
	adds r1, r0, r2
	cmp r6, #0
	bne _080176F0
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, [sp, #0x18]
	bl sub_080002C4
	b _080176F6
	.align 2, 0
_080176E8: .4byte gUnknown_020377F0
_080176EC: .4byte 0x06010000
_080176F0:
	adds r0, r5, #0
	bl sub_0803D358
_080176F6:
	ldr r1, _08017718 @ =gUnknown_0203A690
	lsls r0, r4, #3
	adds r0, r0, r1
	str r5, [r0]
	ldr r2, _0801771C @ =gUnknown_020377F0
	ldrh r1, [r2]
	strh r1, [r0, #4]
	mov r0, r8
	muls r0, r7, r0
	lsls r0, r0, #1
	adds r1, r1, r0
	strh r1, [r2]
_0801770E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017718: .4byte gUnknown_0203A690
_0801771C: .4byte gUnknown_020377F0

	thumb_func_start sub_08017720
sub_08017720: @ 0x08017720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	str r1, [sp, #4]
	ldr r0, [r0, #0x50]
	mov sl, r0
	movs r2, #0
	mov r0, sb
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080177A6
_08017740:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #4
	mov r3, sl
	adds r1, r0, r3
	adds r0, r1, #0
	adds r0, #0x51
	ldrb r0, [r0]
	movs r3, #0x54
	add r3, sb
	mov r8, r3
	adds r7, r2, #1
	ldr r2, [sp, #4]
	cmp r0, r2
	bne _0801779A
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _0801779A
	adds r6, r0, #0
	movs r4, #0
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r3, [r0]
	cmp r4, r3
	bhs _0801779A
	adds r5, r0, #0
_08017774:
	lsls r0, r4, #3
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _0801778E
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #4
	movs r2, #4
	movs r3, #1
	bl sub_08017678
_0801778E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _08017774
_0801779A:
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	mov r1, r8
	ldrb r1, [r1]
	cmp r2, r1
	blo _08017740
_080177A6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080177B8
sub_080177B8: @ 0x080177B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r6, [r5, #0x38]
	movs r4, #0
	b _080177E6
_080177C4:
	lsls r0, r4, #3
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _080177DE
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_08017678
_080177DE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #0
_080177E6:
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r4, r0
	blo _080177C4
	ldr r6, [r5, #0x40]
	movs r4, #0
	adds r0, r5, #0
	adds r0, #0x44
	adds r5, r0, #0
	b _0801781A
_080177FA:
	lsls r0, r4, #3
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _08017814
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl sub_08017678
_08017814:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801781A:
	ldrb r0, [r5]
	cmp r4, r0
	blo _080177FA
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08017828
sub_08017828: @ 0x08017828
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r6, [r5, #0x48]
	movs r4, #0
	b _08017856
_08017834:
	lsls r0, r4, #3
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _0801784E
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #2
	movs r2, #4
	movs r3, #1
	bl sub_08017678
_0801784E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #0
_08017856:
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r4, r0
	blo _08017834
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017868
sub_08017868: @ 0x08017868
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	movs r1, #0
_08017874:
	movs r0, #0x2c
	muls r0, r1, r0
	mov r3, r8
	adds r2, r0, r3
	ldr r3, [r2]
	adds r7, r1, #1
	cmp r3, #0
	beq _080178C2
	ldrb r1, [r2, #4]
	cmp r1, #0
	beq _080178C2
	movs r4, #6
	ldrsh r0, [r2, r4]
	cmp r0, #0
	blt _080178C2
	adds r6, r3, #0
	movs r4, #0
	cmp r4, r1
	bhs _080178C2
	adds r5, r2, #0
_0801789C:
	lsls r0, r4, #3
	adds r0, r0, r6
	ldr r1, [r0]
	cmp r1, #0
	beq _080178B6
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #4
	movs r2, #2
	movs r3, #1
	bl sub_08017678
_080178B6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #4]
	cmp r4, r0
	blo _0801789C
_080178C2:
	lsls r0, r7, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _08017874
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080178D8
sub_080178D8: @ 0x080178D8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r1, #0
	cmp r1, r4
	bhs _080178FA
	adds r3, r6, #0
_080178E8:
	ldr r0, [r3]
	cmp r0, #0
	beq _080178F2
	ldrh r0, [r3, #4]
	adds r5, r5, r0
_080178F2:
	adds r3, #8
	adds r1, #1
	cmp r1, r4
	blo _080178E8
_080178FA:
	cmp r5, #1
	bhi _08017902
	movs r1, #0
	b _0801793E
_08017902:
	subs r1, r5, #1
	adds r0, r2, #0
	bl sub_0803DDFC
	adds r5, r0, #0
	movs r3, #0
	movs r1, #0
	cmp r1, r4
	bhs _0801793C
	ldr r0, [r6]
	cmp r0, #0
	beq _0801791E
	ldrh r3, [r6, #4]
	b _08017932
_0801791E:
	adds r1, #1
	cmp r1, r4
	bhs _0801793C
	lsls r0, r1, #3
	adds r2, r0, r6
	ldr r0, [r2]
	cmp r0, #0
	beq _0801791E
	ldrh r0, [r2, #4]
	adds r3, r3, r0
_08017932:
	subs r0, r3, #1
	cmp r0, r5
	blo _0801791E
	cmp r1, r4
	blo _0801793E
_0801793C:
	subs r1, r4, #1
_0801793E:
	lsls r0, r1, #3
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_08017650
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017950
sub_08017950: @ 0x08017950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	adds r7, r2, #0
	mov sb, r3
	ldr r0, [r7, #0x50]
	str r0, [sp, #8]
	movs r1, #0
	mov r8, r1
	adds r0, r7, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08017A00
	ldr r4, [sp, #8]
	adds r4, #0x34
	ldr r3, [sp, #8]
_0801797C:
	mov r2, r8
	cmp r2, #0
	beq _0801798C
	ldr r0, [sp, #4]
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080179EE
_0801798C:
	ldrb r0, [r4, #0x1d]
	ldr r1, [sp, #0x34]
	cmp r0, r1
	bne _080179EE
	ldr r2, [r3, #0x30]
	cmp r2, #0
	beq _080179EE
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080179EE
	ldrb r1, [r4]
	adds r0, r2, #0
	mov r2, sb
	str r3, [sp, #0x10]
	bl sub_080178D8
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	ldr r3, [sp, #0x10]
	cmp r5, r0
	beq _080179EE
	movs r2, #2
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r6, r0, r1
	ldrb r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6]
	ldrh r1, [r4, #6]
	ldr r2, _08017A4C @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r6, #2]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	orrs r5, r0
	strh r5, [r6, #4]
_080179EE:
	adds r4, #0x70
	adds r3, #0x70
	movs r2, #1
	add r8, r2
	adds r0, r7, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r8, r0
	blo _0801797C
_08017A00:
	ldr r3, [r7, #0x50]
	str r3, [sp, #8]
	movs r4, #0
	mov r8, r4
	adds r0, r7, #0
	adds r0, #0x54
	mov sl, r0
	subs r0, #6
	str r0, [sp, #0xc]
	mov r1, sl
	ldrb r1, [r1]
	cmp r8, r1
	bhs _08017AA2
	adds r4, r3, #0
	adds r4, #0x38
_08017A1E:
	mov r2, r8
	cmp r2, #0
	beq _08017A2E
	ldr r0, [sp, #4]
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017A94
_08017A2E:
	ldrb r0, [r4, #0x19]
	ldr r3, [sp, #0x34]
	cmp r0, r3
	bne _08017A94
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08017A94
	ldr r2, [sp]
	cmp r2, r8
	bne _08017A50
	ldr r0, [r7, #0x40]
	adds r1, r7, #0
	adds r1, #0x44
	b _08017A56
	.align 2, 0
_08017A4C: .4byte 0x000001FF
_08017A50:
	ldr r0, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0x3c
_08017A56:
	ldrb r1, [r1]
	mov r2, sb
	bl sub_080178D8
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _08017A94
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r6, r0, r1
	ldrb r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6]
	ldrh r0, [r4, #6]
	ldr r3, _08017B90 @ =0x000001FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r6, #2]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	orrs r5, r0
	strh r5, [r6, #4]
_08017A94:
	adds r4, #0x70
	movs r2, #1
	add r8, r2
	mov r3, sl
	ldrb r3, [r3]
	cmp r8, r3
	blo _08017A1E
_08017AA2:
	ldr r4, [sp, #0xc]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08017B02
	ldr r0, [r7, #0x48]
	adds r1, r7, #0
	adds r1, #0x4c
	ldrb r1, [r1]
	mov r2, sb
	bl sub_080178D8
	adds r5, r0, #0
	cmp r5, #0
	blt _08017B02
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	movs r3, #0xe0
	lsls r3, r3, #0x13
	adds r6, r0, r3
	ldr r4, [sp]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #4
	ldr r1, [sp, #8]
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x44
	ldrb r1, [r1]
	ldr r3, _08017B94 @ =0xFFFFA000
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r6]
	adds r0, #0x42
	ldrh r1, [r0]
	ldr r0, _08017B90 @ =0x000001FF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r6, #2]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r5, r0
	strh r5, [r6, #4]
_08017B02:
	movs r2, #0
	mov r8, r2
_08017B06:
	movs r0, #0x2c
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r1, [sp, #0x38]
	adds r4, r0, r1
	ldr r2, [r4]
	cmp r2, #0
	beq _08017B76
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08017B76
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _08017B76
	ldrb r1, [r4, #4]
	adds r0, r2, #0
	mov r2, sb
	bl sub_080178D8
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _08017B76
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	asrs r3, r3, #8
	movs r1, #6
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r6, r0, r1
	ldrh r1, [r4, #0x28]
	movs r4, #0xc0
	lsls r4, r4, #7
	adds r0, r4, #0
	orrs r1, r0
	movs r0, #0xff
	ands r3, r0
	orrs r1, r3
	strh r1, [r6]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x17
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r6, #2]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r5, r0
	strh r5, [r6, #4]
_08017B76:
	movs r3, #1
	add r8, r3
	mov r4, r8
	cmp r4, #7
	bls _08017B06
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017B90: .4byte 0x000001FF
_08017B94: .4byte 0xFFFFA000

	thumb_func_start sub_08017B98
sub_08017B98: @ 0x08017B98
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08017B9E:
	movs r0, #0x2c
	muls r0, r4, r0
	adds r1, r0, r5
	ldr r0, [r1]
	cmp r0, #0
	beq _08017C00
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08017C00
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08017C00
	ldr r0, [r1, #8]
	ldr r3, [r1, #0x10]
	adds r0, r0, r3
	str r0, [r1, #8]
	ldr r2, [r1, #0x18]
	cmp r0, r2
	bge _08017BCC
	str r2, [r1, #8]
	rsbs r0, r3, #0
	str r0, [r1, #0x10]
_08017BCC:
	ldr r0, [r1, #8]
	ldr r2, [r1, #0x20]
	cmp r0, r2
	ble _08017BDC
	str r2, [r1, #8]
	ldr r0, [r1, #0x10]
	rsbs r0, r0, #0
	str r0, [r1, #0x10]
_08017BDC:
	ldr r0, [r1, #0xc]
	ldr r3, [r1, #0x14]
	adds r0, r0, r3
	str r0, [r1, #0xc]
	ldr r2, [r1, #0x1c]
	cmp r0, r2
	bge _08017BF0
	str r2, [r1, #0xc]
	rsbs r0, r3, #0
	str r0, [r1, #0x14]
_08017BF0:
	ldr r0, [r1, #0xc]
	ldr r2, [r1, #0x24]
	cmp r0, r2
	ble _08017C00
	str r2, [r1, #0xc]
	ldr r0, [r1, #0x14]
	rsbs r0, r0, #0
	str r0, [r1, #0x14]
_08017C00:
	adds r4, #1
	cmp r4, #7
	bls _08017B9E
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08017C0C
sub_08017C0C: @ 0x08017C0C
	ldr r1, _08017C18 @ =0x04000050
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08017C18: .4byte 0x04000050

	thumb_func_start sub_08017C1C
sub_08017C1C: @ 0x08017C1C
	push {lr}
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	ble _08017C2C
	movs r2, #0x10
	b _08017C3A
_08017C2C:
	cmp r2, #0
	bge _08017C34
	movs r2, #0
	b _08017C3A
_08017C34:
	asrs r0, r2, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08017C3A:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _08017C46
	movs r0, #0x10
	b _08017C54
_08017C46:
	cmp r1, #0
	bge _08017C4E
	movs r0, #0
	b _08017C54
_08017C4E:
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08017C54:
	ldr r1, _08017C60 @ =0x04000052
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08017C60: .4byte 0x04000052

	thumb_func_start sub_08017C64
sub_08017C64: @ 0x08017C64
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08017C0C
	ldrb r1, [r4, #2]
	ldr r2, [r4, #0x4c]
	movs r0, #0x64
	muls r1, r0, r1
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	adds r1, #0x60
	ldrh r1, [r1]
	bl sub_08017C1C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017C8C
sub_08017C8C: @ 0x08017C8C
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r2, [r0, #0x68]
	cmp r2, #0
	bne _08017C9C
	b _08017CC2
_08017C98:
	adds r0, r2, #0
	b _08017CC6
_08017C9C:
	movs r3, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08017CC2
	adds r4, r2, #0
	adds r1, r0, #0
_08017CAA:
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	bne _08017C98
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r1
	blo _08017CAA
_08017CC2:
	movs r0, #1
	rsbs r0, r0, #0
_08017CC6:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08017CCC
sub_08017CCC: @ 0x08017CCC
	push {r4, lr}
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #4
	adds r2, r2, r1
	adds r0, r2, #0
	adds r0, #0x46
	ldrb r4, [r0]
	cmp r4, #1
	bne _08017D14
	ldr r0, _08017D04 @ =gUnknown_02000020
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_08017C8C
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08017D14
	ands r4, r1
	cmp r4, #0
	beq _08017D08
	movs r0, #1
	movs r1, #0x78
	bl sub_08000634
	b _08017D10
	.align 2, 0
_08017D04: .4byte gUnknown_02000020
_08017D08:
	movs r0, #1
	movs r1, #0x50
	bl sub_08000634
_08017D10:
	movs r0, #1
	b _08017D16
_08017D14:
	movs r0, #0
_08017D16:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08017D1C
sub_08017D1C: @ 0x08017D1C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #2
	bne _08017D80
	ldr r0, _08017D70 @ =gUnknown_02000020
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08017C8C
	adds r3, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08017D80
	adds r0, r4, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, [r5, #0x4c]
	movs r0, #0x64
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x55
	ldrb r0, [r0]
	strb r0, [r5, #1]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08017D74
	movs r0, #1
	movs r1, #0x78
	bl sub_08000634
	b _08017D7C
	.align 2, 0
_08017D70: .4byte gUnknown_02000020
_08017D74:
	movs r0, #1
	movs r1, #0x50
	bl sub_08000634
_08017D7C:
	movs r0, #1
	b _08017D82
_08017D80:
	movs r0, #0
_08017D82:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08017D88
sub_08017D88: @ 0x08017D88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r2
	ldrb r2, [r6]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0, #0x4c]
	adds r0, #0x50
	ldrb r5, [r0]
	mov r8, r2
	movs r4, #0
	cmp r4, r5
	bhs _08017DD8
	ldr r0, _08017DE4 @ =gUnknown_02000020
	mov ip, r0
	adds r3, r1, #0
_08017DB2:
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _08017DD0
	adds r2, r0, #0
	mov r1, sb
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017DD0
	ldr r0, [r3]
	mov r7, ip
	ldrh r1, [r7]
	ands r0, r1
	cmp r0, #0
	bne _08017DE8
_08017DD0:
	adds r3, #8
	adds r4, #1
	cmp r4, r5
	blo _08017DB2
_08017DD8:
	ldrb r6, [r6]
	cmp r8, r6
	bne _08017DEC
	movs r0, #0
	b _08017DF6
	.align 2, 0
_08017DE4: .4byte gUnknown_02000020
_08017DE8:
	strb r2, [r6]
	b _08017DD8
_08017DEC:
	movs r0, #1
	movs r1, #0x50
	bl sub_08000634
	movs r0, #1
_08017DF6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017E04
sub_08017E04: @ 0x08017E04
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #1]
	ldrb r0, [r2, #3]
	cmp r0, r3
	beq _08017E1C
	ldr r0, _08017E20 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08017E24
_08017E1C:
	movs r0, #0
	b _08017E30
	.align 2, 0
_08017E20: .4byte gUnknown_02000020
_08017E24:
	strb r3, [r2, #3]
	movs r0, #1
	movs r1, #0x79
	bl sub_08000634
	movs r0, #1
_08017E30:
	pop {r1}
	bx r1

	thumb_func_start sub_08017E34
sub_08017E34: @ 0x08017E34
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r0, r3, #5
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	bl sub_0803D7D4
	subs r4, r4, r5
	muls r0, r4, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803D7D4
	adds r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08017E60
sub_08017E60: @ 0x08017E60
	push {r4, r5, lr}
	cmp r0, #0xf0
	ble _08017E6A
	movs r5, #0xf0
	b _08017E76
_08017E6A:
	cmp r0, #0
	bge _08017E72
	movs r5, #0
	b _08017E76
_08017E72:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08017E76:
	cmp r1, #0xa0
	ble _08017E7E
	movs r4, #0xa0
	b _08017E8A
_08017E7E:
	cmp r1, #0
	bge _08017E86
	movs r4, #0
	b _08017E8A
_08017E86:
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
_08017E8A:
	cmp r2, #0xf0
	ble _08017E92
	movs r2, #0xf0
	b _08017E9E
_08017E92:
	cmp r2, #0
	bge _08017E9A
	movs r2, #0
	b _08017E9E
_08017E9A:
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
_08017E9E:
	cmp r3, #0xa0
	ble _08017EA6
	movs r3, #0xa0
	b _08017EB2
_08017EA6:
	cmp r3, #0
	bge _08017EAE
	movs r3, #0
	b _08017EB2
_08017EAE:
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_08017EB2:
	ldr r1, _08017EC8 @ =0x04000040
	lsls r0, r5, #8
	orrs r0, r2
	strh r0, [r1]
	adds r1, #4
	lsls r0, r4, #8
	orrs r0, r3
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017EC8: .4byte 0x04000040

	thumb_func_start sub_08017ECC
sub_08017ECC: @ 0x08017ECC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	adds r4, r1, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x3c]
	cmp r4, #0
	bge _08017EE6
	rsbs r1, r4, #0
_08017EE6:
	adds r0, r4, #0
	subs r0, #0xf0
	cmp r0, #0
	bge _08017EF0
	rsbs r0, r0, #0
_08017EF0:
	cmp r1, r0
	bge _08017EF6
	adds r1, r0, #0
_08017EF6:
	adds r3, r2, #0
	cmp r2, #0
	bge _08017EFE
	rsbs r3, r2, #0
_08017EFE:
	adds r0, r2, #0
	subs r0, #0xa0
	cmp r0, #0
	bge _08017F08
	rsbs r0, r0, #0
_08017F08:
	cmp r3, r0
	bge _08017F0E
	adds r3, r0, #0
_08017F0E:
	cmp r1, r3
	bge _08017F16
	adds r1, r3, #0
	b _08017F18
_08017F16:
	adds r3, r1, #0
_08017F18:
	cmp r5, #1
	bne _08017F2C
	mov sl, r4
	mov r0, sl
	str r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #0xc]
	add r1, sl
	str r1, [sp, #0x14]
	b _08017F50
_08017F2C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _08017F42
	subs r0, r4, r1
	str r0, [sp, #4]
	adds r1, r1, r4
	mov sl, r1
	str r4, [sp, #0x14]
	str r4, [sp, #0xc]
	b _08017F50
_08017F42:
	subs r0, r4, r1
	str r0, [sp, #4]
	adds r4, r4, r1
	mov sl, r4
	str r0, [sp, #0xc]
	mov r0, sl
	str r0, [sp, #0x14]
_08017F50:
	cmp r6, #1
	bne _08017F64
	mov sb, r2
	str r2, [sp, #8]
	mov r0, sb
	subs r0, r0, r3
	str r0, [sp, #0x10]
	add r3, sb
	str r3, [sp, #0x18]
	b _08017F86
_08017F64:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08017F7A
	subs r0, r2, r3
	str r0, [sp, #8]
	adds r3, r3, r2
	mov sb, r3
	str r2, [sp, #0x18]
	str r2, [sp, #0x10]
	b _08017F86
_08017F7A:
	subs r0, r2, r3
	str r0, [sp, #8]
	adds r2, r2, r3
	mov sb, r2
	str r0, [sp, #0x10]
	str r2, [sp, #0x18]
_08017F86:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, sl
	mov r3, sb
	bl sub_08017E60
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08018048 @ =0x04000048
	ldr r2, _0801804C @ =0x00003F3F
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08018050 @ =0x00003F20
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne _08017FC6
	bl sub_08009BD0
	bl sub_08009BE8
	ldr r0, [sp, #0x44]
	bl sub_08017C64
_08017FC6:
	movs r7, #0
	ldr r0, [sp]
	cmp r7, r0
	bhs _0801801E
_08017FCE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp]
	adds r3, r7, #0
	bl sub_08017E34
	mov r8, r0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp]
	adds r3, r7, #0
	bl sub_08017E34
	adds r6, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x14]
	ldr r2, [sp]
	adds r3, r7, #0
	bl sub_08017E34
	adds r5, r0, #0
	mov r0, sb
	ldr r1, [sp, #0x18]
	ldr r2, [sp]
	adds r3, r7, #0
	bl sub_08017E34
	adds r4, r0, #0
	bl sub_08009BD0
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08017E60
	adds r7, #1
	ldr r2, [sp]
	cmp r7, r2
	blo _08017FCE
_0801801E:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_08017E60
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08018054 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018048: .4byte 0x04000048
_0801804C: .4byte 0x00003F3F
_08018050: .4byte 0x00003F20
_08018054: .4byte 0x0000DFFF

	thumb_func_start sub_08018058
sub_08018058: @ 0x08018058
	push {r4, lr}
	sub sp, #0xc
	adds r4, r3, #0
	cmp r0, #0
	beq _08018094
	cmp r1, #0
	bne _0801806C
	movs r3, #1
	movs r1, #1
	b _08018072
_0801806C:
	movs r3, #1
	rsbs r3, r3, #0
	adds r1, r3, #0
_08018072:
	cmp r0, #1
	bne _0801807A
	movs r1, #0
	b _08018080
_0801807A:
	cmp r0, #2
	bne _08018080
	movs r3, #0
_08018080:
	str r1, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #8]
	adds r0, r2, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	bl sub_08017ECC
_08018094:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801809C
sub_0801809C: @ 0x0801809C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, [sp, #0x1c]
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_08018058
	cmp r4, #0
	bne _080180C8
	bl sub_08009C04
	adds r0, r6, #0
	bl sub_08017C64
_080180C8:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080180D0
sub_080180D0: @ 0x080180D0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [sp, #0x18]
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r4, #0
	movs r1, #1
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_08018058
	cmp r4, #0
	bne _080180F8
	bl sub_08009BF4
	b _080180FC
_080180F8:
	bl sub_08009BDC
_080180FC:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08018104
sub_08018104: @ 0x08018104
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe4
	adds r7, r0, #0
	movs r0, #0
	mov sl, r0
	ldrb r0, [r7, #2]
	movs r5, #0x64
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	bl sub_08017464
	ldrb r0, [r7, #2]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	movs r2, #0xde
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrb r1, [r1]
	bl sub_08017520
	adds r1, r7, #0
	adds r1, #0x1c
	add r0, sp, #8
	movs r2, #0
	bl sub_080175C4
	add r0, sp, #0x50
	adds r1, r7, #0
	adds r1, #0x2c
	movs r2, #0
	bl sub_080175C4
	add r3, sp, #0x98
	mov r8, r3
	adds r1, r7, #0
	adds r1, #0x3c
	mov r0, r8
	movs r2, #0
	bl sub_080175C4
	ldrb r1, [r7, #2]
	adds r2, r1, #0
	muls r2, r5, r2
	ldr r0, [r7, #0x4c]
	adds r0, r0, r2
	bl sub_08017720
	ldrb r0, [r7, #2]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	bl sub_080177B8
	ldrb r0, [r7, #2]
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	bl sub_08017828
	adds r6, r7, #0
	adds r6, #0x5c
	adds r0, r6, #0
	bl sub_08017868
	ldrb r0, [r7, #3]
	ldr r1, [r7, #0x54]
	ldrb r4, [r7, #2]
	adds r3, r4, #0
	muls r3, r5, r3
	ldr r2, [r7, #0x4c]
	adds r2, r2, r3
	str r4, [sp]
	str r6, [sp, #4]
	movs r3, #0
	bl sub_08017950
	ldrb r0, [r7, #2]
	ldr r1, [r7, #0x4c]
	muls r0, r5, r0
	adds r0, r0, r1
	ldr r3, [r0, #0x50]
	ldrb r1, [r7, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r3, r3, r0
	adds r0, r3, #0
	adds r0, #0x52
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x54
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r2, r3, #0
	adds r2, #0x56
	movs r4, #0
	ldrsh r2, [r2, r4]
	ldr r3, [r3, #0x58]
	str r7, [sp]
	bl sub_0801809C
	movs r0, #0
	str r0, [sp, #0xe0]
	mov sb, r8
	b _08018284
_080181EA:
	ldrb r1, [r7, #3]
	ldrb r0, [r7, #2]
	ldr r2, [r7, #0x4c]
	muls r0, r6, r0
	adds r0, r0, r2
	ldr r2, [r0, #0x50]
	adds r0, r7, #0
	bl sub_08017D1C
	cmp r0, #1
	bne _08018206
	movs r2, #1
	str r2, [sp, #0xe0]
	b _080182A8
_08018206:
	adds r0, r7, #3
	ldrb r1, [r7, #2]
	ldr r2, [r7, #0x4c]
	muls r1, r6, r1
	adds r1, r1, r2
	ldr r1, [r1, #0x50]
	ldr r2, [r7, #0x54]
	bl sub_08017D88
	adds r5, r0, #0
	adds r0, r7, #0
	bl sub_08017E04
	cmp r0, #1
	bne _08018226
	movs r5, #1
_08018226:
	bl sub_08009BD0
	ldrb r0, [r7, #3]
	ldr r1, [r7, #0x54]
	ldrb r4, [r7, #2]
	adds r3, r4, #0
	muls r3, r6, r3
	ldr r2, [r7, #0x4c]
	adds r2, r2, r3
	str r4, [sp]
	mov r3, r8
	str r3, [sp, #4]
	mov r3, sl
	bl sub_08017950
	cmp r5, #1
	bne _08018280
	ldrb r0, [r7, #2]
	ldr r1, [r7, #0x4c]
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r3, [r0, #0x50]
	ldrb r1, [r7, #3]
	ldr r0, [r7, #0x58]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08018268
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r3, r0
	b _08018272
_08018268:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r3, r0
	adds r0, #0x17
_08018272:
	str r0, [r7, #0x3c]
	adds r1, r7, #0
	adds r1, #0x3c
	mov r0, sb
	movs r2, #1
	bl sub_080175C4
_08018280:
	movs r4, #1
	add sl, r4
_08018284:
	movs r0, #0x5c
	adds r0, r0, r7
	mov r8, r0
	bl sub_08017B98
	bl sub_08000BC0
	ldrb r0, [r7, #3]
	ldrb r1, [r7, #2]
	ldr r2, [r7, #0x4c]
	movs r6, #0x64
	muls r1, r6, r1
	adds r1, r1, r2
	ldr r1, [r1, #0x50]
	bl sub_08017CCC
	cmp r0, #1
	bne _080181EA
_080182A8:
	ldrb r1, [r7, #2]
	ldr r2, [r7, #0x4c]
	movs r0, #0x64
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r3, [r0, #0x50]
	ldrb r1, [r7, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r3, r3, r0
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x5e
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r2, r3, #0
	adds r2, #0x60
	movs r4, #0
	ldrsh r2, [r2, r4]
	ldr r3, [r3, #0x64]
	str r7, [sp]
	bl sub_080180D0
	ldr r0, [sp, #0xe0]
	add sp, #0xe4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080182F0
sub_080182F0: @ 0x080182F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	adds r4, r1, #0
	mov sb, r2
	ldr r1, _080183E0 @ =gUnknown_020377F0
	movs r0, #0x30
	strh r0, [r1]
	movs r5, #0
	ldr r0, _080183E4 @ =gUnknown_087B84A0
	mov sl, r0
	ldr r1, _080183E8 @ =gUnknown_0832512C
	mov ip, r1
	movs r2, #0
	ldr r0, _080183EC @ =0x0000FFFF
	adds r6, r0, #0
	ldr r1, _080183F0 @ =gUnknown_0203A690
_0801831A:
	str r2, [r1]
	ldrh r0, [r1, #4]
	orrs r0, r6
	strh r0, [r1, #4]
	adds r1, #8
	adds r5, #1
	cmp r5, #0x13
	bls _0801831A
	cmp r4, #0
	bgt _08018330
	movs r4, #1
_08018330:
	movs r1, #0
	mov r8, r1
	strb r4, [r7, #1]
	strb r4, [r7, #3]
	mov r2, sl
	ldr r4, [r2, #0x50]
	ldrb r1, [r7, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x51
	ldrb r0, [r0]
	strb r0, [r7]
	strb r0, [r7, #2]
	ldr r2, [r3]
	str r2, [r7, #4]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r4, #0
	mov r1, ip
	bl sub_0803DFE0
	mov r0, sl
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	movs r0, #3
	strb r0, [r1]
	mov r1, sb
	str r1, [r7, #0x54]
	ldr r0, [sp, #0x3c]
	str r0, [r7, #0x58]
	ldrb r0, [r7, #2]
	movs r5, #0x64
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0xc
	strb r0, [r1]
	movs r6, #0
	mov r2, r8
	strh r2, [r7, #0x22]
	ldr r0, _080183EC @ =0x0000FFFF
	strh r0, [r7, #0x24]
	movs r0, #0xe
	strh r0, [r7, #0x26]
	movs r2, #4
	strh r2, [r7, #0x28]
	adds r3, r7, #0
	adds r3, #0x2a
	movs r0, #1
	strb r0, [r3]
	str r4, [r7, #0x2c]
	adds r1, #0x10
	movs r0, #8
	strb r0, [r1]
	movs r0, #0x14
	strh r0, [r7, #0x32]
	movs r0, #0x10
	strh r0, [r7, #0x34]
	movs r0, #0xa
	strh r0, [r7, #0x36]
	strh r2, [r7, #0x38]
	adds r0, r7, #0
	adds r0, #0x3a
	strb r6, [r0]
	ldrb r0, [r7, #2]
	ldr r1, [r7, #0x4c]
	muls r0, r5, r0
	adds r0, r0, r1
	ldr r4, [r0, #0x50]
	ldrb r1, [r7, #3]
	ldr r0, [r7, #0x58]
	adds r0, r0, r1
	ldrb r0, [r0]
	str r3, [sp]
	cmp r0, #0
	bne _080183F4
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	b _080183FE
	.align 2, 0
_080183E0: .4byte gUnknown_020377F0
_080183E4: .4byte gUnknown_087B84A0
_080183E8: .4byte gUnknown_0832512C
_080183EC: .4byte 0x0000FFFF
_080183F0: .4byte gUnknown_0203A690
_080183F4:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r0, #0x17
_080183FE:
	str r0, [r7, #0x3c]
	adds r1, r7, #0
	adds r1, #0x40
	movs r2, #0
	movs r0, #0xb
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x42
	strh r2, [r0]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xd
	strh r0, [r1]
	adds r1, #2
	movs r0, #4
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
	movs r5, #0
	adds r0, r7, #0
	adds r0, #0x5c
	str r0, [sp, #4]
	adds r1, #0x1a
	str r1, [sp, #8]
	adds r2, r7, #0
	adds r2, #0x68
	str r2, [sp, #0xc]
	adds r0, #0x10
	str r0, [sp, #0x10]
	adds r1, #0xc
	str r1, [sp, #0x14]
	adds r2, #0xc
	str r2, [sp, #0x18]
	movs r0, #0x78
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0x7c
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0x80
	adds r2, r2, r7
	mov ip, r2
	movs r3, #0
_0801845A:
	movs r0, #0x2c
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r2, [sp, #4]
	adds r0, r2, r1
	str r3, [r0]
	adds r4, r7, r1
	adds r0, r4, #0
	adds r0, #0x60
	strb r3, [r0]
	adds r2, r4, #0
	adds r2, #0x62
	ldr r0, _08018578 @ =0x0000FFFF
	strh r0, [r2]
	ldr r2, [sp, #8]
	adds r0, r2, r1
	str r3, [r0]
	ldr r2, [sp, #0xc]
	adds r0, r2, r1
	str r3, [r0]
	ldr r2, [sp, #0x10]
	adds r0, r2, r1
	str r3, [r0]
	ldr r2, [sp, #0x14]
	adds r0, r2, r1
	str r3, [r0]
	ldr r2, [sp, #0x18]
	adds r0, r2, r1
	str r3, [r0]
	mov r2, sl
	adds r0, r2, r1
	str r3, [r0]
	mov r2, sb
	adds r0, r2, r1
	str r3, [r0]
	add r1, ip
	str r3, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	strh r3, [r0]
	adds r5, #1
	cmp r5, #7
	bls _0801845A
	ldrb r1, [r7, #2]
	ldr r2, [r7, #0x4c]
	movs r0, #0x64
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0x58]
	mov r8, r1
	cmp r1, #0
	beq _08018542
	adds r0, #0x5c
	ldrb r6, [r0]
	cmp r6, #8
	bls _080184CC
	movs r6, #8
_080184CC:
	movs r5, #0
	cmp r5, r6
	bhs _08018542
_080184D2:
	movs r0, #0x2c
	adds r2, r5, #0
	muls r2, r0, r2
	ldr r0, [sp, #4]
	adds r1, r0, r2
	mov r0, r8
	adds r3, r2, r0
	ldr r0, [r3]
	str r0, [r1]
	adds r4, r7, r2
	ldrb r1, [r3, #4]
	adds r0, r4, #0
	adds r0, #0x60
	strb r1, [r0]
	ldrh r0, [r3, #6]
	adds r1, r4, #0
	adds r1, #0x62
	strh r0, [r1]
	ldr r0, [sp, #8]
	adds r1, r0, r2
	ldr r0, [r3, #8]
	str r0, [r1]
	ldr r0, [sp, #0xc]
	adds r1, r0, r2
	ldr r0, [r3, #0xc]
	str r0, [r1]
	ldr r0, [sp, #0x10]
	adds r1, r0, r2
	ldr r0, [r3, #0x10]
	str r0, [r1]
	ldr r0, [sp, #0x14]
	adds r1, r0, r2
	ldr r0, [r3, #0x14]
	str r0, [r1]
	ldr r0, [sp, #0x18]
	adds r1, r0, r2
	ldr r0, [r3, #0x18]
	str r0, [r1]
	mov r0, sl
	adds r1, r0, r2
	ldr r0, [r3, #0x1c]
	str r0, [r1]
	mov r0, sb
	adds r1, r0, r2
	ldr r0, [r3, #0x20]
	str r0, [r1]
	add r2, ip
	ldr r0, [r3, #0x24]
	str r0, [r2]
	ldrh r1, [r3, #0x28]
	adds r0, r4, #0
	adds r0, #0x84
	strh r1, [r0]
	adds r5, #1
	cmp r5, r6
	blo _080184D2
_08018542:
	ldrb r2, [r7, #2]
	movs r0, #0x64
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, [r7, #0x4c]
	adds r0, r0, r1
	ldr r1, [r7, #0x54]
	bl sub_080174C4
	movs r2, #0xde
	lsls r2, r2, #1
	adds r1, r7, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08018568
	movs r0, #2
	ldr r1, [sp]
	strb r0, [r1]
_08018568:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018578: .4byte 0x0000FFFF

	thumb_func_start sub_0801857C
sub_0801857C: @ 0x0801857C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c4
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	movs r0, #0xba
	bl sub_0801B750
	add r0, sp, #4
	strb r4, [r0, #1]
_08018592:
	bl sub_08000B84
	bl sub_08009B94
	add r0, sp, #4
	ldrb r1, [r0, #1]
	str r5, [sp]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_080182F0
	add r0, sp, #4
	bl sub_08018104
	cmp r0, #0
	bne _08018592
	bl sub_0801B744
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080185D0 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	add r0, sp, #4
	ldrb r0, [r0, #3]
	add sp, #0x1c4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080185D0: .4byte 0x000080FF

	thumb_func_start sub_080185D4
sub_080185D4: @ 0x080185D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	cmp r2, r0
	ble _080185EC
	movs r4, #1
	str r4, [sp, #4]
	subs r2, r2, r0
	b _080185F4
_080185EC:
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	subs r2, r0, r2
_080185F4:
	mov sl, r2
	cmp r3, r1
	ble _08018602
	movs r2, #1
	str r2, [sp, #8]
	subs r3, r3, r1
	b _0801860A
_08018602:
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #8]
	subs r3, r1, r3
_0801860A:
	mov sb, r3
	mov ip, r0
	adds r7, r1, #0
	cmp sl, sb
	blt _0801869C
	mov r0, sl
	rsbs r5, r0, #0
	cmp r0, #0
	bge _0801861E
	b _0801871C
_0801861E:
	mov r6, sp
	movs r1, #1
	add r1, sl
	mov r8, r1
_08018626:
	mov r2, ip
	asrs r1, r2, #3
	asrs r4, r7, #3
	mov r3, ip
	movs r0, #7
	ands r3, r0
	adds r2, r7, #0
	ands r2, r0
	lsls r1, r1, #6
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #7
	adds r1, r1, r0
	adds r1, r1, r3
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r1, r4
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08018660
	ldrh r0, [r2]
	strh r0, [r6]
	add r0, sp, #0x2c
	ldrb r0, [r0]
	strb r0, [r6]
	b _0801866E
_08018660:
	ldr r4, _08018698 @ =0x05FFFFFF
	adds r2, r1, r4
	ldrh r0, [r2]
	strh r0, [r6]
	add r0, sp, #0x2c
	ldrb r0, [r0]
	strb r0, [r6, #1]
_0801866E:
	ldrh r0, [r6]
	strh r0, [r2]
	ldr r1, [sp, #4]
	add ip, r1
	mov r2, sb
	lsls r0, r2, #1
	adds r5, r5, r0
	cmp r5, #0
	blt _0801868A
	ldr r4, [sp, #8]
	adds r7, r7, r4
	mov r1, sl
	lsls r0, r1, #1
	subs r5, r5, r0
_0801868A:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r4, r8
	cmp r4, #0
	bne _08018626
	b _0801871C
	.align 2, 0
_08018698: .4byte 0x05FFFFFF
_0801869C:
	mov r0, sb
	rsbs r5, r0, #0
	cmp r0, #0
	blt _0801871C
	mov r6, sp
	movs r1, #1
	add r1, sb
	mov r8, r1
_080186AC:
	mov r2, ip
	asrs r1, r2, #3
	asrs r4, r7, #3
	mov r3, ip
	movs r0, #7
	ands r3, r0
	adds r2, r7, #0
	ands r2, r0
	lsls r1, r1, #6
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #7
	adds r1, r1, r0
	adds r1, r1, r3
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r1, r4
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080186E6
	ldrh r0, [r2]
	strh r0, [r6]
	add r0, sp, #0x2c
	ldrb r0, [r0]
	strb r0, [r6]
	b _080186F4
_080186E6:
	ldr r4, _0801872C @ =0x05FFFFFF
	adds r2, r1, r4
	ldrh r0, [r2]
	strh r0, [r6]
	add r0, sp, #0x2c
	ldrb r0, [r0]
	strb r0, [r6, #1]
_080186F4:
	ldrh r0, [r6]
	strh r0, [r2]
	ldr r1, [sp, #8]
	adds r7, r7, r1
	mov r2, sl
	lsls r0, r2, #1
	adds r5, r5, r0
	cmp r5, #0
	blt _08018710
	ldr r4, [sp, #4]
	add ip, r4
	mov r1, sb
	lsls r0, r1, #1
	subs r5, r5, r0
_08018710:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	mov r4, r8
	cmp r4, #0
	bne _080186AC
_0801871C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801872C: .4byte 0x05FFFFFF

	thumb_func_start sub_08018730
sub_08018730: @ 0x08018730
	sub sp, #4
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov r1, sp
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	bx lr

	thumb_func_start sub_08018748
sub_08018748: @ 0x08018748
	sub sp, #4
	str r1, [sp]
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start sub_08018760
sub_08018760: @ 0x08018760
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080187BC @ =0x05000100
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r2, [r4, #4]
	ldr r3, _080187C0 @ =0xFFFFFF00
	adds r2, r2, r3
	bl sub_080002EC
	ldr r0, _080187C4 @ =0x05000220
	ldr r1, [r4, #8]
	adds r1, #0x20
	ldrh r2, [r4, #0xc]
	subs r2, #0x20
	bl sub_080002EC
	ldrb r0, [r4, #0xe]
	bl sub_08018730
	adds r5, r0, #0
	movs r0, #0x1b
	adds r1, r5, #0
	bl sub_08018748
	movs r0, #0x4b
	adds r1, r5, #0
	bl sub_08018748
	ldrb r0, [r4, #0xf]
	bl sub_08018730
	adds r5, r0, #0
	movs r0, #0x1f
	adds r1, r5, #0
	bl sub_08018748
	movs r0, #0x4f
	adds r1, r5, #0
	bl sub_08018748
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080187BC: .4byte 0x05000100
_080187C0: .4byte 0xFFFFFF00
_080187C4: .4byte 0x05000220

	thumb_func_start sub_080187C8
sub_080187C8: @ 0x080187C8
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	bne _080187D8
	ldr r0, _080187D4 @ =gUnknown_087B8B10
	b _080187E6
	.align 2, 0
_080187D4: .4byte gUnknown_087B8B10
_080187D8:
	cmp r1, #1
	bne _080187E4
	ldr r0, _080187E0 @ =gUnknown_087B8AE8
	b _080187E6
	.align 2, 0
_080187E0: .4byte gUnknown_087B8AE8
_080187E4:
	ldr r0, _080187EC @ =gUnknown_087B8AFC
_080187E6:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_080187EC: .4byte gUnknown_087B8AFC

	thumb_func_start sub_080187F0
sub_080187F0: @ 0x080187F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x24]
	str r3, [sp, #0x28]
	ldr r0, [sp, #0x4c]
	mov r8, r0
	add r3, sp, #0xc
	movs r6, #0x1f
	adds r0, r1, #0
	ands r0, r6
	str r0, [sp, #0xc]
	movs r5, #0xf8
	lsls r5, r5, #2
	adds r0, r1, #0
	ands r0, r5
	lsrs r0, r0, #5
	str r0, [r3, #4]
	movs r4, #0xf8
	lsls r4, r4, #7
	ands r1, r4
	lsrs r1, r1, #0xa
	str r1, [r3, #8]
	add r1, sp, #0x18
	adds r0, r2, #0
	ands r0, r6
	str r0, [sp, #0x18]
	adds r0, r2, #0
	ands r0, r5
	lsrs r0, r0, #5
	str r0, [r1, #4]
	ands r2, r4
	lsrs r2, r2, #0xa
	str r2, [r1, #8]
	movs r6, #0
	mov r7, sp
	mov sl, r1
	mov sb, r3
_08018842:
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	ldm r1!, {r5}
	mov r2, sl
	adds r2, #4
	mov sl, r2
	subs r2, #4
	ldm r2!, {r4}
	mov r1, r8
	ldr r0, [r1]
	subs r4, r4, r5
	lsls r0, r0, #0xa
	ldr r1, [sp, #0x28]
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r0, r0, r5
	stm r7!, {r0}
	adds r6, #1
	cmp r6, #2
	bls _08018842
	ldr r0, [sp, #4]
	lsls r0, r0, #5
	ldr r1, [sp]
	orrs r1, r0
	ldr r0, [sp, #8]
	lsls r0, r0, #0xa
	orrs r1, r0
	ldr r0, [sp, #0x24]
	bl sub_08018748
	ldr r2, [sp, #0x50]
	cmp r2, #0
	beq _08018898
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r2]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2]
_08018898:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080188A8
sub_080188A8: @ 0x080188A8
	push {lr}
	adds r3, r0, #0
	cmp r1, #0
	bne _080188BC
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r3, #0
	bl sub_080002EC
	b _080188C6
_080188BC:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r3, #0
	bl sub_0803D358
_080188C6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080188CC
sub_080188CC: @ 0x080188CC
	push {lr}
	ldr r0, [r0]
	movs r1, #1
	movs r2, #0
	bl sub_080188A8
	pop {r0}
	bx r0

	thumb_func_start sub_080188DC
sub_080188DC: @ 0x080188DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r6, r1, #0
	mov sl, r2
	mov r8, r3
	movs r0, #0xa
	ldrsh r7, [r6, r0]
	movs r0, #0xc
	ldrsh r4, [r6, r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08018908
	movs r0, #0xe
	ldrsh r5, [r6, r0]
	movs r0, #0x10
	ldrsh r3, [r6, r0]
	b _0801891A
_08018908:
	ldr r0, [r6, #4]
	bl sub_08009CBC
	adds r5, r0, #2
	ldr r0, [r6, #4]
	bl sub_08009CC8
	lsls r0, r0, #1
	adds r3, r0, #2
_0801891A:
	mov r0, sl
	cmp r0, #0
	bne _08018950
	mov r0, sb
	cmp r0, #0
	beq _0801893E
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	mov r0, sb
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08009C7C
	b _08018950
_0801893E:
	mov r0, r8
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009C50
_08018950:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009CD4
	ldrb r0, [r6, #9]
	cmp r0, #0
	beq _0801896E
	ldr r0, [r6, #4]
	bl sub_08009CBC
	ldrb r1, [r6, #8]
	subs r5, r1, r0
	cmp r5, #0
	bne _0801897A
_0801896E:
	adds r0, r7, #1
	adds r1, r4, #1
	ldr r2, [r6, #4]
	bl sub_08009D4C
	b _080189A4
_0801897A:
	cmp r5, #0
	ble _08018998
	adds r0, r7, #1
	adds r4, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009D94
	adds r0, r5, #1
	adds r0, r7, r0
	ldr r2, [r6, #4]
	adds r1, r4, #0
	bl sub_08009D4C
	b _080189A4
_08018998:
	adds r0, r5, #1
	adds r0, r7, r0
	adds r1, r4, #1
	ldr r2, [r6, #4]
	bl sub_08009D4C
_080189A4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080189B4
sub_080189B4: @ 0x080189B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x20]
	ldr r1, _080189E0 @ =0x00000A08
	adds r0, r5, r1
	ldr r1, _080189E4 @ =gUnknown_087B8B30
	movs r2, #0x14
	bl sub_080002C4
	cmp r4, #0
	bne _080189F4
	ldr r2, _080189E8 @ =0x00000A1C
	adds r0, r5, r2
	ldr r1, _080189EC @ =gUnknown_08325134
	ldr r3, _080189F0 @ =gUnknown_087BAF10
	b _08018A0C
	.align 2, 0
_080189E0: .4byte 0x00000A08
_080189E4: .4byte gUnknown_087B8B30
_080189E8: .4byte 0x00000A1C
_080189EC: .4byte gUnknown_08325134
_080189F0: .4byte gUnknown_087BAF10
_080189F4:
	ldr r1, _08018A14 @ =0x00000A7E
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08018A24
	ldr r2, _08018A18 @ =0x00000A1C
	adds r0, r5, r2
	ldr r1, _08018A1C @ =gUnknown_08325134
	ldr r3, _08018A20 @ =gUnknown_087BAF1C
_08018A0C:
	adds r2, r7, #0
	bl sub_0803DFE0
	b _08018A8C
	.align 2, 0
_08018A14: .4byte 0x00000A7E
_08018A18: .4byte 0x00000A1C
_08018A1C: .4byte gUnknown_08325134
_08018A20: .4byte gUnknown_087BAF1C
_08018A24:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _08018A50
	cmp r6, r8
	blo _08018A50
	ldr r1, _08018A44 @ =0x00000A1C
	adds r0, r5, r1
	ldr r1, _08018A48 @ =gUnknown_0832513C
	ldr r2, _08018A4C @ =gUnknown_087BAF24
	str r2, [sp]
	adds r2, r7, #0
	ldr r3, [sp, #0x24]
	bl sub_0803DFE0
	b _08018A8C
	.align 2, 0
_08018A44: .4byte 0x00000A1C
_08018A48: .4byte gUnknown_0832513C
_08018A4C: .4byte gUnknown_087BAF24
_08018A50:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _08018A78
	ldr r1, _08018A6C @ =0x00000A1C
	adds r0, r5, r1
	ldr r1, _08018A70 @ =gUnknown_08325148
	str r2, [sp]
	ldr r2, _08018A74 @ =gUnknown_087BAF24
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0803DFE0
	b _08018A8C
	.align 2, 0
_08018A6C: .4byte 0x00000A1C
_08018A70: .4byte gUnknown_08325148
_08018A74: .4byte gUnknown_087BAF24
_08018A78:
	ldr r2, _08018AA4 @ =0x00000A1C
	adds r0, r5, r2
	ldr r1, _08018AA8 @ =gUnknown_08325154
	str r6, [sp]
	ldr r2, _08018AAC @ =gUnknown_087BAF24
	str r2, [sp, #4]
	adds r2, r7, #0
	ldr r3, [sp, #0x2c]
	bl sub_0803DFE0
_08018A8C:
	ldr r0, _08018AB0 @ =0x00000A0C
	adds r1, r5, r0
	ldr r2, _08018AA4 @ =0x00000A1C
	adds r0, r5, r2
	str r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018AA4: .4byte 0x00000A1C
_08018AA8: .4byte gUnknown_08325154
_08018AAC: .4byte gUnknown_087BAF24
_08018AB0: .4byte 0x00000A0C

	thumb_func_start sub_08018AB4
sub_08018AB4: @ 0x08018AB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, _08018AE0 @ =0x00000A58
	adds r0, r4, r1
	ldr r1, _08018AE4 @ =gUnknown_087B8B44
	movs r2, #0x14
	bl sub_080002C4
	ldr r0, _08018AE8 @ =0x00000A6C
	adds r5, r4, r0
	ldr r1, _08018AEC @ =gUnknown_08325160
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_0803DFE0
	ldr r1, _08018AF0 @ =0x00000A5C
	adds r4, r4, r1
	str r5, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018AE0: .4byte 0x00000A58
_08018AE4: .4byte gUnknown_087B8B44
_08018AE8: .4byte 0x00000A6C
_08018AEC: .4byte gUnknown_08325160
_08018AF0: .4byte 0x00000A5C

	thumb_func_start sub_08018AF4
sub_08018AF4: @ 0x08018AF4
	push {lr}
	sub sp, #4
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _08018B14 @ =0x00000A08
	adds r3, r3, r0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	adds r1, r3, #0
	movs r3, #0
	bl sub_080188DC
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08018B14: .4byte 0x00000A08

	thumb_func_start sub_08018B18
sub_08018B18: @ 0x08018B18
	movs r1, #0
	str r1, [r0]
	ldr r2, _08018B3C @ =0x0000FFFF
	strh r2, [r0, #4]
	movs r2, #1
	strb r2, [r0, #6]
	str r1, [r0, #8]
	strb r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	strb r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	str r1, [r0, #0x20]
	subs r1, #1
	strh r1, [r0, #0x24]
	bx lr
	.align 2, 0
_08018B3C: .4byte 0x0000FFFF

	thumb_func_start sub_08018B40
sub_08018B40: @ 0x08018B40
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _08018B5A
	adds r4, r0, #0
_08018B4C:
	adds r0, r4, #0
	bl sub_08018B18
	adds r4, #0x28
	adds r5, #1
	cmp r5, r6
	blo _08018B4C
_08018B5A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018B60
sub_08018B60: @ 0x08018B60
	ldr r1, [r0, #0x10]
	lsls r1, r1, #8
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x14]
	lsls r1, r1, #8
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_08018B70
sub_08018B70: @ 0x08018B70
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _08018B8A
	adds r4, r0, #0
_08018B7C:
	adds r0, r4, #0
	bl sub_08018B60
	adds r4, #0x28
	adds r5, #1
	cmp r5, r6
	blo _08018B7C
_08018B8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018B90
sub_08018B90: @ 0x08018B90
	push {lr}
	adds r3, r0, #0
	ldr r0, _08018BB8 @ =0x40008000
	cmp r3, r0
	beq _08018C48
	cmp r3, r0
	bhi _08018BD0
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r3, r0
	beq _08018C40
	cmp r3, r0
	bhi _08018BBC
	cmp r3, #0
	beq _08018C14
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _08018C20
	b _08018C60
	.align 2, 0
_08018BB8: .4byte 0x40008000
_08018BBC:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r3, r0
	beq _08018C18
	ldr r0, _08018BCC @ =0x40004000
	cmp r3, r0
	beq _08018C28
	b _08018C60
	.align 2, 0
_08018BCC: .4byte 0x40004000
_08018BD0:
	ldr r0, _08018BEC @ =0x80008000
	cmp r3, r0
	beq _08018C50
	cmp r3, r0
	bhi _08018BF4
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r3, r0
	beq _08018C1C
	ldr r0, _08018BF0 @ =0x80004000
	cmp r3, r0
	beq _08018C30
	b _08018C60
	.align 2, 0
_08018BEC: .4byte 0x80008000
_08018BF0: .4byte 0x80004000
_08018BF4:
	ldr r0, _08018C04 @ =0xC0004000
	cmp r3, r0
	beq _08018C38
	cmp r3, r0
	bhi _08018C08
	movs r0, #0xc0
	lsls r0, r0, #0x18
	b _08018C60
	.align 2, 0
_08018C04: .4byte 0xC0004000
_08018C08:
	ldr r0, _08018C10 @ =0xC0008000
	cmp r3, r0
	beq _08018C58
	b _08018C60
	.align 2, 0
_08018C10: .4byte 0xC0008000
_08018C14:
	movs r0, #1
	b _08018C62
_08018C18:
	movs r0, #2
	b _08018C62
_08018C1C:
	movs r0, #4
	b _08018C62
_08018C20:
	movs r0, #2
	str r0, [r1]
	movs r0, #1
	b _08018C64
_08018C28:
	movs r0, #4
	str r0, [r1]
	movs r0, #1
	b _08018C64
_08018C30:
	movs r0, #4
	str r0, [r1]
	movs r0, #2
	b _08018C64
_08018C38:
	movs r0, #8
	str r0, [r1]
	movs r0, #4
	b _08018C64
_08018C40:
	movs r0, #1
	str r0, [r1]
	movs r0, #2
	b _08018C64
_08018C48:
	movs r0, #1
	str r0, [r1]
	movs r0, #4
	b _08018C64
_08018C50:
	movs r0, #2
	str r0, [r1]
	movs r0, #4
	b _08018C64
_08018C58:
	movs r0, #4
	str r0, [r1]
	movs r0, #8
	b _08018C64
_08018C60:
	movs r0, #8
_08018C62:
	str r0, [r1]
_08018C64:
	str r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08018C6C
sub_08018C6C: @ 0x08018C6C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r3, #0
	ldr r2, _08018C88 @ =gUnknown_0203BB80
_08018C74:
	ldr r0, [r2]
	cmp r0, r4
	bne _08018C8C
	movs r5, #6
	ldrsh r0, [r2, r5]
	cmp r0, r1
	bne _08018C8C
	movs r1, #4
	ldrsh r0, [r2, r1]
	b _08018C98
	.align 2, 0
_08018C88: .4byte gUnknown_0203BB80
_08018C8C:
	adds r2, #8
	adds r3, #1
	cmp r3, #0x3f
	bls _08018C74
	movs r0, #1
	rsbs r0, r0, #0
_08018C98:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08018CA0
sub_08018CA0: @ 0x08018CA0
	push {r4, lr}
	movs r2, #0
	movs r3, #2
	rsbs r3, r3, #0
	ldr r1, _08018CC4 @ =gUnknown_0203BB80
_08018CAA:
	ldr r0, [r1]
	cmp r0, #0
	bne _08018CC8
	movs r4, #4
	ldrsh r0, [r1, r4]
	cmp r0, r3
	bne _08018CC8
	movs r4, #6
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _08018CC8
	adds r0, r2, #0
	b _08018CD4
	.align 2, 0
_08018CC4: .4byte gUnknown_0203BB80
_08018CC8:
	adds r1, #8
	adds r2, #1
	cmp r2, #0x3f
	bls _08018CAA
	movs r0, #1
	rsbs r0, r0, #0
_08018CD4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08018CDC
sub_08018CDC: @ 0x08018CDC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	movs r3, #0
	adds r0, r1, #0
	muls r0, r2, r0
	lsls r0, r0, #6
	cmp r3, r0
	bhs _08018D28
	mov r2, sp
	adds r5, r0, #0
_08018CF4:
	adds r1, r6, r3
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08018D0E
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08018D22
	adds r0, r0, r4
	strb r0, [r2]
	b _08018D1E
_08018D0E:
	subs r1, #1
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _08018D22
	adds r0, r0, r4
	strb r0, [r2, #1]
_08018D1E:
	ldrh r0, [r2]
	strh r0, [r1]
_08018D22:
	adds r3, #1
	cmp r3, r5
	blo _08018CF4
_08018D28:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018D30
sub_08018D30: @ 0x08018D30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov sb, r3
	ldr r0, [sp, #0x38]
	mov sl, r0
	cmp r5, #0
	bne _08018D52
	movs r0, #1
	rsbs r0, r0, #0
	b _08018DB2
_08018D52:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _08018D64
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, sl
	str r0, [r3]
	movs r0, #0
	b _08018E8C
_08018D64:
	adds r7, r0, #0
	ldrb r1, [r5, #8]
	bl sub_08018C6C
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08018D7C
	mov r0, sl
	str r4, [r0]
	b _08018E8A
_08018D7C:
	ldr r6, _08018DA0 @ =gUnknown_0203A680
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r2, r0, #0
	muls r2, r3, r2
	lsls r0, r2, #1
	adds r1, r1, r0
	ldr r0, _08018DA4 @ =0x000003FF
	str r2, [sp, #0x10]
	cmp r1, r0
	bls _08018DA8
	mov r0, sl
	str r4, [r0]
	movs r0, #0
	b _08018E8C
	.align 2, 0
_08018DA0: .4byte gUnknown_0203A680
_08018DA4: .4byte 0x000003FF
_08018DA8:
	bl sub_08018CA0
	mov r8, r0
	cmp r8, r4
	bne _08018DBA
_08018DB2:
	mov r1, sl
	str r0, [r1]
	movs r0, #0
	b _08018E8C
_08018DBA:
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #5
	ldr r4, _08018DDC @ =0x06010000
	adds r6, r0, r4
	ldrb r0, [r5]
	cmp r0, #2
	bne _08018E20
	mov r0, sb
	cmp r0, #0
	bne _08018DE0
	adds r0, r6, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x34]
	bl sub_080002EC
	b _08018DE8
	.align 2, 0
_08018DDC: .4byte 0x06010000
_08018DE0:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0803D358
_08018DE8:
	ldrb r3, [r5, #0x12]
	ldrb r0, [r5, #0x10]
	subs r3, r3, r0
	adds r0, r6, #0
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl sub_08018CDC
	ldrb r0, [r5, #0x12]
	lsls r0, r0, #1
	ldr r1, _08018E1C @ =0x05000200
	adds r6, r0, r1
	ldrb r0, [r5, #0x11]
	ldrb r2, [r5, #0x10]
	subs r0, r0, r2
	adds r0, #1
	lsls r4, r0, #1
	lsls r2, r2, #1
	ldr r1, [r5, #0xc]
	adds r1, r1, r2
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_080002EC
	b _08018E66
	.align 2, 0
_08018E1C: .4byte 0x05000200
_08018E20:
	cmp r0, #1
	bne _08018E4C
	movs r2, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	bne _08018E2E
	movs r2, #1
_08018E2E:
	ldrb r1, [r5, #8]
	ldrb r3, [r5, #0x12]
	lsls r3, r3, #1
	ldr r0, _08018E48 @ =0x05000200
	adds r3, r3, r0
	str r6, [sp]
	ldrb r0, [r5, #0x12]
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_08009F78
	b _08018E66
	.align 2, 0
_08018E48: .4byte 0x05000200
_08018E4C:
	mov r1, sb
	cmp r1, #0
	bne _08018E5E
	adds r0, r6, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x34]
	bl sub_080002EC
	b _08018E66
_08018E5E:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0803D358
_08018E66:
	ldr r0, _08018E9C @ =gUnknown_0203BB80
	mov r3, r8
	lsls r2, r3, #3
	adds r2, r2, r0
	str r7, [r2]
	ldr r3, _08018EA0 @ =gUnknown_0203A680
	ldrh r1, [r3]
	strh r1, [r2, #4]
	ldrb r0, [r5, #8]
	strh r0, [r2, #6]
	ldr r4, [sp, #0x10]
	lsls r0, r4, #1
	adds r1, r1, r0
	strh r1, [r3]
	movs r1, #4
	ldrsh r0, [r2, r1]
	mov r3, sl
	str r0, [r3]
_08018E8A:
	adds r0, r7, #0
_08018E8C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08018E9C: .4byte gUnknown_0203BB80
_08018EA0: .4byte gUnknown_0203A680

	thumb_func_start sub_08018EA4
sub_08018EA4: @ 0x08018EA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	mov sb, r1
	mov r8, r2
	adds r7, r3, #0
	ldr r4, [r0]
	cmp r4, #0
	beq _08018F18
	ldr r0, [r4, #8]
	add r2, sp, #0xc
	add r1, sp, #8
	bl sub_08018B90
	movs r1, #0
	mov r0, sb
	str r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r2, r8
	str r0, [r2]
	str r1, [r7]
	movs r6, #0
	ldrb r0, [r4, #4]
	cmp r6, r0
	bhs _08018F18
	movs r5, #0
_08018EDE:
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #0
	str r3, [sp]
	add r3, sp, #0x10
	str r3, [sp, #4]
	movs r3, #1
	bl sub_08018D30
	cmp r6, #0
	bne _08018F02
	mov r1, sb
	str r0, [r1]
	ldr r0, [sp, #0x10]
	mov r2, r8
	str r0, [r2]
_08018F02:
	ldr r0, [r4]
	adds r0, r5, r0
	ldrh r1, [r0, #0x14]
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	adds r5, #0x18
	adds r6, #1
	ldrb r0, [r4, #4]
	cmp r6, r0
	blo _08018EDE
_08018F18:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08018F28
sub_08018F28: @ 0x08018F28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	cmp r0, #0x7f
	bhi _08018F9E
	movs r0, #0x24
	ldrsh r7, [r2, r0]
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r2, #0x14]
	asrs r6, r0, #8
	ldrb r0, [r2, #0xc]
	movs r1, #0
	mov r8, r1
	cmp r0, #0
	bne _08018F56
	movs r5, #0x80
	lsls r5, r5, #2
	mov r8, r5
_08018F56:
	ldr r0, _08018FAC @ =0x000003FF
	cmp r7, r0
	bhi _08018F9E
	ldr r3, [r2, #8]
	ldrb r0, [r2, #6]
	mov sb, r0
	ldr r1, [r2]
	ldrh r0, [r1, #8]
	ldrh r4, [r1, #0xa]
	movs r1, #4
	ldrsh r2, [r2, r1]
	lsls r2, r2, #3
	movs r5, #0xe0
	lsls r5, r5, #0x13
	adds r2, r2, r5
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r3, r1
	orrs r0, r3
	mov r1, r8
	orrs r0, r1
	movs r1, #0xff
	ands r6, r1
	orrs r0, r6
	strh r0, [r2]
	ldr r5, _08018FB0 @ =0x000001FF
	adds r0, r5, #0
	mov r1, ip
	ands r1, r0
	orrs r4, r1
	strh r4, [r2, #2]
	mov r0, sb
	lsls r5, r0, #0xa
	orrs r7, r5
	strh r7, [r2, #4]
_08018F9E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018FAC: .4byte 0x000003FF
_08018FB0: .4byte 0x000001FF

	thumb_func_start sub_08018FB4
sub_08018FB4: @ 0x08018FB4
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_08018EA4
	ldr r0, [sp]
	str r0, [r4, #0x20]
	ldr r0, [sp, #4]
	movs r1, #0
	strh r0, [r4, #0x24]
	ldr r0, [sp, #8]
	strh r0, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08018FDC
sub_08018FDC: @ 0x08018FDC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _08018FF6
	adds r4, r0, #0
_08018FE8:
	adds r0, r4, #0
	bl sub_08018FB4
	adds r4, #0x28
	adds r5, #1
	cmp r5, r6
	blo _08018FE8
_08018FF6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018FFC
sub_08018FFC: @ 0x08018FFC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _08019016
	adds r4, r0, #0
_08019008:
	adds r0, r4, #0
	bl sub_08018F28
	adds r4, #0x28
	adds r5, #1
	cmp r5, r6
	blo _08019008
_08019016:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801901C
sub_0801901C: @ 0x0801901C
	strb r1, [r0, #0xc]
	bx lr
_08019020:
	.byte 0x00, 0x7B, 0x70, 0x47

	thumb_func_start sub_08019024
sub_08019024: @ 0x08019024
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801902C
sub_0801902C: @ 0x0801902C
	ldr r3, [r0, #0x10]
	str r3, [r1]
	ldr r0, [r0, #0x14]
	str r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08019038
sub_08019038: @ 0x08019038
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_0801903C
sub_0801903C: @ 0x0801903C
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	bne _0801904A
	strh r1, [r2, #0x1e]
	strh r1, [r2, #0x1c]
	b _0801904E
_0801904A:
	movs r0, #0
	strh r0, [r2, #0x1c]
_0801904E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019054
sub_08019054: @ 0x08019054
	push {lr}
	strb r1, [r0, #0x18]
	cmp r2, #0
	beq _08019062
	movs r1, #0
	bl sub_0801903C
_08019062:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019068
sub_08019068: @ 0x08019068
	ldrh r0, [r0, #0x1c]
	bx lr
_0801906C:
	.byte 0xC0, 0x8B, 0x70, 0x47

	thumb_func_start sub_08019070
sub_08019070: @ 0x08019070
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2]
	ldr r6, [r0]
	ldrb r4, [r0, #4]
	movs r3, #0
	cmp r3, r4
	bhs _080190A4
	ldrh r1, [r6, #0x14]
	subs r0, r1, #1
	ldrh r2, [r2, #0x1c]
	cmp r0, r2
	bhs _080190A0
	adds r5, r2, #0
	adds r2, r6, #0
_0801908E:
	adds r2, #0x18
	adds r3, #1
	cmp r3, r4
	bhs _080190A4
	ldrh r0, [r2, #0x14]
	adds r1, r1, r0
	subs r0, r1, #1
	cmp r0, r5
	blo _0801908E
_080190A0:
	cmp r3, r4
	blo _080190A6
_080190A4:
	subs r3, r4, #1
_080190A6:
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080190B0
sub_080190B0: @ 0x080190B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
_080190B4:
	ldr r1, [r4]
	cmp r1, #0
	beq _0801915A
	ldr r6, [r1]
	cmp r6, #0
	beq _0801915A
	ldrb r0, [r1, #4]
	cmp r0, #1
	bls _0801915A
	ldrh r0, [r4, #0x1a]
	cmp r0, #1
	bls _0801915A
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _0801915A
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080190EE
	ldrh r1, [r4, #0x1c]
	ldrh r0, [r4, #0x1a]
	subs r0, #1
	cmp r1, r0
	ble _0801912A
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801903C
	b _080190B4
_080190EE:
	movs r2, #6
	ldrsh r0, [r1, r2]
	subs r0, #1
	ldrh r1, [r4, #0x1e]
	cmp r0, r1
	bgt _08019110
	ldrh r1, [r4, #0x1c]
	ldrh r0, [r4, #0x1a]
	subs r0, #1
	cmp r1, r0
	ble _0801912A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_08019054
	b _080190B4
_08019110:
	ldrh r1, [r4, #0x1c]
	ldrh r0, [r4, #0x1a]
	subs r0, #1
	cmp r1, r0
	ble _0801912A
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801903C
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
	b _080190B4
_0801912A:
	adds r0, r4, #0
	bl sub_08019070
	ldrh r3, [r4, #0x24]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r5, r1, r6
	ldr r2, [r5, #4]
	ldr r0, [r4, #0x20]
	cmp r2, r0
	beq _0801914E
	ldrb r1, [r6, #8]
	adds r0, r2, #0
	bl sub_08018C6C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0801914E:
	strh r3, [r4, #0x24]
	ldr r0, [r5, #4]
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0x1c]
	adds r0, #1
	strh r0, [r4, #0x1c]
_0801915A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08019160
sub_08019160: @ 0x08019160
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r5, #0
	cmp r5, r6
	bhs _0801917A
	adds r4, r0, #0
_0801916C:
	adds r0, r4, #0
	bl sub_080190B0
	adds r4, #0x28
	adds r5, #1
	cmp r5, r6
	blo _0801916C
_0801917A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08019180
sub_08019180: @ 0x08019180
	ldr r1, _0801918C @ =0x04000050
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801918C: .4byte 0x04000050

	thumb_func_start sub_08019190
sub_08019190: @ 0x08019190
	push {lr}
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	ble _080191A0
	movs r2, #0x10
	b _080191AE
_080191A0:
	cmp r2, #0
	bge _080191A8
	movs r2, #0
	b _080191AE
_080191A8:
	asrs r0, r2, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080191AE:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _080191BA
	movs r0, #0x10
	b _080191C8
_080191BA:
	cmp r1, #0
	bge _080191C2
	movs r0, #0
	b _080191C8
_080191C2:
	asrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080191C8:
	ldr r1, _080191D4 @ =0x04000052
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080191D4: .4byte 0x04000052

	thumb_func_start sub_080191D8
sub_080191D8: @ 0x080191D8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, [sp, #0x14]
	ldr r5, [sp, #0x18]
	ldr r6, _08019240 @ =0x00000A7D
	adds r0, r7, r6
	strb r1, [r0]
	ldr r0, _08019244 @ =0x00000A7E
	adds r6, r7, r0
	strb r3, [r6]
	ldr r1, _08019248 @ =0x00000A7F
	adds r3, r7, r1
	strb r2, [r3]
	movs r2, #0xa8
	lsls r2, r2, #4
	adds r0, r7, r2
	str r4, [r0]
	adds r1, #5
	adds r0, r7, r1
	str r5, [r0]
	adds r2, #8
	adds r0, r7, r2
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	ldr r1, [sp, #0x20]
	str r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	ldr r1, [sp, #0x24]
	str r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	ldr r1, [sp, #0x28]
	str r1, [r0]
	adds r2, #4
	adds r1, r7, r2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldrb r0, [r3]
	cmp r0, #0
	bne _08019234
	movs r0, #1
	strb r0, [r3]
_08019234:
	ldrb r0, [r6]
	adds r1, r0, #0
	cmp r1, #0
	bne _0801924C
	strb r1, [r3]
	b _0801925C
	.align 2, 0
_08019240: .4byte 0x00000A7D
_08019244: .4byte 0x00000A7E
_08019248: .4byte 0x00000A7F
_0801924C:
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801925C
	add r6, sp, #0x2c
	ldrb r6, [r6]
	strb r6, [r3]
_0801925C:
	ldr r0, _08019270 @ =0x00000A7F
	adds r1, r7, r0
	ldrb r0, [r1]
	ldr r2, [sp, #0x2c]
	cmp r0, r2
	bls _0801926A
	strb r2, [r1]
_0801926A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019270: .4byte 0x00000A7F

	thumb_func_start sub_08019274
sub_08019274: @ 0x08019274
	push {lr}
	ldr r1, _08019298 @ =gUnknown_0203A680
	movs r0, #0x30
	strh r0, [r1]
	movs r1, #0
	movs r2, #0
	ldr r3, _0801929C @ =0x0000FFFE
	ldr r0, _080192A0 @ =gUnknown_0203BB80
_08019284:
	str r2, [r0]
	strh r3, [r0, #4]
	strh r2, [r0, #6]
	adds r0, #8
	adds r1, #1
	cmp r1, #0x3f
	bls _08019284
	pop {r0}
	bx r0
	.align 2, 0
_08019298: .4byte gUnknown_0203A680
_0801929C: .4byte 0x0000FFFE
_080192A0: .4byte gUnknown_0203BB80

	thumb_func_start sub_080192A4
sub_080192A4: @ 0x080192A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov r8, r2
	mov sb, r3
	cmp r1, #2
	bhi _080192F4
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #3
	ldr r5, _080192E8 @ =gUnknown_02039E30
	adds r6, r4, r5
	ldr r1, _080192EC @ =gUnknown_087B892C
	adds r1, r4, r1
	adds r0, r6, #0
	movs r2, #0x18
	bl sub_080002C4
	ldr r1, _080192F0 @ =gUnknown_087B8AC4
	adds r0, r7, #0
	movs r2, #0xc
	bl sub_080002C4
	adds r5, #4
	adds r4, r4, r5
	mov r0, r8
	str r0, [r4]
	mov r0, sb
	strb r0, [r6, #8]
	str r6, [r7]
	movs r0, #0
	b _080192F8
	.align 2, 0
_080192E8: .4byte gUnknown_02039E30
_080192EC: .4byte gUnknown_087B892C
_080192F0: .4byte gUnknown_087B8AC4
_080192F4:
	movs r0, #1
	rsbs r0, r0, #0
_080192F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08019304
sub_08019304: @ 0x08019304
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r1, _08019344 @ =0x00000A7E
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08019348
	ldr r1, [r4]
	cmp r1, #0
	blt _080193EA
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	bl sub_08018FB4
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	movs r1, #1
	bl sub_0801901C
	movs r1, #0
	ldrsh r0, [r4, r1]
	b _080193EE
	.align 2, 0
_08019344: .4byte 0x00000A7E
_08019348:
	cmp r0, #2
	bne _0801938A
	ldr r1, [r4, #4]
	cmp r1, #0
	blt _080193EA
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	bl sub_08018FB4
	ldr r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	movs r1, #1
	bl sub_0801901C
	cmp r6, #0
	blt _08019384
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	bl sub_08018FB4
_08019384:
	movs r1, #4
	ldrsh r0, [r4, r1]
	b _080193EE
_0801938A:
	cmp r0, #3
	bne _080193BA
	ldr r1, [r4, #8]
	cmp r1, #0
	blt _080193EA
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	bl sub_08018FB4
	ldr r1, [r4, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	movs r1, #1
	bl sub_0801901C
	movs r1, #8
	ldrsh r0, [r4, r1]
	b _080193EE
_080193BA:
	cmp r0, #0
	bne _080193EA
	ldr r1, [r4, #0xc]
	cmp r1, #0
	blt _080193EA
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	bl sub_08018FB4
	ldr r1, [r4, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r5, r0
	movs r1, #1
	bl sub_0801901C
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	b _080193EE
_080193EA:
	movs r0, #1
	rsbs r0, r0, #0
_080193EE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080193F4
sub_080193F4: @ 0x080193F4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r1, _08019420 @ =gUnknown_08325165
	mov r0, sp
	movs r2, #0x10
	bl sub_0803DEBC
	movs r0, #0
	str r0, [r4]
	subs r5, #0xa
	cmp r5, #0xf
	bhi _08019424
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0]
	rsbs r0, r0, #0
	str r0, [r6]
	movs r0, #1
	b _08019426
	.align 2, 0
_08019420: .4byte gUnknown_08325165
_08019424:
	str r0, [r6]
_08019426:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08019430
sub_08019430: @ 0x08019430
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r5, r0, #0
	mov sb, r1
	adds r4, r2, #0
	mov r8, r3
	bl sub_08019068
	add r2, sp, #4
	mov r1, sp
	bl sub_080193F4
	adds r6, r0, #0
	ldr r1, [sp]
	lsls r1, r1, #8
	str r1, [sp]
	ldr r2, [sp, #4]
	lsls r2, r2, #8
	str r2, [sp, #4]
	add r1, sb
	adds r2, r4, r2
	adds r0, r5, #0
	bl sub_08019024
	mov r0, r8
	adds r1, r6, #0
	bl sub_0801901C
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r4, r4, r0
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl sub_08019024
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801948C
sub_0801948C: @ 0x0801948C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r3, r1, #0
_08019494:
	ldr r0, [r3]
	cmp r0, #0
	bge _080194AA
	movs r0, #0
	movs r1, #1
	rsbs r1, r1, #0
_080194A0:
	stm r2!, {r1}
	adds r0, #1
	cmp r0, #2
	bls _080194A0
	b _080194E4
_080194AA:
	adds r3, #4
	adds r4, #1
	cmp r4, #2
	bls _08019494
	movs r4, #0
	adds r5, r1, #0
	adds r7, r2, #0
_080194B8:
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	bl sub_08018FB4
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r1, #1
	bl sub_0801901C
	ldm r5!, {r0}
	stm r7!, {r0}
	adds r4, #1
	cmp r4, #2
	bls _080194B8
_080194E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080194EC
sub_080194EC: @ 0x080194EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov r0, sp
	ldr r1, _08019510 @ =gUnknown_08325178
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldr r1, _08019514 @ =0x00000A7E
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08019518
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0801948C
	b _0801953A
	.align 2, 0
_08019510: .4byte gUnknown_08325178
_08019514: .4byte 0x00000A7E
_08019518:
	cmp r0, #4
	bne _08019522
	adds r1, r4, #0
	adds r1, #0xc
	b _0801952A
_08019522:
	cmp r0, #6
	bne _08019532
	adds r1, r4, #0
	adds r1, #0x18
_0801952A:
	adds r0, r3, #0
	bl sub_0801948C
	b _0801953A
_08019532:
	adds r0, r3, #0
	mov r1, sp
	bl sub_0801948C
_0801953A:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019544
sub_08019544: @ 0x08019544
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r8, r1
	adds r1, r3, #0
	movs r6, #0
	cmp r6, r8
	bhs _08019590
	movs r3, #0
	ldr r5, [sp, #0x20]
	adds r4, r1, #0
	adds r7, r2, #0
_08019562:
	ldr r1, [r7]
	cmp r1, #0
	blt _08019580
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	add r0, sb
	adds r1, r4, #0
	adds r2, r5, #0
	str r3, [sp]
	bl sub_0801902C
	ldr r3, [sp]
	b _08019584
_08019580:
	str r3, [r4]
	str r3, [r5]
_08019584:
	adds r5, #4
	adds r4, #4
	adds r7, #4
	adds r6, #1
	cmp r6, r8
	blo _08019562
_08019590:
	movs r6, #0
	cmp r6, r8
	bhs _080195A4
	movs r1, #0xc0
	lsls r1, r1, #6
	ldr r0, [sp, #0x24]
_0801959C:
	stm r0!, {r1}
	adds r6, #1
	cmp r6, r8
	blo _0801959C
_080195A4:
	movs r1, #0xb4
	lsls r1, r1, #8
	ldr r0, [sp, #0x28]
	str r1, [r0]
	movs r1, #0
	ldr r0, [sp, #0x2c]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [sp, #0x30]
	str r1, [r0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080195C8
sub_080195C8: @ 0x080195C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r7, r1, #0
	ldr r1, [sp, #0x30]
	str r1, [sp, #8]
	mov sl, r3
	ldr r0, [sp, #0x2c]
	mov sb, r0
	mov r8, r2
_080195E8:
	ldr r0, [r7]
	cmp r0, #0
	blt _0801963E
	mov r1, r8
	ldr r6, [r1]
	mov r2, sb
	ldr r4, [r2]
	ldr r1, [sp, #0x38]
	ldr r0, [r1]
	subs r4, r4, r6
	lsls r0, r0, #0xa
	ldr r1, [sp, #0x34]
	bl sub_0803D7D4
	adds r5, r4, #0
	muls r5, r0, r5
	asrs r5, r5, #0xa
	adds r5, r5, r6
	mov r2, sl
	ldr r6, [r2]
	ldr r0, [sp, #8]
	ldr r4, [r0]
	ldr r1, [sp, #0x38]
	ldr r0, [r1]
	subs r4, r4, r6
	lsls r0, r0, #0xa
	ldr r1, [sp, #0x34]
	bl sub_0803D7D4
	adds r2, r4, #0
	muls r2, r0, r2
	asrs r2, r2, #0xa
	adds r2, r2, r6
	ldr r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	ldr r1, [sp]
	adds r0, r1, r0
	adds r1, r5, #0
	bl sub_08019024
_0801963E:
	adds r7, #4
	ldr r2, [sp, #8]
	adds r2, #4
	str r2, [sp, #8]
	movs r0, #4
	add sl, r0
	add sb, r0
	add r8, r0
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
	cmp r1, #2
	bls _080195E8
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _08019676
	ldr r1, [sp, #0x38]
	ldr r0, [r1]
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r2, [sp, #0x38]
	str r0, [r2]
	ldr r1, [sp, #0x3c]
	ldr r0, [r1]
	lsrs r1, r0, #5
	adds r0, r0, r1
	ldr r2, [sp, #0x3c]
	str r0, [r2]
_08019676:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019688
sub_08019688: @ 0x08019688
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x14]
	ldr r0, [r6]
	subs r4, r4, r5
	lsls r0, r0, #0xa
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r0, r0, r5
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, r1, r0
	bl sub_08019190
	cmp r7, #0
	beq _080196CA
	ldr r0, [r6]
	ldr r1, [r7]
	adds r0, r0, r1
	str r0, [r6]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, #0
	bge _080196C4
	adds r0, #0x3f
_080196C4:
	asrs r0, r0, #6
	adds r0, r1, r0
	str r0, [r7]
_080196CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080196D0
sub_080196D0: @ 0x080196D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r5, #0
	beq _08019710
	ldr r1, _080196FC @ =0x00000A94
	adds r0, r4, r1
	movs r2, #0xa9
	lsls r2, r2, #4
	adds r1, r4, r2
	ldr r3, [r0]
	ldr r1, [r1]
	subs r0, r3, r1
	cmp r0, #0
	blt _08019700
	ldr r0, [r5]
	adds r2, r1, r0
	cmp r2, r3
	bls _0801970C
	adds r2, r3, #0
	b _08019716
	.align 2, 0
_080196FC: .4byte 0x00000A94
_08019700:
	ldr r0, [r5]
	subs r2, r1, r0
	cmp r2, r3
	bhs _0801970C
	adds r2, r3, #0
	b _08019716
_0801970C:
	movs r6, #0
	b _08019718
_08019710:
	ldr r1, _08019754 @ =0x00000A94
	adds r0, r4, r1
	ldr r2, [r0]
_08019716:
	movs r6, #1
_08019718:
	ldr r1, _08019758 @ =0x00000A5C
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r1, _0801975C @ =gUnknown_08325160
	bl sub_0803DFE0
	ldr r2, _08019760 @ =0x00000A58
	adds r1, r4, r2
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_080188DC
	cmp r5, #0
	beq _08019748
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	movs r0, #1
	movs r1, #0x80
	bl sub_08000634
_08019748:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08019754: .4byte 0x00000A94
_08019758: .4byte 0x00000A5C
_0801975C: .4byte gUnknown_08325160
_08019760: .4byte 0x00000A58

	thumb_func_start sub_08019764
sub_08019764: @ 0x08019764
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	b _08019770
_0801976C:
	adds r2, #4
	adds r3, #1
_08019770:
	cmp r3, r1
	bhs _0801977A
	ldr r0, [r2]
	cmp r0, #0
	bne _0801976C
_0801977A:
	adds r0, r3, #0
	cmp r0, r1
	blo _08019784
	movs r0, #1
	rsbs r0, r0, #0
_08019784:
	pop {r1}
	bx r1

	thumb_func_start sub_08019788
sub_08019788: @ 0x08019788
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080197A0
	cmp r1, #1
	bne _080197A4
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080197A4
_080197A0:
	movs r0, #1
	b _080197A6
_080197A4:
	movs r0, #0
_080197A6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080197AC
sub_080197AC: @ 0x080197AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r3, #0
	ldr r0, _080197E4 @ =0x00000A7E
	adds r4, r5, r0
	ldrb r0, [r4]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08019820
	cmp r1, r2
	blo _08019838
	ldr r0, [r6]
	cmp r0, #2
	beq _08019820
	cmp r0, #1
	bne _080197EC
	ldr r0, _080197E8 @ =gUnknown_02000020
	ldrh r0, [r0]
	ldrb r1, [r4]
	bl sub_08019788
	cmp r0, #1
	bne _08019838
	movs r0, #2
	str r0, [r6]
	b _08019838
	.align 2, 0
_080197E4: .4byte 0x00000A7E
_080197E8: .4byte gUnknown_02000020
_080197EC:
	ldr r0, _08019818 @ =gUnknown_02000020
	ldrh r0, [r0]
	ldrb r1, [r4]
	bl sub_08019788
	adds r3, r0, #0
	cmp r3, #1
	bne _08019838
	ldr r1, _0801981C @ =0x00000A94
	adds r0, r5, r1
	movs r2, #0xa9
	lsls r2, r2, #4
	adds r1, r5, r2
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	beq _0801982E
	ldrb r0, [r4]
	cmp r0, #6
	beq _0801982E
	str r3, [r6]
	b _08019838
	.align 2, 0
_08019818: .4byte gUnknown_02000020
_0801981C: .4byte 0x00000A94
_08019820:
	ldr r0, _08019834 @ =gUnknown_02000020
	ldrh r0, [r0]
	ldrb r1, [r4]
	bl sub_08019788
	cmp r0, #1
	bne _08019838
_0801982E:
	movs r0, #1
	b _0801983A
	.align 2, 0
_08019834: .4byte gUnknown_02000020
_08019838:
	movs r0, #0
_0801983A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08019840
sub_08019840: @ 0x08019840
	push {lr}
	cmp r0, #2
	bne _0801984E
	movs r0, #0xcc
	bl sub_0801B750
	b _08019874
_0801984E:
	cmp r0, #3
	bne _0801985A
	movs r0, #0xcd
	bl sub_0801B750
	b _08019874
_0801985A:
	cmp r0, #4
	beq _08019862
	cmp r0, #5
	bne _0801986A
_08019862:
	movs r0, #0xc8
	bl sub_0801B750
	b _08019874
_0801986A:
	cmp r0, #6
	bne _08019874
	movs r0, #0xc8
	bl sub_0801B750
_08019874:
	pop {r0}
	bx r0

	thumb_func_start sub_08019878
sub_08019878: @ 0x08019878
	push {lr}
	subs r0, #2
	cmp r0, #4
	bhi _08019884
	bl sub_0801B744
_08019884:
	pop {r0}
	bx r0

	thumb_func_start sub_08019888
sub_08019888: @ 0x08019888
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r3
	ldr r1, [sp, #0x20]
	cmp r1, #7
	bls _080198A0
	movs r1, #7
_080198A0:
	cmp r2, #0
	bne _080198AA
	mov sb, r6
	adds r4, r6, r1
	b _080198DE
_080198AA:
	cmp r2, #1
	bne _080198D2
	mov sb, r7
	adds r4, r6, #3
	mov r0, sb
	adds r5, r0, r1
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080185D4
	adds r4, r6, #4
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sb
	b _080198FA
_080198D2:
	cmp r2, #2
	bne _08019904
	adds r6, #7
	subs r1, r6, r1
	mov sb, r1
	adds r4, r6, #0
_080198DE:
	adds r5, r7, #3
	mov r0, r8
	str r0, [sp]
	mov r0, sb
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080185D4
	adds r5, r7, #4
	mov r0, r8
	str r0, [sp]
	mov r0, sb
	adds r1, r5, #0
_080198FA:
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080185D4
	b _0801992E
_08019904:
	adds r7, #7
	subs r1, r7, r1
	mov sb, r1
	adds r4, r6, #3
	adds r5, r7, #0
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080185D4
	adds r4, r6, #4
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_080185D4
_0801992E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801993C
sub_0801993C: @ 0x0801993C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r3, #0
	ldr r4, [sp, #0x18]
	cmp r4, #7
	bls _0801994E
	movs r4, #7
_0801994E:
	cmp r2, #0
	bne _0801997C
	cmp r4, #2
	bhi _08019960
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	b _08019A8C
_08019960:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_08019888
	adds r1, r6, #3
	subs r0, r4, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	b _08019A8C
_0801997C:
	cmp r2, #1
	bne _080199AA
	cmp r4, #2
	bhi _0801998E
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	b _08019A8C
_0801998E:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	adds r3, r7, #0
	bl sub_08019888
	adds r0, r5, #3
	subs r1, r4, #3
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #0
	b _08019A8C
_080199AA:
	cmp r2, #2
	bne _080199D6
	cmp r4, #2
	bhi _080199BC
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	b _08019A8C
_080199BC:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_08019888
	subs r1, r6, #3
	subs r0, r4, #3
	str r0, [sp]
	adds r0, r5, #0
	b _08019A8A
_080199D6:
	cmp r2, #3
	bne _080199F8
	cmp r4, #2
	bls _08019A84
	str r2, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #3
	adds r3, r7, #0
	bl sub_08019888
	adds r0, r5, #3
	subs r1, r4, #3
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #0
	b _08019A8C
_080199F8:
	cmp r2, #4
	bne _08019A26
	cmp r4, #2
	bhi _08019A0A
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	b _08019A8C
_08019A0A:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	adds r3, r7, #0
	bl sub_08019888
	adds r1, r6, #3
	subs r0, r4, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	b _08019A8C
_08019A26:
	cmp r2, #5
	bne _08019A54
	cmp r4, #2
	bhi _08019A38
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	b _08019A8C
_08019A38:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	adds r3, r7, #0
	bl sub_08019888
	subs r0, r5, #3
	subs r1, r4, #3
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #2
	b _08019A8C
_08019A54:
	cmp r2, #6
	bne _08019A80
	cmp r4, #2
	bhi _08019A66
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	b _08019A8C
_08019A66:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	adds r3, r7, #0
	bl sub_08019888
	subs r1, r6, #3
	subs r0, r4, #3
	str r0, [sp]
	adds r0, r5, #0
	b _08019A8A
_08019A80:
	cmp r4, #2
	bhi _08019A94
_08019A84:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
_08019A8A:
	movs r2, #3
_08019A8C:
	adds r3, r7, #0
	bl sub_08019888
	b _08019AB4
_08019A94:
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #3
	adds r3, r7, #0
	bl sub_08019888
	subs r0, r5, #3
	subs r1, r4, #3
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #2
	adds r3, r7, #0
	bl sub_08019888
_08019AB4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08019ABC
sub_08019ABC: @ 0x08019ABC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	ldr r3, [sp, #0x14]
	subs r0, r2, #1
	cmp r0, #0xb
	bhi _08019B94
	lsls r0, r0, #2
	ldr r1, _08019AD8 @ =_08019ADC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019AD8: .4byte _08019ADC
_08019ADC: @ jump table
	.4byte _08019B0C @ case 0
	.4byte _08019B16 @ case 1
	.4byte _08019B20 @ case 2
	.4byte _08019B2A @ case 3
	.4byte _08019B3A @ case 4
	.4byte _08019B44 @ case 5
	.4byte _08019B4E @ case 6
	.4byte _08019B58 @ case 7
	.4byte _08019B62 @ case 8
	.4byte _08019B6C @ case 9
	.4byte _08019B76 @ case 10
	.4byte _08019B86 @ case 11
_08019B0C:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	b _08019B32
_08019B16:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	b _08019B32
_08019B20:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	b _08019B32
_08019B2A:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
_08019B32:
	adds r3, r6, #0
	bl sub_08019888
	b _08019B94
_08019B3A:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	b _08019B7E
_08019B44:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	b _08019B7E
_08019B4E:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	b _08019B7E
_08019B58:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	b _08019B7E
_08019B62:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	b _08019B7E
_08019B6C:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #5
	b _08019B7E
_08019B76:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
_08019B7E:
	adds r3, r6, #0
	bl sub_0801993C
	b _08019B94
_08019B86:
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #7
	adds r3, r6, #0
	bl sub_0801993C
_08019B94:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08019B9C
sub_08019B9C: @ 0x08019B9C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r3, #0
	cmp r2, #1
	bls _08019BB8
	movs r4, #1
_08019BAA:
	adds r3, #1
	lsrs r1, r2, #1
	adds r0, r4, #0
	ands r0, r2
	adds r2, r1, r0
	cmp r2, #1
	bhi _08019BAA
_08019BB8:
	cmp r5, #1
	bne _08019BBE
	adds r3, #1
_08019BBE:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08019BC8
sub_08019BC8: @ 0x08019BC8
	push {lr}
	adds r3, r0, #0
	adds r0, r1, #0
	cmp r0, r2
	blo _08019BDA
	adds r0, r3, #0
	movs r1, #0
	bl sub_08019B9C
_08019BDA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08019BE0
sub_08019BE0: @ 0x08019BE0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, [sp, #0x14]
	movs r1, #1
	cmp r1, r4
	bhi _08019C1A
	cmp r1, r6
	bhs _08019BF8
	movs r7, #0x14
	ldrsh r0, [r5, r7]
	b _08019C0E
_08019BF8:
	adds r1, #1
	cmp r1, r4
	bhi _08019C1A
	cmp r1, r6
	bhs _08019BF8
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r7, #8
	ldrsh r0, [r0, r7]
_08019C0E:
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r3, r0
	beq _08019BF8
	cmp r1, r4
	bls _08019C1C
_08019C1A:
	adds r1, r4, #0
_08019C1C:
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08019C24
sub_08019C24: @ 0x08019C24
	push {lr}
	adds r3, r2, #0
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r0, [r0, #0x28]
	adds r0, r0, r2
	cmp r1, #1
	bls _08019C40
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	adds r0, r3, r0
	ldrb r0, [r0]
	b _08019C44
_08019C40:
	movs r1, #0xa
	ldrsh r0, [r0, r1]
_08019C44:
	pop {r1}
	bx r1

	thumb_func_start sub_08019C48
sub_08019C48: @ 0x08019C48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	mov r8, r1
	str r2, [sp, #8]
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	mov sb, r0
	movs r7, #0
	movs r6, #0
	cmp r7, r8
	bge _08019CC2
	ldr r1, _08019C78 @ =gUnknown_087B9210
	mov sl, r1
	ldr r4, [sp, #4]
_08019C6E:
	ldr r2, [sp, #0x30]
	cmp r2, #1
	bne _08019C7C
	movs r7, #7
	b _08019C88
	.align 2, 0
_08019C78: .4byte gUnknown_087B9210
_08019C7C:
	mov r0, r8
	subs r0, #1
	movs r7, #7
	cmp r6, r0
	blt _08019C88
	movs r7, #4
_08019C88:
	ldr r0, [r5]
	mov r2, sb
	ldr r1, [r2]
	ldrb r2, [r4]
	str r7, [sp]
	ldr r3, [sp, #8]
	bl sub_08019ABC
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, sl
	movs r2, #2
	ldrsh r1, [r0, r2]
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r4, #4
	adds r6, #1
	cmp r6, r8
	blt _08019C6E
_08019CC2:
	mov r6, r8
	subs r6, #1
	ldr r3, _08019D04 @ =gUnknown_087B9210
	lsls r1, r6, #2
	ldr r4, [sp, #4]
	adds r1, r1, r4
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, [r5]
	subs r0, r0, r2
	str r0, [r5]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r3
	movs r2, #2
	ldrsh r1, [r0, r2]
	mov r4, sb
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	adds r0, r7, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08019D04: .4byte gUnknown_087B9210

	thumb_func_start sub_08019D08
sub_08019D08: @ 0x08019D08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	str r0, [sp, #0x10]
	mov r8, r1
	str r2, [sp, #0x14]
	adds r4, r3, #0
	ldr r0, [r1]
	str r0, [sp, #0x18]
	ldrb r1, [r1, #4]
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	ldr r3, _08019D78 @ =0x00000A7F
	adds r0, r2, r3
	ldrb r0, [r0]
	str r0, [sp, #0x24]
	mov r0, r8
	ldrb r1, [r0, #5]
	ldr r0, [sp, #0x1c]
	bl sub_08019B9C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl sub_08019BC8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x10]
	ldr r2, _08019D7C @ =0x00000A84
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r1, [sp, #0x1c]
	bl sub_08019764
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r3, r8
	ldrb r0, [r3, #5]
	cmp r0, #1
	bne _08019D84
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	cmp r0, r1
	blo _08019D84
	ldr r1, _08019D80 @ =0x0000FFFF
	lsls r2, r2, #0x10
	str r2, [sp, #0x40]
	b _08019DB2
	.align 2, 0
_08019D78: .4byte 0x00000A7F
_08019D7C: .4byte 0x00000A84
_08019D80: .4byte 0x0000FFFF
_08019D84:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	str r0, [sp, #0x40]
	cmp r2, #0
	blt _08019DB0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r2, [sp, #0x18]
	adds r0, r2, r0
	ldr r3, [sp, #0x10]
	ldr r2, _08019DAC @ =0x00000A8C
	adds r1, r3, r2
	ldr r2, [r1]
	ldr r1, [sp, #0x2c]
	bl sub_08019C24
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _08019DB2
	.align 2, 0
_08019DAC: .4byte 0x00000A8C
_08019DB0:
	ldr r1, _08019E18 @ =0x0000FFFF
_08019DB2:
	ldr r3, [sp, #0x40]
	asrs r0, r3, #0x10
	str r0, [r4]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	str r0, [r4, #4]
	movs r6, #0
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x1c]
	cmp r6, r0
	bhs _08019E0E
	movs r1, #1
	str r1, [sp, #0x38]
_08019DCC:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	ldr r3, [r0, #0x1c]
	adds r1, r0, #0
	adds r1, #0x20
	ldrb r4, [r1]
	movs r2, #0x22
	ldrsh r1, [r0, r2]
	str r1, [sp, #8]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r0, [r2]
	ldrb r2, [r0, #0x10]
	adds r1, r4, #0
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r0, [sp, #4]
	adds r0, r3, #0
	add r3, sp, #8
	bl sub_08019C48
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x1c]
	cmp r6, r1
	blo _08019DCC
_08019E0E:
	movs r2, #0
	str r2, [sp, #0x34]
	movs r6, #0
	b _0801A174
	.align 2, 0
_08019E18: .4byte 0x0000FFFF
_08019E1C:
	movs r0, #0
	str r0, [sp, #0x3c]
	lsls r0, r6, #1
	adds r1, r0, r6
	lsls r1, r1, #4
	ldr r2, [sp, #0x18]
	adds r5, r1, r2
	ldr r7, [r5, #0x28]
	adds r1, r5, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	str r1, [sp, #0x20]
	mov sl, r0
	lsls r3, r6, #2
	mov sb, r3
	cmp r6, #0xf
	bhi _08019EA2
	mov r0, r8
	adds r0, #0x88
	add r0, sb
	ldr r1, [sp, #0x3c]
	str r1, [r0]
	mov r0, r8
	adds r0, #0xc8
	add r0, sb
	str r1, [r0]
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r6
	strb r1, [r0]
	movs r0, #0x84
	lsls r0, r0, #1
	add r0, r8
	add r0, sl
	movs r1, #0
	mov r3, sp
	ldrh r3, [r3, #0x3c]
	strh r3, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	add r0, r8
	add r0, sl
	mov r2, sp
	ldrh r2, [r2, #0x3c]
	strh r2, [r0]
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r6
	strb r1, [r0]
	movs r0, #0xb4
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r6
	strb r1, [r0]
	mov r0, r8
	adds r0, #8
	add r0, sb
	movs r1, #0xc0
	lsls r1, r1, #5
	str r1, [r0]
	mov r0, r8
	adds r0, #0x48
	add r0, sb
	ldr r3, [sp, #0x3c]
	str r3, [r0]
_08019EA2:
	ldr r1, [sp, #0x10]
	ldr r2, _08019F5C @ =0x00000A8C
	adds r0, r1, r2
	ldr r2, [r0]
	ldr r3, [sp, #0x20]
	str r3, [sp]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	adds r3, r6, #0
	bl sub_08019BE0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [r5, #0x1c]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r4, r0, r7
	ldrh r1, [r4]
	adds r1, #1
	ldrb r0, [r4, #2]
	str r0, [sp, #0x38]
	movs r2, #0x22
	ldrsh r0, [r5, r2]
	str r0, [sp, #8]
	movs r2, #0x24
	ldrsh r0, [r5, r2]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r0, [r2]
	ldrb r2, [r0, #0x11]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r0, [sp, #4]
	adds r0, r3, #0
	add r3, sp, #8
	bl sub_08019C48
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r6, #0xf
	bhi _08019F3E
	mov r0, r8
	adds r0, #0x88
	add r0, sb
	ldr r1, [sp, #8]
	str r1, [r0]
	mov r0, r8
	adds r0, #0xc8
	add r0, sb
	ldr r1, [sp, #0xc]
	str r1, [r0]
	movs r2, #0xac
	lsls r2, r2, #1
	add r2, r8
	adds r2, r2, r6
	strb r5, [r2]
	movs r0, #0x84
	lsls r0, r0, #1
	add r0, r8
	add r0, sl
	ldrh r1, [r4]
	strh r1, [r0]
	mov r4, r8
	adds r4, #8
	add r4, sb
	ldrb r1, [r2]
	movs r0, #7
	subs r0, r0, r1
	ldr r1, [r4]
	muls r0, r1, r0
	movs r1, #7
	bl sub_0803DD84
	str r0, [r4]
_08019F3E:
	ldr r1, [sp, #0x10]
	ldr r2, _08019F60 @ =0x00000A7E
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08019F64
	ldr r0, [sp, #0x2c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08019F78
	.align 2, 0
_08019F5C: .4byte 0x00000A8C
_08019F60: .4byte 0x00000A7E
_08019F64:
	mov r3, r8
	ldrb r0, [r3, #5]
	ldr r5, [sp, #0x2c]
	cmp r0, #1
	bne _08019F78
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	cmp r0, r1
	blo _08019F78
	adds r5, r1, #0
_08019F78:
	ldr r2, [sp, #0x10]
	ldr r3, _0801A078 @ =0x00000A8C
	adds r0, r2, r3
	ldr r2, [r0]
	ldr r0, [sp, #0x20]
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_08019BE0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #0
	str r1, [sp, #0x30]
	cmp r4, r5
	blo _08019F9E
	movs r2, #1
	str r2, [sp, #0x30]
_08019F9E:
	cmp r6, #0xf
	bhi _08019FDE
	ldr r3, [sp, #0x30]
	cmp r3, #1
	bne _08019FB2
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r6
	strb r3, [r0]
_08019FB2:
	adds r3, r4, #0
	ldr r0, [sp, #0x20]
	subs r0, #1
	cmp r3, r0
	ble _08019FBE
	adds r3, r0, #0
_08019FBE:
	movs r2, #0x94
	lsls r2, r2, #1
	add r2, r8
	add r2, sl
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r0]
	strh r1, [r2]
	movs r1, #0xb4
	lsls r1, r1, #1
	add r1, r8
	adds r1, r1, r6
	ldrb r0, [r0, #2]
	strb r0, [r1]
_08019FDE:
	ldr r2, [sp, #0x10]
	ldr r3, _0801A07C @ =0x00000A88
	adds r0, r2, r3
	ldr r0, [r0]
	add r0, sb
	ldr r7, [r0]
	cmp r7, #0
	beq _0801A062
	movs r1, #0
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _08019FF8
	movs r1, #2
_08019FF8:
	mov r2, sl
	adds r0, r2, r6
	lsls r0, r0, #4
	ldr r3, [sp, #0x18]
	adds r5, r0, r3
	movs r0, #0
	ldrsh r3, [r5, r0]
	cmp r3, #0
	blt _0801A062
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r4, r0, #3
	ldr r0, [sp, #0x10]
	adds r0, #8
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r3, r1, #0x10
	asrs r3, r3, #0x10
	ldr r1, [sp, #0x34]
	adds r2, r7, #0
	bl sub_080192A4
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801A062
	adds r4, #8
	ldr r1, [sp, #0x10]
	adds r4, r1, r4
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	movs r2, #2
	ldrsh r1, [r5, r2]
	movs r3, #4
	ldrsh r2, [r5, r3]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
	ldr r0, [sp, #0x34]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	movs r0, #1
	str r0, [sp, #0x3c]
_0801A062:
	movs r1, #0
	ldr r2, [sp, #0x40]
	asrs r0, r2, #0x10
	cmp r6, r0
	bne _0801A080
	ldr r3, [sp, #0x10]
	movs r2, #0xa8
	lsls r2, r2, #4
	adds r0, r3, r2
	b _0801A08A
	.align 2, 0
_0801A078: .4byte 0x00000A8C
_0801A07C: .4byte 0x00000A88
_0801A080:
	ldr r3, [sp, #0x10]
	ldr r2, _0801A0B4 @ =0x00000A84
	adds r0, r3, r2
	ldr r0, [r0]
	add r0, sb
_0801A08A:
	ldr r7, [r0]
	ldr r3, [sp, #0x40]
	asrs r0, r3, #0x10
	cmp r6, r0
	beq _0801A09C
	ldr r2, [sp, #0x44]
	asrs r0, r2, #0x10
	cmp r6, r0
	bne _0801A09E
_0801A09C:
	movs r1, #1
_0801A09E:
	cmp r7, #0
	beq _0801A100
	ldr r3, [sp, #0x30]
	cmp r3, #0
	bne _0801A0B8
	movs r0, #0
	movs r2, #3
	bl sub_08009CD4
	b _0801A0C0
	.align 2, 0
_0801A0B4: .4byte 0x00000A84
_0801A0B8:
	movs r0, #0
	movs r2, #2
	bl sub_08009CD4
_0801A0C0:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _0801A0DC
	mov r1, sl
	adds r0, r1, r6
	lsls r0, r0, #4
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	ldrh r1, [r0, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	str r1, [sp, #8]
	ldrh r0, [r0, #8]
	b _0801A0F0
_0801A0DC:
	mov r3, sl
	adds r0, r3, r6
	lsls r0, r0, #4
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	str r1, [sp, #8]
	ldrh r0, [r0, #0xc]
_0801A0F0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	bl sub_08009E44
_0801A100:
	ldr r2, [sp, #0x30]
	cmp r2, #0
	bne _0801A16E
	ldr r3, [sp, #0x3c]
	cmp r3, #0
	bne _0801A126
	mov r1, sl
	adds r0, r1, r6
	lsls r0, r0, #4
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	movs r1, #0x16
	ldrsh r3, [r0, r1]
	movs r2, #0x18
	ldrsh r1, [r0, r2]
	str r1, [sp, #8]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	b _0801A13E
_0801A126:
	mov r2, sl
	adds r0, r2, r6
	lsls r0, r0, #4
	ldr r3, [sp, #0x18]
	adds r0, r0, r3
	movs r1, #0x10
	ldrsh r3, [r0, r1]
	movs r2, #0x12
	ldrsh r1, [r0, r2]
	str r1, [sp, #8]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
_0801A13E:
	str r0, [sp, #0xc]
	cmp r3, #0
	blt _0801A16E
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #3
	adds r4, #8
	ldr r2, [sp, #0x10]
	adds r4, r2, r4
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
_0801A16E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0801A174:
	ldr r3, [sp, #0x1c]
	cmp r6, r3
	bhs _0801A17C
	b _08019E1C
_0801A17C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	blt _0801A23A
	ldr r1, [sp, #0x40]
	cmp r1, #0
	blt _0801A21C
	mov r2, r8
	ldrb r0, [r2, #5]
	cmp r0, #1
	bne _0801A1A0
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x28]
	cmp r3, r0
	blo _0801A1A0
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0x58
	b _0801A1FC
_0801A1A0:
	ldr r1, [sp, #0x10]
	ldr r2, _0801A1D4 @ =0x00000A7E
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801A1D8
	ldr r0, [sp, #0x2c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r3, [sp, #0x40]
	asrs r1, r3, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	adds r0, #0x2c
	ldrb r0, [r0]
	subs r0, #1
	cmp r6, r0
	ble _0801A1DA
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0801A1DA
	.align 2, 0
_0801A1D4: .4byte 0x00000A7E
_0801A1D8:
	ldr r6, [sp, #0x2c]
_0801A1DA:
	ldr r2, [sp, #0x40]
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r3, [sp, #0x18]
	adds r0, r0, r3
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	ldr r0, [r0, #0x28]
	adds r7, r0, r1
	movs r1, #4
	ldrsh r0, [r7, r1]
	str r0, [sp, #8]
	movs r2, #6
	ldrsh r0, [r7, r2]
_0801A1FC:
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #3
	adds r4, #8
	ldr r0, [sp, #0x10]
	adds r4, r0, r4
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
_0801A21C:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	blt _0801A23A
	ldr r2, [sp, #0x40]
	cmp r2, #0
	bge _0801A23A
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	ldr r3, [sp, #0x10]
	adds r0, r3, r0
	movs r1, #0
	bl sub_0801901C
_0801A23A:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801A24C
sub_0801A24C: @ 0x0801A24C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801A270 @ =gUnknown_08325184
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r3]
	mov r1, sp
	bl sub_08019304
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801A270: .4byte gUnknown_08325184

	thumb_func_start sub_0801A274
sub_0801A274: @ 0x0801A274
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801A298 @ =gUnknown_08325194
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	mov r1, sp
	bl sub_080194EC
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A298: .4byte gUnknown_08325194

	thumb_func_start sub_0801A29C
sub_0801A29C: @ 0x0801A29C
	push {r4, lr}
	cmp r3, #4
	beq _0801A2AA
	cmp r3, #2
	bne _0801A2C0
	cmp r1, r2
	bne _0801A2C0
_0801A2AA:
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	b _0801A2D4
_0801A2C0:
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
_0801A2D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801A2DC
sub_0801A2DC: @ 0x0801A2DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	mov sl, r2
	adds r7, r3, #0
	ldr r6, [sp, #0x24]
	ldr r4, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r0, [r5]
	subs r4, r4, r6
	lsls r0, r0, #0xa
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #0xa
	adds r0, r0, r6
	str r0, [sp]
	mov r0, r8
	mov r1, sb
	mov r2, sl
	adds r3, r7, #0
	bl sub_08019ABC
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801A330
sub_0801A330: @ 0x0801A330
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r5, r0, #0
	adds r6, r1, #0
	str r2, [sp, #0x10]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801A354
	movs r0, #1
	b _0801A48A
_0801A354:
	movs r2, #0
	str r2, [sp, #0x1c]
	lsls r2, r6, #1
	adds r0, r2, r6
	lsls r0, r0, #4
	ldr r1, [r5]
	adds r1, r1, r0
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r5, r3
	adds r3, r0, r2
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #2
	ldr r1, [r1, #0x1c]
	adds r1, r1, r0
	str r1, [sp, #0x14]
	movs r7, #0xb4
	lsls r7, r7, #1
	adds r0, r5, r7
	adds r0, r0, r6
	ldrb r0, [r0]
	str r2, [sp, #0x20]
	cmp r0, #1
	bne _0801A38C
	movs r0, #7
	str r0, [sp, #0x18]
	b _0801A3AA
_0801A38C:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r2, [sp, #0x20]
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r2, #7
	str r2, [sp, #0x18]
	cmp r1, r0
	blt _0801A3AA
	movs r3, #4
	str r3, [sp, #0x18]
_0801A3AA:
	lsls r4, r6, #2
	adds r0, r5, #0
	adds r0, #0x88
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0xc8
	adds r1, r1, r4
	mov sb, r1
	ldr r1, [r1]
	ldr r7, [sp, #0x14]
	ldrb r2, [r7]
	movs r7, #0xac
	lsls r7, r7, #1
	adds r3, r5, r7
	adds r3, r3, r6
	mov sl, r3
	ldrb r3, [r3]
	str r3, [sp]
	ldr r3, [sp, #0x18]
	str r3, [sp, #4]
	adds r3, r5, #0
	adds r3, #8
	adds r7, r3, r4
	ldr r3, [r7]
	str r3, [sp, #8]
	adds r3, r4, #0
	adds r3, #0x48
	adds r6, r5, r3
	str r6, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_0801A2DC
	adds r0, r5, #0
	adds r0, #0x48
	adds r4, r0, r4
	ldr r0, [r4]
	ldr r1, [r7]
	cmp r0, r1
	bls _0801A488
	str r1, [r4]
	mov r1, r8
	ldr r0, [r1]
	mov r2, sb
	ldr r1, [r2]
	ldr r3, [sp, #0x14]
	ldrb r2, [r3]
	mov r3, sl
	ldrb r3, [r3]
	str r3, [sp]
	ldr r3, [sp, #0x18]
	str r3, [sp, #4]
	ldr r3, [r7]
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_0801A2DC
	movs r6, #0x84
	lsls r6, r6, #1
	adds r0, r5, r6
	ldr r1, [sp, #0x20]
	adds r6, r0, r1
	ldrh r0, [r6]
	adds r0, #1
	movs r3, #0
	movs r1, #0
	strh r0, [r6]
	str r1, [r4]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r7]
	ldr r2, _0801A49C @ =gUnknown_087B9210
	ldr r4, [sp, #0x14]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r7, #0
	ldrsh r1, [r0, r7]
	mov r4, r8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r7, [sp, #0x14]
	ldrb r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r2, #2
	ldrsh r1, [r0, r2]
	mov r4, sb
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	mov r7, sl
	strb r3, [r7]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r2, [sp, #0x20]
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _0801A488
	strh r2, [r6]
	movs r6, #1
	str r6, [sp, #0x1c]
_0801A488:
	ldr r0, [sp, #0x1c]
_0801A48A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801A49C: .4byte gUnknown_087B9210

	thumb_func_start sub_0801A4A0
sub_0801A4A0: @ 0x0801A4A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	adds r7, r1, #0
	str r2, [sp]
	ldrb r0, [r7, #4]
	mov sb, r0
	cmp r0, #0x10
	bls _0801A4BE
	movs r1, #0x10
	mov sb, r1
_0801A4BE:
	movs r2, #1
	str r2, [sp, #4]
	movs r4, #0
	cmp r4, sb
	bhs _0801A530
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
_0801A4D0:
	adds r1, r4, #1
	str r1, [sp, #8]
	ldr r2, [sp]
	cmp r2, #0
	beq _0801A508
	lsls r0, r4, #2
	adds r1, r7, #0
	adds r1, #0x48
	adds r6, r1, r0
	subs r1, #0x40
	adds r5, r1, r0
_0801A4E6:
	movs r0, #1
	str r0, [r6]
	str r0, [r5]
	mov r1, sl
	ldr r0, [r1]
	ldrb r2, [r0, #0x11]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0801A330
	cmp r0, #0
	beq _0801A4E6
	mov r2, r8
	adds r1, r2, r4
	movs r0, #0
	strb r0, [r1]
	b _0801A52A
_0801A508:
	mov r1, sl
	ldr r0, [r1]
	ldrb r2, [r0, #0x11]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0801A330
	cmp r0, #0
	bne _0801A520
	movs r2, #0
	str r2, [sp, #4]
	b _0801A52A
_0801A520:
	mov r1, r8
	adds r0, r1, r4
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
_0801A52A:
	ldr r4, [sp, #8]
	cmp r4, sb
	blo _0801A4D0
_0801A530:
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801A544
sub_0801A544: @ 0x0801A544
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	adds r7, r0, #0
	str r1, [sp, #0x70]
	ldr r1, _0801A5BC @ =0x00000A7F
	adds r0, r7, r1
	ldrb r6, [r0]
	ldr r2, [sp, #0x70]
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	bl sub_08019B9C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r7]
	bl sub_08018760
	ldr r0, [r7, #4]
	bl sub_080188CC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08018AF4
	adds r0, r7, #0
	movs r1, #0x2a
	bl sub_0801A24C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x74]
	ldr r1, [sp, #0x70]
	ldrb r0, [r1, #5]
	cmp r0, #1
	bne _0801A5C4
	adds r4, r7, #0
	adds r4, #0xa8
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	subs r4, #0xa0
	ldr r2, _0801A5C0 @ =0x00000A7E
	adds r0, r7, r2
	ldrb r3, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0801A29C
	str r4, [sp, #0x90]
	b _0801A5F6
	.align 2, 0
_0801A5BC: .4byte 0x00000A7F
_0801A5C0: .4byte 0x00000A7E
_0801A5C4:
	ldr r1, _0801A708 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #3
	cmp r0, #2
	bhi _0801A5D8
	movs r1, #0x29
_0801A5D8:
	lsls r4, r1, #2
	adds r4, r4, r1
	lsls r4, r4, #3
	adds r4, #8
	adds r4, r7, r4
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	adds r2, r7, #0
	adds r2, #8
	str r2, [sp, #0x90]
_0801A5F6:
	add r3, sp, #0x44
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	ldr r2, [sp, #0x74]
	bl sub_08019D08
	adds r0, r7, #0
	add r1, sp, #0x14
	bl sub_0801A274
	ldr r0, [sp, #0x90]
	movs r1, #0x2b
	bl sub_08018FFC
	ldr r1, [sp, #0x74]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r7, r0
	add r1, sp, #0x4c
	add r2, sp, #0x50
	bl sub_0801902C
	add r2, sp, #0x20
	mov sl, r2
	add r0, sp, #0x2c
	str r0, [sp]
	add r1, sp, #0x38
	str r1, [sp, #4]
	add r0, sp, #0x54
	str r0, [sp, #8]
	add r6, sp, #0x58
	str r6, [sp, #0xc]
	add r5, sp, #0x5c
	str r5, [sp, #0x10]
	adds r0, r7, #0
	movs r1, #3
	add r2, sp, #0x14
	mov r3, sl
	bl sub_08019544
	movs r4, #0
	str r4, [sp, #0x6c]
	str r4, [sp, #0x68]
	movs r0, #0x4b
	bl sub_08018730
	str r0, [sp, #0x78]
	ldr r0, [r7]
	ldrb r0, [r0, #0x10]
	bl sub_08018730
	str r0, [sp, #0x80]
	movs r0, #0x4f
	bl sub_08018730
	str r0, [sp, #0x7c]
	ldr r0, [r7]
	ldrb r0, [r0, #0x10]
	bl sub_08018730
	str r0, [sp, #0x84]
	str r4, [sp, #0x60]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x64]
	movs r2, #0
	str r2, [sp, #0x88]
	bl sub_08009C04
	ldr r1, _0801A708 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019840
	mov sb, r6
	mov r2, sp
	adds r2, #0x6c
	str r2, [sp, #0x8c]
	ldr r0, _0801A708 @ =0x00000A7E
	adds r6, r7, r0
	mov r8, sl
_0801A69C:
	bl sub_08000BC0
	ldr r1, [sp, #0x74]
	cmp r1, #1
	bne _0801A6BE
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	movs r0, #0x2a
	lsls r3, r0, #2
	adds r3, #0x2a
	lsls r3, r3, #3
	adds r3, #8
	adds r0, r7, #0
	adds r0, #0x30
	adds r3, r7, r3
	bl sub_08019430
_0801A6BE:
	ldrb r0, [r6]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801A71C
	add r5, sp, #0x60
	str r5, [sp]
	add r4, sp, #0x64
	str r4, [sp, #4]
	movs r0, #0x4b
	ldr r1, [sp, #0x78]
	ldr r2, [sp, #0x80]
	movs r3, #0xf0
	lsls r3, r3, #6
	bl sub_080187F0
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #0x4f
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x84]
	movs r3, #0xf0
	lsls r3, r3, #6
	bl sub_080187F0
	ldr r0, [sp, #0x64]
	cmp r0, #0
	ble _0801A710
	ldr r0, [sp, #0x60]
	movs r1, #0xf0
	lsls r1, r1, #6
	cmp r0, r1
	blo _0801A71C
	str r1, [sp, #0x60]
	ldr r0, _0801A70C @ =0xFFFFFF00
	b _0801A71A
	.align 2, 0
_0801A708: .4byte 0x00000A7E
_0801A70C: .4byte 0xFFFFFF00
_0801A710:
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bne _0801A71C
	movs r0, #0x80
	lsls r0, r0, #1
_0801A71A:
	str r0, [sp, #0x64]
_0801A71C:
	ldrb r0, [r6]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801A774
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x54]
	adds r2, r1, #0
	cmp r0, r1
	bhs _0801A754
	mov r2, r8
	str r2, [sp]
	add r0, sp, #0x38
	str r0, [sp, #4]
	subs r0, r1, #1
	str r0, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	add r2, sp, #0x5c
	str r2, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	mov r2, r8
	add r3, sp, #0x2c
	bl sub_080195C8
	b _0801A774
_0801A754:
	str r2, [sp, #0x58]
	mov r0, r8
	str r0, [sp]
	add r1, sp, #0x38
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r2, sb
	str r2, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	mov r2, r8
	add r3, sp, #0x2c
	bl sub_080195C8
_0801A774:
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne _0801A790
	adds r0, r7, #0
	add r1, sp, #0x68
	bl sub_080196D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801A79C
	movs r0, #2
	str r0, [sp, #0x6c]
	b _0801A79C
_0801A790:
	cmp r0, #1
	bls _0801A79C
	adds r0, r7, #0
	movs r1, #0
	bl sub_080196D0
_0801A79C:
	ldr r0, [sp, #0x90]
	movs r1, #0x2b
	bl sub_08019160
	bl sub_08009BD0
	ldrb r0, [r6]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801A7C6
	adds r0, r7, #0
	ldr r1, [sp, #0x70]
	ldr r2, [sp, #0x88]
	bl sub_0801A4A0
	cmp r0, #0
	beq _0801A7C6
	movs r0, #1
	str r0, [sp, #0x88]
_0801A7C6:
	ldr r0, [sp, #0x90]
	movs r1, #0x2b
	bl sub_08018FFC
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x54]
	adds r0, r7, #0
	ldr r3, [sp, #0x8c]
	bl sub_080197AC
	cmp r0, #1
	beq _0801A7E0
	b _0801A69C
_0801A7E0:
	ldrb r0, [r6]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801A7F8
	ldr r1, [sp, #0x88]
	cmp r1, #0
	bne _0801A7F8
	movs r2, #1
	str r2, [sp, #0x88]
	b _0801A69C
_0801A7F8:
	ldr r1, _0801A824 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019878
	bl sub_08009BF4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801A828 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A824: .4byte 0x00000A7E
_0801A828: .4byte 0x000080FF

	thumb_func_start sub_0801A82C
sub_0801A82C: @ 0x0801A82C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r7, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r4, #0
	bne _0801A84C
	ldr r0, _0801A848 @ =gUnknown_087BA1B4
	str r0, [r1]
	movs r0, #4
	b _0801A862
	.align 2, 0
_0801A848: .4byte gUnknown_087BA1B4
_0801A84C:
	cmp r4, #1
	bne _0801A85C
	ldr r0, _0801A858 @ =gUnknown_087B9F24
	str r0, [r1]
	movs r0, #8
	b _0801A862
	.align 2, 0
_0801A858: .4byte gUnknown_087B9F24
_0801A85C:
	ldr r0, _0801A908 @ =gUnknown_087B9944
	str r0, [r1]
	movs r0, #0x10
_0801A862:
	strb r0, [r1, #4]
	movs r0, #0
	mov r8, r0
	ldr r0, [sp, #0x58]
	strb r0, [r1, #5]
	ldrb r0, [r1, #4]
	ldrb r1, [r1, #5]
	bl sub_08019B9C
	adds r5, r0, #0
	ldr r0, [sp, #0x40]
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	str r0, [sp, #8]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	ldr r3, [sp, #0x34]
	bl sub_080191D8
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	bl sub_080187C8
	ldr r0, _0801A90C @ =gUnknown_087B8B24
	str r0, [r7, #4]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B40
	ldr r1, _0801A910 @ =gUnknown_087B8B58
	movs r2, #0xd7
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B70
	ldr r1, _0801A914 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r2, _0801A918 @ =0x00000A7F
	adds r0, r7, r2
	ldrb r2, [r0]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, _0801A91C @ =gUnknown_087BAF28
	str r0, [sp, #4]
	ldr r0, _0801A920 @ =gUnknown_087BAF38
	str r0, [sp, #8]
	mov r0, r8
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_080189B4
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08018AB4
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A908: .4byte gUnknown_087B9944
_0801A90C: .4byte gUnknown_087B8B24
_0801A910: .4byte gUnknown_087B8B58
_0801A914: .4byte 0x00000A7E
_0801A918: .4byte 0x00000A7F
_0801A91C: .4byte gUnknown_087BAF28
_0801A920: .4byte gUnknown_087BAF38

	thumb_func_start sub_0801A924
sub_0801A924: @ 0x0801A924
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1a0
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x1bc]
	bl sub_08009B94
	bl sub_08000B84
	ldr r4, _0801A98C @ =gUnknown_02037870
	adds r0, r4, #0
	bl sub_08019274
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x1c0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c8]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1cc]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1d0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x1d4]
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
	adds r0, r4, #0
	add r1, sp, #0x28
	mov r2, r8
	mov r3, sb
	bl sub_0801A82C
	adds r0, r4, #0
	add r1, sp, #0x28
	bl sub_0801A544
	add sp, #0x1a0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A98C: .4byte gUnknown_02037870

	thumb_func_start sub_0801A990
sub_0801A990: @ 0x0801A990
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1a0
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x1bc]
	bl sub_08009B94
	bl sub_08000B84
	ldr r4, _0801A9F8 @ =gUnknown_02037870
	adds r0, r4, #0
	bl sub_08019274
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x1c0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c8]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1cc]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1d0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x1d4]
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x24]
	adds r0, r4, #0
	add r1, sp, #0x28
	mov r2, r8
	mov r3, sb
	bl sub_0801A82C
	adds r0, r4, #0
	add r1, sp, #0x28
	bl sub_0801A544
	add sp, #0x1a0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A9F8: .4byte gUnknown_02037870

	thumb_func_start sub_0801A9FC
sub_0801A9FC: @ 0x0801A9FC
	subs r0, #1
	bx lr

	thumb_func_start sub_0801AA00
sub_0801AA00: @ 0x0801AA00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sb, r0
	str r2, [sp, #0x48]
	str r3, [sp, #0x4c]
	ldr r0, [r1]
	str r0, [sp, #0x50]
	ldrb r4, [r1, #4]
	ldr r0, _0801AAD0 @ =0x00000A7F
	add r0, sb
	ldrb r0, [r0]
	str r0, [sp, #0x58]
	adds r0, r4, #0
	bl sub_0801A9FC
	ldr r0, _0801AAD4 @ =0x00000A84
	add r0, sb
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08019764
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, _0801AAD8 @ =0x0000FFFF
	str r1, [sp, #0x5c]
	str r0, [sp, #0x6c]
	cmp r2, #0
	blt _0801AA5C
	ldr r3, [sp, #0x58]
	cmp r3, #0
	beq _0801AA5C
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r0, r0, r1
	ldr r1, [r0, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	subs r0, #4
	ldrb r0, [r0, #2]
	str r0, [sp, #0x5c]
_0801AA5C:
	movs r2, #0
	mov r8, r2
	lsls r0, r4, #0x10
	lsrs r1, r0, #0x10
	str r0, [sp, #0x68]
	cmp r8, r1
	bhs _0801AA80
_0801AA6A:
	mov r3, r8
	lsls r0, r3, #2
	add r0, sp
	str r2, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, r1
	blo _0801AA6A
_0801AA80:
	movs r0, #0
	mov r8, r0
	ldr r1, [sp, #0x68]
	cmp r1, #0
	bne _0801AA8C
	b _0801ABE8
_0801AA8C:
	ldr r0, _0801AADC @ =0x00000A7E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #7
	beq _0801AAA0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	bl sub_08009CD4
_0801AAA0:
	mov r3, r8
	lsls r2, r3, #3
	subs r1, r2, r3
	lsls r1, r1, #2
	ldr r0, [sp, #0x50]
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp, #0x40]
	ldrh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x6c]
	asrs r0, r1, #0x10
	adds r5, r2, #0
	cmp r8, r0
	bne _0801AAE0
	movs r0, #0xa8
	lsls r0, r0, #4
	add r0, sb
	b _0801AAEC
	.align 2, 0
_0801AAD0: .4byte 0x00000A7F
_0801AAD4: .4byte 0x00000A84
_0801AAD8: .4byte 0x0000FFFF
_0801AADC: .4byte 0x00000A7E
_0801AAE0:
	ldr r0, _0801AB4C @ =0x00000A84
	add r0, sb
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
_0801AAEC:
	ldr r2, [r0]
	ldr r4, _0801AB50 @ =0x00000A7E
	add r4, sb
	ldrb r0, [r4]
	cmp r0, #7
	beq _0801AB00
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_08009E44
_0801AB00:
	ldrb r0, [r4]
	mov r3, r8
	adds r3, #1
	str r3, [sp, #0x60]
	cmp r0, #0
	beq _0801ABD8
	mov r1, r8
	subs r0, r5, r1
	lsls r0, r0, #2
	ldr r2, [sp, #0x50]
	adds r0, r0, r2
	ldr r3, [r0, #0x14]
	mov sl, r3
	ldrb r0, [r0, #0x18]
	str r0, [sp, #0x54]
	movs r6, #0
	cmp r6, r0
	bhs _0801ABD8
	lsls r0, r1, #2
	mov r1, sp
	adds r7, r1, r0
_0801AB2A:
	lsls r2, r6, #2
	mov r3, sl
	adds r4, r2, r3
	ldrb r1, [r4, #2]
	ldr r0, _0801AB54 @ =0x00000A8C
	add r0, sb
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	str r2, [sp, #0x64]
	cmp r0, #1
	bne _0801AB58
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0801AB66
	b _0801AB62
	.align 2, 0
_0801AB4C: .4byte 0x00000A84
_0801AB50: .4byte 0x00000A7E
_0801AB54: .4byte 0x00000A8C
_0801AB58:
	cmp r0, #2
	bne _0801AB70
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0801AB66
_0801AB62:
	ldrb r2, [r4, #1]
	b _0801AB72
_0801AB66:
	ldrb r2, [r4]
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	b _0801AB72
_0801AB70:
	ldr r2, _0801ABC0 @ =0x0000FFFF
_0801AB72:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	blt _0801ABCC
	ldr r0, _0801ABC4 @ =0x00000A7E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #7
	beq _0801AB9C
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, #8
	add r4, sb
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
_0801AB9C:
	ldr r1, [sp, #0x5c]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0801ABCC
	ldr r0, [sp, #0x64]
	add r0, sl
	ldrb r0, [r0, #2]
	cmp r1, r0
	bne _0801ABCC
	ldr r2, [sp, #0x6c]
	asrs r0, r2, #0x10
	cmp r8, r0
	bne _0801ABC8
	ldr r3, [sp, #0x4c]
	str r5, [r3]
	b _0801ABCC
	.align 2, 0
_0801ABC0: .4byte 0x0000FFFF
_0801ABC4: .4byte 0x00000A7E
_0801ABC8:
	ldr r0, [sp, #0x4c]
	str r5, [r0, #4]
_0801ABCC:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x54]
	cmp r6, r1
	blo _0801AB2A
_0801ABD8:
	ldr r2, [sp, #0x60]
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
	mov r8, r3
	ldr r1, [sp, #0x68]
	cmp r0, r1
	bhs _0801ABE8
	b _0801AA8C
_0801ABE8:
	ldr r0, _0801AD04 @ =0x00000A7E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801AC9E
	ldr r1, [sp, #0x68]
	movs r2, #0
	mov r8, r2
	cmp r1, #0
	beq _0801AC9E
_0801ABFC:
	movs r7, #0
	movs r6, #0
	lsrs r1, r1, #0x10
	mov r3, r8
	adds r3, #1
	str r3, [sp, #0x60]
	mov r0, r8
	lsls r5, r0, #3
	cmp r7, r1
	bhs _0801AC38
	lsls r0, r0, #2
	mov r2, sp
	adds r3, r2, r0
	adds r2, r1, #0
_0801AC18:
	cmp r8, r6
	beq _0801AC2E
	lsls r0, r6, #2
	add r0, sp
	ldr r1, [r3]
	ldr r0, [r0]
	cmp r1, r0
	bhs _0801AC2E
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0801AC2E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r2
	blo _0801AC18
_0801AC38:
	mov r3, r8
	subs r0, r5, r3
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r5, r0, r1
	ldr r1, [r5, #0xc]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _0801AD04 @ =0x00000A7E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #7
	beq _0801AC80
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r4, #8
	add r4, sb
	adds r0, r4, #0
	bl sub_08018FB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801901C
	movs r2, #8
	ldrsh r1, [r5, r2]
	movs r3, #0xa
	ldrsh r2, [r5, r3]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
_0801AC80:
	ldr r1, [sp, #0x6c]
	asrs r0, r1, #0x10
	cmp r8, r0
	bne _0801AC90
	ldr r1, _0801AD08 @ =0x00000A98
	add r1, sb
	adds r0, r7, #1
	str r0, [r1]
_0801AC90:
	ldr r2, [sp, #0x60]
	lsls r0, r2, #0x10
	ldr r1, [sp, #0x68]
	lsrs r3, r0, #0x10
	mov r8, r3
	cmp r0, r1
	blo _0801ABFC
_0801AC9E:
	ldr r0, _0801AD04 @ =0x00000A7E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #7
	beq _0801AD5C
	ldr r1, [sp, #0x48]
	cmp r1, #0
	blt _0801AD5C
	ldr r2, [sp, #0x6c]
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _0801AD3E
	cmp r0, #1
	bne _0801AD10
	ldr r3, [sp, #0x58]
	cmp r3, #0
	beq _0801AD10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r0, r0, r1
	ldr r1, [r0, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r1
	subs r0, #4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	add r0, sb
	add r1, sp, #0x40
	add r2, sp, #0x44
	bl sub_0801902C
	ldr r2, [sp, #0x44]
	ldr r3, _0801AD0C @ =0xFFFFF000
	adds r2, r2, r3
	str r2, [sp, #0x44]
	ldr r1, [sp, #0x48]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	add r0, sb
	ldr r1, [sp, #0x40]
	bl sub_08019024
	b _0801AD3E
	.align 2, 0
_0801AD04: .4byte 0x00000A7E
_0801AD08: .4byte 0x00000A98
_0801AD0C: .4byte 0xFFFFF000
_0801AD10:
	ldr r2, [sp, #0x48]
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r4, #8
	add r4, sb
	ldr r3, [sp, #0x6c]
	asrs r1, r3, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [sp, #0x50]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
_0801AD3E:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	blt _0801AD5C
	ldr r1, [sp, #0x6c]
	cmp r1, #0
	bge _0801AD5C
	lsls r0, r0, #2
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #8
	add r0, sb
	movs r1, #0
	bl sub_0801901C
_0801AD5C:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801AD6C
sub_0801AD6C: @ 0x0801AD6C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801AD90 @ =gUnknown_083251B8
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r3]
	mov r1, sp
	bl sub_08019304
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801AD90: .4byte gUnknown_083251B8

	thumb_func_start sub_0801AD94
sub_0801AD94: @ 0x0801AD94
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801ADB8 @ =gUnknown_083251C8
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	mov r1, sp
	bl sub_080194EC
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801ADB8: .4byte gUnknown_083251C8

	thumb_func_start sub_0801ADBC
sub_0801ADBC: @ 0x0801ADBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x7c
	adds r7, r0, #0
	adds r4, r1, #0
	ldr r0, _0801AF38 @ =0x00000A7E
	adds r0, r7, r0
	str r0, [sp, #0x74]
	ldrb r0, [r0]
	cmp r0, #7
	beq _0801ADFA
	ldr r0, [r7]
	bl sub_08018760
	ldr r0, [r7, #4]
	bl sub_080188CC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08018AF4
	adds r0, r7, #0
	movs r1, #0x31
	bl sub_0801AD6C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x70]
_0801ADFA:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x44]
	mov r1, sp
	adds r1, #0x44
	str r1, [sp, #0x78]
	str r0, [r1, #4]
	adds r0, r7, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x78]
	bl sub_0801AA00
	ldr r1, [sp, #0x74]
	ldrb r0, [r1]
	cmp r0, #7
	bne _0801AE1E
	b _0801B016
_0801AE1E:
	adds r0, r7, #0
	add r1, sp, #0x14
	bl sub_0801AD94
	movs r0, #8
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0x32
	bl sub_08018FFC
	ldr r1, [sp, #0x70]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r7, r0
	add r1, sp, #0x4c
	add r2, sp, #0x50
	bl sub_0801902C
	movs r0, #0
	str r0, [sp, #0x60]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #0x64]
	add r1, sp, #0x20
	mov r8, r1
	add r0, sp, #0x2c
	str r0, [sp]
	add r6, sp, #0x38
	str r6, [sp, #4]
	add r0, sp, #0x54
	str r0, [sp, #8]
	add r5, sp, #0x58
	str r5, [sp, #0xc]
	add r4, sp, #0x5c
	str r4, [sp, #0x10]
	adds r0, r7, #0
	movs r1, #3
	add r2, sp, #0x14
	mov r3, r8
	bl sub_08019544
	movs r1, #0
	str r1, [sp, #0x6c]
	str r1, [sp, #0x68]
	bl sub_08009C04
	ldr r1, [sp, #0x74]
	ldrb r0, [r1]
	bl sub_08019840
	ldr r1, [sp, #0x74]
	ldrb r0, [r1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r5
	add r1, sp, #0x6c
	mov r8, r1
	cmp r0, #1
	bhi _0801AED8
	add r6, sp, #0x60
	ldr r5, [sp, #0x78]
	movs r4, #1
_0801AEA0:
	ldr r1, [r5]
	cmp r1, #0
	blt _0801AEB8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08019038
_0801AEB8:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _0801AEA0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #5
	adds r3, r6, #0
	bl sub_08019688
	bl sub_08019180
_0801AED8:
	add r4, sp, #0x20
_0801AEDA:
	bl sub_08000BC0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne _0801AEFC
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	movs r0, #0x31
	lsls r3, r0, #2
	adds r3, #0x31
	lsls r3, r3, #3
	adds r3, #8
	adds r0, r7, #0
	adds r0, #0x30
	adds r3, r7, r3
	bl sub_08019430
_0801AEFC:
	ldr r1, _0801AF38 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801AF50
	add r0, sp, #0x64
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #5
	add r3, sp, #0x60
	bl sub_08019688
	ldr r0, [sp, #0x64]
	cmp r0, #0
	ble _0801AF40
	ldr r0, [sp, #0x60]
	movs r1, #0xf0
	lsls r1, r1, #5
	cmp r0, r1
	blt _0801AF50
	str r1, [sp, #0x60]
	ldr r0, _0801AF3C @ =0xFFFFFF00
	b _0801AF4E
	.align 2, 0
_0801AF38: .4byte 0x00000A7E
_0801AF3C: .4byte 0xFFFFFF00
_0801AF40:
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bgt _0801AF50
	movs r0, #0
	str r0, [sp, #0x60]
	movs r0, #0x80
	lsls r0, r0, #1
_0801AF4E:
	str r0, [sp, #0x64]
_0801AF50:
	ldr r1, _0801AF8C @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801AFAE
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x54]
	adds r2, r1, #0
	cmp r0, r1
	bhs _0801AF90
	str r4, [sp]
	add r0, sp, #0x38
	str r0, [sp, #4]
	subs r0, r1, #1
	str r0, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	add r0, sp, #0x5c
	str r0, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	add r3, sp, #0x2c
	bl sub_080195C8
	b _0801AFAE
	.align 2, 0
_0801AF8C: .4byte 0x00000A7E
_0801AF90:
	str r2, [sp, #0x58]
	str r4, [sp]
	add r1, sp, #0x38
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r0, sb
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	add r3, sp, #0x2c
	bl sub_080195C8
_0801AFAE:
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne _0801AFCA
	adds r0, r7, #0
	add r1, sp, #0x68
	bl sub_080196D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801AFD6
	movs r0, #2
	str r0, [sp, #0x6c]
	b _0801AFD6
_0801AFCA:
	cmp r0, #1
	bls _0801AFD6
	adds r0, r7, #0
	movs r1, #0
	bl sub_080196D0
_0801AFD6:
	mov r0, sl
	movs r1, #0x32
	bl sub_08019160
	bl sub_08009BD0
	mov r0, sl
	movs r1, #0x32
	bl sub_08018FFC
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x54]
	adds r0, r7, #0
	mov r3, r8
	bl sub_080197AC
	cmp r0, #1
	beq _0801AFFC
	b _0801AEDA
_0801AFFC:
	ldr r1, _0801B028 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019878
	bl sub_08009BF4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801B02C @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
_0801B016:
	add sp, #0x7c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B028: .4byte 0x00000A7E
_0801B02C: .4byte 0x000080FF

	thumb_func_start sub_0801B030
sub_0801B030: @ 0x0801B030
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	mov r8, r2
	mov sb, r3
	ldr r4, [sp, #0x4c]
	ldr r5, [sp, #0x50]
	ldr r6, [sp, #0x54]
	ldr r0, _0801B0F8 @ =gUnknown_087BAE94
	str r0, [r1]
	movs r0, #4
	mov sl, r0
	mov r2, sl
	strb r2, [r1, #4]
	bl sub_0801A9FC
	str r0, [sp, #0x1c]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x5c]
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x60]
	str r2, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	ldr r3, [sp, #0x40]
	bl sub_080191D8
	ldr r2, _0801B0FC @ =0x00000A7D
	adds r1, r7, r2
	ldrb r0, [r1]
	cmp r0, #4
	beq _0801B08A
	mov r0, sl
	strb r0, [r1]
_0801B08A:
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	bl sub_080187C8
	ldr r0, _0801B100 @ =gUnknown_087B8B28
	str r0, [r7, #4]
	adds r4, r7, #0
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B40
	ldr r1, _0801B104 @ =gUnknown_087BA654
	movs r2, #0xfa
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B70
	ldr r1, _0801B108 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r2, _0801B10C @ =0x00000A7F
	adds r0, r7, r2
	ldrb r2, [r0]
	ldr r0, [sp, #0x44]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0801B110 @ =gUnknown_087BAF3C
	str r0, [sp, #0xc]
	adds r0, r7, #0
	ldr r3, [sp, #0x1c]
	bl sub_080189B4
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08018AB4
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B0F8: .4byte gUnknown_087BAE94
_0801B0FC: .4byte 0x00000A7D
_0801B100: .4byte gUnknown_087B8B28
_0801B104: .4byte gUnknown_087BA654
_0801B108: .4byte 0x00000A7E
_0801B10C: .4byte 0x00000A7F
_0801B110: .4byte gUnknown_087BAF3C

	thumb_func_start sub_0801B114
sub_0801B114: @ 0x0801B114
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r7, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r5, #7
	beq _0801B130
	bl sub_08009B94
	bl sub_08000B84
_0801B130:
	ldr r4, _0801B180 @ =gUnknown_02038B80
	adds r0, r4, #0
	bl sub_08019274
	str r5, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #8]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x20]
	adds r0, r4, #0
	add r1, sp, #0x24
	adds r2, r7, #0
	mov r3, r8
	bl sub_0801B030
	adds r0, r4, #0
	add r1, sp, #0x24
	bl sub_0801ADBC
	ldr r0, _0801B184 @ =0x00000A98
	adds r4, r4, r0
	ldr r0, [r4]
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801B180: .4byte gUnknown_02038B80
_0801B184: .4byte 0x00000A98

	thumb_func_start sub_0801B188
sub_0801B188: @ 0x0801B188
	bx lr
	.align 2, 0

	thumb_func_start sub_0801B18C
sub_0801B18C: @ 0x0801B18C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	str r2, [sp, #0x18]
	ldr r0, [r1]
	str r0, [sp, #0x1c]
	ldrb r4, [r1, #4]
	ldr r1, _0801B204 @ =0x00000A7F
	adds r0, r6, r1
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _0801B208 @ =0x00000A84
	adds r0, r6, r2
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08019764
	str r0, [sp, #0x24]
	movs r0, #0
	cmp r4, #3
	bls _0801B1C8
	mov r3, r8
	cmp r3, #3
	bls _0801B1C8
	mov r0, r8
	subs r0, #3
_0801B1C8:
	movs r1, #0
	str r1, [sp, #0x20]
	mov sb, r1
	adds r2, r0, #1
	str r2, [sp, #0x30]
	ldr r3, _0801B208 @ =0x00000A84
	adds r3, r6, r3
	str r3, [sp, #0x28]
	ldr r5, [sp, #0x1c]
	adds r7, r0, #0
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	adds r0, r0, r5
	mov sl, r0
_0801B1E6:
	ldr r1, _0801B20C @ =0x00000A7E
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801B1F8
	cmp r0, #3
	beq _0801B1F8
	cmp r0, #5
	bne _0801B210
_0801B1F8:
	ldr r0, [sp, #0x30]
	add r0, sb
	movs r4, #0
	cmp r0, r8
	bhs _0801B21C
	b _0801B21A
	.align 2, 0
_0801B204: .4byte 0x00000A7F
_0801B208: .4byte 0x00000A84
_0801B20C: .4byte 0x00000A7E
_0801B210:
	ldr r0, [sp, #0x30]
	add r0, sb
	movs r4, #0
	cmp r0, r8
	bhi _0801B21C
_0801B21A:
	movs r4, #1
_0801B21C:
	ldr r1, [r5]
	add r0, sp, #4
	movs r2, #0x14
	bl sub_080002C4
	mov r2, sl
	ldr r0, [r2]
	ldr r0, [r0, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp]
	add r1, sp, #4
	movs r2, #0
	movs r3, #0
	bl sub_080188DC
	ldr r3, _0801B344 @ =0x00000A88
	adds r0, r6, r3
	ldr r1, [r0]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r2, [r0, #4]
	str r7, [sp, #0x2c]
	cmp r2, #0
	beq _0801B2D6
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0801B2D6
	movs r3, #0
	cmp r4, #1
	bne _0801B25E
	movs r3, #2
_0801B25E:
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [sp, #0x20]
	bl sub_080192A4
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801B2D6
	movs r2, #4
	ldrsh r1, [r5, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	bl sub_08018FB4
	movs r3, #4
	ldrsh r1, [r5, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r1, #1
	bl sub_0801901C
	movs r0, #4
	ldrsh r1, [r5, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r2, #6
	ldrsh r1, [r5, r2]
	movs r3, #8
	ldrsh r2, [r5, r3]
	bl sub_08019024
	movs r0, #4
	ldrsh r1, [r5, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	bl sub_08018B60
	ldr r1, [sp, #0x20]
	adds r1, #1
	str r1, [sp, #0x20]
_0801B2D6:
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _0801B332
	cmp r4, #1
	bne _0801B348
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	bl sub_08018FB4
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r1, #1
	bl sub_0801901C
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r3, #0xc
	ldrsh r1, [r5, r3]
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	bl sub_08019024
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	bl sub_08018B60
_0801B332:
	cmp r4, #1
	bne _0801B348
	movs r0, #0
	movs r1, #0
	movs r2, #3
	bl sub_08009CD4
	b _0801B352
	.align 2, 0
_0801B344: .4byte 0x00000A88
_0801B348:
	movs r0, #0
	movs r1, #0
	movs r2, #2
	bl sub_08009CD4
_0801B352:
	ldr r1, [sp, #0x28]
	ldr r0, [r1]
	ldr r2, [sp, #0x2c]
	lsls r4, r2, #2
	adds r0, r4, r0
	ldr r0, [r0, #4]
	bl sub_08009CBC
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	ldrh r1, [r5, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	ldr r3, [sp, #0x28]
	ldr r2, [r3]
	adds r4, r4, r2
	ldr r2, [r4, #4]
	bl sub_08009E44
	adds r5, #0x18
	adds r7, #1
	movs r0, #0x18
	add sl, r0
	movs r1, #1
	add sb, r1
	mov r2, sb
	cmp r2, #2
	bhi _0801B38E
	b _0801B1E6
_0801B38E:
	ldr r3, [sp, #0x18]
	cmp r3, #0
	blt _0801B3EC
	mov r0, r8
	cmp r0, #0
	beq _0801B3CE
	movs r1, #2
	cmp r0, #3
	bhi _0801B3A4
	mov r1, r8
	subs r1, #1
_0801B3A4:
	ldr r2, [sp, #0x18]
	lsls r4, r2, #2
	adds r4, r4, r2
	lsls r4, r4, #3
	adds r4, #8
	adds r4, r6, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	movs r2, #0x14
	ldrsh r1, [r0, r2]
	movs r3, #0x16
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_08019024
	adds r0, r4, #0
	bl sub_08018B60
_0801B3CE:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	blt _0801B3EC
	ldr r1, [sp, #0x24]
	cmp r1, #0
	bge _0801B3EC
	lsls r0, r0, #2
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r6, r0
	movs r1, #0
	bl sub_0801901C
_0801B3EC:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801B3FC
sub_0801B3FC: @ 0x0801B3FC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801B420 @ =gUnknown_083251EC
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r3]
	mov r1, sp
	bl sub_08019304
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801B420: .4byte gUnknown_083251EC

	thumb_func_start sub_0801B424
sub_0801B424: @ 0x0801B424
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r2, r1, #0
	mov r3, sp
	ldr r1, _0801B448 @ =gUnknown_083251FC
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	ldm r1!, {r4, r5, r6}
	stm r3!, {r4, r5, r6}
	mov r1, sp
	bl sub_080194EC
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B448: .4byte gUnknown_083251FC

	thumb_func_start sub_0801B44C
sub_0801B44C: @ 0x0801B44C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	adds r4, r1, #0
	ldr r0, [r7]
	bl sub_08018760
	ldr r0, [r7, #4]
	bl sub_080188CC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08018AF4
	adds r0, r7, #0
	movs r1, #0xf
	bl sub_0801B3FC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, sl
	bl sub_0801B18C
	adds r0, r7, #0
	add r1, sp, #0x14
	bl sub_0801B424
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0x10
	bl sub_08018FFC
	mov r1, sl
	lsls r0, r1, #2
	add r0, sl
	lsls r0, r0, #3
	adds r0, #8
	adds r0, r7, r0
	add r1, sp, #0x44
	add r2, sp, #0x48
	bl sub_0801902C
	add r0, sp, #0x20
	mov sb, r0
	add r1, sp, #0x2c
	str r1, [sp]
	add r6, sp, #0x38
	str r6, [sp, #4]
	add r0, sp, #0x4c
	str r0, [sp, #8]
	add r5, sp, #0x50
	str r5, [sp, #0xc]
	add r4, sp, #0x54
	str r4, [sp, #0x10]
	adds r0, r7, #0
	movs r1, #3
	add r2, sp, #0x14
	mov r3, sb
	bl sub_08019544
	movs r0, #0
	str r0, [sp, #0x5c]
	str r0, [sp, #0x58]
	bl sub_08009C04
	ldr r1, _0801B54C @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019840
	mov r8, r6
	adds r6, r5, #0
	mov r0, sp
	adds r0, #0x5c
	str r0, [sp, #0x60]
	mov r5, sb
_0801B4F2:
	bl sub_08000BC0
	mov r1, sl
	cmp r1, #1
	bne _0801B514
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	movs r0, #0xf
	lsls r3, r0, #2
	adds r3, #0xf
	lsls r3, r3, #3
	adds r3, #8
	adds r0, r7, #0
	adds r0, #0x30
	adds r3, r7, r3
	bl sub_08019430
_0801B514:
	ldr r1, _0801B54C @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0801B56C
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	cmp r0, r1
	bhs _0801B550
	str r5, [sp]
	mov r0, r8
	str r0, [sp, #4]
	subs r0, r1, #1
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r1, sp, #0x54
	str r1, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r5, #0
	add r3, sp, #0x2c
	bl sub_080195C8
	b _0801B56C
	.align 2, 0
_0801B54C: .4byte 0x00000A7E
_0801B550:
	str r1, [sp, #0x50]
	str r5, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r5, #0
	add r3, sp, #0x2c
	bl sub_080195C8
_0801B56C:
	ldr r0, [sp, #0x5c]
	cmp r0, #1
	bne _0801B588
	adds r0, r7, #0
	add r1, sp, #0x58
	bl sub_080196D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801B594
	movs r0, #2
	str r0, [sp, #0x5c]
	b _0801B594
_0801B588:
	cmp r0, #1
	bls _0801B594
	adds r0, r7, #0
	movs r1, #0
	bl sub_080196D0
_0801B594:
	adds r4, r7, #0
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08019160
	bl sub_08009BD0
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08018FFC
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x4c]
	adds r0, r7, #0
	ldr r3, [sp, #0x60]
	bl sub_080197AC
	cmp r0, #1
	bne _0801B4F2
	ldr r1, _0801B5E8 @ =0x00000A7E
	adds r0, r7, r1
	ldrb r0, [r0]
	bl sub_08019878
	bl sub_08009BF4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801B5EC @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B5E8: .4byte 0x00000A7E
_0801B5EC: .4byte 0x000080FF

	thumb_func_start sub_0801B5F0
sub_0801B5F0: @ 0x0801B5F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r4, r2, #0
	adds r7, r3, #0
	cmp r4, #6
	bne _0801B60C
	ldr r0, _0801B608 @ =gUnknown_087BA5DC
	str r0, [r1]
	movs r0, #5
	b _0801B618
	.align 2, 0
_0801B608: .4byte gUnknown_087BA5DC
_0801B60C:
	cmp r4, #4
	beq _0801B612
	movs r4, #4
_0801B612:
	ldr r0, _0801B6B0 @ =gUnknown_087BA594
	str r0, [r1]
	movs r0, #3
_0801B618:
	strb r0, [r1, #4]
	ldrb r0, [r1, #4]
	bl sub_0801B188
	adds r5, r0, #0
	ldr r0, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x40]
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #8]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	ldr r3, [sp, #0x30]
	bl sub_080191D8
	adds r0, r6, #0
	ldr r1, [sp, #0x38]
	bl sub_080187C8
	ldr r0, _0801B6B4 @ =gUnknown_087B8B2C
	str r0, [r6, #4]
	adds r4, r6, #0
	adds r4, #8
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B40
	ldr r1, _0801B6B8 @ =gUnknown_087BA274
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r4, #0
	bl sub_080002C4
	adds r0, r4, #0
	movs r1, #0x40
	bl sub_08018B70
	ldr r1, _0801B6BC @ =0x00000A7E
	adds r0, r6, r1
	ldrb r1, [r0]
	ldr r2, _0801B6C0 @ =0x00000A7F
	adds r0, r6, r2
	ldrb r2, [r0]
	ldr r0, [sp, #0x34]
	str r0, [sp]
	ldr r0, _0801B6C4 @ =gUnknown_087BAF30
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _0801B6C8 @ =gUnknown_087BAF3C
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r3, r5, #0
	bl sub_080189B4
	movs r1, #0xa9
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08018AB4
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B6B0: .4byte gUnknown_087BA594
_0801B6B4: .4byte gUnknown_087B8B2C
_0801B6B8: .4byte gUnknown_087BA274
_0801B6BC: .4byte 0x00000A7E
_0801B6C0: .4byte 0x00000A7F
_0801B6C4: .4byte gUnknown_087BAF30
_0801B6C8: .4byte gUnknown_087BAF3C

	thumb_func_start sub_0801B6CC
sub_0801B6CC: @ 0x0801B6CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x48]
	bl sub_08009B94
	bl sub_08000B84
	ldr r4, _0801B730 @ =gUnknown_0203B0E0
	adds r0, r4, #0
	bl sub_08019274
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x20]
	adds r0, r4, #0
	add r1, sp, #0x24
	mov r2, r8
	mov r3, sb
	bl sub_0801B5F0
	adds r0, r4, #0
	add r1, sp, #0x24
	bl sub_0801B44C
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B730: .4byte gUnknown_0203B0E0

	thumb_func_start sub_0801B734
sub_0801B734: @ 0x0801B734
	push {lr}
_0801B736:
	movs r0, #1
	bl sub_080006DC
	cmp r0, #0
	bne _0801B736
	pop {r0}
	bx r0

	thumb_func_start sub_0801B744
sub_0801B744: @ 0x0801B744
	push {lr}
	bl sub_0800A0B8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801B750
sub_0801B750: @ 0x0801B750
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800A0DC
	cmp r0, #0
	bge _0801B764
	adds r0, r4, #0
	bl sub_0800A094
	b _0801B76E
_0801B764:
	cmp r0, r4
	beq _0801B76E
	adds r0, r4, #0
	bl sub_0800A094
_0801B76E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801B774
sub_0801B774: @ 0x0801B774
	push {lr}
	ldr r0, _0801B788 @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B78C
	movs r0, #0
	b _0801B78E
	.align 2, 0
_0801B788: .4byte gUnknown_02000020
_0801B78C:
	movs r0, #1
_0801B78E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801B794
sub_0801B794: @ 0x0801B794
	ldr r1, _0801B79C @ =0x04000050
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801B79C: .4byte 0x04000050

	thumb_func_start sub_0801B7A0
sub_0801B7A0: @ 0x0801B7A0
	ldr r1, _0801B7A8 @ =0x04000050
	movs r0, #0xbf
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801B7A8: .4byte 0x04000050

	thumb_func_start sub_0801B7AC
sub_0801B7AC: @ 0x0801B7AC
	ldr r1, _0801B7B4 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801B7B4: .4byte 0x04000050

	thumb_func_start sub_0801B7B8
sub_0801B7B8: @ 0x0801B7B8
	ldr r1, _0801B7C0 @ =0x04000054
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801B7C0: .4byte 0x04000054

	thumb_func_start sub_0801B7C4
sub_0801B7C4: @ 0x0801B7C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r1
	adds r6, r2, #0
	mov sl, r3
	cmp r0, #0
	bne _0801B7DE
	bl sub_0801B7AC
	b _0801B7E2
_0801B7DE:
	bl sub_0801B7A0
_0801B7E2:
	movs r0, #0
	mov sb, r0
	movs r7, #0
	cmp sb, r6
	bhs _0801B84C
	subs r5, r6, #1
	movs r4, #0
_0801B7F0:
	bl sub_08000BC0
	bl sub_08009BD0
	mov r0, r8
	cmp r0, #0
	bne _0801B81C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803DD84
	lsls r0, r0, #4
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803DD84
	adds r1, r0, #0
	movs r0, #0x10
	subs r0, r0, r1
	bl sub_0801B7B8
	b _0801B832
_0801B81C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803DD84
	lsls r0, r0, #4
	movs r1, #0xfa
	lsls r1, r1, #2
	bl sub_0803DD84
	bl sub_0801B7B8
_0801B832:
	mov r0, sl
	cmp r0, #1
	bne _0801B840
	bl sub_0801B774
	cmp r0, #1
	beq _0801B860
_0801B840:
	movs r0, #0xfa
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r7, #1
	cmp r7, r6
	blo _0801B7F0
_0801B84C:
	mov r0, sb
	cmp r0, #0
	bne _0801B86C
	mov r0, r8
	cmp r0, #0
	bne _0801B866
	movs r0, #0
	bl sub_0801B7B8
	b _0801B86C
_0801B860:
	movs r0, #1
	mov sb, r0
	b _0801B86C
_0801B866:
	movs r0, #0x10
	bl sub_0801B7B8
_0801B86C:
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0801B87C
sub_0801B87C: @ 0x0801B87C
	push {r4, r5, lr}
	cmp r0, #0xf0
	ble _0801B886
	movs r5, #0xf0
	b _0801B892
_0801B886:
	cmp r0, #0
	bge _0801B88E
	movs r5, #0
	b _0801B892
_0801B88E:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0801B892:
	cmp r1, #0xa0
	ble _0801B89A
	movs r4, #0xa0
	b _0801B8A6
_0801B89A:
	cmp r1, #0
	bge _0801B8A2
	movs r4, #0
	b _0801B8A6
_0801B8A2:
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
_0801B8A6:
	cmp r2, #0xf0
	ble _0801B8AE
	movs r2, #0xf0
	b _0801B8BA
_0801B8AE:
	cmp r2, #0
	bge _0801B8B6
	movs r2, #0
	b _0801B8BA
_0801B8B6:
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
_0801B8BA:
	cmp r3, #0xa0
	ble _0801B8C2
	movs r3, #0xa0
	b _0801B8CE
_0801B8C2:
	cmp r3, #0
	bge _0801B8CA
	movs r3, #0
	b _0801B8CE
_0801B8CA:
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_0801B8CE:
	ldr r1, _0801B8E4 @ =0x04000040
	lsls r0, r5, #8
	orrs r0, r2
	strh r0, [r1]
	adds r1, #4
	lsls r0, r4, #8
	orrs r0, r3
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B8E4: .4byte 0x04000040

	thumb_func_start sub_0801B8E8
sub_0801B8E8: @ 0x0801B8E8
	ldr r1, _0801B8F4 @ =0x04000050
	movs r2, #0xfc
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801B8F4: .4byte 0x04000050

	thumb_func_start sub_0801B8F8
sub_0801B8F8: @ 0x0801B8F8
	push {lr}
	cmp r0, #0x10
	ble _0801B902
	movs r2, #0x10
	b _0801B90E
_0801B902:
	cmp r0, #0
	bge _0801B90A
	movs r2, #0
	b _0801B90E
_0801B90A:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0801B90E:
	cmp r1, #0x10
	ble _0801B916
	movs r0, #0x10
	b _0801B922
_0801B916:
	cmp r1, #0
	bge _0801B91E
	movs r0, #0
	b _0801B922
_0801B91E:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
_0801B922:
	ldr r1, _0801B930 @ =0x04000052
	lsls r0, r0, #8
	orrs r0, r2
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801B930: .4byte 0x04000052

	thumb_func_start sub_0801B934
sub_0801B934: @ 0x0801B934
	ldr r2, _0801B944 @ =0x04000010
	rsbs r0, r0, #0
	strh r0, [r2]
	ldr r0, _0801B948 @ =0x04000012
	rsbs r1, r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_0801B944: .4byte 0x04000010
_0801B948: .4byte 0x04000012

	thumb_func_start sub_0801B94C
sub_0801B94C: @ 0x0801B94C
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0xa0
	movs r1, #2
	bl sub_0803D34C
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0x80
	movs r1, #2
	bl sub_0803D34C
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r0, sp
	adds r4, #0x78
	movs r2, #0
	strh r4, [r0, #8]
	adds r5, #0x50
	strh r5, [r0, #0xa]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	add r4, sp, #0x14
	adds r1, r4, #0
	movs r2, #1
	bl sub_0803D344
	ldr r1, _0801B9CC @ =0x04000020
	ldrh r0, [r4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #6]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #8]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801B9D0 @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0xc]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	add sp, #0x24
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B9CC: .4byte 0x04000020
_0801B9D0: .4byte 0x0FFF0000

	thumb_func_start sub_0801B9D4
sub_0801B9D4: @ 0x0801B9D4
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	cmp r0, #0
	blt _0801BA08
	lsls r2, r0, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0xff
	ands r3, r1
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2, #2]
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r1
	ldr r3, _0801BA10 @ =0x000001FF
	adds r1, r3, #0
	ands r4, r1
	orrs r0, r4
	strh r0, [r2, #2]
_0801BA08:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BA10: .4byte 0x000001FF

	thumb_func_start sub_0801BA14
sub_0801BA14: @ 0x0801BA14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r2
	ldr r2, [r0, #0xc]
	ldrh r7, [r0, #0x10]
	movs r6, #0
	cmp r6, r7
	bhs _0801BA40
	adds r5, r1, #0
	adds r4, r2, #0
_0801BA2A:
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r5, #0
	mov r2, r8
	bl sub_0801B9D4
	adds r5, #0x40
	adds r4, #0xc
	adds r6, #1
	cmp r6, r7
	blo _0801BA2A
_0801BA40:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801BA4C
sub_0801BA4C: @ 0x0801BA4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r2
	ldr r2, [r0, #0x14]
	ldrh r7, [r0, #0x18]
	movs r6, #0
	cmp r6, r7
	bhs _0801BA78
	adds r5, r1, #0
	adds r4, r2, #0
_0801BA62:
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r5, #0
	mov r2, r8
	bl sub_0801B9D4
	adds r5, #0x40
	adds r4, #0xc
	adds r6, #1
	cmp r6, r7
	blo _0801BA62
_0801BA78:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801BA84
sub_0801BA84: @ 0x0801BA84
	push {r4, lr}
	sub sp, #4
	adds r3, r1, #0
	cmp r0, #0
	blt _0801BAC6
	lsls r0, r0, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r4, r0, r1
	mov r2, sp
	ldrh r1, [r4]
	ldr r0, _0801BAB4 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	cmp r3, #0
	bne _0801BAB8
	mov r0, sp
	ldrh r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0801BAC0
	.align 2, 0
_0801BAB4: .4byte 0x0000FCFF
_0801BAB8:
	mov r0, sp
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
_0801BAC0:
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
_0801BAC6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801BAD0
sub_0801BAD0: @ 0x0801BAD0
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r1, [r0, #0xc]
	ldrh r6, [r0, #0x10]
	movs r5, #0
	cmp r5, r6
	bhs _0801BAF2
	adds r4, r1, #0
_0801BAE0:
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r7, #0
	bl sub_0801BA84
	adds r4, #0xc
	adds r5, #1
	cmp r5, r6
	blo _0801BAE0
_0801BAF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801BAF8
sub_0801BAF8: @ 0x0801BAF8
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r1, [r0, #0x14]
	ldrh r6, [r0, #0x18]
	movs r5, #0
	cmp r5, r6
	bhs _0801BB1A
	adds r4, r1, #0
_0801BB08:
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r7, #0
	bl sub_0801BA84
	adds r4, #0xc
	adds r5, #1
	cmp r5, r6
	blo _0801BB08
_0801BB1A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801BB20
sub_0801BB20: @ 0x0801BB20
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r0, r3, #8
	bl sub_0803D7D4
	subs r4, r4, r5
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0801BB3C
sub_0801BB3C: @ 0x0801BB3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r6, #0x80
	lsls r6, r6, #1
	movs r5, #0
	mov sl, r5
	movs r4, #0xa0
	lsls r4, r4, #8
	ldr r1, _0801BBA4 @ =0xFFFF3800
	mov sb, r1
	movs r2, #0xf0
	lsls r2, r2, #8
	mov r8, r2
	bl sub_0801B8E8
	movs r0, #0x10
	movs r1, #0
	bl sub_0801B8F8
_0801BB70:
	bl sub_08000BC0
	cmp r5, #0
	bne _0801BBB6
	ldr r0, [sp]
	lsrs r4, r0, #8
	cmp r4, #0x10
	bhi _0801BBA8
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #5
	movs r2, #0x10
	adds r3, r4, #0
	bl sub_0801BB20
	mov sl, r0
	movs r0, #0xa0
	lsls r0, r0, #8
	movs r1, #0x90
	lsls r1, r1, #8
	movs r2, #0x10
	adds r3, r4, #0
	bl sub_0801BB20
	adds r4, r0, #0
	b _0801BC94
	.align 2, 0
_0801BBA4: .4byte 0xFFFF3800
_0801BBA8:
	movs r1, #0x80
	lsls r1, r1, #5
	mov sl, r1
	movs r4, #0x90
	lsls r4, r4, #8
	movs r5, #1
	b _0801BC8C
_0801BBB6:
	cmp r5, #1
	bne _0801BBC6
	ldr r1, [sp]
	lsrs r0, r1, #8
	cmp r0, #0xf
	bls _0801BC94
	movs r5, #2
	b _0801BBFE
_0801BBC6:
	cmp r5, #2
	bne _0801BBF0
	ldr r0, [sp]
	lsrs r3, r0, #8
	cmp r3, #0x3c
	bhi _0801BBE8
	ldr r0, _0801BBE4 @ =0xFFFF3800
	movs r1, #0
	movs r2, #0x3c
	bl sub_0801BB20
	mov sb, r0
	lsrs r0, r6, #4
	adds r6, r6, r0
	b _0801BC94
	.align 2, 0
_0801BBE4: .4byte 0xFFFF3800
_0801BBE8:
	movs r1, #0
	mov sb, r1
	movs r5, #3
	b _0801BC8C
_0801BBF0:
	cmp r5, #3
	bne _0801BC08
	ldr r1, [sp]
	lsrs r0, r1, #8
	cmp r0, #0x28
	bls _0801BC94
	movs r5, #4
_0801BBFE:
	movs r2, #0
	str r2, [sp]
	movs r6, #0x80
	lsls r6, r6, #2
	b _0801BC94
_0801BC08:
	cmp r5, #4
	bne _0801BC42
	ldr r0, [sp]
	lsrs r3, r0, #8
	cmp r3, #0x3c
	bhi _0801BC2A
	movs r0, #0xf0
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #4
	movs r2, #0x3c
	bl sub_0801BB20
	mov r8, r0
	lsrs r0, r6, #3
	adds r6, r6, r0
	b _0801BC94
_0801BC2A:
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
	ldr r0, [r7, #0x20]
	cmp r0, #1
	bne _0801BC3A
	movs r5, #5
	b _0801BC8C
_0801BC3A:
	movs r5, #8
	movs r0, #0
	str r0, [sp]
	b _0801BC90
_0801BC42:
	cmp r5, #5
	bne _0801BC52
	ldr r1, [sp]
	lsrs r0, r1, #8
	cmp r0, #0x1e
	bls _0801BC94
	movs r5, #6
	b _0801BC8C
_0801BC52:
	cmp r5, #6
	bne _0801BC66
	adds r0, r7, #0
	movs r1, #0
	bl sub_0801BAD0
	movs r5, #7
	movs r0, #0
	str r0, [sp]
	b _0801BC90
_0801BC66:
	cmp r5, #7
	bne _0801BC7E
	ldr r1, [sp]
	lsrs r0, r1, #8
	cmp r0, #3
	bls _0801BC94
	adds r0, r7, #0
	movs r1, #1
	bl sub_0801BAF8
	movs r5, #8
	b _0801BC8C
_0801BC7E:
	cmp r5, #8
	bne _0801BC94
	ldr r1, [sp]
	lsrs r0, r1, #8
	cmp r0, #0x8c
	bls _0801BC94
	movs r5, #9
_0801BC8C:
	movs r2, #0
	str r2, [sp]
_0801BC90:
	movs r6, #0x80
	lsls r6, r6, #1
_0801BC94:
	bl sub_08009BD0
	mov r0, sl
	asrs r1, r0, #8
	asrs r3, r4, #8
	movs r0, #0
	movs r2, #0xf0
	bl sub_0801B87C
	mov r1, sb
	asrs r0, r1, #8
	movs r1, #0
	bl sub_0801B94C
	mov r2, r8
	asrs r1, r2, #8
	adds r0, r7, #0
	movs r2, #0x60
	bl sub_0801BA14
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, r1, r1
	movs r2, #0x80
	lsls r2, r2, #5
	asrs r0, r2, #8
	asrs r1, r1, #8
	bl sub_0801B8F8
	bl sub_0801B774
	cmp r0, #1
	bne _0801BCDA
	movs r0, #1
	b _0801BCE8
_0801BCDA:
	cmp r5, #8
	bhi _0801BCE6
	ldr r0, [sp]
	adds r0, r0, r6
	str r0, [sp]
	b _0801BB70
_0801BCE6:
	movs r0, #0
_0801BCE8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0801BCF8
sub_0801BCF8: @ 0x0801BCF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x1c]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7, #4]
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0
	beq _0801BD1C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_0803D358
_0801BD1C:
	add r2, sp, #4
	movs r0, #0
	strh r0, [r2]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r5, [r7]
	ldr r0, [r5]
	cmp r0, #0
	beq _0801BD3C
	ldrh r0, [r0, #2]
	strh r0, [r2]
	ldr r1, _0801BD70 @ =0x050001FE
	ldrh r0, [r2]
	strh r0, [r1]
_0801BD3C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0801BD96
	movs r1, #0xc0
	lsls r1, r1, #0x13
	mov r8, r1
	bl sub_0803D358
	movs r4, #0
	mov r2, sp
	movs r3, #0xff
	ldr r5, _0801BD74 @ =0x000095FF
_0801BD54:
	mov r0, r8
	adds r1, r0, r4
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801BD78
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801BD8C
	orrs r0, r3
	strb r0, [r2]
	b _0801BD88
	.align 2, 0
_0801BD70: .4byte 0x050001FE
_0801BD74: .4byte 0x000095FF
_0801BD78:
	subs r1, #1
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0801BD8C
	orrs r0, r3
	strb r0, [r2, #1]
_0801BD88:
	ldrh r0, [r2]
	strh r0, [r1]
_0801BD8C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bls _0801BD54
_0801BD96:
	ldr r0, [r7, #0x1c]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7, #4]
	adds r5, r0, r1
	movs r6, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0801BE04
	ldr r1, _0801BE9C @ =0x06004000
	mov r8, r1
	bl sub_0803D358
	movs r5, #0
	mov r6, sp
_0801BDB6:
	movs r4, #0
	lsls r0, r5, #6
	mov r2, r8
	adds r1, r2, r0
	ldrh r0, [r1]
	strh r0, [r6]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0801BDEE
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _0801BDEE
	adds r3, r1, #0
	mov r2, sp
_0801BDD2:
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x3f
	bhi _0801BDFC
	adds r1, r3, r4
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0801BDEE
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0801BDD2
_0801BDEE:
	cmp r4, #0x3f
	bhi _0801BDFC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xff
	bls _0801BDB6
_0801BDFC:
	cmp r5, #0xff
	bls _0801BE02
	movs r5, #0
_0801BE02:
	adds r6, r5, #0
_0801BE04:
	ldr r5, [r7]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0801BE30
	ldr r0, _0801BEA0 @ =0x0600F000
	mov r8, r0
	movs r4, #0
_0801BE12:
	lsls r0, r4, #6
	add r0, r8
	lsls r2, r4, #4
	subs r2, r2, r4
	lsls r2, r2, #2
	ldr r1, [r5, #8]
	adds r1, r1, r2
	movs r2, #0x3c
	bl sub_080002EC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x13
	bls _0801BE12
_0801BE30:
	ldr r1, [r7, #0x1c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r7, #4]
	adds r5, r1, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0801BED2
	ldr r1, _0801BEA4 @ =0x0600F800
	mov r8, r1
	movs r1, #0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r0, #8
	orrs r4, r0
_0801BE50:
	movs r3, #0
	lsls r2, r1, #5
_0801BE54:
	adds r0, r2, r3
	add r0, r8
	strh r4, [r0]
	adds r0, r3, #2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1f
	bls _0801BE54
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x1f
	bls _0801BE50
	ldr r2, _0801BEA4 @ =0x0600F800
	mov r8, r2
	movs r4, #0
	movs r1, #0
	mov r2, sp
_0801BE78:
	movs r3, #0
	lsls r6, r1, #5
	adds r7, r1, #1
_0801BE7E:
	mov r1, r8
	adds r0, r1, r3
	adds r1, r0, r6
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801BEA8
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r0, [r5, #8]
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r2]
	b _0801BEB6
	.align 2, 0
_0801BE9C: .4byte 0x06004000
_0801BEA0: .4byte 0x0600F000
_0801BEA4: .4byte 0x0600F800
_0801BEA8:
	subs r1, #1
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r0, [r5, #8]
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r2, #1]
_0801BEB6:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x13
	bls _0801BE7E
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _0801BE78
_0801BED2:
	ldr r1, _0801BF00 @ =0x04000008
	ldr r2, _0801BF04 @ =0x00001E82
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0801BF08 @ =0x00005F85
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	bl sub_0801B934
	movs r0, #0xc8
	rsbs r0, r0, #0
	movs r1, #0
	bl sub_0801B94C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BF00: .4byte 0x04000008
_0801BF04: .4byte 0x00001E82
_0801BF08: .4byte 0x00005F85

	thumb_func_start sub_0801BF0C
sub_0801BF0C: @ 0x0801BF0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0801BF24
	lsls r1, r6, #5
	ldr r2, _0801BF6C @ =0x05000200
	adds r1, r1, r2
	bl sub_0803D358
_0801BF24:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0801BF36
	ldr r1, [r5]
	lsls r1, r1, #5
	ldr r3, _0801BF70 @ =0x06010000
	adds r1, r1, r3
	bl sub_0803D358
_0801BF36:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [r5]
	cmp r0, #0
	blt _0801BF60
	adds r1, r0, #0
	lsls r1, r1, #3
	movs r0, #0xe0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r0, r3, #0
	strh r0, [r1, #2]
	lsls r0, r6, #0xc
	orrs r0, r2
	strh r0, [r1, #4]
_0801BF60:
	adds r0, r2, #0
	adds r0, #0x40
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801BF6C: .4byte 0x05000200
_0801BF70: .4byte 0x06010000

	thumb_func_start sub_0801BF74
sub_0801BF74: @ 0x0801BF74
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, [r7, #0xc]
	ldrh r6, [r7, #0x10]
	movs r5, #0
	cmp r5, r6
	bhs _0801BF9C
	adds r4, r0, #0
_0801BF8A:
	adds r0, r4, #0
	movs r1, #0
	mov r2, sp
	bl sub_0801BF0C
	adds r4, #0xc
	adds r5, #1
	cmp r5, r6
	blo _0801BF8A
_0801BF9C:
	adds r0, r7, #0
	movs r1, #0xf0
	movs r2, #0x60
	bl sub_0801BA14
	ldr r0, [r7, #0x14]
	ldrh r6, [r7, #0x18]
	movs r5, #0
	cmp r5, r6
	bhs _0801BFC4
	adds r4, r0, #0
_0801BFB2:
	adds r0, r4, #0
	movs r1, #1
	mov r2, sp
	bl sub_0801BF0C
	adds r4, #0xc
	adds r5, #1
	cmp r5, r6
	blo _0801BFB2
_0801BFC4:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x60
	bl sub_0801BA4C
	adds r0, r7, #0
	movs r1, #0
	bl sub_0801BAF8
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801BFE0
sub_0801BFE0: @ 0x0801BFE0
	push {lr}
	ldr r1, _0801C004 @ =0x04000048
	ldr r2, _0801C008 @ =0x00003F3F
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	subs r2, #0xf
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	movs r2, #0xf0
	movs r3, #0xa0
	bl sub_0801B87C
	pop {r0}
	bx r0
	.align 2, 0
_0801C004: .4byte 0x04000048
_0801C008: .4byte 0x00003F3F

	thumb_func_start sub_0801C00C
sub_0801C00C: @ 0x0801C00C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	movs r0, #0xa0
	lsls r0, r0, #0x13
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000498
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl sub_08000498
	movs r4, #0xe0
	lsls r4, r4, #0x13
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000498
	movs r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
_0801C04C:
	strh r1, [r4]
	adds r4, #8
	adds r0, #1
	cmp r0, #0x7f
	bls _0801C04C
	str r7, [r6, #0x1c]
	cmp r7, #0x25
	bls _0801C060
	movs r0, #0
	str r0, [r6, #0x1c]
_0801C060:
	mov r0, r8
	str r0, [r6, #0x20]
	cmp r0, #1
	bls _0801C06C
	movs r0, #0
	str r0, [r6, #0x20]
_0801C06C:
	ldr r0, _0801C0AC @ =gUnknown_087BAF68
	str r0, [r6]
	ldr r0, _0801C0B0 @ =gUnknown_087BAF74
	str r0, [r6, #4]
	movs r0, #0x25
	strh r0, [r6, #8]
	ldr r0, _0801C0B4 @ =gUnknown_087BB130
	str r0, [r6, #0xc]
	movs r1, #4
	strh r1, [r6, #0x10]
	ldr r0, _0801C0B8 @ =gUnknown_087BB160
	str r0, [r6, #0x14]
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	bl sub_0801BCF8
	adds r0, r6, #0
	bl sub_0801BF74
	adds r0, r6, #0
	bl sub_0801BFE0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _0801C0BC @ =0x00003541
	adds r0, r2, #0
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C0AC: .4byte gUnknown_087BAF68
_0801C0B0: .4byte gUnknown_087BAF74
_0801C0B4: .4byte gUnknown_087BB130
_0801C0B8: .4byte gUnknown_087BB160
_0801C0BC: .4byte 0x00003541

	thumb_func_start sub_0801C0C0
sub_0801C0C0: @ 0x0801C0C0
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08000B84
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801C00C
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_0801B7C4
	mov r0, sp
	bl sub_0801BB3C
	movs r0, #0
	movs r1, #1
	movs r2, #0x10
	movs r3, #0
	bl sub_0801B7C4
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801C10C @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	add sp, #0x24
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801C10C: .4byte 0x000080FF

	thumb_func_start sub_0801C110
sub_0801C110: @ 0x0801C110
	push {lr}
	sub sp, #4
	adds r3, r0, #0
	movs r2, #0
_0801C118:
	mov r1, sp
	adds r0, r1, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #3
	bls _0801C118
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x10
	mov r1, sp
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	orrs r0, r1
	mov r1, sp
	ldrb r1, [r1, #1]
	orrs r0, r1
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801C144
sub_0801C144: @ 0x0801C144
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r0]
	cmp r1, #0
	beq _0801C152
	cmp r4, #0
	bne _0801C156
_0801C152:
	movs r0, #0
	b _0801C190
_0801C156:
	ldrh r3, [r0, #4]
	cmp r3, #1
	bne _0801C166
	ldrh r2, [r0, #6]
	adds r0, r4, #0
	bl sub_080002EC
	b _0801C18E
_0801C166:
	cmp r3, #2
	bne _0801C174
	ldrh r2, [r0, #6]
	adds r0, r4, #0
	bl sub_080002C4
	b _0801C18E
_0801C174:
	cmp r3, #0
	bne _0801C18E
	cmp r2, #0
	bne _0801C186
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_0803D358
	b _0801C18E
_0801C186:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_0803D35C
_0801C18E:
	movs r0, #1
_0801C190:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801C198
sub_0801C198: @ 0x0801C198
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _0801C20C @ =0xFFFFFDF8
	add sp, r4
	adds r6, r0, #0
	adds r7, r1, #0
	mov sb, r2
	adds r4, r3, #0
	movs r1, #0
	movs r3, #0
	ldr r2, _0801C210 @ =0x000001FF
_0801C1B2:
	mov r5, sp
	adds r0, r5, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _0801C1B2
	ldr r0, [r6, #8]
	mov r1, sp
	movs r2, #1
	bl sub_0801C144
	cmp r0, #0
	beq _0801C1DA
	adds r0, r4, #0
	mov r1, sp
	ldr r2, [sp, #0x224]
	bl sub_080002EC
_0801C1DA:
	ldr r0, [r6]
	adds r1, r7, #0
	movs r2, #0
	bl sub_0801C144
	cmp r0, #0
	beq _0801C258
	movs r0, #0xa0
	lsls r0, r0, #0x13
	cmp r4, r0
	bls _0801C258
	lsls r0, r4, #0xf
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, [r6]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0801C214
	ldr r0, [r1]
	bl sub_0801C110
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _0801C216
	.align 2, 0
_0801C20C: .4byte 0xFFFFFDF8
_0801C210: .4byte 0x000001FF
_0801C214:
	ldrh r5, [r1, #6]
_0801C216:
	movs r1, #0
	cmp r1, r5
	bhs _0801C258
	add r4, sp, #0x200
_0801C21E:
	adds r2, r7, r1
	movs r3, #0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0801C230
	ldrh r0, [r2]
	strh r0, [r4]
	b _0801C238
_0801C230:
	subs r2, #1
	ldrh r0, [r2]
	strh r0, [r4]
	movs r3, #1
_0801C238:
	ldr r0, [sp, #0x228]
	cmp r0, #0x80
	bne _0801C24A
	adds r3, r4, r3
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801C24A
	add r0, r8
	strb r0, [r3]
_0801C24A:
	ldrh r0, [r4]
	strh r0, [r2]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r5
	blo _0801C21E
_0801C258:
	ldr r0, [r6, #4]
	mov r1, sb
	movs r2, #0
	bl sub_0801C144
	movs r3, #0x82
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801C274
sub_0801C274: @ 0x0801C274
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r6, _0801C2BC @ =gUnknown_087BB898
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	movs r4, #0xe0
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0801C198
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r6, #4
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x18]
	movs r4, #0xc0
	str r4, [sp]
	movs r4, #0x80
	str r4, [sp, #4]
	bl sub_0801C198
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C2BC: .4byte gUnknown_087BB898

	thumb_func_start sub_0801C2C0
sub_0801C2C0: @ 0x0801C2C0
	push {r4, lr}
	adds r4, r0, #0
	cmp r2, #0
	bne _0801C2D4
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080002EC
	b _0801C2EA
_0801C2D4:
	cmp r2, #1
	bne _0801C2E0
	adds r0, r4, #0
	bl sub_0803D358
	b _0801C2EA
_0801C2E0:
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080002C4
_0801C2EA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801C2F0
sub_0801C2F0: @ 0x0801C2F0
	push {lr}
	sub sp, #4
	adds r3, r0, #0
	movs r2, #0
_0801C2F8:
	mov r1, sp
	adds r0, r1, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #3
	bls _0801C2F8
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x10
	mov r1, sp
	ldrb r1, [r1, #2]
	lsls r1, r1, #8
	orrs r0, r1
	mov r1, sp
	ldrb r1, [r1, #1]
	orrs r0, r1
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801C324
sub_0801C324: @ 0x0801C324
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r1, sp
	ldrh r0, [r5]
	strh r0, [r1]
	mov r0, sp
	ldrh r1, [r0]
	movs r4, #0x1f
	ands r4, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r2, r0, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r0, r1
	lsrs r3, r0, #0xa
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #0xa
	adds r1, #0x59
	muls r2, r1, r2
	subs r1, #0x59
	adds r2, r2, r1
	asrs r2, r2, #0xa
	movs r1, #0x75
	muls r1, r3, r1
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	asrs r1, r1, #0xa
	adds r0, r0, r2
	adds r0, r0, r1
	asrs r1, r0, #2
	asrs r2, r0, #3
	adds r1, r1, r2
	subs r0, r0, r1
	adds r4, r0, #1
	adds r2, r0, #0
	subs r3, r2, #3
	cmp r4, #0
	bge _0801C388
	movs r4, #0
_0801C388:
	cmp r4, #0x1f
	ble _0801C38E
	movs r4, #0x1f
_0801C38E:
	cmp r2, #0
	bge _0801C394
	movs r2, #0
_0801C394:
	cmp r2, #0x1f
	ble _0801C39A
	movs r2, #0x1f
_0801C39A:
	cmp r3, #0
	bge _0801C3A0
	movs r3, #0
_0801C3A0:
	cmp r3, #0x1f
	ble _0801C3A6
	movs r3, #0x1f
_0801C3A6:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x13
	orrs r1, r0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0xe
	orrs r1, r0
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C3C8
sub_0801C3C8: @ 0x0801C3C8
	push {lr}
	ldr r0, _0801C3DC @ =gUnknown_02000020
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801C3E0
	movs r0, #0
	b _0801C3E2
	.align 2, 0
_0801C3DC: .4byte gUnknown_02000020
_0801C3E0:
	movs r0, #1
_0801C3E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801C3E8
sub_0801C3E8: @ 0x0801C3E8
	ldr r3, _0801C3F8 @ =0x04000052
	lsls r1, r1, #8
	orrs r1, r0
	strh r1, [r3]
	ldr r0, _0801C3FC @ =0x04000054
	strh r2, [r0]
	bx lr
	.align 2, 0
_0801C3F8: .4byte 0x04000052
_0801C3FC: .4byte 0x04000054

	thumb_func_start sub_0801C400
sub_0801C400: @ 0x0801C400
	push {lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _0801C40E
	ldr r0, _0801C428 @ =0x04000052
	ldrh r0, [r0]
	str r0, [r3]
_0801C40E:
	cmp r1, #0
	beq _0801C41A
	ldr r0, _0801C428 @ =0x04000052
	ldrh r0, [r0]
	lsrs r0, r0, #8
	str r0, [r1]
_0801C41A:
	cmp r2, #0
	beq _0801C424
	ldr r0, _0801C42C @ =0x04000054
	ldrh r0, [r0]
	str r0, [r2]
_0801C424:
	pop {r0}
	bx r0
	.align 2, 0
_0801C428: .4byte 0x04000052
_0801C42C: .4byte 0x04000054

	thumb_func_start sub_0801C430
sub_0801C430: @ 0x0801C430
	ldr r3, _0801C43C @ =0x04000050
	orrs r0, r1
	orrs r0, r2
	strh r0, [r3]
	bx lr
	.align 2, 0
_0801C43C: .4byte 0x04000050

	thumb_func_start sub_0801C440
sub_0801C440: @ 0x0801C440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x20]
	mov sl, r0
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	cmp r0, #0
	blt _0801C4AE
	adds r1, r0, #0
	ldrh r0, [r7]
	ldr r5, [r6, #0x14]
	ldr r4, [r6, #0x18]
	subs r4, r4, r5
	lsls r0, r0, #8
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	mov r1, r8
	strb r0, [r1]
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldrh r0, [r7]
	ldr r5, [r6, #0x1c]
	ldr r4, [r6, #0x20]
	subs r4, r4, r5
	lsls r0, r0, #8
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	mov r1, sb
	strb r0, [r1]
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldrh r0, [r7]
	ldr r5, [r6, #0x24]
	ldr r4, [r6, #0x28]
	subs r4, r4, r5
	lsls r0, r0, #8
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	b _0801C4BC
_0801C4AE:
	ldr r0, [r6, #0x18]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r6, #0x20]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r6, #0x28]
_0801C4BC:
	mov r1, sl
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C4D0
sub_0801C4D0: @ 0x0801C4D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r1, #0
	beq _0801C4E6
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl sub_0801C430
_0801C4E6:
	adds r0, r5, #0
	adds r1, r6, #0
	ldr r2, [sp, #0x10]
	bl sub_0801C3E8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C4F8
sub_0801C4F8: @ 0x0801C4F8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r4, _0801C51C @ =0x04000040
	lsrs r0, r0, #0x10
	orrs r0, r2
	strh r0, [r4]
	ldr r0, _0801C520 @ =0x04000044
	lsrs r1, r1, #0x10
	orrs r1, r3
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C51C: .4byte 0x04000040
_0801C520: .4byte 0x04000044

	thumb_func_start sub_0801C524
sub_0801C524: @ 0x0801C524
	push {lr}
	sub sp, #4
	adds r2, r1, #0
	cmp r0, #0
	bne _0801C536
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #1
	b _0801C548
_0801C536:
	cmp r0, #1
	bne _0801C542
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #3
	b _0801C548
_0801C542:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #2
_0801C548:
	adds r0, r3, #0
	strh r0, [r1]
	cmp r2, #1
	bne _0801C55E
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r1, sp
	ldrh r0, [r2]
	ldrh r1, [r1]
	orrs r0, r1
	b _0801C56A
_0801C55E:
	movs r2, #0x80
	lsls r2, r2, #0x13
	mov r0, sp
	ldrh r1, [r0]
	ldrh r0, [r2]
	bics r0, r1
_0801C56A:
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C574
sub_0801C574: @ 0x0801C574
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r1, #0
	adds r6, r2, #0
	cmp r0, #0
	beq _0801C58A
	cmp r0, #1
	bne _0801C58A
	movs r1, #0x14
	movs r4, #0x10
	b _0801C58E
_0801C58A:
	movs r1, #0x1e
	movs r4, #0x14
_0801C58E:
	cmp r0, #0
	bne _0801C59C
	ldr r1, _0801C598 @ =0x04000010
	b _0801C61E
	.align 2, 0
_0801C598: .4byte 0x04000010
_0801C59C:
	cmp r0, #1
	bne _0801C61C
	lsls r0, r1, #3
	movs r1, #2
	bl sub_0803D34C
	lsls r0, r0, #8
	str r0, [sp]
	lsls r0, r4, #3
	movs r1, #2
	bl sub_0803D34C
	lsls r0, r0, #8
	str r0, [sp, #4]
	mov r1, sp
	adds r0, r5, #0
	adds r0, #0x78
	movs r2, #0
	strh r0, [r1, #8]
	adds r0, r6, #0
	adds r0, #0x50
	strh r0, [r1, #0xa]
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	add r4, sp, #0x14
	adds r1, r4, #0
	movs r2, #1
	bl sub_0803D344
	ldr r1, _0801C614 @ =0x04000020
	ldrh r0, [r4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #6]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #8]
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801C618 @ =0x0FFF0000
	ands r0, r2
	asrs r0, r0, #0x10
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0xc]
	strh r0, [r1]
	adds r1, #2
	ands r0, r2
	asrs r0, r0, #0x10
	b _0801C626
	.align 2, 0
_0801C614: .4byte 0x04000020
_0801C618: .4byte 0x0FFF0000
_0801C61C:
	ldr r1, _0801C630 @ =0x04000014
_0801C61E:
	rsbs r0, r5, #0
	strh r0, [r1]
	adds r1, #2
	rsbs r0, r6, #0
_0801C626:
	strh r0, [r1]
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C630: .4byte 0x04000014

	thumb_func_start sub_0801C634
sub_0801C634: @ 0x0801C634
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0801C64C
	b _0801C90C
_0801C64C:
	mov r2, r8
	ldr r3, [r2, #0x10]
	cmp r3, #0
	bne _0801C656
	b _0801C90C
_0801C656:
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bne _0801C666
	movs r7, #0
	movs r0, #0x1e
	str r0, [sp, #8]
	b _0801C678
_0801C666:
	cmp r0, #1
	bne _0801C672
	movs r7, #1
	movs r1, #0x1f
	str r1, [sp, #8]
	b _0801C678
_0801C672:
	movs r7, #1
	movs r2, #0x1f
	str r2, [sp, #8]
_0801C678:
	mov r5, r8
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0801C690
	cmp r0, #1
	bne _0801C690
	movs r0, #0x14
	str r0, [sp, #0xc]
	movs r1, #0x10
	str r1, [sp, #0x10]
	b _0801C698
_0801C690:
	movs r2, #0x1e
	str r2, [sp, #0xc]
	movs r5, #0x14
	str r5, [sp, #0x10]
_0801C698:
	mov r0, r8
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _0801C738
	ldrh r0, [r0, #6]
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov sb, r0
	mov r1, r8
	movs r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801C6BA
	cmp r0, #2
	bne _0801C6CA
_0801C6BA:
	mov r5, r8
	ldrh r3, [r5, #0xc]
	adds r0, r2, #0
	mov r1, sb
	movs r2, #0
	bl sub_0801C2C0
	b _0801C6D6
_0801C6CA:
	adds r0, r2, #0
	mov r1, sb
	movs r2, #1
	movs r3, #0
	bl sub_0801C2C0
_0801C6D6:
	mov r1, r8
	ldrb r0, [r1, #0x18]
	add r5, sp, #4
	cmp r0, #0
	beq _0801C728
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0801C6EC
	cmp r0, #2
	bne _0801C6F4
_0801C6EC:
	mov r3, r8
	ldrh r0, [r3, #0xc]
	lsrs r6, r0, #1
	b _0801C700
_0801C6F4:
	mov r5, r8
	ldr r0, [r5, #8]
	bl sub_0801C2F0
	lsls r0, r0, #0xf
	lsrs r6, r0, #0x10
_0801C700:
	mov r0, r8
	ldrh r4, [r0, #6]
	adds r0, r4, r6
	add r5, sp, #4
	cmp r4, r0
	bge _0801C728
_0801C70C:
	lsls r0, r4, #1
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	bl sub_0801C324
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r2, r8
	ldrh r0, [r2, #6]
	adds r0, r0, r6
	cmp r4, r0
	blt _0801C70C
_0801C728:
	movs r0, #0
	strh r0, [r5]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldrh r0, [r5]
	strh r0, [r1]
	mov r5, r8
	ldr r3, [r5, #0x10]
_0801C738:
	lsls r0, r7, #0xe
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov sb, r0
	adds r0, r3, #0
	mov r1, sb
	movs r2, #1
	movs r3, #0
	bl sub_0801C2C0
	mov r1, r8
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0801C7AA
	ldr r0, [r1, #0x10]
	bl sub_0801C2F0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0
	cmp r4, r6
	bhs _0801C7AA
	mov r3, sp
_0801C768:
	mov r2, sb
	adds r1, r2, r4
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801C788
	ldrh r0, [r1]
	strh r0, [r3]
	ldrb r2, [r3]
	cmp r2, #0
	beq _0801C7A0
	mov r5, r8
	ldrb r0, [r5, #6]
	adds r0, r2, r0
	strb r0, [r3]
	b _0801C79C
_0801C788:
	subs r1, #1
	ldrh r0, [r1]
	strh r0, [r3]
	ldrb r2, [r3, #1]
	cmp r2, #0
	beq _0801C7A0
	mov r5, r8
	ldrb r0, [r5, #6]
	adds r0, r2, r0
	strb r0, [r3, #1]
_0801C79C:
	ldrh r0, [r3]
	strh r0, [r1]
_0801C7A0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0801C768
_0801C7AA:
	movs r2, #0
	mov r1, r8
	movs r3, #4
	ldrsh r0, [r1, r3]
	ldrh r1, [r1, #4]
	mov r5, sp
	strh r1, [r5, #0x14]
	mov r3, r8
	ldr r3, [r3, #0x14]
	mov sl, r3
	cmp r0, #1
	bne _0801C828
	movs r5, #0
	lsrs r1, r6, #6
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov ip, r1
	cmp r2, r0
	bhs _0801C824
	mov r6, sp
	adds r7, r0, #0
_0801C7D4:
	movs r4, #0
	lsls r0, r5, #6
	mov r2, sb
	adds r1, r2, r0
	ldrh r0, [r1]
	strh r0, [r6]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0801C80C
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _0801C80C
	adds r3, r1, #0
	mov r2, sp
_0801C7F0:
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x3f
	bhi _0801C81A
	adds r1, r3, r4
	ldrh r0, [r1]
	strh r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0801C80C
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0801C7F0
_0801C80C:
	cmp r4, #0x3f
	bhi _0801C81A
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _0801C7D4
_0801C81A:
	mov r3, ip
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r5, r0
	blo _0801C826
_0801C824:
	movs r5, #0
_0801C826:
	adds r2, r5, #0
_0801C828:
	mov r5, sl
	cmp r5, #0
	beq _0801C900
	ldr r1, [sp, #8]
	lsls r0, r1, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov sb, r0
	mov r3, sp
	ldrh r3, [r3, #0x14]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0801C84A
	cmp r0, #2
	bne _0801C878
_0801C84A:
	movs r4, #0
	ldr r5, [sp, #0x10]
	cmp r4, r5
	bhs _0801C900
	ldr r5, [sp, #0xc]
_0801C854:
	lsls r0, r4, #6
	add r0, sb
	adds r2, r4, #0
	muls r2, r5, r2
	lsls r2, r2, #1
	mov r3, r8
	ldr r1, [r3, #0x14]
	adds r1, r1, r2
	lsls r2, r5, #1
	bl sub_080002EC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [sp, #0x10]
	cmp r4, r0
	blo _0801C854
	b _0801C900
_0801C878:
	movs r6, #0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r0, #8
	orrs r3, r0
_0801C882:
	movs r2, #0
	adds r7, r6, #1
	lsls r1, r6, #5
_0801C888:
	adds r0, r1, r2
	add r0, sb
	strh r3, [r0]
	adds r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _0801C888
	lsls r0, r7, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1f
	bls _0801C882
	movs r4, #0
	movs r6, #0
	ldr r1, [sp, #0x10]
	cmp r6, r1
	bhs _0801C900
	ldr r2, [sp, #0xc]
	mov ip, r2
_0801C8AE:
	movs r2, #0
	adds r7, r6, #1
	cmp r2, ip
	bhs _0801C8F6
	mov r3, sp
	mov r5, sl
_0801C8BA:
	mov r0, sb
	adds r1, r0, r2
	lsls r0, r6, #5
	adds r1, r1, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801C8D6
	ldrh r0, [r1]
	strh r0, [r3]
	adds r0, r5, r4
	ldrb r0, [r0]
	strb r0, [r3]
	b _0801C8E2
_0801C8D6:
	subs r1, #1
	ldrh r0, [r1]
	strh r0, [r3]
	adds r0, r5, r4
	ldrb r0, [r0]
	strb r0, [r3, #1]
_0801C8E2:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, ip
	blo _0801C8BA
_0801C8F6:
	lsls r0, r7, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x10]
	cmp r6, r1
	blo _0801C8AE
_0801C900:
	mov r2, r8
	movs r3, #4
	ldrsh r0, [r2, r3]
	movs r1, #1
	bl sub_0801C524
_0801C90C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801C91C
sub_0801C91C: @ 0x0801C91C
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r4, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, [r1]
	subs r4, r4, r5
	lsls r0, r0, #8
	adds r1, r2, #0
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r0, r5
	strh r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801C940
sub_0801C940: @ 0x0801C940
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0801C998
	movs r4, #0
	movs r7, #0xff
	lsls r7, r7, #8
	mov ip, r7
	movs r0, #0xfe
	lsls r0, r0, #8
	mov r8, r0
_0801C960:
	movs r1, #8
	ldrsh r3, [r5, r1]
	adds r3, r3, r4
	lsls r3, r3, #3
	movs r7, #0xe0
	lsls r7, r7, #0x13
	adds r3, r3, r7
	ldrh r1, [r3]
	mov r0, ip
	ands r0, r1
	ldrb r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r3]
	lsls r2, r4, #5
	adds r2, r6, r2
	ldrh r0, [r3, #2]
	mov r1, r8
	ands r1, r0
	ldr r7, _0801C9A4 @ =0x000001FF
	adds r0, r7, #0
	ands r2, r0
	orrs r1, r2
	strh r1, [r3, #2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _0801C960
_0801C998:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C9A4: .4byte 0x000001FF

	thumb_func_start sub_0801C9A8
sub_0801C9A8: @ 0x0801C9A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0801CA0E
	movs r7, #0xa
	ldrsh r0, [r5, r7]
	cmp r0, #0
	blt _0801CA0E
	movs r4, #0
	mov r2, sp
	ldr r0, _0801C9F8 @ =0x0000FCFF
	mov ip, r0
	movs r1, #0xe0
	lsls r1, r1, #0x13
	mov r8, r1
_0801C9D2:
	movs r7, #8
	ldrsh r0, [r5, r7]
	adds r0, r0, r4
	lsls r0, r0, #3
	mov r1, r8
	adds r3, r0, r1
	ldrh r1, [r3]
	mov r0, ip
	ands r0, r1
	strh r0, [r2]
	cmp r6, #0
	bne _0801C9FC
	ldrh r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r7, #0
	orrs r0, r1
	b _0801C9FE
	.align 2, 0
_0801C9F8: .4byte 0x0000FCFF
_0801C9FC:
	ldrh r0, [r2]
_0801C9FE:
	strh r0, [r2]
	ldrh r0, [r2]
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _0801C9D2
_0801CA0E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CA1C
sub_0801CA1C: @ 0x0801CA1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	adds r6, r1, #0
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r0, #0
	blt _0801CAAC
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	cmp r0, #0
	blt _0801CAAC
	movs r7, #0
_0801CA3A:
	movs r0, #0xa
	ldrsh r4, [r6, r0]
	lsls r5, r7, #4
	adds r4, r4, r5
	lsls r4, r4, #5
	ldr r1, _0801CAB8 @ =0x06010000
	adds r4, r4, r1
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0
	bl sub_08000498
	mov r3, r8
	str r4, [r3, #0x10]
	lsls r0, r7, #3
	ldr r1, [r6, #4]
	adds r1, r1, r0
	mov r0, sp
	movs r2, #8
	bl sub_0803E1A0
	mov r1, sp
	movs r0, #0
	strb r0, [r1, #8]
	mov r0, r8
	movs r1, #0
	movs r2, #0
	mov r3, sp
	bl sub_08009E64
	movs r0, #8
	ldrsh r2, [r6, r0]
	adds r2, r2, r7
	lsls r2, r2, #3
	movs r1, #0xe0
	lsls r1, r1, #0x13
	adds r2, r2, r1
	ldr r3, _0801CABC @ =0x000060A0
	adds r0, r3, #0
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	strh r0, [r2, #2]
	ldrh r0, [r6, #0xa]
	adds r0, r0, r5
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #7
	bls _0801CA3A
_0801CAAC:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CAB8: .4byte 0x06010000
_0801CABC: .4byte 0x000060A0

	thumb_func_start sub_0801CAC0
sub_0801CAC0: @ 0x0801CAC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	mov r8, r1
	adds r7, r2, #0
	adds r6, r3, #0
	cmp r1, #0
	beq _0801CAE2
	ldr r5, _0801CB28 @ =0x05000200
	ldr r0, [r4, #0x38]
	ldrh r3, [r4, #0x3c]
	adds r1, r5, #0
	movs r2, #0
	bl sub_0801C2C0
_0801CAE2:
	movs r1, #0
	cmp r6, #0
	bne _0801CAEA
	movs r1, #1
_0801CAEA:
	lsls r1, r1, #0xb
	ldr r0, _0801CB2C @ =0x06010000
	adds r5, r1, r0
	ldr r0, [r4, #0x40]
	adds r4, #0x44
	ldrh r3, [r4]
	adds r1, r5, #0
	movs r2, #2
	bl sub_0801C2C0
	movs r3, #0
	ldrh r0, [r4]
	cmp r3, r0
	bhs _0801CB58
	mov r1, sp
_0801CB08:
	movs r2, #1
	ands r2, r5
	cmp r2, #0
	bne _0801CB30
	ldrh r0, [r5]
	strh r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801CB4A
	cmp r0, r7
	bls _0801CB4A
	strb r2, [r1]
	ldrh r0, [r1]
	strh r0, [r5]
	b _0801CB4A
	.align 2, 0
_0801CB28: .4byte 0x05000200
_0801CB2C: .4byte 0x06010000
_0801CB30:
	subs r2, r5, #1
	ldrh r0, [r2]
	strh r0, [r1]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0801CB4A
	ldrb r0, [r1, #1]
	cmp r0, r7
	bls _0801CB4A
	movs r0, #0
	strb r0, [r1, #1]
	ldrh r0, [r1]
	strh r0, [r2]
_0801CB4A:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, #1
	ldrh r0, [r4]
	cmp r3, r0
	blo _0801CB08
_0801CB58:
	mov r0, r8
	cmp r0, #0
	beq _0801CB8A
	movs r3, #0
	movs r6, #0xe0
	lsls r6, r6, #0x13
	ldr r0, _0801CB98 @ =0x00006270
	adds r5, r0, #0
	ldr r0, _0801CB9C @ =0x0000C088
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r2, r0, #0
_0801CB72:
	lsls r0, r3, #3
	adds r0, r0, r6
	strh r5, [r0]
	strh r4, [r0, #2]
	lsls r1, r3, #6
	orrs r1, r2
	strh r1, [r0, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #1
	bls _0801CB72
_0801CB8A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CB98: .4byte 0x00006270
_0801CB9C: .4byte 0x0000C088

	thumb_func_start sub_0801CBA0
sub_0801CBA0: @ 0x0801CBA0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov ip, r1
	ldr r0, [r1]
	movs r6, #0
	cmp r0, #0
	bne _0801CBB0
	movs r6, #1
_0801CBB0:
	lsls r0, r0, #3
	movs r4, #0xe0
	lsls r4, r4, #0x13
	adds r5, r0, r4
	mov r3, sp
	ldrh r1, [r5]
	ldr r2, _0801CBFC @ =0x0000FCFF
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r5]
	lsls r0, r6, #3
	adds r5, r0, r4
	mov r1, sp
	ldrh r0, [r5]
	ands r2, r0
	strh r2, [r1]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r5]
	mov r0, ip
	str r6, [r0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CBFC: .4byte 0x0000FCFF

	thumb_func_start sub_0801CC00
sub_0801CC00: @ 0x0801CC00
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r7, [sp, #0x14]
	ldr r4, [r3]
	cmp r4, #2
	beq _0801CC58
	cmp r4, #0
	bne _0801CC2A
	adds r0, #0x6a
	ldrh r1, [r0]
	ldr r0, _0801CC60 @ =0x0000207A
	cmp r1, r0
	bls _0801CC2A
	str r4, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r2]
	movs r0, #1
	str r0, [r3]
	str r4, [r7]
_0801CC2A:
	ldr r0, [r3]
	cmp r0, #1
	bne _0801CC58
	ldrh r4, [r5, #0x3c]
	lsrs r4, r4, #1
	ldr r0, [r6]
	lsls r0, r0, #8
	movs r1, #0xb4
	lsls r1, r1, #8
	bl sub_0803D7D4
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r5, #0x3e]
	ldr r0, [r6]
	cmp r0, #0
	beq _0801CC58
	ldrh r2, [r5, #0x3e]
	ldr r3, [r7]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801CAC0
_0801CC58:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CC60: .4byte 0x0000207A

	thumb_func_start sub_0801CC64
sub_0801CC64: @ 0x0801CC64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x18]
	ldr r0, [r3]
	cmp r0, #1
	bne _0801CCBA
	ldr r0, [r5]
	cmp r0, #0
	bne _0801CC8C
	ldrh r2, [r4, #0x3e]
	ldr r3, [r7]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801CAC0
_0801CC8C:
	ldr r0, [r5]
	ldr r1, [r6]
	adds r0, r0, r1
	str r0, [r5]
	movs r6, #0xb4
	lsls r6, r6, #8
	cmp r0, r6
	bls _0801CCB2
	ldrh r2, [r4, #0x3c]
	lsrs r2, r2, #1
	ldr r3, [r7]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801CAC0
	str r6, [r5]
	movs r0, #2
	mov r1, r8
	str r0, [r1]
_0801CCB2:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_0801CBA0
_0801CCBA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801CCC4
sub_0801CCC4: @ 0x0801CCC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r3]
	cmp r1, #2
	bne _0801CCDE
	b _0801CEDA
_0801CCDE:
	ldr r7, [r0, #0x34]
	cmp r1, #0
	beq _0801CCE6
	b _0801CE1A
_0801CCE6:
	adds r0, #0x6a
	ldrh r1, [r0]
	ldr r0, [r7]
	cmp r1, r0
	bge _0801CCF2
	b _0801CE1A
_0801CCF2:
	ldrh r0, [r7, #0xc]
	mov sb, r0
	ldrh r1, [r7, #0xe]
	cmp sb, r1
	bls _0801CCFE
	b _0801CE06
_0801CCFE:
	mov r8, sp
	movs r2, #0x1f
	mov ip, r2
	ldr r3, _0801CEB0 @ =0xFFFFF8E4
	mov sl, r3
_0801CD08:
	mov r5, sb
	lsls r1, r5, #1
	ldr r0, [r7, #8]
	adds r1, r1, r0
	lsls r6, r5, #2
	ldr r5, [r7, #0x10]
	adds r5, r6, r5
	ldr r2, [r7, #0x1c]
	adds r2, r6, r2
	ldr r4, [r7, #0x28]
	adds r4, r6, r4
	ldrh r0, [r1]
	mov r1, r8
	strh r0, [r1]
	ldrh r1, [r1]
	mov r0, ip
	ands r0, r1
	str r0, [r5]
	mov r3, r8
	ldrh r1, [r3]
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #5
	str r0, [r2]
	ldrh r0, [r3]
	movs r3, #0xf8
	lsls r3, r3, #7
	ands r3, r0
	lsrs r3, r3, #0xa
	str r3, [r4]
	ldr r0, [r5]
	ldr r1, [r2]
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r0, r2, #4
	adds r2, r2, r0
	lsls r2, r2, #1
	movs r5, #0x80
	lsls r5, r5, #2
	adds r2, r2, r5
	asrs r2, r2, #0xa
	ldr r0, _0801CEB4 @ =0x00000259
	muls r1, r0, r1
	adds r1, r1, r5
	asrs r1, r1, #0xa
	movs r0, #0x75
	muls r0, r3, r0
	adds r0, r0, r5
	asrs r0, r0, #0xa
	adds r2, r2, r1
	adds r2, r2, r0
	asrs r0, r2, #2
	asrs r1, r2, #3
	adds r0, r0, r1
	subs r2, r2, r0
	ldr r0, [r7, #0x14]
	adds r3, r6, r0
	ldr r0, [r7, #0x20]
	adds r4, r6, r0
	ldr r0, [r7, #0x2c]
	adds r6, r6, r0
	adds r0, r2, #1
	str r0, [r3]
	mov r1, sl
	lsls r0, r1, #1
	add r0, sl
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #5
	movs r5, #0x80
	lsls r5, r5, #0xc
	adds r0, r0, r5
	asrs r0, r0, #0x14
	ldr r1, _0801CEB8 @ =0x000002DB
	ldr r5, _0801CEBC @ =0x000002DA
	muls r1, r5, r1
	movs r5, #0x80
	lsls r5, r5, #0xc
	adds r1, r1, r5
	asrs r1, r1, #0x14
	subs r0, r2, r0
	subs r0, r0, r1
	str r0, [r4]
	ldr r0, _0801CEC0 @ =0x00000717
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r5
	asrs r0, r0, #0x14
	adds r2, r2, r0
	str r2, [r6]
	ldr r0, [r3]
	cmp r0, #0
	bge _0801CDCA
	movs r2, #0
	str r2, [r3]
_0801CDCA:
	ldr r0, [r3]
	cmp r0, #0x1f
	ble _0801CDD4
	mov r5, ip
	str r5, [r3]
_0801CDD4:
	ldr r0, [r4]
	cmp r0, #0
	bge _0801CDDE
	movs r0, #0
	str r0, [r4]
_0801CDDE:
	ldr r0, [r4]
	cmp r0, #0x1f
	ble _0801CDE8
	mov r1, ip
	str r1, [r4]
_0801CDE8:
	ldr r0, [r6]
	cmp r0, #0
	bge _0801CDF2
	movs r2, #0
	str r2, [r6]
_0801CDF2:
	ldr r0, [r6]
	cmp r0, #0x1f
	ble _0801CDFC
	mov r3, ip
	str r3, [r6]
_0801CDFC:
	movs r5, #1
	add sb, r5
	ldrh r0, [r7, #0xe]
	cmp sb, r0
	bls _0801CD08
_0801CE06:
	movs r0, #0
	ldr r1, [sp, #4]
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #3
	ldr r2, [sp, #8]
	str r0, [r2]
	movs r0, #1
	ldr r3, [sp, #0xc]
	str r0, [r3]
_0801CE1A:
	ldr r5, [sp, #0xc]
	ldr r0, [r5]
	cmp r0, #1
	bne _0801CEDA
	ldrh r0, [r7, #0xc]
	mov sb, r0
	ldrh r1, [r7, #0xe]
	cmp sb, r1
	bhi _0801CEDA
_0801CE2C:
	ldr r2, [r7, #0x10]
	mov r8, r2
	mov r3, sb
	lsls r1, r3, #2
	add r8, r1
	ldr r6, [r7, #0x1c]
	adds r6, r1, r6
	ldr r5, [r7, #0x28]
	adds r5, r1, r5
	ldr r4, [r7, #0x14]
	adds r4, r1, r4
	ldr r3, [r7, #0x20]
	adds r3, r1, r3
	ldr r2, [r7, #0x2c]
	adds r2, r1, r2
	ldr r0, [r7, #0x18]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r7, #0x24]
	adds r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x30]
	adds r1, r1, r0
	str r1, [sp, #0x14]
	mov r0, r8
	ldr r0, [r0]
	mov r8, r0
	ldr r6, [r6]
	ldr r5, [r5]
	str r5, [sp, #0x18]
	ldr r4, [r4]
	ldr r5, [r3]
	ldr r2, [r2]
	ldr r1, [r7, #4]
	ldr r3, [sp, #4]
	ldr r0, [r3]
	cmp r1, #0
	ble _0801CEC4
	mov r3, r8
	subs r4, r4, r3
	lsls r0, r0, #8
	str r2, [sp, #0x1c]
	bl sub_0803D7D4
	adds r1, r4, #0
	muls r1, r0, r1
	asrs r1, r1, #8
	add r1, r8
	mov r3, sl
	str r1, [r3]
	subs r1, r5, r6
	muls r1, r0, r1
	asrs r1, r1, #8
	adds r1, r1, r6
	ldr r5, [sp, #0x10]
	str r1, [r5]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	subs r1, r2, r3
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r0, r0, r3
	ldr r5, [sp, #0x14]
	str r0, [r5]
	b _0801CED0
	.align 2, 0
_0801CEB0: .4byte 0xFFFFF8E4
_0801CEB4: .4byte 0x00000259
_0801CEB8: .4byte 0x000002DB
_0801CEBC: .4byte 0x000002DA
_0801CEC0: .4byte 0x00000717
_0801CEC4:
	mov r0, sl
	str r4, [r0]
	ldr r1, [sp, #0x10]
	str r5, [r1]
	ldr r3, [sp, #0x14]
	str r2, [r3]
_0801CED0:
	movs r5, #1
	add sb, r5
	ldrh r0, [r7, #0xe]
	cmp sb, r0
	bls _0801CE2C
_0801CEDA:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CEEC
sub_0801CEEC: @ 0x0801CEEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	mov r8, r1
	mov ip, r2
	mov sl, r3
	ldr r0, [r3]
	cmp r0, #1
	bne _0801CFB2
	ldr r6, [r4, #0x34]
	ldrh r5, [r6, #0xc]
	ldr r0, [r2]
	mov sb, r0
	ldrh r1, [r6, #0xe]
	cmp r5, r1
	bhi _0801CF46
	mov r7, sp
_0801CF16:
	ldr r1, [r6, #0x18]
	lsls r3, r5, #2
	adds r1, r3, r1
	ldr r2, [r6, #0x24]
	adds r2, r3, r2
	ldr r0, [r6, #0x30]
	adds r3, r3, r0
	lsls r4, r5, #1
	ldr r0, [r6, #8]
	adds r4, r4, r0
	ldrb r1, [r1]
	ldrb r0, [r2]
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r3]
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r7]
	ldrh r0, [r7]
	strh r0, [r4]
	adds r5, #1
	ldrh r0, [r6, #0xe]
	cmp r5, r0
	bls _0801CF16
_0801CF46:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
	str r0, [r1]
	mov r1, ip
	ldr r0, [r1]
	lsrs r1, r0, #5
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1]
	cmp r0, #0x1f
	bhi _0801CF62
	movs r0, #0x20
	str r0, [r1]
_0801CF62:
	mov r1, r8
	ldr r0, [r1]
	movs r1, #0xb4
	lsls r1, r1, #8
	cmp r0, r1
	bls _0801CFB2
	mov r0, r8
	str r1, [r0]
	ldrh r5, [r6, #0xc]
	ldrh r1, [r6, #0xe]
	cmp r5, r1
	bhi _0801CFAC
	mov r7, sp
_0801CF7C:
	ldr r1, [r6, #0x14]
	lsls r3, r5, #2
	adds r1, r3, r1
	ldr r2, [r6, #0x20]
	adds r2, r3, r2
	ldr r0, [r6, #0x2c]
	adds r3, r3, r0
	lsls r4, r5, #1
	ldr r0, [r6, #8]
	adds r4, r4, r0
	ldrb r1, [r1]
	ldrb r0, [r2]
	lsls r0, r0, #5
	orrs r1, r0
	ldrb r0, [r3]
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r7]
	ldrh r0, [r7]
	strh r0, [r4]
	adds r5, #1
	ldrh r0, [r6, #0xe]
	cmp r5, r0
	bls _0801CF7C
_0801CFAC:
	movs r0, #2
	mov r1, sl
	str r0, [r1]
_0801CFB2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CFC4
sub_0801CFC4: @ 0x0801CFC4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, [r7]
	cmp r0, #2
	beq _0801D028
	adds r0, r3, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	cmp r0, #0x1d
	bls _0801CFE0
	movs r0, #1
	str r0, [r7]
_0801CFE0:
	ldr r0, [r7]
	cmp r0, #1
	bne _0801D028
	ldr r0, [r6]
	lsls r0, r0, #8
	movs r1, #0x10
	bl sub_0803D7D4
	adds r4, r0, #0
	lsls r4, r4, #4
	asrs r4, r4, #8
	ldr r0, [r6]
	movs r5, #0x10
	rsbs r5, r5, #0
	lsls r0, r0, #8
	movs r1, #0x10
	bl sub_0803D7D4
	adds r3, r0, #0
	muls r3, r5, r3
	asrs r3, r3, #8
	adds r3, #0xa0
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0xf0
	bl sub_0801C4F8
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	cmp r0, #0x10
	bls _0801D028
	movs r0, #0x10
	str r0, [r6]
	movs r0, #2
	str r0, [r7]
_0801D028:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801D030
sub_0801D030: @ 0x0801D030
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r0, [r4]
	mov r8, r0
	movs r5, #0
	cmp r5, r7
	bhs _0801D08E
_0801D046:
	movs r0, #0x2c
	muls r0, r5, r0
	mov r1, r8
	adds r6, r0, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	blt _0801D088
	ldr r0, [r4, #4]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D088
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r1, r0
	blt _0801D088
	lsls r0, r5, #1
	ldr r1, [r4, #8]
	adds r1, r1, r0
	ldr r2, [r4, #0xc]
	adds r2, r2, r5
	ldr r3, [r4, #0x10]
	adds r3, r3, r5
	ldr r0, [r4, #0x14]
	adds r0, r0, r5
	str r0, [sp]
	adds r0, r6, #0
	bl sub_0801C440
_0801D088:
	adds r5, #1
	cmp r5, r7
	blo _0801D046
_0801D08E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801D09C
sub_0801D09C: @ 0x0801D09C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	mov sb, r1
	ldr r0, [r4]
	mov sl, r0
	movs r7, #0
	cmp r7, sb
	bhs _0801D146
_0801D0B6:
	movs r1, #0
	mov ip, r1
	movs r0, #0x2c
	muls r0, r7, r0
	mov r2, sl
	adds r5, r0, r2
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	blt _0801D140
	ldr r0, [r4, #4]
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D140
	ldr r0, [r4, #8]
	lsls r6, r7, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801D0E4
	movs r0, #1
	mov ip, r0
_0801D0E4:
	movs r1, #0x6a
	adds r1, r1, r4
	mov r8, r1
	ldrh r1, [r1]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _0801D11A
	ldr r0, [r4, #0xc]
	adds r0, r0, r7
	ldrb r2, [r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r7
	ldrb r3, [r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r7
	ldrb r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	mov r1, ip
	bl sub_0801C4D0
	ldr r1, [r4, #8]
	adds r1, r6, r1
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0801D11A:
	ldr r0, [r4, #8]
	adds r2, r6, r0
	ldrh r1, [r2]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	cmp r1, r0
	blt _0801D140
	ldrh r0, [r5, #0x10]
	strh r0, [r2]
	mov r0, r8
	ldrh r1, [r0]
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _0801D140
	ldr r0, [r4, #4]
	adds r0, r0, r7
	movs r1, #1
	strb r1, [r0]
_0801D140:
	adds r7, #1
	cmp r7, sb
	blo _0801D0B6
_0801D146:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801D158
sub_0801D158: @ 0x0801D158
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xa8
	adds r1, r0, #0
	mov r0, sp
	movs r2, #0x70
	bl sub_0803DEBC
	movs r0, #0x6a
	add r0, sp
	mov r8, r0
	movs r3, #0
	movs r5, #0
	strh r5, [r0]
	add r4, sp, #0x70
	strh r5, [r4]
	movs r6, #0x10
	strh r6, [r4, #2]
	movs r0, #0xc0
	str r0, [r4, #4]
	movs r0, #0x3f
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	strh r6, [r4, #0x10]
	str r5, [r4, #0x14]
	str r5, [r4, #0x18]
	str r5, [r4, #0x1c]
	str r5, [r4, #0x20]
	add r2, sp, #0x94
	movs r0, #0
	movs r1, #0
	str r3, [sp, #0xa4]
	bl sub_0801C400
	str r6, [r4, #0x28]
	str r4, [sp]
	add r1, sp, #0x9c
	str r1, [sp, #4]
	mov r0, sp
	adds r0, #0x9e
	str r0, [sp, #8]
	add r0, sp, #0xa0
	str r0, [sp, #0xc]
	adds r0, #1
	str r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x14]
	ldr r3, [sp, #0xa4]
	strb r3, [r1]
	ldr r0, [sp, #8]
	strh r5, [r0]
	ldr r0, [sp, #0xc]
	strb r3, [r0]
	ldr r0, [sp, #0x10]
	strb r3, [r0]
	ldr r0, [sp, #0x14]
	strb r3, [r0]
	mov r4, r8
	b _0801D1D6
_0801D1D0:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0801D1D6:
	mov r0, sp
	movs r1, #1
	bl sub_0801D030
	bl sub_08009BD0
	mov r0, sp
	movs r1, #1
	bl sub_0801D09C
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D1D0
	add sp, #0xa8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801D200
sub_0801D200: @ 0x0801D200
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	ldr r4, [r5, #0x18]
_0801D208:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0801D26E
	ldr r0, [r5, #0x1c]
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D236
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0801D236
	adds r0, r4, #0
	bl sub_0801C634
	ldr r0, [r5, #0x1c]
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0]
_0801D236:
	ldr r0, [r5, #0x1c]
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, #1
	bne _0801D26E
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0801D24E
	movs r0, #2
	strb r0, [r1]
	b _0801D26E
_0801D24E:
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r1, [r0]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0801D26E
	movs r1, #4
	ldrsh r0, [r4, r1]
	movs r1, #0
	bl sub_0801C524
	ldr r0, [r5, #0x1c]
	adds r0, r0, r6
	movs r1, #2
	strb r1, [r0]
_0801D26E:
	adds r4, #0x1c
	adds r6, #1
	cmp r6, #7
	bls _0801D208
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801D27C
sub_0801D27C: @ 0x0801D27C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	movs r7, #0
	movs r6, #0
	mov r8, r6
	ldr r5, [r4, #0x20]
_0801D28E:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0801D30A
	ldr r0, [r4, #0x24]
	adds r0, r0, r7
	ldrb r3, [r0]
	cmp r3, #0
	bne _0801D2D4
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _0801D2D4
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bne _0801D2CE
	ldr r1, [r4, #0x28]
	add r1, r8
	ldr r2, [r4, #0x30]
	adds r2, r2, r6
	str r3, [sp]
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r3, #0xf0
	bl sub_0801C91C
	b _0801D2D4
_0801D2CE:
	ldr r0, [r4, #0x30]
	adds r0, r6, r0
	strh r3, [r0]
_0801D2D4:
	ldr r0, [r4, #0x24]
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801D30A
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bne _0801D302
	ldr r1, [r4, #0x28]
	add r1, r8
	ldr r2, [r4, #0x30]
	adds r2, r2, r6
	movs r0, #0xf0
	rsbs r0, r0, #0
	str r0, [sp]
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0801C91C
	b _0801D30A
_0801D302:
	ldr r0, [r4, #0x30]
	adds r0, r6, r0
	movs r1, #0
	strh r1, [r0]
_0801D30A:
	adds r6, #2
	movs r0, #4
	add r8, r0
	adds r5, #0x10
	adds r7, #1
	cmp r7, #0x3f
	bls _0801D28E
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801D324
sub_0801D324: @ 0x0801D324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r1, #0
	mov sl, r1
	ldr r6, [r5, #0x20]
_0801D33C:
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0801D346
	b _0801D464
_0801D346:
	ldr r0, [r5, #0x24]
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D418
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r6, r3]
	mov sb, r0
	ldr r4, [r5, #0x28]
	cmp r2, r1
	blt _0801D3AE
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0801D374
	adds r0, r5, #0
	adds r0, #0x48
	adds r1, r6, #0
	bl sub_0801CA1C
_0801D374:
	ldr r0, [r5, #0x30]
	add r0, sl
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r6, #0
	bl sub_0801C940
	ldrb r0, [r6, #0xe]
	cmp r0, #1
	bne _0801D3A2
	ldr r4, [r5, #0x28]
	adds r3, r7, r4
	ldr r2, [r5, #0x2c]
	adds r2, r7, r2
	ldr r0, [r3]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2]
	lsrs r1, r0, #6
	adds r0, r0, r1
	str r0, [r2]
	b _0801D3AE
_0801D3A2:
	ldr r2, [r5, #0x28]
	adds r1, r7, r2
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r1]
	adds r4, r2, #0
_0801D3AE:
	adds r2, r7, r4
	ldr r1, [r2]
	ldr r0, _0801D3D0 @ =0x00003BFF
	cmp r1, r0
	bls _0801D418
	movs r3, #0xf0
	lsls r3, r3, #6
	str r3, [r2]
	movs r1, #2
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _0801D3D4
	ldr r0, [r5, #0x24]
	add r0, r8
	movs r1, #2
	strb r1, [r0]
	b _0801D418
	.align 2, 0
_0801D3D0: .4byte 0x00003BFF
_0801D3D4:
	mov r4, sb
	ldrh r1, [r4]
	movs r4, #2
	ldrsh r0, [r6, r4]
	cmp r1, r0
	blt _0801D418
	ldrb r1, [r6, #0xe]
	cmp r1, #1
	bne _0801D406
	ldr r0, [r5, #0x24]
	add r0, r8
	strb r1, [r0]
	ldr r0, [r5, #0x28]
	adds r0, r7, r0
	movs r2, #0
	str r2, [r0]
	ldr r0, [r5, #0x2c]
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #2
	str r1, [r0]
	ldr r0, [r5, #0x30]
	add r0, sl
	strh r2, [r0]
	b _0801D418
_0801D406:
	str r3, [r2]
	ldr r0, [r5, #0x24]
	add r0, r8
	movs r1, #2
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #0
	bl sub_0801C9A8
_0801D418:
	ldr r0, [r5, #0x24]
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801D464
	ldr r0, [r5, #0x30]
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r6, #0
	bl sub_0801C940
	ldr r0, [r5, #0x28]
	adds r3, r7, r0
	ldr r2, [r5, #0x2c]
	adds r2, r7, r2
	ldr r0, [r3]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2]
	lsrs r1, r0, #6
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r3]
	ldr r0, _0801D488 @ =0x00003BFF
	cmp r1, r0
	bls _0801D464
	adds r0, #1
	str r0, [r3]
	ldr r0, [r5, #0x24]
	add r0, r8
	movs r1, #2
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #0
	bl sub_0801C9A8
_0801D464:
	adds r7, #4
	movs r3, #2
	add sl, r3
	adds r6, #0x10
	movs r4, #1
	add r8, r4
	mov r0, r8
	cmp r0, #0x3f
	bhi _0801D478
	b _0801D33C
_0801D478:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D488: .4byte 0x00003BFF

	thumb_func_start sub_0801D48C
sub_0801D48C: @ 0x0801D48C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #4]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	bl sub_0801B750
	mov r0, sp
	adds r0, #0x20
	str r0, [sp, #0x34]
	adds r0, #4
	str r0, [sp, #0x38]
	subs r0, #0x1c
	str r0, [sp, #0x2c]
	adds r0, #4
	str r0, [sp, #0x30]
	add r0, sp, #0x10
	mov sl, r0
	add r0, sp, #0x14
	mov sb, r0
	add r0, sp, #0x18
	mov r8, r0
	add r7, sp, #0x1c
	adds r6, r4, #0
	adds r6, #0x6a
_0801D4DE:
	bl sub_08000BC0
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0801D030
	adds r0, r4, #0
	bl sub_0801D27C
	adds r0, r4, #0
	add r1, sp, #4
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	bl sub_0801CCC4
	str r7, [sp]
	adds r0, r4, #0
	mov r1, sl
	mov r2, sb
	mov r3, r8
	bl sub_0801CC00
	bl sub_08009BD0
	adds r0, r4, #0
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	bl sub_0801CFC4
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0801D09C
	adds r0, r4, #0
	bl sub_0801D200
	adds r0, r4, #0
	bl sub_0801D324
	adds r0, r4, #0
	add r1, sp, #4
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	bl sub_0801CEEC
	str r7, [sp]
	adds r0, r4, #0
	mov r1, sl
	mov r2, sb
	mov r3, r8
	bl sub_0801CC64
	ldrh r2, [r6]
	adds r1, r4, #0
	adds r1, #0x6c
	ldrh r0, [r1]
	subs r0, #1
	adds r5, r1, #0
	cmp r2, r0
	blt _0801D56A
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _0801D56A
	ldr r0, _0801D588 @ =gUnknown_083D4B08
	ldr r1, _0801D58C @ =0x05000220
	ldr r2, _0801D590 @ =0x04000008
	bl sub_0803D348
	movs r0, #1
	str r0, [sp, #0x28]
_0801D56A:
	adds r1, r6, #0
	ldrh r0, [r1]
	adds r2, r0, #1
	strh r2, [r1]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801D594
	bl sub_0801C3C8
	cmp r0, #0
	bne _0801D5A8
	b _0801D4DE
	.align 2, 0
_0801D588: .4byte gUnknown_083D4B08
_0801D58C: .4byte 0x05000220
_0801D590: .4byte 0x04000008
_0801D594:
	ldrh r1, [r5]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	blo _0801D4DE
	strh r1, [r6]
	bl sub_0801C3C8
	cmp r0, #0
	beq _0801D4DE
_0801D5A8:
	bl sub_0801B744
	adds r0, r4, #0
	bl sub_0801D158
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0801D5D0 @ =0x000080FF
	ands r0, r1
	strh r0, [r2]
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D5D0: .4byte 0x000080FF

	thumb_func_start sub_0801D5D4
sub_0801D5D4: @ 0x0801D5D4
	push {lr}
	ldr r0, _0801D5E4 @ =gUnknown_083D4B08
	ldr r1, _0801D5E8 @ =0x05000220
	ldr r2, _0801D5EC @ =0x04000008
	bl sub_0803D348
	pop {r0}
	bx r0
	.align 2, 0
_0801D5E4: .4byte gUnknown_083D4B08
_0801D5E8: .4byte 0x05000220
_0801D5EC: .4byte 0x04000008

	thumb_func_start sub_0801D5F0
sub_0801D5F0: @ 0x0801D5F0
	push {lr}
	ldr r1, _0801D628 @ =0x04000008
	ldr r0, _0801D62C @ =0x00001E82
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_0801C574
	ldr r1, _0801D630 @ =0x0400000C
	ldr r0, _0801D634 @ =0x00005F85
	strh r0, [r1]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_0801C574
	ldr r1, _0801D638 @ =0x0400000A
	ldr r0, _0801D63C @ =0x00001F85
	strh r0, [r1]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_0801C574
	pop {r0}
	bx r0
	.align 2, 0
_0801D628: .4byte 0x04000008
_0801D62C: .4byte 0x00001E82
_0801D630: .4byte 0x0400000C
_0801D634: .4byte 0x00005F85
_0801D638: .4byte 0x0400000A
_0801D63C: .4byte 0x00001F85

	thumb_func_start sub_0801D640
sub_0801D640: @ 0x0801D640
	push {lr}
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #0x13
_0801D64E:
	strh r2, [r0]
	adds r0, #8
	adds r1, #1
	cmp r1, #0x7f
	bls _0801D64E
	pop {r0}
	bx r0

	thumb_func_start sub_0801D65C
sub_0801D65C: @ 0x0801D65C
	push {lr}
	sub sp, #0x30
	add r1, sp, #4
	ldr r0, _0801D698 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	strh r0, [r1, #0x10]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0801C4D0
	add sp, #0x30
	pop {r0}
	bx r0
	.align 2, 0
_0801D698: .4byte 0x0000FFFF

	thumb_func_start sub_0801D69C
sub_0801D69C: @ 0x0801D69C
	push {lr}
	ldr r1, _0801D6C0 @ =0x04000048
	ldr r2, _0801D6C4 @ =0x00003F3F
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	subs r2, #0xf
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	movs r1, #0
	movs r2, #0xf0
	movs r3, #0xa0
	bl sub_0801C4F8
	pop {r0}
	bx r0
	.align 2, 0
_0801D6C0: .4byte 0x04000048
_0801D6C4: .4byte 0x00003F3F

	thumb_func_start sub_0801D6C8
sub_0801D6C8: @ 0x0801D6C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r3, r0, #0
	str r1, [sp]
	ldr r0, _0801D864 @ =gUnknown_087BCA0C
	str r0, [r3]
	ldr r0, _0801D868 @ =gUnknown_02037830
	str r0, [r3, #4]
	ldr r0, _0801D86C @ =gUnknown_02037800
	str r0, [r3, #8]
	ldr r0, _0801D870 @ =gUnknown_0203BD80
	str r0, [r3, #0xc]
	ldr r0, _0801D874 @ =gUnknown_02037850
	str r0, [r3, #0x10]
	ldr r0, _0801D878 @ =gUnknown_02038760
	str r0, [r3, #0x14]
	movs r2, #0
	ldr r6, _0801D87C @ =gUnknown_087BCD7C
	ldr r7, _0801D880 @ =gUnknown_02037848
	movs r5, #0
	movs r4, #0
_0801D6FA:
	ldr r0, [r3, #4]
	adds r0, r0, r2
	strb r5, [r0]
	ldr r1, [r3, #8]
	lsls r0, r2, #1
	adds r0, r0, r1
	strh r4, [r0]
	ldr r0, [r3, #0xc]
	adds r0, r0, r2
	strb r4, [r0]
	ldr r0, [r3, #0x10]
	adds r0, r0, r2
	strb r4, [r0]
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	strb r4, [r0]
	adds r2, #1
	cmp r2, #0x13
	bls _0801D6FA
	str r6, [r3, #0x18]
	str r7, [r3, #0x1c]
	movs r2, #0
	adds r7, r3, #0
	adds r7, #0x44
	movs r0, #0x5c
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0x5e
	adds r1, r1, r3
	mov r8, r1
	movs r0, #0x60
	adds r0, r0, r3
	mov sb, r0
	movs r1, #0x62
	adds r1, r1, r3
	mov sl, r1
	adds r0, r3, #0
	adds r0, #0x64
	str r0, [sp, #4]
	adds r1, r3, #0
	adds r1, #0x68
	str r1, [sp, #8]
	adds r0, #5
	str r0, [sp, #0xc]
	adds r1, #2
	str r1, [sp, #0x10]
	adds r0, #3
	str r0, [sp, #0x14]
	movs r1, #0
_0801D75C:
	ldr r0, [r3, #0x1c]
	adds r0, r0, r2
	strb r1, [r0]
	adds r2, #1
	cmp r2, #7
	bls _0801D75C
	ldr r1, _0801D884 @ =gUnknown_087BCE5C
	str r1, [r3, #0x20]
	ldr r2, _0801D888 @ =gUnknown_02038310
	str r2, [r3, #0x24]
	ldr r0, _0801D88C @ =gUnknown_020372F0
	str r0, [r3, #0x28]
	ldr r1, _0801D890 @ =gUnknown_0203A730
	str r1, [r3, #0x2c]
	ldr r2, _0801D894 @ =gUnknown_0203B060
	str r2, [r3, #0x30]
	movs r2, #0
	movs r6, #0
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #2
_0801D786:
	ldr r0, [r3, #0x24]
	adds r0, r0, r2
	strb r6, [r0]
	ldr r0, [r3, #0x28]
	lsls r1, r2, #2
	adds r0, r1, r0
	str r4, [r0]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r5, [r1]
	ldr r1, [r3, #0x30]
	lsls r0, r2, #1
	adds r0, r0, r1
	strh r4, [r0]
	adds r2, #1
	cmp r2, #0x3f
	bls _0801D786
	ldr r0, _0801D898 @ =gUnknown_087BC9D8
	str r0, [r3, #0x34]
	ldr r1, _0801D89C @ =gUnknown_08346AFC
	str r1, [r3, #0x38]
	movs r2, #0
	movs r0, #0xde
	strh r0, [r3, #0x3c]
	ldr r0, _0801D8A0 @ =gUnknown_083462FC
	str r0, [r3, #0x40]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r7]
	strh r2, [r3, #0x3e]
	ldr r1, _0801D8A4 @ =gUnknown_083E7D5E
	str r1, [r3, #0x48]
	ldr r0, _0801D8A8 @ =gUnknown_083F543E
	str r0, [r3, #0x4c]
	ldr r1, _0801D8AC @ =gUnknown_083F61AA
	str r1, [r3, #0x50]
	ldr r0, _0801D8B0 @ =gUnknown_083F63AA
	str r0, [r3, #0x54]
	ldr r0, _0801D8B4 @ =0x06010000
	str r0, [r3, #0x58]
	movs r0, #4
	mov r1, ip
	strh r0, [r1]
	ldr r1, _0801D8B8 @ =gUnknown_083E7D5C
	ldrh r0, [r1]
	mov r1, r8
	strh r0, [r1]
	movs r0, #0x10
	mov r1, sb
	strh r0, [r1]
	mov r1, sl
	strh r0, [r1]
	ldr r0, [sp, #4]
	strh r2, [r0]
	mov r1, sp
	ldrb r0, [r1]
	ldr r1, [sp, #8]
	strb r0, [r1]
	movs r0, #0xc7
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	strh r2, [r0]
	ldr r0, _0801D8BC @ =0x00002210
	ldr r1, [sp, #0x14]
	strh r0, [r1]
	ldr r1, _0801D8C0 @ =0x05000002
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r0, _0801D8C4 @ =0x05000004
	movs r1, #0xff
	lsls r1, r1, #2
	bl sub_08000498
	movs r0, #0xc0
	lsls r0, r0, #0x13
	movs r1, #0xc0
	lsls r1, r1, #9
	movs r2, #0
	bl sub_08000498
	movs r0, #0xe0
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #3
	movs r2, #0
	bl sub_08000498
	bl sub_0801D5D4
	bl sub_0801D5F0
	bl sub_0801D640
	bl sub_0801D69C
	bl sub_0801D65C
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _0801D8C8 @ =0x00003041
	adds r0, r2, #0
	strh r0, [r1]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D864: .4byte gUnknown_087BCA0C
_0801D868: .4byte gUnknown_02037830
_0801D86C: .4byte gUnknown_02037800
_0801D870: .4byte gUnknown_0203BD80
_0801D874: .4byte gUnknown_02037850
_0801D878: .4byte gUnknown_02038760
_0801D87C: .4byte gUnknown_087BCD7C
_0801D880: .4byte gUnknown_02037848
_0801D884: .4byte gUnknown_087BCE5C
_0801D888: .4byte gUnknown_02038310
_0801D88C: .4byte gUnknown_020372F0
_0801D890: .4byte gUnknown_0203A730
_0801D894: .4byte gUnknown_0203B060
_0801D898: .4byte gUnknown_087BC9D8
_0801D89C: .4byte gUnknown_08346AFC
_0801D8A0: .4byte gUnknown_083462FC
_0801D8A4: .4byte gUnknown_083E7D5E
_0801D8A8: .4byte gUnknown_083F543E
_0801D8AC: .4byte gUnknown_083F61AA
_0801D8B0: .4byte gUnknown_083F63AA
_0801D8B4: .4byte 0x06010000
_0801D8B8: .4byte gUnknown_083E7D5C
_0801D8BC: .4byte 0x00002210
_0801D8C0: .4byte 0x05000002
_0801D8C4: .4byte 0x05000004
_0801D8C8: .4byte 0x00003041

	thumb_func_start sub_0801D8CC
sub_0801D8CC: @ 0x0801D8CC
	push {r4, lr}
	sub sp, #0x70
	adds r4, r0, #0
	bl sub_08000B84
	mov r0, sp
	adds r1, r4, #0
	bl sub_0801D6C8
	mov r0, sp
	bl sub_0801D48C
	add sp, #0x70
	pop {r4}
	pop {r0}
	bx r0
_0801D8EC:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_0801D8F0
sub_0801D8F0: @ 0x0801D8F0
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D8F4
sub_0801D8F4: @ 0x0801D8F4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08036330
	bl sub_0801FCD0
	bl sub_08036EF4
	ldr r0, _0801D93C @ =gUnknown_020132FC
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0801D940 @ =gUnknown_0202F328
	strh r1, [r0]
	movs r2, #0
	ldr r5, _0801D944 @ =gUnknown_020393C2
	adds r3, r4, #0
	adds r3, #0x3a
_0801D918:
	ldrb r1, [r4, #2]
	lsls r0, r1, #7
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	adds r0, r0, r5
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #5
	ble _0801D918
	ldrb r0, [r4]
	cmp r0, #3
	bne _0801D94C
	ldr r1, _0801D948 @ =gUnknown_02038BB8
	movs r0, #0xb
	b _0801D952
	.align 2, 0
_0801D93C: .4byte gUnknown_020132FC
_0801D940: .4byte gUnknown_0202F328
_0801D944: .4byte gUnknown_020393C2
_0801D948: .4byte gUnknown_02038BB8
_0801D94C:
	ldr r1, _0801D960 @ =gUnknown_02038BB8
	ldrh r0, [r1]
	adds r0, #1
_0801D952:
	strh r0, [r1]
	ldr r1, _0801D964 @ =gUnknown_020132F8
	movs r0, #0
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D960: .4byte gUnknown_02038BB8
_0801D964: .4byte gUnknown_020132F8

	thumb_func_start sub_0801D968
sub_0801D968: @ 0x0801D968
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _0801D9C8 @ =gUnknown_0831BB80
	mov r0, sp
	movs r2, #6
	bl sub_0803DEBC
	bl sub_0801EAD4
	ldr r1, _0801D9CC @ =gUnknown_02038BBC
	movs r0, #1
	str r0, [r1]
	bl sub_0802846C
	movs r0, #1
	bl sub_080284D0
	movs r2, #0
	ldr r3, _0801D9D0 @ =gUnknown_02039BB2
	ldr r0, _0801D9D4 @ =0xFFFFF02E
	adds r5, r3, r0
_0801D994:
	adds r0, r2, r3
	mov r6, sp
	adds r1, r6, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #5
	ble _0801D994
	ldrh r1, [r4, #0x36]
	adds r0, r5, #0
	adds r0, #0x54
	strh r1, [r0]
	ldrh r1, [r4, #0x38]
	ldr r2, _0801D9D8 @ =0x00000844
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r3, [r4, #0x34]
	cmp r3, #0
	bne _0801D9E4
	ldr r1, _0801D9DC @ =gUnknown_02039BCC
	str r3, [r1]
	ldr r0, _0801D9E0 @ =gUnknown_0203C45C
	strh r3, [r0]
	adds r6, r1, #0
	adds r3, r0, #0
	b _0801D9FA
	.align 2, 0
_0801D9C8: .4byte gUnknown_0831BB80
_0801D9CC: .4byte gUnknown_02038BBC
_0801D9D0: .4byte gUnknown_02039BB2
_0801D9D4: .4byte 0xFFFFF02E
_0801D9D8: .4byte 0x00000844
_0801D9DC: .4byte gUnknown_02039BCC
_0801D9E0: .4byte gUnknown_0203C45C
_0801D9E4:
	ldr r2, _0801DA28 @ =gUnknown_02039BCC
	ldrh r1, [r4, #0x34]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	str r0, [r2]
	ldr r1, _0801DA2C @ =gUnknown_0203C45C
	movs r0, #1
	strh r0, [r1]
	adds r6, r2, #0
	adds r3, r1, #0
_0801D9FA:
	ldr r0, _0801DA30 @ =gUnknown_02038BD0
	ldrh r0, [r0]
	cmp r0, #2
	bne _0801DA16
	ldr r0, _0801DA34 @ =0x00000844
	adds r1, r5, r0
	movs r2, #0
	movs r0, #0xfe
	lsls r0, r0, #7
	strh r0, [r1]
	movs r0, #0xe1
	lsls r0, r0, #3
	str r0, [r6]
	strh r2, [r3]
_0801DA16:
	ldr r1, _0801DA38 @ =0x000007FC
	adds r0, r5, r1
	ldrh r0, [r0]
	cmp r0, #0x63
	bls _0801DA3C
	bl sub_08034D20
	b _0801DA48
	.align 2, 0
_0801DA28: .4byte gUnknown_02039BCC
_0801DA2C: .4byte gUnknown_0203C45C
_0801DA30: .4byte gUnknown_02038BD0
_0801DA34: .4byte 0x00000844
_0801DA38: .4byte 0x000007FC
_0801DA3C:
	ldr r0, _0801DA7C @ =gUnknown_0203C470
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	bl sub_0803930C
_0801DA48:
	movs r0, #0
	bl sub_080355A8
	bl sub_0801F30C
	adds r0, r4, #0
	bl sub_080377F8
	ldr r1, _0801DA80 @ =gUnknown_02038398
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0801DA84 @ =gUnknown_020132F8
	movs r0, #0
	str r0, [r1]
	ldr r1, _0801DA88 @ =gUnknown_0202F324
	movs r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801DA8C
	bl sub_0803232C
	b _0801DA94
	.align 2, 0
_0801DA7C: .4byte gUnknown_0203C470
_0801DA80: .4byte gUnknown_02038398
_0801DA84: .4byte gUnknown_020132F8
_0801DA88: .4byte gUnknown_0202F324
_0801DA8C:
	ldr r1, _0801DA9C @ =gUnknown_02038BB8
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
_0801DA94:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DA9C: .4byte gUnknown_02038BB8

	thumb_func_start sub_0801DAA0
sub_0801DAA0: @ 0x0801DAA0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0801DB0C @ =gUnknown_020132F8
	ldr r0, [r4]
	cmp r0, #0
	bne _0801DAC4
	ldr r0, _0801DB10 @ =gUnknown_0203C458
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	bl sub_0801EA90
	ldr r1, _0801DB14 @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
_0801DAC4:
	movs r0, #0
	bl sub_0801EE48
	bl sub_0802816C
	bl sub_08035E30
	ldr r2, _0801DB18 @ =0x04000054
	ldr r3, [r4]
	asrs r1, r3, #1
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2]
	ldrb r0, [r5]
	cmp r0, #1
	bne _0801DAE8
	adds r0, r3, #1
	str r0, [r4]
_0801DAE8:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	cmp r0, #0x20
	ble _0801DB04
	ldr r1, _0801DB14 @ =0x04000050
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0801DB1C @ =gUnknown_02038BB8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [r4]
_0801DB04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DB0C: .4byte gUnknown_020132F8
_0801DB10: .4byte gUnknown_0203C458
_0801DB14: .4byte 0x04000050
_0801DB18: .4byte 0x04000054
_0801DB1C: .4byte gUnknown_02038BB8

	thumb_func_start sub_0801DB20
sub_0801DB20: @ 0x0801DB20
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_08028030
	ldr r1, _0801DB40 @ =gUnknown_02038BE0
	adds r2, r1, #0
	adds r2, #0x54
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bgt _0801DB44
	ldrh r0, [r6, #0x36]
	cmp r0, #0
	bne _0801DB52
	b _0801DB68
	.align 2, 0
_0801DB40: .4byte gUnknown_02038BE0
_0801DB44:
	ldr r4, _0801DB74 @ =0x00000844
	adds r0, r1, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r3, _0801DB78 @ =gUnknown_02038398
	cmp r0, #0
	bgt _0801DBA8
_0801DB52:
	ldr r0, _0801DB7C @ =gUnknown_02038BE0
	ldr r3, _0801DB74 @ =0x00000844
	adds r2, r0, r3
	movs r4, #0
	ldrsh r1, [r2, r4]
	adds r4, r0, #0
	cmp r1, #0
	bgt _0801DB80
	ldrh r0, [r6, #0x38]
	cmp r0, #0
	bne _0801DB80
_0801DB68:
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r2]
	ldr r3, _0801DB78 @ =gUnknown_02038398
	b _0801DBA8
	.align 2, 0
_0801DB74: .4byte 0x00000844
_0801DB78: .4byte gUnknown_02038398
_0801DB7C: .4byte gUnknown_02038BE0
_0801DB80:
	ldr r0, _0801DC28 @ =gUnknown_02038398
	movs r1, #1
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x54
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r3, r0, #0
	cmp r1, #0
	bge _0801DB98
	movs r0, #0
	strh r0, [r2]
_0801DB98:
	ldr r0, _0801DC2C @ =0x00000844
	adds r1, r4, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0801DBA8
	movs r0, #0
	strh r0, [r1]
_0801DBA8:
	ldr r0, _0801DC30 @ =gUnknown_02039BCC
	ldr r0, [r0]
	cmp r0, #0
	bgt _0801DBC2
	ldr r0, _0801DC34 @ =gUnknown_02038BD0
	ldrh r0, [r0]
	cmp r0, #2
	beq _0801DBBE
	ldrh r0, [r6, #0x34]
	cmp r0, #0
	beq _0801DBC2
_0801DBBE:
	movs r0, #1
	strh r0, [r3]
_0801DBC2:
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bne _0801DBCC
	b _0801DD4C
_0801DBCC:
	ldr r4, _0801DC38 @ =gUnknown_020132F8
	ldr r0, [r4]
	cmp r0, #0
	bne _0801DBDA
	movs r0, #6
	bl sub_08000704
_0801DBDA:
	ldr r0, _0801DC3C @ =gUnknown_0203A444
	movs r5, #0
	strh r5, [r0]
	ldr r0, [r4]
	adds r1, r0, #1
	str r1, [r4]
	ldr r0, _0801DC34 @ =gUnknown_02038BD0
	ldrh r0, [r0]
	cmp r0, #2
	bne _0801DC50
	cmp r1, #1
	bne _0801DBFC
	ldr r0, _0801DC40 @ =0x04000050
	movs r1, #0xff
	strh r1, [r0]
	adds r0, #4
	strh r5, [r0]
_0801DBFC:
	ldr r2, [r4]
	movs r0, #0xf
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	bne _0801DC0E
	ldr r1, _0801DC44 @ =0x04000054
	asrs r0, r3, #4
	strh r0, [r1]
_0801DC0E:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _0801DC50
	ldr r0, _0801DC48 @ =gUnknown_0202F324
	strh r5, [r0]
	ldr r1, _0801DC4C @ =gUnknown_02038BB8
	movs r0, #0x14
	strh r0, [r1]
	movs r0, #0
	str r0, [r4]
	b _0801DD5E
	.align 2, 0
_0801DC28: .4byte gUnknown_02038398
_0801DC2C: .4byte 0x00000844
_0801DC30: .4byte gUnknown_02039BCC
_0801DC34: .4byte gUnknown_02038BD0
_0801DC38: .4byte gUnknown_020132F8
_0801DC3C: .4byte gUnknown_0203A444
_0801DC40: .4byte 0x04000050
_0801DC44: .4byte 0x04000054
_0801DC48: .4byte gUnknown_0202F324
_0801DC4C: .4byte gUnknown_02038BB8
_0801DC50:
	ldr r3, _0801DCD0 @ =gUnknown_02038BE0
	adds r0, r3, #0
	adds r0, #0x54
	ldr r2, _0801DCD4 @ =0x00000844
	adds r1, r3, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r4, r3, #0
	cmp r2, r0
	bgt _0801DC6E
	ldrh r0, [r6, #0x36]
	cmp r0, #0
	bne _0801DC74
_0801DC6E:
	ldrh r0, [r6, #0x38]
	cmp r0, #0
	bne _0801DCF0
_0801DC74:
	movs r0, #0x87
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r0, #7
	str r0, [r1]
	ldr r1, _0801DCD8 @ =0x00000878
	adds r0, r4, r1
	movs r5, #0
	str r5, [r0]
	ldr r2, _0801DCDC @ =0x00000FCE
	adds r0, r4, r2
	movs r6, #0x80
	lsls r6, r6, #1
	strh r6, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	movs r0, #0x16
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x88
	str r5, [r0]
	ldr r4, _0801DCE0 @ =gUnknown_020132F8
	ldr r0, [r4]
	cmp r0, #1
	bne _0801DCB0
	ldr r0, _0801DCE4 @ =0x04000050
	movs r1, #0xff
	strh r1, [r0]
	adds r0, #4
	strh r5, [r0]
_0801DCB0:
	ldr r2, [r4]
	movs r0, #0xf
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	bne _0801DCC2
	ldr r1, _0801DCE8 @ =0x04000054
	asrs r0, r3, #4
	strh r0, [r1]
_0801DCC2:
	cmp r2, r6
	ble _0801DD4C
	ldr r1, _0801DCEC @ =gUnknown_02038BB8
	ldrh r0, [r1]
	adds r0, #2
	b _0801DD48
	.align 2, 0
_0801DCD0: .4byte gUnknown_02038BE0
_0801DCD4: .4byte 0x00000844
_0801DCD8: .4byte 0x00000878
_0801DCDC: .4byte 0x00000FCE
_0801DCE0: .4byte gUnknown_020132F8
_0801DCE4: .4byte 0x04000050
_0801DCE8: .4byte 0x04000054
_0801DCEC: .4byte gUnknown_02038BB8
_0801DCF0:
	adds r1, r3, #0
	adds r1, #0x80
	movs r0, #7
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #0x88
	movs r5, #0
	str r5, [r0]
	ldr r4, _0801DD64 @ =0x000007DE
	adds r0, r3, r4
	movs r6, #0x80
	lsls r6, r6, #1
	strh r6, [r0]
	movs r0, #0x87
	lsls r0, r0, #4
	adds r1, r3, r0
	movs r0, #0x16
	str r0, [r1]
	ldr r1, _0801DD68 @ =0x00000878
	adds r0, r3, r1
	str r5, [r0]
	ldr r4, _0801DD6C @ =gUnknown_020132F8
	ldr r0, [r4]
	cmp r0, #1
	bne _0801DD2C
	ldr r0, _0801DD70 @ =0x04000050
	movs r1, #0xbf
	strh r1, [r0]
	adds r0, #4
	strh r5, [r0]
_0801DD2C:
	ldr r2, [r4]
	movs r0, #0xf
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	bne _0801DD3E
	ldr r1, _0801DD74 @ =0x04000054
	asrs r0, r3, #4
	strh r0, [r1]
_0801DD3E:
	cmp r2, r6
	ble _0801DD4C
	ldr r1, _0801DD78 @ =gUnknown_02038BB8
	ldrh r0, [r1]
	adds r0, #1
_0801DD48:
	strh r0, [r1]
	str r5, [r4]
_0801DD4C:
	movs r0, #0
	bl sub_0801EE48
	bl sub_0802816C
	bl sub_08035E30
	bl sub_0801EB6C
_0801DD5E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DD64: .4byte 0x000007DE
_0801DD68: .4byte 0x00000878
_0801DD6C: .4byte gUnknown_020132F8
_0801DD70: .4byte 0x04000050
_0801DD74: .4byte 0x04000054
_0801DD78: .4byte gUnknown_02038BB8

	thumb_func_start sub_0801DD7C
sub_0801DD7C: @ 0x0801DD7C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x6e
	bl sub_08000634
	ldr r3, _0801DDC8 @ =gUnknown_02038BE0
	adds r0, r3, #0
	adds r0, #0x54
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r2, #0
	cmp r1, r0
	bne _0801DDA4
	ldrh r1, [r4, #0x36]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_0801DDA4:
	ldrb r1, [r4, #2]
	lsls r0, r1, #7
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r0, [r0, #0xe]
	adds r1, r2, #0
	bl sub_0801C0C0
	ldr r1, _0801DDCC @ =gUnknown_0202F324
	movs r0, #1
	strh r0, [r1]
	ldr r1, _0801DDD0 @ =gUnknown_02038BB8
	movs r0, #0x14
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DDC8: .4byte gUnknown_02038BE0
_0801DDCC: .4byte gUnknown_0202F324
_0801DDD0: .4byte gUnknown_02038BB8

	thumb_func_start sub_0801DDD4
sub_0801DDD4: @ 0x0801DDD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0801E0F4 @ =gUnknown_020132F8
	ldr r1, [r0]
	cmp r1, #0
	bne _0801DED0
	movs r0, #0
	movs r1, #0x6f
	bl sub_08000634
	ldr r0, _0801E0F8 @ =0x05000200
	ldr r3, _0801E0FC @ =gUnknown_0831E360
	ldr r4, _0801E100 @ =gUnknown_02038BE0
	ldrb r2, [r5, #2]
	lsls r1, r2, #7
	subs r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r4
	ldrh r1, [r1, #0xe]
	lsls r1, r1, #3
	adds r3, #4
	adds r1, r1, r3
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801E104 @ =0x06010000
	ldrb r2, [r5, #2]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #0xd
	ldr r2, _0801E108 @ =gUnknown_02013310
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_080002EC
	movs r2, #0
	movs r3, #0xa0
	lsls r3, r3, #0x13
	movs r1, #0
_0801DE30:
	adds r0, r2, r3
	strh r1, [r0]
	adds r2, #2
	cmp r2, #0x1f
	ble _0801DE30
	movs r2, #0
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r1, #0
	ldr r4, _0801E10C @ =0x06004000
	ldr r3, _0801E110 @ =0x0600C000
_0801DE46:
	adds r0, r2, r5
	strh r1, [r0]
	adds r0, r2, r4
	strh r1, [r0]
	adds r0, r2, r3
	strh r1, [r0]
	adds r2, #2
	cmp r2, #0x1f
	ble _0801DE46
	movs r0, #0
	bl sub_08036330
	movs r0, #1
	bl sub_08036330
	movs r0, #2
	bl sub_08036330
	ldr r1, _0801E114 @ =gUnknown_02038BBC
	movs r0, #1
	str r0, [r1]
	movs r4, #0xa0
	lsls r4, r4, #0x13
	ldr r1, _0801E118 @ =gUnknown_086C9140
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_080002EC
	movs r0, #0
	strh r0, [r4]
	ldr r0, _0801E11C @ =0x06004200
	ldr r1, _0801E120 @ =gUnknown_086C09E6
	movs r2, #0xa0
	lsls r2, r2, #5
	bl sub_080002EC
	movs r2, #0
	ldr r7, _0801E124 @ =gUnknown_0202F350
	movs r0, #0x80
	lsls r0, r0, #4
	adds r0, r0, r7
	mov r8, r0
	ldr r1, _0801E128 @ =0x0000FFFF
	adds r6, r1, #0
_0801DE9E:
	movs r3, #0
	lsls r1, r2, #5
	lsls r0, r2, #2
	adds r5, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r4, r0, #0
	adds r4, #0x10
	adds r1, #5
	lsls r1, r1, #1
	mov r0, r8
	adds r2, r1, r0
	adds r1, r1, r7
_0801DEB8:
	adds r0, r4, r3
	strh r0, [r2]
	ands r0, r6
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x13
	ble _0801DEB8
	adds r2, r5, #0
	cmp r2, #7
	ble _0801DE9E
_0801DED0:
	ldr r1, _0801E0F4 @ =gUnknown_020132F8
	ldr r0, [r1]
	cmp r0, #1
	bne _0801DEDC
	bl sub_0800A110
_0801DEDC:
	ldr r0, _0801E12C @ =gUnknown_02038394
	ldr r7, _0801E130 @ =gUnknown_02038388
	ldr r1, [r7]
	lsls r1, r1, #1
	adds r0, r1, r0
	movs r2, #0
	strh r2, [r0]
	ldr r0, _0801E134 @ =gUnknown_020132E8
	adds r1, r1, r0
	movs r0, #0xa0
	strh r0, [r1]
	bl sub_0801FCD0
	ldr r0, _0801E138 @ =gUnknown_0203A440
	movs r6, #0x80
	lsls r6, r6, #9
	str r6, [r0]
	ldr r4, [r7]
	lsls r3, r4, #0xa
	mov sl, r3
	ldr r0, _0801E13C @ =gUnknown_02039BD0
	add r0, sl
	mov r8, r0
	ldr r1, _0801E140 @ =gUnknown_08693364
	mov sb, r1
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x10
	adds r1, r6, #0
	bl sub_0803DD84
	mov r3, r8
	strh r0, [r3, #0x26]
	ldr r5, _0801E144 @ =gUnknown_08693164
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	adds r1, r6, #0
	bl sub_0803DD84
	mov r2, r8
	strh r0, [r2, #0x2e]
	movs r3, #0
	ldrsh r0, [r5, r3]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	adds r1, r6, #0
	bl sub_0803DD84
	mov r1, r8
	strh r0, [r1, #0x36]
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #0x10
	adds r1, r6, #0
	bl sub_0803DD84
	mov r1, r8
	strh r0, [r1, #0x3e]
	ldr r5, _0801E148 @ =gUnknown_020383A0
	lsls r4, r4, #2
	adds r4, r4, r5
	ldr r0, [r4]
	lsls r0, r0, #3
	add r0, sl
	ldr r2, _0801E13C @ =gUnknown_02039BD0
	adds r0, r0, r2
	movs r1, #0x12
	strb r1, [r0]
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r3, _0801E13C @ =gUnknown_02039BD0
	adds r1, r1, r3
	ldrb r2, [r1, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1, #1]
	movs r6, #0xd
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	mov ip, r0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1, #1]
	movs r3, #0x21
	rsbs r3, r3, #0
	mov r8, r3
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r0, _0801E13C @ =gUnknown_02039BD0
	adds r1, r1, r0
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r4, [r7]
	lsls r3, r4, #2
	adds r3, r3, r5
	ldr r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	ldr r2, _0801E13C @ =gUnknown_02039BD0
	adds r1, r1, r2
	ldrh r2, [r1, #2]
	ldr r0, _0801E14C @ =0xFFFFFE00
	ands r0, r2
	movs r2, #0x68
	orrs r0, r2
	strh r0, [r1, #2]
	ldr r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r3, _0801E13C @ =gUnknown_02039BD0
	adds r0, r0, r3
	ldrb r2, [r0, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0, #3]
	mov r2, ip
	ands r2, r1
	strb r2, [r0, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0, #3]
	mov r2, r8
	ands r2, r1
	strb r2, [r0, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0, #3]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r4, [r7]
	lsls r3, r4, #2
	adds r3, r3, r5
	ldr r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	ldr r0, _0801E13C @ =gUnknown_02039BD0
	adds r1, r1, r0
	ldrh r2, [r1, #4]
	ldr r0, _0801E150 @ =0xFFFFFC00
	ands r0, r2
	strh r0, [r1, #4]
	ldr r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, _0801E13C @ =gUnknown_02039BD0
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	ands r6, r1
	movs r1, #8
	orrs r6, r1
	strb r6, [r0, #5]
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r2, _0801E13C @ =gUnknown_02039BD0
	adds r1, r1, r2
	ldrb r2, [r1, #5]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1, #5]
	ldr r1, [r7]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r3, _0801E0F4 @ =gUnknown_020132F8
	ldr r2, [r3]
	adds r1, r2, #1
	str r1, [r3]
	ldr r3, _0801E154 @ =0x0000012B
	cmp r1, r3
	bgt _0801E15C
	ldr r0, _0801E158 @ =gUnknown_02038364
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E1A6
	ldr r0, _0801E0F4 @ =gUnknown_020132F8
	str r3, [r0]
	movs r0, #2
	bl sub_08000704
	b _0801E1A6
	.align 2, 0
_0801E0F4: .4byte gUnknown_020132F8
_0801E0F8: .4byte 0x05000200
_0801E0FC: .4byte gUnknown_0831E360
_0801E100: .4byte gUnknown_02038BE0
_0801E104: .4byte 0x06010000
_0801E108: .4byte gUnknown_02013310
_0801E10C: .4byte 0x06004000
_0801E110: .4byte 0x0600C000
_0801E114: .4byte gUnknown_02038BBC
_0801E118: .4byte gUnknown_086C9140
_0801E11C: .4byte 0x06004200
_0801E120: .4byte gUnknown_086C09E6
_0801E124: .4byte gUnknown_0202F350
_0801E128: .4byte 0x0000FFFF
_0801E12C: .4byte gUnknown_02038394
_0801E130: .4byte gUnknown_02038388
_0801E134: .4byte gUnknown_020132E8
_0801E138: .4byte gUnknown_0203A440
_0801E13C: .4byte gUnknown_02039BD0
_0801E140: .4byte gUnknown_08693364
_0801E144: .4byte gUnknown_08693164
_0801E148: .4byte gUnknown_020383A0
_0801E14C: .4byte 0xFFFFFE00
_0801E150: .4byte 0xFFFFFC00
_0801E154: .4byte 0x0000012B
_0801E158: .4byte gUnknown_02038364
_0801E15C:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bne _0801E178
	ldr r0, _0801E174 @ =0x04000050
	movs r1, #0xff
	strh r1, [r0]
	adds r0, #4
	movs r1, #0
	strh r1, [r0]
	b _0801E1A6
	.align 2, 0
_0801E174: .4byte 0x04000050
_0801E178:
	ldr r3, _0801E18C @ =0xFFFFFED4
	adds r0, r2, r3
	cmp r0, #0xf
	bhi _0801E194
	ldr r1, _0801E190 @ =0x04000054
	adds r3, #1
	adds r0, r2, r3
	strh r0, [r1]
	b _0801E1A6
	.align 2, 0
_0801E18C: .4byte 0xFFFFFED4
_0801E190: .4byte 0x04000054
_0801E194:
	ldr r1, _0801E1B8 @ =gUnknown_0202F324
	movs r0, #2
	strh r0, [r1]
	ldr r1, _0801E1BC @ =gUnknown_02038BB8
	movs r0, #0x14
	strh r0, [r1]
	movs r0, #0
	ldr r1, _0801E1C0 @ =gUnknown_020132F8
	str r0, [r1]
_0801E1A6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E1B8: .4byte gUnknown_0202F324
_0801E1BC: .4byte gUnknown_02038BB8
_0801E1C0: .4byte gUnknown_020132F8

	thumb_func_start sub_0801E1C4
sub_0801E1C4: @ 0x0801E1C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0801E4D4 @ =gUnknown_020132F8
	ldr r1, [r0]
	cmp r1, #0
	bne _0801E2B6
	movs r0, #0
	movs r1, #0x6f
	bl sub_08000634
	ldr r0, _0801E4D8 @ =0x05000200
	ldr r3, _0801E4DC @ =gUnknown_0831E360
	ldr r4, _0801E4E0 @ =gUnknown_02038BE0
	ldrb r2, [r5, #2]
	lsls r1, r2, #7
	subs r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r4
	ldrh r1, [r1, #0xe]
	lsls r1, r1, #3
	adds r3, #4
	adds r1, r1, r3
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801E4E4 @ =0x06010000
	ldrb r2, [r5, #2]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #0xd
	ldr r2, _0801E4E8 @ =gUnknown_02015710
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_080002EC
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #0x13
	movs r2, #0
_0801E220:
	adds r0, r1, r3
	strh r2, [r0]
	adds r1, #2
	cmp r1, #0x1f
	ble _0801E220
	movs r1, #0
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r2, #0
	ldr r4, _0801E4EC @ =0x06004000
	ldr r3, _0801E4F0 @ =0x0600C000
_0801E236:
	adds r0, r1, r5
	strh r2, [r0]
	adds r0, r1, r4
	strh r2, [r0]
	adds r0, r1, r3
	strh r2, [r0]
	adds r1, #2
	cmp r1, #0x1f
	ble _0801E236
	movs r0, #0
	bl sub_08036330
	movs r0, #1
	bl sub_08036330
	movs r0, #2
	bl sub_08036330
	ldr r1, _0801E4F4 @ =gUnknown_02038BBC
	movs r0, #1
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldr r1, _0801E4F8 @ =gUnknown_086C91A8
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801E4FC @ =0x06004200
	ldr r1, _0801E500 @ =gUnknown_086C4FE6
	movs r2, #0xf0
	lsls r2, r2, #5
	bl sub_080002EC
	movs r1, #0
	ldr r7, _0801E504 @ =gUnknown_0202F350
	movs r0, #0x80
	lsls r0, r0, #4
	adds r0, r0, r7
	mov r8, r0
	ldr r2, _0801E508 @ =0x0000FFFF
	adds r6, r2, #0
_0801E288:
	movs r3, #0
	lsls r0, r1, #4
	adds r5, r1, #1
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r4, r0, #0
	adds r4, #0x10
	lsls r0, r1, #6
	mov r1, r8
	adds r2, r0, r1
	adds r1, r0, r7
_0801E29E:
	adds r0, r4, r3
	strh r0, [r2]
	ands r0, r6
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x1d
	ble _0801E29E
	adds r1, r5, #0
	cmp r1, #7
	ble _0801E288
_0801E2B6:
	ldr r2, _0801E4D4 @ =gUnknown_020132F8
	ldr r0, [r2]
	cmp r0, #1
	bne _0801E2C2
	bl sub_0800A110
_0801E2C2:
	ldr r0, _0801E50C @ =gUnknown_02038394
	ldr r3, _0801E510 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r1, r1, #1
	adds r0, r1, r0
	movs r2, #0
	strh r2, [r0]
	ldr r0, _0801E514 @ =gUnknown_020132E8
	adds r1, r1, r0
	movs r0, #0xa0
	strh r0, [r1]
	bl sub_0801FCD0
	ldr r0, _0801E518 @ =gUnknown_0203A440
	movs r3, #0x80
	lsls r3, r3, #9
	mov r8, r3
	str r3, [r0]
	ldr r0, _0801E51C @ =gUnknown_02039BD0
	mov sb, r0
	ldr r1, _0801E510 @ =gUnknown_02038388
	ldr r6, [r1]
	lsls r2, r6, #0xa
	mov sl, r2
	mov r7, sl
	add r7, sb
	ldr r5, _0801E520 @ =gUnknown_08693364
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r5, r5, r3
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	mov r1, r8
	bl sub_0803DD84
	strh r0, [r7, #0x26]
	ldr r4, _0801E524 @ =gUnknown_08693164
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r4, r2
	movs r3, #0
	ldrsh r0, [r4, r3]
	lsls r0, r0, #0x10
	mov r1, r8
	bl sub_0803DD84
	strh r0, [r7, #0x2e]
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	mov r1, r8
	bl sub_0803DD84
	strh r0, [r7, #0x36]
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	mov r1, r8
	bl sub_0803DD84
	strh r0, [r7, #0x3e]
	ldr r5, _0801E528 @ =gUnknown_020383A0
	lsls r6, r6, #2
	adds r6, r6, r5
	ldr r0, [r6]
	lsls r0, r0, #3
	add r0, sl
	add r0, sb
	movs r1, #0xe
	strb r1, [r0]
	ldr r3, _0801E510 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, sb
	ldrb r1, [r0, #1]
	movs r2, #3
	orrs r1, r2
	strb r1, [r0, #1]
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #1]
	movs r6, #0xd
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #1]
	movs r7, #0x11
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	mov r8, r0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r4, [r3]
	lsls r3, r4, #2
	adds r3, r3, r5
	ldr r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	add r1, sb
	ldrh r2, [r1, #2]
	ldr r0, _0801E52C @ =0xFFFFFE00
	ands r0, r2
	movs r2, #0x4e
	orrs r0, r2
	strh r0, [r1, #2]
	ldr r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	add r0, sb
	ldrb r2, [r0, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r2, _0801E510 @ =gUnknown_02038388
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, sb
	ldrb r1, [r0, #3]
	adds r3, r7, #0
	ands r3, r1
	strb r3, [r0, #3]
	ldr r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, sb
	ldrb r1, [r0, #3]
	mov r2, r8
	ands r2, r1
	strb r2, [r0, #3]
	ldr r3, _0801E510 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, sb
	ldrb r1, [r0, #3]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r4, [r3]
	lsls r3, r4, #2
	adds r3, r3, r5
	ldr r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	add r1, sb
	ldrh r2, [r1, #4]
	ldr r0, _0801E530 @ =0xFFFFFC00
	ands r0, r2
	strh r0, [r1, #4]
	ldr r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	add r0, sb
	ldrb r1, [r0, #5]
	ands r6, r1
	movs r1, #8
	orrs r6, r1
	strb r6, [r0, #5]
	ldr r0, _0801E510 @ =gUnknown_02038388
	ldr r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #5]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r1, #5]
	ldr r2, _0801E510 @ =gUnknown_02038388
	ldr r1, [r2]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r3, _0801E4D4 @ =gUnknown_020132F8
	ldr r2, [r3]
	adds r1, r2, #1
	str r1, [r3]
	ldr r3, _0801E534 @ =0x0000012B
	cmp r1, r3
	bgt _0801E53C
	ldr r0, _0801E538 @ =gUnknown_02038364
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E586
	ldr r0, _0801E4D4 @ =gUnknown_020132F8
	str r3, [r0]
	movs r0, #2
	bl sub_08000704
	b _0801E586
	.align 2, 0
_0801E4D4: .4byte gUnknown_020132F8
_0801E4D8: .4byte 0x05000200
_0801E4DC: .4byte gUnknown_0831E360
_0801E4E0: .4byte gUnknown_02038BE0
_0801E4E4: .4byte 0x06010000
_0801E4E8: .4byte gUnknown_02015710
_0801E4EC: .4byte 0x06004000
_0801E4F0: .4byte 0x0600C000
_0801E4F4: .4byte gUnknown_02038BBC
_0801E4F8: .4byte gUnknown_086C91A8
_0801E4FC: .4byte 0x06004200
_0801E500: .4byte gUnknown_086C4FE6
_0801E504: .4byte gUnknown_0202F350
_0801E508: .4byte 0x0000FFFF
_0801E50C: .4byte gUnknown_02038394
_0801E510: .4byte gUnknown_02038388
_0801E514: .4byte gUnknown_020132E8
_0801E518: .4byte gUnknown_0203A440
_0801E51C: .4byte gUnknown_02039BD0
_0801E520: .4byte gUnknown_08693364
_0801E524: .4byte gUnknown_08693164
_0801E528: .4byte gUnknown_020383A0
_0801E52C: .4byte 0xFFFFFE00
_0801E530: .4byte 0xFFFFFC00
_0801E534: .4byte 0x0000012B
_0801E538: .4byte gUnknown_02038364
_0801E53C:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bne _0801E558
	ldr r0, _0801E554 @ =0x04000050
	movs r1, #0xff
	strh r1, [r0]
	adds r0, #4
	movs r1, #0
	strh r1, [r0]
	b _0801E586
	.align 2, 0
_0801E554: .4byte 0x04000050
_0801E558:
	ldr r3, _0801E56C @ =0xFFFFFED4
	adds r0, r2, r3
	cmp r0, #0xf
	bhi _0801E574
	ldr r1, _0801E570 @ =0x04000054
	adds r3, #1
	adds r0, r2, r3
	strh r0, [r1]
	b _0801E586
	.align 2, 0
_0801E56C: .4byte 0xFFFFFED4
_0801E570: .4byte 0x04000054
_0801E574:
	ldr r0, _0801E598 @ =gUnknown_0202F324
	movs r1, #0
	strh r1, [r0]
	ldr r1, _0801E59C @ =gUnknown_02038BB8
	movs r0, #0x14
	strh r0, [r1]
	movs r2, #0
	ldr r3, _0801E5A0 @ =gUnknown_020132F8
	str r2, [r3]
_0801E586:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E598: .4byte gUnknown_0202F324
_0801E59C: .4byte gUnknown_02038BB8
_0801E5A0: .4byte gUnknown_020132F8

	thumb_func_start sub_0801E5A4
sub_0801E5A4: @ 0x0801E5A4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0801E6AC @ =0x04000008
	ldr r2, _0801E6B0 @ =0x00000601
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _0801E6B4 @ =0x00000707
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0801E6B8 @ =0x0000F08E
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xc
	ldr r3, _0801E6BC @ =0x00001741
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x50
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	bl sub_080006F8
	movs r0, #1
	bl sub_0800056C
	ldr r0, _0801E6C0 @ =gUnknown_020132F0
	movs r1, #0
	str r1, [r0]
	ldr r2, _0801E6C4 @ =gUnknown_0202F32C
	ldr r5, _0801E6C8 @ =gUnknown_02038364
	ldr r0, _0801E6CC @ =gUnknown_020132E0
	strh r1, [r0]
	strh r1, [r5]
	strh r1, [r2]
	ldr r0, _0801E6D0 @ =gUnknown_020383A0
	str r1, [r0, #4]
	str r1, [r0]
	ldr r0, _0801E6D4 @ =gUnknown_02038BBC
	str r1, [r0]
	ldr r0, _0801E6D8 @ =gUnknown_02038380
	str r1, [r0, #4]
	str r1, [r0]
	ldr r0, _0801E6DC @ =gUnknown_0203A3D4
	str r1, [r0]
	ldr r2, _0801E6E0 @ =gUnknown_02038388
	movs r0, #1
	str r0, [r2]
	ldr r4, _0801E6E4 @ =gUnknown_02038BB8
	strh r1, [r4]
	ldr r0, _0801E6E8 @ =gUnknown_020132F8
	str r1, [r0]
	ldr r0, _0801E6EC @ =gUnknown_0203837C
	strh r1, [r0]
	ldr r3, _0801E6F0 @ =gUnknown_0202F318
	ldr r2, _0801E6F4 @ =gUnknown_0203C460
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2]
	str r0, [r3]
	ldr r0, _0801E6F8 @ =gUnknown_02038390
	str r1, [r0]
	ldr r0, _0801E6FC @ =gUnknown_02038BB0
	strh r1, [r0]
	ldr r2, _0801E700 @ =gUnknown_0203A440
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r2]
	ldr r0, _0801E704 @ =gUnknown_0203A444
	strh r1, [r0]
	ldr r0, _0801E708 @ =gUnknown_02038398
	strh r1, [r0]
	ldr r0, _0801E70C @ =gUnknown_02038BE0
	movs r1, #0xfe
	lsls r1, r1, #4
	movs r2, #0
	bl sub_08000498
_0801E646:
	ldr r2, _0801E6DC @ =gUnknown_0203A3D4
	movs r1, #0
	ldr r0, [r2]
	cmp r0, #0
	bne _0801E652
	movs r1, #1
_0801E652:
	str r1, [r2]
	ldr r2, _0801E6E0 @ =gUnknown_02038388
	movs r1, #0
	ldr r0, [r2]
	cmp r0, #0
	bne _0801E660
	movs r1, #1
_0801E660:
	str r1, [r2]
	bl sub_0803D380
	ldrh r0, [r4]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bhi _0801E68A
	adds r0, r6, #0
	bl sub_08038924
	ldr r0, _0801E710 @ =gUnknown_03000B50
	ldr r0, [r0]
	cmp r0, #0
	beq _0801E68A
	ldr r1, _0801E704 @ =gUnknown_0203A444
	movs r0, #5
	strh r0, [r1]
	bl sub_080006F8
_0801E68A:
	bl sub_0801E82C
	bl sub_0801E9B0
	ldrh r0, [r4]
	cmp r0, #5
	bne _0801E714
	ldr r2, _0801E704 @ =gUnknown_0203A444
	ldrh r0, [r2]
	cmp r0, #0
	bne _0801E744
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801E744
	b _0801E740
	.align 2, 0
_0801E6AC: .4byte 0x04000008
_0801E6B0: .4byte 0x00000601
_0801E6B4: .4byte 0x00000707
_0801E6B8: .4byte 0x0000F08E
_0801E6BC: .4byte 0x00001741
_0801E6C0: .4byte gUnknown_020132F0
_0801E6C4: .4byte gUnknown_0202F32C
_0801E6C8: .4byte gUnknown_02038364
_0801E6CC: .4byte gUnknown_020132E0
_0801E6D0: .4byte gUnknown_020383A0
_0801E6D4: .4byte gUnknown_02038BBC
_0801E6D8: .4byte gUnknown_02038380
_0801E6DC: .4byte gUnknown_0203A3D4
_0801E6E0: .4byte gUnknown_02038388
_0801E6E4: .4byte gUnknown_02038BB8
_0801E6E8: .4byte gUnknown_020132F8
_0801E6EC: .4byte gUnknown_0203837C
_0801E6F0: .4byte gUnknown_0202F318
_0801E6F4: .4byte gUnknown_0203C460
_0801E6F8: .4byte gUnknown_02038390
_0801E6FC: .4byte gUnknown_02038BB0
_0801E700: .4byte gUnknown_0203A440
_0801E704: .4byte gUnknown_0203A444
_0801E708: .4byte gUnknown_02038398
_0801E70C: .4byte gUnknown_02038BE0
_0801E710: .4byte gUnknown_03000B50
_0801E714:
	cmp r0, #0xf
	bne _0801E744
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _0801E744
	ldr r0, _0801E784 @ =gUnknown_02038398
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801E744
	ldr r2, _0801E788 @ =gUnknown_0203A444
	ldrh r0, [r2]
	cmp r0, #0
	bne _0801E744
	ldr r0, _0801E78C @ =gUnknown_02038360
	ldrh r1, [r5]
	ldrh r0, [r0]
	orrs r1, r0
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0801E744
_0801E740:
	movs r0, #1
	strh r0, [r2]
_0801E744:
	ldrh r0, [r4]
	ldr r2, _0801E790 @ =gUnknown_02038BB8
	cmp r0, #0x14
	beq _0801E7AC
	ldrb r0, [r6]
	cmp r0, #1
	bne _0801E75C
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0801E7D8
_0801E75C:
	ldr r0, _0801E788 @ =gUnknown_0203A444
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801E794
	ldrh r0, [r2]
	adds r1, r0, #0
	cmp r1, #5
	beq _0801E77A
	cmp r1, #3
	beq _0801E77A
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bhi _0801E794
_0801E77A:
	adds r0, r6, #0
	bl sub_0803655C
	b _0801E646
	.align 2, 0
_0801E784: .4byte gUnknown_02038398
_0801E788: .4byte gUnknown_0203A444
_0801E78C: .4byte gUnknown_02038360
_0801E790: .4byte gUnknown_02038BB8
_0801E794:
	ldr r0, _0801E7A8 @ =gUnknown_08692CA4
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r6, #0
	bl sub_0803D79C
	b _0801E646
	.align 2, 0
_0801E7A8: .4byte gUnknown_08692CA4
_0801E7AC:
	ldr r0, _0801E7D0 @ =gUnknown_0202F324
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x41
	strb r0, [r1]
	ldr r1, _0801E7D4 @ =gUnknown_02038BE0
	adds r0, r1, #0
	adds r0, #0x54
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bgt _0801E7E4
	adds r2, r6, #0
	adds r2, #0x42
	movs r0, #0
	strh r0, [r2]
	b _0801E7EA
	.align 2, 0
_0801E7D0: .4byte gUnknown_0202F324
_0801E7D4: .4byte gUnknown_02038BE0
_0801E7D8:
	ldr r1, _0801E7E0 @ =gUnknown_0202F324
	movs r0, #3
	strh r0, [r1]
	b _0801E7AC
	.align 2, 0
_0801E7E0: .4byte gUnknown_0202F324
_0801E7E4:
	adds r0, r6, #0
	adds r0, #0x42
	strh r2, [r0]
_0801E7EA:
	ldr r2, _0801E804 @ =0x00000844
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bgt _0801E808
	adds r1, r6, #0
	adds r1, #0x44
	movs r0, #0
	strh r0, [r1]
	b _0801E80E
	.align 2, 0
_0801E804: .4byte 0x00000844
_0801E808:
	adds r0, r6, #0
	adds r0, #0x44
	strh r1, [r0]
_0801E80E:
	ldr r0, _0801E828 @ =gUnknown_02039BCC
	ldr r0, [r0]
	adds r0, #5
	movs r1, #6
	bl sub_0803D34C
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801E828: .4byte gUnknown_02039BCC

	thumb_func_start sub_0801E82C
sub_0801E82C: @ 0x0801E82C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _0801E954 @ =0x04000010
	ldr r0, _0801E958 @ =gUnknown_020132E4
	ldr r6, _0801E95C @ =gUnknown_0203A3D4
	ldr r1, [r6]
	lsls r2, r1, #1
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _0801E960 @ =gUnknown_02038BC0
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _0801E964 @ =gUnknown_02038394
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _0801E968 @ =gUnknown_020132E8
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #0xa
	ldr r0, _0801E96C @ =gUnknown_02039BC0
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _0801E970 @ =gUnknown_0203836C
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _0801E974 @ =gUnknown_0202F31C
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _0801E978 @ =gUnknown_020132F4
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r3]
	adds r3, #2
	ldr r0, _0801E97C @ =gUnknown_0202F330
	lsls r2, r1, #2
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldr r0, _0801E980 @ =gUnknown_0203C468
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r3]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	lsls r1, r1, #0xa
	ldr r2, _0801E984 @ =gUnknown_02039BD0
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08000314
	ldr r0, _0801E988 @ =0x06003000
	ldr r1, [r6]
	lsls r1, r1, #0xb
	ldr r2, _0801E98C @ =gUnknown_030013F0
	adds r1, r1, r2
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	bl sub_08000314
	ldr r5, _0801E990 @ =gUnknown_02038BBC
	ldr r0, [r5]
	cmp r0, #0
	beq _0801E8F2
	ldr r0, _0801E994 @ =0x06003800
	ldr r1, [r6]
	lsls r1, r1, #0xb
	ldr r2, _0801E998 @ =gUnknown_0202F350
	adds r1, r1, r2
	adds r2, r4, #0
	bl sub_08000314
	ldr r0, _0801E99C @ =0x06008000
	ldr r1, [r6]
	lsls r1, r1, #0xe
	ldr r2, _0801E9A0 @ =gUnknown_02030360
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08000314
	movs r0, #0
	str r0, [r5]
_0801E8F2:
	movs r4, #0
	ldr r1, _0801E9A4 @ =gUnknown_02038380
	ldr r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bhs _0801E934
	ldr r5, _0801E9A8 @ =gUnknown_0203A450
	movs r0, #8
	adds r0, r0, r5
	mov r8, r0
	adds r7, r1, #0
_0801E90C:
	lsls r2, r4, #4
	ldr r0, [r6]
	lsls r0, r0, #0xc
	adds r2, r2, r0
	adds r0, r5, #4
	adds r0, r2, r0
	ldr r0, [r0]
	adds r1, r2, r5
	ldr r1, [r1]
	add r2, r8
	ldr r2, [r2]
	bl sub_080002EC
	adds r4, #1
	ldr r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r4, r0
	blo _0801E90C
_0801E934:
	ldr r1, _0801E9A4 @ =gUnknown_02038380
	ldr r0, _0801E95C @ =gUnknown_0203A3D4
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r1, _0801E9AC @ =gUnknown_020132F0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E954: .4byte 0x04000010
_0801E958: .4byte gUnknown_020132E4
_0801E95C: .4byte gUnknown_0203A3D4
_0801E960: .4byte gUnknown_02038BC0
_0801E964: .4byte gUnknown_02038394
_0801E968: .4byte gUnknown_020132E8
_0801E96C: .4byte gUnknown_02039BC0
_0801E970: .4byte gUnknown_0203836C
_0801E974: .4byte gUnknown_0202F31C
_0801E978: .4byte gUnknown_020132F4
_0801E97C: .4byte gUnknown_0202F330
_0801E980: .4byte gUnknown_0203C468
_0801E984: .4byte gUnknown_02039BD0
_0801E988: .4byte 0x06003000
_0801E98C: .4byte gUnknown_030013F0
_0801E990: .4byte gUnknown_02038BBC
_0801E994: .4byte 0x06003800
_0801E998: .4byte gUnknown_0202F350
_0801E99C: .4byte 0x06008000
_0801E9A0: .4byte gUnknown_02030360
_0801E9A4: .4byte gUnknown_02038380
_0801E9A8: .4byte gUnknown_0203A450
_0801E9AC: .4byte gUnknown_020132F0

	thumb_func_start sub_0801E9B0
sub_0801E9B0: @ 0x0801E9B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0801EA0C @ =0x04000130
	ldrh r0, [r0]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r3, _0801EA10 @ =gUnknown_02038364
	ldr r2, _0801EA14 @ =gUnknown_0202F32C
	ldrh r1, [r2]
	adds r0, r6, #0
	bics r0, r1
	strh r0, [r3]
	strh r6, [r2]
	ldr r1, _0801EA18 @ =gUnknown_020132E0
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	mov sl, r3
	mov ip, r1
	ldr r0, _0801EA1C @ =gUnknown_03001368
	mov r8, r0
	ldr r1, _0801EA20 @ =gUnknown_0203C450
	mov sb, r1
	ldr r7, _0801EA24 @ =gUnknown_02038370
	mov r5, ip
_0801E9EA:
	adds r2, r4, r7
	ldrb r3, [r2]
	adds r1, r6, #0
	asrs r1, r4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801EA28
	adds r0, r3, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801EA2A
	movs r0, #0x20
	strb r0, [r2]
	b _0801EA2A
	.align 2, 0
_0801EA0C: .4byte 0x04000130
_0801EA10: .4byte gUnknown_02038364
_0801EA14: .4byte gUnknown_0202F32C
_0801EA18: .4byte gUnknown_020132E0
_0801EA1C: .4byte gUnknown_03001368
_0801EA20: .4byte gUnknown_0203C450
_0801EA24: .4byte gUnknown_02038370
_0801EA28:
	strb r1, [r2]
_0801EA2A:
	adds r0, r4, r7
	ldrb r0, [r0]
	cmp r0, #0x20
	bls _0801EA48
	eors r3, r0
	movs r0, #8
	ands r3, r0
	cmp r3, #0
	beq _0801EA48
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
_0801EA48:
	ldrh r0, [r5]
	lsrs r0, r0, #1
	strh r0, [r5]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _0801E9EA
	mov r3, ip
	ldrh r0, [r3]
	lsrs r0, r0, #5
	mov r2, sl
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r3]
	mov r3, r8
	ldr r2, [r3]
	ldr r0, [r3]
	mov r3, sb
	ldrh r1, [r3]
	eors r0, r1
	ands r2, r0
	ldr r0, _0801EA8C @ =gUnknown_02038360
	strh r2, [r0]
	mov r1, r8
	ldr r0, [r1]
	strh r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EA8C: .4byte gUnknown_02038360

	thumb_func_start sub_0801EA90
sub_0801EA90: @ 0x0801EA90
	push {r4, r5, lr}
	sub sp, #0x64
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0801EABC @ =gUnknown_0831BB88
	mov r0, sp
	movs r2, #0x64
	bl sub_0803DEBC
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801EAC0
	lsls r0, r5, #2
	add r0, sp
	ldr r0, [r0]
	cmp r0, #0
	bne _0801EAC0
	movs r0, #0x67
	bl sub_080005E8
	b _0801EACA
	.align 2, 0
_0801EABC: .4byte gUnknown_0831BB88
_0801EAC0:
	lsls r0, r5, #2
	add r0, sp
	ldr r0, [r0]
	bl sub_080005E8
_0801EACA:
	add sp, #0x64
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801EAD4
sub_0801EAD4: @ 0x0801EAD4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x1c
	ldr r0, _0801EB50 @ =gUnknown_0203C458
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp]
	ldr r0, _0801EB54 @ =0x06004000
	str r0, [sp, #4]
	ldr r6, _0801EB58 @ =gUnknown_0202F350
	str r6, [sp, #8]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	mov sb, r0
	str r0, [sp, #0xc]
	ldr r0, _0801EB5C @ =0x0600C000
	str r0, [sp, #0x10]
	ldr r1, _0801EB60 @ =gUnknown_02030360
	mov r8, r1
	str r1, [sp, #0x14]
	ldr r0, _0801EB64 @ =0x05000100
	str r0, [sp, #0x18]
	mov r0, sp
	bl sub_0801C274
	ldr r4, _0801EB68 @ =gUnknown_030027F0
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl sub_08000314
	adds r0, r4, r5
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08000314
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r6, r1
	adds r2, r1, #0
	adds r1, r6, #0
	bl sub_08000314
	movs r0, #0x80
	lsls r0, r0, #7
	add r0, r8
	movs r2, #0x80
	lsls r2, r2, #7
	mov r1, r8
	bl sub_08000314
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801EB50: .4byte gUnknown_0203C458
_0801EB54: .4byte 0x06004000
_0801EB58: .4byte gUnknown_0202F350
_0801EB5C: .4byte 0x0600C000
_0801EB60: .4byte gUnknown_02030360
_0801EB64: .4byte 0x05000100
_0801EB68: .4byte gUnknown_030027F0

	thumb_func_start sub_0801EB6C
sub_0801EB6C: @ 0x0801EB6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0801EC1C @ =gUnknown_0203C458
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x13
	bne _0801EC40
	ldr r0, _0801EC20 @ =gUnknown_020132F0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801EB8E
	b _0801EE18
_0801EB8E:
	ldr r0, _0801EC24 @ =gUnknown_030027F0
	movs r2, #0xdf
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r5, [r1]
	movs r4, #0xf
	mov ip, r0
	ldr r0, _0801EC28 @ =gUnknown_0203A450
	mov r8, r0
	ldr r1, _0801EC2C @ =gUnknown_02038380
	mov sl, r1
	ldr r2, _0801EC30 @ =gUnknown_02038388
	mov sb, r2
	ldr r6, _0801EC34 @ =0x0000FFFF
	movs r3, #0xde
	lsls r3, r3, #1
	add r3, ip
	ldr r2, _0801EC38 @ =0x000003BE
	add r2, ip
_0801EBB4:
	ldrh r0, [r3]
	strh r0, [r2]
	ldrh r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r3, #2]
	subs r3, #2
	subs r2, #2
	subs r4, #1
	cmp r4, #0
	bgt _0801EBB4
	movs r0, #0xe8
	lsls r0, r0, #2
	add r0, ip
	strh r5, [r0]
	movs r1, #0xd0
	lsls r1, r1, #1
	add r1, ip
	strh r5, [r1]
	mov r0, sb
	ldr r2, [r0]
	lsls r3, r2, #2
	add r3, sl
	ldr r0, [r3]
	lsls r0, r0, #4
	lsls r2, r2, #0xc
	adds r0, r0, r2
	add r0, r8
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r1, _0801EC3C @ =0x050001A0
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r1, #8
	adds r0, r0, r1
	movs r4, #0x20
	str r4, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r1, #4
	adds r0, r0, r1
	str r4, [r0]
	b _0801EE12
	.align 2, 0
_0801EC1C: .4byte gUnknown_0203C458
_0801EC20: .4byte gUnknown_020132F0
_0801EC24: .4byte gUnknown_030027F0
_0801EC28: .4byte gUnknown_0203A450
_0801EC2C: .4byte gUnknown_02038380
_0801EC30: .4byte gUnknown_02038388
_0801EC34: .4byte 0x0000FFFF
_0801EC38: .4byte 0x000003BE
_0801EC3C: .4byte 0x050001A0
_0801EC40:
	cmp r0, #0x16
	beq _0801EC48
	cmp r0, #0x18
	bne _0801ED04
_0801EC48:
	ldr r0, _0801ECE4 @ =gUnknown_020132F0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801EC56
	b _0801EE18
_0801EC56:
	ldr r0, _0801ECE8 @ =gUnknown_030027F0
	movs r2, #0x9f
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r5, [r1]
	movs r4, #0xf
	mov ip, r0
	ldr r0, _0801ECEC @ =gUnknown_0203A450
	mov r8, r0
	ldr r1, _0801ECF0 @ =gUnknown_02038380
	mov sl, r1
	ldr r2, _0801ECF4 @ =gUnknown_02038388
	mov sb, r2
	ldr r6, _0801ECF8 @ =0x0000FFFF
	movs r3, #0x9e
	lsls r3, r3, #1
	add r3, ip
	ldr r2, _0801ECFC @ =0x0000033E
	add r2, ip
_0801EC7C:
	ldrh r0, [r3]
	strh r0, [r2]
	ldrh r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r3, #2]
	subs r3, #2
	subs r2, #2
	subs r4, #1
	cmp r4, #0
	bgt _0801EC7C
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, ip
	strh r5, [r0]
	movs r1, #0x90
	lsls r1, r1, #1
	add r1, ip
	strh r5, [r1]
	mov r0, sb
	ldr r2, [r0]
	lsls r3, r2, #2
	add r3, sl
	ldr r0, [r3]
	lsls r0, r0, #4
	lsls r2, r2, #0xc
	adds r0, r0, r2
	add r0, r8
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r1, _0801ED00 @ =0x05000120
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r1, #8
	adds r0, r0, r1
	movs r4, #0x20
	str r4, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r1, #4
	adds r0, r0, r1
	str r4, [r0]
	b _0801EE12
	.align 2, 0
_0801ECE4: .4byte gUnknown_020132F0
_0801ECE8: .4byte gUnknown_030027F0
_0801ECEC: .4byte gUnknown_0203A450
_0801ECF0: .4byte gUnknown_02038380
_0801ECF4: .4byte gUnknown_02038388
_0801ECF8: .4byte 0x0000FFFF
_0801ECFC: .4byte 0x0000033E
_0801ED00: .4byte 0x05000120
_0801ED04:
	cmp r0, #0xf
	bne _0801ED8C
	ldr r0, _0801ED6C @ =gUnknown_020132F0
	ldr r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0801ED16
	b _0801EE18
_0801ED16:
	lsrs r0, r1, #3
	movs r1, #3
	ands r0, r1
	lsls r1, r0, #0xa
	movs r4, #0
	ldr r6, _0801ED70 @ =0x000003FF
	ldr r2, _0801ED74 @ =gUnknown_0203A450
	mov r8, r2
	ldr r0, _0801ED78 @ =gUnknown_02038380
	mov sl, r0
	ldr r2, _0801ED7C @ =gUnknown_02038388
	mov sb, r2
	ldr r7, _0801ED80 @ =gUnknown_020383B0
	adds r5, r7, #0
	ldr r0, _0801ED84 @ =gUnknown_087B332C
	adds r3, r1, r0
_0801ED36:
	adds r1, r4, r5
	ldrb r0, [r3]
	adds r0, #0x80
	strb r0, [r1]
	adds r3, #1
	adds r4, #1
	cmp r4, r6
	ble _0801ED36
	mov r0, sb
	ldr r2, [r0]
	lsls r3, r2, #2
	add r3, sl
	ldr r0, [r3]
	lsls r0, r0, #4
	lsls r2, r2, #0xc
	adds r0, r0, r2
	add r0, r8
	str r7, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r1, _0801ED88 @ =0x0600D200
	b _0801EDEE
	.align 2, 0
_0801ED6C: .4byte gUnknown_020132F0
_0801ED70: .4byte 0x000003FF
_0801ED74: .4byte gUnknown_0203A450
_0801ED78: .4byte gUnknown_02038380
_0801ED7C: .4byte gUnknown_02038388
_0801ED80: .4byte gUnknown_020383B0
_0801ED84: .4byte gUnknown_087B332C
_0801ED88: .4byte 0x0600D200
_0801ED8C:
	cmp r0, #0x11
	bne _0801EE18
	ldr r0, _0801EE28 @ =gUnknown_020132F0
	ldr r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0801EE18
	lsrs r0, r1, #3
	movs r1, #3
	ands r0, r1
	lsls r1, r0, #0xa
	movs r4, #0
	ldr r6, _0801EE2C @ =0x000003FF
	ldr r2, _0801EE30 @ =gUnknown_0203A450
	mov r8, r2
	ldr r0, _0801EE34 @ =gUnknown_02038380
	mov sl, r0
	ldr r2, _0801EE38 @ =gUnknown_02038388
	mov sb, r2
	ldr r7, _0801EE3C @ =gUnknown_020383B0
	adds r5, r7, #0
	ldr r0, _0801EE40 @ =gUnknown_087B432C
	adds r3, r1, r0
_0801EDBC:
	adds r1, r4, r5
	ldrb r0, [r3]
	adds r0, #0x80
	strb r0, [r1]
	adds r3, #1
	adds r4, #1
	cmp r4, r6
	ble _0801EDBC
	mov r0, sb
	ldr r2, [r0]
	lsls r3, r2, #2
	add r3, sl
	ldr r0, [r3]
	lsls r0, r0, #4
	lsls r2, r2, #0xc
	adds r0, r0, r2
	add r0, r8
	str r7, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r1, _0801EE44 @ =0x0600C380
_0801EDEE:
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r1, #0xc
	adds r0, r0, r1
	movs r1, #0x40
	str r1, [r0]
_0801EE12:
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
_0801EE18:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EE28: .4byte gUnknown_020132F0
_0801EE2C: .4byte 0x000003FF
_0801EE30: .4byte gUnknown_0203A450
_0801EE34: .4byte gUnknown_02038380
_0801EE38: .4byte gUnknown_02038388
_0801EE3C: .4byte gUnknown_020383B0
_0801EE40: .4byte gUnknown_087B432C
_0801EE44: .4byte 0x0600C380

	thumb_func_start sub_0801EE48
sub_0801EE48: @ 0x0801EE48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	cmp r0, #0
	bne _0801EE62
	movs r0, #0
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	b _0801EE6A
_0801EE62:
	movs r2, #1
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
_0801EE6A:
	ldr r3, _0801EEBC @ =gUnknown_02038390
	ldr r7, [r3]
	ldr r4, _0801EEC0 @ =gUnknown_0203A440
	mov r8, r4
	ldr r6, [r4]
	ldr r1, _0801EEC4 @ =gUnknown_02038BE0
	ldr r5, [sp]
	lsls r2, r5, #7
	subs r0, r2, r5
	lsls r5, r0, #4
	adds r0, r1, #0
	adds r0, #0x80
	adds r0, r5, r0
	ldr r0, [r0]
	subs r0, #0x26
	str r2, [sp, #0x14]
	cmp r0, #2
	bhi _0801EED0
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, _0801EEC8 @ =gUnknown_0202F318
	str r0, [r2]
	adds r0, r1, #0
	adds r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	ldr r4, _0801EECC @ =gUnknown_0203C460
	str r0, [r4]
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r5, r8
	str r0, [r5]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [r3]
	ldr r0, [sp, #4]
	lsls r0, r0, #7
	str r0, [sp, #0x18]
	b _0801F146
	.align 2, 0
_0801EEBC: .4byte gUnknown_02038390
_0801EEC0: .4byte gUnknown_0203A440
_0801EEC4: .4byte gUnknown_02038BE0
_0801EEC8: .4byte gUnknown_0202F318
_0801EECC: .4byte gUnknown_0203C460
_0801EED0:
	ldr r1, [sp, #4]
	lsls r4, r1, #7
	subs r1, r4, r1
	lsls r1, r1, #4
	ldr r2, _0801EF34 @ =gUnknown_02038BE0
	adds r0, r1, r2
	adds r2, r5, r2
	ldr r3, [r0]
	ldr r0, [r2]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	ldr r0, _0801EF34 @ =gUnknown_02038BE0
	adds r0, #4
	adds r1, r1, r0
	adds r0, r5, r0
	ldr r1, [r1]
	ldr r0, [r0]
	subs r1, r1, r0
	mov sl, r1
	asrs r0, r3, #8
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r1, r1, #8
	adds r5, r1, #0
	muls r5, r1, r5
	adds r1, r5, #0
	adds r0, r0, r1
	bl sub_0803D37C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x82
	lsls r0, r0, #0x10
	bl sub_0803D7D4
	adds r1, r0, #0
	mov r0, r8
	str r1, [r0]
	movs r2, #0
	mov sb, r2
	str r4, [sp, #0x18]
	cmp r1, #0
	bne _0801EF38
	movs r0, #0x80
	lsls r0, r0, #9
	mov r3, r8
	str r0, [r3]
	b _0801EF58
	.align 2, 0
_0801EF34: .4byte gUnknown_02038BE0
_0801EF38:
	ldr r0, _0801EF48 @ =0x00007FFF
	cmp r1, r0
	bhi _0801EF4C
	mov sb, r1
	adds r0, #1
	mov r4, r8
	str r0, [r4]
	b _0801EF58
	.align 2, 0
_0801EF48: .4byte 0x00007FFF
_0801EF4C:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	bls _0801EF58
	mov r5, r8
	str r0, [r5]
_0801EF58:
	ldr r0, _0801EF80 @ =gUnknown_0203A440
	ldr r2, [r0]
	cmp r2, r6
	beq _0801EF9E
	cmp r2, r6
	bls _0801EF84
	subs r0, r2, r6
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bls _0801EF9E
	mov r0, sb
	cmp r0, #0
	bne _0801EF76
	mov sb, r2
_0801EF76:
	adds r0, r6, r1
	ldr r1, _0801EF80 @ =gUnknown_0203A440
	str r0, [r1]
	b _0801EF9E
	.align 2, 0
_0801EF80: .4byte gUnknown_0203A440
_0801EF84:
	subs r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bls _0801EF9E
	mov r3, sb
	cmp r3, #0
	bne _0801EF96
	mov sb, r2
_0801EF96:
	ldr r4, _0801F054 @ =0xFFFFFE00
	adds r0, r6, r4
	ldr r5, _0801F058 @ =gUnknown_0203A440
	str r0, [r5]
_0801EF9E:
	ldr r0, _0801F058 @ =gUnknown_0203A440
	ldr r0, [r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	ldr r4, _0801F05C @ =gUnknown_02039BC0
	ldr r0, _0801F060 @ =gUnknown_02038388
	ldr r5, [r0]
	lsls r5, r5, #1
	adds r4, r5, r4
	ldr r1, _0801F064 @ =gUnknown_08693364
	mov r8, r1
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0xc]
	bl sub_0803D7D4
	strh r0, [r4]
	ldr r4, _0801F068 @ =gUnknown_0203836C
	adds r4, r5, r4
	ldr r6, _0801F06C @ =gUnknown_08693164
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0xc]
	bl sub_0803D7D4
	strh r0, [r4]
	ldr r4, _0801F070 @ =gUnknown_0202F31C
	adds r4, r5, r4
	movs r1, #0
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0xc]
	bl sub_0803D7D4
	strh r0, [r4]
	ldr r0, _0801F074 @ =gUnknown_020132F4
	adds r5, r5, r0
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0xc]
	bl sub_0803D7D4
	strh r0, [r5]
	mov r4, sb
	cmp r4, #0
	beq _0801F0A8
	ldr r0, [sp, #0x10]
	asrs r5, r0, #4
	adds r0, r5, #0
	muls r0, r5, r0
	mov r1, sl
	asrs r4, r1, #4
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r0, r1
	bl sub_0803D37C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0xd
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803D340
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x18
	ldr r4, _0801F078 @ =gUnknown_02038390
	mov r0, sb
	muls r0, r6, r0
	ldr r2, _0801F058 @ =gUnknown_0203A440
	ldr r1, [r2]
	bl sub_0803DD84
	str r0, [r4]
	cmp r0, r7
	blt _0801F07C
	subs r1, r0, r7
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _0801F08C
	adds r0, r7, r0
	b _0801F08A
	.align 2, 0
_0801F054: .4byte 0xFFFFFE00
_0801F058: .4byte gUnknown_0203A440
_0801F05C: .4byte gUnknown_02039BC0
_0801F060: .4byte gUnknown_02038388
_0801F064: .4byte gUnknown_08693364
_0801F068: .4byte gUnknown_0203836C
_0801F06C: .4byte gUnknown_08693164
_0801F070: .4byte gUnknown_0202F31C
_0801F074: .4byte gUnknown_020132F4
_0801F078: .4byte gUnknown_02038390
_0801F07C:
	subs r1, r7, r0
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _0801F08C
	ldr r3, _0801F09C @ =0xFFFFFC00
	adds r0, r7, r3
_0801F08A:
	str r0, [r4]
_0801F08C:
	ldr r4, _0801F0A0 @ =gUnknown_0202F318
	mov r8, r4
	ldr r4, _0801F0A4 @ =gUnknown_02038BE0
	ldr r0, [sp, #0x14]
	ldr r1, [sp]
	subs r3, r0, r1
	b _0801F10C
	.align 2, 0
_0801F09C: .4byte 0xFFFFFC00
_0801F0A0: .4byte gUnknown_0202F318
_0801F0A4: .4byte gUnknown_02038BE0
_0801F0A8:
	ldr r2, [sp, #0x10]
	asrs r5, r2, #4
	adds r0, r5, #0
	muls r0, r5, r0
	mov r3, sl
	asrs r4, r3, #4
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r0, r1
	bl sub_0803D37C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0xd
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0803D340
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x18
	ldr r2, _0801F0EC @ =gUnknown_02038390
	str r6, [r2]
	cmp r6, r7
	blt _0801F0F0
	subs r1, r6, r7
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _0801F100
	adds r0, r7, r0
	b _0801F0FE
	.align 2, 0
_0801F0EC: .4byte gUnknown_02038390
_0801F0F0:
	subs r1, r7, r6
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _0801F100
	ldr r4, _0801F210 @ =0xFFFFFC00
	adds r0, r7, r4
_0801F0FE:
	str r0, [r2]
_0801F100:
	ldr r0, _0801F214 @ =gUnknown_0202F318
	mov r8, r0
	ldr r4, _0801F218 @ =gUnknown_02038BE0
	ldr r1, [sp, #0x14]
	ldr r2, [sp]
	subs r3, r1, r2
_0801F10C:
	lsls r3, r3, #4
	adds r6, r3, r4
	ldr r1, _0801F21C @ =gUnknown_02038390
	ldr r0, _0801F220 @ =gUnknown_08693364
	lsls r2, r5, #1
	adds r0, r2, r0
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r5, [r1]
	adds r1, r5, #0
	muls r1, r0, r1
	asrs r1, r1, #8
	ldr r0, [r6]
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1]
	ldr r6, _0801F224 @ =gUnknown_0203C460
	adds r0, r4, #4
	adds r3, r3, r0
	ldr r0, _0801F228 @ =gUnknown_08693164
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r1, r5, #0
	muls r1, r0, r1
	asrs r1, r1, #8
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r6]
_0801F146:
	ldr r2, _0801F22C @ =gUnknown_0202F330
	mov sl, r2
	ldr r3, _0801F230 @ =gUnknown_02038388
	mov sb, r3
	ldr r4, [r3]
	lsls r5, r4, #2
	adds r6, r5, r2
	movs r0, #0xf0
	lsls r0, r0, #0xf
	ldr r1, [sp, #8]
	bl sub_0803D7D4
	lsls r0, r0, #8
	ldr r2, _0801F214 @ =gUnknown_0202F318
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r6]
	ldr r3, _0801F234 @ =gUnknown_0203C468
	mov r8, r3
	add r5, r8
	movs r0, #0xa0
	lsls r0, r0, #0xf
	ldr r1, [sp, #0xc]
	bl sub_0803D7D4
	lsls r0, r0, #8
	ldr r2, _0801F224 @ =gUnknown_0203C460
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r5]
	ldr r1, _0801F238 @ =gUnknown_02038394
	lsls r4, r4, #1
	adds r1, r4, r1
	ldr r0, [r6]
	lsrs r0, r0, #0xd
	strh r0, [r1]
	ldr r0, _0801F23C @ =gUnknown_020132E8
	adds r4, r4, r0
	ldr r0, [r5]
	lsrs r0, r0, #0xb
	strh r0, [r4]
	ldr r3, [sp, #0x14]
	ldr r4, [sp]
	subs r0, r3, r4
	lsls r2, r0, #4
	ldr r0, _0801F218 @ =gUnknown_02038BE0
	adds r3, r2, r0
	ldr r0, [r3]
	ldr r1, [r6]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #8]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #8]
	ldr r0, _0801F218 @ =gUnknown_02038BE0
	adds r0, #0x80
	adds r0, r2, r0
	ldr r1, [r0]
	adds r0, r1, #0
	subs r0, #0x15
	mov r6, sb
	mov sb, sl
	mov r7, r8
	cmp r0, #2
	bls _0801F1E6
	cmp r1, #0x1d
	beq _0801F1E6
	cmp r1, #0x18
	beq _0801F1E6
	cmp r1, #0x19
	beq _0801F1E6
	cmp r1, #0xc
	beq _0801F1E6
	cmp r1, #0xd
	beq _0801F1E6
	cmp r1, #0x1a
	beq _0801F1E6
	cmp r1, #0x1e
	bne _0801F244
_0801F1E6:
	ldr r3, [sp, #0x14]
	ldr r4, [sp]
	subs r2, r3, r4
	lsls r2, r2, #4
	ldr r5, _0801F218 @ =gUnknown_02038BE0
	adds r3, r2, r5
	adds r0, r5, #0
	adds r0, #4
	adds r2, r2, r0
	ldr r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	ldr r0, _0801F240 @ =0xFFFFF000
	adds r1, r1, r0
	ldr r0, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #0xc]
	muls r0, r1, r0
	b _0801F256
	.align 2, 0
_0801F210: .4byte 0xFFFFFC00
_0801F214: .4byte gUnknown_0202F318
_0801F218: .4byte gUnknown_02038BE0
_0801F21C: .4byte gUnknown_02038390
_0801F220: .4byte gUnknown_08693364
_0801F224: .4byte gUnknown_0203C460
_0801F228: .4byte gUnknown_08693164
_0801F22C: .4byte gUnknown_0202F330
_0801F230: .4byte gUnknown_02038388
_0801F234: .4byte gUnknown_0203C468
_0801F238: .4byte gUnknown_02038394
_0801F23C: .4byte gUnknown_020132E8
_0801F240: .4byte 0xFFFFF000
_0801F244:
	ldr r0, _0801F2D8 @ =gUnknown_02038BE0
	adds r0, #4
	adds r0, r2, r0
	ldr r0, [r0]
	ldr r1, [r5]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r2, [sp, #0xc]
	muls r0, r2, r0
_0801F256:
	asrs r0, r0, #0x10
	strh r0, [r3, #0xa]
	ldr r2, _0801F2D8 @ =gUnknown_02038BE0
	ldr r3, [sp, #0x18]
	ldr r4, [sp, #4]
	subs r0, r3, r4
	lsls r3, r0, #4
	adds r4, r3, r2
	ldr r0, [r6]
	lsls r5, r0, #2
	mov r0, sb
	adds r1, r5, r0
	ldr r0, [r4]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #8]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r4, #8]
	adds r2, #0x80
	adds r2, r3, r2
	ldr r2, [r2]
	adds r0, r2, #0
	subs r0, #0x15
	cmp r0, #2
	bls _0801F2A8
	cmp r2, #0x1d
	beq _0801F2A8
	cmp r2, #0x18
	beq _0801F2A8
	cmp r2, #0x19
	beq _0801F2A8
	cmp r2, #0xc
	beq _0801F2A8
	cmp r2, #0xd
	beq _0801F2A8
	cmp r2, #0x1a
	beq _0801F2A8
	cmp r2, #0x1e
	bne _0801F2E0
_0801F2A8:
	ldr r3, [sp, #0x18]
	ldr r4, [sp, #4]
	subs r2, r3, r4
	lsls r2, r2, #4
	ldr r5, _0801F2D8 @ =gUnknown_02038BE0
	adds r3, r2, r5
	adds r0, r5, #0
	adds r0, #4
	adds r2, r2, r0
	ldr r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	ldr r0, _0801F2DC @ =0xFFFFF000
	adds r1, r1, r0
	ldr r0, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #0xc]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r3, #0xa]
	b _0801F2F8
	.align 2, 0
_0801F2D8: .4byte gUnknown_02038BE0
_0801F2DC: .4byte 0xFFFFF000
_0801F2E0:
	ldr r0, _0801F308 @ =gUnknown_02038BE0
	adds r0, #4
	adds r0, r3, r0
	adds r1, r5, r7
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r2, [sp, #0xc]
	muls r0, r2, r0
	asrs r0, r0, #0x10
	strh r0, [r4, #0xa]
_0801F2F8:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F308: .4byte gUnknown_02038BE0

	thumb_func_start sub_0801F30C
sub_0801F30C: @ 0x0801F30C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _0801F328 @ =gUnknown_02038BE0
	ldrh r0, [r7, #0xe]
	subs r0, #0x24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0801F32C
	movs r0, #0
	bl sub_08033F0C
	b _0801F54A
	.align 2, 0
_0801F328: .4byte gUnknown_02038BE0
_0801F32C:
	ldr r4, _0801F484 @ =gUnknown_0831E360
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0801F488 @ =gUnknown_02013310
	bl sub_0803D35C
	ldr r0, _0801F48C @ =0x05000200
	ldrh r1, [r7, #0xe]
	lsls r1, r1, #3
	adds r4, #4
	adds r1, r1, r4
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801F490 @ =0x05000230
	ldr r5, _0801F494 @ =gUnknown_0831BE74
	adds r4, r7, #0
	adds r4, #0xdc
	ldrh r1, [r4]
	lsls r1, r1, #3
	adds r2, r5, #4
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0x10
	movs r2, #0x10
	bl sub_080002EC
	ldr r0, _0801F498 @ =0x06010400
	ldrh r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r1, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_080002EC
	ldr r0, _0801F49C @ =0x05000220
	ldr r1, _0801F4A0 @ =gUnknown_087B2862
	movs r2, #0x10
	bl sub_080002EC
	ldr r0, _0801F4A4 @ =0x05000240
	ldr r5, _0801F4A8 @ =gUnknown_087B27C8
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_080002EC
	ldr r4, _0801F4AC @ =gUnknown_03002430
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_080002EC
	movs r0, #0x80
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_080002EC
	ldr r0, _0801F4B0 @ =0x05000260
	ldr r2, _0801F4B4 @ =gUnknown_0831DF4C
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r7, r3
	ldrh r1, [r1]
	lsls r1, r1, #5
	adds r2, #4
	mov r8, r2
	add r1, r8
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801F4B8 @ =0x0500027A
	ldr r1, _0801F4BC @ =gUnknown_0876A37E
	movs r2, #2
	bl sub_080002EC
	ldr r0, _0801F4C0 @ =0x06011600
	ldr r1, _0801F4C4 @ =gUnknown_08768464
	movs r2, #0x80
	bl sub_080002EC
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r0, r7, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801F3EA
	b _0801F4F8
_0801F3EA:
	ldr r0, _0801F4C8 @ =0x05000300
	ldr r5, _0801F4CC @ =gUnknown_0831DA6C
	ldr r2, _0801F4D0 @ =0x0000046A
	adds r4, r7, r2
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r2, r5, #4
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801F4D4 @ =0x06014000
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r1, [r1]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r2, r6, #0
	bl sub_080002EC
	ldr r0, _0801F4D8 @ =0x06014800
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r1, [r1]
	adds r2, r6, #0
	bl sub_080002EC
	ldr r0, _0801F4DC @ =0x05000320
	ldr r6, _0801F4E0 @ =gUnknown_0831DCAC
	ldr r3, _0801F4E4 @ =0x0000050C
	adds r5, r7, r3
	ldrh r1, [r5]
	lsls r1, r1, #5
	adds r2, r6, #4
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801F4E8 @ =0x06015000
	ldrh r1, [r5]
	lsls r1, r1, #5
	adds r1, r1, r6
	ldr r1, [r1]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r4, #0
	bl sub_080002EC
	ldr r0, _0801F4EC @ =0x06015200
	ldrh r1, [r5]
	lsls r1, r1, #5
	adds r1, r1, r6
	ldr r1, [r1]
	adds r2, r4, #0
	bl sub_080002EC
	ldr r0, _0801F4F0 @ =0x06015400
	ldrh r1, [r5]
	lsls r1, r1, #5
	adds r1, r1, r6
	ldr r1, [r1]
	adds r2, r4, #0
	bl sub_080002EC
	ldr r0, _0801F4F4 @ =0x06015600
	ldrh r1, [r5]
	lsls r1, r1, #5
	adds r1, r1, r6
	ldr r1, [r1]
	adds r2, r4, #0
	bl sub_080002EC
	b _0801F54A
	.align 2, 0
_0801F484: .4byte gUnknown_0831E360
_0801F488: .4byte gUnknown_02013310
_0801F48C: .4byte 0x05000200
_0801F490: .4byte 0x05000230
_0801F494: .4byte gUnknown_0831BE74
_0801F498: .4byte 0x06010400
_0801F49C: .4byte 0x05000220
_0801F4A0: .4byte gUnknown_087B2862
_0801F4A4: .4byte 0x05000240
_0801F4A8: .4byte gUnknown_087B27C8
_0801F4AC: .4byte gUnknown_03002430
_0801F4B0: .4byte 0x05000260
_0801F4B4: .4byte gUnknown_0831DF4C
_0801F4B8: .4byte 0x0500027A
_0801F4BC: .4byte gUnknown_0876A37E
_0801F4C0: .4byte 0x06011600
_0801F4C4: .4byte gUnknown_08768464
_0801F4C8: .4byte 0x05000300
_0801F4CC: .4byte gUnknown_0831DA6C
_0801F4D0: .4byte 0x0000046A
_0801F4D4: .4byte 0x06014000
_0801F4D8: .4byte 0x06014800
_0801F4DC: .4byte 0x05000320
_0801F4E0: .4byte gUnknown_0831DCAC
_0801F4E4: .4byte 0x0000050C
_0801F4E8: .4byte 0x06015000
_0801F4EC: .4byte 0x06015200
_0801F4F0: .4byte 0x06015400
_0801F4F4: .4byte 0x06015600
_0801F4F8:
	ldr r0, _0801F564 @ =0x05000300
	ldr r5, _0801F568 @ =gUnknown_0831DD0C
	ldr r1, _0801F56C @ =0x0000064A
	adds r4, r7, r1
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r2, r5, #4
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801F570 @ =0x06014000
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r1, [r1]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r2, r6, #0
	bl sub_080002EC
	ldr r0, _0801F574 @ =0x06014800
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r1, [r1]
	adds r2, r6, #0
	bl sub_080002EC
	ldr r0, _0801F578 @ =0x05000320
	movs r2, #0xd1
	lsls r2, r2, #3
	adds r1, r7, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, r8
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
_0801F54A:
	ldr r7, _0801F57C @ =gUnknown_02038BE0
	ldr r3, _0801F580 @ =0x000007FE
	adds r5, r7, r3
	ldrh r0, [r5]
	subs r0, #0x24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0801F584
	movs r0, #1
	bl sub_08033F0C
	b _0801F78E
	.align 2, 0
_0801F564: .4byte 0x05000300
_0801F568: .4byte gUnknown_0831DD0C
_0801F56C: .4byte 0x0000064A
_0801F570: .4byte 0x06014000
_0801F574: .4byte 0x06014800
_0801F578: .4byte 0x05000320
_0801F57C: .4byte gUnknown_02038BE0
_0801F580: .4byte 0x000007FE
_0801F584:
	ldr r4, _0801F6C0 @ =gUnknown_0831E360
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0801F6C4 @ =gUnknown_02021310
	bl sub_0803D35C
	ldr r0, _0801F6C8 @ =0x05000280
	ldrh r1, [r5]
	lsls r1, r1, #3
	adds r4, #4
	adds r1, r1, r4
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801F6CC @ =0x050002B0
	ldr r5, _0801F6D0 @ =gUnknown_0831BE74
	ldr r1, _0801F6D4 @ =0x000008CC
	adds r4, r7, r1
	ldrh r1, [r4]
	lsls r1, r1, #3
	adds r2, r5, #4
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0x10
	movs r2, #0x10
	bl sub_080002EC
	ldr r0, _0801F6D8 @ =0x06012400
	ldrh r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r1, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_080002EC
	ldr r0, _0801F6DC @ =0x050002A0
	ldr r1, _0801F6E0 @ =gUnknown_087B2882
	movs r2, #0x10
	bl sub_080002EC
	ldr r0, _0801F6E4 @ =0x050002C0
	ldr r1, _0801F6E8 @ =gUnknown_087B27C8
	movs r2, #0x10
	bl sub_080002EC
	ldr r0, _0801F6EC @ =0x050002E0
	ldr r2, _0801F6F0 @ =gUnknown_0831DF4C
	ldr r3, _0801F6F4 @ =0x00000AE8
	adds r1, r7, r3
	ldrh r1, [r1]
	lsls r1, r1, #5
	adds r2, #8
	mov r8, r2
	add r1, r8
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801F6F8 @ =0x050002FA
	ldr r1, _0801F6FC @ =gUnknown_0876A39E
	movs r2, #2
	bl sub_080002EC
	ldr r0, _0801F700 @ =0x06013600
	ldr r1, _0801F704 @ =gUnknown_087684E4
	movs r2, #0x80
	bl sub_080002EC
	ldr r1, _0801F708 @ =0x00000F18
	adds r0, r7, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801F620
	b _0801F73C
_0801F620:
	ldr r0, _0801F70C @ =0x05000380
	ldr r5, _0801F710 @ =gUnknown_0831DA6C
	ldr r2, _0801F714 @ =0x00000C5A
	adds r4, r7, r2
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r2, r5, #0
	adds r2, #8
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801F718 @ =0x06016000
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r1, [r1]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r2, r6, #0
	bl sub_080002EC
	ldr r0, _0801F71C @ =0x06016800
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r1, [r1]
	adds r2, r6, #0
	bl sub_080002EC
	ldr r0, _0801F720 @ =0x050003A0
	ldr r6, _0801F724 @ =gUnknown_0831DCAC
	ldr r3, _0801F728 @ =0x00000CFC
	adds r5, r7, r3
	ldrh r1, [r5]
	lsls r1, r1, #5
	adds r2, r6, #0
	adds r2, #8
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801F72C @ =0x06017000
	ldrh r1, [r5]
	lsls r1, r1, #5
	adds r1, r1, r6
	ldr r1, [r1]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r4, #0
	bl sub_080002EC
	ldr r0, _0801F730 @ =0x06017200
	ldrh r1, [r5]
	lsls r1, r1, #5
	adds r1, r1, r6
	ldr r1, [r1]
	adds r2, r4, #0
	bl sub_080002EC
	ldr r0, _0801F734 @ =0x06017400
	ldrh r1, [r5]
	lsls r1, r1, #5
	adds r1, r1, r6
	ldr r1, [r1]
	adds r2, r4, #0
	bl sub_080002EC
	ldr r0, _0801F738 @ =0x06017600
	ldrh r1, [r5]
	lsls r1, r1, #5
	adds r1, r1, r6
	ldr r1, [r1]
	adds r2, r4, #0
	bl sub_080002EC
	b _0801F78E
	.align 2, 0
_0801F6C0: .4byte gUnknown_0831E360
_0801F6C4: .4byte gUnknown_02021310
_0801F6C8: .4byte 0x05000280
_0801F6CC: .4byte 0x050002B0
_0801F6D0: .4byte gUnknown_0831BE74
_0801F6D4: .4byte 0x000008CC
_0801F6D8: .4byte 0x06012400
_0801F6DC: .4byte 0x050002A0
_0801F6E0: .4byte gUnknown_087B2882
_0801F6E4: .4byte 0x050002C0
_0801F6E8: .4byte gUnknown_087B27C8
_0801F6EC: .4byte 0x050002E0
_0801F6F0: .4byte gUnknown_0831DF4C
_0801F6F4: .4byte 0x00000AE8
_0801F6F8: .4byte 0x050002FA
_0801F6FC: .4byte gUnknown_0876A39E
_0801F700: .4byte 0x06013600
_0801F704: .4byte gUnknown_087684E4
_0801F708: .4byte 0x00000F18
_0801F70C: .4byte 0x05000380
_0801F710: .4byte gUnknown_0831DA6C
_0801F714: .4byte 0x00000C5A
_0801F718: .4byte 0x06016000
_0801F71C: .4byte 0x06016800
_0801F720: .4byte 0x050003A0
_0801F724: .4byte gUnknown_0831DCAC
_0801F728: .4byte 0x00000CFC
_0801F72C: .4byte 0x06017000
_0801F730: .4byte 0x06017200
_0801F734: .4byte 0x06017400
_0801F738: .4byte 0x06017600
_0801F73C:
	ldr r0, _0801F7A0 @ =0x05000380
	ldr r5, _0801F7A4 @ =gUnknown_0831DD0C
	ldr r1, _0801F7A8 @ =0x00000E3A
	adds r4, r7, r1
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r2, r5, #0
	adds r2, #8
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
	ldr r0, _0801F7AC @ =0x06016000
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r1, [r1]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r2, r6, #0
	bl sub_080002EC
	ldr r0, _0801F7B0 @ =0x06016800
	ldrh r1, [r4]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r1, [r1]
	adds r2, r6, #0
	bl sub_080002EC
	ldr r0, _0801F7B4 @ =0x050003A0
	ldr r2, _0801F7B8 @ =0x00000E78
	adds r1, r7, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	add r1, r8
	ldr r1, [r1]
	movs r2, #0x20
	bl sub_080002EC
_0801F78E:
	ldr r1, _0801F7BC @ =gUnknown_0202F344
	movs r0, #0
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F7A0: .4byte 0x05000380
_0801F7A4: .4byte gUnknown_0831DD0C
_0801F7A8: .4byte 0x00000E3A
_0801F7AC: .4byte 0x06016000
_0801F7B0: .4byte 0x06016800
_0801F7B4: .4byte 0x050003A0
_0801F7B8: .4byte 0x00000E78
_0801F7BC: .4byte gUnknown_0202F344

	thumb_func_start sub_0801F7C0
sub_0801F7C0: @ 0x0801F7C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	ldr r1, _0801F8B0 @ =gUnknown_02038BE0
	lsls r0, r0, #7
	ldr r2, [sp]
	subs r0, r0, r2
	lsls r0, r0, #4
	adds r5, r0, r1
	movs r3, #0xe5
	lsls r3, r3, #3
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801F7E8
	b _0801FAC4
_0801F7E8:
	ldr r3, _0801F8B4 @ =gUnknown_0203A450
	ldr r4, _0801F8B8 @ =gUnknown_02038388
	ldr r0, [r4]
	lsls r2, r0, #2
	ldr r6, _0801F8BC @ =gUnknown_02038380
	adds r2, r2, r6
	ldr r1, [r2]
	lsls r1, r1, #4
	lsls r7, r0, #0xc
	adds r1, r1, r7
	adds r1, r1, r3
	ldr r0, _0801F8C0 @ =0x0000046A
	adds r0, r0, r5
	mov ip, r0
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r4, _0801F8C4 @ =gUnknown_0831DA6C
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	adds r5, r3, #4
	mov r8, r5
	add r0, r8
	ldr r6, [sp]
	lsls r4, r6, #0xd
	ldr r5, _0801F8C8 @ =0x06014000
	adds r1, r4, r5
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r6, _0801F8CC @ =gUnknown_0203A458
	adds r0, r0, r6
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r5, _0801F8D0 @ =gUnknown_0203A45C
	adds r0, r0, r5
	movs r5, #0x20
	str r5, [r0]
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	lsls r1, r1, #4
	adds r1, r1, r7
	adds r1, r1, r3
	mov r6, ip
	ldrh r0, [r6]
	lsls r0, r0, #5
	ldr r6, _0801F8C4 @ =gUnknown_0831DA6C
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	add r0, r8
	ldr r6, _0801F8D4 @ =0x06014800
	adds r1, r4, r6
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, _0801F8CC @ =gUnknown_0203A458
	adds r0, r0, r1
	movs r6, #0x80
	lsls r6, r6, #4
	str r6, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, _0801F8D0 @ =gUnknown_0203A45C
	adds r0, r0, r1
	str r5, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	mov ip, r3
	mov sb, r4
	ldr r2, [sp]
	cmp r2, #0
	bne _0801F8D8
	lsls r2, r0, #4
	adds r2, r2, r7
	add r2, ip
	ldr r3, _0801F8B0 @ =gUnknown_02038BE0
	ldr r4, _0801F8C0 @ =0x0000046A
	adds r0, r3, r4
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0801F8C4 @ =gUnknown_0831DA6C
	adds r1, #4
	b _0801F8EC
	.align 2, 0
_0801F8B0: .4byte gUnknown_02038BE0
_0801F8B4: .4byte gUnknown_0203A450
_0801F8B8: .4byte gUnknown_02038388
_0801F8BC: .4byte gUnknown_02038380
_0801F8C0: .4byte 0x0000046A
_0801F8C4: .4byte gUnknown_0831DA6C
_0801F8C8: .4byte 0x06014000
_0801F8CC: .4byte gUnknown_0203A458
_0801F8D0: .4byte gUnknown_0203A45C
_0801F8D4: .4byte 0x06014800
_0801F8D8:
	lsls r2, r0, #4
	adds r2, r2, r7
	add r2, ip
	ldr r5, _0801FA68 @ =gUnknown_02038BE0
	ldr r6, _0801FA6C @ =0x00000C5A
	adds r0, r5, r6
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0801FA70 @ =gUnknown_0831DA6C
	adds r1, #8
_0801F8EC:
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0801FA74 @ =gUnknown_02038388
	ldr r1, [r0]
	lsls r2, r1, #2
	ldr r3, _0801FA78 @ =gUnknown_02038380
	adds r2, r2, r3
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r7, r1, #0xc
	adds r0, r0, r7
	ldr r4, _0801FA7C @ =gUnknown_0203A454
	adds r0, r0, r4
	ldr r5, [sp]
	lsls r5, r5, #7
	str r5, [sp, #4]
	ldr r6, _0801FA80 @ =0x05000300
	adds r1, r5, r6
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, _0801FA84 @ =gUnknown_0203A458
	adds r0, r0, r1
	movs r5, #0x20
	str r5, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r3, _0801FA88 @ =gUnknown_0203A45C
	adds r0, r0, r3
	str r5, [r0]
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	lsls r1, r1, #4
	adds r1, r1, r7
	add r1, ip
	ldr r4, [sp, #4]
	ldr r6, [sp]
	subs r3, r4, r6
	lsls r3, r3, #4
	ldr r0, _0801FA68 @ =gUnknown_02038BE0
	adds r3, r3, r0
	ldr r4, _0801FA8C @ =0x0000050C
	adds r3, r3, r4
	ldrh r0, [r3]
	lsls r0, r0, #5
	ldr r6, _0801FA90 @ =gUnknown_0831DCAC
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, _0801FA7C @ =gUnknown_0203A454
	adds r0, r0, r1
	ldr r1, _0801FA94 @ =0x06015000
	add r1, sb
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r4, _0801FA84 @ =gUnknown_0203A458
	adds r0, r0, r4
	movs r4, #0x80
	lsls r4, r4, #2
	str r4, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r6, _0801FA88 @ =gUnknown_0203A45C
	adds r0, r0, r6
	str r5, [r0]
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	lsls r1, r1, #4
	adds r1, r1, r7
	add r1, ip
	ldrh r0, [r3]
	lsls r0, r0, #5
	ldr r6, _0801FA90 @ =gUnknown_0831DCAC
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, _0801FA7C @ =gUnknown_0203A454
	adds r0, r0, r1
	ldr r1, _0801FA98 @ =0x06015200
	add r1, sb
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r6, _0801FA84 @ =gUnknown_0203A458
	adds r0, r0, r6
	str r4, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, _0801FA88 @ =gUnknown_0203A45C
	adds r0, r0, r1
	str r5, [r0]
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	lsls r1, r1, #4
	adds r1, r1, r7
	add r1, ip
	ldrh r0, [r3]
	lsls r0, r0, #5
	ldr r6, _0801FA90 @ =gUnknown_0831DCAC
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, _0801FA7C @ =gUnknown_0203A454
	adds r0, r0, r1
	ldr r1, _0801FA9C @ =0x06015400
	add r1, sb
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r6, _0801FA84 @ =gUnknown_0203A458
	adds r0, r0, r6
	str r4, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, _0801FA88 @ =gUnknown_0203A45C
	adds r0, r0, r1
	str r5, [r0]
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	lsls r1, r1, #4
	adds r1, r1, r7
	add r1, ip
	ldrh r0, [r3]
	lsls r0, r0, #5
	ldr r3, _0801FA90 @ =gUnknown_0831DCAC
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r6, _0801FA7C @ =gUnknown_0203A454
	adds r0, r0, r6
	ldr r1, _0801FAA0 @ =0x06015600
	add r1, sb
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, _0801FA84 @ =gUnknown_0203A458
	adds r0, r0, r1
	str r4, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r3, _0801FA88 @ =gUnknown_0203A45C
	adds r0, r0, r3
	str r5, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r4, [sp, #4]
	ldr r5, [sp]
	cmp r5, #0
	bne _0801FAA4
	lsls r2, r0, #4
	adds r2, r2, r7
	add r2, ip
	ldr r6, _0801FA68 @ =gUnknown_02038BE0
	ldr r1, _0801FA8C @ =0x0000050C
	adds r0, r6, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0801FA90 @ =gUnknown_0831DCAC
	adds r1, #4
	b _0801FC60
	.align 2, 0
_0801FA68: .4byte gUnknown_02038BE0
_0801FA6C: .4byte 0x00000C5A
_0801FA70: .4byte gUnknown_0831DA6C
_0801FA74: .4byte gUnknown_02038388
_0801FA78: .4byte gUnknown_02038380
_0801FA7C: .4byte gUnknown_0203A454
_0801FA80: .4byte 0x05000300
_0801FA84: .4byte gUnknown_0203A458
_0801FA88: .4byte gUnknown_0203A45C
_0801FA8C: .4byte 0x0000050C
_0801FA90: .4byte gUnknown_0831DCAC
_0801FA94: .4byte 0x06015000
_0801FA98: .4byte 0x06015200
_0801FA9C: .4byte 0x06015400
_0801FAA0: .4byte 0x06015600
_0801FAA4:
	lsls r2, r0, #4
	adds r2, r2, r7
	add r2, ip
	ldr r3, _0801FAB8 @ =gUnknown_02038BE0
	ldr r5, _0801FABC @ =0x00000CFC
	adds r0, r3, r5
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0801FAC0 @ =gUnknown_0831DCAC
	b _0801FC5E
	.align 2, 0
_0801FAB8: .4byte gUnknown_02038BE0
_0801FABC: .4byte 0x00000CFC
_0801FAC0: .4byte gUnknown_0831DCAC
_0801FAC4:
	ldr r4, _0801FB8C @ =gUnknown_0203A450
	ldr r6, _0801FB90 @ =gUnknown_02038388
	ldr r0, [r6]
	lsls r2, r0, #2
	ldr r1, _0801FB94 @ =gUnknown_02038380
	adds r2, r2, r1
	ldr r1, [r2]
	lsls r1, r1, #4
	lsls r7, r0, #0xc
	adds r1, r1, r7
	adds r1, r1, r4
	ldr r3, _0801FB98 @ =0x0000064A
	adds r3, r3, r5
	mov ip, r3
	ldrh r0, [r3]
	lsls r0, r0, #5
	ldr r5, _0801FB9C @ =gUnknown_0831DD0C
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r6, _0801FBA0 @ =gUnknown_0203A454
	adds r0, r0, r6
	ldr r1, [sp]
	lsls r3, r1, #0xd
	ldr r5, _0801FBA4 @ =0x06014000
	adds r1, r3, r5
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	movs r6, #8
	adds r6, r6, r4
	mov sl, r6
	add r0, sl
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r5, _0801FBA8 @ =gUnknown_0203A45C
	adds r0, r0, r5
	movs r5, #0x20
	str r5, [r0]
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	lsls r1, r1, #4
	adds r1, r1, r7
	adds r1, r1, r4
	mov r6, ip
	ldrh r0, [r6]
	lsls r0, r0, #5
	ldr r6, _0801FB9C @ =gUnknown_0831DD0C
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r1, _0801FBA0 @ =gUnknown_0203A454
	adds r0, r0, r1
	ldr r6, _0801FBAC @ =0x06014800
	adds r3, r3, r6
	str r3, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	add r0, sl
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r7
	ldr r3, _0801FBA8 @ =gUnknown_0203A45C
	adds r0, r0, r3
	str r5, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	mov ip, r4
	ldr r4, [sp]
	cmp r4, #0
	bne _0801FBB4
	lsls r2, r0, #4
	adds r2, r2, r7
	add r2, ip
	ldr r5, _0801FBB0 @ =gUnknown_02038BE0
	ldr r6, _0801FB98 @ =0x0000064A
	adds r0, r5, r6
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0801FB9C @ =gUnknown_0831DD0C
	adds r1, #4
	b _0801FBC8
	.align 2, 0
_0801FB8C: .4byte gUnknown_0203A450
_0801FB90: .4byte gUnknown_02038388
_0801FB94: .4byte gUnknown_02038380
_0801FB98: .4byte 0x0000064A
_0801FB9C: .4byte gUnknown_0831DD0C
_0801FBA0: .4byte gUnknown_0203A454
_0801FBA4: .4byte 0x06014000
_0801FBA8: .4byte gUnknown_0203A45C
_0801FBAC: .4byte 0x06014800
_0801FBB0: .4byte gUnknown_02038BE0
_0801FBB4:
	lsls r2, r0, #4
	adds r2, r2, r7
	add r2, ip
	ldr r1, _0801FC30 @ =gUnknown_02038BE0
	ldr r3, _0801FC34 @ =0x00000E3A
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0801FC38 @ =gUnknown_0831DD0C
	adds r1, #8
_0801FBC8:
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r4, _0801FC3C @ =gUnknown_02038388
	ldr r1, [r4]
	lsls r2, r1, #2
	ldr r5, _0801FC40 @ =gUnknown_02038380
	adds r2, r2, r5
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r5, r1, #0xc
	adds r0, r0, r5
	mov r1, ip
	adds r1, #4
	adds r0, r0, r1
	ldr r6, [sp]
	lsls r4, r6, #7
	ldr r3, _0801FC44 @ =0x05000300
	adds r1, r4, r3
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r5
	mov r1, ip
	adds r1, #8
	adds r0, r0, r1
	movs r3, #0x20
	str r3, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r1, #4
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r6, #0
	bne _0801FC4C
	lsls r2, r0, #4
	adds r2, r2, r5
	add r2, ip
	ldr r1, _0801FC48 @ =gUnknown_0831DF4C
	ldr r5, _0801FC30 @ =gUnknown_02038BE0
	movs r6, #0xd1
	lsls r6, r6, #3
	adds r0, r5, r6
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r1, #4
	b _0801FC60
	.align 2, 0
_0801FC30: .4byte gUnknown_02038BE0
_0801FC34: .4byte 0x00000E3A
_0801FC38: .4byte gUnknown_0831DD0C
_0801FC3C: .4byte gUnknown_02038388
_0801FC40: .4byte gUnknown_02038380
_0801FC44: .4byte 0x05000300
_0801FC48: .4byte gUnknown_0831DF4C
_0801FC4C:
	lsls r2, r0, #4
	adds r2, r2, r5
	add r2, ip
	ldr r1, _0801FCB8 @ =gUnknown_0831DF4C
	ldr r3, _0801FCBC @ =gUnknown_02038BE0
	ldr r5, _0801FCC0 @ =0x00000E78
	adds r0, r3, r5
	ldrh r0, [r0]
	lsls r0, r0, #5
_0801FC5E:
	adds r1, #8
_0801FC60:
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r6, _0801FCC4 @ =gUnknown_02038388
	ldr r3, [r6]
	lsls r2, r3, #2
	ldr r0, _0801FCC8 @ =gUnknown_02038380
	adds r2, r2, r0
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r3, r3, #0xc
	adds r0, r0, r3
	mov r1, ip
	adds r1, #4
	adds r0, r0, r1
	ldr r5, _0801FCCC @ =0x05000320
	adds r1, r4, r5
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	mov r1, ip
	adds r1, #8
	adds r0, r0, r1
	movs r4, #0x20
	str r4, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r1, #4
	adds r0, r0, r1
	str r4, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FCB8: .4byte gUnknown_0831DF4C
_0801FCBC: .4byte gUnknown_02038BE0
_0801FCC0: .4byte 0x00000E78
_0801FCC4: .4byte gUnknown_02038388
_0801FCC8: .4byte gUnknown_02038380
_0801FCCC: .4byte 0x05000320

	thumb_func_start sub_0801FCD0
sub_0801FCD0: @ 0x0801FCD0
	push {r4, r5, r6, lr}
	ldr r4, _0801FD04 @ =gUnknown_02039BD0
	movs r5, #0x80
	lsls r5, r5, #3
	ldr r6, _0801FD08 @ =0xA0A0A0A0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080004B8
	adds r4, r4, r5
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080004B8
	ldr r1, _0801FD0C @ =gUnknown_020383A0
	ldr r0, _0801FD10 @ =gUnknown_02038388
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD04: .4byte gUnknown_02039BD0
_0801FD08: .4byte 0xA0A0A0A0
_0801FD0C: .4byte gUnknown_020383A0
_0801FD10: .4byte gUnknown_02038388

	thumb_func_start sub_0801FD14
sub_0801FD14: @ 0x0801FD14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf4
	str r0, [sp, #0x3c]
	ldr r1, _0801FEAC @ =gUnknown_02038BE0
	lsls r0, r0, #7
	ldr r2, [sp, #0x3c]
	subs r0, r0, r2
	lsls r7, r0, #4
	adds r0, r7, r1
	movs r3, #0xfc
	lsls r3, r3, #3
	adds r6, r0, r3
	ldrh r0, [r6]
	cmp r0, #0
	bne _0801FD3C
	b _0802028E
_0801FD3C:
	ldr r1, _0801FEB0 @ =gUnknown_0831BD60
	add r0, sp, #8
	movs r2, #8
	bl sub_0803DEBC
	add r5, sp, #0x10
	ldr r1, _0801FEB4 @ =gUnknown_0831BD68
	adds r0, r5, #0
	movs r2, #8
	bl sub_0803DEBC
	add r4, sp, #0x18
	ldr r1, _0801FEB8 @ =gUnknown_0831BD70
	adds r0, r4, #0
	movs r2, #0x22
	bl sub_0803DEBC
	ldr r2, _0801FEBC @ =gUnknown_0203A440
	ldrh r0, [r6]
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	ldr r0, [r2]
	muls r0, r1, r0
	lsrs r0, r0, #8
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	movs r6, #0
	str r6, [sp, #0x54]
	ldr r0, [sp, #0x3c]
	lsls r0, r0, #5
	str r0, [sp, #0xd0]
	ldr r1, [sp, #0x3c]
	lsls r1, r1, #8
	str r1, [sp, #0xdc]
	ldr r2, [sp, #0x3c]
	lsls r2, r2, #2
	str r2, [sp, #0xcc]
	str r7, [sp, #0x58]
	ldr r3, _0801FEC0 @ =gUnknown_02038388
	mov sl, r3
	ldr r0, _0801FEAC @ =gUnknown_02038BE0
	adds r0, #4
	adds r4, r7, #0
	adds r0, r4, r0
	str r0, [sp, #0x5c]
	ldr r7, _0801FEC4 @ =gUnknown_02039BD0
	ldr r5, [sp, #0xd0]
	mov r8, r5
	mov r0, r8
	adds r0, #0x13
	lsls r0, r0, #3
	str r0, [sp, #0x60]
	mov r0, r8
	adds r0, #0x17
	lsls r0, r0, #3
	str r0, [sp, #0x64]
	mov r0, r8
	adds r0, #0x1b
	lsls r0, r0, #3
	str r0, [sp, #0x68]
	mov r0, r8
	adds r0, #0x1f
	lsls r0, r0, #3
	str r0, [sp, #0x6c]
_0801FDBE:
	ldr r6, [sp, #0x58]
	ldr r0, _0801FEAC @ =gUnknown_02038BE0
	adds r2, r6, r0
	ldr r1, [sp, #0x54]
	lsls r3, r1, #1
	mov r0, sp
	adds r0, r0, r3
	adds r0, #8
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r1, r0, #5
	subs r1, r1, r0
	movs r5, #0xfc
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #0x18
	ldrh r5, [r0]
	adds r0, r1, #0
	muls r0, r5, r0
	ldr r1, [r2]
	adds r1, r1, r0
	ldr r0, _0801FEC8 @ =gUnknown_0202F330
	mov r6, sl
	ldr r2, [r6]
	lsls r2, r2, #2
	adds r0, r2, r0
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r0, _0801FEBC @ =gUnknown_0203A440
	ldr r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	add r3, sp
	adds r3, #0x10
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r3, [sp, #0x5c]
	ldr r0, [r3]
	adds r0, r0, r1
	ldr r1, _0801FECC @ =gUnknown_0203C468
	adds r2, r2, r1
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	muls r0, r4, r0
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r4, [sp, #0x54]
	cmp r4, #0
	bne _0801FED8
	ldr r5, _0801FED0 @ =gUnknown_08693364
	movs r6, #0
	ldrsh r0, [r5, r6]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x10
	lsls r2, r2, #3
	mov r3, sl
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	ldr r4, _0801FED4 @ =gUnknown_08693164
	adds r4, #0
	movs r5, #0
	ldrsh r0, [r4, r5]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x11
	lsls r2, r2, #3
	mov r6, sl
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x12
	lsls r2, r2, #3
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	ldr r2, _0801FED0 @ =gUnknown_08693364
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [r6]
	lsls r1, r1, #0xa
	ldr r4, [sp, #0x60]
	b _0802005C
	.align 2, 0
_0801FEAC: .4byte gUnknown_02038BE0
_0801FEB0: .4byte gUnknown_0831BD60
_0801FEB4: .4byte gUnknown_0831BD68
_0801FEB8: .4byte gUnknown_0831BD70
_0801FEBC: .4byte gUnknown_0203A440
_0801FEC0: .4byte gUnknown_02038388
_0801FEC4: .4byte gUnknown_02039BD0
_0801FEC8: .4byte gUnknown_0202F330
_0801FECC: .4byte gUnknown_0203C468
_0801FED0: .4byte gUnknown_08693364
_0801FED4: .4byte gUnknown_08693164
_0801FED8:
	ldr r5, [sp, #0x54]
	cmp r5, #1
	bne _0801FF60
	ldr r6, _0801FF58 @ =gUnknown_08693364
	movs r1, #0
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x14
	lsls r2, r2, #3
	mov r3, sl
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	ldr r4, _0801FF5C @ =gUnknown_08693164
	adds r4, #0
	movs r5, #0
	ldrsh r0, [r4, r5]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x15
	lsls r2, r2, #3
	mov r6, sl
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x16
	lsls r2, r2, #3
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	ldr r2, _0801FF58 @ =gUnknown_08693364
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [r6]
	lsls r1, r1, #0xa
	ldr r4, [sp, #0x64]
	b _0802005C
	.align 2, 0
_0801FF58: .4byte gUnknown_08693364
_0801FF5C: .4byte gUnknown_08693164
_0801FF60:
	ldr r5, [sp, #0x54]
	cmp r5, #2
	bne _0801FFE4
	ldr r6, _0801FFDC @ =gUnknown_08693364
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x18
	lsls r2, r2, #3
	mov r3, sl
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	ldr r4, _0801FFE0 @ =gUnknown_08693164
	adds r4, #0
	movs r5, #0
	ldrsh r0, [r4, r5]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x19
	lsls r2, r2, #3
	mov r6, sl
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x1a
	lsls r2, r2, #3
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	ldr r2, _0801FFDC @ =gUnknown_08693364
	movs r3, #0
	ldrsh r0, [r2, r3]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [r6]
	lsls r1, r1, #0xa
	ldr r4, [sp, #0x68]
	b _0802005C
	.align 2, 0
_0801FFDC: .4byte gUnknown_08693364
_0801FFE0: .4byte gUnknown_08693164
_0801FFE4:
	ldr r5, _0802007C @ =gUnknown_08693364
	movs r6, #0
	ldrsh r0, [r5, r6]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x1c
	lsls r2, r2, #3
	mov r3, sl
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	ldr r4, _08020080 @ =gUnknown_08693164
	adds r4, #0
	movs r5, #0
	ldrsh r0, [r4, r5]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x1d
	lsls r2, r2, #3
	mov r6, sl
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	mov r2, r8
	adds r2, #0x1e
	lsls r2, r2, #3
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	ldr r2, _0802007C @ =gUnknown_08693364
	movs r3, #0
	ldrsh r0, [r2, r3]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [r6]
	lsls r1, r1, #0xa
	ldr r4, [sp, #0x6c]
_0802005C:
	adds r1, r4, r1
	adds r1, r1, r7
	strh r0, [r1, #6]
	ldr r5, [sp, #0x50]
	ldr r6, _08020084 @ =0xFFFFFEF0
	adds r1, r5, r6
	ldr r0, _08020088 @ =0x0000FED0
	cmp r1, r0
	bls _08020078
	mov r1, sb
	subs r1, #0xc0
	adds r0, #0x50
	cmp r1, r0
	bhi _0802008C
_08020078:
	movs r3, #2
	b _0802009A
	.align 2, 0
_0802007C: .4byte gUnknown_08693364
_08020080: .4byte gUnknown_08693164
_08020084: .4byte 0xFFFFFEF0
_08020088: .4byte 0x0000FED0
_0802008C:
	ldr r0, _080202D8 @ =gUnknown_0202F344
	ldr r1, [r0]
	lsls r1, r1, #1
	movs r2, #1
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
_0802009A:
	mov r0, sl
	ldr r2, [r0]
	lsls r0, r2, #2
	ldr r1, _080202DC @ =gUnknown_020383A0
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r4, _080202D8 @ =gUnknown_0202F344
	ldr r2, [r4]
	movs r5, #0x20
	rsbs r5, r5, #0
	adds r0, r5, #0
	lsls r0, r2
	add r0, sb
	strb r0, [r1]
	mov r6, sl
	ldr r1, [r6]
	lsls r0, r1, #2
	ldr r2, _080202DC @ =gUnknown_020383A0
	adds r0, r0, r2
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	movs r0, #3
	ands r3, r0
	ldrb r0, [r2, #1]
	movs r4, #4
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #1]
	ldr r2, [r6]
	lsls r0, r2, #2
	ldr r6, _080202DC @ =gUnknown_020383A0
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	mov r0, sl
	ldr r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	mov r1, sl
	ldr r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r3, #0x21
	rsbs r3, r3, #0
	mov ip, r3
	mov r0, ip
	ands r0, r2
	strb r0, [r1, #1]
	mov r4, sl
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r3, [r4]
	lsls r4, r3, #2
	adds r4, r4, r6
	ldr r2, [r4]
	lsls r2, r2, #3
	lsls r3, r3, #0xa
	adds r2, r2, r3
	adds r2, r2, r7
	ldr r6, _080202D8 @ =gUnknown_0202F344
	ldr r0, [r6]
	lsls r5, r0
	ldr r0, [sp, #0x50]
	adds r5, r0, r5
	ldr r1, _080202E0 @ =0x000001FF
	adds r0, r1, #0
	ands r5, r0
	ldrh r0, [r2, #2]
	ldr r6, _080202E4 @ =0xFFFFFE00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r2, #2]
	ldr r2, [r4]
	lsls r2, r2, #3
	adds r2, r2, r3
	adds r2, r2, r7
	ldr r3, [sp, #0x54]
	adds r3, #4
	movs r0, #7
	ands r3, r0
	lsls r3, r3, #1
	ldrb r0, [r2, #3]
	movs r4, #0xf
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #3]
	mov r5, sl
	ldr r2, [r5]
	lsls r0, r2, #2
	ldr r6, _080202DC @ =gUnknown_020383A0
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	movs r2, #1
	ldr r0, [sp, #0x3c]
	ands r0, r2
	lsls r0, r0, #4
	ldrb r2, [r1, #3]
	movs r6, #0x11
	rsbs r6, r6, #0
	ands r6, r2
	orrs r6, r0
	strb r6, [r1, #3]
	ldr r1, [r5]
	lsls r0, r1, #2
	ldr r2, _080202DC @ =gUnknown_020383A0
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	mov r3, ip
	ands r3, r1
	strb r3, [r0, #3]
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r4, [r5]
	lsls r5, r4, #2
	ldr r6, _080202DC @ =gUnknown_020383A0
	adds r5, r5, r6
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r7
	ldr r3, [sp, #0xdc]
	adds r3, #0xc0
	ldr r1, _080202E8 @ =0x000003FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r2, #4]
	ldr r6, _080202EC @ =0xFFFFFC00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, #4]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	ands r2, r1
	movs r1, #8
	orrs r2, r1
	strb r2, [r0, #5]
	mov r4, sl
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r5, _080202DC @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r2, [sp, #0xcc]
	adds r2, #0xb
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r6, [sp, #0x54]
	adds r6, #1
	str r6, [sp, #0x54]
	cmp r6, #3
	bgt _08020276
	b _0801FDBE
_08020276:
	ldr r0, _080202F0 @ =gUnknown_02038BE0
	ldr r7, [sp, #0x3c]
	lsls r1, r7, #7
	subs r1, r1, r7
	lsls r1, r1, #4
	adds r1, r1, r0
	movs r2, #0xfc
	lsls r2, r2, #3
	adds r1, r1, r2
	ldrh r2, [r1]
	subs r2, #1
	strh r2, [r1]
_0802028E:
	ldr r3, [sp, #0x3c]
	lsls r1, r3, #7
	subs r0, r1, r3
	lsls r0, r0, #4
	mov sl, r0
	ldr r0, _080202F0 @ =gUnknown_02038BE0
	adds r0, #0x80
	add r0, sl
	ldr r2, [r0]
	adds r0, r2, #0
	subs r0, #0x26
	str r1, [sp, #0xd8]
	cmp r0, #2
	bhi _080202F4
	ldr r4, _080202F0 @ =gUnknown_02038BE0
	add r4, sl
	ldr r1, [r4]
	ldr r0, _080202F0 @ =gUnknown_02038BE0
	adds r0, #4
	add r0, sl
	ldr r2, [r0]
	adds r0, r4, #0
	adds r0, #0x64
	ldrh r3, [r0]
	adds r0, #4
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x62
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	bl sub_08032D78
	bl _0802268A
	.align 2, 0
_080202D8: .4byte gUnknown_0202F344
_080202DC: .4byte gUnknown_020383A0
_080202E0: .4byte 0x000001FF
_080202E4: .4byte 0xFFFFFE00
_080202E8: .4byte 0x000003FF
_080202EC: .4byte 0xFFFFFC00
_080202F0: .4byte gUnknown_02038BE0
_080202F4:
	ldr r4, _08020310 @ =gUnknown_02038BE0
	add r4, sl
	str r4, [sp, #0x78]
	ldrh r0, [r4, #0xe]
	subs r0, #0x24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020314
	ldr r0, [sp, #0x3c]
	bl sub_08034188
	bl _0802268A
	.align 2, 0
_08020310: .4byte gUnknown_02038BE0
_08020314:
	adds r0, r2, #0
	subs r0, #0xe
	cmp r0, #1
	bls _0802031E
	b _080206A4
_0802031E:
	ldr r0, _080203D0 @ =gUnknown_020132F0
	ldr r2, [r0]
	movs r0, #1
	ands r2, r0
	ldr r1, [sp, #0x3c]
	ands r1, r0
	ldr r5, [sp, #0x3c]
	lsls r5, r5, #5
	str r5, [sp, #0xd0]
	ldr r6, [sp, #0x3c]
	lsls r6, r6, #8
	str r6, [sp, #0xdc]
	ldr r7, [sp, #0x3c]
	lsls r7, r7, #0xd
	str r7, [sp, #0xec]
	ldr r0, [sp, #0x3c]
	lsls r0, r0, #6
	str r0, [sp, #0xd4]
	cmp r2, r1
	beq _08020348
	b _080205DA
_08020348:
	movs r1, #0
	str r1, [sp, #0x54]
	ldr r2, [sp, #0x3c]
	lsls r2, r2, #2
	str r2, [sp, #0xcc]
	ldr r7, _080203D4 @ =gUnknown_02038388
	ldr r3, _080203D8 @ =gUnknown_0202F344
	mov ip, r3
	movs r4, #1
	mov sl, r4
	ldr r6, _080203DC @ =gUnknown_02039BD0
	ldr r5, _080203E0 @ =gUnknown_020383A0
	mov r8, r5
_08020362:
	ldr r0, _080203E4 @ =gUnknown_0203A440
	ldr r0, [r0]
	str r0, [sp, #0x44]
	ldr r1, [sp, #0xd8]
	ldr r2, [sp, #0x3c]
	subs r3, r1, r2
	lsls r3, r3, #4
	ldr r4, _080203E8 @ =gUnknown_02038BE0
	adds r1, r3, r4
	ldr r5, [sp, #0x54]
	lsls r0, r5, #2
	ldr r2, _080203EC @ =gUnknown_0831BD20
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	adds r1, r1, r0
	ldr r2, [r7]
	lsls r2, r2, #2
	ldr r4, _080203F0 @ =gUnknown_0202F330
	adds r0, r2, r4
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r5, [sp, #0x44]
	adds r0, r1, #0
	muls r0, r5, r0
	asrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r0, _080203F4 @ =gUnknown_02038BE4
	adds r3, r3, r0
	ldr r1, _080203F8 @ =gUnknown_0203C468
	adds r2, r2, r1
	ldr r1, [r2]
	ldr r2, _080203FC @ =0xFFFFF800
	adds r1, r1, r2
	ldr r0, [r3]
	subs r0, r0, r1
	asrs r0, r0, #8
	muls r0, r5, r0
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r3, [sp, #0x50]
	ldr r4, _08020400 @ =0xFFFFFF00
	adds r1, r3, r4
	ldr r0, _08020404 @ =0xFFFFFEF0
	cmp r1, r0
	bls _080203CA
	mov r1, sb
	subs r1, #0xc0
	adds r0, #0x30
	cmp r1, r0
	bhi _08020408
_080203CA:
	movs r3, #2
	b _08020416
	.align 2, 0
_080203D0: .4byte gUnknown_020132F0
_080203D4: .4byte gUnknown_02038388
_080203D8: .4byte gUnknown_0202F344
_080203DC: .4byte gUnknown_02039BD0
_080203E0: .4byte gUnknown_020383A0
_080203E4: .4byte gUnknown_0203A440
_080203E8: .4byte gUnknown_02038BE0
_080203EC: .4byte gUnknown_0831BD20
_080203F0: .4byte gUnknown_0202F330
_080203F4: .4byte gUnknown_02038BE4
_080203F8: .4byte gUnknown_0203C468
_080203FC: .4byte 0xFFFFF800
_08020400: .4byte 0xFFFFFF00
_08020404: .4byte 0xFFFFFEF0
_08020408:
	mov r5, ip
	ldr r0, [r5]
	lsls r0, r0, #1
	mov r1, sl
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08020416:
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	mov r4, ip
	ldr r2, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	lsls r0, r2
	add r0, sb
	strb r0, [r1]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	movs r0, #3
	ands r3, r0
	ldrb r2, [r1, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r1, [r7]
	lsls r0, r1, #2
	add r0, r8
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	ldrb r1, [r2, #1]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r4, [r7]
	lsls r5, r4, #2
	add r5, r8
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r6
	mov r1, ip
	ldr r0, [r1]
	movs r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r0
	ldr r3, [sp, #0x50]
	adds r1, r3, r1
	ldr r3, _0802066C @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08020670 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #2]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r6
	ldrb r2, [r1, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	add r0, r8
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	ldr r4, [sp, #0x54]
	ldr r5, _08020674 @ =gUnknown_0831BD18
	adds r0, r4, r5
	ldrb r1, [r0]
	mov r0, sl
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r2, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	add r0, r8
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	ldr r1, _08020678 @ =gUnknown_0831BD1C
	adds r0, r4, r1
	ldrb r1, [r0]
	mov r3, sl
	ands r1, r3
	lsls r1, r1, #5
	ldrb r3, [r2, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	add r0, r8
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r1, [r0, #3]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r4, [r7]
	lsls r5, r4, #2
	add r5, r8
	ldr r1, [r5]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	adds r1, r1, r6
	ldr r2, [sp, #0xdc]
	adds r2, #0x28
	ldr r3, _0802067C @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _08020680 @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r6
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, [sp, #0xcc]
	adds r2, #1
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r1, [r7]
	lsls r1, r1, #2
	add r1, r8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r4, [sp, #0x54]
	adds r4, #1
	str r4, [sp, #0x54]
	cmp r4, #1
	bgt _080205DA
	b _08020362
_080205DA:
	ldr r2, _08020684 @ =gUnknown_0203A450
	ldr r1, _08020688 @ =gUnknown_02038380
	ldr r0, _0802068C @ =gUnknown_02038388
	ldr r4, [r0]
	lsls r3, r4, #2
	adds r3, r3, r1
	ldr r0, [r3]
	lsls r0, r0, #4
	lsls r4, r4, #0xc
	adds r0, r0, r4
	adds r0, r0, r2
	ldr r5, _08020690 @ =gUnknown_087B28A2
	str r5, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r6, r2, #4
	mov sb, r6
	add r0, sb
	ldr r7, [sp, #0xd8]
	ldr r5, _08020694 @ =0x05000220
	adds r1, r7, r5
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r6, #4
	adds r0, r0, r6
	movs r1, #0x10
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r5, r2, #0
	adds r5, #0xc
	adds r0, r0, r5
	movs r1, #0x20
	str r1, [r0]
	ldr r1, [r3]
	adds r1, #1
	str r1, [r3]
	lsls r1, r1, #4
	adds r1, r1, r4
	adds r1, r1, r2
	ldr r2, [sp, #0x3c]
	subs r0, r7, r2
	lsls r0, r0, #4
	ldr r2, _08020698 @ =gUnknown_02038BE0
	adds r2, #0x88
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #2
	movs r2, #3
	ands r0, r2
	lsls r0, r0, #0xa
	ldr r7, _0802069C @ =gUnknown_087B1788
	adds r0, r0, r7
	str r0, [r1]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	add r0, sb
	ldr r2, [sp, #0xec]
	ldr r7, _080206A0 @ =0x06010500
	adds r1, r2, r7
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, r0, r6
	movs r1, #0x80
	lsls r1, r1, #3
	b _08020A6C
	.align 2, 0
_0802066C: .4byte 0x000001FF
_08020670: .4byte 0xFFFFFE00
_08020674: .4byte gUnknown_0831BD18
_08020678: .4byte gUnknown_0831BD1C
_0802067C: .4byte 0x000003FF
_08020680: .4byte 0xFFFFFC00
_08020684: .4byte gUnknown_0203A450
_08020688: .4byte gUnknown_02038380
_0802068C: .4byte gUnknown_02038388
_08020690: .4byte gUnknown_087B28A2
_08020694: .4byte 0x05000220
_08020698: .4byte gUnknown_02038BE0
_0802069C: .4byte gUnknown_087B1788
_080206A0: .4byte 0x06010500
_080206A4:
	cmp r2, #0x12
	beq _080206AA
	b _08020AA4
_080206AA:
	ldr r1, [sp, #0x78]
	ldr r2, _08020774 @ =0x00000712
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r4, [sp, #0x3c]
	lsls r4, r4, #5
	str r4, [sp, #0xd0]
	ldr r5, [sp, #0x3c]
	lsls r5, r5, #8
	str r5, [sp, #0xdc]
	ldr r6, [sp, #0x3c]
	lsls r6, r6, #0xd
	str r6, [sp, #0xec]
	ldr r7, [sp, #0x3c]
	lsls r7, r7, #6
	str r7, [sp, #0xd4]
	cmp r0, #0
	bgt _080206D2
	b _08020982
_080206D2:
	ldr r0, _08020778 @ =gUnknown_020132F0
	ldr r2, [r0]
	movs r1, #1
	ands r2, r1
	ldr r0, [sp, #0x3c]
	ands r0, r1
	cmp r2, r0
	beq _080206E4
	b _08020982
_080206E4:
	movs r0, #0
	str r0, [sp, #0x54]
	ldr r1, [sp, #0x3c]
	lsls r1, r1, #2
	str r1, [sp, #0xcc]
	ldr r7, _0802077C @ =gUnknown_02038388
	ldr r2, _08020780 @ =gUnknown_0202F344
	mov ip, r2
	movs r3, #1
	mov sl, r3
	ldr r6, _08020784 @ =gUnknown_02039BD0
	ldr r4, _08020788 @ =gUnknown_020383A0
	mov r8, r4
_080206FE:
	ldr r5, _0802078C @ =gUnknown_0203A440
	ldr r5, [r5]
	str r5, [sp, #0x44]
	ldr r0, [sp, #0xd8]
	ldr r1, [sp, #0x3c]
	subs r3, r0, r1
	lsls r3, r3, #4
	ldr r2, _08020790 @ =gUnknown_02038BE0
	adds r1, r3, r2
	ldr r5, [sp, #0x54]
	lsls r4, r5, #2
	ldr r2, _08020794 @ =gUnknown_0831BD20
	adds r0, r4, r2
	ldr r1, [r1]
	ldr r0, [r0]
	adds r1, r1, r0
	ldr r2, [r7]
	lsls r2, r2, #2
	ldr r5, _08020798 @ =gUnknown_0202F330
	adds r0, r2, r5
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r5, [sp, #0x44]
	adds r0, r1, #0
	muls r0, r5, r0
	asrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r0, _0802079C @ =gUnknown_02038BE4
	adds r3, r3, r0
	ldr r1, _080207A0 @ =gUnknown_0831BD30
	adds r4, r4, r1
	ldr r1, [r3]
	ldr r0, [r4]
	adds r1, r1, r0
	ldr r3, _080207A4 @ =gUnknown_0203C468
	adds r2, r2, r3
	ldr r0, [r2]
	ldr r4, _080207A8 @ =0xFFFFF800
	adds r0, r0, r4
	subs r1, r1, r0
	asrs r1, r1, #8
	adds r0, r1, #0
	muls r0, r5, r0
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r5, [sp, #0x50]
	ldr r0, _080207AC @ =0xFFFFFF00
	adds r1, r5, r0
	subs r0, #0x10
	cmp r1, r0
	bls _08020770
	mov r1, sb
	subs r1, #0xb0
	adds r0, #0x50
	cmp r1, r0
	bhi _080207B0
_08020770:
	movs r3, #2
	b _080207BE
	.align 2, 0
_08020774: .4byte 0x00000712
_08020778: .4byte gUnknown_020132F0
_0802077C: .4byte gUnknown_02038388
_08020780: .4byte gUnknown_0202F344
_08020784: .4byte gUnknown_02039BD0
_08020788: .4byte gUnknown_020383A0
_0802078C: .4byte gUnknown_0203A440
_08020790: .4byte gUnknown_02038BE0
_08020794: .4byte gUnknown_0831BD20
_08020798: .4byte gUnknown_0202F330
_0802079C: .4byte gUnknown_02038BE4
_080207A0: .4byte gUnknown_0831BD30
_080207A4: .4byte gUnknown_0203C468
_080207A8: .4byte 0xFFFFF800
_080207AC: .4byte 0xFFFFFF00
_080207B0:
	mov r1, ip
	ldr r0, [r1]
	lsls r0, r0, #1
	mov r2, sl
	orrs r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080207BE:
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	mov r4, ip
	ldr r2, [r4]
	movs r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r2
	add r0, sb
	strb r0, [r1]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	movs r0, #3
	ands r3, r0
	ldrb r2, [r1, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r4, [r7]
	lsls r5, r4, #2
	add r5, r8
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r6
	mov r1, ip
	ldr r0, [r1]
	movs r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r0
	ldr r3, [sp, #0x50]
	adds r1, r3, r1
	ldr r3, _080209A4 @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _080209A8 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #2]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r6
	ldrb r2, [r1, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	add r0, r8
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	ldr r4, [sp, #0x54]
	ldr r5, _080209AC @ =gUnknown_0831BD18
	adds r0, r4, r5
	ldrb r1, [r0]
	mov r0, sl
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r2, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	add r0, r8
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	ldr r1, _080209B0 @ =gUnknown_0831BD1C
	adds r0, r4, r1
	ldrb r1, [r0]
	mov r3, sl
	ands r1, r3
	lsls r1, r1, #5
	ldrb r3, [r2, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	add r0, r8
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	ldrb r1, [r2, #3]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r4, [r7]
	lsls r5, r4, #2
	add r5, r8
	ldr r1, [r5]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	adds r1, r1, r6
	ldr r2, [sp, #0xdc]
	adds r2, #0x28
	ldr r3, _080209B4 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _080209B8 @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r6
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, [sp, #0xcc]
	adds r2, #1
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r1, [r7]
	lsls r1, r1, #2
	add r1, r8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r4, [sp, #0x54]
	adds r4, #1
	str r4, [sp, #0x54]
	cmp r4, #3
	bgt _08020982
	b _080206FE
_08020982:
	ldr r5, [sp, #0x3c]
	cmp r5, #0
	bne _080209CC
	ldr r6, _080209BC @ =gUnknown_02038388
	ldr r1, [r6]
	lsls r0, r1, #2
	ldr r7, _080209C0 @ =gUnknown_02038380
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r1, #0xc
	adds r0, r0, r1
	ldr r1, _080209C4 @ =gUnknown_0203A450
	adds r0, r0, r1
	ldr r1, _080209C8 @ =gUnknown_087B280E
	b _080209E4
	.align 2, 0
_080209A4: .4byte 0x000001FF
_080209A8: .4byte 0xFFFFFE00
_080209AC: .4byte gUnknown_0831BD18
_080209B0: .4byte gUnknown_0831BD1C
_080209B4: .4byte 0x000003FF
_080209B8: .4byte 0xFFFFFC00
_080209BC: .4byte gUnknown_02038388
_080209C0: .4byte gUnknown_02038380
_080209C4: .4byte gUnknown_0203A450
_080209C8: .4byte gUnknown_087B280E
_080209CC:
	ldr r2, _08020A84 @ =gUnknown_02038388
	ldr r1, [r2]
	lsls r0, r1, #2
	ldr r3, _08020A88 @ =gUnknown_02038380
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r1, #0xc
	adds r0, r0, r1
	ldr r4, _08020A8C @ =gUnknown_0203A450
	adds r0, r0, r4
	ldr r1, _08020A90 @ =gUnknown_087B2818
_080209E4:
	str r1, [r0]
	ldr r2, _08020A8C @ =gUnknown_0203A450
	ldr r1, _08020A88 @ =gUnknown_02038380
	ldr r0, _08020A84 @ =gUnknown_02038388
	ldr r4, [r0]
	lsls r3, r4, #2
	adds r3, r3, r1
	ldr r0, [r3]
	lsls r0, r0, #4
	lsls r4, r4, #0xc
	adds r0, r0, r4
	adds r5, r2, #4
	mov sb, r5
	add r0, sb
	ldr r6, [sp, #0xd8]
	ldr r7, _08020A94 @ =0x05000220
	adds r1, r6, r7
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r6, r2, #0
	adds r6, #8
	adds r0, r0, r6
	movs r1, #0x10
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r5, #8
	adds r0, r0, r5
	movs r1, #0x20
	str r1, [r0]
	ldr r1, [r3]
	adds r1, #1
	str r1, [r3]
	lsls r1, r1, #4
	adds r1, r1, r4
	adds r1, r1, r2
	ldr r2, [sp, #0xd8]
	ldr r7, [sp, #0x3c]
	subs r0, r2, r7
	lsls r0, r0, #4
	ldr r2, _08020A98 @ =gUnknown_02038BE0
	adds r2, #0x88
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #2
	movs r2, #3
	ands r0, r2
	lsls r0, r0, #9
	ldr r2, _08020A9C @ =gUnknown_087AE788
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	add r0, sb
	ldr r7, [sp, #0xec]
	ldr r2, _08020AA0 @ =0x06010500
	adds r1, r7, r2
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, r0, r6
	movs r1, #0x80
	lsls r1, r1, #2
_08020A6C:
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, r0, r5
	movs r1, #0x40
	str r1, [r0]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	bl _080218A6
	.align 2, 0
_08020A84: .4byte gUnknown_02038388
_08020A88: .4byte gUnknown_02038380
_08020A8C: .4byte gUnknown_0203A450
_08020A90: .4byte gUnknown_087B2818
_08020A94: .4byte 0x05000220
_08020A98: .4byte gUnknown_02038BE0
_08020A9C: .4byte gUnknown_087AE788
_08020AA0: .4byte 0x06010500
_08020AA4:
	subs r0, r2, #7
	cmp r0, #1
	bls _08020AAC
	b _08020F28
_08020AAC:
	ldr r0, _08020BC4 @ =gUnknown_020132F0
	ldr r2, [r0]
	movs r1, #1
	ands r2, r1
	ldr r0, [sp, #0x3c]
	ands r0, r1
	ldr r3, [sp, #0x3c]
	lsls r3, r3, #5
	str r3, [sp, #0xd0]
	ldr r4, [sp, #0x3c]
	lsls r4, r4, #8
	str r4, [sp, #0xdc]
	ldr r5, [sp, #0x3c]
	lsls r5, r5, #0xd
	str r5, [sp, #0xec]
	ldr r6, [sp, #0x3c]
	lsls r6, r6, #6
	str r6, [sp, #0xd4]
	cmp r2, r0
	beq _08020AD8
	bl _080218A6
_08020AD8:
	ldr r0, _08020BC8 @ =gUnknown_0203A440
	ldr r0, [r0]
	str r0, [sp, #0x44]
	ldr r7, _08020BCC @ =gUnknown_02038C6C
	add r7, sl
	str r7, [sp, #0x7c]
	ldr r4, [r7]
	movs r0, #7
	ands r4, r0
	ldr r6, _08020BD0 @ =gUnknown_08693364
	lsls r4, r4, #6
	adds r6, r4, r6
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r7, _08020BD4 @ =gUnknown_02039BD0
	ldr r2, [sp, #0xd0]
	adds r2, #8
	lsls r2, r2, #3
	ldr r5, _08020BD8 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	ldr r0, _08020BDC @ =gUnknown_08693164
	adds r4, r4, r0
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [sp, #0xd0]
	adds r1, #9
	lsls r1, r1, #3
	ldr r2, [r5]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	strh r0, [r1, #6]
	movs r3, #0
	ldrsh r0, [r4, r3]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [sp, #0xd0]
	adds r1, #0xa
	lsls r1, r1, #3
	ldr r2, [r5]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	strh r0, [r1, #6]
	movs r4, #0
	ldrsh r0, [r6, r4]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [sp, #0xd0]
	adds r1, #0xb
	lsls r1, r1, #3
	ldr r3, [r5]
	lsls r2, r3, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	strh r0, [r1, #6]
	ldr r0, _08020BE0 @ =gUnknown_08692D00
	ldr r5, [sp, #0x7c]
	ldr r1, [r5]
	lsls r4, r1, #1
	adds r0, r4, r0
	movs r6, #0
	ldrsh r1, [r0, r6]
	ldr r7, [sp, #0x78]
	ldr r0, [r7]
	adds r0, r0, r1
	ldr r1, _08020BE4 @ =gUnknown_0202F330
	lsls r3, r3, #2
	adds r1, r3, r1
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #0x44]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldrh r0, [r7, #0xc]
	cmp r0, #3
	beq _08020B9C
	cmp r0, #6
	bne _08020BF8
_08020B9C:
	ldr r1, _08020BE8 @ =gUnknown_02038BE0
	adds r1, #4
	add r1, sl
	ldr r0, _08020BEC @ =gUnknown_08692D10
	adds r0, r4, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r4, _08020BF0 @ =0xFFFFF800
	adds r0, r0, r4
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, _08020BF4 @ =gUnknown_0203C468
	adds r0, r3, r0
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r5, [sp, #0x44]
	adds r0, r1, #0
	muls r0, r5, r0
	b _08020C1A
	.align 2, 0
_08020BC4: .4byte gUnknown_020132F0
_08020BC8: .4byte gUnknown_0203A440
_08020BCC: .4byte gUnknown_02038C6C
_08020BD0: .4byte gUnknown_08693364
_08020BD4: .4byte gUnknown_02039BD0
_08020BD8: .4byte gUnknown_02038388
_08020BDC: .4byte gUnknown_08693164
_08020BE0: .4byte gUnknown_08692D00
_08020BE4: .4byte gUnknown_0202F330
_08020BE8: .4byte gUnknown_02038BE0
_08020BEC: .4byte gUnknown_08692D10
_08020BF0: .4byte 0xFFFFF800
_08020BF4: .4byte gUnknown_0203C468
_08020BF8:
	ldr r1, _08020C38 @ =gUnknown_02038BE0
	adds r1, #4
	add r1, sl
	ldr r0, _08020C3C @ =gUnknown_08692D10
	adds r0, r4, r0
	movs r6, #0
	ldrsh r0, [r0, r6]
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, _08020C40 @ =gUnknown_0203C468
	adds r0, r3, r0
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r7, [sp, #0x44]
	adds r0, r1, #0
	muls r0, r7, r0
_08020C1A:
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp, #0x50]
	ldr r2, _08020C44 @ =0xFFFFFF00
	adds r1, r0, r2
	ldr r0, _08020C48 @ =0xFFFFFEF0
	cmp r1, r0
	bls _08020C34
	mov r1, sb
	subs r1, #0xb0
	adds r0, #0x50
	cmp r1, r0
	bhi _08020C4C
_08020C34:
	movs r3, #2
	b _08020C5A
	.align 2, 0
_08020C38: .4byte gUnknown_02038BE0
_08020C3C: .4byte gUnknown_08692D10
_08020C40: .4byte gUnknown_0203C468
_08020C44: .4byte 0xFFFFFF00
_08020C48: .4byte 0xFFFFFEF0
_08020C4C:
	ldr r0, _08020E50 @ =gUnknown_0202F344
	ldr r1, [r0]
	lsls r1, r1, #1
	movs r2, #1
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
_08020C5A:
	ldr r7, _08020E54 @ =gUnknown_02039BD0
	ldr r4, _08020E58 @ =gUnknown_02038388
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r5, _08020E5C @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r6, _08020E50 @ =gUnknown_0202F344
	ldr r2, [r6]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r0, r5, #0
	lsls r0, r2
	add r0, sb
	strb r0, [r1]
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r1, _08020E5C @ =gUnknown_020383A0
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	movs r0, #3
	ands r3, r0
	ldrb r2, [r1, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r3, _08020E5C @ =gUnknown_020383A0
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r6, #0x11
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r3, [r4]
	lsls r4, r3, #2
	ldr r0, _08020E5C @ =gUnknown_020383A0
	adds r4, r4, r0
	ldr r1, [r4]
	lsls r1, r1, #3
	lsls r3, r3, #0xa
	adds r1, r1, r3
	adds r1, r1, r7
	ldr r2, _08020E50 @ =gUnknown_0202F344
	ldr r0, [r2]
	lsls r5, r0
	ldr r0, [sp, #0x50]
	adds r5, r0, r5
	ldr r2, _08020E60 @ =0x000001FF
	adds r0, r2, #0
	ands r5, r0
	ldrh r2, [r1, #2]
	ldr r0, _08020E64 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r5
	strh r0, [r1, #2]
	ldr r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, r0, r7
	ldrb r2, [r0, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r3, _08020E58 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r0, r1, #2
	ldr r4, _08020E5C @ =gUnknown_020383A0
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	movs r1, #1
	ldr r5, [sp, #0x3c]
	ands r1, r5
	lsls r1, r1, #4
	ldrb r2, [r0, #3]
	ands r6, r2
	orrs r6, r1
	strb r6, [r0, #3]
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r2, r1
	strb r2, [r0, #3]
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r6, #0x3f
	ands r6, r1
	movs r1, #0x80
	orrs r6, r1
	strb r6, [r0, #3]
	ldr r4, [r3]
	lsls r5, r4, #2
	ldr r2, _08020E5C @ =gUnknown_020383A0
	adds r5, r5, r2
	ldr r1, [r5]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	adds r1, r1, r7
	ldr r3, [sp, #0x3c]
	lsls r6, r3, #8
	adds r2, r6, #0
	adds r2, #0x28
	ldr r3, _08020E68 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _08020E6C @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, #4]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	ands r2, r1
	movs r1, #8
	orrs r2, r1
	strb r2, [r0, #5]
	ldr r4, _08020E58 @ =gUnknown_02038388
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r5, _08020E5C @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r7, [sp, #0x3c]
	lsls r2, r7, #2
	adds r2, #1
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r7, [r4]
	lsls r4, r7, #2
	adds r0, r4, r5
	str r0, [sp, #0x84]
	ldr r0, [r0]
	adds r0, #1
	ldr r1, [sp, #0x84]
	str r0, [r1]
	ldr r2, _08020E70 @ =gUnknown_02038BE0
	ldr r3, [sp, #0xd8]
	ldr r5, [sp, #0x3c]
	subs r0, r3, r5
	lsls r0, r0, #4
	adds r1, r2, #0
	adds r1, #0x88
	adds r0, r0, r1
	ldr r0, [r0]
	str r6, [sp, #0xdc]
	cmp r0, #1
	bgt _08020EDA
	cmp r5, #0
	bne _08020E80
	ldr r2, _08020E74 @ =gUnknown_0203A450
	ldr r3, _08020E78 @ =gUnknown_02038380
	adds r0, r4, r3
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r7, #0xc
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, _08020E7C @ =gUnknown_087B2788
	b _08020E92
	.align 2, 0
_08020E50: .4byte gUnknown_0202F344
_08020E54: .4byte gUnknown_02039BD0
_08020E58: .4byte gUnknown_02038388
_08020E5C: .4byte gUnknown_020383A0
_08020E60: .4byte 0x000001FF
_08020E64: .4byte 0xFFFFFE00
_08020E68: .4byte 0x000003FF
_08020E6C: .4byte 0xFFFFFC00
_08020E70: .4byte gUnknown_02038BE0
_08020E74: .4byte gUnknown_0203A450
_08020E78: .4byte gUnknown_02038380
_08020E7C: .4byte gUnknown_087B2788
_08020E80:
	ldr r2, _08020F0C @ =gUnknown_0203A450
	ldr r3, _08020F10 @ =gUnknown_02038380
	adds r0, r4, r3
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r7, #0xc
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, _08020F14 @ =gUnknown_087B27A8
_08020E92:
	str r1, [r0]
	ldr r6, _08020F18 @ =gUnknown_02038388
	ldr r3, [r6]
	lsls r2, r3, #2
	ldr r7, _08020F10 @ =gUnknown_02038380
	adds r2, r2, r7
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r3, r3, #0xc
	adds r0, r0, r3
	ldr r1, _08020F0C @ =gUnknown_0203A450
	adds r1, #4
	adds r0, r0, r1
	ldr r4, [sp, #0xd8]
	ldr r5, _08020F1C @ =0x05000220
	adds r1, r4, r5
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r1, _08020F0C @ =gUnknown_0203A450
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x10
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r1, _08020F0C @ =gUnknown_0203A450
	adds r1, #0xc
	adds r0, r0, r1
	movs r1, #0x20
	str r1, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_08020EDA:
	ldr r5, _08020F0C @ =gUnknown_0203A450
	ldr r1, _08020F10 @ =gUnknown_02038380
	ldr r0, _08020F18 @ =gUnknown_02038388
	ldr r3, [r0]
	lsls r4, r3, #2
	adds r4, r4, r1
	ldr r2, [r4]
	lsls r2, r2, #4
	lsls r3, r3, #0xc
	adds r2, r2, r3
	adds r2, r2, r5
	ldr r6, [sp, #0xd8]
	ldr r7, [sp, #0x3c]
	subs r0, r6, r7
	lsls r0, r0, #4
	ldr r1, _08020F20 @ =gUnknown_02038BE0
	adds r1, #0x88
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #9
	ldr r1, _08020F24 @ =gUnknown_087AFF88
	b _080213FA
	.align 2, 0
_08020F0C: .4byte gUnknown_0203A450
_08020F10: .4byte gUnknown_02038380
_08020F14: .4byte gUnknown_087B27A8
_08020F18: .4byte gUnknown_02038388
_08020F1C: .4byte 0x05000220
_08020F20: .4byte gUnknown_02038BE0
_08020F24: .4byte gUnknown_087AFF88
_08020F28:
	adds r0, r2, #0
	subs r0, #9
	cmp r0, #1
	bls _08020F32
	b _08021460
_08020F32:
	ldr r0, _08021028 @ =gUnknown_0203A440
	ldr r0, [r0]
	str r0, [sp, #0x44]
	ldr r0, _0802102C @ =gUnknown_02038C6C
	add r0, sl
	str r0, [sp, #0x88]
	ldr r4, [r0]
	movs r0, #7
	ands r4, r0
	ldr r6, _08021030 @ =gUnknown_08693364
	lsls r4, r4, #6
	adds r6, r4, r6
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r2, [sp, #0x3c]
	lsls r7, r2, #5
	adds r2, r7, #0
	adds r2, #8
	lsls r2, r2, #3
	ldr r5, _08021034 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	ldr r3, _08021038 @ =gUnknown_02039BD0
	adds r2, r2, r3
	strh r0, [r2, #6]
	ldr r0, _0802103C @ =gUnknown_08693164
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	adds r1, r7, #0
	adds r1, #9
	lsls r1, r1, #3
	ldr r2, [r5]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r2, _08021038 @ =gUnknown_02039BD0
	adds r1, r1, r2
	strh r0, [r1, #6]
	movs r3, #0
	ldrsh r0, [r4, r3]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	adds r1, r7, #0
	adds r1, #0xa
	lsls r1, r1, #3
	ldr r2, [r5]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r4, _08021038 @ =gUnknown_02039BD0
	adds r1, r1, r4
	strh r0, [r1, #6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	adds r1, r7, #0
	adds r1, #0xb
	lsls r1, r1, #3
	ldr r3, [r5]
	lsls r2, r3, #0xa
	adds r1, r1, r2
	adds r1, r1, r4
	strh r0, [r1, #6]
	ldr r0, _08021040 @ =gUnknown_08692D20
	ldr r2, [sp, #0x88]
	ldr r1, [r2]
	lsls r2, r1, #1
	adds r0, r2, r0
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r5, [sp, #0x78]
	ldr r0, [r5]
	adds r0, r0, r1
	ldr r1, _08021044 @ =gUnknown_0202F330
	lsls r3, r3, #2
	adds r1, r3, r1
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r6, [sp, #0x44]
	muls r0, r6, r0
	asrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldrh r0, [r5, #0xc]
	str r7, [sp, #0xd0]
	cmp r0, #3
	beq _08021000
	cmp r0, #6
	bne _08021058
_08021000:
	ldr r1, _08021048 @ =gUnknown_02038BE0
	adds r1, #4
	add r1, sl
	ldr r0, _0802104C @ =gUnknown_08692D30
	adds r0, r2, r0
	movs r7, #0
	ldrsh r0, [r0, r7]
	ldr r2, _08021050 @ =0xFFFFFC00
	adds r0, r0, r2
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, _08021054 @ =gUnknown_0203C468
	adds r0, r3, r0
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r3, [sp, #0x44]
	adds r0, r1, #0
	muls r0, r3, r0
	b _0802107A
	.align 2, 0
_08021028: .4byte gUnknown_0203A440
_0802102C: .4byte gUnknown_02038C6C
_08021030: .4byte gUnknown_08693364
_08021034: .4byte gUnknown_02038388
_08021038: .4byte gUnknown_02039BD0
_0802103C: .4byte gUnknown_08693164
_08021040: .4byte gUnknown_08692D20
_08021044: .4byte gUnknown_0202F330
_08021048: .4byte gUnknown_02038BE0
_0802104C: .4byte gUnknown_08692D30
_08021050: .4byte 0xFFFFFC00
_08021054: .4byte gUnknown_0203C468
_08021058:
	ldr r1, _0802111C @ =gUnknown_02038BE0
	adds r1, #4
	add r1, sl
	ldr r0, _08021120 @ =gUnknown_08692D30
	adds r0, r2, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, _08021124 @ =gUnknown_0203C468
	adds r0, r3, r0
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r5, [sp, #0x44]
	adds r0, r1, #0
	muls r0, r5, r0
_0802107A:
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _08021128 @ =gUnknown_020132F0
	ldr r2, [r1]
	movs r0, #1
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	bne _08021116
	ldr r0, _0802111C @ =gUnknown_02038BE0
	ldr r6, [sp, #0xd8]
	ldr r7, [sp, #0x3c]
	subs r1, r6, r7
	lsls r1, r1, #4
	adds r1, r1, r0
	ldr r0, _0802112C @ =0x000007DE
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080210B8
	ldr r0, _08021130 @ =gUnknown_02038398
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bne _080210B8
	lsrs r0, r2, #1
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _08021116
_080210B8:
	ldr r4, _0802111C @ =gUnknown_02038BE0
	ldr r6, [sp, #0xd8]
	ldr r7, [sp, #0x3c]
	subs r0, r6, r7
	lsls r3, r0, #4
	adds r0, r3, r4
	ldrh r2, [r0, #0xc]
	cmp r2, #4
	beq _080210CE
	cmp r2, #6
	bne _08021100
_080210CE:
	ldr r0, [r5]
	lsrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	cmp r0, #1
	beq _080210E6
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0xa
	beq _08021116
_080210E6:
	cmp r2, #6
	bne _08021100
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0xa
	bne _08021100
	bl sub_080377EC
	ldr r1, [sp, #0x3c]
	cmp r1, r0
	bne _08021116
_08021100:
	ldr r2, [sp, #0x50]
	ldr r3, _08021134 @ =0xFFFFFF00
	adds r1, r2, r3
	ldr r0, _08021138 @ =0xFFFFFEF0
	cmp r1, r0
	bls _08021116
	mov r1, sb
	subs r1, #0xb0
	adds r0, #0x50
	cmp r1, r0
	bhi _0802113C
_08021116:
	movs r3, #2
	b _0802114A
	.align 2, 0
_0802111C: .4byte gUnknown_02038BE0
_08021120: .4byte gUnknown_08692D30
_08021124: .4byte gUnknown_0203C468
_08021128: .4byte gUnknown_020132F0
_0802112C: .4byte 0x000007DE
_08021130: .4byte gUnknown_02038398
_08021134: .4byte 0xFFFFFF00
_08021138: .4byte 0xFFFFFEF0
_0802113C:
	ldr r0, _08021340 @ =gUnknown_0202F344
	ldr r1, [r0]
	lsls r1, r1, #1
	movs r2, #1
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
_0802114A:
	ldr r7, _08021344 @ =gUnknown_02039BD0
	ldr r4, _08021348 @ =gUnknown_02038388
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r5, _0802134C @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r6, _08021340 @ =gUnknown_0202F344
	ldr r2, [r6]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r0, r5, #0
	lsls r0, r2
	add r0, sb
	strb r0, [r1]
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r1, _0802134C @ =gUnknown_020383A0
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	movs r0, #3
	ands r3, r0
	ldrb r2, [r1, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r3, _0802134C @ =gUnknown_020383A0
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r6, #0x11
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r3, [r4]
	lsls r4, r3, #2
	ldr r0, _0802134C @ =gUnknown_020383A0
	adds r4, r4, r0
	ldr r1, [r4]
	lsls r1, r1, #3
	lsls r3, r3, #0xa
	adds r1, r1, r3
	adds r1, r1, r7
	ldr r2, _08021340 @ =gUnknown_0202F344
	ldr r0, [r2]
	lsls r5, r0
	ldr r0, [sp, #0x50]
	adds r5, r0, r5
	ldr r2, _08021350 @ =0x000001FF
	adds r0, r2, #0
	ands r5, r0
	ldrh r2, [r1, #2]
	ldr r0, _08021354 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r5
	strh r0, [r1, #2]
	ldr r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, r0, r7
	ldrb r2, [r0, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r3, _08021348 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r0, r1, #2
	ldr r4, _0802134C @ =gUnknown_020383A0
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	movs r1, #1
	ldr r5, [sp, #0x3c]
	ands r1, r5
	lsls r1, r1, #4
	ldrb r2, [r0, #3]
	ands r6, r2
	orrs r6, r1
	strb r6, [r0, #3]
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r2, r1
	strb r2, [r0, #3]
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r6, #0x3f
	ands r6, r1
	movs r1, #0x80
	orrs r6, r1
	strb r6, [r0, #3]
	ldr r4, [r3]
	lsls r5, r4, #2
	ldr r2, _0802134C @ =gUnknown_020383A0
	adds r5, r5, r2
	ldr r1, [r5]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	adds r1, r1, r7
	ldr r3, [sp, #0x3c]
	lsls r6, r3, #8
	adds r2, r6, #0
	adds r2, #0x28
	ldr r3, _08021358 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0802135C @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, #4]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	ands r2, r1
	movs r1, #8
	orrs r2, r1
	strb r2, [r0, #5]
	ldr r4, _08021348 @ =gUnknown_02038388
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r5, _0802134C @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r7, [sp, #0x3c]
	lsls r2, r7, #2
	adds r2, #1
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r7, [r4]
	lsls r4, r7, #2
	adds r0, r4, r5
	str r0, [sp, #0x90]
	ldr r0, [r0]
	adds r0, #1
	ldr r1, [sp, #0x90]
	str r0, [r1]
	ldr r2, _08021360 @ =gUnknown_02038BE0
	ldr r3, [sp, #0xd8]
	ldr r5, [sp, #0x3c]
	subs r0, r3, r5
	lsls r0, r0, #4
	adds r1, r2, #0
	adds r1, #0x88
	adds r0, r0, r1
	ldr r0, [r0]
	str r6, [sp, #0xdc]
	cmp r0, #1
	bgt _080213CA
	cmp r5, #0
	bne _08021370
	ldr r2, _08021364 @ =gUnknown_0203A450
	ldr r3, _08021368 @ =gUnknown_02038380
	adds r0, r4, r3
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r7, #0xc
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, _0802136C @ =gUnknown_087B2862
	b _08021382
	.align 2, 0
_08021340: .4byte gUnknown_0202F344
_08021344: .4byte gUnknown_02039BD0
_08021348: .4byte gUnknown_02038388
_0802134C: .4byte gUnknown_020383A0
_08021350: .4byte 0x000001FF
_08021354: .4byte 0xFFFFFE00
_08021358: .4byte 0x000003FF
_0802135C: .4byte 0xFFFFFC00
_08021360: .4byte gUnknown_02038BE0
_08021364: .4byte gUnknown_0203A450
_08021368: .4byte gUnknown_02038380
_0802136C: .4byte gUnknown_087B2862
_08021370:
	ldr r2, _08021440 @ =gUnknown_0203A450
	ldr r3, _08021444 @ =gUnknown_02038380
	adds r0, r4, r3
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r7, #0xc
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, _08021448 @ =gUnknown_087B2882
_08021382:
	str r1, [r0]
	ldr r6, _0802144C @ =gUnknown_02038388
	ldr r3, [r6]
	lsls r2, r3, #2
	ldr r7, _08021444 @ =gUnknown_02038380
	adds r2, r2, r7
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r3, r3, #0xc
	adds r0, r0, r3
	ldr r1, _08021440 @ =gUnknown_0203A450
	adds r1, #4
	adds r0, r0, r1
	ldr r4, [sp, #0xd8]
	ldr r5, _08021450 @ =0x05000220
	adds r1, r4, r5
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r1, _08021440 @ =gUnknown_0203A450
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x10
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r1, _08021440 @ =gUnknown_0203A450
	adds r1, #0xc
	adds r0, r0, r1
	movs r1, #0x20
	str r1, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_080213CA:
	ldr r5, _08021440 @ =gUnknown_0203A450
	ldr r1, _08021444 @ =gUnknown_02038380
	ldr r0, _0802144C @ =gUnknown_02038388
	ldr r3, [r0]
	lsls r4, r3, #2
	adds r4, r4, r1
	ldr r2, [r4]
	lsls r2, r2, #4
	lsls r3, r3, #0xc
	adds r2, r2, r3
	adds r2, r2, r5
	ldr r6, [sp, #0xd8]
	ldr r7, [sp, #0x3c]
	subs r0, r6, r7
	lsls r0, r0, #4
	ldr r1, _08021454 @ =gUnknown_02038BE0
	adds r1, #0x88
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #9
	ldr r1, _08021458 @ =gUnknown_087B0788
_080213FA:
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r1, r5, #4
	adds r0, r0, r1
	lsls r2, r7, #0xd
	ldr r6, _0802145C @ =0x06010500
	adds r1, r2, r6
	str r1, [r0]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r1, r5, #0
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	str r1, [r0]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r5, #0xc
	adds r0, r0, r5
	movs r1, #0x40
	str r1, [r0]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	str r2, [sp, #0xec]
	lsls r7, r7, #6
	str r7, [sp, #0xd4]
	b _080218A6
	.align 2, 0
_08021440: .4byte gUnknown_0203A450
_08021444: .4byte gUnknown_02038380
_08021448: .4byte gUnknown_087B2882
_0802144C: .4byte gUnknown_02038388
_08021450: .4byte 0x05000220
_08021454: .4byte gUnknown_02038BE0
_08021458: .4byte gUnknown_087B0788
_0802145C: .4byte 0x06010500
_08021460:
	adds r0, r2, #0
	subs r0, #0x13
	cmp r0, #1
	bls _080214AA
	cmp r2, #0x1b
	beq _080214AA
	cmp r2, #0x1c
	beq _080214AA
	cmp r2, #0x15
	beq _080214AA
	cmp r2, #0x16
	beq _080214AA
	cmp r2, #0x18
	beq _080214AA
	cmp r2, #0x19
	beq _080214AA
	cmp r2, #0x1d
	beq _080214AA
	cmp r2, #0x1e
	beq _080214AA
	cmp r2, #0xc
	beq _080214AA
	ldr r0, [sp, #0x3c]
	lsls r0, r0, #5
	str r0, [sp, #0xd0]
	ldr r1, [sp, #0x3c]
	lsls r1, r1, #8
	str r1, [sp, #0xdc]
	ldr r3, [sp, #0x3c]
	lsls r3, r3, #0xd
	str r3, [sp, #0xec]
	ldr r4, [sp, #0x3c]
	lsls r4, r4, #6
	str r4, [sp, #0xd4]
	cmp r2, #0xd
	beq _080214AA
	b _080218A6
_080214AA:
	ldr r0, _080214F8 @ =gUnknown_0203A440
	ldr r0, [r0]
	str r0, [sp, #0x44]
	ldr r5, [sp, #0xd8]
	ldr r6, [sp, #0x3c]
	subs r0, r5, r6
	lsls r1, r0, #4
	ldr r7, _080214FC @ =gUnknown_02038BE0
	adds r0, r1, r7
	ldrh r2, [r0, #8]
	str r2, [sp, #0x50]
	adds r0, #0xa6
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _08021508
	adds r2, r7, #0
	adds r2, #4
	adds r2, r1, r2
	ldr r1, _08021500 @ =gUnknown_0203C468
	ldr r3, _08021504 @ =gUnknown_02038388
	ldr r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r1, r4
	ldr r0, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r5, [sp, #0x44]
	muls r0, r5, r0
	asrs r0, r0, #0x10
	mov sb, r0
	movs r6, #0x10
	rsbs r6, r6, #0
	add sb, r6
	b _08021530
	.align 2, 0
_080214F8: .4byte gUnknown_0203A440
_080214FC: .4byte gUnknown_02038BE0
_08021500: .4byte gUnknown_0203C468
_08021504: .4byte gUnknown_02038388
_08021508:
	ldr r2, _0802154C @ =gUnknown_02038BE0
	adds r2, #4
	adds r2, r1, r2
	ldr r1, _08021550 @ =gUnknown_0203C468
	ldr r3, _08021554 @ =gUnknown_02038388
	ldr r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r7, _08021558 @ =0xFFFFE000
	adds r1, r1, r7
	ldr r0, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #0x44]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	mov sb, r0
	movs r2, #0x10
	add sb, r2
_08021530:
	ldr r3, [sp, #0x50]
	ldr r4, _0802155C @ =0xFFFFFF00
	adds r1, r3, r4
	ldr r0, _08021560 @ =0x0000FEF0
	cmp r1, r0
	bls _08021546
	mov r1, sb
	subs r1, #0xa8
	adds r0, #0x60
	cmp r1, r0
	bhi _08021564
_08021546:
	movs r3, #2
	b _0802156C
	.align 2, 0
_0802154C: .4byte gUnknown_02038BE0
_08021550: .4byte gUnknown_0203C468
_08021554: .4byte gUnknown_02038388
_08021558: .4byte 0xFFFFE000
_0802155C: .4byte 0xFFFFFF00
_08021560: .4byte 0x0000FEF0
_08021564:
	ldr r1, _08021768 @ =gUnknown_0202F344
	ldr r0, [r1]
	lsls r0, r0, #0x11
	lsrs r3, r0, #0x10
_0802156C:
	ldr r7, _0802176C @ =gUnknown_02039BD0
	ldr r5, _08021770 @ =gUnknown_02038388
	ldr r2, [r5]
	lsls r0, r2, #2
	ldr r6, _08021774 @ =gUnknown_020383A0
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r0, _08021768 @ =gUnknown_0202F344
	ldr r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	lsls r0, r2
	add r0, sb
	strb r0, [r1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	movs r0, #3
	ands r3, r0
	ldrb r2, [r1, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r6, #0x3f
	adds r0, r6, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r4, [r5]
	lsls r5, r4, #2
	ldr r1, _08021774 @ =gUnknown_020383A0
	adds r5, r5, r1
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r7
	ldr r3, _08021768 @ =gUnknown_0202F344
	ldr r0, [r3]
	movs r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r0
	ldr r0, [sp, #0x50]
	adds r1, r0, r1
	ldr r3, _08021778 @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0802177C @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #2]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r7
	ldrb r2, [r1, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r4, _08021770 @ =gUnknown_02038388
	ldr r1, [r4]
	lsls r0, r1, #2
	ldr r5, _08021774 @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r1
	strb r2, [r0, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r4, r1
	strb r4, [r0, #3]
	ldr r0, _08021770 @ =gUnknown_02038388
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	ands r6, r1
	movs r1, #0x80
	orrs r6, r1
	strb r6, [r0, #3]
	ldr r1, _08021770 @ =gUnknown_02038388
	ldr r4, [r1]
	lsls r5, r4, #2
	ldr r2, _08021774 @ =gUnknown_020383A0
	adds r5, r5, r2
	ldr r1, [r5]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	adds r1, r1, r7
	ldr r3, [sp, #0x3c]
	lsls r6, r3, #8
	adds r2, r6, #0
	adds r2, #0x28
	ldr r3, _08021780 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _08021784 @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, #4]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	ands r2, r1
	movs r1, #8
	orrs r2, r1
	strb r2, [r0, #5]
	ldr r4, _08021770 @ =gUnknown_02038388
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r5, _08021774 @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r7, [sp, #0x3c]
	lsls r2, r7, #2
	adds r2, #3
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r4, [r4]
	lsls r7, r4, #2
	adds r0, r7, r5
	str r0, [sp, #0x9c]
	ldr r0, [r0]
	adds r0, #1
	ldr r1, [sp, #0x9c]
	str r0, [r1]
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0x3c]
	subs r0, r2, r3
	lsls r0, r0, #4
	ldr r1, _08021788 @ =gUnknown_02038BE0
	adds r1, #0x80
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	subs r0, #0x13
	str r6, [sp, #0xdc]
	cmp r0, #1
	bls _0802174C
	cmp r1, #0x1b
	beq _0802174C
	cmp r1, #0x1c
	bne _08021798
_0802174C:
	ldr r2, _0802178C @ =gUnknown_0203A450
	ldr r3, _08021790 @ =gUnknown_02038380
	ldr r4, _08021770 @ =gUnknown_02038388
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r1, #0xc
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, _08021794 @ =gUnknown_087B29C8
	b _080217AA
	.align 2, 0
_08021768: .4byte gUnknown_0202F344
_0802176C: .4byte gUnknown_02039BD0
_08021770: .4byte gUnknown_02038388
_08021774: .4byte gUnknown_020383A0
_08021778: .4byte 0x000001FF
_0802177C: .4byte 0xFFFFFE00
_08021780: .4byte 0x000003FF
_08021784: .4byte 0xFFFFFC00
_08021788: .4byte gUnknown_02038BE0
_0802178C: .4byte gUnknown_0203A450
_08021790: .4byte gUnknown_02038380
_08021794: .4byte gUnknown_087B29C8
_08021798:
	ldr r2, _0802182C @ =gUnknown_0203A450
	ldr r3, _08021830 @ =gUnknown_02038380
	adds r0, r7, r3
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r4, #0xc
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, _08021834 @ =gUnknown_087B2AE8
_080217AA:
	str r1, [r0]
	ldr r5, _08021838 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r2, r1, #2
	ldr r6, _08021830 @ =gUnknown_02038380
	adds r2, r2, r6
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r3, r1, #0xc
	adds r0, r0, r3
	ldr r1, _0802182C @ =gUnknown_0203A450
	adds r1, #4
	adds r0, r0, r1
	ldr r7, [sp, #0xd8]
	ldr r4, _0802183C @ =0x0500027C
	adds r1, r7, r4
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r1, _0802182C @ =gUnknown_0203A450
	adds r1, #8
	adds r0, r0, r1
	movs r1, #4
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r1, _0802182C @ =gUnknown_0203A450
	adds r1, #0xc
	adds r0, r0, r1
	movs r1, #0x20
	str r1, [r0]
	ldr r0, [r2]
	adds r4, r0, #1
	str r4, [r2]
	ldr r5, [sp, #0x3c]
	subs r0, r7, r5
	lsls r0, r0, #4
	ldr r1, _08021840 @ =gUnknown_02038BE0
	adds r1, #0x80
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	subs r0, #0x13
	cmp r0, #1
	bls _08021810
	cmp r1, #0x1b
	beq _08021810
	cmp r1, #0x1c
	bne _08021848
_08021810:
	ldr r6, _08021838 @ =gUnknown_02038388
	ldr r1, [r6]
	lsls r0, r1, #2
	ldr r7, _08021830 @ =gUnknown_02038380
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r1, #0xc
	adds r0, r0, r1
	ldr r1, _0802182C @ =gUnknown_0203A450
	adds r0, r0, r1
	ldr r1, _08021844 @ =gUnknown_087B28AC
	b _08021852
	.align 2, 0
_0802182C: .4byte gUnknown_0203A450
_08021830: .4byte gUnknown_02038380
_08021834: .4byte gUnknown_087B2AE8
_08021838: .4byte gUnknown_02038388
_0802183C: .4byte 0x0500027C
_08021840: .4byte gUnknown_02038BE0
_08021844: .4byte gUnknown_087B28AC
_08021848:
	lsls r0, r4, #4
	adds r0, r0, r3
	ldr r2, _08021918 @ =gUnknown_0203A450
	adds r0, r0, r2
	ldr r1, _0802191C @ =gUnknown_087B29CC
_08021852:
	str r1, [r0]
	ldr r4, _08021918 @ =gUnknown_0203A450
	ldr r1, _08021920 @ =gUnknown_02038380
	ldr r0, _08021924 @ =gUnknown_02038388
	ldr r3, [r0]
	lsls r2, r3, #2
	adds r2, r2, r1
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r3, r3, #0xc
	adds r0, r0, r3
	adds r1, r4, #4
	adds r0, r0, r1
	ldr r6, [sp, #0x3c]
	lsls r5, r6, #0xd
	ldr r7, _08021928 @ =0x06010500
	adds r1, r5, r7
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r1, r4, #0
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r4, #0xc
	adds r0, r0, r4
	movs r1, #0x40
	str r1, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	lsls r0, r6, #5
	str r0, [sp, #0xd0]
	str r5, [sp, #0xec]
	lsls r1, r6, #6
	str r1, [sp, #0xd4]
_080218A6:
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0x3c]
	subs r0, r2, r3
	lsls r2, r0, #4
	ldr r5, _0802192C @ =gUnknown_02038BE0
	adds r4, r2, r5
	ldrh r3, [r4, #8]
	adds r0, r3, #0
	subs r0, #0xf8
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x18
	cmp r0, r1
	bls _080218D0
	ldrh r0, [r4, #0xa]
	subs r0, #0xb0
	lsls r0, r0, #0x10
	ldr r1, _08021930 @ =0xFF400000
	cmp r0, r1
	bls _080218D0
	b _08021E3C
_080218D0:
	movs r6, #0
	str r6, [sp, #0x50]
	mov sb, r6
	adds r0, r4, #0
	adds r0, #0xa6
	ldrh r5, [r0]
	ldr r7, _08021934 @ =0xFFFFC000
	adds r0, r5, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	bhi _0802193C
	cmp r3, #0xf0
	bls _08021968
	ldrh r3, [r4, #0xa]
	ldrh r1, [r4, #8]
	subs r1, #0xe0
	ldr r2, _08021938 @ =gUnknown_08693564
	lsrs r0, r5, #8
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	subs r3, r3, r0
	mov sb, r3
	mov r0, sb
	subs r0, #0x10
	cmp r0, #0x7f
	bhi _08021968
	movs r3, #0xe0
	str r3, [sp, #0x50]
	b _0802196E
	.align 2, 0
_08021918: .4byte gUnknown_0203A450
_0802191C: .4byte gUnknown_087B29CC
_08021920: .4byte gUnknown_02038380
_08021924: .4byte gUnknown_02038388
_08021928: .4byte 0x06010500
_0802192C: .4byte gUnknown_02038BE0
_08021930: .4byte 0xFF400000
_08021934: .4byte 0xFFFFC000
_08021938: .4byte gUnknown_08693564
_0802193C:
	cmp r3, r1
	bls _08021968
	ldrh r0, [r4, #8]
	ldr r1, _080219B4 @ =0x00010010
	subs r1, r1, r0
	ldr r2, _080219B8 @ =gUnknown_08693564
	lsrs r0, r5, #8
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r4, [r4, #0xa]
	adds r4, r4, r0
	mov sb, r4
	mov r0, sb
	subs r0, #0x10
	cmp r0, #0x7f
	bhi _08021968
	movs r6, #0x10
	str r6, [sp, #0x50]
_08021968:
	ldr r7, [sp, #0x50]
	cmp r7, #0
	beq _08021974
_0802196E:
	mov r0, sb
	cmp r0, #0
	bne _080219E4
_08021974:
	ldr r1, [sp, #0xd8]
	ldr r2, [sp, #0x3c]
	subs r0, r1, r2
	lsls r0, r0, #4
	ldr r3, _080219BC @ =gUnknown_02038BE0
	adds r2, r0, r3
	adds r0, r2, #0
	adds r0, #0xa6
	ldrh r1, [r0]
	lsls r3, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bhi _080219C4
	ldrh r4, [r2, #8]
	ldrh r1, [r2, #0xa]
	ldr r0, _080219C0 @ =0x00010020
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r2, _080219B8 @ =gUnknown_08693564
	lsrs r1, r3, #0x18
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r1, [r1, r5]
	bl sub_0803D7D4
	adds r4, r4, r0
	str r4, [sp, #0x50]
	movs r6, #0x20
	mov sb, r6
	b _080219E4
	.align 2, 0
_080219B4: .4byte 0x00010010
_080219B8: .4byte gUnknown_08693564
_080219BC: .4byte gUnknown_02038BE0
_080219C0: .4byte 0x00010020
_080219C4:
	ldrh r4, [r2, #8]
	ldrh r0, [r2, #0xa]
	subs r0, #0x90
	lsls r0, r0, #8
	ldr r2, _08021C70 @ =gUnknown_08693564
	lsrs r1, r3, #0x18
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r7, #0
	ldrsh r1, [r1, r7]
	bl sub_0803D7D4
	subs r4, r4, r0
	str r4, [sp, #0x50]
	movs r0, #0x90
	mov sb, r0
_080219E4:
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [sp, #0x44]
	ldr r1, _08021C74 @ =gUnknown_02038BE0
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0x3c]
	subs r0, r2, r3
	lsls r0, r0, #4
	ldr r4, _08021C78 @ =0x000007EC
	adds r1, r1, r4
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0xa6
	ldrh r0, [r0]
	lsrs r0, r0, #8
	ldr r5, _08021C7C @ =gUnknown_08693364
	lsls r4, r0, #1
	adds r5, r4, r5
	movs r6, #0
	ldrsh r0, [r5, r6]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r7, _08021C80 @ =gUnknown_02039BD0
	ldr r2, [sp, #0xd0]
	adds r2, #4
	lsls r2, r2, #3
	ldr r3, _08021C84 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	strh r0, [r2, #6]
	ldr r0, _08021C88 @ =gUnknown_08693164
	adds r4, r4, r0
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [sp, #0xd0]
	adds r1, #5
	lsls r1, r1, #3
	ldr r3, _08021C84 @ =gUnknown_02038388
	ldr r2, [r3]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	strh r0, [r1, #6]
	movs r6, #0
	ldrsh r0, [r4, r6]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [sp, #0xd0]
	adds r1, #6
	lsls r1, r1, #3
	ldr r3, _08021C84 @ =gUnknown_02038388
	ldr r2, [r3]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	strh r0, [r1, #6]
	movs r4, #0
	ldrsh r0, [r5, r4]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [sp, #0xd0]
	adds r1, #7
	lsls r1, r1, #3
	ldr r5, _08021C84 @ =gUnknown_02038388
	ldr r2, [r5]
	lsls r3, r2, #0xa
	adds r1, r1, r3
	adds r1, r1, r7
	strh r0, [r1, #6]
	lsls r2, r2, #2
	ldr r6, _08021C8C @ =gUnknown_020383A0
	adds r2, r2, r6
	ldr r1, [r2]
	lsls r1, r1, #3
	adds r1, r1, r3
	adds r1, r1, r7
	ldr r0, _08021C90 @ =gUnknown_0202F344
	ldr r2, [r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r2
	add r0, sb
	strb r0, [r1]
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	ldr r3, _08021C90 @ =gUnknown_0202F344
	ldr r1, [r3]
	lsls r1, r1, #1
	movs r4, #1
	orrs r1, r4
	movs r0, #3
	ands r1, r0
	ldrb r3, [r2, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r5, #0x11
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r6, _08021C84 @ =gUnknown_02038388
	ldr r2, [r6]
	lsls r0, r2, #2
	ldr r1, _08021C8C @ =gUnknown_020383A0
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r6]
	lsls r0, r2, #2
	ldr r3, _08021C8C @ =gUnknown_020383A0
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r6, #0x3f
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r4, _08021C84 @ =gUnknown_02038388
	ldr r3, [r4]
	lsls r4, r3, #2
	ldr r0, _08021C8C @ =gUnknown_020383A0
	adds r4, r4, r0
	ldr r1, [r4]
	lsls r1, r1, #3
	lsls r3, r3, #0xa
	adds r1, r1, r3
	adds r1, r1, r7
	ldr r2, _08021C90 @ =gUnknown_0202F344
	ldr r0, [r2]
	movs r2, #0x10
	rsbs r2, r2, #0
	lsls r2, r0
	ldr r0, [sp, #0x50]
	adds r0, r0, r2
	str r0, [sp, #0xa4]
	ldr r2, _08021C94 @ =0x000001FF
	adds r0, r2, #0
	ldr r2, [sp, #0xa4]
	ands r2, r0
	str r2, [sp, #0xa4]
	ldrh r2, [r1, #2]
	ldr r0, _08021C98 @ =0xFFFFFE00
	ands r0, r2
	ldr r2, [sp, #0xa4]
	orrs r0, r2
	strh r0, [r1, #2]
	ldr r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, r0, r7
	ldrb r2, [r0, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r3, _08021C84 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r0, r1, #2
	ldr r4, _08021C8C @ =gUnknown_020383A0
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldr r1, [sp, #0x3c]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r0, #3]
	ands r5, r2
	orrs r5, r1
	strb r5, [r0, #3]
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r2, r1
	strb r2, [r0, #3]
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	ands r6, r1
	movs r1, #0x80
	orrs r6, r1
	strb r6, [r0, #3]
	ldr r4, [r3]
	lsls r3, r4, #2
	ldr r5, _08021C8C @ =gUnknown_020383A0
	adds r3, r3, r5
	ldr r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	adds r1, r1, r7
	ldr r6, _08021C9C @ =0x000003FF
	adds r0, r6, #0
	ldr r2, [sp, #0xdc]
	ands r2, r0
	str r2, [sp, #0xdc]
	ldrh r2, [r1, #4]
	ldr r0, _08021CA0 @ =0xFFFFFC00
	ands r0, r2
	ldr r5, [sp, #0xdc]
	orrs r0, r5
	strh r0, [r1, #4]
	ldr r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r6, #0xd
	rsbs r6, r6, #0
	ands r6, r1
	movs r1, #8
	orrs r6, r1
	strb r6, [r0, #5]
	ldr r3, _08021C84 @ =gUnknown_02038388
	ldr r2, [r3]
	lsls r0, r2, #2
	ldr r4, _08021C8C @ =gUnknown_020383A0
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #5]
	movs r0, #0xf
	ands r0, r2
	ldr r5, [sp, #0xd4]
	orrs r0, r5
	strb r0, [r1, #5]
	ldr r4, [r3]
	lsls r1, r4, #2
	ldr r6, _08021C8C @ =gUnknown_020383A0
	adds r6, r1, r6
	str r6, [sp, #0xac]
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	ldr r7, [sp, #0x3c]
	cmp r7, #0
	bne _08021CB0
	ldr r2, _08021CA4 @ =gUnknown_0203A450
	ldr r3, _08021CA8 @ =gUnknown_02038380
	adds r0, r1, r3
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r4, #0xc
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, _08021CAC @ =gUnknown_087B2CEC
	b _08021CC2
	.align 2, 0
_08021C70: .4byte gUnknown_08693564
_08021C74: .4byte gUnknown_02038BE0
_08021C78: .4byte 0x000007EC
_08021C7C: .4byte gUnknown_08693364
_08021C80: .4byte gUnknown_02039BD0
_08021C84: .4byte gUnknown_02038388
_08021C88: .4byte gUnknown_08693164
_08021C8C: .4byte gUnknown_020383A0
_08021C90: .4byte gUnknown_0202F344
_08021C94: .4byte 0x000001FF
_08021C98: .4byte 0xFFFFFE00
_08021C9C: .4byte 0x000003FF
_08021CA0: .4byte 0xFFFFFC00
_08021CA4: .4byte gUnknown_0203A450
_08021CA8: .4byte gUnknown_02038380
_08021CAC: .4byte gUnknown_087B2CEC
_08021CB0:
	ldr r2, _08021E08 @ =gUnknown_0203A450
	ldr r3, _08021E0C @ =gUnknown_02038380
	adds r0, r1, r3
	ldr r0, [r0]
	lsls r0, r0, #4
	lsls r1, r4, #0xc
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, _08021E10 @ =gUnknown_087B2EFC
_08021CC2:
	str r1, [r0]
	ldr r0, _08021E14 @ =gUnknown_02038388
	ldr r3, [r0]
	lsls r2, r3, #2
	ldr r1, _08021E0C @ =gUnknown_02038380
	adds r2, r2, r1
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r3, r3, #0xc
	adds r0, r0, r3
	ldr r6, _08021E08 @ =gUnknown_0203A450
	adds r6, #4
	adds r0, r0, r6
	ldr r4, [sp, #0xd8]
	ldr r5, _08021E18 @ =0x05000200
	adds r1, r4, r5
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r5, _08021E08 @ =gUnknown_0203A450
	adds r5, #8
	adds r0, r0, r5
	movs r1, #0x20
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r4, _08021E08 @ =gUnknown_0203A450
	adds r4, #0xc
	adds r0, r0, r4
	str r1, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r7, _08021E08 @ =gUnknown_0203A450
	adds r0, r0, r7
	ldr r1, _08021E1C @ =gUnknown_087B2AEC
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, r0, r6
	ldr r6, [sp, #0xec]
	ldr r7, _08021E20 @ =0x06010000
	adds r1, r6, r7
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, r0, r5
	movs r1, #0x80
	lsls r1, r1, #2
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, r0, r4
	movs r1, #0x40
	str r1, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r1, _08021E24 @ =gUnknown_02038BE0
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0x3c]
	subs r0, r2, r3
	lsls r0, r0, #4
	adds r1, #0x80
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	subs r0, #0x13
	cmp r0, #1
	bls _08021D88
	cmp r1, #0x1b
	beq _08021D88
	cmp r1, #0x1c
	beq _08021D88
	cmp r1, #0x15
	beq _08021D88
	cmp r1, #0x16
	beq _08021D88
	cmp r1, #0x18
	beq _08021D88
	cmp r1, #0x19
	beq _08021D88
	cmp r1, #0x1d
	beq _08021D88
	cmp r1, #0x1e
	beq _08021D88
	cmp r1, #0xc
	beq _08021D88
	cmp r1, #0xd
	beq _08021D88
	bl _0802268A
_08021D88:
	ldr r6, _08021E28 @ =gUnknown_02039BD0
	ldr r5, _08021E2C @ =gUnknown_020383A0
	ldr r4, _08021E14 @ =gUnknown_02038388
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	subs r1, #2
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r4, _08021E30 @ =gUnknown_0202F344
	ldr r2, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	lsls r0, r2
	add r0, sb
	strb r0, [r1]
	ldr r7, _08021E14 @ =gUnknown_02038388
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	subs r1, #2
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, [r4]
	lsls r2, r2, #1
	movs r0, #3
	ands r2, r0
	ldrb r3, [r1, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r2, [r0]
	subs r2, #2
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	ldr r0, [r4]
	movs r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r0
	ldr r0, [sp, #0x50]
	adds r1, r0, r1
	ldr r3, _08021E34 @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08021E38 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #2]
	bl _0802268A
	.align 2, 0
_08021E08: .4byte gUnknown_0203A450
_08021E0C: .4byte gUnknown_02038380
_08021E10: .4byte gUnknown_087B2EFC
_08021E14: .4byte gUnknown_02038388
_08021E18: .4byte 0x05000200
_08021E1C: .4byte gUnknown_087B2AEC
_08021E20: .4byte 0x06010000
_08021E24: .4byte gUnknown_02038BE0
_08021E28: .4byte gUnknown_02039BD0
_08021E2C: .4byte gUnknown_020383A0
_08021E30: .4byte gUnknown_0202F344
_08021E34: .4byte 0x000001FF
_08021E38: .4byte 0xFFFFFE00
_08021E3C:
	ldr r0, _08021E90 @ =gUnknown_02038BE0
	adds r0, #0x80
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp, #0x48]
	ldr r0, _08021E90 @ =gUnknown_02038BE0
	adds r0, #0x8c
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp, #0x4c]
	ldr r5, _08021E94 @ =gUnknown_0831E480
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r6, [sp, #0x48]
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r6
	lsls r3, r0, #2
	adds r1, r1, r3
	adds r1, r1, r5
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _08021EC8
	adds r0, r6, #0
	subs r0, #0xc
	cmp r0, #1
	bhi _08021EA2
	ldr r7, _08021E98 @ =0x000007DA
	adds r0, r4, r7
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r3, r5
	ldrh r1, [r0]
	ldrh r3, [r0, #2]
	adds r0, r1, #0
	lsls r0, r3
	cmp r2, r0
	blt _08021E9C
	subs r4, r1, #1
	b _08021EDE
	.align 2, 0
_08021E90: .4byte gUnknown_02038BE0
_08021E94: .4byte gUnknown_0831E480
_08021E98: .4byte 0x000007DA
_08021E9C:
	asrs r2, r3
	adds r0, r2, #0
	b _08021ED8
_08021EA2:
	ldr r1, _08021EBC @ =gUnknown_02038BE0
	adds r1, #0x88
	adds r1, r2, r1
	adds r0, r3, r5
	ldrh r4, [r0]
	ldrh r3, [r0, #2]
	adds r0, r4, #0
	lsls r0, r3
	ldr r1, [r1]
	cmp r1, r0
	blt _08021EC0
	subs r4, #1
	b _08021EDE
	.align 2, 0
_08021EBC: .4byte gUnknown_02038BE0
_08021EC0:
	asrs r1, r3
	adds r0, r1, #0
	adds r1, r4, #0
	b _08021ED8
_08021EC8:
	ldr r0, _08021F18 @ =gUnknown_02038BE0
	adds r0, #0x88
	adds r0, r2, r0
	adds r1, r3, r5
	ldr r0, [r0]
	ldrh r2, [r1, #2]
	asrs r0, r2
	ldrh r1, [r1]
_08021ED8:
	bl sub_0803D350
	adds r4, r0, #0
_08021EDE:
	ldr r0, _08021F1C @ =gUnknown_0203A440
	ldr r0, [r0]
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	ldr r3, [sp, #0x48]
	cmp r3, #0x20
	bne _08021F24
	ldr r1, _08021F18 @ =gUnknown_02038BE0
	ldr r5, [sp, #0xd8]
	ldr r6, [sp, #0x3c]
	subs r0, r5, r6
	lsls r0, r0, #4
	adds r0, r0, r1
	adds r0, #0xa8
	ldrh r0, [r0]
	movs r7, #0x80
	lsls r7, r7, #7
	adds r0, r0, r7
	ldr r1, _08021F20 @ =0x0000FFFF
	ands r0, r1
	lsrs r0, r0, #8
	ldr r1, [sp, #0x4c]
	lsls r1, r1, #3
	str r1, [sp, #0xe4]
	lsls r2, r3, #3
	str r2, [sp, #0xe0]
	lsls r4, r4, #2
	b _08021F4A
	.align 2, 0
_08021F18: .4byte gUnknown_02038BE0
_08021F1C: .4byte gUnknown_0203A440
_08021F20: .4byte 0x0000FFFF
_08021F24:
	ldr r5, _08022074 @ =gUnknown_0831E480
	lsls r4, r4, #2
	ldr r6, [sp, #0x4c]
	lsls r3, r6, #3
	adds r1, r3, r6
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r7, [sp, #0x48]
	lsls r2, r7, #3
	adds r0, r2, r7
	lsls r0, r0, #3
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r5
	ldrh r0, [r1, #8]
	lsrs r0, r0, #8
	str r3, [sp, #0xe4]
	str r2, [sp, #0xe0]
_08021F4A:
	str r4, [sp, #0xe8]
	lsls r5, r0, #1
	ldr r0, _08022078 @ =gUnknown_08693364
	adds r0, r0, r5
	mov sl, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	ldr r7, _0802207C @ =gUnknown_02039BD0
	ldr r2, [sp, #0xd0]
	adds r2, #4
	lsls r2, r2, #3
	ldr r6, _08022080 @ =gUnknown_02038388
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	ldr r3, _08022074 @ =gUnknown_0831E480
	mov ip, r3
	ldr r4, [sp, #0xe4]
	ldr r1, [sp, #0x4c]
	adds r4, r4, r1
	str r4, [sp, #0xf0]
	ldr r3, [sp, #0xe0]
	ldr r4, [sp, #0x48]
	adds r1, r3, r4
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r3, [sp, #0xf0]
	adds r1, r1, r3
	lsls r1, r1, #2
	add r1, ip
	movs r3, #4
	ldrsh r4, [r1, r3]
	muls r0, r4, r0
	strh r0, [r2, #6]
	ldr r0, _08022084 @ =gUnknown_08693164
	adds r5, r5, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	ldr r2, [sp, #0xd0]
	adds r2, #5
	lsls r2, r2, #3
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	muls r0, r4, r0
	strh r0, [r2, #6]
	movs r2, #0
	ldrsh r0, [r5, r2]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [sp, #0xd0]
	adds r1, #6
	lsls r1, r1, #3
	ldr r2, [r6]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	strh r0, [r1, #6]
	mov r3, sl
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [sp, #0xd0]
	adds r1, #7
	lsls r1, r1, #3
	ldr r2, [r6]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	strh r0, [r1, #6]
	ldr r1, _08022088 @ =gUnknown_02038BE0
	ldr r5, [sp, #0xd8]
	ldr r6, [sp, #0x3c]
	subs r0, r5, r6
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r7, _0802208C @ =0x000007DE
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08022026
	ldr r0, _08022090 @ =gUnknown_02038398
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08022026
	ldr r0, _08022094 @ =gUnknown_020132F0
	ldr r0, [r0]
	lsrs r0, r0, #1
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _08022070
_08022026:
	ldr r4, _08022088 @ =gUnknown_02038BE0
	ldr r3, [sp, #0xd8]
	ldr r5, [sp, #0x3c]
	subs r0, r3, r5
	lsls r3, r0, #4
	adds r0, r3, r4
	ldrh r2, [r0, #0xc]
	cmp r2, #4
	beq _0802203C
	cmp r2, #6
	bne _08022098
_0802203C:
	ldr r0, _08022094 @ =gUnknown_020132F0
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	cmp r0, #1
	beq _08022056
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0xa
	beq _08022070
_08022056:
	cmp r2, #6
	bne _08022098
	adds r0, r4, #0
	adds r0, #0x80
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #0xa
	bne _08022098
	bl sub_080377EC
	ldr r6, [sp, #0x3c]
	cmp r6, r0
	beq _08022098
_08022070:
	movs r3, #2
	b _0802209A
	.align 2, 0
_08022074: .4byte gUnknown_0831E480
_08022078: .4byte gUnknown_08693364
_0802207C: .4byte gUnknown_02039BD0
_08022080: .4byte gUnknown_02038388
_08022084: .4byte gUnknown_08693164
_08022088: .4byte gUnknown_02038BE0
_0802208C: .4byte 0x000007DE
_08022090: .4byte gUnknown_02038398
_08022094: .4byte gUnknown_020132F0
_08022098:
	movs r3, #3
_0802209A:
	ldr r7, _08022460 @ =gUnknown_02039BD0
	ldr r0, _08022464 @ =gUnknown_02038388
	ldr r2, [r0]
	lsls r0, r2, #2
	ldr r1, _08022468 @ =gUnknown_020383A0
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r2, [sp, #0xd8]
	ldr r4, [sp, #0x3c]
	subs r0, r2, r4
	lsls r0, r0, #4
	str r0, [sp, #0xb0]
	ldr r5, _0802246C @ =gUnknown_02038BE0
	adds r5, r0, r5
	str r5, [sp, #0xb4]
	ldr r6, _08022470 @ =0x000007EA
	adds r0, r5, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldrb r2, [r5, #0xa]
	adds r0, r0, r2
	strb r0, [r1]
	ldr r4, _08022464 @ =gUnknown_02038388
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r5, _08022468 @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	movs r0, #3
	ands r3, r0
	ldrb r2, [r1, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r6, #0x11
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r4, [r4]
	lsls r5, r4, #2
	ldr r0, _08022468 @ =gUnknown_020383A0
	adds r5, r5, r0
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r7
	ldr r1, [sp, #0xb4]
	movs r3, #0xfd
	lsls r3, r3, #3
	adds r0, r1, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #1
	ldr r0, [sp, #0xb4]
	ldrh r0, [r0, #8]
	adds r1, r1, r0
	ldr r3, _08022474 @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08022478 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #2]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r7
	ldrb r2, [r0, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r4, _08022464 @ =gUnknown_02038388
	ldr r1, [r4]
	lsls r0, r1, #2
	ldr r5, _08022468 @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	movs r1, #1
	ldr r2, [sp, #0x3c]
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r0, #3]
	ands r6, r2
	orrs r6, r1
	strb r6, [r0, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r2, r1
	strb r2, [r0, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r4, [r4]
	lsls r5, r4, #2
	ldr r3, _08022468 @ =gUnknown_020383A0
	adds r5, r5, r3
	ldr r1, [r5]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	adds r1, r1, r7
	ldr r6, _0802247C @ =0x000003FF
	adds r0, r6, #0
	ldr r2, [sp, #0xdc]
	ands r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _08022480 @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, #4]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	ands r2, r1
	movs r1, #8
	orrs r2, r1
	strb r2, [r0, #5]
	ldr r4, _08022464 @ =gUnknown_02038388
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r5, _08022468 @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #5]
	movs r0, #0xf
	ands r0, r2
	ldr r6, [sp, #0xd4]
	orrs r0, r6
	strb r0, [r1, #5]
	ldr r5, [r4]
	lsls r4, r5, #2
	ldr r7, _08022468 @ =gUnknown_020383A0
	adds r7, r4, r7
	str r7, [sp, #0xbc]
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	ldr r3, _08022484 @ =gUnknown_0203A450
	ldr r0, _08022488 @ =gUnknown_02038380
	adds r4, r4, r0
	ldr r1, [r4]
	lsls r1, r1, #4
	lsls r5, r5, #0xc
	adds r1, r1, r5
	adds r1, r1, r3
	ldr r2, _0802248C @ =gUnknown_0831E360
	ldr r6, [sp, #0xb4]
	ldrh r0, [r6, #0xe]
	lsls r0, r0, #3
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r7, _08022490 @ =gUnknown_0203A454
	adds r0, r0, r7
	ldr r2, [sp, #0xd8]
	ldr r6, _08022494 @ =0x05000200
	adds r1, r2, r6
	str r1, [r0]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r5
	movs r7, #8
	adds r7, r7, r3
	mov ip, r7
	add r0, ip
	movs r1, #0x20
	str r1, [r0]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r2, _08022498 @ =gUnknown_0203A45C
	adds r0, r0, r2
	str r1, [r0]
	ldr r2, [r4]
	adds r2, #1
	str r2, [r4]
	lsls r2, r2, #4
	adds r2, r2, r5
	adds r2, r2, r3
	ldr r6, [sp, #0x3c]
	lsls r3, r6, #3
	subs r3, r3, r6
	lsls r3, r3, #0xd
	ldr r7, [sp, #0xe4]
	ldr r0, [sp, #0x4c]
	adds r1, r7, r0
	lsls r1, r1, #2
	ldr r6, [sp, #0xe8]
	adds r1, r6, r1
	ldr r7, [sp, #0xe0]
	ldr r6, [sp, #0x48]
	adds r0, r7, r6
	lsls r0, r0, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r7, _0802249C @ =gUnknown_0831E480
	adds r1, r1, r7
	ldrh r0, [r1, #0xa]
	ldr r1, _080224A0 @ =gUnknown_02013310
	adds r0, r0, r1
	adds r3, r3, r0
	str r3, [r2]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r1, _08022490 @ =gUnknown_0203A454
	adds r0, r0, r1
	ldr r2, [sp, #0xec]
	ldr r3, _080224A4 @ =0x06010000
	adds r1, r2, r3
	str r1, [r0]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r5
	add r0, ip
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r5, _08022498 @ =gUnknown_0203A45C
	adds r0, r0, r5
	movs r1, #0x40
	str r1, [r0]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r0, _0802246C @ =gUnknown_02038BE0
	adds r0, #0x80
	ldr r6, [sp, #0xb0]
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #6
	bls _0802234A
	cmp r0, #0x13
	beq _0802234A
	cmp r0, #0x14
	beq _0802234A
	cmp r0, #7
	beq _0802234A
	cmp r0, #8
	beq _0802234A
	b _0802268A
_0802234A:
	ldr r7, [sp, #0xd8]
	ldr r1, [sp, #0x3c]
	subs r0, r7, r1
	lsls r0, r0, #4
	str r0, [sp, #0xc0]
	ldr r2, _0802246C @ =gUnknown_02038BE0
	adds r2, r0, r2
	str r2, [sp, #0xc4]
	adds r0, r2, #0
	adds r0, #0xa6
	ldrh r0, [r0]
	lsrs r0, r0, #8
	lsls r4, r0, #1
	ldr r3, _080224A8 @ =gUnknown_08693364
	adds r3, r3, r4
	mov sl, r3
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	ldr r6, _08022460 @ =gUnknown_02039BD0
	ldr r2, [sp, #0xd0]
	adds r2, #8
	lsls r2, r2, #3
	ldr r5, _08022464 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	strh r0, [r2, #6]
	ldr r0, _080224AC @ =gUnknown_08693164
	adds r7, r4, r0
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x40]
	bl sub_0803D34C
	ldr r1, [sp, #0xd0]
	adds r1, #9
	lsls r1, r1, #3
	ldr r2, [r5]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	strh r0, [r1, #6]
	movs r2, #0
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r2, [sp, #0xd0]
	adds r2, #0xa
	lsls r2, r2, #3
	ldr r1, [r5]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	ldr r3, _0802249C @ =gUnknown_0831E480
	mov ip, r3
	ldr r4, [sp, #0xe4]
	ldr r1, [sp, #0x4c]
	adds r4, r4, r1
	str r4, [sp, #0xf0]
	ldr r3, [sp, #0xe0]
	ldr r4, [sp, #0x48]
	adds r1, r3, r4
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r3, [sp, #0xf0]
	adds r1, r1, r3
	lsls r1, r1, #2
	add r1, ip
	movs r3, #4
	ldrsh r4, [r1, r3]
	muls r0, r4, r0
	strh r0, [r2, #6]
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x44]
	bl sub_0803D34C
	ldr r1, [sp, #0xd0]
	adds r1, #0xb
	lsls r1, r1, #3
	ldr r3, [r5]
	lsls r2, r3, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	muls r0, r4, r0
	strh r0, [r1, #6]
	mov r4, sl
	movs r5, #0
	ldrsh r1, [r4, r5]
	lsls r1, r1, #4
	ldr r6, [sp, #0xc4]
	ldr r0, [r6]
	adds r0, r0, r1
	ldr r1, _080224B0 @ =gUnknown_0202F330
	lsls r3, r3, #2
	adds r1, r3, r1
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #0x40]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldrh r0, [r6, #0xc]
	cmp r0, #3
	beq _08022438
	cmp r0, #6
	bne _080224B8
_08022438:
	ldr r1, _0802246C @ =gUnknown_02038BE0
	adds r1, #4
	ldr r2, [sp, #0xc0]
	adds r1, r2, r1
	movs r4, #0
	ldrsh r0, [r7, r4]
	lsls r0, r0, #4
	ldr r5, _08022480 @ =0xFFFFFC00
	adds r0, r0, r5
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, _080224B4 @ =gUnknown_0203C468
	adds r0, r3, r0
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r6, [sp, #0x44]
	adds r0, r1, #0
	muls r0, r6, r0
	b _080224E0
	.align 2, 0
_08022460: .4byte gUnknown_02039BD0
_08022464: .4byte gUnknown_02038388
_08022468: .4byte gUnknown_020383A0
_0802246C: .4byte gUnknown_02038BE0
_08022470: .4byte 0x000007EA
_08022474: .4byte 0x000001FF
_08022478: .4byte 0xFFFFFE00
_0802247C: .4byte 0x000003FF
_08022480: .4byte 0xFFFFFC00
_08022484: .4byte gUnknown_0203A450
_08022488: .4byte gUnknown_02038380
_0802248C: .4byte gUnknown_0831E360
_08022490: .4byte gUnknown_0203A454
_08022494: .4byte 0x05000200
_08022498: .4byte gUnknown_0203A45C
_0802249C: .4byte gUnknown_0831E480
_080224A0: .4byte gUnknown_02013310
_080224A4: .4byte 0x06010000
_080224A8: .4byte gUnknown_08693364
_080224AC: .4byte gUnknown_08693164
_080224B0: .4byte gUnknown_0202F330
_080224B4: .4byte gUnknown_0203C468
_080224B8:
	ldr r1, _0802269C @ =gUnknown_02038BE0
	adds r1, #4
	ldr r0, [sp, #0xc0]
	adds r1, r0, r1
	movs r2, #0
	ldrsh r0, [r7, r2]
	lsls r0, r0, #4
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, _080226A0 @ =gUnknown_0203C468
	adds r0, r3, r0
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r5, [sp, #0x44]
	adds r0, r1, #0
	muls r0, r5, r0
_080224E0:
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r7, _080226A4 @ =gUnknown_02039BD0
	ldr r6, _080226A8 @ =gUnknown_02038388
	mov ip, r6
	ldr r1, [r6]
	lsls r0, r1, #2
	ldr r2, _080226AC @ =gUnknown_020383A0
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	mov r1, sb
	adds r1, #0xf0
	strb r1, [r0]
	ldr r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #1]
	movs r2, #3
	orrs r1, r2
	strb r1, [r0, #1]
	ldr r2, [r6]
	lsls r0, r2, #2
	ldr r3, _080226AC @ =gUnknown_020383A0
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r6, #0x11
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1, #1]
	mov r4, ip
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r4, [r4]
	lsls r5, r4, #2
	adds r5, r5, r3
	ldr r1, [r5]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	adds r1, r1, r7
	ldr r2, [sp, #0x50]
	subs r2, #0x20
	ldr r3, _080226B0 @ =0x000001FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080226B4 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, #2]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r7
	ldrb r2, [r0, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r0, #3]
	mov r4, ip
	ldr r1, [r4]
	lsls r0, r1, #2
	ldr r5, _080226AC @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	movs r1, #1
	ldr r2, [sp, #0x3c]
	ands r1, r2
	lsls r1, r1, #4
	ldrb r2, [r0, #3]
	ands r6, r2
	orrs r6, r1
	strb r6, [r0, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r2, r1
	strb r2, [r0, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r3, #0x3f
	ands r3, r1
	movs r1, #0x80
	orrs r3, r1
	strb r3, [r0, #3]
	ldr r4, [r4]
	lsls r5, r4, #2
	ldr r6, _080226AC @ =gUnknown_020383A0
	adds r5, r5, r6
	ldr r1, [r5]
	lsls r1, r1, #3
	lsls r4, r4, #0xa
	adds r1, r1, r4
	adds r1, r1, r7
	ldr r2, [sp, #0xdc]
	adds r2, #0x20
	ldr r3, _080226B8 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _080226BC @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r2
	strh r0, [r1, #4]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r2, #0xd
	rsbs r2, r2, #0
	ands r2, r1
	movs r1, #8
	orrs r2, r1
	strb r2, [r0, #5]
	mov r4, ip
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r5, [sp, #0x3c]
	lsls r2, r5, #2
	adds r2, #1
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_0802268A:
	add sp, #0xf4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802269C: .4byte gUnknown_02038BE0
_080226A0: .4byte gUnknown_0203C468
_080226A4: .4byte gUnknown_02039BD0
_080226A8: .4byte gUnknown_02038388
_080226AC: .4byte gUnknown_020383A0
_080226B0: .4byte 0x000001FF
_080226B4: .4byte 0xFFFFFE00
_080226B8: .4byte 0x000003FF
_080226BC: .4byte 0xFFFFFC00

	thumb_func_start sub_080226C0
sub_080226C0: @ 0x080226C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	str r0, [sp]
	ldr r1, _0802274C @ =gUnknown_02038BE0
	lsls r2, r0, #7
	subs r0, r2, r0
	lsls r3, r0, #4
	adds r4, r3, r1
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r0, [r0]
	mov sb, r1
	cmp r0, #0
	bne _080226E8
	bl _080233C8
_080226E8:
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	movs r5, #0
	str r5, [sp, #0x10]
	str r2, [sp, #0x1c]
	str r3, [sp, #0x14]
	ldr r6, _0802274C @ =gUnknown_02038BE0
	movs r7, #0xfc
	lsls r7, r7, #1
	adds r0, r6, r7
	adds r0, r3, r0
	str r0, [sp, #0x24]
	str r4, [sp, #0x28]
	str r3, [sp, #0x2c]
	movs r0, #2
	str r0, [sp, #0x30]
	movs r1, #3
	str r1, [sp, #0x34]
	ldr r0, [sp]
	ldr r2, [sp, #0xc]
	ands r0, r2
	lsls r0, r0, #4
	str r0, [sp, #0x18]

	non_word_aligned_thumb_func_start sub_0802271A
sub_0802271A: @ 0x0802271A
	ldr r3, [sp, #0x24]
	ldrh r0, [r3, #0x1c]
	lsls r2, r0, #1
	adds r0, r2, r0
	ldrh r4, [r3, #0x18]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r5, [sp, #0x14]
	adds r1, r0, r5
	ldr r6, _08022750 @ =gUnknown_02038CF4
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, #1
	bne _08022754
	movs r0, #0xe4
	lsls r0, r0, #1
	add r0, sb
	adds r0, r1, r0
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #1
	b _08022762
	.align 2, 0
_0802274C: .4byte gUnknown_02038BE0
_08022750: .4byte gUnknown_02038CF4
_08022754:
	movs r0, #0xe4
	lsls r0, r0, #1
	add r0, sb
	adds r0, r1, r0
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
_08022762:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, _0802281C @ =gUnknown_0203A440
	ldr r7, [r3]
	mov sl, r7
	ldr r1, _08022820 @ =gUnknown_02038BE0
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r5, [sp, #0x2c]
	adds r0, r5, r0
	ldr r1, _08022824 @ =gUnknown_0202F330
	ldr r6, _08022828 @ =gUnknown_02038388
	ldr r2, [r6]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	muls r0, r7, r0
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x24]
	strh r0, [r1, #0xc]
	ldr r5, _08022820 @ =gUnknown_02038BE0
	movs r6, #0x80
	lsls r6, r6, #2
	adds r1, r5, r6
	ldr r0, [sp, #0x2c]
	adds r1, r0, r1
	ldr r0, _0802282C @ =gUnknown_0203C468
	adds r2, r2, r0
	ldr r0, [r1]
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	muls r0, r7, r0
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x24]
	strh r0, [r1, #0xe]
	ldr r1, [r1]
	cmp r1, #3
	beq _080227BA
	b _08022F08
_080227BA:
	ldr r1, _08022830 @ =gUnknown_0831BF8C
	lsls r2, r4, #5
	adds r0, r2, r1
	ldrh r0, [r0, #0x1c]
	mov ip, r1
	str r2, [sp, #0x20]
	cmp r0, #0
	beq _080227D6
	ldr r2, [sp, #0x24]
	ldrh r1, [r2, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08022814
_080227D6:
	ldr r4, [sp, #0x20]
	add r4, ip
	movs r5, #0x10
	ldrsh r3, [r4, r5]
	movs r1, #0xf0
	subs r1, r1, r3
	ldr r5, [sp, #0x2c]
	add r5, sb
	movs r6, #0x81
	lsls r6, r6, #2
	adds r0, r5, r6
	ldrh r2, [r0]
	cmp r1, r2
	bgt _080227FA
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _08022814
_080227FA:
	movs r0, #0x12
	ldrsh r4, [r4, r0]
	movs r1, #0xa0
	subs r1, r1, r4
	ldr r2, _08022834 @ =0x00000206
	adds r0, r5, r2
	ldrh r2, [r0]
	cmp r1, r2
	bgt _08022838
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bhi _08022838
_08022814:
	movs r3, #2
	str r3, [sp, #4]
	b _08022848
	.align 2, 0
_0802281C: .4byte gUnknown_0203A440
_08022820: .4byte gUnknown_02038BE0
_08022824: .4byte gUnknown_0202F330
_08022828: .4byte gUnknown_02038388
_0802282C: .4byte gUnknown_0203C468
_08022830: .4byte gUnknown_0831BF8C
_08022834: .4byte 0x00000206
_08022838:
	ldr r4, _08022988 @ =gUnknown_0202F344
	ldr r0, [r4]
	lsls r0, r0, #1
	movs r5, #1
	orrs r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
_08022848:
	ldr r6, _0802298C @ =gUnknown_02039BD0
	mov r8, r6
	ldr r0, _08022990 @ =gUnknown_02038388
	mov sb, r0
	ldr r1, [r0]
	lsls r0, r1, #2
	ldr r2, _08022994 @ =gUnknown_020383A0
	adds r0, r0, r2
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	ldr r4, _08022998 @ =gUnknown_0831BF8C
	ldr r3, [sp, #0x20]
	adds r4, r3, r4
	movs r5, #0x12
	ldrsh r0, [r4, r5]
	ldr r6, _08022988 @ =gUnknown_0202F344
	ldr r1, [r6]
	lsls r0, r1
	ldr r1, [sp, #0x24]
	ldrb r1, [r1, #0xe]
	adds r0, r0, r1
	strb r0, [r2]
	mov r2, sb
	ldr r1, [r2]
	lsls r0, r1, #2
	ldr r3, _08022994 @ =gUnknown_020383A0
	adds r0, r0, r3
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	movs r0, #3
	ldr r5, [sp, #4]
	ands r5, r0
	ldrb r0, [r2, #1]
	movs r6, #4
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2, #1]
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, r8
	ldrb r1, [r0, #1]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0, #1]
	mov r5, sb
	ldr r2, [r5]
	lsls r0, r2, #2
	ldr r6, _08022994 @ =gUnknown_020383A0
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r6
	mov ip, r0
	ldr r3, [r0]
	lsls r3, r3, #3
	lsls r5, r1, #0xa
	adds r3, r3, r5
	add r3, r8
	movs r0, #0x10
	ldrsh r2, [r4, r0]
	ldr r1, _08022988 @ =gUnknown_0202F344
	ldr r0, [r1]
	lsls r2, r0
	ldr r6, [sp, #0x24]
	ldrh r6, [r6, #0xc]
	adds r2, r2, r6
	ldr r1, _0802299C @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #2]
	ldr r6, _080229A0 @ =0xFFFFFE00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _080229A4
	mov r7, ip
	ldr r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r5
	add r0, r8
	ldrb r1, [r0, #3]
	movs r3, #0xf
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0, #3]
	mov r4, sb
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r5, _08022994 @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r5
	b _08022A82
	.align 2, 0
_08022988: .4byte gUnknown_0202F344
_0802298C: .4byte gUnknown_02039BD0
_08022990: .4byte gUnknown_02038388
_08022994: .4byte gUnknown_020383A0
_08022998: .4byte gUnknown_0831BF8C
_0802299C: .4byte 0x000001FF
_080229A0: .4byte 0xFFFFFE00
_080229A4:
	ldr r6, [sp, #0x28]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r0, [r0]
	lsrs r0, r0, #8
	ldr r2, [sp, #0x10]
	cmp r2, #2
	bgt _08022AA4
	lsls r5, r0, #1
	ldr r3, _08022A98 @ =gUnknown_08693364
	adds r6, r5, r3
	movs r4, #0
	ldrsh r0, [r6, r4]
	lsls r0, r0, #0x10
	mov r1, sl
	bl sub_0803D34C
	ldr r1, [sp]
	lsls r4, r1, #5
	ldr r2, [sp, #0x34]
	lsls r1, r2, #2
	adds r4, r4, r1
	lsls r2, r4, #3
	mov r3, sb
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	strh r0, [r2, #6]
	ldr r0, _08022A9C @ =gUnknown_08693164
	adds r5, r5, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	mov r1, sl
	bl sub_0803D34C
	adds r2, r4, #1
	lsls r2, r2, #3
	mov r3, sb
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	strh r0, [r2, #6]
	movs r1, #0
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0803D34C
	adds r2, r4, #2
	lsls r2, r2, #3
	mov r3, sb
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	strh r0, [r2, #6]
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0803D34C
	adds r4, #3
	lsls r4, r4, #3
	mov r6, sb
	ldr r1, [r6]
	lsls r3, r1, #0xa
	adds r4, r4, r3
	add r4, r8
	strh r0, [r4, #6]
	lsls r1, r1, #2
	ldr r7, _08022AA0 @ =gUnknown_020383A0
	adds r1, r1, r7
	ldr r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	add r2, r8
	movs r0, #7
	ldr r3, [sp, #0x34]
	ands r3, r0
	lsls r3, r3, #1
	ldrb r0, [r2, #3]
	movs r4, #0xf
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #3]
	ldr r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	ldr r5, [sp, #0x18]
	orrs r0, r5
	strb r0, [r1, #3]
	ldr r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r7
_08022A82:
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	b _08022B84
	.align 2, 0
_08022A98: .4byte gUnknown_08693364
_08022A9C: .4byte gUnknown_08693164
_08022AA0: .4byte gUnknown_020383A0
_08022AA4:
	lsls r5, r0, #1
	ldr r0, _08022BE8 @ =gUnknown_08693364
	adds r6, r5, r0
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	mov r1, sl
	bl sub_0803D34C
	ldr r2, [sp]
	lsls r4, r2, #5
	ldr r3, [sp, #0x30]
	lsls r1, r3, #2
	adds r1, #0x40
	adds r4, r4, r1
	lsls r2, r4, #3
	mov r3, sb
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	strh r0, [r2, #6]
	ldr r0, _08022BEC @ =gUnknown_08693164
	adds r5, r5, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	mov r1, sl
	bl sub_0803D34C
	adds r2, r4, #1
	lsls r2, r2, #3
	mov r3, sb
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	strh r0, [r2, #6]
	movs r1, #0
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0803D34C
	adds r2, r4, #2
	lsls r2, r2, #3
	mov r3, sb
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	strh r0, [r2, #6]
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0803D34C
	adds r4, #3
	lsls r4, r4, #3
	mov r6, sb
	ldr r1, [r6]
	lsls r3, r1, #0xa
	adds r4, r4, r3
	add r4, r8
	strh r0, [r4, #6]
	lsls r1, r1, #2
	ldr r7, _08022BF0 @ =gUnknown_020383A0
	adds r1, r1, r7
	ldr r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	add r2, r8
	movs r0, #7
	ldr r3, [sp, #0x30]
	ands r3, r0
	lsls r3, r3, #1
	ldrb r0, [r2, #3]
	movs r4, #0xf
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #3]
	ldr r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	ldr r5, [sp, #0x18]
	orrs r0, r5
	strb r0, [r1, #3]
	ldr r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, r8
	ldrb r1, [r0, #3]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #3]
_08022B84:
	ldr r6, _08022BF4 @ =gUnknown_02039BD0
	ldr r7, _08022BF0 @ =gUnknown_020383A0
	mov r8, r7
	ldr r5, _08022BF8 @ =gUnknown_02038388
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r4, _08022BFC @ =gUnknown_0831BF8C
	ldr r0, [sp, #0x20]
	adds r7, r0, r4
	ldrh r2, [r7, #0xe]
	lsls r2, r2, #6
	ldrb r3, [r1, #3]
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r7, #0x14]
	mov sb, r1
	mov ip, r4
	mov r4, r8
	mov r2, sb
	cmp r2, #1
	beq _08022BC4
	ldrh r0, [r7, #0x18]
	cmp r0, #1
	bne _08022C04
_08022BC4:
	ldr r3, _08022BF8 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r3, [r0]
	lsls r3, r3, #3
	lsls r1, r1, #0xa
	adds r3, r3, r1
	adds r3, r3, r6
	ldr r5, [sp]
	lsls r2, r5, #8
	adds r2, #0x50
	ldr r7, [sp, #0x10]
	lsls r0, r7, #4
	adds r2, r2, r0
	ldr r1, _08022C00 @ =0x000003FF
	adds r0, r1, #0
	b _08022C38
	.align 2, 0
_08022BE8: .4byte gUnknown_08693364
_08022BEC: .4byte gUnknown_08693164
_08022BF0: .4byte gUnknown_020383A0
_08022BF4: .4byte gUnknown_02039BD0
_08022BF8: .4byte gUnknown_02038388
_08022BFC: .4byte gUnknown_0831BF8C
_08022C00: .4byte 0x000003FF
_08022C04:
	ldr r0, _08022CE0 @ =gUnknown_02038388
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r3, [r0]
	lsls r3, r3, #3
	lsls r1, r1, #0xa
	adds r3, r3, r1
	adds r3, r3, r6
	ldr r1, [sp]
	lsls r2, r1, #8
	ldr r5, [sp, #0x10]
	lsls r0, r5, #4
	adds r0, #0x50
	adds r2, r2, r0
	ldr r1, [sp, #0x24]
	movs r5, #0x12
	ldrsh r0, [r1, r5]
	ldrh r7, [r7, #0x1a]
	asrs r0, r7
	adds r2, r2, r0
	mov r0, sb
	subs r0, #1
	ands r2, r0
	ldr r7, _08022CE4 @ =0x000003FF
	adds r0, r7, #0
_08022C38:
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r5, _08022CE8 @ =0xFFFFFC00
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r7, _08022CEC @ =gUnknown_02038BE0
	mov sb, r7
	ldr r0, _08022CE0 @ =gUnknown_02038388
	ldr r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #5]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r2, r0
	movs r0, #8
	orrs r2, r0
	strb r2, [r1, #5]
	ldr r5, _08022CE0 @ =gUnknown_02038388
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r6, [sp]
	lsls r2, r6, #2
	adds r2, #2
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r6, [r5]
	lsls r5, r6, #2
	adds r1, r5, r4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, [sp, #0x2c]
	add r1, sb
	movs r7, #0x85
	lsls r7, r7, #2
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, #0
	bne _08022D80
	ldr r2, _08022CF0 @ =0x00000212
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08022D70
	ldr r3, [sp, #8]
	cmp r3, #0
	beq _08022D70
	movs r4, #0
	str r4, [sp, #8]
	ldr r7, [sp]
	cmp r7, #0
	bne _08022CFC
	ldr r2, _08022CF4 @ =gUnknown_0203A450
	ldr r3, _08022CF8 @ =gUnknown_02038380
	adds r0, r5, r3
	ldr r1, [r0]
	lsls r1, r1, #4
	lsls r0, r6, #0xc
	adds r1, r1, r0
	adds r1, r1, r2
	mov r0, ip
	adds r0, #4
	ldr r4, [sp, #0x20]
	adds r0, r4, r0
	b _08022D14
	.align 2, 0
_08022CE0: .4byte gUnknown_02038388
_08022CE4: .4byte 0x000003FF
_08022CE8: .4byte 0xFFFFFC00
_08022CEC: .4byte gUnknown_02038BE0
_08022CF0: .4byte 0x00000212
_08022CF4: .4byte gUnknown_0203A450
_08022CF8: .4byte gUnknown_02038380
_08022CFC:
	ldr r2, _08022D58 @ =gUnknown_0203A450
	ldr r3, _08022D5C @ =gUnknown_02038380
	adds r0, r5, r3
	ldr r1, [r0]
	lsls r1, r1, #4
	lsls r0, r6, #0xc
	adds r1, r1, r0
	adds r1, r1, r2
	mov r0, ip
	adds r0, #8
	ldr r5, [sp, #0x20]
	adds r0, r5, r0
_08022D14:
	ldr r0, [r0]
	adds r0, #0xa
	str r0, [r1]
	adds r5, r2, #0
	adds r0, r3, #0
	ldr r6, _08022D60 @ =gUnknown_02038388
	ldr r3, [r6]
	lsls r2, r3, #2
	adds r2, r2, r0
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r3, r3, #0xc
	adds r0, r0, r3
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r7, [sp, #0x1c]
	ldr r4, _08022D64 @ =0x0500024A
	adds r1, r7, r4
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r5, _08022D68 @ =gUnknown_0203A458
	adds r0, r0, r5
	movs r1, #0xa
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r6, _08022D6C @ =gUnknown_0203A45C
	adds r0, r0, r6
	movs r1, #0x10
	b _08022E3E
	.align 2, 0
_08022D58: .4byte gUnknown_0203A450
_08022D5C: .4byte gUnknown_02038380
_08022D60: .4byte gUnknown_02038388
_08022D64: .4byte 0x0500024A
_08022D68: .4byte gUnknown_0203A458
_08022D6C: .4byte gUnknown_0203A45C
_08022D70:
	ldr r0, [sp, #0x2c]
	add r0, sb
	movs r7, #0x85
	lsls r7, r7, #2
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r0, #0
	beq _08022E46
_08022D80:
	ldr r0, [sp, #0x2c]
	add r0, sb
	ldr r1, _08022DCC @ =0x0000020A
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #3
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08022E46
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _08022E46
	movs r4, #0
	str r4, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r5, r0, #0x12
	ands r5, r2
	ldr r6, [sp]
	cmp r6, #0
	bne _08022DDC
	ldr r3, _08022DD0 @ =gUnknown_0203A450
	ldr r4, _08022DD4 @ =gUnknown_02038380
	ldr r7, _08022DD8 @ =gUnknown_02038388
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r1, r1, #4
	lsls r2, r2, #0xc
	adds r1, r1, r2
	adds r1, r1, r3
	mov r0, ip
	adds r0, #4
	ldr r2, [sp, #0x20]
	adds r0, r2, r0
	b _08022DFA
	.align 2, 0
_08022DCC: .4byte 0x0000020A
_08022DD0: .4byte gUnknown_0203A450
_08022DD4: .4byte gUnknown_02038380
_08022DD8: .4byte gUnknown_02038388
_08022DDC:
	ldr r3, _08022EE4 @ =gUnknown_0203A450
	ldr r4, _08022EE8 @ =gUnknown_02038380
	ldr r6, _08022EEC @ =gUnknown_02038388
	ldr r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r1, r1, #4
	lsls r2, r2, #0xc
	adds r1, r1, r2
	adds r1, r1, r3
	mov r0, ip
	adds r0, #8
	ldr r7, [sp, #0x20]
	adds r0, r7, r0
_08022DFA:
	lsls r2, r5, #5
	ldr r0, [r0]
	adds r0, r0, r2
	adds r0, #0x14
	str r0, [r1]
	adds r5, r3, #0
	adds r0, r4, #0
	ldr r1, _08022EEC @ =gUnknown_02038388
	ldr r3, [r1]
	lsls r2, r3, #2
	adds r2, r2, r0
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r3, r3, #0xc
	adds r0, r0, r3
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r4, [sp, #0x1c]
	ldr r5, _08022EF0 @ =0x05000254
	adds r1, r4, r5
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r6, _08022EF4 @ =gUnknown_0203A458
	adds r0, r0, r6
	movs r1, #0xc
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r7, _08022EF8 @ =gUnknown_0203A45C
	adds r0, r0, r7
	movs r1, #0x20
_08022E3E:
	str r1, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_08022E46:
	ldr r0, [sp, #0x20]
	add r0, ip
	ldrh r1, [r0, #0x18]
	cmp r1, #0
	bne _08022E5E
	ldr r0, [sp, #0x2c]
	add r0, sb
	ldr r2, _08022EFC @ =0x00000212
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _08022E64
_08022E5E:
	cmp r1, #1
	beq _08022E64
	b _0802339C
_08022E64:
	ldr r6, _08022EE4 @ =gUnknown_0203A450
	ldr r0, _08022EE8 @ =gUnknown_02038380
	ldr r3, _08022EEC @ =gUnknown_02038388
	ldr r4, [r3]
	lsls r5, r4, #2
	adds r5, r5, r0
	ldr r2, [r5]
	lsls r2, r2, #4
	lsls r4, r4, #0xc
	adds r2, r2, r4
	adds r2, r2, r6
	ldr r3, [sp, #0x20]
	add r3, ip
	ldrh r7, [r3, #0xc]
	mov r8, r7
	ldr r0, [sp, #0x2c]
	add r0, sb
	ldr r1, _08022F00 @ =0x0000020A
	adds r0, r0, r1
	movs r7, #0
	ldrsh r1, [r0, r7]
	ldrh r0, [r3, #0x1a]
	asrs r1, r0
	ldrh r0, [r3, #0x14]
	subs r0, #1
	ands r1, r0
	mov r7, r8
	muls r7, r1, r7
	adds r1, r7, #0
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r5]
	lsls r1, r1, #4
	adds r1, r1, r4
	adds r6, #4
	adds r1, r1, r6
	ldr r0, [sp]
	lsls r2, r0, #0xd
	ldr r3, [sp, #0x10]
	lsls r0, r3, #9
	ldr r6, _08022F04 @ =0x06010A00
	adds r0, r0, r6
	adds r2, r2, r0
	str r2, [r1]
	ldr r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r7, _08022EF4 @ =gUnknown_0203A458
	adds r0, r0, r7
	mov r1, r8
	str r1, [r0]
	ldr r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r2, _08022EF8 @ =gUnknown_0203A45C
	adds r0, r0, r2
	movs r1, #0x20
	str r1, [r0]
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	b _0802339C
	.align 2, 0
_08022EE4: .4byte gUnknown_0203A450
_08022EE8: .4byte gUnknown_02038380
_08022EEC: .4byte gUnknown_02038388
_08022EF0: .4byte 0x05000254
_08022EF4: .4byte gUnknown_0203A458
_08022EF8: .4byte gUnknown_0203A45C
_08022EFC: .4byte 0x00000212
_08022F00: .4byte 0x0000020A
_08022F04: .4byte 0x06010A00
_08022F08:
	subs r0, r1, #6
	cmp r0, #1
	bls _08022F1C
	cmp r1, #0xc
	beq _08022F1C
	cmp r1, #0xa
	beq _08022F1C
	cmp r1, #0x10
	beq _08022F1C
	b _0802339C
_08022F1C:
	ldr r2, [sp, #0x2c]
	add r2, sb
	movs r4, #0x81
	lsls r4, r4, #2
	adds r0, r2, r4
	ldr r5, _08022F4C @ =0xFFFFFEF0
	adds r1, r5, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08022F50 @ =0xFED00000
	cmp r1, r0
	bls _08022F46
	ldr r6, _08022F54 @ =0x00000206
	adds r0, r2, r6
	ldrh r0, [r0]
	subs r0, #0xc0
	lsls r0, r0, #0x10
	ldr r1, _08022F58 @ =0xFF200000
	cmp r0, r1
	bhi _08022F5C
_08022F46:
	movs r7, #2
	str r7, [sp, #4]
	b _08022F60
	.align 2, 0
_08022F4C: .4byte 0xFFFFFEF0
_08022F50: .4byte 0xFED00000
_08022F54: .4byte 0x00000206
_08022F58: .4byte 0xFF200000
_08022F5C:
	movs r0, #3
	str r0, [sp, #4]
_08022F60:
	ldr r1, [sp, #0x24]
	ldr r0, [r1]
	cmp r0, #0x10
	beq _08022F6C
	cmp r0, #0xa
	bne _08022F70
_08022F6C:
	ldr r7, [r3]
	b _08022F74
_08022F70:
	ldr r0, [r3]
	lsls r7, r0, #1
_08022F74:
	mov sl, r7
	ldr r2, [sp, #0x10]
	cmp r2, #2
	bgt _08023078
	ldr r3, _08023064 @ =gUnknown_08693364
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #0x10
	mov r1, sl
	bl sub_0803D34C
	ldr r6, _08023068 @ =gUnknown_02039BD0
	ldr r5, [sp]
	lsls r4, r5, #5
	ldr r2, [sp, #0x34]
	lsls r1, r2, #2
	adds r4, r4, r1
	lsls r2, r4, #3
	ldr r3, _0802306C @ =gUnknown_02038388
	mov r8, r3
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	strh r0, [r2, #6]
	ldr r5, _08023070 @ =gUnknown_08693164
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	mov r1, sl
	bl sub_0803D34C
	adds r2, r4, #1
	lsls r2, r2, #3
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	strh r0, [r2, #6]
	movs r1, #0
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0803D34C
	adds r2, r4, #2
	lsls r2, r2, #3
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	strh r0, [r2, #6]
	ldr r5, _08023064 @ =gUnknown_08693364
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0803D34C
	adds r4, #3
	lsls r4, r4, #3
	mov r2, r8
	ldr r1, [r2]
	lsls r3, r1, #0xa
	adds r4, r4, r3
	adds r4, r4, r6
	strh r0, [r4, #6]
	ldr r4, _08023074 @ =gUnknown_020383A0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	adds r2, r2, r6
	movs r0, #7
	ldr r3, [sp, #0x34]
	ands r3, r0
	lsls r3, r3, #1
	ldrb r0, [r2, #3]
	movs r5, #0xf
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #3]
	mov r7, r8
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r0, [r1, #3]
	movs r3, #0x11
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	ldr r5, [sp, #0x18]
	orrs r0, r5
	strb r0, [r1, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r1, [r0, #3]
	movs r6, #0x21
	rsbs r6, r6, #0
	adds r2, r6, #0
	ands r1, r2
	b _0802315A
	.align 2, 0
_08023064: .4byte gUnknown_08693364
_08023068: .4byte gUnknown_02039BD0
_0802306C: .4byte gUnknown_02038388
_08023070: .4byte gUnknown_08693164
_08023074: .4byte gUnknown_020383A0
_08023078:
	ldr r1, _080232F4 @ =gUnknown_08693364
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x10
	mov r1, sl
	bl sub_0803D34C
	ldr r6, _080232F8 @ =gUnknown_02039BD0
	ldr r3, [sp]
	lsls r4, r3, #5
	ldr r5, [sp, #0x30]
	lsls r1, r5, #2
	adds r1, #0x40
	adds r4, r4, r1
	lsls r2, r4, #3
	ldr r1, _080232FC @ =gUnknown_02038388
	mov r8, r1
	ldr r1, [r1]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	strh r0, [r2, #6]
	ldr r5, _08023300 @ =gUnknown_08693164
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	mov r1, sl
	bl sub_0803D34C
	adds r2, r4, #1
	lsls r2, r2, #3
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	strh r0, [r2, #6]
	movs r1, #0
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0803D34C
	adds r2, r4, #2
	lsls r2, r2, #3
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	strh r0, [r2, #6]
	ldr r5, _080232F4 @ =gUnknown_08693364
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	adds r1, r7, #0
	bl sub_0803D34C
	adds r4, #3
	lsls r4, r4, #3
	mov r2, r8
	ldr r1, [r2]
	lsls r3, r1, #0xa
	adds r4, r4, r3
	adds r4, r4, r6
	strh r0, [r4, #6]
	ldr r4, _08023304 @ =gUnknown_020383A0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r2, [r1]
	lsls r2, r2, #3
	adds r2, r2, r3
	adds r2, r2, r6
	movs r0, #7
	ldr r3, [sp, #0x30]
	ands r3, r0
	lsls r3, r3, #1
	ldrb r0, [r2, #3]
	movs r5, #0xf
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #3]
	mov r7, r8
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r0, [r1, #3]
	movs r3, #0x11
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	ldr r5, [sp, #0x18]
	orrs r0, r5
	strb r0, [r1, #3]
	ldr r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r1, [r0, #3]
	movs r2, #0x20
	orrs r1, r2
_0802315A:
	strb r1, [r0, #3]
	ldr r6, _080232F8 @ =gUnknown_02039BD0
	mov sb, r6
	ldr r7, _08023304 @ =gUnknown_020383A0
	mov r8, r7
	ldr r0, _080232FC @ =gUnknown_02038388
	mov sl, r0
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldr r2, [sp, #0x24]
	ldrb r0, [r2, #0xe]
	adds r0, #0xe0
	strb r0, [r1]
	mov r3, sl
	ldr r1, [r3]
	lsls r0, r1, #2
	add r0, r8
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sb
	movs r0, #3
	ldr r4, [sp, #4]
	ands r4, r0
	ldrb r0, [r2, #1]
	movs r5, #4
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #1]
	ldr r2, [r3]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r1, [r3]
	lsls r0, r1, #2
	add r0, r8
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, sb
	ldrb r1, [r0, #1]
	movs r6, #0x11
	rsbs r6, r6, #0
	adds r2, r6, #0
	ands r1, r2
	strb r1, [r0, #1]
	ldr r1, [r3]
	lsls r0, r1, #2
	add r0, r8
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, sb
	ldrb r1, [r0, #1]
	movs r7, #0x21
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r1, r2
	strb r1, [r0, #1]
	ldr r2, [r3]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #1]
	movs r4, #0x3f
	adds r0, r4, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r5, [r3]
	lsls r6, r5, #2
	add r6, r8
	ldr r2, [r6]
	lsls r2, r2, #3
	lsls r5, r5, #0xa
	adds r2, r2, r5
	add r2, sb
	ldr r0, [sp, #0x24]
	ldrh r3, [r0, #0xc]
	subs r3, #0x20
	ldr r1, _08023308 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r2, #2]
	ldr r7, _0802330C @ =0xFFFFFE00
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, #2]
	ldr r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
	add r0, sb
	ldrb r1, [r0, #3]
	ands r4, r1
	movs r1, #0x80
	orrs r4, r1
	strb r4, [r0, #3]
	mov r0, sl
	ldr r4, [r0]
	lsls r5, r4, #2
	add r5, r8
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	add r3, sb
	ldr r1, [sp]
	lsls r2, r1, #8
	adds r2, #0x50
	ldr r6, [sp, #0x10]
	lsls r0, r6, #4
	adds r2, r2, r0
	ldr r7, _08023310 @ =0x000003FF
	adds r0, r7, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r6, _08023314 @ =0xFFFFFC00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	add r1, sb
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	mov r7, sl
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldr r0, [sp]
	lsls r2, r0, #2
	adds r2, #2
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r5, [r7]
	lsls r1, r5, #2
	add r8, r1
	mov r2, r8
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r3, [sp, #0x24]
	ldr r0, [r3]
	ldr r4, _08023318 @ =gUnknown_02038BE0
	mov sb, r4
	cmp r0, #7
	bne _08023328
	ldr r3, _0802331C @ =gUnknown_0203A450
	ldr r4, _08023320 @ =gUnknown_02038380
	adds r0, r1, r4
	ldr r2, [r0]
	lsls r2, r2, #4
	lsls r0, r5, #0xc
	adds r2, r2, r0
	adds r2, r2, r3
	ldr r5, [sp, #0x24]
	ldrh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #9
	ldr r1, _08023324 @ =gUnknown_087AB788
	b _0802334C
	.align 2, 0
_080232F4: .4byte gUnknown_08693364
_080232F8: .4byte gUnknown_02039BD0
_080232FC: .4byte gUnknown_02038388
_08023300: .4byte gUnknown_08693164
_08023304: .4byte gUnknown_020383A0
_08023308: .4byte 0x000001FF
_0802330C: .4byte 0xFFFFFE00
_08023310: .4byte 0x000003FF
_08023314: .4byte 0xFFFFFC00
_08023318: .4byte gUnknown_02038BE0
_0802331C: .4byte gUnknown_0203A450
_08023320: .4byte gUnknown_02038380
_08023324: .4byte gUnknown_087AB788
_08023328:
	ldr r3, _080233D8 @ =gUnknown_0203A450
	ldr r4, _080233DC @ =gUnknown_02038380
	adds r0, r1, r4
	ldr r2, [r0]
	lsls r2, r2, #4
	lsls r0, r5, #0xc
	adds r2, r2, r0
	adds r2, r2, r3
	ldr r6, [sp, #0x28]
	ldr r7, _080233E0 @ =0x0000020A
	adds r0, r6, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #9
	ldr r1, _080233E4 @ =gUnknown_087AC788
_0802334C:
	adds r0, r0, r1
	str r0, [r2]
	adds r5, r3, #0
	adds r0, r4, #0
	ldr r1, _080233E8 @ =gUnknown_02038388
	ldr r4, [r1]
	lsls r3, r4, #2
	adds r3, r3, r0
	ldr r1, [r3]
	lsls r1, r1, #4
	lsls r4, r4, #0xc
	adds r1, r1, r4
	adds r0, r5, #4
	adds r1, r1, r0
	ldr r5, [sp]
	lsls r2, r5, #0xd
	ldr r6, [sp, #0x10]
	lsls r0, r6, #9
	ldr r7, _080233EC @ =0x06010A00
	adds r0, r0, r7
	adds r2, r2, r0
	str r2, [r1]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r1, _080233F0 @ =gUnknown_0203A458
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r2, _080233F4 @ =gUnknown_0203A45C
	adds r0, r0, r2
	movs r1, #0x40
	str r1, [r0]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
_0802339C:
	ldr r3, [sp, #0x24]
	adds r3, #0x24
	str r3, [sp, #0x24]
	ldr r4, [sp, #0x28]
	adds r4, #0x24
	str r4, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	adds r5, #0x24
	str r5, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	adds r6, #1
	str r6, [sp, #0x30]
	ldr r7, [sp, #0x34]
	adds r7, #1
	str r7, [sp, #0x34]
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	bgt _080233C8
	bl sub_0802271A
_080233C8:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080233D8: .4byte gUnknown_0203A450
_080233DC: .4byte gUnknown_02038380
_080233E0: .4byte 0x0000020A
_080233E4: .4byte gUnknown_087AC788
_080233E8: .4byte gUnknown_02038388
_080233EC: .4byte 0x06010A00
_080233F0: .4byte gUnknown_0203A458
_080233F4: .4byte gUnknown_0203A45C

	thumb_func_start sub_080233F8
sub_080233F8: @ 0x080233F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x174
	str r0, [sp, #0xe0]
	ldr r5, _080234F8 @ =gUnknown_02038BE0
	lsls r1, r0, #7
	subs r3, r1, r0
	lsls r4, r3, #4
	adds r2, r4, r5
	movs r6, #0xb5
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, #0
	bne _08023420
	bl _0802498A
_08023420:
	ldr r7, _080234FC @ =0x000002DA
	adds r0, r2, r7
	ldrh r0, [r0]
	str r0, [sp, #0xf8]
	movs r0, #0
	str r0, [sp, #0xf0]
	str r1, [sp, #0x148]
	str r3, [sp, #0xfc]
	str r4, [sp, #0x100]
	ldr r1, _08023500 @ =0x000002F6
	adds r1, r2, r1
	str r1, [sp, #0x10c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r3, r2, r3
	str r3, [sp, #0x120]
	ldr r4, [sp, #0xe0]
	adds r5, r4, #0
	movs r6, #1
	ands r5, r6
	str r5, [sp, #0x104]
	adds r0, r5, #0
	ands r0, r6
	lsls r0, r0, #4
	str r0, [sp, #0x108]

	non_word_aligned_thumb_func_start sub_08023452
sub_08023452: @ 0x08023452
	ldr r0, _08023504 @ =gUnknown_0203A440
	ldr r0, [r0]
	str r0, [sp, #0xe8]
	str r0, [sp, #0xe4]
	ldr r7, [sp, #0xf0]
	lsls r1, r7, #6
	ldr r0, [sp, #0x100]
	adds r3, r1, r0
	ldr r2, _080234F8 @ =gUnknown_02038BE0
	adds r5, r3, r2
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrh r0, [r0]
	lsrs r0, r0, #8
	str r0, [sp, #0xec]
	movs r6, #0xc4
	lsls r6, r6, #2
	adds r7, r2, r6
	adds r0, r3, r7
	ldr r2, [r0]
	subs r0, r2, #3
	str r1, [sp, #0x154]
	cmp r0, #1
	bls _0802348A
	cmp r2, #8
	beq _0802348A
	b _08023C30
_0802348A:
	ldr r7, [sp, #0xe0]
	lsls r7, r7, #8
	str r7, [sp, #0x14c]
	ldr r0, [sp, #0xe0]
	lsls r0, r0, #2
	str r0, [sp, #0x144]
	cmp r2, #8
	bne _0802349C
	b _080236F6
_0802349C:
	ldr r1, _080234F8 @ =gUnknown_02038BE0
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r0, r3, r0
	ldr r4, _08023508 @ =gUnknown_02038388
	ldr r2, [r4]
	lsls r2, r2, #2
	ldr r5, _0802350C @ =gUnknown_0202F330
	adds r1, r2, r5
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r6, [sp, #0xe8]
	muls r0, r6, r0
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r7, _080234F8 @ =gUnknown_02038BE0
	movs r1, #0xd1
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r0, r3, r0
	ldr r3, _08023510 @ =gUnknown_0203C468
	adds r2, r2, r3
	ldr r0, [r0]
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	muls r0, r6, r0
	lsrs r3, r0, #0x10
	mov r0, sl
	subs r0, #0xf8
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x18
	cmp r0, r1
	bls _080234F4
	adds r0, r3, #0
	subs r0, #0xa8
	lsls r0, r0, #0x10
	ldr r1, _08023514 @ =0xFF500000
	cmp r0, r1
	bhi _08023518
_080234F4:
	movs r7, #2
	b _08023522
	.align 2, 0
_080234F8: .4byte gUnknown_02038BE0
_080234FC: .4byte 0x000002DA
_08023500: .4byte 0x000002F6
_08023504: .4byte gUnknown_0203A440
_08023508: .4byte gUnknown_02038388
_0802350C: .4byte gUnknown_0202F330
_08023510: .4byte gUnknown_0203C468
_08023514: .4byte 0xFF500000
_08023518:
	ldr r4, _080237D0 @ =gUnknown_0202F344
	ldr r0, [r4]
	lsls r7, r0, #1
	movs r5, #1
	orrs r7, r5
_08023522:
	ldr r6, _080237D4 @ =gUnknown_02038388
	ldr r2, [r6]
	lsls r0, r2, #2
	ldr r1, _080237D8 @ =gUnknown_020383A0
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r2, _080237DC @ =gUnknown_02039BD0
	adds r1, r1, r2
	ldr r4, _080237D0 @ =gUnknown_0202F344
	ldr r2, [r4]
	movs r6, #8
	rsbs r6, r6, #0
	adds r0, r6, #0
	lsls r0, r2
	adds r0, r3, r0
	strb r0, [r1]
	ldr r5, _080237D4 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r0, r1, #2
	ldr r2, _080237D8 @ =gUnknown_020383A0
	adds r0, r0, r2
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	ldr r3, _080237DC @ =gUnknown_02039BD0
	adds r2, r2, r3
	movs r0, #3
	ands r7, r0
	ldrb r0, [r2, #1]
	movs r4, #4
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	ldr r5, _080237D8 @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r7, _080237D4 @ =gUnknown_02038388
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r2, [r1, #1]
	movs r3, #0x21
	rsbs r3, r3, #0
	mov r8, r3
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r4, _080237DC @ =gUnknown_02039BD0
	adds r1, r1, r4
	ldrb r2, [r1, #1]
	movs r5, #0x3f
	adds r0, r5, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r3, [r7]
	lsls r4, r3, #2
	ldr r7, _080237D8 @ =gUnknown_020383A0
	adds r4, r4, r7
	ldr r2, [r4]
	lsls r2, r2, #3
	lsls r3, r3, #0xa
	adds r2, r2, r3
	ldr r0, _080237DC @ =gUnknown_02039BD0
	adds r2, r2, r0
	ldr r1, _080237D0 @ =gUnknown_0202F344
	ldr r0, [r1]
	lsls r6, r0
	add r6, sl
	ldr r7, _080237E0 @ =0x000001FF
	adds r0, r7, #0
	ands r6, r0
	ldrh r0, [r2, #2]
	ldr r7, _080237E4 @ =0xFFFFFE00
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r6
	strh r0, [r2, #2]
	ldr r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r1, _080237DC @ =gUnknown_02039BD0
	adds r0, r0, r1
	ldrb r1, [r0, #3]
	movs r3, #0xf
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0, #3]
	ldr r4, _080237D4 @ =gUnknown_02038388
	ldr r1, [r4]
	lsls r0, r1, #2
	ldr r6, _080237D8 @ =gUnknown_020383A0
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	ldr r7, _080237DC @ =gUnknown_02039BD0
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	mov r2, sb
	ands r2, r1
	strb r2, [r0, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	mov r3, r8
	ands r3, r1
	strb r3, [r0, #3]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r0, [r1, #3]
	ands r5, r0
	movs r0, #0x40
	orrs r5, r0
	strb r5, [r1, #3]
	ldr r4, [r4]
	lsls r5, r4, #2
	adds r5, r5, r6
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r7
	ldr r7, [sp, #0xe0]
	lsls r6, r7, #8
	adds r3, r6, #0
	adds r3, #0xb0
	ldr r1, _080237E8 @ =0x000003FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r2, #4]
	ldr r7, _080237EC @ =0xFFFFFC00
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r0, _080237DC @ =gUnknown_02039BD0
	adds r1, r1, r0
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r1, _080237D4 @ =gUnknown_02038388
	ldr r2, [r1]
	lsls r0, r2, #2
	ldr r3, _080237D8 @ =gUnknown_020383A0
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r4, _080237DC @ =gUnknown_02039BD0
	adds r1, r1, r4
	ldr r5, [sp, #0xe0]
	lsls r4, r5, #2
	adds r2, r4, #3
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r7, _080237D4 @ =gUnknown_02038388
	ldr r1, [r7]
	lsls r1, r1, #2
	ldr r0, _080237D8 @ =gUnknown_020383A0
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	str r6, [sp, #0x14c]
	str r4, [sp, #0x144]
_080236F6:
	ldr r1, [sp, #0x154]
	ldr r2, [sp, #0x100]
	adds r3, r1, r2
	ldr r5, _080237F0 @ =gUnknown_02038BE0
	adds r4, r3, r5
	movs r6, #0xc5
	lsls r6, r6, #2
	adds r0, r5, r6
	adds r0, r3, r0
	ldr r7, _080237D4 @ =gUnknown_02038388
	mov r8, r7
	mov r1, r8
	ldr r2, [r1]
	lsls r2, r2, #2
	ldr r5, _080237F4 @ =gUnknown_0202F330
	adds r1, r2, r5
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r6, [sp, #0xe4]
	muls r0, r6, r0
	asrs r0, r0, #0x10
	movs r7, #0xc7
	lsls r7, r7, #2
	adds r1, r4, r7
	strh r0, [r1]
	ldr r0, _080237F8 @ =gUnknown_02038EF8
	adds r3, r3, r0
	ldr r1, _080237FC @ =gUnknown_0203C468
	adds r2, r2, r1
	ldr r0, [r3]
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r2, [sp, #0xe8]
	muls r0, r2, r0
	asrs r0, r0, #0x10
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r1, r4, r3
	strh r0, [r1]
	ldr r0, _08023800 @ =gUnknown_08693364
	ldr r5, [sp, #0xec]
	lsls r4, r5, #1
	adds r7, r4, r0
	movs r6, #0
	ldrsh r0, [r7, r6]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0xe4]
	bl sub_0803D34C
	ldr r1, _080237DC @ =gUnknown_02039BD0
	mov sb, r1
	ldr r3, [sp, #0xe0]
	lsls r2, r3, #5
	ldr r5, [sp, #0xf0]
	adds r5, #6
	lsls r1, r5, #2
	adds r6, r2, r1
	lsls r2, r6, #3
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sb
	strh r0, [r2, #6]
	ldr r0, _08023804 @ =gUnknown_08693164
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0xe4]
	bl sub_0803D34C
	adds r2, r6, #1
	lsls r2, r2, #3
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sb
	strh r0, [r2, #6]
	ldr r0, [sp, #0xec]
	subs r0, #0x41
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r5, [sp, #0x140]
	cmp r0, #0x7e
	bhi _08023808
	movs r5, #0
	ldrsh r0, [r4, r5]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0xe8]
	bl sub_0803D34C
	adds r2, r6, #2
	lsls r2, r2, #3
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sb
	strh r0, [r2, #6]
	movs r4, #0
	ldrsh r0, [r7, r4]
	rsbs r0, r0, #0
	b _0802382A
	.align 2, 0
_080237D0: .4byte gUnknown_0202F344
_080237D4: .4byte gUnknown_02038388
_080237D8: .4byte gUnknown_020383A0
_080237DC: .4byte gUnknown_02039BD0
_080237E0: .4byte 0x000001FF
_080237E4: .4byte 0xFFFFFE00
_080237E8: .4byte 0x000003FF
_080237EC: .4byte 0xFFFFFC00
_080237F0: .4byte gUnknown_02038BE0
_080237F4: .4byte gUnknown_0202F330
_080237F8: .4byte gUnknown_02038EF8
_080237FC: .4byte gUnknown_0203C468
_08023800: .4byte gUnknown_08693364
_08023804: .4byte gUnknown_08693164
_08023808:
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0xe8]
	bl sub_0803D34C
	adds r2, r6, #2
	lsls r2, r2, #3
	mov r3, r8
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sb
	strh r0, [r2, #6]
	movs r4, #0
	ldrsh r0, [r7, r4]
_0802382A:
	lsls r0, r0, #0x10
	ldr r1, [sp, #0xe8]
	bl sub_0803D34C
	adds r2, r6, #3
	lsls r2, r2, #3
	mov r5, r8
	ldr r1, [r5]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sb
	strh r0, [r2, #6]
	ldr r2, _08023898 @ =gUnknown_0831D88C
	ldr r6, [sp, #0xf8]
	lsls r3, r6, #5
	adds r7, r3, r2
	movs r0, #0x10
	ldrsh r5, [r7, r0]
	movs r1, #0xf0
	subs r1, r1, r5
	ldr r4, [sp, #0x154]
	ldr r6, [sp, #0x100]
	adds r0, r4, r6
	ldr r4, _0802389C @ =gUnknown_02038BE0
	adds r6, r0, r4
	movs r4, #0xc7
	lsls r4, r4, #2
	adds r0, r6, r4
	ldrh r4, [r0]
	ldr r0, _0802389C @ =gUnknown_02038BE0
	str r0, [sp, #0x160]
	str r3, [sp, #0x15c]
	cmp r1, r4
	bgt _08023876
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bls _08023892
_08023876:
	movs r1, #0x12
	ldrsh r3, [r7, r1]
	movs r1, #0xa0
	subs r1, r1, r3
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r2, [r0]
	cmp r1, r2
	bgt _080238A0
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bhi _080238A0
_08023892:
	movs r7, #2
	b _080238AA
	.align 2, 0
_08023898: .4byte gUnknown_0831D88C
_0802389C: .4byte gUnknown_02038BE0
_080238A0:
	ldr r3, _08023AFC @ =gUnknown_0202F344
	ldr r0, [r3]
	lsls r7, r0, #1
	movs r4, #1
	orrs r7, r4
_080238AA:
	ldr r5, _08023B00 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r0, r1, #2
	ldr r6, _08023B04 @ =gUnknown_020383A0
	adds r0, r0, r6
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	ldr r0, _08023B08 @ =gUnknown_02039BD0
	adds r2, r2, r0
	ldr r1, [sp, #0x154]
	ldr r3, [sp, #0x100]
	adds r1, r1, r3
	mov sl, r1
	ldr r4, [sp, #0x160]
	add sl, r4
	movs r3, #0xcb
	lsls r3, r3, #2
	add r3, sl
	ldr r5, [sp, #0x15c]
	ldr r6, _08023B0C @ =gUnknown_0831D88C
	adds r5, r5, r6
	mov ip, r5
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	ldr r4, _08023AFC @ =gUnknown_0202F344
	ldr r1, [r4]
	lsls r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	strb r0, [r2]
	ldr r5, _08023B00 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r0, r1, #2
	ldr r6, _08023B04 @ =gUnknown_020383A0
	adds r0, r0, r6
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	ldr r0, _08023B08 @ =gUnknown_02039BD0
	adds r2, r2, r0
	movs r0, #3
	ands r7, r0
	ldrb r0, [r2, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r4, _08023B08 @ =gUnknown_02039BD0
	adds r1, r1, r4
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r4
	ldrb r2, [r1, #1]
	movs r6, #0x11
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	ldr r5, _08023B04 @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r4
	ldrb r2, [r1, #1]
	movs r7, #0x21
	rsbs r7, r7, #0
	mov sb, r7
	mov r0, sb
	ands r0, r2
	strb r0, [r1, #1]
	ldr r0, _08023B00 @ =gUnknown_02038388
	ldr r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r4
	ldrb r2, [r1, #1]
	movs r3, #0x3f
	mov r8, r3
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #1]
	ldr r5, _08023B00 @ =gUnknown_02038388
	ldr r4, [r5]
	lsls r5, r4, #2
	ldr r7, _08023B04 @ =gUnknown_020383A0
	adds r5, r5, r7
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	ldr r0, _08023B08 @ =gUnknown_02039BD0
	adds r3, r3, r0
	movs r1, #0xc7
	lsls r1, r1, #2
	add r1, sl
	mov r7, ip
	movs r0, #0x10
	ldrsh r2, [r7, r0]
	ldr r7, _08023AFC @ =gUnknown_0202F344
	ldr r0, [r7]
	lsls r2, r0
	ldrh r1, [r1]
	adds r2, r2, r1
	ldr r1, _08023B10 @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #2]
	ldr r7, _08023B14 @ =0xFFFFFE00
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r2, [r5]
	lsls r2, r2, #3
	adds r2, r2, r4
	ldr r0, _08023B08 @ =gUnknown_02039BD0
	adds r2, r2, r0
	movs r0, #7
	ldr r1, [sp, #0x140]
	ands r1, r0
	lsls r3, r1, #1
	ldrb r0, [r2, #3]
	movs r4, #0xf
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #3]
	ldr r5, _08023B00 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r0, r1, #2
	ldr r7, _08023B04 @ =gUnknown_020383A0
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	ldr r1, _08023B08 @ =gUnknown_02039BD0
	adds r0, r0, r1
	ldrb r1, [r0, #3]
	ands r6, r1
	ldr r2, [sp, #0x108]
	orrs r6, r2
	strb r6, [r0, #3]
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	ldr r3, _08023B08 @ =gUnknown_02039BD0
	adds r0, r0, r3
	ldrb r1, [r0, #3]
	mov r4, sb
	ands r4, r1
	strb r4, [r0, #3]
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r3
	mov r5, ip
	ldrh r1, [r5, #0xe]
	lsls r1, r1, #6
	ldrb r2, [r0, #3]
	mov r6, r8
	ands r6, r2
	orrs r6, r1
	strb r6, [r0, #3]
	ldr r7, _08023B00 @ =gUnknown_02038388
	ldr r4, [r7]
	lsls r5, r4, #2
	ldr r0, _08023B04 @ =gUnknown_020383A0
	adds r5, r5, r0
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r3
	ldr r3, [sp, #0x14c]
	adds r3, #0xc0
	ldr r1, [sp, #0xf0]
	lsls r0, r1, #4
	adds r3, r3, r0
	ldr r6, _08023B18 @ =0x000003FF
	adds r0, r6, #0
	ands r3, r0
	ldrh r0, [r2, #4]
	ldr r7, _08023B1C @ =0xFFFFFC00
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r0, _08023B08 @ =gUnknown_02039BD0
	adds r1, r1, r0
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r1, _08023B00 @ =gUnknown_02038388
	ldr r2, [r1]
	lsls r0, r2, #2
	ldr r3, _08023B04 @ =gUnknown_020383A0
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r4, _08023B08 @ =gUnknown_02039BD0
	adds r1, r1, r4
	ldr r2, [sp, #0x144]
	adds r2, #3
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r5, _08023B00 @ =gUnknown_02038388
	ldr r4, [r5]
	lsls r7, r4, #2
	ldr r6, _08023B04 @ =gUnknown_020383A0
	adds r1, r7, r6
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08023B20 @ =0x0000034A
	add sl, r0
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xf0]
	adds r3, #1
	str r3, [sp, #0x13c]
	cmp r0, #0
	beq _08023AD6
	bl _0802497E
_08023AD6:
	ldr r5, [sp, #0xf0]
	cmp r5, #0
	bne _08023B8C
	ldr r6, [sp, #0xe0]
	cmp r6, #0
	bne _08023B2C
	ldr r2, _08023B24 @ =gUnknown_0203A450
	ldr r3, _08023B28 @ =gUnknown_02038380
	adds r0, r7, r3
	ldr r1, [r0]
	lsls r1, r1, #4
	lsls r0, r4, #0xc
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r0, _08023B0C @ =gUnknown_0831D88C
	adds r0, #4
	ldr r7, [sp, #0x15c]
	adds r0, r7, r0
	b _08023B44
	.align 2, 0
_08023AFC: .4byte gUnknown_0202F344
_08023B00: .4byte gUnknown_02038388
_08023B04: .4byte gUnknown_020383A0
_08023B08: .4byte gUnknown_02039BD0
_08023B0C: .4byte gUnknown_0831D88C
_08023B10: .4byte 0x000001FF
_08023B14: .4byte 0xFFFFFE00
_08023B18: .4byte 0x000003FF
_08023B1C: .4byte 0xFFFFFC00
_08023B20: .4byte 0x0000034A
_08023B24: .4byte gUnknown_0203A450
_08023B28: .4byte gUnknown_02038380
_08023B2C:
	ldr r2, _08023C0C @ =gUnknown_0203A450
	ldr r3, _08023C10 @ =gUnknown_02038380
	adds r0, r7, r3
	ldr r1, [r0]
	lsls r1, r1, #4
	lsls r0, r4, #0xc
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r0, _08023C14 @ =gUnknown_0831D88C
	adds r0, #8
	ldr r4, [sp, #0x15c]
	adds r0, r4, r0
_08023B44:
	ldr r0, [r0]
	adds r0, #0x10
	str r0, [r1]
	ldr r5, _08023C18 @ =gUnknown_02038388
	ldr r3, [r5]
	lsls r2, r3, #2
	ldr r6, _08023C10 @ =gUnknown_02038380
	adds r2, r2, r6
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r3, r3, #0xc
	adds r0, r0, r3
	ldr r1, _08023C0C @ =gUnknown_0203A450
	adds r1, #4
	adds r0, r0, r1
	ldr r7, [sp, #0x148]
	ldr r4, _08023C1C @ =0x05000270
	adds r1, r7, r4
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r5, _08023C20 @ =gUnknown_0203A458
	adds r0, r0, r5
	movs r1, #0xa
	str r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r6, _08023C24 @ =gUnknown_0203A45C
	adds r0, r0, r6
	movs r1, #0x10
	str r1, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_08023B8C:
	ldr r7, [sp, #0x154]
	ldr r1, [sp, #0x100]
	adds r0, r7, r1
	ldr r2, [sp, #0x160]
	adds r0, r0, r2
	ldr r3, _08023C28 @ =0x0000034A
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r5, [sp, #0xf0]
	adds r5, #1
	str r5, [sp, #0x13c]
	cmp r0, #0
	beq _08023BAC
	bl _0802497E
_08023BAC:
	ldr r2, _08023C0C @ =gUnknown_0203A450
	ldr r0, _08023C10 @ =gUnknown_02038380
	ldr r6, _08023C18 @ =gUnknown_02038388
	ldr r3, [r6]
	lsls r4, r3, #2
	adds r4, r4, r0
	ldr r0, [r4]
	lsls r0, r0, #4
	lsls r3, r3, #0xc
	adds r0, r0, r3
	adds r0, r0, r2
	ldr r7, [sp, #0x15c]
	ldr r1, _08023C14 @ =gUnknown_0831D88C
	adds r5, r7, r1
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r4]
	lsls r1, r1, #4
	adds r1, r1, r3
	adds r2, #4
	adds r1, r1, r2
	ldr r6, [sp, #0xe0]
	lsls r2, r6, #0xd
	ldr r7, [sp, #0xf0]
	lsls r0, r7, #9
	ldr r6, _08023C2C @ =0x06011800
	adds r0, r0, r6
	adds r2, r2, r0
	str r2, [r1]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r7, _08023C20 @ =gUnknown_0203A458
	adds r0, r0, r7
	ldrh r1, [r5, #0xc]
	str r1, [r0]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r1, _08023C24 @ =gUnknown_0203A45C
	adds r0, r0, r1
	movs r1, #0x20
	str r1, [r0]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	bl _0802497E
	.align 2, 0
_08023C0C: .4byte gUnknown_0203A450
_08023C10: .4byte gUnknown_02038380
_08023C14: .4byte gUnknown_0831D88C
_08023C18: .4byte gUnknown_02038388
_08023C1C: .4byte 0x05000270
_08023C20: .4byte gUnknown_0203A458
_08023C24: .4byte gUnknown_0203A45C
_08023C28: .4byte 0x0000034A
_08023C2C: .4byte 0x06011800
_08023C30:
	ldr r3, [sp, #0xf0]
	adds r3, #1
	str r3, [sp, #0x13c]
	cmp r2, #9
	beq _08023C3E
	bl _0802497E
_08023C3E:
	ldr r6, [sp, #0x10c]
	ldrh r4, [r6]
	cmp r4, #0
	beq _08023C48
	b _08024240
_08023C48:
	ldr r0, _08023D54 @ =gUnknown_020132F0
	ldr r0, [r0]
	movs r1, #3
	bl sub_0803D34C
	movs r1, #1
	ands r0, r1
	ldr r2, [sp, #0x104]
	cmp r0, r2
	beq _08023C60
	bl _0802497E
_08023C60:
	movs r3, #0
	str r3, [sp, #0xf4]
	ldr r4, _08023D58 @ =0xFFFFFCF0
	adds r4, r7, r4
	str r4, [sp, #0x160]
	ldr r5, [sp, #0xe0]
	lsls r5, r5, #8
	str r5, [sp, #0x14c]
	ldr r6, [sp, #0xe0]
	lsls r6, r6, #2
	str r6, [sp, #0x144]
	ldr r0, [sp, #0xf0]
	lsls r0, r0, #4
	str r0, [sp, #0x150]
	ldr r1, [sp, #0xe0]
	lsls r1, r1, #0xd
	str r1, [sp, #0x158]
	ldr r2, [sp, #0x148]
	ldr r3, [sp, #0xe0]
	subs r0, r2, r3
	lsls r0, r0, #4
	ldr r4, [sp, #0x154]
	adds r4, r4, r0
	str r4, [sp, #0x118]
	ldr r5, _08023D5C @ =gUnknown_02038388
	mov r8, r5
	movs r6, #0xc7
	lsls r6, r6, #2
	adds r1, r0, r6
	ldr r2, [sp, #0x154]
	adds r1, r2, r1
	ldr r3, [sp, #0x160]
	adds r1, r1, r3
	mov sl, r1
	mov ip, r4
	movs r4, #0
	str r4, [sp, #0x16c]
	adds r0, r0, r3
	str r0, [sp, #0x110]
	ldr r5, _08023D60 @ =0x000002FA
	adds r5, r0, r5
	str r5, [sp, #0x114]
	adds r0, r7, #4
	add r0, ip
	str r0, [sp, #0x11c]
	ldr r6, _08023D64 @ =gUnknown_02039BD0
	ldr r7, _08023D68 @ =gUnknown_020383A0
	mov sb, r7
_08023CC0:
	ldr r1, [sp, #0x110]
	ldr r2, _08023D6C @ =0x000002DE
	adds r0, r1, r2
	ldrh r4, [r0]
	cmp r4, #1
	beq _08023CCE
	b _08023E20
_08023CCE:
	ldr r3, [sp, #0x114]
	ldrh r0, [r3]
	cmp r0, #0
	beq _08023CD8
	b _08023E20
_08023CD8:
	ldr r0, _08023D70 @ =gUnknown_0831E2D4
	ldr r5, [sp, #0x16c]
	adds r0, r5, r0
	ldr r7, [sp, #0x11c]
	ldr r1, [r7]
	ldr r0, [r0]
	adds r1, r1, r0
	mov r0, r8
	ldr r2, [r0]
	lsls r2, r2, #2
	ldr r3, _08023D74 @ =gUnknown_0202F330
	adds r0, r2, r3
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r5, [sp, #0xe4]
	adds r0, r1, #0
	muls r0, r5, r0
	asrs r0, r0, #0x10
	mov r7, sl
	strh r0, [r7]
	ldr r0, _08023D78 @ =gUnknown_02038BE0
	movs r1, #0xcb
	lsls r1, r1, #2
	adds r3, r0, r1
	add r3, ip
	ldr r5, [sp, #0x118]
	ldr r7, _08023D7C @ =gUnknown_02038EF8
	adds r0, r5, r7
	ldr r1, _08023D80 @ =gUnknown_0831E2E4
	ldr r5, [sp, #0x16c]
	adds r1, r5, r1
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	ldr r7, _08023D84 @ =gUnknown_0203C468
	adds r2, r2, r7
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #0xe8]
	muls r0, r1, r0
	asrs r2, r0, #0x10
	strh r2, [r3]
	ldr r3, _08023D88 @ =0xFFFFFEF0
	adds r0, r3, #0
	mov r5, sl
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	ldr r1, _08023D8C @ =0xFED00000
	cmp r0, r1
	bls _08023D4E
	adds r0, r2, #0
	subs r0, #0xc0
	lsls r0, r0, #0x10
	ldr r1, _08023D90 @ =0xFF200000
	cmp r0, r1
	bhi _08023D94
_08023D4E:
	movs r7, #2
	b _08023D9C
	.align 2, 0
_08023D54: .4byte gUnknown_020132F0
_08023D58: .4byte 0xFFFFFCF0
_08023D5C: .4byte gUnknown_02038388
_08023D60: .4byte 0x000002FA
_08023D64: .4byte gUnknown_02039BD0
_08023D68: .4byte gUnknown_020383A0
_08023D6C: .4byte 0x000002DE
_08023D70: .4byte gUnknown_0831E2D4
_08023D74: .4byte gUnknown_0202F330
_08023D78: .4byte gUnknown_02038BE0
_08023D7C: .4byte gUnknown_02038EF8
_08023D80: .4byte gUnknown_0831E2E4
_08023D84: .4byte gUnknown_0203C468
_08023D88: .4byte 0xFFFFFEF0
_08023D8C: .4byte 0xFED00000
_08023D90: .4byte 0xFF200000
_08023D94:
	ldr r7, _08023E10 @ =gUnknown_0202F344
	ldr r0, [r7]
	lsls r7, r0, #1
	orrs r7, r4
_08023D9C:
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, _08023E14 @ =gUnknown_02038BE0
	movs r4, #0xcb
	lsls r4, r4, #2
	adds r3, r2, r4
	add r3, ip
	ldr r5, _08023E10 @ =gUnknown_0202F344
	ldr r4, [r5]
	movs r2, #0x20
	rsbs r2, r2, #0
	adds r0, r2, #0
	lsls r0, r4
	ldrb r3, [r3]
	adds r0, r0, r3
	strb r0, [r1]
	mov r0, r8
	ldr r4, [r0]
	lsls r5, r4, #2
	add r5, sb
	str r5, [sp, #0x170]
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	adds r3, r3, r6
	ldr r1, _08023E10 @ =gUnknown_0202F344
	ldr r0, [r1]
	lsls r2, r0
	mov r5, sl
	ldrh r5, [r5]
	adds r2, r2, r5
	ldr r1, _08023E18 @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #2]
	ldr r5, _08023E1C @ =0xFFFFFE00
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r1, [sp, #0x170]
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r6
	ldrb r1, [r0, #3]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #3]
	b _08023F40
	.align 2, 0
_08023E10: .4byte gUnknown_0202F344
_08023E14: .4byte gUnknown_02038BE0
_08023E18: .4byte 0x000001FF
_08023E1C: .4byte 0xFFFFFE00
_08023E20:
	ldr r0, _08023E9C @ =gUnknown_0831E2B4
	ldr r2, [sp, #0x16c]
	adds r0, r2, r0
	ldr r3, [sp, #0x11c]
	ldr r1, [r3]
	ldr r0, [r0]
	adds r1, r1, r0
	mov r4, r8
	ldr r2, [r4]
	lsls r2, r2, #2
	ldr r5, _08023EA0 @ =gUnknown_0202F330
	adds r0, r2, r5
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r7, [sp, #0xe4]
	adds r0, r1, #0
	muls r0, r7, r0
	asrs r0, r0, #0x10
	mov r1, sl
	strh r0, [r1]
	ldr r4, _08023EA4 @ =gUnknown_02038BE0
	movs r5, #0xcb
	lsls r5, r5, #2
	adds r3, r4, r5
	add r3, ip
	ldr r7, [sp, #0x118]
	ldr r1, _08023EA8 @ =gUnknown_02038EF8
	adds r0, r7, r1
	ldr r1, _08023EAC @ =gUnknown_0831E2C4
	ldr r4, [sp, #0x16c]
	adds r1, r4, r1
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	ldr r5, _08023EB0 @ =gUnknown_0203C468
	adds r2, r2, r5
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r7, [sp, #0xe8]
	muls r0, r7, r0
	asrs r2, r0, #0x10
	strh r2, [r3]
	ldr r1, _08023EB4 @ =0xFFFFFF00
	adds r0, r1, #0
	mov r3, sl
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ldr r1, _08023EB8 @ =0xFEF00000
	cmp r0, r1
	bls _08023E96
	adds r0, r2, #0
	subs r0, #0xb0
	lsls r0, r0, #0x10
	ldr r1, _08023EBC @ =0xFF400000
	cmp r0, r1
	bhi _08023EC0
_08023E96:
	movs r7, #2
	b _08023ECA
	.align 2, 0
_08023E9C: .4byte gUnknown_0831E2B4
_08023EA0: .4byte gUnknown_0202F330
_08023EA4: .4byte gUnknown_02038BE0
_08023EA8: .4byte gUnknown_02038EF8
_08023EAC: .4byte gUnknown_0831E2C4
_08023EB0: .4byte gUnknown_0203C468
_08023EB4: .4byte 0xFFFFFF00
_08023EB8: .4byte 0xFEF00000
_08023EBC: .4byte 0xFF400000
_08023EC0:
	ldr r4, _08024144 @ =gUnknown_0202F344
	ldr r0, [r4]
	lsls r7, r0, #1
	movs r5, #1
	orrs r7, r5
_08023ECA:
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, _08024148 @ =gUnknown_02038BE0
	movs r4, #0xcb
	lsls r4, r4, #2
	adds r3, r2, r4
	add r3, ip
	ldr r5, _08024144 @ =gUnknown_0202F344
	ldr r4, [r5]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r2, #0
	lsls r0, r4
	ldrb r3, [r3]
	adds r0, r0, r3
	strb r0, [r1]
	mov r0, r8
	ldr r4, [r0]
	lsls r5, r4, #2
	add r5, sb
	str r5, [sp, #0x170]
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	adds r3, r3, r6
	ldr r1, _08024144 @ =gUnknown_0202F344
	ldr r0, [r1]
	lsls r2, r0
	mov r5, sl
	ldrh r5, [r5]
	adds r2, r2, r5
	ldr r1, _0802414C @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #2]
	ldr r5, _08024150 @ =0xFFFFFE00
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r0, [sp, #0x170]
	ldr r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r6
	ldrb r2, [r1, #3]
	movs r0, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #3]
_08023F40:
	mov r2, r8
	ldr r1, [r2]
	lsls r0, r1, #2
	add r0, sb
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	movs r0, #3
	ands r7, r0
	ldrb r0, [r2, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	mov r4, r8
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	subs r3, #0xd
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r4, #0x21
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	strb r0, [r1, #1]
	mov r5, r8
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sb
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r1, [r0, #3]
	movs r7, #0xf
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r1, r2
	strb r1, [r0, #3]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, [sp, #0xf4]
	ldr r5, _08024154 @ =gUnknown_0831E2AC
	adds r0, r2, r5
	ldrb r0, [r0]
	movs r7, #1
	ands r0, r7
	lsls r0, r0, #4
	ldrb r2, [r1, #3]
	ands r3, r2
	orrs r3, r0
	strb r3, [r1, #3]
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, [sp, #0xf4]
	ldr r3, _08024158 @ =gUnknown_0831E2B0
	adds r0, r2, r3
	ldrb r0, [r0]
	ands r0, r7
	lsls r0, r0, #5
	ldrb r2, [r1, #3]
	ands r4, r2
	orrs r4, r0
	strb r4, [r1, #3]
	mov r5, r8
	ldr r4, [r5]
	lsls r5, r4, #2
	add r5, sb
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	adds r3, r3, r6
	ldr r2, [sp, #0x14c]
	adds r2, #0xc0
	ldr r7, [sp, #0x150]
	adds r2, r2, r7
	ldr r1, _0802415C @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r7, _08024160 @ =0xFFFFFC00
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r6
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, [sp, #0x144]
	adds r2, #3
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	mov r2, r8
	ldr r1, [r2]
	lsls r1, r1, #2
	add r1, sb
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r3, #2
	add sl, r3
	add ip, r3
	ldr r4, [sp, #0x16c]
	adds r4, #4
	str r4, [sp, #0x16c]
	ldr r5, [sp, #0xf4]
	adds r5, #1
	str r5, [sp, #0xf4]
	cmp r5, #3
	bgt _080240C2
	b _08023CC0
_080240C2:
	ldr r6, [sp, #0xfc]
	lsls r7, r6, #4
	ldr r0, [sp, #0x160]
	adds r2, r7, r0
	ldr r1, _08024164 @ =0x000002DE
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, #1
	bne _0802418C
	ldr r3, _08024168 @ =0x000002FA
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802418C
	ldr r5, _0802416C @ =gUnknown_02038388
	ldr r4, [r5]
	lsls r5, r4, #2
	ldr r6, _08024170 @ =gUnknown_02038380
	adds r5, r5, r6
	ldr r3, [r5]
	lsls r3, r3, #4
	lsls r4, r4, #0xc
	adds r3, r3, r4
	ldr r0, _08024174 @ =gUnknown_0203A450
	adds r3, r3, r0
	ldr r1, _08024178 @ =gUnknown_0831E06C
	movs r6, #0xbe
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r2, [r0]
	lsls r2, r2, #5
	adds r2, r2, r1
	ldr r1, _0802417C @ =gUnknown_0831E324
	ldr r6, [sp, #0x154]
	adds r0, r6, r7
	ldr r7, [sp, #0x160]
	adds r0, r0, r7
	ldr r6, _08024180 @ =0x0000034E
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r1, _08024174 @ =gUnknown_0203A450
	adds r1, #4
	adds r0, r0, r1
	ldr r7, [sp, #0x158]
	ldr r2, _08024184 @ =0x06011800
	adds r1, r7, r2
	str r1, [r0]
	ldr r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r3, _08024188 @ =gUnknown_0203A458
	adds r0, r0, r3
	movs r1, #0x80
	lsls r1, r1, #4
	b _080241F2
	.align 2, 0
_08024144: .4byte gUnknown_0202F344
_08024148: .4byte gUnknown_02038BE0
_0802414C: .4byte 0x000001FF
_08024150: .4byte 0xFFFFFE00
_08024154: .4byte gUnknown_0831E2AC
_08024158: .4byte gUnknown_0831E2B0
_0802415C: .4byte 0x000003FF
_08024160: .4byte 0xFFFFFC00
_08024164: .4byte 0x000002DE
_08024168: .4byte 0x000002FA
_0802416C: .4byte gUnknown_02038388
_08024170: .4byte gUnknown_02038380
_08024174: .4byte gUnknown_0203A450
_08024178: .4byte gUnknown_0831E06C
_0802417C: .4byte gUnknown_0831E324
_08024180: .4byte 0x0000034E
_08024184: .4byte 0x06011800
_08024188: .4byte gUnknown_0203A458
_0802418C:
	ldr r5, _08024218 @ =gUnknown_02038388
	ldr r4, [r5]
	lsls r5, r4, #2
	ldr r6, _0802421C @ =gUnknown_02038380
	adds r5, r5, r6
	ldr r2, [r5]
	lsls r2, r2, #4
	lsls r4, r4, #0xc
	adds r2, r2, r4
	ldr r7, _08024220 @ =gUnknown_0203A450
	adds r2, r2, r7
	ldr r0, _08024224 @ =gUnknown_0831DF4C
	ldr r1, [sp, #0x120]
	ldrh r3, [r1]
	lsls r3, r3, #5
	adds r3, r3, r0
	ldr r1, _08024228 @ =gUnknown_0831E304
	ldr r6, [sp, #0x154]
	ldr r7, [sp, #0x100]
	adds r0, r6, r7
	ldr r6, _0802422C @ =gUnknown_02038BE0
	adds r0, r0, r6
	ldr r7, _08024230 @ =0x0000034E
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r5]
	lsls r1, r1, #4
	adds r1, r1, r4
	ldr r0, _08024220 @ =gUnknown_0203A450
	adds r0, #4
	adds r1, r1, r0
	ldr r2, [sp, #0xf0]
	lsls r0, r2, #9
	ldr r3, _08024234 @ =0x06011800
	adds r0, r0, r3
	ldr r6, [sp, #0x158]
	adds r0, r6, r0
	str r0, [r1]
	ldr r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r7, _08024238 @ =gUnknown_0203A458
	adds r0, r0, r7
	movs r1, #0x80
	lsls r1, r1, #2
_080241F2:
	str r1, [r0]
	ldr r0, _08024218 @ =gUnknown_02038388
	ldr r1, [r0]
	lsls r2, r1, #2
	ldr r3, _0802421C @ =gUnknown_02038380
	adds r2, r2, r3
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r1, r1, #0xc
	adds r0, r0, r1
	ldr r4, _0802423C @ =gUnknown_0203A45C
	adds r0, r0, r4
	movs r1, #0x40
	str r1, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	b _0802497E
	.align 2, 0
_08024218: .4byte gUnknown_02038388
_0802421C: .4byte gUnknown_02038380
_08024220: .4byte gUnknown_0203A450
_08024224: .4byte gUnknown_0831DF4C
_08024228: .4byte gUnknown_0831E304
_0802422C: .4byte gUnknown_02038BE0
_08024230: .4byte 0x0000034E
_08024234: .4byte 0x06011800
_08024238: .4byte gUnknown_0203A458
_0802423C: .4byte gUnknown_0203A45C
_08024240:
	cmp r4, #1
	beq _08024246
	b _0802497E
_08024246:
	ldr r0, _0802432C @ =gUnknown_020132F0
	ldr r0, [r0]
	movs r1, #3
	bl sub_0803D34C
	ands r0, r4
	ldr r1, [sp, #0xe0]
	ands r1, r4
	cmp r0, r1
	beq _0802425C
	b _0802497E
_0802425C:
	mov r0, sp
	ldr r1, _08024330 @ =gUnknown_0831BD94
	movs r2, #0xe0
	bl sub_0803DEBC
	ldr r6, _08024334 @ =0x0000034E
	adds r0, r5, r6
	ldrh r0, [r0]
	lsrs r1, r0, #1
	str r1, [sp, #0x124]
	ands r4, r0
	str r4, [sp, #0x128]
	movs r2, #0
	str r2, [sp, #0xf4]
	ldr r3, [sp, #0xe0]
	lsls r3, r3, #8
	str r3, [sp, #0x14c]
	ldr r4, [sp, #0xe0]
	lsls r4, r4, #2
	str r4, [sp, #0x144]
	ldr r5, [sp, #0x148]
	ldr r6, [sp, #0xe0]
	subs r0, r5, r6
	lsls r0, r0, #4
	ldr r1, [sp, #0x154]
	adds r0, r1, r0
	str r0, [sp, #0x12c]
	ldr r2, _08024338 @ =gUnknown_02038388
	mov r8, r2
	ldr r3, _0802433C @ =gUnknown_02038BE0
	str r3, [sp, #0x160]
	mov ip, r0
	adds r0, r7, #4
	add r0, ip
	str r0, [sp, #0x130]
	ldr r4, [sp, #0x124]
	lsls r4, r4, #5
	str r4, [sp, #0x168]
	ldr r5, _08024340 @ =gUnknown_02039BD0
	mov sb, r5
	ldr r6, _08024344 @ =gUnknown_020383A0
	mov sl, r6
_080242B0:
	ldr r7, _0802433C @ =gUnknown_02038BE0
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r5, r7, r0
	add r5, ip
	ldr r1, _08024348 @ =gUnknown_0202F330
	mov r3, r8
	ldr r2, [r3]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r4, [sp, #0x130]
	ldr r0, [r4]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r6, [sp, #0xe4]
	muls r0, r6, r0
	asrs r0, r0, #0x10
	strh r0, [r5]
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r4, r7, r0
	add r4, ip
	ldr r1, [sp, #0x12c]
	ldr r6, _0802434C @ =gUnknown_02038EF8
	adds r3, r1, r6
	ldr r7, [sp, #0xf4]
	lsls r0, r7, #2
	ldr r6, [sp, #0x124]
	lsls r1, r6, #5
	adds r0, r0, r1
	mov r7, sp
	adds r1, r7, r0
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	ldr r1, _08024350 @ =gUnknown_0203C468
	adds r2, r2, r1
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #0xe8]
	muls r0, r1, r0
	asrs r2, r0, #0x10
	strh r2, [r4]
	ldr r3, _08024354 @ =0xFFFFFF00
	adds r0, r3, #0
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	ldr r1, _08024358 @ =0xFEF00000
	cmp r0, r1
	bls _08024326
	adds r0, r2, #0
	subs r0, #0xb0
	lsls r0, r0, #0x10
	ldr r1, _0802435C @ =0xFF400000
	cmp r0, r1
	bhi _08024360
_08024326:
	movs r7, #2
	b _0802436A
	.align 2, 0
_0802432C: .4byte gUnknown_020132F0
_08024330: .4byte gUnknown_0831BD94
_08024334: .4byte 0x0000034E
_08024338: .4byte gUnknown_02038388
_0802433C: .4byte gUnknown_02038BE0
_08024340: .4byte gUnknown_02039BD0
_08024344: .4byte gUnknown_020383A0
_08024348: .4byte gUnknown_0202F330
_0802434C: .4byte gUnknown_02038EF8
_08024350: .4byte gUnknown_0203C468
_08024354: .4byte 0xFFFFFF00
_08024358: .4byte 0xFEF00000
_0802435C: .4byte 0xFF400000
_08024360:
	ldr r4, _08024600 @ =gUnknown_0202F344
	ldr r0, [r4]
	lsls r7, r0, #1
	movs r5, #1
	orrs r7, r5
_0802436A:
	mov r6, r8
	ldr r2, [r6]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldr r3, _08024604 @ =gUnknown_02038F0C
	add r3, ip
	ldr r0, _08024600 @ =gUnknown_0202F344
	ldr r2, [r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r2
	ldrb r3, [r3]
	adds r0, r0, r3
	strb r0, [r1]
	ldr r1, [r6]
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sb
	movs r0, #3
	ands r7, r0
	ldrb r0, [r2, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	ldr r2, [r6]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r6]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r6]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #1]
	movs r7, #0x21
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r6]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r4, [r6]
	lsls r5, r4, #2
	add r5, sl
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	add r3, sb
	ldr r6, _08024608 @ =gUnknown_02038BE0
	movs r1, #0xc7
	lsls r1, r1, #2
	adds r0, r6, r1
	add r0, ip
	ldr r6, _08024600 @ =gUnknown_0202F344
	ldr r2, [r6]
	movs r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r2
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r2, _0802460C @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r0, [r3, #2]
	ldr r6, _08024610 @ =0xFFFFFE00
	adds r2, r6, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	add r0, sb
	ldrb r1, [r0, #3]
	movs r3, #0xf
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0, #3]
	mov r4, r8
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r2, [r1, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sb
	ldr r1, [sp, #0xf4]
	movs r5, #1
	ands r1, r5
	lsls r1, r1, #5
	ldrb r3, [r2, #3]
	adds r0, r7, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldrb r0, [r1, #3]
	movs r6, #0x3f
	ands r6, r0
	movs r0, #0x80
	orrs r6, r0
	strb r6, [r1, #3]
	ldr r4, [r4]
	lsls r5, r4, #2
	add r5, sl
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	add r3, sb
	ldr r2, [sp, #0x14c]
	adds r2, #0xc0
	ldr r6, [sp, #0x128]
	lsls r0, r6, #4
	adds r2, r2, r0
	ldr r1, _08024614 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r6, _08024618 @ =0xFFFFFC00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	add r1, sb
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, sb
	ldr r2, [sp, #0x144]
	adds r2, #3
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	mov r2, r8
	ldr r1, [r2]
	lsls r1, r1, #2
	add r1, sl
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r3, #2
	add ip, r3
	ldr r4, [sp, #0xf4]
	adds r4, #1
	str r4, [sp, #0xf4]
	ldr r1, _0802461C @ =gUnknown_02039BD0
	ldr r2, _08024620 @ =gUnknown_020383A0
	cmp r4, #1
	bgt _08024548
	b _080242B0
_08024548:
	movs r5, #2
	str r5, [sp, #0xf4]
	ldr r6, [sp, #0x124]
	adds r6, #2
	str r6, [sp, #0x164]
	cmp r5, r6
	blt _08024558
	b _0802481E
_08024558:
	ldr r0, _08024604 @ =gUnknown_02038F0C
	ldr r3, _08024624 @ =0xFFFFFCD4
	adds r0, r0, r3
	mov ip, r0
	ldr r4, [sp, #0x148]
	ldr r5, [sp, #0xe0]
	subs r0, r4, r5
	lsls r0, r0, #4
	ldr r6, [sp, #0x154]
	adds r0, r6, r0
	str r0, [sp, #0x134]
	ldr r0, _08024628 @ =gUnknown_02038388
	mov r8, r0
	adds r6, r1, #0
	ldr r1, [sp, #0x134]
	adds r1, #4
	mov sl, r1
	movs r0, #0xc5
	lsls r0, r0, #2
	add r0, ip
	ldr r3, [sp, #0x134]
	adds r0, r3, r0
	str r0, [sp, #0x138]
	mov sb, r2
_08024588:
	movs r5, #0xc7
	lsls r5, r5, #2
	add r5, ip
	add r5, sl
	mov r4, r8
	ldr r2, [r4]
	lsls r2, r2, #2
	ldr r7, _0802462C @ =gUnknown_0202F330
	adds r1, r2, r7
	ldr r3, [sp, #0x138]
	ldr r0, [r3]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r4, [sp, #0xe4]
	muls r0, r4, r0
	asrs r0, r0, #0x10
	strh r0, [r5]
	movs r4, #0xcb
	lsls r4, r4, #2
	add r4, ip
	add r4, sl
	ldr r7, [sp, #0x134]
	ldr r0, _08024630 @ =gUnknown_02038EF8
	adds r3, r7, r0
	ldr r1, [sp, #0xf4]
	lsls r0, r1, #2
	ldr r7, [sp, #0x168]
	adds r0, r0, r7
	mov r7, sp
	adds r1, r7, r0
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	ldr r1, _08024634 @ =gUnknown_0203C468
	adds r2, r2, r1
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r2, [sp, #0xe8]
	muls r0, r2, r0
	asrs r2, r0, #0x10
	strh r2, [r4]
	ldr r3, _08024638 @ =0xFFFFFF00
	adds r0, r3, #0
	ldrh r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	ldr r1, _0802463C @ =0xFEF00000
	cmp r0, r1
	bls _080245FA
	adds r0, r2, #0
	subs r0, #0xc0
	lsls r0, r0, #0x10
	ldr r1, _08024640 @ =0xFF200000
	cmp r0, r1
	bhi _08024644
_080245FA:
	movs r7, #2
	b _0802464E
	.align 2, 0
_08024600: .4byte gUnknown_0202F344
_08024604: .4byte gUnknown_02038F0C
_08024608: .4byte gUnknown_02038BE0
_0802460C: .4byte 0x000001FF
_08024610: .4byte 0xFFFFFE00
_08024614: .4byte 0x000003FF
_08024618: .4byte 0xFFFFFC00
_0802461C: .4byte gUnknown_02039BD0
_08024620: .4byte gUnknown_020383A0
_08024624: .4byte 0xFFFFFCD4
_08024628: .4byte gUnknown_02038388
_0802462C: .4byte gUnknown_0202F330
_08024630: .4byte gUnknown_02038EF8
_08024634: .4byte gUnknown_0203C468
_08024638: .4byte 0xFFFFFF00
_0802463C: .4byte 0xFEF00000
_08024640: .4byte 0xFF200000
_08024644:
	ldr r4, _08024874 @ =gUnknown_0202F344
	ldr r0, [r4]
	lsls r7, r0, #1
	movs r5, #1
	orrs r7, r5
_0802464E:
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	movs r2, #0xcb
	lsls r2, r2, #2
	add r2, ip
	add r2, sl
	ldr r4, _08024874 @ =gUnknown_0202F344
	ldr r3, [r4]
	movs r0, #0x20
	rsbs r0, r0, #0
	lsls r0, r3
	ldrb r2, [r2]
	adds r0, r0, r2
	strb r0, [r1]
	mov r5, r8
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sb
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	movs r0, #3
	ands r7, r0
	ldrb r0, [r2, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sb
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r6
	ldrb r1, [r2, #1]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r4, [r5]
	lsls r5, r4, #2
	add r5, sb
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	adds r3, r3, r6
	movs r0, #0xc7
	lsls r0, r0, #2
	add r0, ip
	add r0, sl
	ldr r7, _08024874 @ =gUnknown_0202F344
	ldr r2, [r7]
	movs r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r2
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r2, _08024878 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r0, [r3, #2]
	ldr r7, _0802487C @ =0xFFFFFE00
	adds r2, r7, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	adds r0, r0, r6
	ldrb r1, [r0, #3]
	movs r3, #0xf
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0, #3]
	mov r4, r8
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	add r0, sb
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r1, [r0, #3]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r4, [r4]
	lsls r5, r4, #2
	add r5, sb
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r6
	ldr r3, [sp, #0x14c]
	adds r3, #0xe0
	ldr r7, _08024880 @ =0x000003FF
	adds r0, r7, #0
	ands r3, r0
	ldrh r0, [r2, #4]
	ldr r7, _08024884 @ =0xFFFFFC00
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r6
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r2, [sp, #0x144]
	adds r2, #3
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	mov r2, r8
	ldr r1, [r2]
	lsls r1, r1, #2
	add r1, sb
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r3, #2
	add sl, r3
	ldr r4, [sp, #0xf4]
	adds r4, #1
	str r4, [sp, #0xf4]
	ldr r5, [sp, #0x164]
	cmp r4, r5
	bge _0802481E
	b _08024588
_0802481E:
	ldr r6, [sp, #0xf0]
	cmp r6, #0
	beq _08024826
	b _0802497E
_08024826:
	ldr r7, [sp, #0x100]
	ldr r0, [sp, #0x160]
	adds r5, r7, r0
	ldr r1, _08024888 @ =0x0000034A
	adds r0, r5, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r7, r0, #0x12
	movs r0, #3
	ands r7, r0
	ldr r2, [sp, #0xe0]
	cmp r2, #0
	bne _0802489C
	ldr r5, _0802488C @ =gUnknown_0203A450
	ldr r6, _08024890 @ =gUnknown_02038380
	ldr r3, _08024894 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r2, [r0]
	lsls r2, r2, #4
	lsls r1, r1, #0xc
	adds r2, r2, r1
	adds r2, r2, r5
	ldr r4, _08024898 @ =gUnknown_0831E18C
	ldr r1, [sp, #0x160]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrh r1, [r0]
	lsls r1, r1, #5
	adds r0, r4, #4
	adds r1, r1, r0
	lsls r3, r7, #5
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r2]
	mov r8, r4
	b _080248CC
	.align 2, 0
_08024874: .4byte gUnknown_0202F344
_08024878: .4byte 0x000001FF
_0802487C: .4byte 0xFFFFFE00
_08024880: .4byte 0x000003FF
_08024884: .4byte 0xFFFFFC00
_08024888: .4byte 0x0000034A
_0802488C: .4byte gUnknown_0203A450
_08024890: .4byte gUnknown_02038380
_08024894: .4byte gUnknown_02038388
_08024898: .4byte gUnknown_0831E18C
_0802489C:
	ldr r3, _0802499C @ =gUnknown_0203A450
	ldr r4, _080249A0 @ =gUnknown_02038380
	ldr r6, _080249A4 @ =gUnknown_02038388
	ldr r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r1, r1, #4
	lsls r2, r2, #0xc
	adds r1, r1, r2
	adds r1, r1, r3
	movs r2, #0xbe
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r5, _080249A8 @ =gUnknown_0831E194
	adds r0, r0, r5
	lsls r2, r7, #5
	ldr r0, [r0]
	adds r0, r0, r2
	str r0, [r1]
	ldr r6, _080249AC @ =gUnknown_0831E18C
	mov r8, r6
_080248CC:
	ldr r7, _080249A4 @ =gUnknown_02038388
	ldr r1, [r7]
	lsls r0, r1, #2
	ldr r2, _080249A0 @ =gUnknown_02038380
	adds r3, r0, r2
	ldr r0, [r3]
	lsls r0, r0, #4
	lsls r2, r1, #0xc
	adds r0, r0, r2
	ldr r6, _0802499C @ =gUnknown_0203A450
	adds r6, #4
	adds r0, r0, r6
	ldr r4, [sp, #0x148]
	ldr r5, _080249B0 @ =0x05000260
	adds r1, r4, r5
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r7, _0802499C @ =gUnknown_0203A450
	adds r7, #8
	mov sb, r7
	add r0, sb
	movs r1, #0x10
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r4, _0802499C @ =gUnknown_0203A450
	adds r4, #0xc
	adds r0, r0, r4
	movs r1, #0x20
	str r1, [r0]
	ldr r0, [r3]
	adds r1, r0, #1
	str r1, [r3]
	ldr r5, [sp, #0x148]
	ldr r7, [sp, #0xe0]
	subs r0, r5, r7
	lsls r5, r0, #4
	ldr r7, [sp, #0x154]
	adds r0, r7, r5
	ldr r7, [sp, #0x160]
	adds r0, r0, r7
	ldr r7, _080249B4 @ =0x0000034A
	adds r0, r0, r7
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #3
	bgt _0802497E
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r0, _0802499C @ =gUnknown_0203A450
	adds r1, r1, r0
	ldr r7, [sp, #0x160]
	adds r0, r5, r7
	movs r5, #0xbe
	lsls r5, r5, #2
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #5
	add r0, r8
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, [r3]
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, r1, r6
	ldr r6, [sp, #0xe0]
	lsls r0, r6, #0xd
	ldr r7, _080249B8 @ =0x06011800
	adds r0, r0, r7
	str r0, [r1]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	add r0, sb
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, r0, r4
	movs r1, #0x40
	str r1, [r0]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
_0802497E:
	ldr r0, [sp, #0x13c]
	str r0, [sp, #0xf0]
	cmp r0, #1
	bgt _0802498A
	bl sub_08023452
_0802498A:
	add sp, #0x174
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802499C: .4byte gUnknown_0203A450
_080249A0: .4byte gUnknown_02038380
_080249A4: .4byte gUnknown_02038388
_080249A8: .4byte gUnknown_0831E194
_080249AC: .4byte gUnknown_0831E18C
_080249B0: .4byte 0x05000260
_080249B4: .4byte 0x0000034A
_080249B8: .4byte 0x06011800

	thumb_func_start sub_080249BC
sub_080249BC: @ 0x080249BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov sl, r0
	ldr r1, _08024B04 @ =gUnknown_02038BE0
	lsls r6, r0, #7
	subs r7, r6, r0
	lsls r0, r7, #4
	mov r8, r0
	adds r5, r0, r1
	ldr r2, _08024B08 @ =0x0000072A
	adds r4, r5, r2
	ldrh r0, [r4]
	cmp r0, #0
	beq _080249EC
	mov r0, sl
	bl sub_0801F7C0
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_080249EC:
	ldr r3, _08024B0C @ =0x00000464
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #0
	bne _080249FA
	bl _08025624
_080249FA:
	ldr r4, _08024B10 @ =0x0000046A
	adds r0, r5, r4
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _08024B14 @ =0x0000046C
	adds r0, r5, r1
	str r6, [sp, #0x2c]
	ldr r2, [sp, #8]
	ldrh r0, [r0]
	cmp r2, r0
	blo _08024A16
	b _08024F70
_08024A16:
	str r7, [sp, #0x10]
	mov r3, r8
	str r3, [sp, #0x14]
	str r5, [sp, #0x18]
	adds r4, #0xee
	adds r4, r5, r4
	str r4, [sp, #0x1c]
_08024A24:
	ldr r0, _08024B18 @ =gUnknown_0203A440
	ldr r0, [r0]
	str r0, [sp, #4]
	str r0, [sp]
	ldr r5, [sp, #8]
	lsls r5, r5, #1
	mov r8, r5
	ldr r5, [sp, #0x14]
	add r5, r8
	ldr r6, _08024B04 @ =gUnknown_02038BE0
	ldr r7, _08024B1C @ =0x0000053C
	adds r0, r6, r7
	adds r0, r5, r0
	ldrh r4, [r0]
	lsrs r4, r4, #8
	ldr r0, _08024B20 @ =gUnknown_08693364
	lsls r1, r4, #1
	str r1, [sp, #0x34]
	adds r0, r0, r1
	mov sb, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	bl sub_0803D34C
	mov r3, sl
	lsls r2, r3, #5
	ldr r3, [sp, #8]
	adds r3, #1
	lsls r1, r3, #2
	adds r1, #0x40
	adds r7, r2, r1
	lsls r2, r7, #3
	ldr r6, _08024B24 @ =gUnknown_02038388
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	ldr r1, _08024B28 @ =gUnknown_02039BD0
	adds r2, r2, r1
	ldr r6, _08024B2C @ =gUnknown_02039120
	adds r5, r5, r6
	ldrh r1, [r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	ldr r0, _08024B30 @ =gUnknown_08693164
	ldr r1, [sp, #0x34]
	adds r6, r1, r0
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	str r3, [sp, #0x30]
	bl sub_0803D34C
	adds r2, r7, #1
	lsls r2, r2, #3
	mov ip, r2
	ldr r2, _08024B24 @ =gUnknown_02038388
	ldr r1, [r2]
	lsls r1, r1, #0xa
	add ip, r1
	ldr r2, _08024B28 @ =gUnknown_02039BD0
	add r2, ip
	ldrh r1, [r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	subs r4, #0x41
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	str r0, [sp, #0x28]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x24]
	cmp r4, #0x7e
	bhi _08024B34
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	bl sub_0803D34C
	adds r2, r7, #2
	lsls r2, r2, #3
	ldr r3, _08024B24 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	ldr r4, _08024B28 @ =gUnknown_02039BD0
	adds r2, r2, r4
	ldrh r1, [r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	mov r6, sb
	movs r1, #0
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	bl sub_0803D34C
	adds r2, r7, #3
	lsls r2, r2, #3
	ldr r3, _08024B24 @ =gUnknown_02038388
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	b _08024B74
	.align 2, 0
_08024B04: .4byte gUnknown_02038BE0
_08024B08: .4byte 0x0000072A
_08024B0C: .4byte 0x00000464
_08024B10: .4byte 0x0000046A
_08024B14: .4byte 0x0000046C
_08024B18: .4byte gUnknown_0203A440
_08024B1C: .4byte 0x0000053C
_08024B20: .4byte gUnknown_08693364
_08024B24: .4byte gUnknown_02038388
_08024B28: .4byte gUnknown_02039BD0
_08024B2C: .4byte gUnknown_02039120
_08024B30: .4byte gUnknown_08693164
_08024B34:
	movs r4, #0
	ldrsh r0, [r6, r4]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	bl sub_0803D34C
	adds r2, r7, #2
	lsls r2, r2, #3
	ldr r6, _08024C98 @ =gUnknown_02038388
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	ldr r1, _08024C9C @ =gUnknown_02039BD0
	adds r2, r2, r1
	ldrh r1, [r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #0x10
	ldr r1, [sp, #4]
	bl sub_0803D34C
	adds r2, r7, #3
	lsls r2, r2, #3
	ldr r1, [r6]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	ldr r4, _08024C9C @ =gUnknown_02039BD0
_08024B74:
	adds r2, r2, r4
	ldrh r1, [r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	ldr r3, _08024CA0 @ =gUnknown_02038BE0
	ldr r5, [sp, #0x10]
	lsls r5, r5, #4
	mov r8, r5
	ldr r5, [sp, #0x28]
	add r5, r8
	movs r6, #0xa6
	lsls r6, r6, #3
	adds r4, r3, r6
	adds r4, r5, r4
	ldr r7, [sp, #8]
	lsls r6, r7, #2
	adds r0, r6, #0
	add r0, r8
	mov sb, r0
	movs r1, #0xa4
	lsls r1, r1, #3
	adds r0, r3, r1
	add r0, sb
	ldr r1, _08024CA4 @ =gUnknown_0202F330
	ldr r7, _08024C98 @ =gUnknown_02038388
	ldr r2, [r7]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r4]
	ldr r7, _08024CA8 @ =0x00000534
	adds r0, r3, r7
	adds r5, r5, r0
	movs r0, #0xa5
	lsls r0, r0, #3
	adds r1, r3, r0
	add r1, sb
	ldr r0, _08024CAC @ =gUnknown_0203C468
	adds r2, r2, r0
	ldr r0, [r1]
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #4]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	strh r0, [r5]
	mov r2, r8
	adds r7, r2, r3
	movs r1, #0xab
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0xf0
	subs r0, r0, r2
	ldrh r1, [r4]
	adds r3, r6, #0
	cmp r0, r1
	bgt _08024C02
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bls _08024C92
_08024C02:
	ldr r2, _08024CB0 @ =0x0000055A
	adds r0, r7, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r0, #0xa0
	subs r0, r0, r1
	ldrh r5, [r5]
	cmp r0, r5
	bgt _08024C1C
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r5, r0
	bls _08024C92
_08024C1C:
	ldrh r0, [r7, #0xc]
	cmp r0, #4
	beq _08024C26
	cmp r0, #6
	bne _08024C82
_08024C26:
	ldr r0, _08024CA0 @ =gUnknown_02038BE0
	adds r0, #0x80
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0xa
	bne _08024C50
	ldr r5, _08024CA0 @ =gUnknown_02038BE0
	movs r6, #0xa3
	lsls r6, r6, #3
	adds r0, r5, r6
	add r0, sb
	ldr r0, [r0]
	cmp r0, #1
	bne _08024C50
	ldr r0, _08024CB4 @ =gUnknown_020132F0
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	cmp r0, #1
	bne _08024C92
_08024C50:
	ldr r1, _08024CA0 @ =gUnknown_02038BE0
	ldr r7, [sp, #0x10]
	lsls r6, r7, #4
	adds r0, r6, r1
	ldrh r0, [r0, #0xc]
	cmp r0, #6
	bne _08024C82
	adds r0, r1, #0
	adds r0, #0x80
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0xa
	bne _08024C82
	adds r0, r3, r6
	movs r2, #0xa3
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08024C82
	bl sub_080377EC
	cmp sl, r0
	bne _08024C92
_08024C82:
	ldr r0, _08024CA0 @ =gUnknown_02038BE0
	adds r0, #0x80
	ldr r3, [sp, #0x14]
	adds r0, r3, r0
	ldr r0, [r0]
	subs r0, #0x26
	cmp r0, #2
	bhi _08024CB8
_08024C92:
	movs r5, #2
	b _08024CC6
	.align 2, 0
_08024C98: .4byte gUnknown_02038388
_08024C9C: .4byte gUnknown_02039BD0
_08024CA0: .4byte gUnknown_02038BE0
_08024CA4: .4byte gUnknown_0202F330
_08024CA8: .4byte 0x00000534
_08024CAC: .4byte gUnknown_0203C468
_08024CB0: .4byte 0x0000055A
_08024CB4: .4byte gUnknown_020132F0
_08024CB8:
	ldr r4, _08024E88 @ =gUnknown_0202F344
	ldr r0, [r4]
	lsls r0, r0, #1
	movs r1, #1
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08024CC6:
	ldr r7, _08024E8C @ =gUnknown_02039BD0
	ldr r6, _08024E90 @ =gUnknown_020383A0
	mov sb, r6
	ldr r0, _08024E94 @ =gUnknown_02038388
	mov r8, r0
	ldr r1, [r0]
	lsls r0, r1, #2
	add r0, sb
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x14]
	adds r1, r1, r3
	mov ip, r1
	ldr r4, _08024E98 @ =gUnknown_02038BE0
	ldr r6, _08024E9C @ =0x00000534
	adds r3, r4, r6
	add r3, ip
	ldr r1, [sp, #0x18]
	ldr r4, _08024EA0 @ =0x0000055A
	adds r0, r1, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	ldr r4, _08024E88 @ =gUnknown_0202F344
	ldr r1, [r4]
	lsls r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	strb r0, [r2]
	mov r6, r8
	ldr r1, [r6]
	lsls r0, r1, #2
	add r0, sb
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	movs r0, #3
	ands r5, r0
	ldrb r0, [r2, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2, #1]
	ldr r1, [r6]
	lsls r0, r1, #2
	add r0, sb
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #1]
	movs r4, #0xd
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r1, r2
	strb r1, [r0, #1]
	ldr r2, [r6]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r1, [r6]
	lsls r0, r1, #2
	add r0, sb
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #1]
	movs r5, #0x21
	rsbs r5, r5, #0
	adds r2, r5, #0
	ands r1, r2
	strb r1, [r0, #1]
	ldr r2, [r6]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r4, [r6]
	lsls r5, r4, #2
	add r5, sb
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	adds r3, r3, r7
	ldr r6, _08024E98 @ =gUnknown_02038BE0
	movs r0, #0xa6
	lsls r0, r0, #3
	adds r1, r6, r0
	add r1, ip
	ldr r6, [sp, #0x1c]
	movs r0, #0
	ldrsh r2, [r6, r0]
	ldr r6, _08024E88 @ =gUnknown_0202F344
	ldr r0, [r6]
	lsls r2, r0
	ldrh r1, [r1]
	adds r2, r2, r1
	ldr r1, _08024EA4 @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #2]
	ldr r6, _08024EA8 @ =0xFFFFFE00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r2, [r5]
	lsls r2, r2, #3
	adds r2, r2, r4
	adds r2, r2, r7
	movs r0, #7
	ldr r3, [sp, #0x24]
	ands r3, r0
	lsls r3, r3, #1
	ldrb r0, [r2, #3]
	movs r4, #0xf
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #3]
	mov r5, r8
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	movs r2, #1
	mov r6, sl
	ands r2, r6
	lsls r2, r2, #4
	ldrb r3, [r1, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #3]
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sb
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #3]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r0, [r1, #3]
	movs r6, #0x3f
	ands r6, r0
	movs r0, #0x80
	orrs r6, r0
	strb r6, [r1, #3]
	ldr r1, _08024EAC @ =gUnknown_0831DA6C
	ldr r2, [sp, #0xc]
	lsls r0, r2, #5
	adds r4, r0, r1
	ldrh r0, [r4, #0x14]
	mov r1, r8
	mov r5, sb
	cmp r0, #4
	beq _08024EB8
	ldr r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0]
	lsls r3, r3, #3
	lsls r1, r1, #0xa
	adds r3, r3, r1
	adds r3, r3, r7
	mov r4, sl
	lsls r2, r4, #8
	movs r6, #0x80
	lsls r6, r6, #2
	adds r2, r2, r6
	ldr r7, [sp, #8]
	lsls r0, r7, #6
	adds r2, r2, r0
	ldr r1, _08024EB0 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r4, _08024EB4 @ =0xFFFFFC00
	adds r1, r4, #0
	b _08024EFC
	.align 2, 0
_08024E88: .4byte gUnknown_0202F344
_08024E8C: .4byte gUnknown_02039BD0
_08024E90: .4byte gUnknown_020383A0
_08024E94: .4byte gUnknown_02038388
_08024E98: .4byte gUnknown_02038BE0
_08024E9C: .4byte 0x00000534
_08024EA0: .4byte 0x0000055A
_08024EA4: .4byte 0x000001FF
_08024EA8: .4byte 0xFFFFFE00
_08024EAC: .4byte gUnknown_0831DA6C
_08024EB0: .4byte 0x000003FF
_08024EB4: .4byte 0xFFFFFC00
_08024EB8:
	ldr r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r3, [r0]
	lsls r3, r3, #3
	lsls r1, r1, #0xa
	adds r3, r3, r1
	adds r3, r3, r7
	mov r6, sl
	lsls r2, r6, #8
	ldr r7, [sp, #8]
	lsls r0, r7, #6
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r2, r0
	ldr r6, _08025050 @ =gUnknown_02038BE0
	ldr r7, _08025054 @ =0x0000054C
	adds r0, r6, r7
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r4, [r4, #0x1a]
	asrs r0, r4
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #4
	adds r2, r2, r0
	ldr r4, _08025058 @ =0x000003FF
	adds r0, r4, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r6, _0802505C @ =0xFFFFFC00
	adds r1, r6, #0
_08024EFC:
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r7, _08025060 @ =gUnknown_02038388
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r0, _08025064 @ =gUnknown_02039BD0
	adds r1, r1, r0
	ldrb r2, [r1, #5]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r2, r0
	movs r0, #8
	orrs r2, r0
	strb r2, [r1, #5]
	ldr r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r4, _08025064 @ =gUnknown_02039BD0
	adds r1, r1, r4
	mov r6, sl
	lsls r2, r6, #6
	adds r2, #0x80
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r1, [r7]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r7, [sp, #0x24]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r2, _08025050 @ =gUnknown_02038BE0
	adds r0, r1, r2
	ldr r3, _08025068 @ =0x0000046C
	adds r0, r0, r3
	ldr r4, [sp, #8]
	ldrh r0, [r0]
	cmp r4, r0
	bhs _08024F70
	b _08024A24
_08024F70:
	ldr r4, [sp, #0x2c]
	mov r5, sl
	subs r0, r4, r5
	lsls r0, r0, #4
	ldr r6, _08025050 @ =gUnknown_02038BE0
	adds r0, r0, r6
	ldr r7, _0802506C @ =0x0000050C
	adds r1, r0, r7
	ldrh r1, [r1]
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #8]
	ldr r2, _08025068 @ =0x0000046C
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r3, _08025070 @ =0x0000063C
	adds r0, r0, r3
	ldrh r0, [r0]
	muls r0, r1, r0
	ldr r5, [sp, #8]
	cmp r5, r0
	blt _08024F9E
	b _08025624
_08024F9E:
	ldr r6, _08025060 @ =gUnknown_02038388
	mov sb, r6
	ldr r7, _08025064 @ =gUnknown_02039BD0
	ldr r0, _08025074 @ =gUnknown_020383A0
	mov ip, r0
_08024FA8:
	ldr r1, [sp, #8]
	lsls r1, r1, #3
	mov r8, r1
	ldr r3, [sp, #8]
	subs r2, r1, r3
	lsls r2, r2, #2
	mov r5, sl
	subs r4, r4, r5
	lsls r4, r4, #4
	adds r2, r2, r4
	ldr r6, _08025050 @ =gUnknown_02038BE0
	adds r6, r2, r6
	str r6, [sp, #0x34]
	ldr r1, _08025050 @ =gUnknown_02038BE0
	movs r3, #0xac
	lsls r3, r3, #3
	adds r0, r1, r3
	adds r0, r2, r0
	mov r5, sb
	ldr r3, [r5]
	lsls r3, r3, #2
	ldr r6, _08025078 @ =gUnknown_0202F330
	adds r1, r3, r6
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	ldr r6, [sp, #0x34]
	movs r1, #0xad
	lsls r1, r1, #3
	adds r5, r6, r1
	strh r0, [r5]
	ldr r6, _08025050 @ =gUnknown_02038BE0
	subs r1, #4
	adds r0, r6, r1
	adds r2, r2, r0
	ldr r6, _0802507C @ =gUnknown_0203C468
	adds r3, r3, r6
	ldr r0, [r2]
	ldr r1, [r3]
	subs r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [sp, #4]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x34]
	ldr r3, _08025080 @ =0x0000056A
	adds r6, r2, r3
	strh r0, [r6]
	ldr r0, _08025050 @ =gUnknown_02038BE0
	adds r4, r4, r0
	ldr r1, _08025084 @ =0x0000063E
	adds r0, r4, r1
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0xf0
	subs r0, r0, r2
	ldrh r1, [r5]
	mov r3, r8
	cmp r0, r1
	bgt _08025030
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bls _0802504C
_08025030:
	movs r5, #0xc8
	lsls r5, r5, #3
	adds r0, r4, r5
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r0, #0xa0
	subs r0, r0, r4
	ldrh r6, [r6]
	cmp r0, r6
	bgt _08025088
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r6, r0
	bhi _08025088
_0802504C:
	movs r5, #2
	b _08025096
	.align 2, 0
_08025050: .4byte gUnknown_02038BE0
_08025054: .4byte 0x0000054C
_08025058: .4byte 0x000003FF
_0802505C: .4byte 0xFFFFFC00
_08025060: .4byte gUnknown_02038388
_08025064: .4byte gUnknown_02039BD0
_08025068: .4byte 0x0000046C
_0802506C: .4byte 0x0000050C
_08025070: .4byte 0x0000063C
_08025074: .4byte gUnknown_020383A0
_08025078: .4byte gUnknown_0202F330
_0802507C: .4byte gUnknown_0203C468
_08025080: .4byte 0x0000056A
_08025084: .4byte 0x0000063E
_08025088:
	ldr r2, _08025318 @ =gUnknown_0202F344
	ldr r0, [r2]
	lsls r0, r0, #1
	movs r1, #1
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08025096:
	ldr r4, _0802531C @ =gUnknown_02038BE0
	ldr r6, [sp, #8]
	subs r0, r3, r6
	lsls r0, r0, #2
	ldr r2, [sp, #0x2c]
	mov r3, sl
	subs r1, r2, r3
	lsls r6, r1, #4
	adds r3, r0, r6
	ldr r1, _08025320 @ =0x0000055C
	adds r0, r4, r1
	adds r0, r0, r3
	mov r8, r0
	ldr r1, [r0]
	cmp r1, #3
	beq _080250B8
	b _08025358
_080250B8:
	mov r2, sb
	ldr r1, [r2]
	lsls r0, r1, #2
	add r0, ip
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	adds r3, r3, r4
	str r3, [sp, #0x20]
	ldr r0, _08025324 @ =0x0000056A
	adds r3, r3, r0
	adds r6, r6, r4
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r4, _08025318 @ =gUnknown_0202F344
	ldr r1, [r4]
	lsls r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	strb r0, [r2]
	mov r0, sb
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	movs r0, #3
	ands r5, r0
	ldrb r2, [r1, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r5
	strb r0, [r1, #1]
	mov r1, sb
	ldr r2, [r1]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	mov r3, sb
	ldr r2, [r3]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r3]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r3]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r4, [r3]
	lsls r5, r4, #2
	add r5, ip
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r7
	ldr r0, [sp, #0x20]
	movs r1, #0xad
	lsls r1, r1, #3
	adds r3, r0, r1
	ldr r0, _08025328 @ =0x0000063E
	adds r6, r6, r0
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r6, _08025318 @ =gUnknown_0202F344
	ldr r0, [r6]
	lsls r1, r0
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r3, _0802532C @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08025330 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #2]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r7
	ldrb r2, [r1, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	mov r4, sb
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r5, [sp, #0xc]
	lsls r5, r5, #5
	mov r8, r5
	ldr r6, _08025334 @ =gUnknown_0831DCAC
	add r6, r8
	ldrh r2, [r6, #0xe]
	lsls r2, r2, #6
	ldrb r3, [r1, #3]
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #3]
	ldr r4, [r4]
	lsls r5, r4, #2
	add r5, ip
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r7
	mov r0, sl
	lsls r1, r0, #8
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r1, r1, r3
	ldr r3, [sp, #8]
	lsls r0, r3, #4
	adds r1, r1, r0
	ldr r3, _08025338 @ =0x000003FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0802533C @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r7
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	mov r4, sb
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	mov r5, sl
	lsls r2, r5, #6
	adds r2, #0x90
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r5, [r4]
	lsls r4, r5, #2
	mov r0, ip
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldrh r0, [r6, #0x18]
	cmp r0, #1
	beq _0802529E
	b _080255F8
_0802529E:
	ldr r1, _08025340 @ =gUnknown_02038380
	adds r4, r4, r1
	ldr r2, [r4]
	lsls r2, r2, #4
	lsls r5, r5, #0xc
	adds r2, r2, r5
	ldr r3, _08025344 @ =gUnknown_0203A450
	adds r2, r2, r3
	ldrh r0, [r6, #0xc]
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x20]
	ldr r3, _08025348 @ =0x0000056E
	adds r0, r1, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldrh r0, [r6, #0x1a]
	asrs r1, r0
	ldrh r0, [r6, #0x14]
	subs r0, #1
	ands r1, r0
	ldr r3, [sp, #0x38]
	muls r1, r3, r1
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r4]
	lsls r1, r1, #4
	adds r1, r1, r5
	ldr r0, _08025344 @ =gUnknown_0203A450
	adds r0, #4
	adds r1, r1, r0
	mov r6, sl
	lsls r2, r6, #0xd
	ldr r3, [sp, #8]
	lsls r0, r3, #9
	ldr r6, _0802534C @ =0x06015000
	adds r0, r0, r6
	adds r2, r2, r0
	str r2, [r1]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r1, _08025344 @ =gUnknown_0203A450
	adds r1, #8
	adds r0, r0, r1
	ldr r1, _08025350 @ =gUnknown_0831BF8C
	add r1, r8
	ldrh r1, [r1, #0xc]
	str r1, [r0]
	ldr r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r1, _08025354 @ =gUnknown_0203A45C
	adds r0, r0, r1
	movs r1, #0x20
	str r1, [r0]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	b _080255F8
	.align 2, 0
_08025318: .4byte gUnknown_0202F344
_0802531C: .4byte gUnknown_02038BE0
_08025320: .4byte 0x0000055C
_08025324: .4byte 0x0000056A
_08025328: .4byte 0x0000063E
_0802532C: .4byte 0x000001FF
_08025330: .4byte 0xFFFFFE00
_08025334: .4byte gUnknown_0831DCAC
_08025338: .4byte 0x000003FF
_0802533C: .4byte 0xFFFFFC00
_08025340: .4byte gUnknown_02038380
_08025344: .4byte gUnknown_0203A450
_08025348: .4byte 0x0000056E
_0802534C: .4byte 0x06015000
_08025350: .4byte gUnknown_0831BF8C
_08025354: .4byte gUnknown_0203A45C
_08025358:
	subs r0, r1, #6
	cmp r0, #1
	bls _08025364
	cmp r1, #0xa
	beq _08025364
	b _080255F8
_08025364:
	mov r4, sb
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldr r0, _08025558 @ =gUnknown_02038BE0
	adds r6, r3, r0
	ldr r2, _0802555C @ =0x0000056A
	adds r3, r6, r2
	ldr r4, _08025560 @ =gUnknown_0202F344
	ldr r2, [r4]
	movs r0, #0x10
	rsbs r0, r0, #0
	lsls r0, r2
	ldrb r3, [r3]
	adds r0, r0, r3
	strb r0, [r1]
	mov r0, sb
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	movs r0, #3
	ands r5, r0
	ldrb r2, [r1, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r5
	strb r0, [r1, #1]
	mov r1, sb
	ldr r2, [r1]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	mov r3, sb
	ldr r2, [r3]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r3]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r3]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r4, [r3]
	lsls r5, r4, #2
	add r5, ip
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r7
	movs r0, #0xad
	lsls r0, r0, #3
	adds r3, r6, r0
	ldr r1, _08025560 @ =gUnknown_0202F344
	ldr r0, [r1]
	movs r1, #0x10
	rsbs r1, r1, #0
	lsls r1, r0
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r3, _08025564 @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08025568 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #2]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r7
	ldrb r2, [r1, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	mov r4, sb
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	ldrb r2, [r1, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	add r0, ip
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	adds r2, r2, r7
	ldrb r1, [r2, #3]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r4, [r4]
	lsls r5, r4, #2
	add r5, ip
	ldr r2, [r5]
	lsls r2, r2, #3
	lsls r4, r4, #0xa
	adds r2, r2, r4
	adds r2, r2, r7
	mov r0, sl
	lsls r1, r0, #8
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r1, r1, r3
	ldr r3, [sp, #8]
	lsls r0, r3, #4
	adds r1, r1, r0
	ldr r3, _0802556C @ =0x000003FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08025570 @ =0xFFFFFC00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	adds r1, r1, r7
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	mov r4, sb
	ldr r2, [r4]
	lsls r0, r2, #2
	add r0, ip
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r7
	mov r5, sl
	lsls r2, r5, #2
	adds r2, #2
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r3, [r4]
	lsls r2, r3, #2
	mov r0, ip
	adds r1, r2, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #7
	bne _08025584
	ldr r4, _08025574 @ =gUnknown_02038380
	adds r0, r2, r4
	ldr r2, [r0]
	lsls r2, r2, #4
	lsls r0, r3, #0xc
	adds r2, r2, r0
	ldr r5, _08025578 @ =gUnknown_0203A450
	adds r2, r2, r5
	ldr r1, _0802557C @ =0x0000056E
	adds r0, r6, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #9
	ldr r3, _08025580 @ =gUnknown_087AB788
	b _080255A6
	.align 2, 0
_08025558: .4byte gUnknown_02038BE0
_0802555C: .4byte 0x0000056A
_08025560: .4byte gUnknown_0202F344
_08025564: .4byte 0x000001FF
_08025568: .4byte 0xFFFFFE00
_0802556C: .4byte 0x000003FF
_08025570: .4byte 0xFFFFFC00
_08025574: .4byte gUnknown_02038380
_08025578: .4byte gUnknown_0203A450
_0802557C: .4byte 0x0000056E
_08025580: .4byte gUnknown_087AB788
_08025584:
	ldr r4, _08025634 @ =gUnknown_02038380
	adds r0, r2, r4
	ldr r2, [r0]
	lsls r2, r2, #4
	lsls r0, r3, #0xc
	adds r2, r2, r0
	ldr r5, _08025638 @ =gUnknown_0203A450
	adds r2, r2, r5
	ldr r1, _0802563C @ =0x0000056E
	adds r0, r6, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #9
	ldr r3, _08025640 @ =gUnknown_087AC788
_080255A6:
	adds r0, r0, r3
	str r0, [r2]
	adds r0, r4, #0
	mov r5, sb
	ldr r4, [r5]
	lsls r3, r4, #2
	adds r3, r3, r0
	ldr r1, [r3]
	lsls r1, r1, #4
	lsls r4, r4, #0xc
	adds r1, r1, r4
	ldr r0, _08025638 @ =gUnknown_0203A450
	adds r0, #4
	adds r1, r1, r0
	mov r6, sl
	lsls r2, r6, #0xd
	ldr r5, [sp, #8]
	lsls r0, r5, #9
	ldr r6, _08025644 @ =0x06015800
	adds r0, r0, r6
	adds r2, r2, r0
	str r2, [r1]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r1, _08025638 @ =gUnknown_0203A450
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	str r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r1, _08025648 @ =gUnknown_0203A45C
	adds r0, r0, r1
	movs r1, #0x40
	str r1, [r0]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
_080255F8:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r4, [sp, #0x2c]
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #4
	ldr r3, _0802564C @ =gUnknown_02038BE0
	adds r0, r0, r3
	ldr r5, _08025650 @ =0x0000046C
	adds r1, r0, r5
	ldrh r1, [r1]
	ldr r6, _08025654 @ =0x0000063C
	adds r0, r0, r6
	ldrh r0, [r0]
	muls r0, r1, r0
	ldr r1, [sp, #8]
	cmp r1, r0
	bge _08025624
	b _08024FA8
_08025624:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025634: .4byte gUnknown_02038380
_08025638: .4byte gUnknown_0203A450
_0802563C: .4byte 0x0000056E
_08025640: .4byte gUnknown_087AC788
_08025644: .4byte 0x06015800
_08025648: .4byte gUnknown_0203A45C
_0802564C: .4byte gUnknown_02038BE0
_08025650: .4byte 0x0000046C
_08025654: .4byte 0x0000063C

	thumb_func_start sub_08025658
sub_08025658: @ 0x08025658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	str r0, [sp, #0x20]
	ldr r0, _080257F8 @ =gUnknown_02038BE0
	mov r8, r0
	ldr r1, [sp, #0x20]
	lsls r0, r1, #7
	subs r6, r0, r1
	lsls r7, r6, #4
	mov r2, r8
	adds r5, r7, r2
	ldr r3, _080257FC @ =0x0000072A
	adds r4, r5, r3
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802568C
	adds r0, r1, #0
	bl sub_0801F7C0
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_0802568C:
	ldr r4, _08025800 @ =0x00000644
	adds r0, r5, r4
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802569A
	bl _08026206
_0802569A:
	ldr r1, _08025804 @ =0x0000064A
	adds r0, r5, r1
	ldrh r0, [r0]
	str r0, [sp, #0x38]
	movs r2, #0
	str r2, [sp, #0x30]
	ldr r3, _08025808 @ =0x0000064C
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r2, r0
	blt _080256B4
	bl _08026206
_080256B4:
	str r6, [sp, #0x3c]
	str r7, [sp, #0x40]

	thumb_func_start sub_080256B8
sub_080256B8: @ 0x080256B8
	ldr r0, _0802580C @ =gUnknown_0203A440
	ldr r0, [r0]
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	ldr r4, [sp, #0x30]
	lsls r1, r4, #2
	adds r0, r1, r4
	lsls r0, r0, #3
	ldr r6, [sp, #0x40]
	adds r5, r0, r6
	ldr r7, _080257F8 @ =gUnknown_02038BE0
	adds r6, r5, r7
	ldr r2, _08025810 @ =0x000006BA
	adds r0, r6, r2
	ldrh r0, [r0]
	lsrs r0, r0, #8
	str r0, [sp, #0x2c]
	ldr r3, _08025814 @ =0x000006A4
	adds r4, r7, r3
	adds r0, r5, r4
	ldr r3, [r0]
	str r1, [sp, #0x5c]
	cmp r3, #1
	bne _080256F4
	ldr r7, _08025818 @ =0x000006C2
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08025706
_080256F4:
	cmp r3, #3
	beq _08025706
	cmp r3, #4
	beq _08025706
	cmp r3, #2
	beq _08025706
	cmp r3, #0x11
	beq _08025706
	b _08025C1C
_08025706:
	ldr r3, [sp, #0x5c]
	ldr r4, [sp, #0x30]
	adds r2, r3, r4
	lsls r2, r2, #3
	ldr r5, [sp, #0x40]
	adds r2, r2, r5
	ldr r6, _080257F8 @ =gUnknown_02038BE0
	adds r4, r2, r6
	ldr r7, _0802581C @ =0x000006AC
	adds r0, r6, r7
	adds r0, r2, r0
	ldr r1, _08025820 @ =gUnknown_0202F330
	ldr r3, _08025824 @ =gUnknown_02038388
	mov sb, r3
	ldr r3, [r3]
	lsls r3, r3, #2
	adds r1, r3, r1
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	lsrs r0, r0, #8
	ldr r5, [sp, #0x24]
	muls r0, r5, r0
	lsrs r0, r0, #0x10
	ldr r6, _08025828 @ =0x000006B4
	adds r1, r4, r6
	strh r0, [r1]
	ldr r7, _0802582C @ =gUnknown_02039290
	adds r2, r2, r7
	ldr r0, _08025830 @ =gUnknown_0203C468
	adds r3, r3, r0
	ldr r0, [r2]
	ldr r1, [r3]
	subs r0, r0, r1
	lsrs r0, r0, #8
	ldr r1, [sp, #0x28]
	muls r0, r1, r0
	lsrs r0, r0, #0x10
	ldr r2, _08025834 @ =0x000006B6
	adds r1, r4, r2
	strh r0, [r1]
	ldr r0, _08025838 @ =gUnknown_08693364
	ldr r3, [sp, #0x2c]
	lsls r5, r3, #1
	adds r0, r0, r5
	mov r8, r0
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x24]
	bl sub_0803D34C
	ldr r7, _0802583C @ =gUnknown_02039BD0
	mov sl, r7
	ldr r1, [sp, #0x20]
	lsls r2, r1, #5
	ldr r6, [sp, #0x30]
	adds r6, #1
	lsls r1, r6, #2
	adds r1, #0x40
	adds r7, r2, r1
	lsls r2, r7, #3
	mov r3, sb
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sl
	ldr r1, _08025840 @ =0x000006BC
	adds r4, r4, r1
	ldrh r1, [r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	ldr r0, _08025844 @ =gUnknown_08693164
	adds r5, r5, r0
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x24]
	bl sub_0803D34C
	adds r2, r7, #1
	lsls r2, r2, #3
	mov r3, sb
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sl
	ldrh r1, [r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	ldr r0, [sp, #0x2c]
	subs r0, #0x41
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r6, [sp, #0x54]
	cmp r0, #0x7e
	bhi _08025848
	movs r6, #0
	ldrsh r0, [r5, r6]
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x28]
	bl sub_0803D34C
	adds r2, r7, #2
	lsls r2, r2, #3
	mov r3, sb
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sl
	ldrh r1, [r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	mov r5, r8
	movs r6, #0
	ldrsh r0, [r5, r6]
	rsbs r0, r0, #0
	b _08025872
	.align 2, 0
_080257F8: .4byte gUnknown_02038BE0
_080257FC: .4byte 0x0000072A
_08025800: .4byte 0x00000644
_08025804: .4byte 0x0000064A
_08025808: .4byte 0x0000064C
_0802580C: .4byte gUnknown_0203A440
_08025810: .4byte 0x000006BA
_08025814: .4byte 0x000006A4
_08025818: .4byte 0x000006C2
_0802581C: .4byte 0x000006AC
_08025820: .4byte gUnknown_0202F330
_08025824: .4byte gUnknown_02038388
_08025828: .4byte 0x000006B4
_0802582C: .4byte gUnknown_02039290
_08025830: .4byte gUnknown_0203C468
_08025834: .4byte 0x000006B6
_08025838: .4byte gUnknown_08693364
_0802583C: .4byte gUnknown_02039BD0
_08025840: .4byte 0x000006BC
_08025844: .4byte gUnknown_08693164
_08025848:
	movs r1, #0
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x28]
	bl sub_0803D34C
	adds r2, r7, #2
	lsls r2, r2, #3
	mov r3, sb
	ldr r1, [r3]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sl
	ldrh r1, [r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	mov r5, r8
	movs r6, #0
	ldrsh r0, [r5, r6]
_08025872:
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x28]
	bl sub_0803D34C
	adds r2, r7, #3
	lsls r2, r2, #3
	mov r7, sb
	ldr r1, [r7]
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, sl
	ldrh r1, [r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2, #6]
	ldr r0, _08025968 @ =gUnknown_0831DD0C
	ldr r1, [sp, #0x38]
	lsls r2, r1, #5
	adds r7, r2, r0
	movs r3, #0x10
	ldrsh r5, [r7, r3]
	movs r1, #0xf0
	subs r1, r1, r5
	ldr r4, _0802596C @ =gUnknown_02038BE0
	mov r8, r4
	ldr r6, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	adds r0, r6, r3
	lsls r0, r0, #3
	ldr r4, [sp, #0x3c]
	lsls r6, r4, #4
	adds r0, r0, r6
	mov sb, r0
	mov r4, sb
	add r4, r8
	ldr r3, _08025970 @ =0x000006B4
	adds r0, r4, r3
	ldrh r3, [r0]
	str r2, [sp, #0x68]
	cmp r1, r3
	bgt _080258CC
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _08025964
_080258CC:
	movs r5, #0x12
	ldrsh r2, [r7, r5]
	movs r1, #0xa0
	subs r1, r1, r2
	ldr r7, _08025974 @ =0x000006B6
	adds r0, r4, r7
	ldrh r3, [r0]
	cmp r1, r3
	bgt _080258E6
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _08025964
_080258E6:
	mov r1, r8
	adds r0, r6, r1
	ldrh r0, [r0, #0xc]
	cmp r0, #4
	beq _080258F4
	cmp r0, #6
	bne _08025954
_080258F4:
	mov r0, r8
	adds r0, #0x80
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0xa
	bne _0802591A
	ldr r0, _08025978 @ =0x000006A4
	add r0, r8
	add r0, sb
	ldr r0, [r0]
	cmp r0, #1
	bne _0802591A
	ldr r0, _0802597C @ =gUnknown_020132F0
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #3
	ands r0, r1
	cmp r0, #1
	bne _08025964
_0802591A:
	ldr r1, _0802596C @ =gUnknown_02038BE0
	ldr r3, [sp, #0x3c]
	lsls r2, r3, #4
	adds r0, r2, r1
	ldrh r0, [r0, #0xc]
	cmp r0, #6
	bne _08025954
	adds r0, r1, #0
	adds r0, #0x80
	adds r0, r2, r0
	ldr r0, [r0]
	cmp r0, #0xa
	bne _08025954
	ldr r4, [sp, #0x5c]
	ldr r5, [sp, #0x30]
	adds r0, r4, r5
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r6, _08025978 @ =0x000006A4
	adds r1, r1, r6
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08025954
	bl sub_080377EC
	ldr r7, [sp, #0x20]
	cmp r7, r0
	bne _08025964
_08025954:
	ldr r0, _0802596C @ =gUnknown_02038BE0
	adds r0, #0x80
	ldr r1, [sp, #0x40]
	adds r0, r1, r0
	ldr r0, [r0]
	subs r0, #0x26
	cmp r0, #2
	bhi _08025980
_08025964:
	movs r7, #2
	b _0802598A
	.align 2, 0
_08025968: .4byte gUnknown_0831DD0C
_0802596C: .4byte gUnknown_02038BE0
_08025970: .4byte 0x000006B4
_08025974: .4byte 0x000006B6
_08025978: .4byte 0x000006A4
_0802597C: .4byte gUnknown_020132F0
_08025980:
	ldr r2, _08025B44 @ =gUnknown_0202F344
	ldr r0, [r2]
	lsls r7, r0, #1
	movs r0, #1
	orrs r7, r0
_0802598A:
	ldr r3, _08025B48 @ =gUnknown_02039BD0
	mov r8, r3
	ldr r4, _08025B4C @ =gUnknown_020383A0
	mov sl, r4
	ldr r5, _08025B50 @ =gUnknown_02038388
	mov sb, r5
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	ldr r6, [sp, #0x5c]
	ldr r1, [sp, #0x30]
	adds r0, r6, r1
	lsls r0, r0, #3
	ldr r3, [sp, #0x40]
	adds r0, r0, r3
	ldr r4, _08025B54 @ =gUnknown_02038BE0
	adds r0, r0, r4
	str r0, [sp, #0x44]
	ldr r5, _08025B58 @ =0x000006B6
	adds r3, r0, r5
	ldr r0, _08025B5C @ =gUnknown_0831DD0C
	ldr r6, [sp, #0x68]
	adds r6, r6, r0
	mov ip, r6
	movs r1, #0x12
	ldrsh r0, [r6, r1]
	ldr r4, _08025B44 @ =gUnknown_0202F344
	ldr r1, [r4]
	lsls r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	strb r0, [r2]
	mov r5, sb
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	movs r0, #3
	ands r7, r0
	ldrb r0, [r2, #1]
	movs r6, #4
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, r8
	ldrb r1, [r0, #1]
	movs r7, #0xd
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r1, r2
	strb r1, [r0, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, r8
	ldrb r1, [r0, #1]
	movs r3, #0x21
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #1]
	movs r6, #0x3f
	adds r0, r6, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r4, [r5]
	lsls r5, r4, #2
	add r5, sl
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	add r3, r8
	ldr r7, [sp, #0x44]
	ldr r0, _08025B60 @ =0x000006B4
	adds r1, r7, r0
	mov r7, ip
	movs r0, #0x10
	ldrsh r2, [r7, r0]
	ldr r7, _08025B44 @ =gUnknown_0202F344
	ldr r0, [r7]
	lsls r2, r0
	ldrh r1, [r1]
	adds r2, r2, r1
	ldr r1, _08025B64 @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #2]
	ldr r7, _08025B68 @ =0xFFFFFE00
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r2, [r5]
	lsls r2, r2, #3
	adds r2, r2, r4
	add r2, r8
	movs r0, #7
	ldr r3, [sp, #0x54]
	ands r3, r0
	lsls r3, r3, #1
	ldrb r0, [r2, #3]
	movs r4, #0xf
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #3]
	mov r5, sb
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	movs r2, #1
	ldr r7, [sp, #0x20]
	ands r2, r7
	lsls r2, r2, #4
	ldrb r3, [r1, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #3]
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, r8
	ldrb r1, [r0, #3]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #3]
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, r8
	mov r2, ip
	ldrh r1, [r2, #0xe]
	lsls r1, r1, #6
	ldrb r2, [r0, #3]
	ands r6, r2
	orrs r6, r1
	strb r6, [r0, #3]
	mov r3, ip
	ldrh r0, [r3, #0x14]
	mov r5, r8
	mov r4, sl
	cmp r0, #4
	beq _08025B6C
	ldr r6, _08025B50 @ =gUnknown_02038388
	ldr r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r3, [r0]
	lsls r3, r3, #3
	lsls r1, r1, #0xa
	adds r3, r3, r1
	adds r3, r3, r5
	lsls r2, r7, #8
	movs r7, #0x80
	lsls r7, r7, #2
	adds r2, r2, r7
	ldr r1, [sp, #0x30]
	lsls r0, r1, #6
	b _08025BA4
	.align 2, 0
_08025B44: .4byte gUnknown_0202F344
_08025B48: .4byte gUnknown_02039BD0
_08025B4C: .4byte gUnknown_020383A0
_08025B50: .4byte gUnknown_02038388
_08025B54: .4byte gUnknown_02038BE0
_08025B58: .4byte 0x000006B6
_08025B5C: .4byte gUnknown_0831DD0C
_08025B60: .4byte 0x000006B4
_08025B64: .4byte 0x000001FF
_08025B68: .4byte 0xFFFFFE00
_08025B6C:
	ldr r0, _08025C0C @ =gUnknown_02038388
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r3, [r0]
	lsls r3, r3, #3
	lsls r1, r1, #0xa
	adds r3, r3, r1
	adds r3, r3, r5
	ldr r1, [sp, #0x20]
	lsls r2, r1, #8
	ldr r6, [sp, #0x30]
	lsls r0, r6, #6
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	adds r2, r2, r0
	ldr r1, [sp, #0x44]
	ldr r6, _08025C10 @ =0x000006C2
	adds r0, r1, r6
	movs r7, #0
	ldrsh r0, [r0, r7]
	mov r1, ip
	ldrh r1, [r1, #0x1a]
	asrs r0, r1
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #4
_08025BA4:
	adds r2, r2, r0
	ldr r6, _08025C14 @ =0x000003FF
	adds r0, r6, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r7, _08025C18 @ =0xFFFFFC00
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r0, _08025C0C @ =gUnknown_02038388
	ldr r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r2, [r1, #5]
	movs r3, #0xd
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r2, r0
	movs r0, #8
	orrs r2, r0
	strb r2, [r1, #5]
	ldr r6, _08025C0C @ =gUnknown_02038388
	ldr r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r5
	ldr r7, [sp, #0x20]
	lsls r2, r7, #6
	adds r2, #0x80
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _080261EC
	.align 2, 0
_08025C0C: .4byte gUnknown_02038388
_08025C10: .4byte 0x000006C2
_08025C14: .4byte 0x000003FF
_08025C18: .4byte 0xFFFFFC00
_08025C1C:
	ldr r0, [sp, #0x30]
	adds r0, #1
	str r0, [sp, #0x54]
	cmp r3, #9
	beq _08025C28
	b _080261EC
_08025C28:
	ldr r0, _08025D40 @ =gUnknown_020132F0
	ldr r0, [r0]
	movs r1, #3
	bl sub_0803D34C
	movs r2, #1
	ldr r1, [sp, #0x20]
	ands r1, r2
	ands r2, r0
	cmp r2, r1
	beq _08025C40
	b _080261EC
_08025C40:
	ldr r1, _08025D44 @ =gUnknown_02038BE0
	ldr r2, _08025D48 @ =0x000006AC
	adds r0, r1, r2
	adds r0, r5, r0
	ldr r1, _08025D4C @ =gUnknown_0202F330
	ldr r3, _08025D50 @ =gUnknown_02038388
	ldr r2, [r3]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	lsrs r0, r0, #8
	ldr r7, [sp, #0x28]
	muls r0, r7, r0
	lsrs r0, r0, #0x10
	ldr r7, _08025D54 @ =0x000006B4
	adds r1, r6, r7
	strh r0, [r1]
	ldr r0, _08025D58 @ =gUnknown_02039290
	adds r1, r5, r0
	ldr r0, _08025D5C @ =gUnknown_0203C468
	adds r2, r2, r0
	ldr r0, [r1]
	ldr r1, [r2]
	subs r0, r0, r1
	lsrs r0, r0, #8
	ldr r1, [sp, #0x28]
	muls r0, r1, r0
	lsrs r0, r0, #0x10
	ldr r2, _08025D60 @ =0x000006B6
	adds r1, r6, r2
	strh r0, [r1]
	movs r5, #0
	str r5, [sp, #0x34]
	ldr r6, [sp, #0x20]
	lsls r6, r6, #8
	str r6, [sp, #0x60]
	ldr r7, [sp, #0x30]
	lsls r7, r7, #6
	str r7, [sp, #0x64]
	ldr r0, [sp, #0x20]
	lsls r0, r0, #2
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x20]
	lsls r1, r1, #0xd
	str r1, [sp, #0x6c]
	ldr r2, _08025D64 @ =gUnknown_02039BD0
	mov r8, r2
	ldr r3, _08025D68 @ =gUnknown_020383A0
	mov sl, r3
	ldr r4, _08025D50 @ =gUnknown_02038388
	mov sb, r4
	str r5, [sp, #0x70]
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x74]
	mov ip, sp
	ldr r7, [sp, #0x3c]
	lsls r7, r7, #4
	str r7, [sp, #0x48]
	ldr r0, _08025D44 @ =gUnknown_02038BE0
	adds r0, r7, r0
	str r0, [sp, #0x4c]
	ldr r1, _08025D6C @ =0x0000068A
	adds r1, r0, r1
	str r1, [sp, #0x50]
_08025CC6:
	ldr r2, [sp, #0x4c]
	ldr r3, _08025D70 @ =0x0000064C
	adds r0, r2, r3
	ldrh r3, [r0]
	cmp r3, #1
	beq _08025CD4
	b _08025E04
_08025CD4:
	ldr r4, [sp, #0x50]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08025CDE
	b _08025E04
_08025CDE:
	ldr r5, [sp, #0x5c]
	ldr r6, [sp, #0x30]
	adds r1, r5, r6
	lsls r1, r1, #3
	ldr r7, [sp, #0x48]
	adds r1, r1, r7
	ldr r0, _08025D44 @ =gUnknown_02038BE0
	adds r1, r1, r0
	ldr r4, _08025D54 @ =0x000006B4
	adds r2, r1, r4
	ldr r0, _08025D74 @ =gUnknown_0831E2D4
	ldr r5, [sp, #0x70]
	adds r0, r5, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r6, [sp, #0x24]
	muls r0, r6, r0
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r7, ip
	str r0, [r7]
	ldr r0, _08025D60 @ =0x000006B6
	adds r1, r1, r0
	ldr r0, _08025D78 @ =gUnknown_0831E2E4
	adds r0, r5, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, [sp, #0x28]
	muls r0, r2, r0
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r2, r0, r1
	ldr r4, [sp, #0x74]
	str r2, [r4]
	ldr r0, [r7]
	ldr r5, _08025D7C @ =0xFFFFFEF0
	adds r0, r0, r5
	ldr r1, _08025D80 @ =0x0000FED0
	cmp r0, r1
	bls _08025D3A
	adds r1, r2, #0
	subs r1, #0xc0
	ldr r0, _08025D84 @ =0x0000FF20
	cmp r1, r0
	bhi _08025D88
_08025D3A:
	movs r7, #2
	b _08025D90
	.align 2, 0
_08025D40: .4byte gUnknown_020132F0
_08025D44: .4byte gUnknown_02038BE0
_08025D48: .4byte 0x000006AC
_08025D4C: .4byte gUnknown_0202F330
_08025D50: .4byte gUnknown_02038388
_08025D54: .4byte 0x000006B4
_08025D58: .4byte gUnknown_02039290
_08025D5C: .4byte gUnknown_0203C468
_08025D60: .4byte 0x000006B6
_08025D64: .4byte gUnknown_02039BD0
_08025D68: .4byte gUnknown_020383A0
_08025D6C: .4byte 0x0000068A
_08025D70: .4byte 0x0000064C
_08025D74: .4byte gUnknown_0831E2D4
_08025D78: .4byte gUnknown_0831E2E4
_08025D7C: .4byte 0xFFFFFEF0
_08025D80: .4byte 0x0000FED0
_08025D84: .4byte 0x0000FF20
_08025D88:
	ldr r6, _08025DF8 @ =gUnknown_0202F344
	ldr r0, [r6]
	lsls r7, r0, #1
	orrs r7, r3
_08025D90:
	mov r0, sb
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldr r3, [sp, #0x74]
	ldr r2, [r3]
	ldr r4, _08025DF8 @ =gUnknown_0202F344
	ldr r3, [r4]
	movs r4, #0x20
	rsbs r4, r4, #0
	adds r0, r4, #0
	lsls r0, r3
	adds r2, r2, r0
	strb r2, [r1]
	mov r6, sb
	ldr r5, [r6]
	lsls r6, r5, #2
	add r6, sl
	ldr r3, [r6]
	lsls r3, r3, #3
	lsls r5, r5, #0xa
	adds r3, r3, r5
	add r3, r8
	ldr r1, _08025DF8 @ =gUnknown_0202F344
	ldr r0, [r1]
	lsls r4, r0
	mov r0, ip
	ldr r2, [r0]
	adds r2, r2, r4
	ldr r1, _08025DFC @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #2]
	ldr r4, _08025E00 @ =0xFFFFFE00
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
	add r0, r8
	ldrb r1, [r0, #3]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #3]
	b _08025EF8
	.align 2, 0
_08025DF8: .4byte gUnknown_0202F344
_08025DFC: .4byte 0x000001FF
_08025E00: .4byte 0xFFFFFE00
_08025E04:
	ldr r5, [sp, #0x5c]
	ldr r6, [sp, #0x30]
	adds r1, r5, r6
	lsls r1, r1, #3
	ldr r7, [sp, #0x40]
	adds r1, r1, r7
	ldr r0, _08025E64 @ =gUnknown_02038BE0
	adds r1, r1, r0
	ldr r3, _08025E68 @ =0x000006B4
	adds r2, r1, r3
	ldr r0, _08025E6C @ =gUnknown_0831E2B4
	ldr r4, [sp, #0x70]
	adds r0, r4, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r5, [sp, #0x24]
	muls r0, r5, r0
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r6, ip
	str r0, [r6]
	ldr r7, _08025E70 @ =0x000006B6
	adds r1, r1, r7
	ldr r0, _08025E74 @ =gUnknown_0831E2C4
	adds r0, r4, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, [sp, #0x28]
	muls r0, r2, r0
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r2, r0, r1
	ldr r3, [sp, #0x74]
	str r2, [r3]
	ldr r0, [r6]
	ldr r4, _08025E78 @ =0xFFFFFF00
	adds r0, r0, r4
	ldr r1, _08025E7C @ =0x0000FEF0
	cmp r0, r1
	bls _08025E60
	adds r1, r2, #0
	subs r1, #0xb0
	ldr r0, _08025E80 @ =0x0000FF40
	cmp r1, r0
	bhi _08025E84
_08025E60:
	movs r7, #2
	b _08025E8E
	.align 2, 0
_08025E64: .4byte gUnknown_02038BE0
_08025E68: .4byte 0x000006B4
_08025E6C: .4byte gUnknown_0831E2B4
_08025E70: .4byte 0x000006B6
_08025E74: .4byte gUnknown_0831E2C4
_08025E78: .4byte 0xFFFFFF00
_08025E7C: .4byte 0x0000FEF0
_08025E80: .4byte 0x0000FF40
_08025E84:
	ldr r5, _0802610C @ =gUnknown_0202F344
	ldr r0, [r5]
	lsls r7, r0, #1
	movs r6, #1
	orrs r7, r6
_08025E8E:
	mov r0, sb
	ldr r2, [r0]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldr r3, [sp, #0x74]
	ldr r2, [r3]
	ldr r4, _0802610C @ =gUnknown_0202F344
	ldr r3, [r4]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	lsls r0, r3
	adds r2, r2, r0
	strb r2, [r1]
	mov r6, sb
	ldr r5, [r6]
	lsls r6, r5, #2
	add r6, sl
	ldr r3, [r6]
	lsls r3, r3, #3
	lsls r5, r5, #0xa
	adds r3, r3, r5
	add r3, r8
	ldr r1, _0802610C @ =gUnknown_0202F344
	ldr r0, [r1]
	lsls r4, r0
	mov r0, ip
	ldr r2, [r0]
	adds r2, r2, r4
	ldr r1, _08026110 @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #2]
	ldr r4, _08026114 @ =0xFFFFFE00
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r5
	add r1, r8
	ldrb r2, [r1, #3]
	movs r0, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #3]
_08025EF8:
	mov r5, sb
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	movs r0, #3
	ands r7, r0
	ldrb r0, [r2, #1]
	movs r6, #4
	rsbs r6, r6, #0
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	add r0, r8
	ldrb r1, [r0, #3]
	movs r7, #0xf
	rsbs r7, r7, #0
	adds r2, r7, #0
	ands r1, r2
	strb r1, [r0, #3]
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	ldr r1, [sp, #0x34]
	ldr r3, _08026118 @ =gUnknown_0831E2AC
	adds r0, r1, r3
	ldrb r1, [r0]
	movs r4, #1
	ands r1, r4
	lsls r1, r1, #4
	ldrb r3, [r2, #3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r1, [r5]
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	add r2, r8
	ldr r5, [sp, #0x34]
	ldr r6, _0802611C @ =gUnknown_0831E2B0
	adds r0, r5, r6
	ldrb r1, [r0]
	ands r1, r4
	lsls r1, r1, #5
	ldrb r3, [r2, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #3]
	mov r7, sb
	ldr r4, [r7]
	lsls r5, r4, #2
	add r5, sl
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	add r3, r8
	ldr r0, [sp, #0x60]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r0, r1
	ldr r6, [sp, #0x64]
	adds r2, r2, r6
	ldr r7, _08026120 @ =0x000003FF
	adds r0, r7, #0
	ands r2, r0
	ldrh r0, [r3, #4]
	ldr r6, _08026124 @ =0xFFFFFC00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r1, [r5]
	lsls r1, r1, #3
	adds r1, r1, r4
	add r1, r8
	ldrb r2, [r1, #5]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	strb r0, [r1, #5]
	mov r7, sb
	ldr r2, [r7]
	lsls r0, r2, #2
	add r0, sl
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	add r1, r8
	ldr r2, [sp, #0x58]
	adds r2, #9
	lsls r2, r2, #4
	ldrb r3, [r1, #5]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #5]
	ldr r1, [r7]
	lsls r1, r1, #2
	add r1, sl
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, [sp, #0x70]
	adds r0, #4
	str r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	adds r1, #4
	str r1, [sp, #0x74]
	movs r2, #4
	add ip, r2
	ldr r3, [sp, #0x34]
	adds r3, #1
	str r3, [sp, #0x34]
	cmp r3, #3
	bgt _08026080
	b _08025CC6
_08026080:
	ldr r4, [sp, #0x3c]
	lsls r6, r4, #4
	ldr r5, _08026128 @ =gUnknown_02038BE0
	adds r3, r6, r5
	ldr r7, _0802612C @ =0x0000064C
	adds r0, r3, r7
	ldrh r0, [r0]
	cmp r0, #1
	bne _08026150
	ldr r1, _08026130 @ =0x0000068A
	adds r0, r3, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08026150
	ldr r2, _08026134 @ =gUnknown_02038388
	ldr r4, [r2]
	lsls r5, r4, #2
	ldr r7, _08026138 @ =gUnknown_02038380
	adds r5, r5, r7
	ldr r2, [r5]
	lsls r2, r2, #4
	lsls r4, r4, #0xc
	adds r2, r2, r4
	ldr r0, _0802613C @ =gUnknown_0203A450
	adds r2, r2, r0
	ldr r1, _08026140 @ =gUnknown_0831E06C
	movs r7, #0xd1
	lsls r7, r7, #3
	adds r0, r3, r7
	ldrh r3, [r0]
	lsls r3, r3, #5
	adds r3, r3, r1
	mov r8, r3
	ldr r1, _08026144 @ =gUnknown_0831E324
	ldr r3, [sp, #0x5c]
	ldr r7, [sp, #0x30]
	adds r0, r3, r7
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r3, _08026128 @ =gUnknown_02038BE0
	adds r0, r0, r3
	movs r6, #0xd9
	lsls r6, r6, #3
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r7, r8
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r1, _0802613C @ =gUnknown_0203A450
	adds r1, #4
	adds r0, r0, r1
	ldr r2, [sp, #0x6c]
	ldr r3, _08026148 @ =0x06015000
	adds r1, r2, r3
	str r1, [r0]
	ldr r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r4, _0802614C @ =gUnknown_0203A458
	adds r0, r0, r4
	movs r1, #0x80
	lsls r1, r1, #4
	b _080261C8
	.align 2, 0
_0802610C: .4byte gUnknown_0202F344
_08026110: .4byte 0x000001FF
_08026114: .4byte 0xFFFFFE00
_08026118: .4byte gUnknown_0831E2AC
_0802611C: .4byte gUnknown_0831E2B0
_08026120: .4byte 0x000003FF
_08026124: .4byte 0xFFFFFC00
_08026128: .4byte gUnknown_02038BE0
_0802612C: .4byte 0x0000064C
_08026130: .4byte 0x0000068A
_08026134: .4byte gUnknown_02038388
_08026138: .4byte gUnknown_02038380
_0802613C: .4byte gUnknown_0203A450
_08026140: .4byte gUnknown_0831E06C
_08026144: .4byte gUnknown_0831E324
_08026148: .4byte 0x06015000
_0802614C: .4byte gUnknown_0203A458
_08026150:
	ldr r5, _08026218 @ =gUnknown_02038388
	ldr r4, [r5]
	lsls r5, r4, #2
	ldr r6, _0802621C @ =gUnknown_02038380
	adds r5, r5, r6
	ldr r2, [r5]
	lsls r2, r2, #4
	lsls r4, r4, #0xc
	adds r2, r2, r4
	ldr r7, _08026220 @ =gUnknown_0203A450
	adds r2, r2, r7
	ldr r1, _08026224 @ =gUnknown_0831DF4C
	ldr r3, [sp, #0x40]
	ldr r6, _08026228 @ =gUnknown_02038BE0
	adds r0, r3, r6
	movs r7, #0xd1
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r3, [r0]
	lsls r3, r3, #5
	adds r3, r3, r1
	ldr r1, _0802622C @ =gUnknown_0831E304
	ldr r6, [sp, #0x5c]
	ldr r7, [sp, #0x30]
	adds r0, r6, r7
	lsls r0, r0, #3
	ldr r6, [sp, #0x40]
	adds r0, r0, r6
	ldr r7, _08026228 @ =gUnknown_02038BE0
	adds r0, r0, r7
	movs r6, #0xd9
	lsls r6, r6, #3
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r5]
	lsls r1, r1, #4
	adds r1, r1, r4
	ldr r0, _08026220 @ =gUnknown_0203A450
	adds r0, #4
	adds r1, r1, r0
	ldr r7, [sp, #0x30]
	lsls r0, r7, #0xb
	ldr r2, _08026230 @ =0x06015000
	adds r0, r0, r2
	ldr r3, [sp, #0x6c]
	adds r0, r3, r0
	str r0, [r1]
	ldr r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldr r4, _08026234 @ =gUnknown_0203A458
	adds r0, r0, r4
	movs r1, #0x80
	lsls r1, r1, #2
_080261C8:
	str r1, [r0]
	ldr r5, _08026218 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r2, r1, #2
	ldr r6, _0802621C @ =gUnknown_02038380
	adds r2, r2, r6
	ldr r0, [r2]
	lsls r0, r0, #4
	lsls r1, r1, #0xc
	adds r0, r0, r1
	ldr r1, _08026220 @ =gUnknown_0203A450
	adds r1, #0xc
	adds r0, r0, r1
	movs r1, #0x40
	str r1, [r0]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_080261EC:
	ldr r7, [sp, #0x54]
	str r7, [sp, #0x30]
	ldr r1, [sp, #0x40]
	ldr r2, _08026228 @ =gUnknown_02038BE0
	adds r0, r1, r2
	ldr r3, _08026238 @ =0x0000064C
	adds r0, r0, r3
	adds r4, r7, #0
	ldrh r0, [r0]
	cmp r4, r0
	bge _08026206
	bl sub_080256B8
_08026206:
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026218: .4byte gUnknown_02038388
_0802621C: .4byte gUnknown_02038380
_08026220: .4byte gUnknown_0203A450
_08026224: .4byte gUnknown_0831DF4C
_08026228: .4byte gUnknown_02038BE0
_0802622C: .4byte gUnknown_0831E304
_08026230: .4byte 0x06015000
_08026234: .4byte gUnknown_0203A458
_08026238: .4byte 0x0000064C

	thumb_func_start sub_0802623C
sub_0802623C: @ 0x0802623C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	str r0, [sp]
	ldr r5, _080262D0 @ =gUnknown_02038BE0
	lsls r1, r0, #7
	subs r2, r1, r0
	lsls r3, r2, #4
	adds r4, r3, r5
	adds r0, r4, #0
	adds r0, #0xac
	ldrh r0, [r0]
	cmp r0, #0
	bne _08026262
	bl _08026BF6
_08026262:
	movs r0, #1
	str r0, [sp, #4]
	movs r6, #0
	str r6, [sp, #8]
	str r1, [sp, #0x1c]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r7, r5, #0
	str r7, [sp, #0x18]
	adds r1, r7, #0
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r1, r2
	adds r0, r3, r0
	str r0, [sp, #0x24]
	str r4, [sp, #0x28]
	str r3, [sp, #0x2c]
	movs r3, #0
	str r3, [sp, #0x30]
	movs r4, #0x81
	lsls r4, r4, #2
	adds r0, r1, r4
	ldr r5, [sp, #0x2c]
	adds r0, r5, r0
	str r0, [sp, #0x34]
	ldr r6, [sp, #0x28]
	str r6, [sp, #0x38]

	thumb_func_start sub_08026298
sub_08026298: @ 0x08026298
	ldr r7, [sp, #0x24]
	ldrh r0, [r7, #0x1c]
	lsls r2, r0, #1
	adds r0, r2, r0
	ldrh r1, [r7, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r3, [sp, #0x10]
	adds r1, r0, r3
	ldr r4, _080262D0 @ =gUnknown_02038BE0
	movs r5, #0x8a
	lsls r5, r5, #1
	adds r0, r4, r5
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, #1
	bne _080262D4
	movs r6, #0xe4
	lsls r6, r6, #1
	adds r0, r4, r6
	adds r0, r1, r0
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #1
	b _080262E4
	.align 2, 0
_080262D0: .4byte gUnknown_02038BE0
_080262D4:
	ldr r7, _08026358 @ =gUnknown_02038BE0
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r0, r7, r3
	adds r0, r1, r0
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
_080262E4:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, _0802635C @ =gUnknown_0203A440
	ldr r7, [r3]
	ldr r5, _08026358 @ =gUnknown_02038BE0
	movs r6, #0xfe
	lsls r6, r6, #1
	adds r0, r5, r6
	ldr r1, [sp, #0x2c]
	adds r0, r1, r0
	ldr r1, _08026360 @ =gUnknown_0202F330
	ldr r5, _08026364 @ =gUnknown_02038388
	ldr r2, [r5]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r0, [r0]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	muls r0, r7, r0
	asrs r0, r0, #0x10
	ldr r6, [sp, #0x24]
	strh r0, [r6, #0xc]
	ldr r0, _08026358 @ =gUnknown_02038BE0
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r0, r5
	ldr r6, [sp, #0x2c]
	adds r1, r6, r1
	ldr r0, _08026368 @ =gUnknown_0203C468
	adds r2, r2, r0
	ldr r0, [r1]
	ldr r1, [r2]
	subs r0, r0, r1
	asrs r0, r0, #8
	muls r0, r7, r0
	asrs r0, r0, #0x10
	ldr r7, [sp, #0x24]
	strh r0, [r7, #0xe]
	ldr r1, [r7]
	cmp r1, #3
	beq _0802633A
	b _0802682C
_0802633A:
	ldr r1, _0802636C @ =gUnknown_0831BF8C
	lsls r2, r4, #5
	adds r0, r2, r1
	ldrh r0, [r0, #0x1c]
	str r2, [sp, #0x20]
	cmp r0, #0
	beq _08026370
	ldrh r1, [r7, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08026370
	movs r0, #2
	b _080263C6
	.align 2, 0
_08026358: .4byte gUnknown_02038BE0
_0802635C: .4byte gUnknown_0203A440
_08026360: .4byte gUnknown_0202F330
_08026364: .4byte gUnknown_02038388
_08026368: .4byte gUnknown_0203C468
_0802636C: .4byte gUnknown_0831BF8C
_08026370:
	ldr r1, [sp, #0x20]
	ldr r2, _080263B0 @ =gUnknown_0831BF8C
	adds r3, r1, r2
	movs r4, #0x10
	ldrsh r2, [r3, r4]
	movs r0, #0xf0
	subs r0, r0, r2
	ldr r5, [sp, #0x34]
	ldrh r1, [r5]
	cmp r0, r1
	bgt _0802638E
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bls _080263AA
_0802638E:
	movs r6, #0x12
	ldrsh r3, [r3, r6]
	movs r1, #0xa0
	subs r1, r1, r3
	ldr r7, [sp, #0x38]
	ldr r2, _080263B4 @ =0x00000206
	adds r0, r7, r2
	ldrh r2, [r0]
	cmp r1, r2
	bgt _080263B8
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bhi _080263B8
_080263AA:
	movs r3, #2
	mov sb, r3
	b _080263C8
	.align 2, 0
_080263B0: .4byte gUnknown_0831BF8C
_080263B4: .4byte 0x00000206
_080263B8:
	ldr r4, _0802660C @ =gUnknown_0202F344
	ldr r0, [r4]
	lsls r0, r0, #1
	movs r1, #1
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080263C6:
	mov sb, r0
_080263C8:
	ldr r5, _08026610 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r0, r1, #2
	ldr r6, _08026614 @ =gUnknown_020383A0
	adds r0, r0, r6
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	ldr r7, _08026618 @ =gUnknown_02039BD0
	adds r2, r2, r7
	ldr r0, [sp, #0xc]
	lsls r0, r0, #4
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x30]
	adds r1, r1, r0
	mov ip, r1
	ldr r3, [sp, #0x18]
	add ip, r3
	ldr r3, _0802661C @ =0x00000206
	add r3, ip
	ldr r4, [sp, #0x20]
	ldr r5, _08026620 @ =gUnknown_0831BF8C
	adds r7, r4, r5
	movs r6, #0x12
	ldrsh r0, [r7, r6]
	ldr r4, _0802660C @ =gUnknown_0202F344
	ldr r1, [r4]
	lsls r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	strb r0, [r2]
	ldr r5, _08026610 @ =gUnknown_02038388
	ldr r1, [r5]
	lsls r0, r1, #2
	ldr r6, _08026614 @ =gUnknown_020383A0
	adds r0, r0, r6
	ldr r2, [r0]
	lsls r2, r2, #3
	lsls r1, r1, #0xa
	adds r2, r2, r1
	ldr r0, _08026618 @ =gUnknown_02039BD0
	adds r2, r2, r0
	movs r0, #3
	mov r1, sb
	ands r1, r0
	mov sb, r1
	ldrb r0, [r2, #1]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	mov r4, sb
	orrs r0, r4
	strb r0, [r2, #1]
	ldr r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r5, _08026618 @ =gUnknown_02039BD0
	adds r1, r1, r5
	ldrb r2, [r1, #1]
	movs r6, #0xd
	rsbs r6, r6, #0
	mov sl, r6
	mov r0, sl
	ands r0, r2
	strb r0, [r1, #1]
	ldr r0, _08026610 @ =gUnknown_02038388
	ldr r2, [r0]
	lsls r0, r2, #2
	ldr r1, _08026614 @ =gUnknown_020383A0
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r2, [r1, #1]
	subs r3, #0xd
	mov sb, r3
	mov r0, sb
	ands r0, r2
	strb r0, [r1, #1]
	ldr r4, _08026610 @ =gUnknown_02038388
	ldr r2, [r4]
	lsls r0, r2, #2
	ldr r5, _08026614 @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	ldr r6, _08026618 @ =gUnknown_02039BD0
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	mov r8, r0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r2, [r4]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r2, [r1, #1]
	movs r0, #0x3f
	ands r0, r2
	strb r0, [r1, #1]
	ldr r4, [r4]
	lsls r5, r4, #2
	ldr r1, _08026614 @ =gUnknown_020383A0
	adds r5, r5, r1
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	adds r3, r3, r6
	movs r2, #0x81
	lsls r2, r2, #2
	add ip, r2
	movs r6, #0x10
	ldrsh r2, [r7, r6]
	ldr r1, _0802660C @ =gUnknown_0202F344
	ldr r0, [r1]
	lsls r2, r0
	mov r6, ip
	ldrh r6, [r6]
	adds r2, r2, r6
	ldr r1, _08026624 @ =0x000001FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r3, #2]
	ldr r6, _08026628 @ =0xFFFFFE00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, _08026618 @ =gUnknown_02039BD0
	adds r0, r0, r1
	ldrb r1, [r0, #3]
	movs r3, #0xf
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0, #3]
	ldr r4, _08026610 @ =gUnknown_02038388
	ldr r1, [r4]
	lsls r0, r1, #2
	ldr r5, _08026614 @ =gUnknown_020383A0
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	ldr r6, _08026618 @ =gUnknown_02039BD0
	adds r0, r0, r6
	ldrb r1, [r0, #3]
	mov r2, sb
	ands r2, r1
	strb r2, [r0, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r6
	ldrb r1, [r0, #3]
	mov r3, r8
	ands r3, r1
	strb r3, [r0, #3]
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r0, r0, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r0, r0, r6
	ldrh r1, [r7, #0xe]
	lsls r1, r1, #6
	ldrb r2, [r0, #3]
	movs r6, #0x3f
	ands r6, r2
	orrs r6, r1
	strb r6, [r0, #3]
	ldr r4, [r4]
	lsls r5, r4, #2
	ldr r6, _08026614 @ =gUnknown_020383A0
	adds r5, r5, r6
	ldr r3, [r5]
	lsls r3, r3, #3
	lsls r4, r4, #0xa
	adds r3, r3, r4
	ldr r7, _08026618 @ =gUnknown_02039BD0
	adds r3, r3, r7
	ldr r0, [sp]
	lsls r2, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	ldr r6, [sp, #8]
	lsls r0, r6, #4
	adds r2, r2, r0
	pop {r0}