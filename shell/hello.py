#!/usr/bin/python
'''
print ('Hello World')

print ('word')
print ("Day la 1 cau")
print ("""Doan van nay
... co nhieu dong """)


#Nhap ket qua
print("")
kq = input("Nhap ket qua(True/False): ")
if kq == "True" or kq == "true" or kq== "1":
	print ("Answer")
	print ("True")
elif kq == "false" or kq == "False" or kq=="0":
	print ("Answer")
	print ("False")
else:
	print("Khong phai true hoac false")


#Tinh tong
print("")
print("==Tinh tong==")
item_uno = input("Nhap so 1: ")
item_dos = input("Nhap so 2: ")
item_tres = input("Nhap so 3: ")
total = int(item_uno) + \
	int(item_dos) + \
	int(item_tres)
print("Total = "+ str(total) )


#In ngay trong tuan
print("")
print("==In ngay trong tuan==")
days = ['Thu 2', 'Thu 3', 'Thu 4', 'Thu 5', 'Thu 6','Thu 7', 'Chu Nhat']
ngay = int(input('Nhap so tu 2 toi 8: '))
while ngay > 1 and ngay < 9:
	if ngay == 2:
		print(days[0])
		ngay += 7
	else:
		print(days[ngay-2])
		ngay += 7

#Define
print("")
print("Test Define")
ten = input("Nhap ten: ")
def hi(ten):
	print("Hello " + ten)
hi(ten)

print("")
var1 = "Python"
def func1():
	var1 = "PHP"
	print ("In side func1() var1",var1)
def func2():
	global var1
	print ("In side func2() global var1",var1)
func1()
func2()

'''
#Cong 2 so
print("")

def addTwo(a,b):
	return a + b
def divide(a,b):
	return a/b, a%b
	
x = int(input("Nhap x: "))
y = int(input("Nhap y: "))

z = addTwo(x,y)
print ("Cong 2 so: " + str(z))
p, q = divide(x,y)
print ("Chia va chia lay so du: ",p, q)
