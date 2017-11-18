
{
open Parser
}

let space = [' ' '\t' '\n' '\r']
let digit = ['0'-'9']
let alpha = ['A'-'Z' 'a'-'z' '_']
let alnum = digit | alpha | '\''

rule token = parse
  | digit+
  { let str = Lexing.lexeme lexbuf in INT (int_of_string str) }
  | eof { EOF }
