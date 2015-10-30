//
//  ViewController.m
//  Objective-C-Practice
//
//  Created by administrator on 9/16/15.
//  Copyright (c) 2015 administrator. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "CustomCell.h"
@interface ViewController ()
@property(nonatomic,copy)NSString* whichCalls;
@end

@implementation ViewController
@synthesize recentCalls = _recentCalls;
@synthesize favouriteCalls = _favouriteCalls;
@synthesize contactCalls = _contactCalls;
@synthesize CallTableView = _CallTableView;
@synthesize whichCalls = _whichCalls;



- (void)viewDidLoad {
    [super viewDidLoad];
    _whichCalls = @"recentCalls";
    _recentCalls = [[NSArray alloc]initWithObjects:@"Salman",@"Hammad",@"Hassan",@"Kinnect2", nil];
    _favouriteCalls = [[NSArray alloc]initWithObjects:@"Amna Nabi",@"Mubasher",@"Ebad",@"Kinnect2", nil];
    _contactCalls = [[NSArray alloc]initWithObjects:@"Shahroz",@"Harral",@"iOS",@"Kinnect2", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if([_whichCalls isEqualToString:@"recentCalls"])
    {
        return _recentCalls.count;
    }
    else if([_whichCalls isEqualToString:@"favouriteCalls"])
    {
        return _favouriteCalls.count;
    }
    else
    {
        return _contactCalls.count;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *customCell = [_CallTableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    //    if(!customCell){
    //        customCell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    //    }
    if([_whichCalls isEqualToString:@"recentCalls"])
    {
        customCell.photoImage.image = [UIImage imageNamed:@"apple.jpg"];
        customCell.photoImage.layer.cornerRadius = 16;
        customCell.arrowImage.image = [UIImage imageNamed:@"arrow.png"];
        customCell.arrowImage.layer.cornerRadius = 11;
        customCell.nameLabel.text = [_recentCalls objectAtIndex:indexPath.row];
        //customCell.detailLabel.text = [_contactArray objectAtIndex:indexPath.row];
        customCell.detailLabel.text = @"Jan 03,2016 at 1:24 AM";
        return customCell;
    }
    else if([_whichCalls isEqualToString:@"favouriteCalls"])
    {
        customCell.photoImage.image = [UIImage imageNamed:@"apple.jpg"];
        customCell.photoImage.layer.cornerRadius = 20;
        customCell.arrowImage.image = [UIImage imageNamed:@"arrow.png"];
        customCell.arrowImage.layer.cornerRadius = 11;

        customCell.nameLabel.text = [_favouriteCalls objectAtIndex:indexPath.row];
        //customCell.detailLabel.text = [_contactArray objectAtIndex:indexPath.row];
        customCell.detailLabel.text = @"Jan 03,2016 at 1:24 AM";
        return customCell;
    }
    else
    {
        customCell.photoImage.image = [UIImage imageNamed:@"apple.jpg"];
        customCell.photoImage.layer.cornerRadius = 20;
        customCell.arrowImage.image = [UIImage imageNamed:@"arrow.png"];
        customCell.arrowImage.layer.cornerRadius = 11;

        customCell.nameLabel.text = [_contactCalls objectAtIndex:indexPath.row];
        //customCell.detailLabel.text = [_contactArray objectAtIndex:indexPath.row];
        customCell.detailLabel.text = @"Jan 03,2016 at 1:24 AM";
        return customCell;
    }

//    customCell.photoImage.image = [UIImage imageNamed:@"apple.jpg"];
//    customCell.arrowImage.image = [UIImage imageNamed:@"arrow.png"];
//    customCell.nameLabel.text = [_contactArray objectAtIndex:indexPath.row];
//    //customCell.detailLabel.text = [_contactArray objectAtIndex:indexPath.row];
//    customCell.detailLabel.text = @"Jan 03,2016 at 1:24 AM";
//    return customCell;

}

//-(void)getSelection
//{
//    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
//    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
//    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
//}

- (IBAction)recentCallsButton:(id)sender {
    _whichCalls = @"recentCalls";
    [_CallTableView reloadData];
}

- (IBAction)favouriteCallsButton:(id)sender {
    _whichCalls = @"favouriteCalls";
    [_CallTableView reloadData];
}

- (IBAction)contactCallsButton:(id)sender {
    _whichCalls = @"contactCalls";
    [_CallTableView reloadData];
}
@end
