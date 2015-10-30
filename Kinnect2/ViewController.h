//
//  ViewController.h
//  Objective-C-Practice
//
//  Created by administrator on 9/16/15.
//  Copyright (c) 2015 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *CallTableView;
@property (nonatomic,copy) NSArray* recentCalls;
@property (nonatomic,copy) NSArray* favouriteCalls;
@property (nonatomic,copy) NSArray* contactCalls;
- (IBAction)recentCallsButton:(id)sender;
- (IBAction)favouriteCallsButton:(id)sender;
- (IBAction)contactCallsButton:(id)sender;

@end

