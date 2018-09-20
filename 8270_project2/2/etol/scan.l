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
[aA]             {text+= "/-\\";}
[bB]             {text+="|3"; }
[cC]             {text+= "{"; }
[dD]            {text+= "|}"; }
[eE]             {text+= "&"; }
[fF]             {text+= "|#"; }
[gG]             {text+= "[+"; }
[hH]             {text+= "{=}"; }
[iI]             {text+= "|"; }
[jJ]             {text += "_}";}
[kK]             {text += "|{";}
[lL]             {text += "][";}
[mM]             {text += "][\\\\//][";}
[nN]             { text += "][\\\\][";}
[oO]             { text += "{}";}
[pP]             { text += "|D";}
[qQ]             { text += "(,)";}
[rR]             { text += "|2";}
[sS]             { text += "$";}
[tT]             { text += "'|'";}
[uU]             { text += "{_}";}
[vV]             { text += "\\/";}
[wW]             { text += "\\X/";}
[xX]             { text += "}{";}
[yY]             { text += "'/";}
[zZ]              { text += "7_";}
"."              { text += ".";}
","              { text += ",";}
";"              { text += ";";}
"!"              { text += "!";}
"0"              { text += "D";}
"1"              { text += "L";}
"2"              { text += "Z";}
"3"              { text += "E";}
"4"              { text += "A";}
"5"               { text += "S";}
"6"               { text += "G";}
"7"               { text += "T";}
"8"              { text += "X";}
"9"              { text += "g";}
{blank}          { text += " ";}
.             {}
"\n"          {print();}
%%
int yywrap() { return 1; }
