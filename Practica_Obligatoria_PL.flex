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
HexDigit = [A-Fa-f0-9]
HexInt = "0x"{Sign}*{HexDigit}+
HexReal = {HexInt}"."{HexDigit}+
Constint = {HexInt} | "0"{Sign}*{OctalInteger} | {Integer}
Constfloat = {HexReal} | "0"{Sign}*{OctalReal} | {Real}

%state CONSTLIT,CONSTLIT2,ZERO,HEX

%%


<YYINITIAL>"'"	   {System.out.print("<Constlit,"+yytext());yybegin(CONSTLIT);}
<CONSTLIT>"\\'"	   {System.out.print(yytext());yybegin(CONSTLIT2);}
<CONSTLIT>"'"	     {System.out.println(yytext()+">");yybegin(YYINITIAL);}
<CONSTLIT2>"\\'"	 {System.out.print(yytext());yybegin(CONSTLIT);}


<YYINITIAL>"//".* {System.out.println("<Commen,"+yytext()+">");}
<YYINITIAL>"/*"[^"*/"]*"*/" {System.out.println("<Commen,"+yytext()+">");}

<YYINITIAL>{Constint}	{System.out.println("<Constint,"+yytext()+">");}
<YYINITIAL>{Constfloat}	{System.out.println("<Constfloat,"+yytext()+">");}

<YYINITIAL>"(" {System.out.println("<LeftParenthesis,"+yytext()+">");}
<YYINITIAL>")" {System.out.println("<RightParenthesis,"+yytext()+">");}
<YYINITIAL>"{" {System.out.println("<LeftBracket,"+yytext()+">");}
<YYINITIAL>"}" {System.out.println("<RightBracket,"+yytext()+">");}
<YYINITIAL>"," {System.out.println("<Comma,"+yytext()+">");}
<YYINITIAL>"void" {System.out.println("<Void,"+yytext()+">");}
<YYINITIAL>"int" {System.out.println("<Int,"+yytext()+">");}
<YYINITIAL>"float" {System.out.println("<Float,"+yytext()+">");}
<YYINITIAL>"+" {System.out.println("<AdditionSign,"+yytext()+">");}
<YYINITIAL>"-" {System.out.println("<SubstractionSign,"+yytext()+">");}
<YYINITIAL>"*" {System.out.println("<MultiplicationSign,"+yytext()+">");}
<YYINITIAL>"/" {System.out.println("<Slash,"+yytext()+">");}
<YYINITIAL>"%" {System.out.println("<Percent,"+yytext()+">");}
<YYINITIAL>"if" {System.out.println("<If,"+yytext()+">");}
<YYINITIAL>"then" {System.out.println("<Then,"+yytext()+">");}
<YYINITIAL>"else" {System.out.println("<Else,"+yytext()+">");}
<YYINITIAL>"for" {System.out.println("<For,"+yytext()+">");}
<YYINITIAL>"=" {System.out.println("<Equal,"+yytext()+">");}
<YYINITIAL>"while" {System.out.println("<While,"+yytext()+">");}
<YYINITIAL>"do" {System.out.println("<Do,"+yytext()+">");}
<YYINITIAL>"until" {System.out.println("<Until,"+yytext()+">");}
<YYINITIAL>"==" {System.out.println("<DoubleEqual,"+yytext()+">");}
<YYINITIAL>"<" {System.out.println("<LessThan,"+yytext()+">");}
<YYINITIAL>">" {System.out.println("<MoreThan,"+yytext()+">");}
<YYINITIAL>">=" {System.out.println("<LessThanEqualTo,"+yytext()+">");}
<YYINITIAL>"<=" {System.out.println("<MoreThanEqualTo,"+yytext()+">");}
<YYINITIAL>"or" {System.out.println("<Or,"+yytext()+">");}
<YYINITIAL>"and" {System.out.println("<And,"+yytext()+">");}
<YYINITIAL>"not" {System.out.println("<Not,"+yytext()+">");}
<YYINITIAL>"struct" {System.out.println("<Struct,"+yytext()+">");}
<YYINITIAL>"." {System.out.println("<Dot,"+yytext()+">");}
<YYINITIAL>";" {System.out.println("<Semicolon,"+yytext()+">");}
<YYINITIAL>"[" {System.out.println("<LeftSquareBracket,"+yytext()+">");}
<YYINITIAL>"]" {System.out.println("<RightSquareBracket,"+yytext()+">");}
<YYINITIAL>":" {System.out.println("<Colon,"+yytext()+">");}
<YYINITIAL>{Identifier}	{System.out.println("<Iden,"+yytext()+">");}
