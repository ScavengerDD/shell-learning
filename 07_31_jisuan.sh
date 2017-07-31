#!/bin/bash
print_usage()
{
	printf $"USAGE:$0 NUM1 {+|-|*|/} NUM2\n"
	exit 1
}

if [ $# -ne 3 ]
then
	echo "参数个数\n"
	print_usage
fi

firstnum=$1
secondnum=$3
op=$2

if [ -n "`echo $firstnum|sed 's/[0-9]//g'`" ]
then
	echo "firstnum\n"
	print_usage
fi

if [ "$op" != "+" ]&&[ "op" != "-" ]&&[ "op" != "*" ]&&[ "op" != "/" ]
then
	echo "op\n"
	print_usage
fi

if [ -n "`echo $secondnum|sed 's/[0-9]//g'`" ]
then
	print_usage
fi

result=$((${firstnum}${op}${secondnum}))

echo "${firstnum}${op}${secondnum}=$result"








