//
//  RecommendPageModel.m
//  DYLiveStream
//
//  Created by 老刁 on 2020/10/9.
//  Copyright © 2020 老刁. All rights reserved.
//

#import "RecommendPageModel.h"

@implementation RecommendPageModel
+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{@"data" : RecommendPageDataModel.class};
}

//modelCon
@end


@implementation RecommendPageDataModel

@end

@implementation DYAnchorListData
+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{@"data" : DYAnchorData.class};
}
@end

@implementation DYAnchorData

@end


@implementation CycleViewListData
+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass
{
    return @{@"data" : DYAnchorData.class};
}
@end

@implementation CycleViewData

@end
