//
//  MatView.m
//  MatBorder
//
//  Created by Paul Solt on 2/13/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "MatView.h"

@implementation MatView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if(self) {
        self.clipsToBounds = NO;
        
        // Mat border view
        self.matBorderView = [[UIView alloc] initWithFrame:self.bounds];
        self.matBorderView.clipsToBounds = NO;
        [self.matBorderView setBackgroundColor:[UIColor blackColor]];
        [self addSubview:self.matBorderView];

        // Image view (inset to show mat border preview)
        int inset = 25;
        self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"art.jpg"]];
        self.imageView.clipsToBounds = NO;
        self.imageView.frame = CGRectMake(self.bounds.origin.x + inset,
                                          self.bounds.origin.y + inset,
                                          self.bounds.size.width - (2 * inset),
                                          self.bounds.size.height - (2 * inset));
        [self addSubview:self.imageView];
        
        // Add Gestures
        
        UITapGestureRecognizer *imageTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleImageTap:)];
        [self.imageView addGestureRecognizer:imageTapGesture];
        [self.imageView setUserInteractionEnabled:YES]; // must enable for touch input
        
        UITapGestureRecognizer *borderTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleBorderTap:)];
        [self.matBorderView addGestureRecognizer:borderTapGesture];
        [self.matBorderView setUserInteractionEnabled:YES]; // must enable for touch input
        
    }
    return self;
}

// Gestures, call our delegate protocol

- (void)handleImageTap:(UITapGestureRecognizer *)tapGesture {
    [self.delegate matViewDidTapImage:self];
}

- (void)handleBorderTap:(UITapGestureRecognizer *)tapGesture {
    [self.delegate matViewDidTapBorder:self];
}

- (void)layoutSubviews {
//    [super layoutSubviews];   // Don't use with autolayout! it will mess up our layout
    float maxEdge = self.frame.size.width;
    
    float frameWidth = self.frameSizeInches.width;
    float frameHeight = self.frameSizeInches.height;
        
    float finalWidth = 0;
    float finalHeight = 0;
    float pixelsPerInchRatio = 0;
    
    // Prevent crashes from divide by zero! don't use values if less than or equal to 0
    
    if(frameWidth > 0 && frameHeight > 0) {
        if (frameWidth > frameHeight) {
            finalWidth = maxEdge;
            finalHeight = maxEdge * (frameHeight / frameWidth); // ratio
            
            pixelsPerInchRatio = maxEdge / frameWidth;
            
        } else {
            // height is bigger (or equal)
            
            finalHeight = maxEdge;
            finalWidth = maxEdge * (frameWidth / frameHeight); // ratio
            
            pixelsPerInchRatio = maxEdge / frameHeight;
            
        }
        
        float imageWidth = self.imageSizeInches.width; //self.imageWidthTextField.text.floatValue;
        float imageHeight = self.imageSizeInches.height; //self.imageHeightTextField.text.floatValue;
        
        // update the bounds of the rectangles
        [UIView animateWithDuration:.1 animations:^{
            self.matBorderView.bounds = CGRectMake(0, 0, finalWidth, finalHeight);
            self.imageView.bounds = CGRectMake(0, 0, imageWidth * pixelsPerInchRatio,
                                               imageHeight * pixelsPerInchRatio);
            
        }];

    } 
}

@end
