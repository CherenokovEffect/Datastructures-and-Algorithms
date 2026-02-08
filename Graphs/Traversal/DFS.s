	.file	"DFS.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii " \0"
	.text
	.p2align 4
	.globl	_Z3DFSiPSt6vectorIiSaIiEERS_IbSaIbEE
	.def	_Z3DFSiPSt6vectorIiSaIiEERS_IbSaIbEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3DFSiPSt6vectorIiSaIiEERS_IbSaIbEE
_Z3DFSiPSt6vectorIiSaIiEERS_IbSaIbEE:
.LFB10637:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movslq	%ecx, %rbx
	movq	%rdx, %rdi
	movq	(%r8), %rdx
	movq	%r8, %rsi
	testq	%rbx, %rbx
	leaq	31(%rbx), %rax
	movq	%rbx, %r9
	cmovns	%rbx, %rax
	sarq	$5, %rax
	leaq	(%rdx,%rax,4), %rdx
	movq	%rbx, %rax
	sarq	$63, %rax
	shrq	$59, %rax
	leaq	(%rbx,%rax), %rcx
	andl	$31, %ecx
	subq	%rax, %rcx
	js	.L2
	movl	$1, %eax
	sall	%cl, %eax
	movl	(%rdx), %ecx
	testl	%ecx, %eax
	je	.L3
.L1:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	addq	$32, %rcx
	movl	$1, %eax
	sall	%cl, %eax
	movl	-4(%rdx), %ecx
	testl	%ecx, %eax
	jne	.L1
	subq	$4, %rdx
.L3:
	orl	%ecx, %eax
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%eax, (%rdx)
	movl	%r9d, %edx
	call	_ZNSolsEi
	movl	$1, %r8d
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%rdi,%rax,8), %rax
	movq	(%rax), %rbx
	movq	8(%rax), %rbp
	cmpq	%rbx, %rbp
	je	.L1
.L5:
	movl	(%rbx), %ecx
	movq	%rsi, %r8
	movq	%rdi, %rdx
	addq	$4, %rbx
	call	_Z3DFSiPSt6vectorIiSaIiEERS_IbSaIbEE
	cmpq	%rbx, %rbp
	jne	.L5
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "vector::_M_realloc_append\0"
	.section	.text$_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRiEEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRiEEEvDpOT_
	.def	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRiEEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRiEEEvDpOT_
_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRiEEEvDpOT_:
.LFB11843:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rcx), %r12
	movq	8(%rcx), %rbp
	subq	%r12, %rbp
	movq	%rbp, %rax
	movq	%rdx, %r13
	sarq	$2, %rax
	movq	%rcx, %rdi
	movabsq	$2305843009213693951, %rdx
	cmpq	%rdx, %rax
	je	.L23
	testq	%rax, %rax
	movl	$1, %edx
	cmovne	%rax, %rdx
	addq	%rdx, %rax
	jc	.L14
	movabsq	$2305843009213693951, %rdx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	leaq	0(,%rax,4), %rbx
.L15:
	movq	%rbx, %rcx
	call	_Znwy
	movq	%rax, %rsi
	movl	0(%r13), %eax
	leaq	4(%rsi,%rbp), %r13
	movl	%eax, (%rsi,%rbp)
	testq	%rbp, %rbp
	jg	.L24
	testq	%r12, %r12
	jne	.L25
