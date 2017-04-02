  import java_cup.runtime.Symbol;
%%

%class AnalizadorLexico
%line
%column
%cup
%unicode


Letter = [A-Za-z]
Symbol = [A-Za-z0-9]|"$"|"_"
Identifier = ({Letter}|"$"){Symbol}*
Number = [0-9]
Sign = "+"|"-"
Integer = {Sign}*{Number}+
Real = {Sign}*{Number}+"."{Number}+
OctalNumber = [0-7]
OctalInteger = {OctalNumber}+
OctalReal = {OctalNumber}+"."{OctalNumber}+
HexDigit = [A-Fa-f0-9]
HexInt = "0x"{Sign}*{HexDigit}+
HexReal = {HexInt}"."{HexDigit}+
Constint = {HexInt} | "0"{Sign}*{OctalInteger} | {Integer}
Constfloat = {HexReal} | "0"{Sign}*{OctalReal} | {Real}

%state CONSTLIT,CONSTLIT2,ZERO,HEX

%%


<YYINITIAL>"'"	   {yybegin(CONSTLIT);}
<CONSTLIT>"\\'"	   {yybegin(CONSTLIT2);}
<CONSTLIT>"'"	     {return java_cup.runtime.Symbol(sym.constlit , yytext());yybegin(YYINITIAL);}
<CONSTLIT2>"\\'"	 {yybegin(CONSTLIT);}


<YYINITIAL>"//".* {return java_cup.runtime.Symbol(sym.comment, yytext());}
<YYINITIAL>"/*"[^"*/"]*"*/" {return java_cup.runtime.Symbol(sym.comment , yytext());}

<YYINITIAL>{Constint}	{return java_cup.runtime.Symbol(sym.constint , yytext());}
<YYINITIAL>{Constfloat}	{return java_cup.runtime.Symbol(sym.constfloat , yytext());}

<YYINITIAL>"(" {return java_cup.runtime.Symbol(sym.left_parenthesis , yytext());}
<YYINITIAL>")" {return java_cup.runtime.Symbol(sym.right_parenthesis , yytext());}
<YYINITIAL>"{" {return java_cup.runtime.Symbol(sym.left_bracket , yytext());}
<YYINITIAL>"}" {return java_cup.runtime.Symbol(sym.right_bracket , yytext());}
<YYINITIAL>"," {return java_cup.runtime.Symbol(sym.comma , yytext());}
<YYINITIAL>"void" {return java_cup.runtime.Symbol(sym.void , yytext());;}
<YYINITIAL>"int" {return java_cup.runtime.Symbol(sym.int , yytext());}
<YYINITIAL>"float" {return java_cup.runtime.Symbol(sym.float , yytext());}
<YYINITIAL>"+" {return java_cup.runtime.Symbol(sym.addition_sign , yytext());}
<YYINITIAL>"-" {return java_cup.runtime.Symbol(sym.substraction_sign , yytext());}
<YYINITIAL>"*" {return java_cup.runtime.Symbol(sym.multiplication_sign , yytext());}
<YYINITIAL>"/" {return java_cup.runtime.Symbol(sym.slash , yytext());}
<YYINITIAL>"%" {return java_cup.runtime.Symbol(sym.percent , yytext());}
<YYINITIAL>"if"	{return java_cup.runtime.Symbol(sym.if , yytext());}
<YYINITIAL>"then" {return java_cup.runtime.Symbol(sym.then , yytext());}
<YYINITIAL>"else" {return java_cup.runtime.Symbol(sym.else , yytext());}
<YYINITIAL>"for" {return java_cup.runtime.Symbol(sym.for , yytext());}
<YYINITIAL>"=" {return java_cup.runtime.Symbol(sym.equal , yytext());}
<YYINITIAL>"while" {return java_cup.runtime.Symbol(sym.while , yytext());}
<YYINITIAL>"do" {return java_cup.runtime.Symbol(sym.do , yytext());}
<YYINITIAL>"until" {return java_cup.runtime.Symbol(sym.until , yytext());}
<YYINITIAL>"==" {return java_cup.runtime.Symbol(sym.double_equal , yytext());}
<YYINITIAL>"<" {return java_cup.runtime.Symbol(sym.less_than , yytext());}
<YYINITIAL>">" {return java_cup.runtime.Symbol(sym.more_than , yytext());}
<YYINITIAL>">=" {return java_cup.runtime.Symbol(sym.less_than_equal_to , yytext());}
<YYINITIAL>"<=" {return java_cup.runtime.Symbol(sym.more_than_equa_lto , yytext());}
<YYINITIAL>"or" {return java_cup.runtime.Symbol(sym.or , yytext());}
<YYINITIAL>"and" {return java_cup.runtime.Symbol(sym.and , yytext());}
<YYINITIAL>"not" {return java_cup.runtime.Symbol(sym.not , yytext());}
<YYINITIAL>"struct" {return java_cup.runtime.Symbol(sym.struct , yytext());}
<YYINITIAL>"." {return java_cup.runtime.Symbol(sym.dot , yytext());}
<YYINITIAL>";" {return java_cup.runtime.Symbol(sym.semicolon , yytext());}
<YYINITIAL>"[" {return java_cup.runtime.Symbol(sym.left_squarebracket , yytext());}
<YYINITIAL>"]" {return java_cup.runtime.Symbol(sym.right_squarebracket , yytext());}
<YYINITIAL>":" {return java_cup.runtime.Symbol(sym.colon , yytext());}
<YYINITIAL>"return" {return java_cup.runtime.Symbol(sym.return , yytext());}
<YYINITIAL>{Identifier}	{return java_cup.runtime.Symbol(sym.iden , yytext());}


//Error detection
<YYINITIAL>"*/" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Start part of comment missing.\\");}
