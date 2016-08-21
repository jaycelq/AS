# 
# Note: this example is written in GNU Assemlby syntx
#

.section .data

.section .text
.globl _start
.code16

_start:
	movb $'!', %al
	movb $0x0e, %ah
	movb $0x00, %bh
	movb $0x07, %bl

	int $0x10
	jmp .

	.org 0x01fe
	.byte 0x55
	.byte 0xaa
