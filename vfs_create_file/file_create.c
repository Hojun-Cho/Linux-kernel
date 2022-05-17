#include <stdio.h>

void main()
{
	FILE *file;
	file = fopen("temp.txt","w+");

	if(file ==NULL) 
	{
		printf("파일을 생성할 수 없습니다\n");
	}
	else 
	{
		printf("파일을 생성했습니다\n");
		fclose(file);
	}

}
