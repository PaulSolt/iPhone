//
//  MatView.h
//  MatBorder
//
//  Created by Paul Solt on 2/13/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MatView; // forward declare class to use in delegate before definition

// Delegate Protocol
@protocol MatViewDelegate <NSObject>

- (void)matViewDidTapImage:(MatView *)matView;
- (void)matViewDidTapBorder:(MatView *)matView;

@end

// Class definition
@interface MatView : UIView {
}

@property (nonatomic, strong) UIView *matBorderView;
@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, assign) CGRect matBorderRect;
@property (nonatomic, assign) CGRect imageRect;

@property (nonatomic, assign) CGSize frameSizeInches;
@property (nonatomic, assign) CGSize imageSizeInches;

@property (nonatomic, weak) id<MatViewDelegate> delegate;

@end
