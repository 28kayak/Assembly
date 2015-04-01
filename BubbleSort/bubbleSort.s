	.section	__TEXT,__text,regular,pure_instructions
	.globl	_sort
	.align	4, 0x90
_sort:                                  ## @sort
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	addq	$4, %rdi
	movl	$9, %r8d
	.align	4, 0x90
LBB0_1:                                 ## %.lr.ph
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	xorl	%ecx, %ecx
	movq	%rdi, %rdx
	.align	4, 0x90
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-4(%rdx), %esi
	movl	(%rdx), %eax
	cmpl	%eax, %esi
	jle	LBB0_3
## BB#6:                                ##   in Loop: Header=BB0_2 Depth=2
	movl	%eax, -4(%rdx)
	movl	%esi, (%rdx)
LBB0_3:                                 ## %.backedge
                                        ##   in Loop: Header=BB0_2 Depth=2
	addq	$4, %rdx
	incl	%ecx
	cmpl	%ecx, %r8d
	jne	LBB0_2
## BB#4:                                ## %._crit_edge
                                        ##   in Loop: Header=BB0_1 Depth=1
	decl	%r8d
	testl	%r8d, %r8d
	jg	LBB0_1
## BB#5:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
