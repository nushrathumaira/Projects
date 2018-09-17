%{
// Flex handles ambiguity by matching longest string;
// in case of tie, it matches the first one.

#include <iostream>
#include <string>
std::string text="";
void print(){std::cout<<text << std::endl;
text="";}
%}
letter      [a-zA-Z]

%%
"/-\\"      { text += "A";}
.             {}
"\n"          {print();}
%%
int yywrap() { return 1; }
