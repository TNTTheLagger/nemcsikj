#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int Csonkit(char s[255], char karakter);

int main()
{
  char szoveg[255];
  char const KARAKTER = 'r';
  int i=0,honnan=0;

  printf("Kerek egy szot: "); gets(szoveg);
  printf("A(z) %c betu elol mindent ki fogok torolni!\n", KARAKTER);
  honnan = Csonkit(szoveg, KARAKTER);
  for(i=honnan;i<strlen(szoveg);i++)
  {
      printf("%c",szoveg[i]);
  }

  fflush(stdin); getchar();
  return 0;
}

int Csonkit(char s[255], char KARAKTER)

{
  int i=0,holvolt=0;
  for(i=0;i<strlen(s);i++)
  {
    if(s[i] == KARAKTER)
    {
      holvolt = i+1;
      break;
    }
  }
  return holvolt;
}
