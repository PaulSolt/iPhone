//
//  Person.m
//  Person
//
//  Created by Paul Solt on 5/6/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)description {
    return [NSString stringWithFormat:@"<Person: %@ Weight: %d>", [self name], [self weight]];
}

@end
