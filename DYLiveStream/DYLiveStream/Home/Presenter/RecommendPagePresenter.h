//
//  RecommendPagePresenter.h
//  DYLiveStream
//
//  Created by 老刁 on 2020/10/9.
//  Copyright © 2020 老刁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RecommendPageProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface RecommendPagePresenter : NSObject


@property (strong, nonatomic) id<RecommendPageProtocol> delegate;


-(void)getRoomListWithCategory:(NSString *)category;
-(void)getAnchorListWithOffset:(NSUInteger)offset;
-(void)getRecommendCycleViewData;
@end

NS_ASSUME_NONNULL_END
