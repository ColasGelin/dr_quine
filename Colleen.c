/*
Comment one
*/
#include <stdio.h>
void print(char*s){printf(s,10,10,10,10,10,10,10,34,s,34,10,10,10);}
int main(){
/*Comment two*/
char*s="/*%cComment one%c*/%c#include <stdio.h>%cvoid print(char*s){printf(s,10,10,10,10,10,10,10,34,s,34,10,10,10);}%cint main(){%c/*Comment two*/%cchar*s=%c%s%c;%cprint(s);%c}%c";
print(s);
}
