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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
        
    // Set the delegate for both steppers (we want to get callbacks)
    self.imageStepper.delegate = self;
    self.frameStepper.delegate = self;
    
    // set the default values
    self.imageStepper.titleLabel.text = @"Image";
    self.frameStepper.titleLabel.text = @"Frame";

    self.imageStepper.widthWholeNumber = 7;
    self.imageStepper.heightWholeNumber = 5;
    
    self.frameStepper.widthWholeNumber = 10;
    self.frameStepper.heightWholeNumber = 8;
    
    
    // Create the matview programatically as an example
    CGRect viewFrame = CGRectMake(70, 260, 180, 180);
    self.matView = [[MatView alloc] initWithFrame:viewFrame];
    
    //set the delegate to receive events from view
    self.matView.delegate = self;
    self.matView.imageView.image = [UIImage imageNamed:@"art.jpg"];
    [self.view addSubview:self.matView];
    
    // resize/calculate based on new dimensions on view load
    [self calculateBorderAndResize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)calculateBorderAndResize {
    
    float imageWidth = (int)self.imageStepper.widthWholeNumber + self.imageStepper.widthNumerator / self.imageStepper.widthDenominator;
    float imageHeight = (int)self.imageStepper.heightWholeNumber + self.imageStepper.heightNumerator / self.imageStepper.heightDenominator;
    
    float frameWidth = (int)self.frameStepper.widthWholeNumber + self.frameStepper.widthNumerator / self.frameStepper.widthDenominator;
    float frameHeight = (int)self.frameStepper.heightWholeNumber + self.frameStepper.heightNumerator / self.frameStepper.heightDenominator;
    
    
    // Calculate the border width
    float borderWidth = (frameWidth - imageWidth) / 2;
    float borderHeight = (frameHeight - imageHeight) / 2;
    
    self.horizontalBorderLabel.text = [NSString stringWithFormat:@"%.2f", borderHeight];
    self.verticalBorderLabel.text = [NSString stringWithFormat:@"%.2f", borderWidth];
    
    // Resize the preview
    
    self.matView.imageSizeInches = CGSizeMake(imageWidth, imageHeight);
    self.matView.frameSizeInches = CGSizeMake(frameWidth, frameHeight);
    
    [self.matView setNeedsLayout];
}

- (void)changeImage {
    
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
    
    [self calculateBorderAndResize];
}

// MatView delegate protocol

- (void)matViewDidTapImage:(MatView *)matView {
    NSLog(@"Image");
    [self changeImage];
}

- (void)matViewDidTapBorder:(MatView *)matView {
    NSLog(@"Border");
}

@end
