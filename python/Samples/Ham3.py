#!/usr/bin/python
def gcd(m,n):
	while ((m != n)):
		if ( m > n):
			m = m -n
		else:
			n = n -m
	return m
def coPrime(a,b):
	if (gcd(a,b) != 1):
		return
	else:
		print ("%d and %d are co-prime" %(a,b))
x, y = 2, 5
coPrime(x,y)	
