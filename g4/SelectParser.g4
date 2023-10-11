parser grammar SelectParser;

options { tokenVocab=SelectLexer;}

query: selectStatement SEMI;

selectStatement: SELECT selectClause FROM fromClause (WHERE whereClause)?
                ;

selectClause:
      STAR                                   #selectAll
    | column (COMMA column)*                 #selectColumns
    ;


fromClause: table (COMMA table)*;

whereClause: condition (AND condition | OR condition)*;

column: ID (DOT ID)?;

table: ID (DOT ID)?;

condition:
      column EQUALS value                   #conditionValue
    | column (AND column | OR column)*      #conditionColumn;

value:
      STRING                                #stringValue
    | NUMBER                                #numberValue
    | ID                                    #idValue;
