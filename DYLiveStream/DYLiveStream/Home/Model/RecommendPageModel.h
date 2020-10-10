//
//  RecommendPageModel.h
//  DYLiveStream
//
//  Created by 老刁 on 2020/10/9.
//  Copyright © 2020 老刁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class RecommendPageDataModel;
@class DYAnchorData;
@class CycleViewData;

@interface RecommendPageModel : NSObject
@property (copy, nonatomic) NSArray<RecommendPageDataModel *> *data;
//@property (copy, nonatomic) NSString *key;
@end

@interface RecommendPageDataModel : NSObject
@property (assign, nonatomic) NSUInteger broadcast_limit;
@property (assign, nonatomic) NSUInteger cate_id;

//@property (copy, nonatomic) NSString *key;
@end


@interface DYAnchorListData : NSObject

@property (copy, nonatomic) NSArray<DYAnchorData *> *data;
@end

@interface DYAnchorData : NSObject

@property (copy, nonatomic) NSString* room_id;
@property (copy, nonatomic) NSString* room_src;
@property (copy, nonatomic) NSString* vertical_src;
@property (assign, nonatomic) NSUInteger isVertical;
@property (assign, nonatomic) NSUInteger cate_id;
@property (copy, nonatomic) NSString* room_name;
@property (copy, nonatomic) NSString* nickname;
@property (assign, nonatomic) NSUInteger online;
@end


@interface CycleViewListData : NSObject
@property (copy, nonatomic) NSArray<CycleViewData *> *data;

@end

@interface CycleViewData : NSObject
@property (copy, nonatomic) NSString* pic_url;
@property (copy, nonatomic) NSString* tv_pic_url;
@property (copy, nonatomic) NSString* title;
@property (assign, nonatomic) NSUInteger id;
@property (assign, nonatomic) NSUInteger main_id;
@property (assign, nonatomic) NSUInteger source;
@property (assign, nonatomic) NSUInteger oa_source;

@end

NS_ASSUME_NONNULL_END
