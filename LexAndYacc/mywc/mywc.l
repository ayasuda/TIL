%option noyywrap
%{
int num_lines=0, num_words = 0, num_chars = 0;
%}

%%

\n  { ++num_lines; ++num_chars; }
[a-zA-Z]* ++num_words;
.   ++num_chars;

%%

int main (void) {
  yylex();
  printf("# of lines = %d, # of words = %d # of chars = %d\n", num_lines, num_words, num_chars);
}
