//
//  NetworkTool.h
//  DYLiveStream
//
//  Created by 老刁 on 2020/9/30.
//  Copyright © 2020 老刁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkTool : NSObject


+(void) request:(NSString *)method url:(NSString *)url completion:(void(^)(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)) completion;
@end

NS_ASSUME_NONNULL_END
