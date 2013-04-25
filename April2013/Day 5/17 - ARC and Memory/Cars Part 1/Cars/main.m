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
        
        // Use a random starting seed (current time = time(NULL))
        srandom((unsigned int)time(NULL));
        
        Person *person = [[Person alloc] init];
        
        person.name = @"Paul";
        person.weight = 168;
        
        NSLog(@"Allocated: %@", person);

        NSMutableArray *cars = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < 10; i++) {
            Car *car = [[Car alloc] init];
            car.carId = i;
            car.milesPerGallon = random() % 30 + 10;
            car.gasTankCapacity = random() % 10 + 10;
            [cars addObject:car];
        }
        
        for(int i = 0; i < 20; i++) {
            Person *aPerson = [[Person alloc] init];
            NSString *name = [NSString stringWithFormat:@"Person %d", i];
            
            aPerson.name = name;
            aPerson.weight = random() % 100  + 100;
            
            // Add to a car
            NSUInteger index = random() % [cars count];
            Car *car = [cars objectAtIndex:index];
            [car addPassenger:aPerson];
            
            
        }

        NSLog(@"Cars: %@", cars);

        // Remove a car
        
        NSLog(@"Remove car 6");
        [cars removeObjectAtIndex:6];

        NSLog(@"Remove all");
        [cars removeAllObjects];

        
    }
    return 0;
}

