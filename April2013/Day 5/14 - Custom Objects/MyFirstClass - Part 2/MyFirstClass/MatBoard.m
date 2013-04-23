//
//  MatBoard.m
//  MyFirstClass
//
//  Created by Paul on 4/23/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "MatBoard.h"

@implementation MatBoard

- (float)calculateArea {
//    return _width * _height;
//    return [self width] * [self height];
    return self.width * self.height;
}

- (float)calculateCost {
    return 0.05 * [self calculateArea];
}

@end
