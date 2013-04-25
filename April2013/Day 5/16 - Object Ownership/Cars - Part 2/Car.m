//
//  Car.m
//  Cars
//
//  Created by Paul on 4/24/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "Car.h"
#import "Person.h"

@implementation Car

- (float)distancePerGasTank {
    float distance = [self gasTankCapacity] * [self milesPerGallon];    
    return distance;
}

- (void)addPassenger:(Person *)person {
    // create the array, if nil
    if(!_passengers) {
        _passengers = [[NSMutableArray alloc] init];
    }
    // add the passenger
    [_passengers addObject:person];
}
- (unsigned int)weightOfPassengers {
    unsigned int totalWeight = 0;
    for(Person *person in _passengers) {
        unsigned int weight = person.weight;
        totalWeight += weight;
    }
    return totalWeight;
}

// description and dealloc

- (NSString *)description {
    return [NSString stringWithFormat:@"<Car: %d Passenger weight: %d>", self.carId, [self weightOfPassengers]];
}

- (void)dealloc {
    NSLog(@"Deallocating: %@", self);
}




@end
