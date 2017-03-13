
%%

%{

%}

%init{

%init}

%eof{

%eof}


%standalone

%class PracticaObligatoria



Letter= [A-Za-z]
Symbol=[A-Za-z0-9]|"$"|"_"
Identifier=({Letter}|"$"){Symbol}*
Number=[0-9]
Sign="+"|"-"
Integer={Sign}*{Number}+
Real={Sign}*{Number}+"."{Number}+
OctalNumber=[0-7]
OctalInteger={OctalNumber}+
OctalReal={OctalNumber}+"."{OctalNumber}+
Octal="0"{Sign}*({OctalInteger}|{OctalReal})
HexDigit=[A-Fa-f0-9]
HexInt="0x"{Sign}*{HexDigit}+
HexReal={HexInt}"."{HexDigit}+
Hex={HexReal}|{HexInt}
%state CONSTLIT,CONSTLIT2

%%


<YYINITIAL>"'"	{System.out.println("reconocido1");yybegin(CONSTLIT);}
<CONSTLIT>"\'"	{System.out.println("reconocido3");yybegin(CONSTLIT2);}
<CONSTLIT>"'"	{System.out.println("reconocido2");yybegin(YYINITIAL);}
<CONSTLIT2>"\'"	{System.out.println("reconocido4");yybegin(CONSTLIT);}

<YYINITIAL>"//".*[^.] {System.out.println("comentary");}//habria que meter \n
<YYINITIAL>"/*"[^"*/"]*"*/" {System.out.println("comentary");}
<YYINITIAL>{Identifier}	{System.out.println("<Iden>");}
<YYINITIAL>{Octal}	{System.out.println("Octal");}
<YYINITIAL>{Integer}	{System.out.println("Integer");}
<YYINITIAL>{Real}	{System.out.println("Real");}
<YYINITIAL>{Hex}+ {System.out.println("hexadecimal");}
