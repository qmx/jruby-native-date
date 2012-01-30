package me.qmx.jruby.ext.date.lexer;

import me.qmx.jruby.ext.date.lexer.tokens.*;
%%
%public
%class DateFormatLexer
%unicode
%line
%column
%type Token
%state STRING

FMT_START = %
YEAR_WITH_CENTURY = Y

NO_PAD_NUM = -
USE_SPACES = _
USE_ZEROS = 0
UPCASE = \^
CHANGE_CASE = #
USE_COLONS = :

FLAGS = (NO_PAD_NUM | USE_SPACES | USE_ZEROS | UPCASE | CHANGE_CASE | USE_COLONS)*



FORMAT_STRING = %+DIRECTIVE

%%

{FMT_START} { return new Begin(yytext()); }
{YEAR_WITH_CENTURY} { return new YearWithCentury(yytext()); }



