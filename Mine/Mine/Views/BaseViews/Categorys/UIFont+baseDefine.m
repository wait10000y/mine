//
//  UIFont+baseDefine.m
//  Mine
//
//  Created by wsliang on 15/10/27.
//  Copyright © 2015年 wsliang. All rights reserved.
//

#import "UIFont+baseDefine.h"

@implementation UIFont (baseDefine)

+(UIFont*) appFontOfSize:(CGFloat) pointSize {
  return [UIFont systemFontOfSize:pointSize];
//  return [UIFont fontWithName:@"MyriadPro-Regular" size:pointSize];
}

+(UIFont*) boldAppFontOfSize:(CGFloat) pointSize {
  return [UIFont boldSystemFontOfSize:pointSize];
}


@end
