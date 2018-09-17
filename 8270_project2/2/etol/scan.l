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
"a"             {text+= "4"; }
"b"             {text+= "8"; }
"c"             {text+= "<"; }
"d"             {text+= "[)"; }
"e"             {text+= "3"; }
"f"             {text+= "|\""; }
"g"             {text+= "6"; }
"h"             {text+= "|-|"; }
"i"             {text+= "1"; }
"j"             {text+= "_|"; }
"k"             {text+= "|<"; }
"l"             {text+= "l"; }
"m"             {text+= "^^"; }
"n"             {text+= "/V"; }
"o"             {text+= "()"; }
"p"             {text+= "/o"; }
"q"             {text+= "9"; }
"r"             {text+= ".-"; }
"s"             {text+= "5"; }
"t"             {text+= "7"; }
"u"             {text+= "(_)"; }
"v"             {text+= "\\/"; }
"w"             {text+= "vv"; }
"x"             {text+= "%"; }
"y"             {text+= "'/"; }
"z"             {text+= "2"; }
"A"             {text+= "/-\\";}
"B"             {text+="|3"; }
"C"             {text+= "{"; }
"D"             {text+= "|}"; }
"E"             {text+= "&"; }
"F"             {text+= "|#"; }
"G"             {text+= "[+"; }
"H"             {text+= "{=}"; }
"I"             {text+= "!"; }
"J"             {text += "_}";}
"K"             {text += "|{";}
"L"             {text += "][";}
"M"             {text += "][\\\\//][";}
"N"             { text += "][\\\\][";}
"O"             { text += "{}";}
"P"             { text += "|D";}
"Q"             { text += "(,)";}
"R"             { text += "|2";}
"S"             { text += "$";}
"T"             { text += "'|'";}
"U"             { text += "{_}";}
"V"             { text += "\\/";}
"W"             { text += "\\X/";}
"X"             { text += "}{";}
"Y"             { text += "'/";}
"Z"              { text += "7_";}
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
