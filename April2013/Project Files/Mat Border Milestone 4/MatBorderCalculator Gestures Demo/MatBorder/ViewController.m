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
    
    // We can call the calculate button if the return button or "enter" is pressed
    [self calculateButtonPressed:nil];
    
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
    
    self.imageStepper.titleLabel.text = @"Image";
    self.frameStepper.titleLabel.text = @"Frame";
    
    self.imageStepper.delegate = self;
    self.frameStepper.delegate = self;
    
    self.imageStepper.widthWholeNumber = 7;
    self.imageStepper.heightWholeNumber = 5;
    
    self.frameStepper.widthWholeNumber = 10;
    self.frameStepper.heightWholeNumber = 8;
    
    
    CGRect viewFrame = CGRectMake(70, 260, 180, 180);
    self.matView = [[MatView alloc] initWithFrame:viewFrame];
    
    self.matView.imageView.image = [UIImage imageNamed:@"art.jpg"];
    
    [self.view addSubview:self.matView];
    
    // resize based on new dimensions
    [self resizeMatPreview];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Start our code here

- (IBAction)calculateButtonPressed:(id)sender {

    [self resizeMatPreview];
    [self calculateBorder];
    
    // Hide the keyboards
    [self hideKeyboard];
}

- (void)hideKeyboard {
    NSLog(@"Hide Keyboard");
    
    [self.imageWidthTextField resignFirstResponder];
    [self.imageHeightTextField resignFirstResponder];
    [self.frameHeightTextField resignFirstResponder];
    [self.frameWidthTextField resignFirstResponder];
    
}

- (void)calculateBorder {
    
    float imageWidth = self.imageStepper.widthWholeNumber;
    float imageHeight = self.imageStepper.heightWholeNumber;
    
    float frameWidth = self.frameStepper.widthWholeNumber;
    float frameHeight = self.frameStepper.heightWholeNumber;
    
    float borderWidth = (frameWidth - imageWidth) / 2;
    float borderHeight = (frameHeight - imageHeight) / 2;
    
    self.horizontalBorderLabel.text = [NSString stringWithFormat:@"%.2f", borderHeight];
    self.verticalBorderLabel.text = [NSString stringWithFormat:@"%.2f", borderWidth];
}

- (void)resizeMatPreview {
    
    float imageWidth = self.imageStepper.widthWholeNumber;
    float imageHeight = self.imageStepper.heightWholeNumber;
    
    float frameWidth = self.frameStepper.widthWholeNumber;
    float frameHeight = self.frameStepper.heightWholeNumber;

    self.matView.imageSizeInches = CGSizeMake(imageWidth, imageHeight);
    self.matView.frameSizeInches = CGSizeMake(frameWidth, frameHeight);
    
    [self.matView setNeedsLayout];
}

- (IBAction)imagePressed:(id)sender {
    
    UIImage *image = [UIImage imageNamed:@"art.jpg"];
    
    NSLog(@"image: %p : %@", image, image);
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
//    [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];

    
    
    [imagePicker setDelegate:self];
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];

    self.matView.imageView.image = image;
    
    // Dimiss the image picker
    [self dismissViewControllerAnimated:YES completion:nil];
}

// Measurement delegate protocol

- (void)measurementStepperDidUpdate:(MeasurementStepper *)stepper {
    // After the UI is changed, we need to update our preview and recalculate
    [self resizeMatPreview];
    [self calculateBorder];
}

@end
