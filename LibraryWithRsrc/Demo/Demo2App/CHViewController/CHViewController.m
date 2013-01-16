//
//  CHViewController.m
//  Demo2App
//
//  Created by Olivier Halligon on 13/01/13.
//  Copyright (c) 2013 AliSoftware. All rights reserved.
//

#import "CHViewController.h"
#import "Demo2Lib.h"
#import "CHLibViewController.h"

@interface CHViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@end




@implementation CHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.label.text = NSLocalizedStringFromTableInBundle(@"greetings", nil, [Demo2Lib resourceBundle], @"");
    //self.label.text = [Demo2Lib greetings]; // Localized text from library
    self.imageView.image = [Demo2Lib cocoaHeadsImage];  // Image from library
}

- (IBAction)showModalVC:(id)sender
{
    UIViewController* libVC = [[CHLibViewController alloc] init]; // View Controller with XIB from library, itself using image from lib
    [self presentViewController:libVC animated:YES completion:nil];
}

@end
