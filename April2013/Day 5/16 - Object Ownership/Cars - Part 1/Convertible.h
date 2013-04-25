//
//  Convertible.h
//  Cars
//
//  Created by Paul on 4/24/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface Convertible : Car {
    BOOL _isRoofOpen;
}

@property BOOL isRoofOpen;

- (void)openRoof;
- (void)closeRoof;

@end
