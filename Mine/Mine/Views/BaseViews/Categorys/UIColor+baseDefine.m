//
//  UIColor+baseDefine.m
//  Mine
//
//  Created by wsliang on 15/10/27.
//  Copyright © 2015年 wsliang. All rights reserved.
//

#import "UIColor+baseDefine.h"

@implementation UIColor (baseDefine)

+(UIColor*) colorWithRGB:(int)theColor
{
  return UIColorRGBHex(theColor);
}

+(UIColor*) colorWithGREY:(int)theColor
{
  return GREY(theColor);
}

+(UIColor*) appBackgroundColor {
  
  return [UIColor colorWithPatternImage:[UIImage imageNamed:@"BGPattern"]];
}

+(UIColor*) appBlack1Color {
  
  return GREY(38);
  
}

+(UIColor*) appOffWhiteColor {
  
  return GREY(234);
  
}

@end
