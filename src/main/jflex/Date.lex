package me.qmx.jruby.ext.date.lexer;

%%
%class DateLexer
%unicode
%line
%column
%type Token

DecIntegerLiteral = 0 | [1-9][0-9]*

%%

[:digit:]+ {  }