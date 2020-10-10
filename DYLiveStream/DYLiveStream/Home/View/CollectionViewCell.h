//
//  CollectionViewCell.h
//  DYLiveStream
//
//  Created by 老刁 on 2020/10/9.
//  Copyright © 2020 老刁. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecommendPageModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

- (void) setData:(CycleViewData *) data;
@end

NS_ASSUME_NONNULL_END
