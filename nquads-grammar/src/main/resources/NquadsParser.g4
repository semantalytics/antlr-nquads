parser grammar NquadsParser;

/* [1] */
nquadsDoc
    : statement? (EOL statement)* EOL?
    ;

/* [2] */
statement
    : subject predicate object graphLabel? DOT
    ;

/* [3] */
subject
    : IRIREF
    | BLANK_NODE_LABEL
    ;

/* [4] */
predicate
    : IRIREF
    ;

/* [5] */
object
    : IRIREF
    | BLANK_NODE_LABEL
    | literal
    ;

/* [6] */
graphLabel
    : IRIREF
    | BLANK_NODE_LABEL
    ;

/* [7] */
literal
    : STRING_LITERAL_QUOTE (REFERENCE IRIREF | LANGTAG)?
    ;
