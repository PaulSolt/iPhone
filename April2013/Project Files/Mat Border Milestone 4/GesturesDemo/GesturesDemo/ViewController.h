//
//  ViewController.h
//  GesturesDemo
//
//  Created by Paul on 2/16/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    float value;
}


@property (weak, nonatomic) IBOutlet UIImageView *starImageView;
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;

@end
