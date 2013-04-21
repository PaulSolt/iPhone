//
//  main.c
//  Numbers
//
//  Created by Paul on 4/8/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{

    char letter = 'a';
    short shortInteger = 32000;
    int intInteger = 2147483647;
    long longInteger = 9223372036854775807;
    long long longLongInteger = 9223372036854775807;
    
    printf("char: %c = %d\n", letter, letter);
    printf("short: %d\n", shortInteger);
    printf("int: %d\n", intInteger);
    printf("long: %ld\n", longInteger);
    printf("long long: %lld\n", longLongInteger);
    
    int overflow = intInteger;
    printf("overflow: %d\n", overflow);
    overflow = overflow + 1;
    printf("overflow: %d\n", overflow);
    
    // Math and order of operations
    
    printf("8 + 4 * 2 = %d\n", 8 + 4 * 2);
    printf("(8 + 4) * 2 = %d\n", (8 + 4) * 2);
    
    printf("5 / 2 = %d\n", 5 / 2);
    printf("5 %% 2 = %d\n", 5 % 2);
    
    printf("abs(-125) = %d\n", abs(125));
    
    // cos is in radians, convert degrees to radians
    printf("cos(60) = %f\n", cos(0 * M_PI / 180.0));
    
    return 0;
}

