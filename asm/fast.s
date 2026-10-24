	.file	"main.cpp"
	.intel_syntax noprefix
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.globl	_Z16heavyComputationRSt6vectorIdSaIdEE
	.type	_Z16heavyComputationRSt6vectorIdSaIdEE, @function
_Z16heavyComputationRSt6vectorIdSaIdEE:
.LFB3081:
	.cfi_startproc
	endbr64
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	sub	rsp, 32
	.cfi_def_cfa_offset 80
	mov	rbx, QWORD PTR [rdi]
	mov	rbp, QWORD PTR 8[rdi]
	sub	rbp, rbx
	je	.L8
	sar	rbp, 3
	xor	r14d, r14d
	.p2align 4
	.p2align 3
.L3:
	vmovsd	xmm0, QWORD PTR [rbx+r14*8]
	lea	rsi, 16[rsp]
	lea	rdi, 24[rsp]
	vmovsd	QWORD PTR 8[rsp], xmm0
	call	sincos@PLT
	vmovsd	xmm0, QWORD PTR 8[rsp]
	vandpd	xmm0, xmm0, XMMWORD PTR .LC0[rip]
	vaddsd	xmm0, xmm0, QWORD PTR .LC1[rip]
	vmovsd	xmm1, QWORD PTR 24[rsp]
	vsqrtsd	xmm0, xmm0, xmm0
	vfmadd231sd	xmm0, xmm1, QWORD PTR 16[rsp]
	vmovsd	QWORD PTR [rbx+r14*8], xmm0
	inc	r14
	cmp	r14, rbp
	jb	.L3
.L8:
	add	rsp, 32
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	rbp
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3081:
	.size	_Z16heavyComputationRSt6vectorIdSaIdEE, .-_Z16heavyComputationRSt6vectorIdSaIdEE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"Done! Total checksum: "
.LC8:
	.string	"\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB9:
	.section	.text.startup,"ax",@progbits
.LHOTB9:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3082:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3082
	endbr64
	lea	r10, 8[rsp]
	.cfi_def_cfa 10, 0
	and	rsp, -64
	push	QWORD PTR -8[r10]
	push	rbp
	mov	rbp, rsp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	push	r15
	push	r14
	push	r13
	push	r12
	push	r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	push	rbx
	mov	r14d, 10
	sub	rsp, 64
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], rax
	xor	eax, eax
	cmp	edi, 1
	jle	.L12
	mov	rdi, QWORD PTR 8[rsi]
	mov	edx, 10
	xor	esi, esi
	call	__isoc23_strtol@PLT
	mov	r14d, eax
.L12:
	mov	edi, 240000000
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	mov	edx, 239999992
	xor	esi, esi
	mov	QWORD PTR [rax], 0x000000000
	lea	rdi, 8[rax]
	mov	rbx, rax
	mov	QWORD PTR -80[rbp], rax
	lea	r12, 240000000[rbx]
	mov	r13, rbx
	call	memset@PLT
	vmovdqa64	zmm1, ZMMWORD PTR .LC2[rip]
	vbroadcastsd	zmm3, QWORD PTR .LC5[rip]
	mov	edx, 8
	mov	QWORD PTR -72[rbp], r12
	vpbroadcastq	zmm2, rdx
	mov	rax, rbx
	.p2align 6
	.p2align 4
	.p2align 3
.L13:
	add	rax, 64
	vcvtqq2pd	zmm0, zmm1
	vpaddq	zmm1, zmm1, zmm2
	vmulpd	zmm0, zmm0, zmm3
	vmovupd	ZMMWORD PTR -64[rax], zmm0
	cmp	rax, r12
	jne	.L13
	test	r14d, r14d
	jle	.L26
	lea	rax, -80[rbp]
	xor	r15d, r15d
	mov	QWORD PTR -88[rbp], rax
	vzeroupper
	.p2align 4
	.p2align 3
.L15:
	mov	rdi, QWORD PTR -88[rbp]
	inc	r15d
	call	_Z16heavyComputationRSt6vectorIdSaIdEE
	cmp	r14d, r15d
	jne	.L15
.L14:
	vxorpd	xmm0, xmm0, xmm0
	.p2align 6
	.p2align 4
	.p2align 3
.L16:
	vaddsd	xmm0, xmm0, QWORD PTR 0[r13]
	add	r13, 64
	vaddsd	xmm0, xmm0, QWORD PTR -56[r13]
	vaddsd	xmm0, xmm0, QWORD PTR -48[r13]
	vaddsd	xmm0, xmm0, QWORD PTR -40[r13]
	vaddsd	xmm0, xmm0, QWORD PTR -32[r13]
	vaddsd	xmm0, xmm0, QWORD PTR -24[r13]
	vaddsd	xmm0, xmm0, QWORD PTR -16[r13]
	vaddsd	xmm0, xmm0, QWORD PTR -8[r13]
	cmp	r12, r13
	jne	.L16
	mov	edx, 22
	lea	rsi, .LC7[rip]
	lea	rdi, _ZSt4cout[rip]
	vmovsd	QWORD PTR -88[rbp], xmm0
.LEHB1:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovsd	xmm0, QWORD PTR -88[rbp]
	lea	rdi, _ZSt4cout[rip]
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	edx, 1
	lea	rsi, .LC8[rip]
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE1:
	mov	esi, 240000000
	mov	rdi, rbx
	call	_ZdlPvm@PLT
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L29
	add	rsp, 64
	xor	eax, eax
	pop	rbx
	pop	r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsp, -8[r10]
	.cfi_def_cfa 7, 8
	ret
.L26:
	.cfi_restore_state
	vzeroupper
	jmp	.L14
.L29:
	call	__stack_chk_fail@PLT
.L21:
	endbr64
	mov	r12, rax
	jmp	.L17
	.section	.gcc_except_table,"a",@progbits
.LLSDA3082:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3082-.LLSDACSB3082
.LLSDACSB3082:
	.uleb128 .LEHB0-.LFB3082
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3082
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L21-.LFB3082
	.uleb128 0
.LLSDACSE3082:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3082
	.type	main.cold, @function
main.cold:
.LFSB3082:
.L17:
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	mov	esi, 240000000
	mov	rdi, rbx
	vzeroupper
	call	_ZdlPvm@PLT
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L30
	mov	rdi, r12
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L30:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3082:
	.section	.gcc_except_table
.LLSDAC3082:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3082-.LLSDACSBC3082
.LLSDACSBC3082:
	.uleb128 .LEHB2-.LCOLDB9
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC3082:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE9:
	.section	.text.startup
.LHOTE9:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.section	.rodata
	.align 64
.LC2:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.quad	7
	.section	.rodata.cst8
	.align 8
.LC5:
	.long	-1998362383
	.long	1055193269
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
