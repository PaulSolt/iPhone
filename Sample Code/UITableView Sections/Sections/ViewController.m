//
//  ViewController.m
//  Sections
//
//  Created by Paul Solt on 8/12/13.
//  Copyright (c) 2013 Paul Solt. All rights reserved.
//

#import "ViewController.h"

static NSString * const kCellIdentifier= @"Cell";

@interface ViewController () <UITableViewDataSource> {
    NSMutableArray *_sectionTitleArray;
    NSMutableArray *_sectionDataArray;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    _sectionTitleArray = [@[@"first", @"second", @"third"] mutableCopy];
    
    // All the rows of data, normally these would be objects you create, rather than just
    //  simple NSString values inside the arrays. We'll populate with some NSArray's to demonstrate
    //  the basic example
    _sectionDataArray = [@[ @[@"1", @"2", @"3"], @[@"a", @"b", @"c"], @[@"last row"]] mutableCopy];
    
    // Register a basic cell for the
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellIdentifier];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Get the count of titles, which relates to how many sections we have.
    return [_sectionTitleArray count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *sectionTitle = [_sectionTitleArray objectAtIndex:section];
    
    return sectionTitle;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    NSArray *rowData = [_sectionDataArray objectAtIndex:section];
    
    return [rowData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];

    // Get row data
    NSArray *rowData = [_sectionDataArray objectAtIndex:indexPath.section];
    
    // Grab the object for the row
    NSString *titleText = [rowData objectAtIndex:indexPath.row]; 
    cell.textLabel.text = titleText;

    return cell;
}

@end
