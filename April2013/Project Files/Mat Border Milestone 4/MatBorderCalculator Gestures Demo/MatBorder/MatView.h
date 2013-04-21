//
//  MatView.h
//  MatBorder
//
//  Created by Paul Solt on 2/13/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MatView : UIView {
}

@property (nonatomic, strong) UIView *matBorderView;
@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, assign) CGRect matBorderRect;
@property (nonatomic, assign) CGRect imageRect;

@property (nonatomic, assign) CGSize frameSizeInches;
@property (nonatomic, assign) CGSize imageSizeInches;

@end
