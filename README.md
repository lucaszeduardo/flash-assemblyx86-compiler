# flash Assemblyx86 Compiler
Compilador rápido e prático de Assembly x86

# Using
chmod +x compiler.sh

$ ./compiler.sh -help

# Parameters
*-r -> when return

*Example:
section .text
global _start

_start:
mov ebx, 1
mov eax, 1
int 0x80*

-> *this code returns 1*

if you code not return, use *-n* !
