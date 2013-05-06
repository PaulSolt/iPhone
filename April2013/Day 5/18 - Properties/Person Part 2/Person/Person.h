//
//  Person.h
//  Person
//
//  Created by Paul Solt on 5/6/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong) NSString *name;
//@property (copy) NSString *name;  // Use the "copy" modifier

@property unsigned int weight;

@end
