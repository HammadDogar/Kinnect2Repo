//
//  CustomCell.h
//  Objective-C-Practice
//
//  Created by administrator on 10/12/15.
//  Copyright (c) 2015 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *photoImage;
@property (weak, nonatomic) IBOutlet UIImageView *arrowImage;



@end
