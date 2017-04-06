import java_cup.runtime.*;
%%

%class AnalizadorLexico
%line
%column
%cup
%unicode


Letter = [A-Za-z]
Symbol = [A-Za-z0-9]|"$"|"_"
Identifier = ({Letter}|"$")({Symbol})*
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
Constlit = "'"([^\n]|"\\'"|[^'])+"'"


%%



"//".* {System.out.println("comment");}
"/*"[^"*/"]*"*/" {System.out.println("comment");}

{Constint}	{System.out.println("constint");return new java_cup.runtime.Symbol(sym.constint , yytext());}
{Constfloat}	{System.out.println("constfloat");return new java_cup.runtime.Symbol(sym.constfloat , yytext());}
{Constlit}	{System.out.println("constlit");return new java_cup.runtime.Symbol(sym.constint , yytext());}

"(" {System.out.println("left_parenthesis");return new java_cup.runtime.Symbol(sym.left_parenthesis , yytext());}
")" {System.out.println("right_par");return new java_cup.runtime.Symbol(sym.right_parenthesis , yytext());}
"{" {System.out.println("left_bracket");return new java_cup.runtime.Symbol(sym.left_bracket , yytext());}
"}" {System.out.println("right_bracket");return new java_cup.runtime.Symbol(sym.right_bracket , yytext());}
";" {System.out.println("semicolon");return new java_cup.runtime.Symbol(sym.semicolon , yytext());}
"=" {System.out.println("equal");return new java_cup.runtime.Symbol(sym.equal , yytext());}
"," {System.out.println("comma");return new java_cup.runtime.Symbol(sym.comma , yytext());}
"void" {System.out.println("void");return new java_cup.runtime.Symbol(sym.void_token , yytext());}
"int" {System.out.println("int");return new java_cup.runtime.Symbol(sym.int_token , yytext());}
"float" {System.out.println("float");return new java_cup.runtime.Symbol(sym.float_token , yytext());}
"+" {System.out.println("addition_sign");return new java_cup.runtime.Symbol(sym.addition_sign , yytext());}
"-" {System.out.println("substraction_sign");return new java_cup.runtime.Symbol(sym.substraction_sign , yytext());}
"*" {System.out.println("multiplication_sign");return new java_cup.runtime.Symbol(sym.multiplication_sign , yytext());}
"/" {System.out.println("slash");return new java_cup.runtime.Symbol(sym.slash , yytext());}
"%" {System.out.println("percent");return new java_cup.runtime.Symbol(sym.percent , yytext());}
"return" {System.out.println("return");return new java_cup.runtime.Symbol(sym.return_token , yytext());}
"if" {System.out.println("if");return new java_cup.runtime.Symbol(sym.if_token , yytext());}
"else" {System.out.println("else");return new java_cup.runtime.Symbol(sym.else_token , yytext());}
"while" {System.out.println("while");return new java_cup.runtime.Symbol(sym.while_token , yytext());}
"then" {System.out.println("then");return new java_cup.runtime.Symbol(sym.then_token , yytext());}
"for" {System.out.println("for");return new java_cup.runtime.Symbol(sym.for_token , yytext());}
"do" {System.out.println("do");return new java_cup.runtime.Symbol(sym.do_token , yytext());}
"until" {System.out.println("until");return new java_cup.runtime.Symbol(sym.until_token , yytext());}
"==" {System.out.println("double_equal");return new java_cup.runtime.Symbol(sym.double_equal , yytext());}
">=" {System.out.println("more_than_equal_to");return new java_cup.runtime.Symbol(sym.more_than_equal_to , yytext());}
"<=" {System.out.println("less_than_equal_to");return new java_cup.runtime.Symbol(sym.less_than_equal_to , yytext());}
"<" {System.out.println("less_than");return new java_cup.runtime.Symbol(sym.less_than , yytext());}
">" {System.out.println("more_than");return new java_cup.runtime.Symbol(sym.more_than, yytext());}
"and" {System.out.println("and");return new java_cup.runtime.Symbol(sym.and, yytext());}
"or" {System.out.println("or");return new java_cup.runtime.Symbol(sym.or, yytext());}
"not" {System.out.println("not");return new java_cup.runtime.Symbol(sym.not, yytext());}
"struct" {System.out.println("struct");return new java_cup.runtime.Symbol(sym.struct, yytext());}
"." {System.out.println("dot");return new java_cup.runtime.Symbol(sym.dot, yytext());}
{Identifier}	{System.out.println("ident");return new java_cup.runtime.Symbol(sym.ident , yytext());}

//Error detection
"*/" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Start part of comment missing.\\");}
"0x" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Hexadecimal number not completed.\\");}
{HexIntError} {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" More than one addition sign added.\\");}
{HexRealError} {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" More than one dot added.\\");}
"\\" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Starting of comment symbol not matching.\\");}
"*\\" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Incorrect finish comment sign.\\");}

/*errorfallback*/
[^] | \n {;}