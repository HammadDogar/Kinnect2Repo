//
//  ChatViewController.h
//  Objective-C-Practice
//
//  Created by administrator on 10/21/15.
//  Copyright (c) 2015 administrator. All rights reserved.
//

#import "ViewController.h"

@interface ChatViewController : ViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *chatTableView;
@property (nonatomic,copy) NSArray* kinnect2ChattingContacts;
@property (nonatomic,copy) NSArray* phoneChatContacts;
@property (nonatomic,copy) NSMutableArray* allChattingContacts;
- (IBAction)kinnect2ChatButton:(id)sender;
- (IBAction)phoneChatButton:(id)sender;
- (IBAction)allChatButton:(id)sender;

@end
