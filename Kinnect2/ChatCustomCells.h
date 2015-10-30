//
//  ChatCustomCells.h
//  Objective-C-Practice
//
//  Created by administrator on 10/21/15.
//  Copyright (c) 2015 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatCustomCells : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *chatContactImage;
@property (weak, nonatomic) IBOutlet UILabel *chatContactName;
@property (weak, nonatomic) IBOutlet UILabel *chatLastMessage;
@property (weak, nonatomic) IBOutlet UIImageView *chatLastMessageImage;

@end
