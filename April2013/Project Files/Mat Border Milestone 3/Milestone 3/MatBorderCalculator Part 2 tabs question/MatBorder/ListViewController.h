//
//  ListViewController.h
//  MatBorder
//
//  Created by Paul on 2/13/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>


@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)doneButtonPressed:(id)sender;

@end
