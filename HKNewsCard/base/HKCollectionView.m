//
//  HKCollectionView.m
//  HKNewsArch
//
//  Created by heke on 9/3/16.
//  Copyright © 2016年 mhk. All rights reserved.
//

#import "HKCollectionView.h"

@implementation HKCollectionView

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    if ([otherGestureRecognizer.view isKindOfClass:[UITableView class]]) {
        return NO;
    }else{
        return YES;
    }
}

@end
