//
//  TavleTableViewControllerHello.m
//  Table-View-Dynamic-Content
//
//  Created by K4fle D. Manish on 13/9/20.
//  Copyright © 2020 K4fledmanish. All rights reserved.
//

#import "TavleTableViewControllerHello.h"

@interface TavleTableViewControllerHello ()

@end

@implementation TavleTableViewControllerHello

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
    arrListOfSectionHeaderTitles = @[@"A", @"M", @"S"];
    
    
    arrListOfEmployeeNames = @[
                                @[@"Aaohn", @"Ann"],
                                @[@"Manish", @"Mani"],
                                @[@"Subin", @"Sumit"]
                            ];
    
    arrListOfEmployeeImages = @[
                                @[@"Teja.png", @"2.png"],
                                @[@"3.jpg", @"4.jpg"],
                                @[@"5.png", @"6.png"]
                            ];
       
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arrListOfEmployeeNames [section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *simpleidentifier = @"Simpleidentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleidentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    
    cell.textLabel.text = arrListOfEmployeeNames[indexPath.section][indexPath.row];
    cell.detailTextLabel.text = @"View";
    
    
    
    
    NSString *imageName = arrListOfEmployeeImages[indexPath.section][indexPath.row];
    
    UIImage *image = [UIImage imageNamed:imageName];
    cell.imageView.image = image;
    
    
    return cell;
    
   
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return arrListOfSectionHeaderTitles[section];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
