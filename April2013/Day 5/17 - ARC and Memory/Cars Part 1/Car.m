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
    if(!_passengers) { // Create the array if not already created (1st time)
        _passengers = [[NSMutableArray alloc] init];
    }
    [_passengers addObject:person];
}

- (unsigned int)weightOfPassengers {
    unsigned int weight = 0;
    
    for(Person *person in _passengers) {
        weight += person.weight;
    }
    return weight;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<Car: %d Passenger weight: %d", self.carId, [self weightOfPassengers]];
}

- (void)dealloc {
    NSLog(@"Deallocating: %@", self);
}
@end
