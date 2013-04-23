//
//  MatBoard.h
//  MyFirstClass
//
//  Created by Paul on 4/23/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MatBoard : NSObject {
    float _width;
    float _height;
}

@property float width;
@property float height;

- (float)calculateArea;
- (float)calculateCost;

@end
