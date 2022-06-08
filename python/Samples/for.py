#!/usr/bin/python
n = int(input ('n = '))
s = 0
for i in range(1, n+1):
	s = s + i
print ("s = 1 + 2 + ... \
	+ %d = %d" %(n,s))
