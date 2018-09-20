%{
// Flex handles ambiguity by matching longest string;
// in case of tie, it matches the first one.

#include <iostream>
#include <string>
std::string text="";
void print(){std::cout<<text << std::endl;
text="";}
%}

blank       [ ]
%%
"/-\\"      { text += "a";}
"|3"        {text += "b";}
"{"         { text += "c";}
"|}"        { text += "d";}
"'&,"         { text += "e";}
"|#"        { text += "f";}
"[+"        { text += "g";}
"{=}"       { text += "h";}
"|"         { text += "i";}
"_}"        { text += "j";}
"|{"        { text += "k";}
"]["        { text += "l";}
"][\\\\//][" { text += "m";}
"][\\\\]["    { text += "n";}
"{}"        { text += "o";}
"|D"        { text += "p";}
"(,)"       { text += "q";}
"|2"        { text += "r";}
"$"         { text += "s";}
"'|'"       { text += "t";}
"{_}"       { text += "u";}
"~\\/~"       { text += "v";}
"\\X/"     { text += "w";}
"}{"        { text += "x";}
"'/"        { text += "y";}
"7_"        { text += "z";}
"."         { text += ".";}
","         { text += ",";}
";"         { text += ";";}
"!"         { text += "!";}
"D"         { text += "0";}
"L"         { text += "1";}
"Z"         { text += "2";}
"E"         { text += "3";}
"A"         { text += "4";}
"S"         { text += "5";}
"G"         { text += "6";}
"T"         { text += "7";}
"X"         { text += "8";}
"g"         { text += "9";}
{blank}     { text += " ";}               
.             {}
"\n"          {print();}
%%
int yywrap() { return 1; }
