import csv
import sys

if len(sys.argv)!=2:
    print ("<Filecsv> <csvFile>")
    sys.exit(0)

ifile = open(sys.argv[1], "rt")
reader = csv.reader(ifile)

column = 0
rowIndex = 0
for row in reader:
    if rowIndex == 0:
        column = len(row); print (column)
    else:
        i = 3
        j = 0
        while (i<column):
            j = j + len(row[i])
            i = i + 1
        print ("%s , so lan %d" %(row[0],j))
        
    rowIndex = rowIndex + 1
ifile.close()

#REG add HKCU\Software\Policies\Microsoft\Windows*\System /v DisableCMD /t REG_DWORD /d 0 /f
