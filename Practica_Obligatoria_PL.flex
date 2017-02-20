
%%

%{

%}

%init{

%init}

%eof{

%eof}


%standalone 
PROGRAM = PART PROGRAM | PART
PART = TYPE RESTPART
RESTPART = ident "(" LISTPARAM ")" BLQ
BLQ = "{" SENTLIST "}"
LISTPARAM = LISTPARAM "," TYPE ident | TYPE ident
TYPE = "void" | "int" | "float"

SENTLIST = SENTLIST SENT | SENT
SENT = TYPE LID ";" | ident "=" EXP ";" | ident "(" LEXP ")" ";" | "return" EXP ";"
LID = ident | LID "," ident
LEXP = EXP | LEXP "," EXP
EXP = EXP OP EXP | FACTOR
OP = "+" | "-" | "*" | "/" | "%"
FACTOR = ident "(" LEXP ")" | "(" EXP ")" | ident | constint | constfloat
 | constlit

Letter= [A-Za-z]
Symbol=[A-Za-z0-9]|"$"|"_"
iden=({Letter}|"$"){Symbol}+


%%

{iden}+	{System.out.println("Iden");}
