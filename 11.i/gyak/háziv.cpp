#include <stdio.h>
#include <stdlib.h>
#include <string.h>


void replace(char * s, char * s1, char * s2) {
    char * p; int l=strlen(s2);
    while ((p=strstr(s,s1))) {
        *p=0;
        p+=l;
        strcat(s,s2);
        strcat(s,p);
    }
}    

int main(void) {    
    char *s=(char *)"adat.dat";
    replace (s, ".", "");  
    printf("Az eredeti string \"adat.dat\"\nA modositott: ");
    printf("%s", s);
    return EXIT_SUCCESS;    
}
