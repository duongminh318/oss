#Bai 28:
#!/bin/bash
search_dir=$1
echo "File >= 500kb:"
for entry in "$search_dir"/*
do
	# Get file size
	FILESIZE=$(stat -c%s "$entry")
	MAXSIZE=500000
	if  (( FILESIZE >= MAXSIZE ));
	then
 		echo "$entry"
 	fi
 	
done
echo "File khong co quyen ghi:"
find . -name "*.*" -type f ! -writable

