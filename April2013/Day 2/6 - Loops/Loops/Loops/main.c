//
//  main.c
//  Loops
//
//  Created by Paul on 4/12/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // While loop (countdown)
    int seconds = 5;
    while (seconds > 0) {
        printf("T-minus %d seconds\n", seconds);
        seconds--;
    }
    printf("Take off!\n");
    
    
    for(seconds = 10; seconds >= 0; seconds--) {
        printf("T-minus %d seconds\n", seconds);
        
        if(seconds == 5) {
            break;
        }
    }
    printf("Take off!\n");
    

// even/odd
    for(int i = 1; i <= 100; i++) {

        if(i % 2 == 0) { // even
//            continue;
            //printf("%d ", i);
        } else if(i % 2 == 1) { // odd
            printf("%d ", i);
        }
        
        
    }
    
    
    
    
    return 0;
}

