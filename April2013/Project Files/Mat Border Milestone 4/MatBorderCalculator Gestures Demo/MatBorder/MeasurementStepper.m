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
        NSLog(@"initWithFrame");
        // Used to load the view from a nib file
        [[NSBundle mainBundle] loadNibNamed:@"MeasurementStepper" owner:self options:nil];
        [self addSubview:self.view];
        
        [self setupGestures];
        [self setupDefaultValues];
               
    }
    return self;
}

- (void) awakeFromNib
{
    [super awakeFromNib];
    NSLog(@"Awake");
    // Used to load the view from a nib file
    [self addSubview:self.view];
    
    [self setupGestures];
    [self setupDefaultValues];
}

- (void)setupDefaultValues {

    self.widthWholeNumber = 0;
    self.heightWholeNumber = 0;
    
    self.widthNumerator = 0;
    self.widthDenominator = 8;
    self.heightNumerator = 0;
    self.heightDenominator = 8;
}

- (void)setWidthWholeNumber:(float)widthWholeNumber {
    _widthWholeNumber = widthWholeNumber;
    self.widthWholeNumberLabel.text = [NSString stringWithFormat:@"%0.f", self.widthWholeNumber];
    
    [self.delegate measurementStepperDidUpdate:self];
}

- (void)setHeightWholeNumber:(float)heightWholeNumber {
    _heightWholeNumber = heightWholeNumber;
    self.heightWholeNumberLabel.text = [NSString stringWithFormat:@"%0.f", self.heightWholeNumber];
    
    [self.delegate measurementStepperDidUpdate:self];
}

- (void)setWidthDenominator:(float)widthDenominator {
    _widthDenominator = widthDenominator;
    self.widthFractionLabel.text = [NSString stringWithFormat:@"%0.f/%0.f", self.widthNumerator, self.widthDenominator];
    [self.delegate measurementStepperDidUpdate:self];
}

- (void)setHeightDenominator:(float)heightDenominator {
    _heightDenominator = heightDenominator;
    self.heightFractionLabel.text = [NSString stringWithFormat:@"%0.f/%0.f", self.heightNumerator, self.heightDenominator];
    [self.delegate measurementStepperDidUpdate:self];
}

- (void)setWidthNumerator:(float)widthNumerator {
    _widthNumerator = widthNumerator;
    self.widthFractionLabel.text = [NSString stringWithFormat:@"%0.f/%0.f", self.widthNumerator, self.widthDenominator];
    [self.delegate measurementStepperDidUpdate:self];

}

- (void)setHeightNumerator:(float)heightNumerator {
    _heightNumerator = heightNumerator;
    self.heightFractionLabel.text = [NSString stringWithFormat:@"%0.f/%0.f", self.heightNumerator, self.heightDenominator];
    [self.delegate measurementStepperDidUpdate:self];    
}

- (void)setupGestures {
    
    // Gestures
    UIPanGestureRecognizer *widthWholePanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGestureForWidthWholeNumber:)];
    
    [self.widthWholeNumberLabel addGestureRecognizer:widthWholePanGesture];
    
    UIPanGestureRecognizer *widthFractionPanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGestureForWidthFraction:)];
    [self.widthFractionLabel addGestureRecognizer:widthFractionPanGesture];


    UIPanGestureRecognizer *heightWholePanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGestureForHeightWholeNumber:)];
    [self.heightWholeNumberLabel addGestureRecognizer:heightWholePanGesture];
    
    UIPanGestureRecognizer *heightFractionPanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGestureForHeightFraction:)];
    [self.heightFractionLabel addGestureRecognizer:heightFractionPanGesture];

}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [[NSBundle mainBundle] loadNibNamed:@"MeasurementStepper" owner:self options:nil];
    }
    return self;
}

- (float)calculateMovement:(UIPanGestureRecognizer *)panGesture {
    
    CGPoint movementVector = [panGesture translationInView:panGesture.view];
    
    [panGesture setTranslation:CGPointZero inView:panGesture.view];
    
    float pixelsPerUnit = 10;
    float horizontalMovement = (movementVector.x / pixelsPerUnit);
    float verticalMovement = (-movementVector.y / pixelsPerUnit);
    
    float movement = 0;
    
    if(fabs(horizontalMovement) >= fabs(verticalMovement)) {
        movement = horizontalMovement;
    } else {
        movement = verticalMovement;
    }
    return movement;
}

- (void)handlePanGestureForWidthWholeNumber:(UIPanGestureRecognizer *)panGesture {
    
    self.widthWholeNumber = self.widthWholeNumber + [self calculateMovement:panGesture];
    
    // Prevent negative values
    self.widthWholeNumber = MAX(0, self.widthWholeNumber);
    
    // Update without decimal places
    self.widthWholeNumberLabel.text = [NSString stringWithFormat:@"%0.f", self.widthWholeNumber];
    [self.delegate measurementStepperDidUpdate:self];
}

- (void)handlePanGestureForHeightWholeNumber:(UIPanGestureRecognizer *)panGesture {
    
    self.heightWholeNumber = self.heightWholeNumber + [self calculateMovement:panGesture];
    
    // Prevent negative values
    self.heightWholeNumber = MAX(0, self.heightWholeNumber);
    
    // Update without decimal places
    self.heightWholeNumberLabel.text = [NSString stringWithFormat:@"%0.f", self.heightWholeNumber];
    [self.delegate measurementStepperDidUpdate:self];
}

- (void)handlePanGestureForWidthFraction:(UIPanGestureRecognizer *)panGesture {
    
    self.widthNumerator = self.widthNumerator + [self calculateMovement:panGesture];
    
    // Prevent negative values
    self.widthNumerator = MAX(0, self.widthNumerator);
    self.widthNumerator = MIN(self.widthDenominator - 1, self.widthNumerator);
    
    self.widthFractionLabel.text = [NSString stringWithFormat:@"%0.f/%0.f", self.widthNumerator, self.widthDenominator];

    [self.delegate measurementStepperDidUpdate:self];
}

- (void)handlePanGestureForHeightFraction:(UIPanGestureRecognizer *)panGesture {
    
    self.heightNumerator = self.heightNumerator + [self calculateMovement:panGesture];
    
    // Prevent negative values
    self.heightNumerator = MAX(0, self.heightNumerator);
    self.heightNumerator = MIN(self.heightDenominator - 1, self.heightNumerator);
    
    self.heightFractionLabel.text = [NSString stringWithFormat:@"%0.f/%0.f", self.heightNumerator, self.heightDenominator];
    
    [self.delegate measurementStepperDidUpdate:self];
}



@end