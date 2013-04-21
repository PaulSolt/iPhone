//
//  ListViewController.m
//  MatBorder
//
//  Created by Paul on 2/13/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        NSLog(@"Init List");
        
        
    }
    return self;
}

- (void)loadView {
    [super loadView];

    NSLog(@"tableview: %@", self.tableView);
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];

}
- (IBAction)doneButtonPressed:(id)sender {
    NSLog(@"Done");
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


// TableView Data Source Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"rows");
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *myIdentifier = @"MyId";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myIdentifier];
    
    if(!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myIdentifier];
    }
    
    int row = indexPath.row;
    
    NSString *rowString = [NSString stringWithFormat:@"Row #%d", row];
    
    cell.textLabel.text = rowString;
    
    return cell;
    
    
}

// UITableView Delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"Row selected; %d", indexPath.row);
}

@end
