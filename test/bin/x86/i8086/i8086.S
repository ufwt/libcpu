# This test case is not runnable, it simply attempts to cover as much of the
# x86 instruction set encoding as possible.
	.code16gcc
	.text

	.globl function_0
	.type  function_0, @function
function_0:
	retw

	.globl  _start
	.type   _start, @function
_start:
	aaa
	# aad
	# aam
	aas
	cbw
	clc
	cld
	cli
	cmc
	# cmpsb
	# cmpsw
	cwd
	daa
	das
	hlt
	into
	iretw
	lahf
	# lodsb
	# lodsw
	# movsb
	# movsw
	nop
	popaw
	popfw
	pushaw
	pushfw
	retw
	retfw
	sahf
	# scasb
	# scasw
	stc
	std
	sti
	# stosb
	# stosw
	# xlatb

	# 0x00 ("add")
	addb %al, %bl
	addb %dl, %ds:0x01(%si)

	# 0x01 ("add")
	addw %ax, %bx
	addw %dx, %ds:0x01(%si)

	# 0x02 ("add")
	addb %ds:0x01(%si), %dl
	#addb 0x12, %al

	# 0x03 ("add")
	addw %ds:0x01(%si), %dx
	#addw 0x1234, %ax

	# 0x04 ("add")
	.byte 0x04
	.byte 0x12

	# 0x05 ("add")
	.byte 0x05
	.byte 0x34
	.byte 0x12

	# 0x08 ("or")
	orb %al, %bl
	orb %dl, %ds:0x01(%si)

	# 0x09 ("or")
	orw %ax, %bx
	orw %dx, %ds:0x01(%si)

	# 0x0A ("or")
	orb %ds:0x01(%si), %dl
	#orb 0x12, %al

	# 0x0B ("or")
	orw %ds:0x01(%si), %dx
	#orw 0x1234, %ax

	# 0x0C ("or")
	.byte 0x0C
	.byte 0x12

	# 0x0D ("or")
	.byte 0x0D
	.byte 0x34
	.byte 0x12

	# 0x10 ("adc")
	adcb %al, %bl
	adcb %dl, %ds:0x01(%si)

	# 0x11 ("adc")
	adcw %ax, %bx
	adcw %dx, %ds:0x01(%si)

	# 0x12 ("adc")
	adcb %ds:0x01(%si), %dl
	#adcb 0x12, %al

	# 0x13 ("adc")
	adcw %ds:0x01(%si), %dx
	#adcw 0x1234, %ax

	# 0x14 ("adc")
	.byte 0x14
	.byte 0x12

	# 0x15 ("adc")
	.byte 0x15
	.byte 0x34
	.byte 0x12

	# 0x18 ("sbb")
	sbbb %al, %bl
	sbbb %dl, %ds:0x01(%si)

	# 0x19 ("sbb")
	sbbw %ax, %bx
	sbbw %dx, %ds:0x01(%si)

	# 0x1A ("sbb")
	sbbb %ds:0x01(%si), %dl
	#sbbb 0x12, %al

	# 0x1B ("sbb")
	sbbw %ds:0x01(%si), %dx
	#sbbw 0x1234, %ax

	# 0x1C ("sbb")
	.byte 0x1C
	.byte 0x12

	# 0x1D ("sbb")
	.byte 0x1D
	.byte 0x34
	.byte 0x12

	# 0x20 ("and")
	andb %al, %bl
	andb %dl, %ds:0x01(%si)

	# 0x21 ("and")
	andw %ax, %bx
	andw %dx, %ds:0x01(%si)

	# 0x22 ("and")
	andb %ds:0x01(%si), %dl
	#andb 0x12, %al

	# 0x23 ("and")
	andw %ds:0x01(%si), %dx
	#andw 0x1234, %ax

	# 0x24 ("and")
	.byte 0x24
	.byte 0x12

	# 0x25 ("and")
	.byte 0x25
	.byte 0x34
	.byte 0x12

	# 0x28 ("sub")
	subb %al, %bl
	subb %dl, %ds:0x01(%si)

	# 0x29 ("sub")
	subw %ax, %bx
	subw %dx, %ds:0x01(%si)

	# 0x2A ("sub")
	subb %ds:0x01(%si), %dl
	#subb 0x12, %al

	# 0x2B ("sub")
	subw %ds:0x01(%si), %dx
	#subw 0x1234, %ax

	# 0x2C ("sub")
	.byte 0x2C
	.byte 0x12

	# 0x2D ("sub")
	.byte 0x2D
	.byte 0x34
	.byte 0x12

	# 0x30 ("xor")
	xorb %al, %bl
	xorb %dl, %ds:0x01(%si)

	# 0x31 ("xor")
	xorw %ax, %bx
	xorw %dx, %ds:0x01(%si)

	# 0x32 ("xor")
	xorb %ds:0x01(%si), %dl
	#xorb 0x12, %al

	# 0x33 ("xor")
	xorw %ds:0x01(%si), %dx
	#xorw 0x1234, %ax

	# 0x34 ("xor")
	.byte 0x34
	.byte 0x12

	# 0x35 ("xor")
	.byte 0x35
	.byte 0x34
	.byte 0x12

	# 0x38 ("cmp")
	cmpb %al, %bl
	cmpb %dl, %ds:0x01(%si)

	# 0x39 ("cmp")
	cmpw %ax, %bx
	cmpw %dx, %ds:0x01(%si)

	# 0x3A ("cmp")
	cmpb %ds:0x01(%si), %dl
	#cmpb 0x12, %al

	# 0x3B ("cmp")
	cmpw %ds:0x01(%si), %dx
	#cmpw 0x1234, %ax

	# 0x3C ("cmp")
	.byte 0x3C
	.byte 0x12

	# 0x3D ("cmp")
	.byte 0x3D
	.byte 0x34
	.byte 0x12

	# 0x40+rw ("inc")
	incw %ax
	incw %cx
	incw %dx
	incw %bx
	incw %sp
	incw %bp
	incw %si
	incw %di

	# 0x48+rw ("dec")
	decw %ax
	decw %cx
	decw %dx
	decw %bx
	decw %sp
	decw %bp
	decw %si
	decw %di

	# 0x50+rw ("push")
	pushw %ax
	pushw %cx
	pushw %dx
	pushw %bx
	pushw %sp
	pushw %bp
	pushw %si
	pushw %di
	pushw %es
	pushw %cs
	pushw %ss
	pushw %ds

	# 0x58+rw ("pop")
	popw %ax
	popw %cx
	popw %dx
	popw %bx
	popw %sp
	popw %bp
	popw %si
	popw %di
	popw %es
	popw %ss
	popw %ds

	# 0x70
	jo  L1
	jno L1
	jb  L1
	jnb L1
	jz  L1
	jnz L1
	jbe L1
	ja  L1
	js  L1
	jns L1
	jpe L1
	jpo L1
	jl  L1
	jge L1
	jle L1
	jg  L1