.L18:
	movq	%rsi, (%rdi)
	addq	%rbx, %rsi
	movq	%r13, 8(%rdi)
	movq	%rsi, 16(%rdi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	movq	%r12, %rdx
	movq	%rbp, %r8
	movq	%rsi, %rcx
	call	memcpy
	movq	16(%rdi), %rdx
	subq	%r12, %rdx
.L17:
	movq	%r12, %rcx
	call	_ZdlPvy
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L25:
	movq	16(%rdi), %rdx
	subq	%r12, %rdx
	jmp	.L17
.L14:
	movabsq	$9223372036854775804, %rbx
	jmp	.L15
.L23:
	leaq	.LC1(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
	nop
	.seh_endproc
	.text
	.p2align 4
	.globl	_Z7AddEdgePSt6vectorIiSaIiEEii
	.def	_Z7AddEdgePSt6vectorIiSaIiEEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7AddEdgePSt6vectorIiSaIiEEii
_Z7AddEdgePSt6vectorIiSaIiEEii:
.LFB10636:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movslq	%edx, %rax
	movq	%rcx, %rsi
	movl	%edx, 72(%rsp)
	movl	%r8d, %ebx
	movq	%rax, %rdi
	leaq	(%rax,%rax,2), %rax
	movl	%r8d, 80(%rsp)
	leaq	(%rcx,%rax,8), %rcx
	movq	8(%rcx), %rax
	cmpq	16(%rcx), %rax
	je	.L27
	movl	%r8d, (%rax)
	addq	$4, %rax
	movq	%rax, 8(%rcx)
.L28:
	movslq	%ebx, %r8
	leaq	(%r8,%r8,2), %rax
	leaq	(%rsi,%rax,8), %rcx
	movq	8(%rcx), %rax
	cmpq	16(%rcx), %rax
	je	.L29
	movl	%edi, (%rax)
	addq	$4, %rax
	movq	%rax, 8(%rcx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	leaq	80(%rsp), %rdx
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRiEEEvDpOT_
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L29:
	leaq	72(%rsp), %rdx
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRiEEEvDpOT_
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.section	.text$_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	.def	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv:
.LFB12175:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L31
	movq	32(%rbx), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movl	$0, 24(%rbx)
	movq	$0, 32(%rbx)
.L31:
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB10638:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	call	__main
	movq	.refptr._ZSt3cin(%rip), %rcx
	leaq	-60(%rbp), %rdx
.LEHB0:
	call	_ZNSirsERi
.LEHE0:
	movl	-60(%rbp), %ecx
	leal	1(%rcx), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,2), %rbx
	salq	$3, %rbx
	leaq	15(%rbx), %rax
	andq	$-16, %rax
	call	___chkstk_ms
	pxor	%xmm0, %xmm0
	subq	%rax, %rsp
	leaq	32(%rsp), %r13
	movq	%r13, %rdx
	addq	%r13, %rbx
	testl	%ecx, %ecx
	js	.L73
	.p2align 5
	.p2align 4
	.p2align 3
.L40:
	movq	$0, 16(%rdx)
	addq	$24, %rdx
	movups	%xmm0, -24(%rdx)
	cmpq	%rdx, %rbx
	jne	.L40
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)
	movq	%rax, -40(%rbp)
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
.L38:
	leaq	31(%rsi), %rdi
	shrq	$5, %rdi
	salq	$2, %rdi
	movq	%rdi, %rcx
.LEHB1:
	call	_Znwy
.LEHE1:
	movq	%rax, %rcx
	leaq	(%rax,%rdi), %rax
	xorl	%r8d, %r8d
	movq	%rax, -16(%rbp)
	movq	%rsi, %rax
	movl	%r8d, -40(%rbp)
	cqto
	movl	$32, %r8d
	idivq	%r8
	movq	%rcx, -48(%rbp)
	leaq	(%rcx,%rax,4), %rax
	testq	%rdx, %rdx
	js	.L74
.L42:
	movl	%edx, -24(%rbp)
	movq	%rdi, %r8
	xorl	%edx, %edx
	movl	$1, %edi
	movq	%rax, -32(%rbp)
	leaq	-56(%rbp), %r14
	leaq	-48(%rbp), %r12
	call	memset
	movl	-60(%rbp), %edx
	leaq	-52(%rbp), %r15
	testl	%edx, %edx
	jle	.L39
	.p2align 4
	.p2align 3
.L43:
	movq	.refptr._ZSt3cin(%rip), %rcx
	movq	%r14, %rdx
	movq	%r12, %rsi
.LEHB2:
	call	_ZNSirsERi
	movq	%rax, %rcx
	movq	%r15, %rdx
	call	_ZNSirsERi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %edx
	movq	%r13, %rcx
	call	_Z7AddEdgePSt6vectorIiSaIiEEii
	addl	$1, %edi
	cmpl	%edi, -60(%rbp)
	jge	.L43
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L73:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	testq	%rsi, %rsi
	jne	.L38
.L39:
	leaq	-48(%rbp), %rsi
	movq	%r13, %rdx
	movl	$1, %ecx
	movq	%rsi, %r8
	call	_Z3DFSiPSt6vectorIiSaIiEERS_IbSaIbEE
.LEHE2:
	movq	%rsi, %rcx
	call	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
.L72:
	cmpq	%rbx, %r13
	je	.L59
.L75:
	movq	-24(%rbx), %rcx
	subq	$24, %rbx
	testq	%rcx, %rcx
	je	.L72
	movq	16(%rbx), %rdx
	subq	%rcx, %rdx
	call	_ZdlPvy
	cmpq	%rbx, %r13
	jne	.L75
.L59:
	xorl	%eax, %eax
	leaq	8(%rbp), %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.L74:
	addq	$32, %rdx
	subq	$4, %rax
	jmp	.L42
.L56:
	leaq	-48(%rbp), %rcx
	movq	%rax, %rsi
	call	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
.L53:
	cmpq	%r13, %rbx
	jne	.L76
	movq	%rsi, %rcx
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L55:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	call	_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	movq	%rdi, %rsi
	jmp	.L53
.L76:
	movq	-24(%rbx), %rcx
	movq	-8(%rbx), %rdx
	subq	$24, %rbx
	subq	%rcx, %rdx
	testq	%rcx, %rcx
	je	.L53
	call	_ZdlPvy
	jmp	.L53
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA10638:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10638-.LLSDACSB10638
.LLSDACSB10638:
	.uleb128 .LEHB0-.LFB10638
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB10638
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L56-.LFB10638
	.uleb128 0
	.uleb128 .LEHB2-.LFB10638
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L55-.LFB10638
	.uleb128 0
	.uleb128 .LEHB3-.LFB10638
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE10638:
	.section	.text.startup,"x"
	.seh_endproc
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
