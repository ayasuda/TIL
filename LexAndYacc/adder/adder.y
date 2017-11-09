%{
#include <stdio.h>
int yylex(void);
int yyerror(const char *s);
%}

%token NUMBER

%%

PROGRAM : /* 空定義 */
        | PROGRAM LINE
        ;

LINE : '\n'
     | EXPRESSION '\n'
     ;

EXPRESSION : NUMBER
           | EXPRESSION '+' EXPRESSION { printf("sum!\n"); }
           ;

%%

int main(void)
{
  printf("hoge\n");
  return(yyparse());
}

int yylex(void)
{
  printf("_");
  return 0;
}

int yyerror(const char *s)
{
  return 0;
}
