//
//  CollectionViewNormalCell.h
//  DYLiveStream
//
//  Created by 老刁 on 2020/9/30.
//  Copyright © 2020 老刁. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecommendPageModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CollectionViewNormalCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *anchorView;
@property (weak, nonatomic) IBOutlet UIButton *watchingCount;
@property (weak, nonatomic) IBOutlet UILabel *anchorInfoLabel;
@property (weak, nonatomic) IBOutlet UILabel *roomInfoLabel;


- (void)setData:(DYAnchorData *)data;
@end

NS_ASSUME_NONNULL_END
