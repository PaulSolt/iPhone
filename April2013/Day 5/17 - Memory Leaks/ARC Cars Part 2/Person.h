//
//  Person.h
//  ObjectOwnership
//
//  Created by Paul Solt on 4/25/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;

@interface Person : NSObject {
    NSString *_name;
    unsigned int _weight;
//    Car *_car;
    __weak Car *_car;
}

@property (strong) NSString *name;
@property unsigned int weight;

//@property (strong) Car *car;
@property (weak) Car *car;

@end
