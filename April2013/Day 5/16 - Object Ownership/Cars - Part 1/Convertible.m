//
//  Convertible.m
//  Cars
//
//  Created by Paul on 4/24/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "Convertible.h"

@implementation Convertible

- (void)openRoof {
    NSLog(@"Opening roof");
    _isRoofOpen = YES;
}

- (void)closeRoof {
    NSLog(@"Closing roof");
    _isRoofOpen = NO;
}

// Overiding class behavior
- (float)distancePerGasTank {
    float distance = [super distancePerGasTank];    
    return distance * 0.5;
}

@end
