#!/bin/bash
#let命令的语法格式是：let 赋值表达式
#功能等同于(())

#监控web服务状态，如果访问两次均失败，则报警(let 应用案例)
CheckUrl(){ #定义函数，
	timeout=5	#定义wget访问的超时时间，超时就退出
	fails=0     #
	success=0
	while true
	do
		wget --timeout=$timeout --tries=1 http://baiu.com -q -O /dev/null
		#使用wget测试访问百度网站
		if [ $? -ne 0 ]
		then
			let fails=fails+1

		else
			let success+=1
		fi

		if [ $success -ge 1 ] #如果成功的次数大于等于1
		then
			echo success
			exit 0
		fi

		if [ $fails -ge 2 ]
		then
			Critical="sys is down."
			echo $Critical
			exit 2
		fi
	done
}
CheckUrl

