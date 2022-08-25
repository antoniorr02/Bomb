	.file	"bombaARR.c"
	.text
	.globl	a
	.data
	.type	a, @object
	.size	a, 1
a:
	.byte	104
	.globl	e
	.type	e, @object
	.size	e, 1
e:
	.byte	111
	.globl	d
	.section	.rodata
	.type	d, @object
	.size	d, 1
d:
	.byte	122
	.globl	f
	.data
	.type	f, @object
	.size	f, 1
f:
	.byte	114
	.globl	g
	.type	g, @object
	.size	g, 1
g:
	.byte	109
	.globl	h
	.section	.rodata
	.type	h, @object
	.size	h, 1
h:
	.byte	122
	.globl	b
	.data
	.type	b, @object
	.size	b, 1
b:
	.byte	105
	.globl	i
	.type	i, @object
	.size	i, 1
i:
	.byte	103
	.globl	j
	.type	j, @object
	.size	j, 1
j:
	.byte	97
	.globl	k
	.section	.rodata
	.type	k, @object
	.size	k, 1
k:
	.byte	122
	.globl	c
	.data
	.type	c, @object
	.size	c, 1
c:
	.byte	115
	.globl	falso
	.type	falso, @object
	.size	falso, 7
falso:
	.string	"clave\n"
	.globl	user
	.align 4
	.type	user, @object
	.size	user, 4
user:
	.long	1102
	.section	.rodata
	.align 8
.LC0:
	.string	"\n***************\n*** BOOM!!! ***\n***************\n"
	.text
	.globl	boom
	.type	boom, @function
boom:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$-1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE6:
	.size	boom, .-boom
	.section	.rodata
	.align 8
.LC1:
	.string	"\n\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\n\302\267\302\267\302\267 bomba desactivada \302\267\302\267\302\267\n\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\302\267\n"
	.text
	.globl	defused
	.type	defused, @function
defused:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE7:
	.size	defused, .-defused
	.section	.rodata
.LC2:
	.string	"\nIntroduce la contrase\303\261a: "
.LC3:
	.string	"\nIntroduce el pin: "
.LC4:
	.string	"%i"
.LC5:
	.string	"%*s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday@PLT
.L4:
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rdx
	leaq	-112(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L4
	movzbl	-112(%rbp), %eax
	movb	%al, -153(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$4, %rax
	jne	.L5
	movzbl	-112(%rbp), %eax
	movl	$122, %edx
	cmpb	%dl, %al
	je	.L6
	call	boom
.L6:
	movzbl	-111(%rbp), %eax
	movl	$122, %edx
	cmpb	%dl, %al
	je	.L7
	call	boom
.L7:
	movzbl	-110(%rbp), %eax
	movl	$122, %edx
	cmpb	%dl, %al
	je	.L8
	call	boom
	jmp	.L8
.L5:
	call	boom
.L8:
	leaq	-128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday@PLT
	movq	-128(%rbp), %rdx
	movq	-144(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$5, %rax
	jle	.L11
	call	boom
.L11:
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-152(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.L10
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L10:
	cmpl	$1, -148(%rbp)
	jne	.L11
	movl	-152(%rbp), %edx
	movl	user(%rip), %eax
	cmpl	%eax, %edx
	je	.L12
	call	boom
.L12:
	leaq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday@PLT
	movq	-144(%rbp), %rdx
	movq	-128(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$5, %rax
	jle	.L13
	call	boom
.L13:
	call	defused
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
