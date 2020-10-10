//
//  RecommendPagePresenter.m
//  DYLiveStream
//
//  Created by 老刁 on 2020/10/9.
//  Copyright © 2020 老刁. All rights reserved.
//

#import "RecommendPagePresenter.h"
#import "RecommendPageModel.h"
#import "NetworkTool.h"

@interface RecommendPagePresenter()

@end

@implementation RecommendPagePresenter
-(void)getRoomListWithCategory:(NSString *)category{
    [NetworkTool request:@"GET"  url:[[NSString alloc] initWithFormat:@"http://capi.douyucdn.cn/api/v1/getColumnDetail?shortName=%@",category] completion:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [self.delegate recommendPageRoomListData:responseObject];
    }];
}

-(void)getAnchorListWithOffset:(NSUInteger)offset{
    [NetworkTool request:@"GET"  url:[[NSString alloc] initWithFormat:@"http://capi.douyucdn.cn/api/v1/getVerticalRoom?limit=20&offset=%lu",offset] completion:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        [self.delegate recommendPageAnchorListData:responseObject];
    }];
}

-(void)getRecommendCycleViewData{
    [NetworkTool request:@"GET"  url:@"http://capi.douyucdn.cn/api/v1/slide/" completion:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        [self.delegate recommendPageCycleViewData:responseObject];
    }];
}
@end
