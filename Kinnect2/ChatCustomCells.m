//
//  ChatCustomCells.m
//  Objective-C-Practice
//
//  Created by administrator on 10/21/15.
//  Copyright (c) 2015 administrator. All rights reserved.
//

#import "ChatCustomCells.h"

@implementation ChatCustomCells
@synthesize chatContactImage = _chatContactImage;
@synthesize chatContactName = _chatContactName;
@synthesize chatLastMessage = _chatLastMessage;
@synthesize chatLastMessageImage = _chatLastMessageImage;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
