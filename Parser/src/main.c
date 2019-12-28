#include "eval.h"
/**
* Name: Umit Demirci
* Lab: Lab 6 Parser
* Date: 10/15/19
**/
int main(void)
{
    NODE *fullProgram = program();
    printf("Done parsing...\n");
    printProgram(fullProgram);

    exit(0);
}