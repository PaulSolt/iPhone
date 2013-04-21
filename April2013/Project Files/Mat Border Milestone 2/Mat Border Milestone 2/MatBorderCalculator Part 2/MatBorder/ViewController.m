//
//  ViewController.m
//  MatBorder
//
//  Created by Paul on 2/2/13.
//   (c) 2013 Paul Solt. All rights reserved.
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
    self.frameHeightTextField.delegate = self;
    self.frameWidthTextField.delegate = self;
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
    
    // **BUG **
    [self sizeForPreview];
    [self sizeForPreview]; // **BUG** Do it twice, since it's not updating display

}

- (void)hideKeyboard {
    [self.imageWidthTextField resignFirstResponder];
    [self.imageHeightTextField resignFirstResponder];
    [self.frameHeightTextField resignFirstResponder];
    [self.frameWidthTextField resignFirstResponder];    
}

- (void)calculateBorder {
    
    float imageWidth = [self.imageWidthTextField text].floatValue;
    float imageHeight = self.imageHeightTextField.text.floatValue;
    
    float frameWidth = [self.frameWidthTextField text].floatValue;
    float frameHeight = [self.frameHeightTextField text].floatValue;
    
    float borderWidth = (frameWidth - imageWidth) / 2;
    float borderHeight = (frameHeight - imageHeight) / 2;

    self.horizontalBorderLabel.text = [NSString stringWithFormat:@"%.2f", borderHeight];
    self.verticalBorderLabel.text = [NSString stringWithFormat:@"%.2f", borderWidth];
}


- (void)sizeForPreview {
    
    float maxEdge = 150;
    
    float frameWidth = [self.frameWidthTextField text].floatValue;
    float frameHeight = [self.frameHeightTextField text].floatValue;

    
    float finalWidth = 0;
    float finalHeight = 0;
    float pixelsPerInchRatio = 0;
    
    if(frameWidth > 0 && frameHeight > 0) {
        if (frameWidth > frameHeight) {
            finalWidth = maxEdge;
            finalHeight = maxEdge * (frameHeight / frameWidth); // ratio
        
            pixelsPerInchRatio = maxEdge / frameWidth;
            
        } else {
            // height is bigger (or equal)
            
            finalHeight = maxEdge;
            finalWidth = maxEdge * (frameWidth / frameHeight); // ratio
            
            pixelsPerInchRatio = maxEdge / frameHeight;
        }

        NSLog(@"Final size: %f x %f", finalWidth, finalHeight);
        
        // Link to code for image and mat border

        self.matBorderView.bounds = CGRectMake(0, 0, finalWidth, finalHeight);

        float imageWidth = self.imageWidthTextField.text.floatValue;
        float imageHeight = self.imageHeightTextField.text.floatValue;
        
        self.imageView.bounds = CGRectMake(0, 0, imageWidth * pixelsPerInchRatio,
                                       imageHeight * pixelsPerInchRatio);
        
        [self.view layoutIfNeeded];
    }
}

@end
