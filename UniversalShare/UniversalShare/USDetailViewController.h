//
//  USDetailViewController.h
//  UniversalShare
//
//  Created by SNS Technologies on 03/01/13.
//  Copyright (c) 2013 SNS Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface USDetailViewController : UIViewController
- (IBAction)btnPhoto_pressed:(id)sender;
- (IBAction)btnShare_pressed:(id)sender;
@property (retain, nonatomic) IBOutlet UITextView *txtContent;

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
