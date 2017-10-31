%{
#include <stdio.h>
int yyerror(const char *s);
int yylex(void);
%}

%%

PROGRAM : ;

%%

int main(void)
{
  yyparse();
  printf("Hello, YACC.\n");
}

int yyerror(const char *s) { return 0; }
int yylex(void) { return 0; }
