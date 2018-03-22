package atividade1;

%%

/* Não altere as configurações a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class Minijava
%eofclose

LineTerminator = [\r\n] | \r\n
DoubleTabComment = "//" .* {LineTerminator}?
OpenCloseComment = "/*" [^] "*/"
Comment = {DoubleTabComment} | {OpenCloseComment}
Whitespace = [ \n\t\r\f] | {LineTerminator} | {Comment}
ReservedWord = "boolean" | "class" | "public" | "extends" | "static" | "void" | "main" | "String" | "int" | "while" | "if" | "else" | "return" | "length" | "true" | "false" | "this" | "new" | "System.out.printLn"
Operator = "&&" | "<" | "==" | "!=" | "+" | "-" | "*" | "!"
DelimitationPunctuation = [;.,=(){}\[\]]
Identifier = ([a-zA-Z] | [_]) [a-zA-Z0-9_]*
IntegerLiterals = [1-9][0-9]*

/* Insira as regras léxicas abaixo */

%%
    
/* Insira as regras léxicas no espaço acima */     
     
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
