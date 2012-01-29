package me.qmx.jruby.ext.date.lexer;

%%
%class DateLexer
%unicode
%line
%column
%type Token
%state STRING

NO_PAD_NUM = -
USE_SPACES = _
USE_ZEROS = 0
UPCASE = \^
CHANGE_CASE = #
USE_COLONS = :

FLAGS = (NO_PAD_NUM | USE_SPACES | USE_ZEROS | UPCASE | CHANGE_CASE | USE_COLONS)*

%%

{FLAGS} { return new Token(yytext()); }