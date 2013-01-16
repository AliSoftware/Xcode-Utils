//
//  Demo2Lib.m
//  Demo2Lib
//
//  Created by Olivier Halligon on 13/01/13.
//  Copyright (c) 2013 AliSoftware. All rights reserved.
//

#import "Demo2Lib.h"
#import <UIKit/UIKit.h>
#import "UIImage+Bundle.h"


//#define _T(x) NSLocalizedString(x, @"")
#define _T(x) NSLocalizedStringFromTableInBundle((x), nil, [Demo2Lib resourceBundle], @"")



@implementation Demo2Lib

+ (NSBundle*)resourceBundle
{
    NSString* bundlePath = [[NSBundle mainBundle] pathForResource:@"Demo2Rsrc" ofType:@"bundle"];
    return [NSBundle bundleWithPath:bundlePath];
}




+ (NSString*)greetings
{
    return _T(@"greetings");
}

+ (UIImage*)cocoaHeadsImage
{
    return [UIImage imageNamed:@"CocoaHeads" bundle:[Demo2Lib resourceBundle]];
}


@end
