//
//  RecommendCycleView.h
//  DYLiveStream
//
//  Created by 老刁 on 2020/10/9.
//  Copyright © 2020 老刁. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecommendPageModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface RecommendCycleView : UIView
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (strong, nonatomic) CycleViewListData *data;
-(void) setUpLayout;

+(RecommendCycleView*)recommendCycleView;
@end

NS_ASSUME_NONNULL_END
