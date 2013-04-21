//
//  main.c
//  Area
//
//  Created by Paul on 4/4/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>

int area(int sideA, int sideB) {
    int result = sideA * sideB;
    return result;
}

int main(int argc, const char * argv[])
{

    // calculate the area of a rectangle
    int total = area(4, 5);
    
    printf("Area: %d\n", total);

    return 0;
}

