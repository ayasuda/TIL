%{
#include <stdio.h>
int yyerror(const char *s);
%}

%token NUMBER

%%

PROGRAM : ;

%%

int main(void)
{
  yyparse();
  printf("Hello, YACC.\n");
}

int yywrap()
{
  return 1;
}

int yyerror(const char *s) { return 0; }
