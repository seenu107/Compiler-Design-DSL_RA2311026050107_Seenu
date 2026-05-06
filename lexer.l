%{
#include "parser.tab.h"
#include <stdio.h>
%}

%%
[0-9]+      { return NUMBER; }
[a-zA-Z]+   { return IDENTIFIER; }
"+"         { return PLUS; }
"-"         { return MINUS; }
"="         { return ASSIGN; }
";"         { return SEMICOLON; }
[ \t\n]     ;
.           { return yytext[0]; }
%%

int yywrap() {
    return 1;
}