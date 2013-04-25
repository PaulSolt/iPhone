//
//  Car.h
//  Cars
//
//  Created by Paul on 4/24/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "Person.h"

// forward class declaration
@class Person;

@interface Car : NSObject {
    NSMutableArray *_passengers;
}

@property float gasTankCapacity;
@property float milesPerGallon;

- (float)distancePerGasTank;

@property int carId;

- (void)addPassenger:(Person *)person;
- (unsigned int)weightOfPassengers;


@end
