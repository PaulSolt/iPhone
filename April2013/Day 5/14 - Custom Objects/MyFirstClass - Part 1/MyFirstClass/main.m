//
//  main.m
//  MyFirstClass
//
//  Created by Paul on 4/23/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MatBoard.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        MatBoard *mat = [[MatBoard alloc] init];
        
        [mat setWidth:20];
        [mat setHeight:16];
        
        float area = [mat calculateArea];
        
        float width = [mat width];
        float height = [mat height];
        
        width = mat.width; // [mat width];
        height = mat.height; // [mat height];
        
        NSLog(@"Area of %.0fx%.0f: %.0f", width, height, area);
        
        mat.width = 10; // [mat setWidth:10];
        mat.height = 8; // [mat setHeight:8];
        
        NSLog(@"Area: %.0f", [mat calculateArea]);
        NSLog(@"%.0fx%.0f", mat.width, mat.height);
        
        NSLog(@"Cost: $%.2f", [mat calculateCost]);
    }
    return 0;
}

