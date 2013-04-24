//
//  main.m
//  Cars
//
//  Created by Paul on 4/24/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Convertible.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        id car = [[Car alloc] init];
//        Car *car = [[Car alloc] init];
        Convertible *car = [[Convertible alloc] init];
        
        [car setGasTankCapacity:10];
        [car setMilesPerGallon:20];
        
        NSLog(@"Distance: %f", [car distancePerGasTank]);
        
        // Invalid selectors (methods) will crash the program
//        [car length];
        
        // Subclass Convertible objects can open/close a roof, Cars cannot
        [car openRoof];
//        [car closeRoof];
        
        if([car isRoofOpen]) {
            NSLog(@"Close the roof, it's raining!");
            [car closeRoof];
        } else {
            NSLog(@"Roof is closed");
        }
        
    }
    return 0;
}

