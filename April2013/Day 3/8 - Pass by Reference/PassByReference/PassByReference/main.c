//
//  main.c
//  PassByReference
//
//  Created by Paul on 4/15/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>

void integerDivision(int a, int b, int *result, int *remainder) {
    *result =  a / b;
    *remainder = a % b;
    
    a = 1000;
    b = -100;
}

int main(int argc, const char * argv[])
{

    int x = 5;
    int y = 2;
    int value = 0;
    int remainder = 0;
    
    printf("%d / %d = %d remainder %d\n", x, y, value, remainder);
    integerDivision(x, y, &value, &remainder);
    printf("%d / %d = %d remainder %d\n", x, y, value, remainder);

    
    return 0;
}

