//
//  UIImage+Bundle.h
//  Demo2Lib
//
//  Created by Olivier Halligon on 16/01/13.
//  Copyright (c) 2013 AliSoftware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Bundle)

+ (UIImage*)imageNamed:(NSString *)imageName bundle:(NSBundle*)bundle;

@end
