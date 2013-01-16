//
//  CHLibViewController.m
//  Demo2Lib
//
//  Created by Olivier Halligon on 13/01/13.
//  Copyright (c) 2013 AliSoftware. All rights reserved.
//

#import "CHLibViewController.h"
#import "Demo2Lib.h"

@interface CHLibViewController ()

@end

@implementation CHLibViewController

- (id)init
{
    self = [super initWithNibName:@"CHLibViewController" bundle:[Demo2Lib resourceBundle]];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)dismiss:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
