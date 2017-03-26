%%

%{

%}

%init{

%init}

%eof{

%eof}



%class Lexico
%line
%column
%standalone


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
Octal = "0"{Sign}*({OctalInteger}|{OctalReal})
HexDigit = [A-Fa-f0-9]
HexInt = "0x"{Sign}*{HexDigit}+
HexReal = {HexInt}"."{HexDigit}+
Hex = {HexReal}|{HexInt}
Constint = {Integer} | "0"{Sign}*{OctalInteger} | "0x"{Sign}*{HexInt}
Constfloat = {Real} | "0"{Sign}*{OctalReal} | "0x"{Sign}*{HexReal}
Constlit= "'"(.|"\\'"|[^'])+"'"
%state CONSTLIT,CONSTLIT2

%%


<YYINITIAL>"'"	   {System.out.println("reconocido1");yybegin(CONSTLIT);}
<CONSTLIT>"\\'"	   {System.out.println("reconocido3");yybegin(CONSTLIT2);}
<CONSTLIT>"'"	     {System.out.println("reconocido2");yybegin(YYINITIAL);}
<CONSTLIT2>"\\'"	 {System.out.println("reconocido4");yybegin(CONSTLIT);}

"//".*[^.] {System.out.println("<Commen,"+yytext()+">");}
"/*"[^"*/"]*"*/" {System.out.println("<Commen,"+yytext()+">");}
{Identifier}	{System.out.println("<Iden,"+yytext()+">");}
{Constint}	{System.out.println("<Constint,"+yytext()+">");}
{Constfloat}	{System.out.println("<Constfloat,"+yytext()+">");}


"(" {System.out.println("<LeftParenthesis,"+yytext()+">");}
")" {System.out.println("<RightParenthesis,"+yytext()+">");}
"{" {System.out.println("<LeftBracket,"+yytext()+">");}
"}" {System.out.println("<RightBracket,"+yytext()+">");}
"," {System.out.println("<Comma,"+yytext()+">");}
"void" {System.out.println("<Void,"+yytext()+">");}
"int" {System.out.println("<Int,"+yytext()+">");}
"float" {System.out.println("<Float,"+yytext()+">");}
"+" {System.out.println("<AdditionSign,"+yytext()+">");}
"-" {System.out.println("<SubstractionSign,"+yytext()+">");}
"*" {System.out.println("<MultiplicationSign,"+yytext()+">");}
"/" {System.out.println("<Slash,"+yytext()+">");}
"%" {System.out.println("<Percent,"+yytext()+">");}
"if" {System.out.println("<If,"+yytext()+">");}
"then" {System.out.println("<Then,"+yytext()+">");}
"else" {System.out.println("<Else,"+yytext()+">");}
"for" {System.out.println("<For,"+yytext()+">");}
"=" {System.out.println("<Equal,"+yytext()+">");}
"while" {System.out.println("<While,"+yytext()+">");}
"do" {System.out.println("<Do,"+yytext()+">");}
"until" {System.out.println("<Until,"+yytext()+">");}
"==" {System.out.println("<DoubleEqual,"+yytext()+">");}
"<" {System.out.println("<LessThan,"+yytext()+">");}
">" {System.out.println("<MoreThan,"+yytext()+">");}
">=" {System.out.println("<LessThanEqualTo,"+yytext()+">");}
"<=" {System.out.println("<MoreThanEqualTo,"+yytext()+">");}
"or" {System.out.println("<Or,"+yytext()+">");}
"and" {System.out.println("<And,"+yytext()+">");}
"not" {System.out.println("<Not,"+yytext()+">");}
"struct" {System.out.println("<Struct,"+yytext()+">");}
"." {System.out.println("<Dot,"+yytext()+">");}
";" {System.out.println("<Semicolon,"+yytext()+">");}
"[" {System.out.println("<LeftSquareBracket,"+yytext()+">");}
"]" {System.out.println("<RightSquareBracket,"+yytext()+">");}
