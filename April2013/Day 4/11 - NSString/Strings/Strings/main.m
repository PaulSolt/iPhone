//
//  main.m
//  Strings
//
//  Created by Paul on 4/19/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *name = @"Paul";
        NSLog(@"Name: %@", name);
        
        NSUInteger length = [name length];
        // on iPhone, you may need to use %u
        NSLog(@"Length of %@ is %lu characters", name, length);
        
        
        NSString *password = @"BadPassword!";
        if([password isEqual:@"1234"]) {
            NSLog(@"Logging in");
        } else {
            NSLog(@"Invalid password!!");
        }
        
        // 1. Missing @
        NSLog(@"hello");
        NSString *str = @"hello 2";
        
        // 2.  Missing ;
        NSLog(@"hi paul!");
        
        // 3. Missing [ ]
        
        NSString *string = [[NSString alloc] initWithFormat:@"Hi paul it's %dpm", 1];
        
        // 4. Missing { }
        
        for( int i = 0; i < 25; i++) {
            NSLog(@"hello world!");
        }
        
        // 5. Typo
        NSString *color = @"Red";
        NSUInteger colorLength = [color length];
        NSLog(@"Color: %@", color);
        
    }
    return 0;
}

