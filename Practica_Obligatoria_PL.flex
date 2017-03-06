
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

%%

{Identifier}	{System.out.println(<Iden>);}
{Octal}	{System.out.println("Octal");}
{Integer}	{System.out.println("Integer");}
{Real}	{System.out.println("Real");}
{Hex}+ {System.out.println("hexadecimal");}
