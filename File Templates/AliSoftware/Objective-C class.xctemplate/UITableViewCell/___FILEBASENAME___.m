//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Imports

#import "___FILEBASENAME___.h"

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Types

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Defines & Constants

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Macros

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Private Interface

@interface ___FILEBASENAMEASIDENTIFIER___ ()

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Private Properties

@end

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Implementation

@implementation ___FILEBASENAMEASIDENTIFIER___

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Synthesize

/* Outlets ********************************************************************/

/* Public *********************************************************************/

/* Private ********************************************************************/

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Setup & Teardown

- (void)commonInit___FILEBASENAMEASIDENTIFIER___
{
    // Your common initialization code here
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self commonInit___FILEBASENAMEASIDENTIFIER___];
    }
    return self;
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString*)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self commonInit___FILEBASENAMEASIDENTIFIER___];
    }
    return self;
}

- (void)dealloc
{
    // Your code here

    [super dealloc];
}


////////////////////////////////////////////////////////////////////////////////
#pragma mark - Superclass Overrides

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Public methods


////////////////////////////////////////////////////////////////////////////////
#pragma mark - Private methods

////////////////////////////////////////////////////////////////////////////////
#pragma mark - Actions


@end
