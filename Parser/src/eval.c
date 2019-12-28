#include "eval.h"
#include "parser.h"

/**
* Name: Umit Demirci
* Lab: Lab 6 Parser
* Date: 10/15/19
**/
void printProgram(NODE *node)
{
    printf("=> START program\n");
    if (node->leftNode != NULL)
        printStatement(node->leftNode);
    if (node->rightNode != NULL)
        printProgram(node->rightNode);
    printf("=> END program\n");
}

void printStatement(NODE *node)
{
//   TODO: implement
printf("=> START statement\n");
if (node->leftNode != NULL) {
    switch (node->type) {
        case IDENTIFIER_NODE:
            printAssignStmt(node->leftNode);
            break;
        case PRINT_STMT_NODE:
            printPrintStmt(node->leftNode);
            break;
        case REPEAT_STMT_NODE:
            printRepeatStmt(node->leftNode);
            break;
        default:
            printf("nothing to print");
    }
}
    printf("=> END statement\n");
}

void printAssignStmt(NODE *node)
{
//   TODO: implement
    printf("=> START Assignment\n");
    if (node->leftNode != NULL) {
        printId(node->leftNode);
    }
    if (node->rightNode != NULL) {
        printExpr(node->rightNode);
    }
    printf("=> END Assignment\n");
}

void printRepeatStmt(NODE *node)
{
//   TODO: implement
}

void printPrintStmt(NODE *node)
{
//   TODO: implement
}

void printExpr(NODE *node)
{
//   TODO: implement
    printf("=> START EXPRESSION\n");
    if (node->leftNode != NULL) {
        printTerm(node->leftNode);
    }
    if (node->rightNode != NULL) {
        printExpr(node->rightNode);
    }
    printf("=> END EXPRESSION\n");
}

void printTerm(NODE *node)
{
//   TODO: implement
    printf("=> START TERM\n");
if (node->leftNode != NULL) {
    printFactor(node->leftNode);
}
if (node->rightNode != NULL) {
    printExpr(node->rightNode);
}
    printf("=> END TERM\n");
}

void printFactor(NODE *node)
{
//   TODO: implement
    printf("=> START FACTOR\n");
    if (node->leftNode != NULL) {

        switch (node->type) {
            case IDENTIFIER_NODE:
                printId(node->leftNode);
                break;
            case NUMBER_NODE:
                printNumber(node->leftNode);
                break;
            default:
                printf("oof");
        }

    }



    printf("=> END FACTOR\n");
}

void printId(NODE *node)
{
//   TODO: implement
printf("%s\n", node->data.identifier);
    printf("=> END IDENTIFIER\n");
}

void printNumber(NODE *node)
{
//   TODO: implement
    printf("%lf\n", node->data.number);
printf("=> END NUMBER");
}

