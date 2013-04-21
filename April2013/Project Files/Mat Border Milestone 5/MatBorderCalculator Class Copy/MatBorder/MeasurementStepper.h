//
//  MeasurementStepper.h
//  MatBorder
//
//  Created by Paul Solt on 2/13/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MeasurementStepper;

@protocol MeasurementStepperDelegate <NSObject>

- (void)measurementStepperDidUpdate:(MeasurementStepper *)stepper;

@end

// Class
@interface MeasurementStepper : UIView {

}

@property (nonatomic, weak) id<MeasurementStepperDelegate> delegate;

@property (nonatomic, assign) float widthWholeNumber;
@property (nonatomic, assign) float widthNumerator;
@property (nonatomic, assign) float widthDenominator;
@property (nonatomic, assign) float heightWholeNumber;
@property (nonatomic, assign) float heightNumerator;
@property (nonatomic, assign) float heightDenominator;

@property (nonatomic, strong) IBOutlet UIView *view;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *widthWholeNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightWholeNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *widthFractionLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightFractionLabel;


@end
