//
//  LOPColorListViewController.m
//  Solarized
//
//  Created by Pedro Lopes on 17/03/14.
//  Copyright (c) 2014 Pedro Lopes. All rights reserved.
//

#import "LOPColorListViewController.h"
#import "LOPHelper.h"
#import "LOPColorTableViewCell.h"

@interface LOPColorListViewController ()

@property (nonatomic) NSArray *colors;

@end

@implementation LOPColorListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

# pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[LOPColorTableViewCell class] forCellReuseIdentifier:@"cell"];
    
    // table style
    self.tableView.backgroundColor = [UIColor colorWithRed:0.99 green:0.96 blue:0.89 alpha:1.00];
    self.tableView.separatorColor = [UIColor clearColor];
    self.tableView.rowHeight = 64.0f;
    
    // load colors
    self.colors = [LOPHelper getColors];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - UITableViewControler

// Single section in table view
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

// Static row count for 16 colors
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.colors count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LOPColorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
   // cell.textLabel.text = [[self colorForIndexPath:indexPath] valueForKey:@"name"];
    [cell setColor:[self colorForIndexPath:indexPath]];
    
    return cell;
}


// rows cannot be edited
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}


// Rows cannot be moved
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return NO;
}

# pragma mark - Actions

-(NSDictionary *)colorForIndexPath:(NSIndexPath *)indexPath {
    return self.colors[indexPath.row];
}

@end
