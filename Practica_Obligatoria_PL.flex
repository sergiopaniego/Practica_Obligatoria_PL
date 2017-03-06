
%%

%{

%}

%init{

%init}

%eof{

%eof}


%standalone
<<<<<<< HEAD
=======
%class PracticaObligatoria

>>>>>>> refs/remotes/origin/master

hexDigit=[A-Fa-f0-9]
hexInt={sign}"0x"{hexDigit}+
hexReal={hexInt}"."{hexDigit}+
hex={hexReal}|{hexInt}
Letter= [A-Za-z]
Symbol=[A-Za-z0-9]|"$"|"_"
<<<<<<< HEAD
iden=({Letter}|"$"){Symbol}*
sign=("+"|"-")
dec={integer}|{real}
integer={sign}*[0-9]+
real={sign}{integer}+"."{integer}+
octDigit=[0-7]
octInt={sign}"0"{octDigit}+
octReal={octInt}"."{octDigit}+
oct={octInt}|{octReal}

%%
{oct}+ {System.out.println("octal");}
{hex}+ {System.out.println("hexadecimal");}
{dec}+ {System.out.println("decimal");}
=======
Identifier=({Letter}|"$"){Symbol}*
Number=[0-9]
Sign="+"|"-"
Integer={Sign}*{Number}+
Real={Sign}*{Number}+"."{Number}+
OctalNumber=[0-7]
OctalInteger={OctalNumber}+
OctalReal={OctalNumber}+"."{OctalNumber}+
Octal={Sign}*"0"({OctalInteger}|{OctalReal})
HexaDecimal={Sign}*"0"[0-7]+


%%

{Identifier}	{System.out.println("Iden");}
{Octal}	{System.out.println("Octal");}
{Integer}	{System.out.println("Integer");}
{Real}	{System.out.println("Real");}
>>>>>>> refs/remotes/origin/master
