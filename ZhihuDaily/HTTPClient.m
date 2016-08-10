//
//  HTTPClient.m
//  ZhihuDaily
//
//  Created by 钟武 on 16/8/3.
//  Copyright © 2016年 钟武. All rights reserved.
//

#import "HTTPClient.h"
#import "HTTPURLConfiguration.h"
#import "HTTPManager.h"
#import "LatestNewsResponseModel.h"
#import "NewsListResponseModel.h"

@interface HTTPClient ()

@property (nonatomic, strong) HTTPManager *httpManager;

@end

@implementation HTTPClient

SYNTHESIZE_SINGLETON_FOR_CLASS(HTTPClient)

- (id)init{
    if (self = [super init]) {
        _httpManager = [HTTPManager new];
    }
    
    return self;
}

- (NSURLSessionDataTask *)getLatestNewsWithSuccess:(HttpClientSuccessBlock)success
                                              fail:(HttpClientFailureBlock)fail{
    NSString *relativePath = [[HTTPURLConfiguration sharedInstance] latestNews];

    return [_httpManager GET:relativePath parameters:nil modelClass:[LatestNewsResponseModel class] success:success failure:fail];
}

- (NSURLSessionDataTask *)getPreviousNewsWithDate:(NSString *)date success:(HttpClientSuccessBlock)success
                                             fail:(HttpClientFailureBlock)fail{
    NSString *relativePath = [[HTTPURLConfiguration sharedInstance] previousNews];
    relativePath = [relativePath stringByAppendingFormat:@"/%@",date];
    
    return [_httpManager GET:relativePath parameters:nil modelClass:[NewsListResponseModel class] success:success failure:fail];
}

@end
