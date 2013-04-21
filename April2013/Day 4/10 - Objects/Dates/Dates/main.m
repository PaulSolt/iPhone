//
//  main.m
//  Dates
//
//  Created by Paul on 4/18/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *date = [NSDate date];
        NSLog(@"Today is %@", date);
        
        double seconds = [date timeIntervalSince1970];
        NSLog(@"Seconds from 1970: %f", seconds);
        
        double secondsPerDay = 60 * 60 * 24;
        double days = seconds / secondsPerDay;
        
        NSLog(@"Days: %f", days);
        
        // Nest message sends
        
        
        NSDate *today = [[NSDate alloc] init];
        NSDate *tomorrow = [today dateByAddingTimeInterval:secondsPerDay];
        
        NSLog(@"Today: %@", today);
        NSLog(@"Tomorrow: %@", tomorrow);
        
        // id - any pointer to an object (no * needed)
        id anyObject = [NSDate date];
        
        NSLog(@"anyObject = %@", anyObject);
        
        NSDate *newDate = nil;
        newDate = [NSDate date];
        
//        double total = [newDate timeIntervalSince1970];
//        NSLog(@"Total seconds: %f", total);
//        NSLog(@"NewDate: %@", newDate);
        
        if(newDate) {
//        if(newDate != nil) {

            NSLog(@"Valid date");
            double total = [newDate timeIntervalSince1970];
            NSLog(@"Total seconds: %f", total);
            NSLog(@"NewDate: %@", newDate);
        } else {
            NSLog(@"Nil date! Fix it!!!");
        }
    }
    return 0;
}

