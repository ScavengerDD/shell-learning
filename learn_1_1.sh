#!/bin/bash
#add,subtract,multiply add divide by lixiangdong
#<==定义一个函数
print_usage(){
	printf "Please enter an integer\n"
	exit 1 #<==返回值1退出脚本
}

read -p "Please input first number:" firstnum

if [ -n "`echo $firstnum | sed 's/[0-9]//g'`" ];then
	print_usage
fi

read -p "Please input the operators:" operators

if [ "${operators}" != "+" ]&&[ "${operators}" != "-" ]&&
	[ "${operators}" != "*" ]&&[ "${operators}" != "/" ];then
	echo "Please use {+|-|*|/}"
	exit 2
fi

read -p "Please input second number: " secondnum

if [ -n "`echo $secondnum|sed 's/[0-9]//g'`" ];then
	print_usage
fi
a=$((${firstnum}${operators}${secondnum}))

echo "${firstnum}${operators}${secondnum}=$a"








