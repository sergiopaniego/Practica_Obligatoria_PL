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

{Constint}	{System.out.println("constint");return new java_cup.runtime.Symbol(sym.constint , yyline, yycolumn);}
{Constfloat}	{System.out.println("constfloat");return new java_cup.runtime.Symbol(sym.constfloat , yyline, yycolumn);}
{Constlit}	{System.out.println("constlit");return new java_cup.runtime.Symbol(sym.constint , yyline, yycolumn);}

"(" {System.out.println("left_parenthesis");return new java_cup.runtime.Symbol(sym.left_parenthesis , yyline, yycolumn);}
")" {System.out.println("right_par");return new java_cup.runtime.Symbol(sym.right_parenthesis , yyline, yycolumn);}
"{" {System.out.println("left_bracket");return new java_cup.runtime.Symbol(sym.left_bracket , yyline, yycolumn);}
"}" {System.out.println("right_bracket");return new java_cup.runtime.Symbol(sym.right_bracket , yyline, yycolumn);}
";" {System.out.println("semicolon");return new java_cup.runtime.Symbol(sym.semicolon , yyline, yycolumn);}
"=" {System.out.println("equal");return new java_cup.runtime.Symbol(sym.equal , yyline, yycolumn);}
"," {System.out.println("comma");return new java_cup.runtime.Symbol(sym.comma , yyline, yycolumn);}
"void" {System.out.println("void");return new java_cup.runtime.Symbol(sym.void_token , yyline, yycolumn);}
"int" {System.out.println("int");return new java_cup.runtime.Symbol(sym.int_token , yyline, yycolumn);}
"float" {System.out.println("float");return new java_cup.runtime.Symbol(sym.float_token , yyline, yycolumn);}
"+" {System.out.println("addition_sign");return new java_cup.runtime.Symbol(sym.addition_sign , yyline, yycolumn);}
"-" {System.out.println("substraction_sign");return new java_cup.runtime.Symbol(sym.substraction_sign , yyline, yycolumn);}
"*" {System.out.println("multiplication_sign");return new java_cup.runtime.Symbol(sym.multiplication_sign, yyline, yycolumn);}
"/" {System.out.println("slash");return new java_cup.runtime.Symbol(sym.slash , yyline, yycolumn);}
"%" {System.out.println("percent");return new java_cup.runtime.Symbol(sym.percent , yyline, yycolumn);}
"return" {System.out.println("return");return new java_cup.runtime.Symbol(sym.return_token , yyline, yycolumn);}
"if" {System.out.println("if");return new java_cup.runtime.Symbol(sym.if_token , yyline, yycolumn);}
"else" {System.out.println("else");return new java_cup.runtime.Symbol(sym.else_token , yyline, yycolumn);}
"while" {System.out.println("while");return new java_cup.runtime.Symbol(sym.while_token , yyline, yycolumn);}
"then" {System.out.println("then");return new java_cup.runtime.Symbol(sym.then_token , yyline, yycolumn);}
"for" {System.out.println("for");return new java_cup.runtime.Symbol(sym.for_token , yyline, yycolumn);}
"do" {System.out.println("do");return new java_cup.runtime.Symbol(sym.do_token , yyline, yycolumn);}
"until" {System.out.println("until");return new java_cup.runtime.Symbol(sym.until_token , yyline, yycolumn);}
"==" {System.out.println("double_equal");return new java_cup.runtime.Symbol(sym.double_equal , yyline, yycolumn);}
">=" {System.out.println("more_than_equal_to");return new java_cup.runtime.Symbol(sym.more_than_equal_to , yyline, yycolumn);}
"<=" {System.out.println("less_than_equal_to");return new java_cup.runtime.Symbol(sym.less_than_equal_to , yyline, yycolumn);}
"<" {System.out.println("less_than");return new java_cup.runtime.Symbol(sym.less_than , yyline, yycolumn);}
">" {System.out.println("more_than");return new java_cup.runtime.Symbol(sym.more_than, yyline, yycolumn);}
"and" {System.out.println("and");return new java_cup.runtime.Symbol(sym.and, yyline, yycolumn);}
"or" {System.out.println("or");return new java_cup.runtime.Symbol(sym.or, yyline, yycolumn);}
"not" {System.out.println("not");return new java_cup.runtime.Symbol(sym.not, yyline, yycolumn);}
"struct" {System.out.println("struct");return new java_cup.runtime.Symbol(sym.struct, yyline, yycolumn);}
"." {System.out.println("dot");return new java_cup.runtime.Symbol(sym.dot, yyline, yycolumn);}
"[" {System.out.println("left_squarebracket");return new java_cup.runtime.Symbol(sym.left_squarebracket ,  yyline, yycolumn);}
"]" {System.out.println("right_squarebracket");return new java_cup.runtime.Symbol(sym.right_squarebracket ,  yyline, yycolumn);}
{Identifier}	{System.out.println("ident");return new java_cup.runtime.Symbol(sym.ident , yyline, yycolumn);}

//Error detection
"*/" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Start part of comment missing.\\");}
"0x" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Hexadecimal number not completed.\\");}
{HexIntError} {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" More than one addition sign added.\\");}
{HexRealError} {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" More than one dot added.\\");}
"\\" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Starting of comment symbol not matching.\\");}
"*\\" {System.out.println("\\Error in line:"+yyline+" Column: "+ yycolumn +". "+ yytext()+" Incorrect finish comment sign.\\");}

/*errorfallback*/
[^] | \n {;}