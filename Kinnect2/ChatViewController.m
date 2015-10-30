//
//  ChatViewController.m
//  Objective-C-Practice
//
//  Created by administrator on 10/21/15.
//  Copyright (c) 2015 administrator. All rights reserved.
//

#import "ChatViewController.h"
#import "ChatCustomCells.h"
@interface ChatViewController ()
@property(nonatomic,copy)NSString* whichContactsToShow;

@end

@implementation ChatViewController
@synthesize kinnect2ChattingContacts = _kinnect2ChattingContacts;
@synthesize phoneChatContacts = _phoneChatContacts;
@synthesize allChattingContacts = _allChattingContacts;
@synthesize whichContactsToShow = _whichContactsToShow;

- (void)viewDidLoad {
    [super viewDidLoad];
    _whichContactsToShow = @"kinnect2Contacts";
    _kinnect2ChattingContacts = [[NSArray alloc]initWithObjects:@"Salman",@"Hammad",@"Hassan",@"Kinnect2", nil];
    _phoneChatContacts = [[NSArray alloc]initWithObjects:@"Amna Nabi",@"Mubasher",@"Ebad",@"Kinnect2", nil];
    _allChattingContacts = [[NSMutableArray alloc]initWithArray:_kinnect2ChattingContacts copyItems:NO];
    [_allChattingContacts addObjectsFromArray:_phoneChatContacts];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if([_whichContactsToShow isEqualToString:@"kinnect2Contacts"])
    {
        return _kinnect2ChattingContacts.count;
    }
    else if([_whichContactsToShow isEqualToString:@"phoneContacts"])
    {
        return _phoneChatContacts.count;
    }
    else
    {
        return _allChattingContacts.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ChatCustomCells* customCell = [_chatTableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if([_whichContactsToShow isEqualToString:@"kinnect2Contacts"])
    {
        customCell.chatContactImage.image = [UIImage imageNamed:@"apple.jpg"];
        customCell.chatContactName.layer.cornerRadius = 16;
        customCell.chatLastMessageImage.image = [UIImage imageNamed:@"apple.jpg"];
        customCell.chatLastMessageImage.layer.cornerRadius = 11;
        customCell.chatContactName.text = [_kinnect2ChattingContacts objectAtIndex:indexPath.row];
        //customCell.detailLabel.text = [_contactArray objectAtIndex:indexPath.row];
        customCell.chatLastMessage.text = @"Hello How are you ???";
        return customCell;
    }
    else if([_whichContactsToShow isEqualToString:@"phoneContacts"])
    {
        customCell.chatContactImage.image = [UIImage imageNamed:@"apple.jpg"];
        customCell.chatContactName.layer.cornerRadius = 16;
        customCell.chatLastMessageImage.image = [UIImage imageNamed:@"apple.jpg"];
        customCell.chatLastMessageImage.layer.cornerRadius = 11;
        customCell.chatContactName.text = [_phoneChatContacts objectAtIndex:indexPath.row];
        //customCell.detailLabel.text = [_contactArray objectAtIndex:indexPath.row];
        customCell.chatLastMessage.text = @"Hello How are you ???";
        return customCell;
    }
    else
    {
        customCell.chatContactImage.image = [UIImage imageNamed:@"apple.jpg"];
        customCell.chatContactName.layer.cornerRadius = 16;
        customCell.chatLastMessageImage.image = [UIImage imageNamed:@"apple.jpg"];
        customCell.chatLastMessageImage.layer.cornerRadius = 11;
        customCell.chatContactName.text = [_allChattingContacts objectAtIndex:indexPath.row];
        //customCell.detailLabel.text = [_contactArray objectAtIndex:indexPath.row];
        customCell.chatLastMessage.text = @"Hello How are you ???";
        return customCell;
    }

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)kinnect2ChatButton:(id)sender {
    _whichContactsToShow = @"kinnect2Contacts";
    [_chatTableView reloadData];
}

- (IBAction)phoneChatButton:(id)sender {
    _whichContactsToShow = @"phoneContacts";
    [_chatTableView reloadData];
}

- (IBAction)allChatButton:(id)sender {
    _whichContactsToShow = @"allContacts";
    [_chatTableView reloadData];
}
@end
