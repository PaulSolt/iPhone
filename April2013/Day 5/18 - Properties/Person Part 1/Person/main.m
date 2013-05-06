//
//  main.m
//  Person
//
//  Created by Paul Solt on 5/6/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *bob = [[Person alloc] init];
        
        bob.name = @"Bob";
        bob.weight = 185;
        
        NSLog(@"Name: %@", bob.name);
        
        // Get bobs name and change it
        
        // Good: Expected name change:
        bob.name = @"Bobby";
        NSLog(@"Name: %@", bob.name);

        // Bad: Unexpected name change: store a mutable string
        bob.name = [[NSMutableString alloc] initWithString:@"Bob"];        
        NSMutableString *bobsName = (NSMutableString *)bob.name;

        // Changing this value, changes the object's value, if we use "strong"
        //  this is an unexpected side effect
        [bobsName setString:@"Susan"];
        NSLog(@"Name: %@", bob.name);

    }
    return 0;
}

