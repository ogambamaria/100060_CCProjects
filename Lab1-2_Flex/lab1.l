%{
#undef yywrap
#define yywrap() 1	
void display(char[],int);
int flag;
%}
 
%%
 
[a-zA-Z]+ {
 int flag=1;
 display(yytext,flag);
 return;
}
 
[0-9]+ {
 int flag=0;
 display(yytext,flag);
}
 
.+ {
 int flag=-1;
 display(yytext,flag);
}
 
%%

void display(char a[],int flag){
 if(flag==1)
 printf("The input string: %s  is a word ",a);
 if(flag==0)
 printf("The input string: %s  is a number ",a);
 if(flag==-1)
 printf("The input string: %s  contains both number and word ",a);
 
} 
 
main(){
 printf("Enter a string:");
 yylex();
}