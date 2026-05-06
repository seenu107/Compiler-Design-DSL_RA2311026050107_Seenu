%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();
%}

%token NUMBER IDENTIFIER PLUS MINUS ASSIGN SEMICOLON

%%

statement:
    IDENTIFIER ASSIGN expression SEMICOLON
    {
        printf("Valid Assignment Statement\n");
    }
;

expression:
    NUMBER
    | expression PLUS NUMBER
    | expression MINUS NUMBER
;

%%

void yyerror(const char *s) {
    printf("Syntax Error\n");
}

int main() {
    yyparse();
    return 0;
}