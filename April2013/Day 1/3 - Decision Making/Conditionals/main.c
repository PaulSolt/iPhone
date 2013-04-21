//
//  main.c
//  Conditionals
//
//  Created by Paul on 4/3/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>
#include <objc/objc.h>

int main(int argc, const char * argv[])
{

    int points = 55;
    
    if(points >= 100) {
        printf("You won the game!\n");
    } else {
        printf("%d points remaining!\n", 100 - points);
    }
    
    // Boolean variables
    
    BOOL isSunny = NO;
    
    if(isSunny == YES) {
        printf("It's Sunny!\n");
    } else {
        printf("It's cloudy!\n");
    }
    
    // Operators
    int grade = 94;
    
    printf("Assign letter grade: %d = ", grade);
    
    if(grade >= 75 && grade < 85) {
        printf("C\n");
    } else if(grade >= 85 && grade < 95) {
        printf("B\n");
    } else if(grade >= 95) {
        printf("A\n");
    }
    
    
    
    
    
    
    
    return 0;
}

