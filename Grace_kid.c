/*
Comment One
*/
#include <stdio.h>
#define FILENAME "Grace_kid.c"
#define STRING "/*%cComment One%c*/%c#include <stdio.h>%c#define FILENAME %cGrace_kid.c%c%c#define STRING %c%s%c%c#define EXEC int main(){FILE*fp=fopen(FILENAME,%cw%c);fprintf(fp,STRING,10,10,10,10,34,34,10,34,STRING,34,10,34,34,10,10);fclose(fp);return 0;}%cEXEC%c"
#define EXEC int main(){FILE*fp=fopen(FILENAME,"w");fprintf(fp,STRING,10,10,10,10,34,34,10,34,STRING,34,10,34,34,10,10);fclose(fp);return 0;}
EXEC
