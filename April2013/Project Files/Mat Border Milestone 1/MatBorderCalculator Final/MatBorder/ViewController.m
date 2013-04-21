//
//  ViewController.m
//  MatBorder
//
//  Created by Paul on 2/2/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    // Any additional checks to ensure you have the correct textField here.
    [textField resignFirstResponder];
    
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.imageWidthTextField.delegate = self;
    self.imageHeightTextField.delegate = self;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Start our code here

- (IBAction)calculateButtonPressed:(id)sender {
    
    
    NSLog(@"Calculate Pressed");
    
    [self calculateBorder];
    
    // Hide the keyboards
    [self hideKeyboard];
}

- (void)hideKeyboard {
    NSLog(@"Hide Keyboard");
    
    [self.imageWidthTextField resignFirstResponder];
    [self.imageHeightTextField resignFirstResponder];
    [self.frameHeigthTextField resignFirstResponder];
    [self.frameWidthTextField resignFirstResponder];
    
}

- (void)calculateBorder {
    
//    float imageWidth = 7;
//    float imageHeight = 5;
//    
//    float frameWidth = 10;
//    float frameHeight = 8;
    
    float imageWidth = [self.imageWidthTextField text].floatValue;
    float imageHeight = self.imageHeightTextField.text.floatValue;
    
    float frameWidth = [self.frameWidthTextField text].floatValue;
    float frameHeight = [self.frameHeigthTextField text].floatValue;
    
    float borderWidth = (frameWidth - imageWidth) / 2;
    float borderHeight = (frameHeight - imageHeight) / 2;
    
    NSLog(@"Border Width: %f", borderWidth);
    NSLog(@"Border Height: %f", borderHeight);

    self.horizontalBorderLabel.text = [NSString stringWithFormat:@"%.2f", borderHeight];
    self.verticalBorderLabel.text = [NSString stringWithFormat:@"%.2f", borderWidth];
}









@end
