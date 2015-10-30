//
//  CustomCell.m
//  Objective-C-Practice
//
//  Created by administrator on 10/12/15.
//  Copyright (c) 2015 administrator. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize nameLabel = _nameLabel;
@synthesize detailLabel = _detailLabel;
@synthesize photoImage = _photoImage;
@synthesize arrowImage = _arrowImage;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
