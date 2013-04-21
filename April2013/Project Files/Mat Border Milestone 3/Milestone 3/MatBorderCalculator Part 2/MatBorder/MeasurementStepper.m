//
//  MeasurementStepper.m
//  MatBorder
//
//  Created by Paul Solt on 2/13/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "MeasurementStepper.h"

@interface MeasurementStepper ()

@end

@implementation MeasurementStepper

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Custom initialization
        
        [[NSBundle mainBundle] loadNibNamed:@"MeasurementStepper" owner:self options:nil];
        [self addSubview:self.view];
//
        NSLog(@"Init");
        
        [self setupGestures];
               
    }
    return self;
}

- (void) awakeFromNib
{
    [super awakeFromNib];
    NSLog(@"Awake");
    [self addSubview:self.view];
    
    [self setupGestures];
}

- (void)setupDefaultValues {

    self.widthWholeNumber = 10;
    self.heightWholeNumber = 10;
    
    self.widthNumerator = 1;
    self.widthDenominator = 8;
    self.heightNumerator = 1;
    self.heightDenominator = 8;
}

- (void)setupGestures {
    
    // Gestures
    UIPanGestureRecognizer *widthWholePanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGestureForWidthWholeNumber:)];
    
    [self.widthWholeNumberLabel addGestureRecognizer:widthWholePanGesture];
    

}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [[NSBundle mainBundle] loadNibNamed:@"MeasurementStepper" owner:self options:nil];
//        [self addSubview:self.toplevelSubView];
        
            }
    return self;
}

- (void)handlePanGestureForWidthWholeNumber:(UIPanGestureRecognizer *)panGesture {
    
    CGPoint movement = [panGesture translationInView:panGesture.view];
    NSLog(@"Movement: %@", NSStringFromCGPoint(movement));
    
    [panGesture setTranslation:CGPointZero inView:panGesture.view];
    // use the horizontal
    
    float pixelsPerUnit = 10;
    
    self.widthWholeNumber = self.widthWholeNumber + (movement.x / pixelsPerUnit);
    
    self.widthWholeNumber = MAX(0, self.widthWholeNumber);
    
    self.widthWholeNumberLabel.text = [NSString stringWithFormat:@"%0.f", self.widthWholeNumber];
    
    if(UIGestureRecognizerStateEnded == panGesture.state) {
        // store the last value
    }
    // reset the movement
}


@end