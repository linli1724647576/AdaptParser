lexer grammar SelectLexer;

options {caseInsensitive = true; }

WS: [ \t\r\n]+ -> skip;
SEMI: ';';
COMMA: ',';
STAR: '*';
DOT: '.';
OPEN_PAR: '(';
CLOSE_PAR: ')';
SELECT: 'SELECT';
FROM: 'FROM';
WHERE: 'WHERE';
AND: 'AND';
OR: 'OR';
ID: [a-zA-Z_][a-zA-Z_0-9]*;
NUMBER: [0-9]+;
STRING: '\'' (~['])* '\'';
