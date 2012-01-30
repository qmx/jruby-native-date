package me.qmx.jruby.ext.date.lexer;

import me.qmx.jruby.ext.date.lexer.tokens.Begin;
import me.qmx.jruby.ext.date.lexer.tokens.YearWithCentury;
import org.junit.Test;

import java.io.IOException;
import java.io.StringReader;

import static org.fest.assertions.Assertions.assertThat;

public class DateFormatLexerTest {

    @Test
    public void basicLexerOperations() throws IOException {
        final DateFormatLexer lexer = new DateFormatLexer(new StringReader("%Y"));
        assertThat(lexer.yylex()).isInstanceOf(Begin.class);
        assertThat(lexer.yylex()).isInstanceOf(YearWithCentury.class);
    }

}