L1:

	# 0xb80+rw ("mov")
	movw $1, %ax
	movw $1, %cx
	movw $1, %dx
	movw $1, %bx
	movw $1, %sp
	movw $1, %bp
	movw $1, %si
	movw $1, %di
	movw $-0x1, %ax
	movw $0x1234, %ax

	# 0x84 ("test")
	testb %al, %bl
	testb %dl, %ds:0x01(%si)

	# 0x85 ("test")
	testw %ax, %bx
	testw %dx, %ds:0x01(%si)

	# 0x88 ("mov")
	movb %al, %bl
	movb %bl, %cl
	movb %cl, %dl
	movb %dl, %al

	movb %al, %ds:(%si)
	movb %bl, %es:(%di)

	movb %al, %ds:0x01(%si)
	movb %al, %ds:-0x01(%si)
	movb %al, %ds:0x1234(%si)

	# 0x89 ("mov")
	movw %ax, %bx
	movw %bx, %cx
	movw %cx, %dx
	movw %dx, %ax

	movw %ax, %ds:(%si)
	movw %bx, %es:(%di)

	movw %ax, %ds:0x01(%si)
	movw %ax, %ds:-0x01(%si)
	movw %ax, %ds:0x1234(%si)

	# 0x8a ("mov")
	movb %ds:(%si), %al
	movb %es:(%di), %bl

	movb %ds:0x01(%si), %al
	movb %ds:-0x01(%si), %al
	movb %ds:0x1234(%si), %al

	# 0x8b ("mov")
	movw %ds:(%si), %ax
	movw %es:(%di), %bx

	movw %ds:0x01(%si), %ax
	movw %ds:-0x01(%si), %ax
	movw %ds:0x1234(%si), %ax

	# 0x90+rw
	xchgw %ax, %ax
	xchgw %cx, %ax
	xchgw %dx, %ax
	xchgw %bx, %ax
	xchgw %sp, %ax
	xchgw %bp, %ax
	xchgw %si, %ax
	xchgw %di, %ax

	# 0x90+rw
	xchgw %ax, %ax
	xchgw %cx, %ax
	xchgw %dx, %ax
	xchgw %bx, %ax
	xchgw %sp, %ax
	xchgw %bp, %ax
	xchgw %si, %ax
	xchgw %di, %ax

	# 0xc0 /digit ("shift group 2")
	rolb $0x00, %al
	rolb $0xff, %bh

	rorb $0x00, %al
	rorb $0xff, %bh

	rclb $0x00, %al
	rclb $0xff, %bh

	rcrb $0x00, %al
	rcrb $0xff, %bh

	sarb $0x00, %al
	sarb $0xff, %bh

	# The sal and shl instructions perform the same operation.
	shlb $0x00, %al
	shlb $0xff, %bh

	shrb $0x00, %al
	shrb $0xff, %bh

	# 0xc1 /digit ("shift group 2")
	rolw $0x00, %ax
	rolw $0xff, %bx

	rorw $0x00, %ax
	rorw $0xff, %bx

	rclw $0x00, %ax
	rclw $0xff, %bx

	rcrw $0x00, %ax
	rcrw $0xff, %bx

	sarw $0x00, %ax
	sarw $0xff, %bx

	# The sal and shl instructions perform the same operation.
	shlw $0x00, %ax
	shlw $0xff, %bx

	shrw $0x00, %ax
	shrw $0xff, %bx

	# 0xc6
	movb $1, %ds:0x01(%si)

	# 0xd7
	xlat

	# 0xe8
	callw function_0
	callw function_1

	jmp L1
	jmp L2
L2:

	lock addb %dl, %ds:0x01(%si)

	nop
	nop

	.globl function_1
	.type  function_1, @function
function_1:
	retw
