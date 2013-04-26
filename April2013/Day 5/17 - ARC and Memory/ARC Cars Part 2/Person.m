//
//  Person.m
//  ObjectOwnership
//
//  Created by Paul Solt on 4/25/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)description {
    return [NSString stringWithFormat:@"<Person: %@ Weight: %d Car: %@>", [self name], [self weight], self.car];
}
- (void)dealloc {
    NSLog(@"Deallocating: %@", self);
}

@end
