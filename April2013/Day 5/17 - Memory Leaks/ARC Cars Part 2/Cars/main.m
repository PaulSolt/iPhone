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
#import "Person.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        // Use a random starting seed to randomize our random() values, otherwise they're
        //  going to be the same random numbers. Use time to "seed" a new set of random numbers
        srandom((unsigned int)time(NULL));

        NSMutableArray *cars = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < 10; i++) {
            Car *car = [[Car alloc] init];
            car.carId = i;
            car.milesPerGallon = random() % 30 + 10;
            car.gasTankCapacity = random() % 10 + 10;
            [cars addObject:car];
        }
        
        for(int i = 0; i < 10; i++) {
            Person *aPerson = [[Person alloc] init];
            NSString *name = [NSString stringWithFormat:@"Person %d", i];
            
            aPerson.name = name;
            aPerson.weight = random() % 100  + 100;
            
            // Add to a car
            NSUInteger index = random() % [cars count];
            Car *car = [cars objectAtIndex:index];
            [car addPassenger:aPerson];

            // Strong reference cycle
            aPerson.car = car;
            
            NSLog(@"Allocated: %@", aPerson);
        }

        NSLog(@"Cars: %@", cars);

        // Remove a car
        
        NSLog(@"Remove car 6");
        [cars removeObjectAtIndex:6];

        NSLog(@"Remove all");
        [cars removeAllObjects];
        
        // Don't exit right away, wait a period of time for profiling
        sleep(200);

    }
    return 0;
}

