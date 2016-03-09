//
//  HKNewsCardViewController.m
//  HKNewsArch
//
//  Created by heke on 9/3/16.
//  Copyright © 2016年 mhk. All rights reserved.
//

#import "HKNewsCardViewController.h"
#import "HKNewsCardCollectionViewCell.h"
#import "HKCollectionView.h"

@interface HKNewsCardViewController ()
<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *flo;

@end

@implementation HKNewsCardViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"NewsCard";
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self.view addSubview:self.collectionView];
}

#pragma mark - setter & getter
- (UICollectionView *)collectionView {
    if (!_collectionView) {
        CGRect rt = self.view.bounds;
        rt.origin.y = 64;
        rt.size.height -= 64;
        
        self.flo = [[UICollectionViewFlowLayout alloc] init];
        self.flo.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        self.flo.minimumInteritemSpacing = 0;
        self.flo.minimumLineSpacing      = 0;
        self.flo.sectionInset = (UIEdgeInsets){0,0,0,0};
        self.flo.itemSize = rt.size;
        
        _collectionView = [[HKCollectionView alloc] initWithFrame:rt collectionViewLayout:self.flo];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.pagingEnabled = YES;
        _collectionView.showsHorizontalScrollIndicator = YES;
        
        UINib *nib = [UINib nibWithNibName:@"HKNewsCardCollectionViewCell" bundle:nil];
        [_collectionView registerNib:nib forCellWithReuseIdentifier:@"HKNewsCardCollectionViewCell"];
        
        _collectionView.dataSource = self;
        _collectionView.delegate   = self;
    }
    
    return _collectionView;
}

#pragma mark - UICollectionView DataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HKNewsCardCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HKNewsCardCollectionViewCell" forIndexPath:indexPath];
    
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.x<=100) {
        scrollView.bounces = NO;
    }else{
        scrollView.bounces = YES;
    }
}

@end
