//
//  Car.h
//  Cars
//
//  Created by Paul on 4/24/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Car : NSObject {
    NSMutableArray *_passengers;
}

@property float gasTankCapacity;
@property float milesPerGallon;

- (float)distancePerGasTank;

// Object ownership

@property int carId;

- (void)addPassenger:(Person *)person;
- (unsigned int)weightOfPassengers;

@end
