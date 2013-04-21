//
//  ViewController.h
//  MatBorder
//
//  Created by Paul on 2/2/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MatView.h"
#import "ListViewController.h"

@interface ViewController : UIViewController <UITextFieldDelegate,
UINavigationControllerDelegate, UIImagePickerControllerDelegate>

// Get and set values in the text box
@property (weak, nonatomic) IBOutlet UITextField *frameWidthTextField;
@property (weak, nonatomic) IBOutlet UITextField *frameHeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageWidthTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageHeightTextField;

// Actions

- (IBAction)calculateButtonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;


// Update the border size labels
@property (weak, nonatomic) IBOutlet UILabel *horizontalBorderLabel;
@property (weak, nonatomic) IBOutlet UILabel *verticalBorderLabel;

// For dynamic drawing (resize the views)
@property (weak, nonatomic) IBOutlet UIView *matBorderView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

// UI based on code
@property (strong, nonatomic) MatView *matView;

- (IBAction)imagePressed:(id)sender;
- (IBAction)listButtonPressed:(id)sender;

@end
