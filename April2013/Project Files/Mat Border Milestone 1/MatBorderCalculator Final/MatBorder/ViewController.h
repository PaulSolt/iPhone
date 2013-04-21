//
//  ViewController.h
//  MatBorder
//
//  Created by Paul on 2/2/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

// Get and set values in the text box
@property (weak, nonatomic) IBOutlet UITextField *frameWidthTextField;
@property (weak, nonatomic) IBOutlet UITextField *frameHeigthTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageWidthTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageHeightTextField;

// Actions

- (IBAction)calculateButtonPressed:(id)sender;


// Update the border size labels
@property (weak, nonatomic) IBOutlet UILabel *horizontalBorderLabel;
@property (weak, nonatomic) IBOutlet UILabel *verticalBorderLabel;


@end
