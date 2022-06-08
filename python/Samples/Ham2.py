#!/usr/bin/python
import math
def addTwo(a, b):
	return a + b
def divide(a, b):
	return a/b, a%b
y = float(input('Enter x:'))
x = float(input('Enter y:'))
z = addTwo(x, y)
print (z)
p, q = divide(10, 2)
print (p, q)
