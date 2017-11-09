%{
#include <stdio.h>
#include <stdlib.h>
%}
%token <double> NUMBER
%token ADD SUB

%%

line
  : expression RETURN_T
  ;
expression
  : term
  | expression ADD term
  | expression SUB term
  ;

term
  : NUMBER
  ;

%%
