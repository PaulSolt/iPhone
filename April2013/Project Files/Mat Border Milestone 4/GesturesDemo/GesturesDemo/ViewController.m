//
//  ViewController.m
//  GesturesDemo
//
//  Created by Paul on 2/16/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"did Load");

    // Add gestures
//    NSLog(@"Label: %@", self.numberLabel);
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];
    
    // The label needs to have User Interaction Enabled!
    [self.numberLabel addGestureRecognizer:panGesture];
    
//    self.numberLabel.text = @"Hello";

    
}

- (void)handlePanGesture:(UIPanGestureRecognizer *)panGesture {
    
    CGPoint location = [panGesture translationInView:panGesture.view];
    
    // Convert from pixels to "units"
    float x = location.x / 10;
    value = value + x;
    
    NSLog(@"Pan x: %0.f value: %0.f", x, value);
    
    [panGesture setTranslation:CGPointZero inView:panGesture.view];
    
    self.numberLabel.text = [NSString stringWithFormat:@"%0.f", value];
}







@end
