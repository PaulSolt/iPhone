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
    return [NSString stringWithFormat:@"<Person: %@ weight: %d>", [self name], [self weight]];
}
- (void)dealloc {
    NSLog(@"Deallocating: %@", self);
}

@end
