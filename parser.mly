%token <int> INT
%token EOF
%start main
%type <int> main
%%
main:
    expr EOF
  { $1 }
  ;

expr:
    INT
  { $1 }
  ;
