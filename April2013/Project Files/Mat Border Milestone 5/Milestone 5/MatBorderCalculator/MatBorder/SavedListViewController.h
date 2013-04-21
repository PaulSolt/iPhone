//
//  SavedListViewController.h
//  MatBorder
//
//  Created by Paul Solt on 2/18/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SavedListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)doneButtonPressed:(id)sender;

@end
