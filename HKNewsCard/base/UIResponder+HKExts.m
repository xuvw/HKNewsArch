//
//  UIResponder+HKExts.m
//  HKNewsArch
//
//  Created by heke on 9/3/16.
//  Copyright © 2016年 mhk. All rights reserved.
//

#import "UIResponder+HKExts.h"

@implementation UIResponder (HKExts)

- (UIViewController *)ownerViewController {
    if ([self isKindOfClass:[UIViewController class]]) {
        return (UIViewController *)self;
    }else{
        return [self.nextResponder ownerViewController];
    }
}

@end
