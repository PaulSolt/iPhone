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
    
    
    // Add a subview via code
    CGRect viewFrame = CGRectMake(70, 260, 180, 180);
    self.matView = [[MatView alloc] initWithFrame:viewFrame];
    self.matView.imageView.image = [UIImage imageNamed:@"art.jpg"];
    [self.view addSubview:self.matView];
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

    [self resizeMatPreview];

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
    
    float imageWidth = [self.imageWidthTextField text].floatValue;
    float imageHeight = self.imageHeightTextField.text.floatValue;
    
    float frameWidth = [self.frameWidthTextField text].floatValue;
    float frameHeight = [self.frameHeightTextField text].floatValue;
    
    float borderWidth = (frameWidth - imageWidth) / 2;
    float borderHeight = (frameHeight - imageHeight) / 2;
    
    self.horizontalBorderLabel.text = [NSString stringWithFormat:@"%.2f", borderHeight];
    self.verticalBorderLabel.text = [NSString stringWithFormat:@"%.2f", borderWidth];
}

- (void)resizeMatPreview {
    float imageWidth = [self.imageWidthTextField text].floatValue;
    float imageHeight = self.imageHeightTextField.text.floatValue;
    
    float frameWidth = [self.frameWidthTextField text].floatValue;
    float frameHeight = [self.frameHeightTextField text].floatValue;

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
    
    [self.matView.imageView setImage:image];
    
    // Dimiss the image picker
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
