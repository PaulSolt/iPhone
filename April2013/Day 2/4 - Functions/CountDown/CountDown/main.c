//
//  main.c
//  CountDown
//
//  Created by Paul on 4/4/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void countDown(int number) {
    
    if(number == 0) {
        printf("Take off!\n");
    } else {
        printf("T-minus %d seconds\n", number);
        sleep(1);
        int nextNumber = number - 1;
        countDown(nextNumber);
    }
}

int main(int argc, const char * argv[])
{

    // countdown timer
    int startNumber = 5;
    countDown(startNumber);
    
    return 0;
}

