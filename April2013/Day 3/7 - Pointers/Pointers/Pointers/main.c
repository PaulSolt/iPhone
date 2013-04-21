//
//  main.c
//  Pointers
//
//  Created by Paul on 4/15/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int height = 63;
    printf("height = %d\n", height);
    printf("address of height: %p\n", &height);
    
    int weight = 155;
    int *pointer = &weight;
    
    printf("weight: %p\n", &weight);
    printf("pointer: %p\n", pointer);
    
    printf("weight: %d\n", weight);
    printf("*pointer: %d\n", *pointer);
    
    *pointer = 100;
    
    printf("weight: %d\n", weight);
    printf("*pointer: %d\n", *pointer);
    
    printf("sizeof(int): %zu\n", sizeof(int));
    printf("sizeof(double): %zu\n", sizeof(double));
   
    int *myPointer = NULL;
    // We can't store anything at 0x0 memory address
    //*myPointer = 99; // Crash! (uncomment line)
    
    // Try setting up the pointer to a value before you dereference it. (ie. myPointer = &someIntVariable;)
    
    if(myPointer) { // if not NULL
        *myPointer = 99;
    } else {
        printf("Error: Pointer not setup!\n");
    }
        
    return 0;
}

