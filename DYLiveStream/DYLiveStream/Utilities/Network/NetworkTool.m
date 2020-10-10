//
//  NetworkTool.m
//  DYLiveStream
//
//  Created by 老刁 on 2020/9/30.
//  Copyright © 2020 老刁. All rights reserved.
//

#import "NetworkTool.h"
#import "AFNetworking.h"
@implementation NetworkTool

+(void) request:(NSString *)method url:(NSString *)url completion:(void(^)(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject))completion{

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSURLSessionDataTask * task = [manager dataTaskWithHTTPMethod:method URLString:url parameters:nil headers:nil uploadProgress:^(NSProgress * _Nonnull uploadProgress) {
        
    } downloadProgress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"%@",responseObject);
        completion(task,responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
    [task resume];
}


@end
