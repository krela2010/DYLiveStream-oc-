//
//  RecommendCycleView.m
//  DYLiveStream
//
//  Created by 老刁 on 2020/10/9.
//  Copyright © 2020 老刁. All rights reserved.
//

#import "RecommendCycleView.h"
#import "CollectionViewCell.h"
static const int infiniteSize = 100000;
static NSString* const kCycleViewCellID = @"kCycleCellID";

@interface RecommendCycleView()<UICollectionViewDataSource,UICollectionViewDelegate>
@end
@implementation RecommendCycleView

-(void)layoutSubviews{
    [self setUpLayout];
}

-(void) setUpLayout{
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    layout.itemSize = self.bounds.size;
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    [_collectionView setPagingEnabled:YES];
    [_collectionView setBounces:NO];
    [_collectionView setCollectionViewLayout:layout];
}

+ (RecommendCycleView*)recommendCycleView {
    RecommendCycleView *view = (RecommendCycleView *)[[NSBundle mainBundle]
                                loadNibNamed:@"RecommendCycleView" owner:nil options:nil];
    UINib *nib = [UINib nibWithNibName:@"CollectionViewCell" bundle:nil];
    NSLog(@"%@", view.collectionView);
    [view.collectionView registerNib:nib forCellWithReuseIdentifier:kCycleViewCellID];
    return view;
    
}

//MARK: - 扩展UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return infiniteSize;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    CollectionViewCell *cell = (CollectionViewCell *)[_collectionView dequeueReusableCellWithReuseIdentifier:kCycleViewCellID forIndexPath:indexPath];
    
    NSUInteger size = _data.data.count;
    
    if (size > 0)
        [cell setData:_data.data[indexPath.row]];
    return cell;
}

//MARK: - 扩展UICollectionViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    int offset = scrollView.contentOffset.x + scrollView.frame.size.width * 0.5;
    NSUInteger size = _data.data.count;
    if (size > 0)
        _pageControl.currentPage = ((NSUInteger)(offset / scrollView.frame.size.width)) % size;
}

@end
