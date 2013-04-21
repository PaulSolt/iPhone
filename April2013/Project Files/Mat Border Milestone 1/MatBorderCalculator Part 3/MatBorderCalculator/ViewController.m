//
//  ViewController.m
//  MatBorderCalculator
//
//  Created by Paul Solt on 2/2/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Write our code below here:

// Function called when our button is pressed
- (IBAction)calculatePressed:(id)sender {
    
    NSLog(@"Calculate Pressed");
 
    
    [self calculateSizesPart1];
    
    // TODO: Uncomment the line below to see the code update
//    [self calculateSizesPart2];
    
    [self hideKeyboard];
}

- (void)calculateSizesPart1 {
    float imageWidth = 7;
    float imageHeight = 5;
    
    float frameWidth = 10;
    float frameHeight = 8;
    
    // Do the math to solve
    
    float verticalBorder = (frameWidth - imageWidth) / 2.0;
    float horizontalBorder = (frameHeight - imageHeight) / 2.0;
    
    NSLog(@"Vertical border: %f", verticalBorder);
    NSLog(@"Horizontal border: %f", horizontalBorder);
}

- (void)calculateSizesPart2 {
    
    // grab the dimensions from the user
    
    float imageWidth = [self.imageWidthTextField.text floatValue];
    float imageHeight = [self.imageHeightTextField.text floatValue];
    
    float frameWidth = [self.frameWidthTextField.text floatValue];
    float frameHeight = [self.frameHeightTextField.text floatValue];
    
    // Do math to calculate the border widths
    
    float verticalBorder = (frameWidth - imageWidth) / 2.0;
    float horizontalBorder = (frameHeight - imageHeight) / 2.0;

    // Display the output using a NSString format code and limit it to 2 decimal places
    
    self.horizontalBorder.text = [NSString stringWithFormat:@"%.2f", horizontalBorder];
    self.verticalBorder.text = [NSString stringWithFormat:@"%.2f", verticalBorder];
}

- (void)hideKeyboard {
    
    [self.frameWidthTextField resignFirstResponder];
    [self.frameHeightTextField resignFirstResponder];
    
    [self.imageWidthTextField resignFirstResponder];
    [self.imageHeightTextField resignFirstResponder];
}

@end
