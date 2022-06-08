#!/usr/bin/python
class Employee:
		'Common base class for all employees'
		name=""
		salary=0
		empCount =0
		def _init_(self, name, salary):
			self.name = name
			self.salary = salary
			Employee.empCount += 1
		
		def displayCount(self):
			print ("Total Employee %d" %Employee.empCount)
			
		def displayEmployee(self):
			print ("Name: ", self.name, ", Salary: ", self.salary)
emp = Employee()
emp._init_("Toto", 2000)
emp.displayCount()
emp.displayEmployee()
