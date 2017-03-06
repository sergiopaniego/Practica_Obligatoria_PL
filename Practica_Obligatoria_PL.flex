
%%

%{

%}

%init{

%init}

%eof{

%eof}


%standalone

hexDigit=[A-Fa-f0-9]
hexInt={sign}"0x"{hexDigit}+
hexReal={hexInt}"."{hexDigit}+
hex={hexReal}|{hexInt}
Letter= [A-Za-z]
Symbol=[A-Za-z0-9]|"$"|"_"
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
