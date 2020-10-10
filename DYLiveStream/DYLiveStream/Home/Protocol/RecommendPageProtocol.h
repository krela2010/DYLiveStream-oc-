//
//  RecommendPageProtocol.h
//  DYLiveStream
//
//  Created by 老刁 on 2020/10/9.
//  Copyright © 2020 老刁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RecommendPageProtocol <NSObject>
-(void) recommendPageRoomListData:(id) responseObject;
-(void) recommendPageAnchorListData:(id) responseObject;
-(void) recommendPageCycleViewData:(id) responseObject;
@end

NS_ASSUME_NONNULL_END
