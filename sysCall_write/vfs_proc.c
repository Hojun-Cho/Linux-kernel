#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <signal.h>
#include <string.h>
#include <fcntl.h>

#define FILANAME  "./sample123.txt"

int main()
{
    int fd= 0;
    ssize_t read_buf_size;
    off_t new_file_pos;

    char buf[256];
    char string[] = "hello hojun";

    memset(buf,0x0,sizeof(buf));

    fd = open(FILANAME,O_RDWR);
    printf("%s\n",buf);

    write(fd,string,1);

    new_file_pos = lseek(fd,(off_t)0,SEEK_SET);
    
    read_buf_size = read(fd,buf,256);
    printf("[+]read buffer : %s\n",buf);

    write(fd,string,strlen(string));
    if( -1 == fsync(fd)){
        printf("fscny fail\n");
        exit(0);
    }
    close(fd);
}


