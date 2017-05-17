import java_cup.runtime.*;
%%

%class AnalizadorLexico
%line
%column
%cup
%unicode

%{
    StringBuffer string = new StringBuffer();
%}


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



"//".* {}
"/*"[^"*/"]*"*/" {}

{Constint}	{return new java_cup.runtime.Symbol(sym.constint , yyline, yycolumn);}
{Constfloat}	{return new java_cup.runtime.Symbol(sym.constfloat , yyline, yycolumn);}
{Constlit}	{return new java_cup.runtime.Symbol(sym.constint , yyline, yycolumn);}

"(" {return new java_cup.runtime.Symbol(sym.left_parenthesis , yyline, yycolumn);}
")" {return new java_cup.runtime.Symbol(sym.right_parenthesis , yyline, yycolumn);}
"{" {return new java_cup.runtime.Symbol(sym.left_bracket , yyline, yycolumn);}
"}" {return new java_cup.runtime.Symbol(sym.right_bracket , yyline, yycolumn);}
";" {return new java_cup.runtime.Symbol(sym.semicolon , yyline, yycolumn);}
"=" {return new java_cup.runtime.Symbol(sym.equal , yyline, yycolumn);}
"," {return new java_cup.runtime.Symbol(sym.comma , yyline, yycolumn);}
"void" {return new java_cup.runtime.Symbol(sym.void_token , yyline, yycolumn);}
"int" {return new java_cup.runtime.Symbol(sym.int_token , yyline, yycolumn);}
"float" {return new java_cup.runtime.Symbol(sym.float_token , yyline, yycolumn);}
"+" {return new java_cup.runtime.Symbol(sym.addition_sign , yyline, yycolumn);}
"-" {return new java_cup.runtime.Symbol(sym.substraction_sign , yyline, yycolumn);}
"*" {return new java_cup.runtime.Symbol(sym.multiplication_sign, yyline, yycolumn);}
"/" {return new java_cup.runtime.Symbol(sym.slash , yyline, yycolumn);}
"%" {return new java_cup.runtime.Symbol(sym.percent , yyline, yycolumn);}
"return" {return new java_cup.runtime.Symbol(sym.return_token , yyline, yycolumn);}
"if" {return new java_cup.runtime.Symbol(sym.if_token , yyline, yycolumn);}
"else" {return new java_cup.runtime.Symbol(sym.else_token , yyline, yycolumn);}
"while" {return new java_cup.runtime.Symbol(sym.while_token , yyline, yycolumn);}
"then" {return new java_cup.runtime.Symbol(sym.then_token , yyline, yycolumn);}
"for" {return new java_cup.runtime.Symbol(sym.for_token , yyline, yycolumn);}
"do" {return new java_cup.runtime.Symbol(sym.do_token , yyline, yycolumn);}
"until" {return new java_cup.runtime.Symbol(sym.until_token , yyline, yycolumn);}
"==" {return new java_cup.runtime.Symbol(sym.double_equal , yyline, yycolumn);}
">=" {return new java_cup.runtime.Symbol(sym.more_than_equal_to , yyline, yycolumn);}
"<=" {return new java_cup.runtime.Symbol(sym.less_than_equal_to , yyline, yycolumn);}
"<" {return new java_cup.runtime.Symbol(sym.less_than , yyline, yycolumn);}
">" {return new java_cup.runtime.Symbol(sym.more_than, yyline, yycolumn);}
"and" {return new java_cup.runtime.Symbol(sym.and, yyline, yycolumn);}
"or" {return new java_cup.runtime.Symbol(sym.or, yyline, yycolumn);}
"not" {return new java_cup.runtime.Symbol(sym.not, yyline, yycolumn);}
"struct" {return new java_cup.runtime.Symbol(sym.struct, yyline, yycolumn);}
"." {return new java_cup.runtime.Symbol(sym.dot, yyline, yycolumn);}
"[" {return new java_cup.runtime.Symbol(sym.left_squarebracket ,  yyline, yycolumn);}
"]" {return new java_cup.runtime.Symbol(sym.right_squarebracket ,  yyline, yycolumn);}
{Identifier}	{String yytext = yytext(); return new java_cup.runtime.Symbol(sym.ident , yyline, yycolumn,yytext);}

//Error detection
"*/" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Start part of comment missing.\\");}
"0x" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Hexadecimal number not completed.\\");}
{HexIntError} {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" More than one addition sign added.\\");}
{HexRealError} {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" More than one dot added.\\");}
"\\" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Starting of comment symbol not matching.\\");}
"*\\" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Incorrect finish comment sign.\\");}

/*errorfallback*/
[^] | \n {;}