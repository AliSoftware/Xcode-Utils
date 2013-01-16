//
//  UIImage+Bundle.m
//  Demo2Lib
//
//  Created by Olivier Halligon on 16/01/13.
//  Copyright (c) 2013 AliSoftware. All rights reserved.
//

#import "UIImage+Bundle.h"

@implementation UIImage (Bundle)

#define WORKAROUND_TO_USE_PRIVATE_API 1

#if WORKAROUND_TO_USE_PRIVATE_API

// Hack to use the private API "[UIImage imageNamed:inBundle:]"
+ (UIImage*)imageNamed:(NSString *)imageName bundle:(NSBundle*)bundle
{
    static SEL selector = nil;
    static UIImage* (*imageNamedFunction)(id,SEL,NSString*,NSBundle*) = nil;
    
    if (!imageNamedFunction)
    {
        selector = NSSelectorFromString([NSStringFromSelector(_cmd) stringByReplacingOccurrencesOfString:@"bund" withString:@"inBund"]);
        imageNamedFunction = (UIImage*(*)(id,SEL,NSString*,NSBundle*))[self methodForSelector:selector];
    }
    return imageNamedFunction(self,selector,imageName,bundle);
}

#else

// Other solution: reimplement the logic behind "[UIImage imageNamed:inBundle:]" ourselves
+ (UIImage*)imageNamed:(NSString*)imageName bundle:(NSBundle*)bundle
{
    // Extract base name and extension
    NSString* imageBaseName = [imageName stringByDeletingPathExtension];
    NSString* imageExt = [imageName pathExtension];
    if (!imageExt.length) imageExt = @"png";
    
    NSString* imagePath = nil;
    
    // Try retina version if available
    BOOL isRetina = ([[UIScreen mainScreen] scale] == 2.0);
    if (isRetina)
    {
        NSString* retinaImageBaseName = [NSString stringWithFormat:@"%@@2x", imageBaseName];
        imagePath = [bundle pathForResource:retinaImageBaseName ofType:imageExt];
    }
    
    // If not a Retina screen or retina image not found, try regular image
    if (!imagePath)
    {
        imagePath = [bundle pathForResource:imageBaseName ofType:imageExt];
        isRetina = NO;
    }
    
    // Build the image
    UIImage* image = [UIImage imageWithContentsOfFile:imagePath];
    // If retina version, set the scale appropriately
    if (isRetina)
    {
        image = [UIImage imageWithCGImage:image.CGImage scale:2.0 orientation:UIImageOrientationUp];
    }
    
    return image;
}

#endif

@end
