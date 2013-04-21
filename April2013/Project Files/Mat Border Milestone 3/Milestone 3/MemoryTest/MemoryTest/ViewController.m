//
//  ViewController.m
//  MemoryTest
//
//  Created by Paul Solt on 2/13/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)loadImageAndCleanup {
    // desk.jpg is 2.8mb compressed, ~45mb uncompressed
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Kaylee" ofType:@"jpg"];
    
    UIImage *deskImage = [[UIImage alloc] initWithContentsOfFile:path];
    
    // Uncompresses the image for display
    self.imageView.image = deskImage;
    
    // Release our "ownership" of the image, transfered to the imageView object
    [deskImage release];
}

- (void)loadImageWithoutCleanup {
    
    // dog.jpg is 2.3mb jpg compressed, ~30.6mb uncompressed
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Kaylee" ofType:@"jpg"];
    
    UIImage *dogImage = [[UIImage alloc] initWithContentsOfFile:path];
    
    // Uncompresses the image for display
    self.imageView.image = dogImage;
}

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

- (void)dealloc {
    [_imageView release];
    [super dealloc];
}

- (IBAction)loadImageNoCleanupPressed:(id)sender {
    NSLog(@"Load NO release");
    
    [self loadImageWithoutCleanup];
}

- (IBAction)loadImageAndCleanupPressed:(id)sender {
    NSLog(@"Load AND release");
    
    [self loadImageAndCleanup];
}
@end
