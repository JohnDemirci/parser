#include "parser.h"

/**
* Name: Umit Demirci
* Lab: Lab 6 Parser
* Date: 10/15/19
**/

TOKEN *getNextToken(TOKEN **token)
{
    freeToken(token);
    return scannerAdHoc();
}

NODE *program()
{
    NODE *node = malloc(sizeof(NODE));
    node->type = PROGRAM_NODE;
    node->leftNode = statement();
    if (node->leftNode != NULL)
        node->rightNode = program();
    return node;
}

NODE *statement()
{
//   TODO: implement
    TOKEN *tok = getNextToken(NULL);
    if (tok == NULL) {
        return  NULL;
    }
    NODE *node = malloc(sizeof(NODE));

    node->type = STATEMENT_NODE;
    switch (tok->type) {
        case IDENT_TOKEN:
            node->leftNode = assignStmt(&tok);
            break;
        case PRINT_TOKEN:
            node->leftNode = printStmt(&tok);
            // do stuff
            break;
        case REPEAT_TOKEN:
            node->leftNode = repeatStmt(&tok);
            // do stuff
            break;
        default:
            error("invalid token at the start of the statement");
    }

return node;

}

void recursiveSemiColon (TOKEN **currToken) {

    if ((*currToken)->type == SEMICOLON_TOKEN) {
        *currToken = getNextToken(currToken);
        recursiveSemiColon(currToken);
    } else {
        ungetToken(currToken);
    }
}


NODE *assignStmt(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    node->type = ASSIGN_STMT_NODE;
    node->leftNode = id(currToken);
    // <id> = <exp>
    *currToken = getNextToken(currToken);
    int res = strcmp((*currToken)->strVal, "=");
    if (res == 0) {
        *currToken = getNextToken(currToken);
        node->rightNode = expr(currToken);
        *currToken = getNextToken(currToken);
        int semi = strcmp((*currToken)->strVal, ";" );
        if (semi != 0) {
            printf("something went wrong");
            // *currToken = getNextToken(currToken);
        }
        recursiveSemiColon(currToken);
    }




/*
 *
 * CREATE THE IDENT NODE FOR THE LEFT CHILD
 * GET THE NEXT TOKEN  MAKE SURE IT IS AN ASSIGNMENT TOKEN  ERROR OTHERWSE
 * CREATE THE XPRESSION NODE FOR THE RIGHT CHILD
 * GET THE NEX TOKEN ENSURE IT IS A SEMICOLON TOKEN ERROR
    */
    return node;
}

NODE *repeatStmt(TOKEN **currToken)
{
//   TODO: implement
    // <repeatStmt> ::= repeat ( <expr> ) <statement> ;
    NODE *node = malloc(sizeof(NODE));
    node->type = REPEAT_STMT_NODE;
    *currToken = getNextToken(currToken);
    // (
    *currToken = getNextToken(currToken);
    node->leftNode = expr(currToken); // calling expression for number 10
    *currToken = getNextToken(currToken);
    // *currToken = getNextToken(currToken); // )
    statement();
    return node;
    // TODO: on the input file repeat does not have ; however on the grammar we have it. also in the grammar we do not have
    //  ;; however, in the input file we do


}

NODE *printStmt(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    node->type = PRINT_STMT_NODE;
    *currToken = getNextToken(currToken);
    node->leftNode = expr(currToken);
    *currToken = getNextToken(currToken);
    recursiveSemiColon(currToken);
    return node;
}

NODE *expr(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    node->type = EXPR_NODE;
    node->leftNode = term(currToken);
    // calling the next token in expr ??
    // *currToken = getNextToken(currToken);

    *currToken = getNextToken(currToken);
    switch ((*currToken)->type) {
        case PLUS_TOKEN:
            // DO SOMETHING
            *currToken = getNextToken(currToken);
            node->rightNode = expr(currToken);
            break;
        case MINUS_TOKEN:
            // do something
            *currToken = getNextToken(currToken);
            node->rightNode = expr(currToken);
            break;
        default:
            ungetToken(currToken);
    }



/*    int plus = strcmp((*currToken)->strVal, "+" );
    if (plus == 0) {
        *currToken = getNextToken(currToken);
        node->rightNode = expr(currToken);
    }
    int minus = strcmp((*currToken)->strVal, "-");
    if (minus == 0) {
        *currToken = getNextToken(currToken);
        node->rightNode = expr(currToken);
    } else {
       ungetToken(currToken);
    }*/
return node;
}

NODE *term(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    // node->leftNode->data.identifier
    node->type = TERM_NODE;
    node->leftNode = factor(currToken);
    *currToken = getNextToken(currToken);
    switch ((*currToken)->type) {
        case MULT_TOKEN:
            *currToken = getNextToken(currToken);
            node->rightNode = expr(currToken);
            break;
        case DIV_TOKEN:
            *currToken = getNextToken(currToken);
            node->rightNode = expr(currToken);
            break;
        case MOD_TOKEN:
            *currToken = getNextToken(currToken);
            node->rightNode = expr(currToken);
            break;
        default:
            ungetToken(currToken);
            break;
    }


return node;
}

NODE *factor(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    node->type = FACTOR_NODE;
    switch  ((*currToken)->type) {
        case IDENT_TOKEN:
            node->leftNode = id(currToken);
            // do something
            break;
        case NUMBER_TOKEN:
            node->leftNode = number(currToken);
            // do something
            break;
        case MINUS_TOKEN:
            // do something
            *currToken = getNextToken(currToken);
            node->leftNode = factor(currToken);
            break;
        case LPAREN_TOKEN:
            // do something
            *currToken = getNextToken(currToken);
            node->leftNode = expr(currToken);
            *currToken = getNextToken(currToken);
            // rightparantheis = strcmp((*currToken)->strVal, ")");
            /*if (rightparantheis == 0) {
                error("right parantheiss");
            }*/
            if ((*currToken)->type != RPAREN_TOKEN) {
                error("right paranthesis could not be found");
            }
            break;
        default:
            error("oof");
}


return node;
}

NODE *id(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    // node->leftNode->data.identifier
    node->type = IDENTIFIER_NODE;
    strcpy(node->data.identifier, (*currToken)->strVal);
    return  node;
}

NODE *number(TOKEN **currToken)
{
//   TODO: implement
    NODE *node = malloc(sizeof(NODE));
    node->type = NUMBER_NODE;
    char *ptr;
    node->data.number = strtod((*currToken)->strVal, &ptr);
    return node;
}

void error(char *errorMessage)
{
    printf("PARSING ERROR: %s\nExiting...\n", errorMessage);
    exit(1);
}
