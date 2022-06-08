def fibo (n):
	if n == 0:
		return 0
	elif n == 1:
		return 1
	else:
		return fibo(n-1) + fibo(n-2)
m = int(input("n = "))
d = fibo(m)
print ("so fibo cua %d la %d" %(m,d))
