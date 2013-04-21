//
//  main.c
//  GlobalVariables
//
//  Created by Paul on 4/4/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>

// Global variables
int total = 10;
static int myTotal = 25;

void resetTotal() {
    total = 0;
}

void updateTotal() {
    total = total + 1;
}

int main(int argc, const char * argv[])
{
// Local variables will mask or "replace" global variables
//    int total = 17;
    
    printf("Total: %d\n", total);
    resetTotal();
    printf("Total: %d\n", total);
    updateTotal();
    printf("Total: %d\n", total);
    
    return 0;
}

