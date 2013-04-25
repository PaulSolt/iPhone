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
        
        Person *person = [[Person alloc] init];
        
        person.name = @"Paul";
        person.weight = 169;
        
        NSLog(@"Allocated: %@", person);
        
//        Car *car = [[Car alloc] init];
//        [car addPassenger:person];
//        car.carId = 1;
//        
//        NSLog(@"Allocated: %@", car);

        NSMutableArray *cars = [[NSMutableArray alloc] init]; // nil;
        
        for(int i = 0; i < 10; i++) {
            Car *car = [[Car alloc] init];
            car.carId = i;
            car.milesPerGallon = random() % 30 + 10;
            car.gasTankCapacity = random() % 10 + 10;
            [cars addObject:car];
        }
        
        NSLog(@"cars: %@", cars);
        
        NSLog(@"Remove car 7");
        [cars removeObjectAtIndex:7];
        
        NSLog(@"cars: %@", cars);
        
        for(int i = 0; i < 20; i++) {
            Person *aPerson = [[Person alloc] init];
            
            aPerson.name = [NSString stringWithFormat:@"Person: %d", i];
            aPerson.weight = random() % 100 + 100;
            
            // Get a random car, and add the person
            NSUInteger index = random() % [cars count];  // % 10
            Car *car = [cars objectAtIndex:index];
            [car addPassenger:aPerson];
            
        }
        
        NSLog(@"Remove car 5");
        [cars removeObjectAtIndex:5];
        
        NSLog(@"Remove all cars from lot");
        [cars removeAllObjects];
    }
    return 0;
}

