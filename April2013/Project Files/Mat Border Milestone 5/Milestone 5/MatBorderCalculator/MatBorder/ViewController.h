//
//  ViewController.h
//  MatBorder
//
//  Created by Paul on 2/2/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MatView.h"
#import "MeasurementStepper.h"

@interface ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate,
    MeasurementStepperDelegate,
    MatViewDelegate>

// Actions
@property (weak, nonatomic) IBOutlet MeasurementStepper *imageStepper;
@property (weak, nonatomic) IBOutlet MeasurementStepper *frameStepper;

// Update the border size labels
@property (weak, nonatomic) IBOutlet UILabel *horizontalBorderLabel;
@property (weak, nonatomic) IBOutlet UILabel *verticalBorderLabel;

// UI based on code
@property (strong, nonatomic) MatView *matView;

@end
