{
  open Parser
}

let space = [' ' '\t' '\n' '\r']

let digit = ['0'-'9']

let alpha = ['A'-'Z' 'a'-'z' '_']

let alnum = digit | alpha | '\''

rule token = parse
| [ ' ' '\t' '\n' ] { token lexbuf }
| digit+
    { let str = Lexing.lexeme lexbuf in INT (int_of_string str) }
| '+' { PLUS }
| '-' { MINUS }
| '*' { MUL }
| '/' { DIV }
| eof { EOF }
