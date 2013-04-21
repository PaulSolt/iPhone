//
//  main.c
//  Heap
//
//  Created by Paul on 4/15/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int x;
    int y;
} Point;

int main(int argc, const char * argv[])
{
    // Create buffer
    char *textBuffer = malloc(sizeof(char) * 2000);
    
    // use the buffer
    printf("textBuffer Address: %p\n", textBuffer);
    
    // clean up
    free(textBuffer);
    
    textBuffer = NULL;
    
    // Create a point dynamically on the heap
    
    Point *point = malloc(sizeof(Point));
    
    (*point).x = 100;
    point->y = 200;
    
    printf("Point: (%d, %d)\n", point->x, point->y);
    
    printf("Point address: %p\n", point);
    
    free(point);
    point = NULL;
    
    
    return 0;
}

