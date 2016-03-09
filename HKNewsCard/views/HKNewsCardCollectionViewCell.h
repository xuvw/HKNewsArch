//
//  HKNewsCardCollectionViewCell.h
//  HKNewsArch
//
//  Created by heke on 9/3/16.
//  Copyright © 2016年 mhk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HKNewsCardCollectionViewCell : UICollectionViewCell
<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *newsListTableView;

@end
