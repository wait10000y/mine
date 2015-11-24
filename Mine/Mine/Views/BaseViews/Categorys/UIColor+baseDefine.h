//
//  UIColor+baseDefine.h
//  Mine
//
//  Created by wsliang on 15/10/27.
//  Copyright © 2015年 wsliang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define GREY(color) [UIColor colorWithRed:color/255.0 green:color/255.0 blue:color/255.0 alpha:1]

#define UIColorRGBHex(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


@interface UIColor (baseDefine)

+(UIColor*) colorWithRGB:(int)theColor;
+(UIColor*) colorWithGREY:(int)theColor;

+(UIColor*) appBackgroundColor;
+(UIColor*) appBlack1Color;
+(UIColor*) appOffWhiteColor;

@end
