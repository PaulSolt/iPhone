//
//  Car.m
//  Cars
//
//  Created by Paul on 4/24/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "Car.h"

@implementation Car

- (float)distancePerGasTank {
    float distance = [self gasTankCapacity] * [self milesPerGallon];    
    return distance;
}

@end
