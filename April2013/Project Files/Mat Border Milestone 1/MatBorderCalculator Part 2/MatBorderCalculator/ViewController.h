//
//  ViewController.h
//  MatBorderCalculator
//
//  Created by Paul Solt on 2/2/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Link our User Interface to our code 

// Inputs/Outputs
@property (weak, nonatomic) IBOutlet UITextField *frameWidthTextField;
@property (weak, nonatomic) IBOutlet UITextField *frameHeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageWidthTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageHeightTextField;


@property (weak, nonatomic) IBOutlet UILabel *verticalBorder;
@property (weak, nonatomic) IBOutlet UILabel *horizontalBorder;

// Actions

- (IBAction)calculatePressed:(id)sender;

@end
