#include"fun3.h"
#include <zlib.h>
void fun3()
{
	gzFile * readfile;
	
	readfile = gzopen("temp.gz", "w");
	
	gzclose(readfile);
	
	printf ("hello world3 \n");
}
