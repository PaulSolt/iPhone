//
//  main.m
//  Arrays
//
//  Created by Paul on 4/19/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *bob = @"Bob";
        NSString *sue = @"Sue";
        NSString *mike = @"Mike";
        
        NSArray *array = [NSArray arrayWithObjects:sue, bob, mike, nil];
        
        for(int i = 0; i < [array count]; i++) {
            NSString *friend = [array objectAtIndex:i];
            NSLog(@"Friend: %@", friend);
        }
        
        array = @[bob, sue, mike];
        NSLog(@"New array: %@", array);
        
        // Mutable arrays

        NSMutableArray *friends = [NSMutableArray arrayWithObjects:bob, sue, mike, nil];
        
        NSLog(@"Friends: %@", friends);
        NSLog(@"Count: %lu", [friends count]);
        NSString *john = @"John";
        
        [friends addObject:john];
        NSLog(@"Count: %lu", [friends count]);
        NSLog(@"Friends: %@", friends);
        
        [friends removeObject:bob];
        
        // Documentation: Try Option+ Left-click on class name
        //  try and use new methods, like removeAllObjects
//        [friends removeAllObjects];
        
        
        NSLog(@"Count: %lu", [friends count]);
        NSLog(@"Friends: %@", friends);
        
        // Documentation: Bug!
        if([friends count] > 80) {
            NSString *aFriend = [friends objectAtIndex:80];
            NSLog(@"My 80th friend: %@", aFriend);
        } else {
            NSLog(@"You don't have 80 friends");
        }
        
    }
    return 0;
}

