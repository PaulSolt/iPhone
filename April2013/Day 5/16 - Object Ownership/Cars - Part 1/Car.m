//
//  Car.m
//  Cars
//
//  Created by Paul on 4/24/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "Car.h"

@implementation Car

// Don't need in latest Xcode/Objective-C
//@synthesize gasTankCapacity;
//@synthesize milesPerGallon;

- (float)distancePerGasTank {
//    float distance = _gasTankCapacity * _milesPerGallon;
    float distance = [self gasTankCapacity] * [self milesPerGallon];
    
    return distance;
}

@end
