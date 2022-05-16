#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/vfs.h>
#include<string.h>
#include <fcntl.h>

#define GENERAL_DIR "./pi"
#define PROC_DIR "/proc"
#define BUFF_SIZE 128

int main(){
	struct statfs file_sys_info ;
	char fname[BUFF_SIZE] = {0,};
	strcpy(fname,GENERAL_DIR);
	statfs(fname,&file_sys_info);
	printf("statfs under general => %s\n",GENERAL_DIR);
	
	strcpy(fname,PROC_DIR);
	statfs(fname,&file_sys_info);
	printf("statfs under proc => %s\n",fname);
	
	return 0;

}
