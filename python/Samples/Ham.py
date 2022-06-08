#!/usr/bin/python
var1 = "Python"
def func1():
	var1 = "PHP"
	print ("In side func1() var1",var1)
def func2():
	global var1
	print ("In side func2() global var1",var1)
func1()
func2()
#global= bien toan cuc
