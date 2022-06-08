import csv
import sys
import locale

if len(sys.argv)!=2:
	print ("<GenerateSQL> <csvFile>")
	sys.exit(0)

ifile = open(sys.argv[1], "rt")
reader = csv.reader(ifile)
 
rownum = 0
tableName =""
primaryField=""
primaryState=0
creatTable="CREATE TABLE"
dongNgoac=")"
moNgoac="("
ngoacPK=")WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]"
ngoacOn=")ON [PRIMARY]"
tab="	"
nullValue="NULL,"
const="CONSTRAINT"
PKConl="PRIMARY KEY CLUSTERED"
asc="ASC"
primarySt="YES"
for row in reader:
	if rownum == 0:
		tableName = row[0]
		primaryField = row[1];
		primarySt=row[5]
		print (creatTable, tableName, moNgoac)
	
		if row[5]=="YES":
			nullValue="NOT NULL,"
		else:
			nullValue="NULL,"
		if row[2]=="nvarchar":
			print (tab, row[1], row[2], moNgoac,row[3],dongNgoac, row[4], nullValue)
		elif row[2]=="varchar":
			print (tab, row[1], row[2], moNgoac,row[3],dongNgoac, row[4], nullValue)
		elif row[2]=="decimal":
			print (tab, row[1], row[2], moNgoac,row[3],",", row[4],dongNgoac, nullValue)
		else: 
			print (tab, row[1], row[2], row[3], row[4], nullValue)
		   
	else:
		if tableName != row[0]:
			# set primary
			PK="PR_"+tableName
			if primarySt=="YES":
				print (const, PK, PKConl)
				print (moNgoac)
				print (tab, primaryField, asc)
				print (ngoacPK)
				print (ngoacOn)
			else:
				print (")")
			
			# kiem tra bat dau bang moi
			tableName = row[0]
			primaryField = row[1];
			primarySt=row[5]
			print (creatTable, tableName, moNgoac)
			if row[5]=="YES":
				nullValue="NOT NULL,"
			else:
				nullValue="NULL,"
			if row[2]=="nvarchar":
				print (tab, row[1], row[2], moNgoac,row[3],dongNgoac, row[4], nullValue)
			elif row[2]=="varchar":
				print (tab, row[1], row[2], moNgoac,row[3],dongNgoac, row[4], nullValue)
			elif row[2]=="decimal":
				print (tab, row[1], row[2], moNgoac,row[3],",", row[4],dongNgoac, nullValue)
			else: 
				print (tab, row[1], row[2], row[3], row[4], nullValue)

		else:
			if row[5]=="YES":
				nullValue="NOT NULL,"
			else:
				nullValue="NULL,"
			if row[2]=="nvarchar":
				print (tab, row[1], row[2], moNgoac,row[3],dongNgoac, row[4], nullValue)
			elif row[2]=="varchar":
				print (tab, row[1], row[2], moNgoac,row[3],dongNgoac, row[4], nullValue)
			elif row[2]=="decimal":
				print (tab, row[1], row[2], moNgoac,row[3],",",row[4],dongNgoac, nullValue)
			else: 
				print (tab, row[1], row[2], row[3], row[4], nullValue)


	rownum = rownum + 1
# set primary
PK="PR_"+tableName
if primarySt=="YES":
	print (const, PK, PKConl)
	print (moNgoac)
	print (tab, primaryField, asc)
	print (ngoacPK)
	print (ngoacOn)
else:
	print (")") 
ifile.close()
