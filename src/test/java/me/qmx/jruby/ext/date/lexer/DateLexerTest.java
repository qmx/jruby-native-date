package me.qmx.jruby.ext.date.lexer;

import me.qmx.jruby.ext.date.lexer.tokens.Begin;
import me.qmx.jruby.ext.date.lexer.tokens.YearWithCentury;
import org.junit.Test;

import java.io.ByteArrayInputStream;
import java.io.IOException;

import static org.fest.assertions.Assertions.assertThat;

public class DateLexerTest {

    @Test
    public void basicLexerOperations() throws IOException {
        final DateLexer lexer = new DateLexer(string2inputStream("%Y"));
        assertThat(lexer.yylex()).isInstanceOf(Begin.class);
        assertThat(lexer.yylex()).isInstanceOf(YearWithCentury.class);
    }

    private ByteArrayInputStream string2inputStream(String s) {
        return new ByteArrayInputStream(s.getBytes());
    }

}
