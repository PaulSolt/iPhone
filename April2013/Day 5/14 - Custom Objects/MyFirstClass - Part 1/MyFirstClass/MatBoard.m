//
//  MatBoard.m
//  MyFirstClass
//
//  Created by Paul on 4/23/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "MatBoard.h"

@implementation MatBoard

- (void)setWidth:(float)width {
    _width = width;
}

- (void)setHeight:(float)height {
    _height = height;
}

- (float)width {
    return _width;
}

- (float)height {
    return _height;
}


- (float)calculateArea {
//    return _width * _height;
//    return [self width] * [self height];
    return self.width * self.height;
}

- (float)calculateCost {
    return 0.05 * [self calculateArea];
}

@end
