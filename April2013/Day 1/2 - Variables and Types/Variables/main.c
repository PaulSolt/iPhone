//
//  main.c
//  Variables
//
//  Created by Paul on 3/28/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // Declare a variable to the CPU
    float water;
    
    // Store the amount of water
    water = 950.0;
    
    // Display a message
    printf("Brewing %f milliliters of coffee.\n", water);
    
    float ratio;
    float coffeeBeans;
    
    ratio = 17;
    coffeeBeans = water / ratio;
    
    // Display a final message
    printf("Grind %f grams of coffee beans", coffeeBeans);
    
    return 0;
}

