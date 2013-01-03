//
//  USDetailViewController.h
//  UniversalShare
//
//  Created by SNS Technologies on 03/01/13.
//  Copyright (c) 2013 SNS Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface USDetailViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    IBOutlet UIButton *btnFB;
     IBOutlet UIButton *btnTw;
     IBOutlet UIButton *btnLk;
     IBOutlet UIButton *btnEm; 
    IBOutlet UIButton *btnSm;

    
    IBOutlet UIImageView *imgPhoto;
    UIImagePickerController *imagePicker;
}
- (IBAction)btnFB:(id)sender;
- (IBAction)btnTwit:(id)sender;
- (IBAction)btnLink:(id)sender;
- (IBAction)btnEmail:(id)sender;
- (IBAction)btnSms:(id)sender;
- (IBAction)btnShareNow:(id)sender;

- (IBAction)btnPhoto_pressed:(id)sender;
- (IBAction)btnShare_pressed:(id)sender;
@property (retain, nonatomic) IBOutlet UITextView *txtContent;

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (retain, nonatomic) IBOutlet UIView *vwOptions;

@end
