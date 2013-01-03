//
//  USDetailViewController.h
//  UniversalShare
//
//  Created by SNS Technologies on 03/01/13.
//  Copyright (c) 2013 SNS Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface USDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
