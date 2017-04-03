  import java_cup.runtime.*;
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
HexInt1 = "0x"{Sign}{HexDigit}+
HexInt2 = "0x"{HexDigit}+
HexReal = ({HexInt1}|{HexInt2})"."{HexDigit}+
HexIntError = "0x"{Sign}{Sign}+{HexDigit}+
HexRealError = ({HexInt1}|{HexInt2})".""."+{HexDigit}+
Constint = {HexInt1} | "0"{Sign}*{OctalInteger} | {Integer} | {HexInt2}
Constfloat = {HexReal} | "0"{Sign}*{OctalReal} | {Real}

%state CONSTLIT,CONSTLIT2,ZERO,HEX

%%


<YYINITIAL>"'"	   {yybegin(CONSTLIT);}
<CONSTLIT>"\\'"	   {yybegin(CONSTLIT2);}
<CONSTLIT>"'"	     {return new java_cup.runtime.Symbol(sym.constlit , yytext());yybegin(YYINITIAL);}
<CONSTLIT2>"\\'"	 {yybegin(CONSTLIT);}


<YYINITIAL>"//".* {return new java_cup.runtime.Symbol(sym.comment, yytext());}
<YYINITIAL>"/*"[^"*/"]*"*/" {return new java_cup.runtime.Symbol(sym.comment , yytext());}

<YYINITIAL>{Constint}	{return new java_cup.runtime.Symbol(sym.constint , yytext());}
<YYINITIAL>{Constfloat}	{return new java_cup.runtime.Symbol(sym.constfloat , yytext());}

<YYINITIAL>"(" { return new java_cup.runtime.Symbol(sym.left_parenthesis , yytext());}
<YYINITIAL>")" {return new java_cup.runtime.Symbol(sym.right_parenthesis , yytext());}
<YYINITIAL>"{" {return new java_cup.runtime.Symbol(sym.left_bracket , yytext());}
<YYINITIAL>"}" {return new java_cup.runtime.Symbol(sym.right_bracket , yytext());}
<YYINITIAL>"," {return new java_cup.runtime.Symbol(sym.comma , yytext());}
<YYINITIAL>"void" {return new java_cup.runtime.Symbol(sym.void_token , yytext());;}
<YYINITIAL>"int" {return new java_cup.runtime.Symbol(sym.int_token , yytext());}
<YYINITIAL>"float" {return new java_cup.runtime.Symbol(sym.float_token , yytext());}
<YYINITIAL>"+" {return new java_cup.runtime.Symbol(sym.addition_sign , yytext());}
<YYINITIAL>"-" {return new java_cup.runtime.Symbol(sym.substraction_sign , yytext());}
<YYINITIAL>"*" {return new java_cup.runtime.Symbol(sym.multiplication_sign , yytext());}
<YYINITIAL>"/" {return new java_cup.runtime.Symbol(sym.slash , yytext());}
<YYINITIAL>"%" {return new java_cup.runtime.Symbol(sym.percent , yytext());}
<YYINITIAL>"if"	{return new java_cup.runtime.Symbol(sym.if_token , yytext());}
<YYINITIAL>"then" {return new java_cup.runtime.Symbol(sym.then_token , yytext());}
<YYINITIAL>"else" {return new java_cup.runtime.Symbol(sym.else_token , yytext());}
<YYINITIAL>"for" {return new java_cup.runtime.Symbol(sym.for_token , yytext());}
<YYINITIAL>"=" {return new java_cup.runtime.Symbol(sym.equal , yytext());}
<YYINITIAL>"while" {return new java_cup.runtime.Symbol(sym.while_token , yytext());}
<YYINITIAL>"do" {return new java_cup.runtime.Symbol(sym.do_token , yytext());}
<YYINITIAL>"until" {return new java_cup.runtime.Symbol(sym.until , yytext());}
<YYINITIAL>"==" {return new java_cup.runtime.Symbol(sym.double_equal , yytext());}
<YYINITIAL>"<" {return new java_cup.runtime.Symbol(sym.less_than , yytext());}
<YYINITIAL>">" {return new java_cup.runtime.Symbol(sym.more_than , yytext());}
<YYINITIAL>">=" {return new java_cup.runtime.Symbol(sym.less_than_equal_to , yytext());}
<YYINITIAL>"<=" {return new java_cup.runtime.Symbol(sym.more_than_equa_lto , yytext());}
<YYINITIAL>"or" {return new java_cup.runtime.Symbol(sym.or , yytext());}
<YYINITIAL>"and" {return new java_cup.runtime.Symbol(sym.and , yytext());}
<YYINITIAL>"not" {return new java_cup.runtime.Symbol(sym.not , yytext());}
<YYINITIAL>"struct" {return new java_cup.runtime.Symbol(sym.struct , yytext());}
<YYINITIAL>"." {return new java_cup.runtime.Symbol(sym.dot , yytext());}
<YYINITIAL>";" {return new java_cup.runtime.Symbol(sym.semicolon , yytext());}
<YYINITIAL>"[" {return new java_cup.runtime.Symbol(sym.left_squarebracket , yytext());}
<YYINITIAL>"]" {return new java_cup.runtime.Symbol(sym.right_squarebracket , yytext());}
<YYINITIAL>":" {return new java_cup.runtime.Symbol(sym.colon , yytext());}
<YYINITIAL>"return" {return new java_cup.runtime.Symbol(sym.return_token , yytext());}
<YYINITIAL>{Identifier}	{return new java_cup.runtime.Symbol(sym.iden , yytext());}


//Error detection
<YYINITIAL>"*/" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Start part of comment missing.\\");}
<YYINITIAL>"0x" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Hexadecimal number not completed.\\");}
<YYINITIAL>{HexIntError} {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" More than one addition sign added.\\");}
<YYINITIAL>{HexRealError} {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" More than one dot added.\\");}
<YYINITIAL>"\\" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Starting of comment symbol not matching.\\");}
<YYINITIAL>"*\\" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Incorrect finish comment sign.\\");}
