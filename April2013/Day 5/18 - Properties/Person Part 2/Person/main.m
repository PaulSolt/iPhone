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

        // Good Way: modify using a property
        bob.name = @"Bobby";
        NSLog(@"Name: %@", bob.name);

        // Bad Way
        bob.name = [[NSMutableString alloc] initWithString:@"Bob"];
        
//        NSMutableString *value = (NSMutableString *)bob.name;
//        
//        [value setString:@"Susan"];
        
        NSLog(@"Name: %@", bob.name);

    }
    return 0;
}

