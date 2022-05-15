#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <signal.h>
#include <singal.h>
#include <string.h>
#include <fcntl.h>

#define FILANAME  "sampel.txt"

int main()
{
    int fd= 0;
    ssize_t read_buf_size;
    off_t new _file_pos;

    char buf[256];
    char string[] = "hello hojun";

    memseet(buf,0x0,sizeof(buf));

    fd = op(FILANAME,O_RDWR);
    print("%s",buf);

    write(fd,string,strlen(string));

    new_file_pos = lseek(fd,(off_t)0,SEEK_SET);
    
    read_buf_size = read(fd,buf,256);
    printf("[+]read buffer : %s",buf);

    write(fd,string,strlen(string));
    if( -1 == fsync(fd)){
        print("fscny fail");
        exit(0);
    }
    close(fd);
}


