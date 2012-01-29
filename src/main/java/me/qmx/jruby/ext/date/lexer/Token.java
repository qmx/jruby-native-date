package me.qmx.jruby.ext.date.lexer;

public class Token {

    private final String value;

    public Token(String value) {
        this.value = value;
    }

    @Override
    public String toString() {
        return "Token{" +
                "value='" + value + '\'' +
                '}';
    }
}
