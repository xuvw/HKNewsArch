//
//  HKNewsCardCollectionViewCell.m
//  HKNewsArch
//
//  Created by heke on 9/3/16.
//  Copyright © 2016年 mhk. All rights reserved.
//

#import "HKNewsCardCollectionViewCell.h"
#import "UIResponder+HKExts.h"
#import "HKNewsCardViewController.h"

@implementation HKNewsCardCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}

#pragma mark - UITableView DataSource & UITableView Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1000;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellID = @"CellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld ",indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    HKNewsCardViewController *vc = [[HKNewsCardViewController alloc] init];
    [tableView.ownerViewController.navigationController pushViewController:vc animated:YES];
}

@end
