//
//  ViewController.h
//  MemoryTest
//
//  Created by Paul Solt on 2/13/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)loadImageNoCleanupPressed:(id)sender;
- (IBAction)loadImageAndCleanupPressed:(id)sender;


@end
