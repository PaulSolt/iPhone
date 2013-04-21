//
//  main.c
//  Struct
//
//  Created by Paul on 4/15/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>

//struct Point {
//    int x;
//    int y;
//};

typedef struct {
    int x;
    int y;
} Point;

int main(int argc, const char * argv[])
{
//    struct Point myPoint;
    Point myPoint;
    myPoint.x = 100;
    myPoint.y = 200;
    
    printf("Point: (%d, %d)\n", myPoint.x, myPoint.y);
    
    return 0;
}

