#!/bin/bash

name=$2
name_complet=${name%*.asm}

function Compiling() {
	nasm -f elf32 $name
	ld -m elf_i386 -o $name_complet $name_complet.o
	./$name_complet
}

function Remove() {
	rm $name_complet $name_complet.o
}

h="-help"
no_return="-n"
retur="-r"

if [ "$1" == "$h" ]
then
	echo "-n -> when not return"
	echo "-r -> when return"
	echo "-help -> helper"	

else if [ "$1" == "$retur" ]
then
	Compiling
	echo $?
	Remove

else if [ "$1" == "$no_return" ]
then
	Compiling
	Remove

else if [ "$1" == "" ]
then
	echo "Err0r: use $ compiler.sh -help"
fi
fi
fi
fi

