//
//  USDetailViewController.m
//  UniversalShare
//
//  Created by SNS Technologies on 03/01/13.
//  Copyright (c) 2013 SNS Technologies. All rights reserved.
//

#import "USDetailViewController.h"

@interface USDetailViewController ()
- (void)configureView;
@end

@implementation USDetailViewController

@synthesize txtContent = _txtContent;
@synthesize detailItem = _detailItem;
@synthesize detailDescriptionLabel = _detailDescriptionLabel;

- (void)dealloc
{
    [_detailItem release];
    [_detailDescriptionLabel release];
    [_txtContent release];
    [imgPhoto release];
    [super dealloc];
}

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        [_detailItem release]; 
        _detailItem = [newDetailItem retain]; 

        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
     
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (IBAction)btnPhoto_pressed:(id)sender 
{
    imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.SourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.delegate = self;   
    [self presentModalViewController:imagePicker animated:YES];
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)img editingInfo:(NSDictionary *)editInfo {
//    if (imgPhoto.image == nil) {
        imgPhoto.image = img;
    [picker dismissModalViewControllerAnimated:YES];
//        return;
        
//    }
    
//    if (imageView2.image == nil) {
//        imageView2.image = img;
//        [[picker parentViewController] dismissModalViewControllerAnimated:YES];
//        return;
//    }
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissModalViewControllerAnimated:YES];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidUnload
{
    [self setTxtContent:nil];
    [imgPhoto release];
    imgPhoto = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}
							


- (IBAction)btnShare_pressed:(id)sender {
}


- (void)textViewDidBeginEditing:(UITextView *)textView {
    
    if ([_txtContent.text isEqualToString: @"Content goes here..."]) {
        [_txtContent setText:@""];
    }
    
    NSLog(@"did begin editing");
}

@end
