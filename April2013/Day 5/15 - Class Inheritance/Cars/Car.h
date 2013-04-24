//
//  Car.h
//  Cars
//
//  Created by Paul on 4/24/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject {
//    float _gasTankCapacity;
//    float _milesPerGallon;
}

@property float gasTankCapacity;
@property float milesPerGallon;

- (float)distancePerGasTank;

@end
