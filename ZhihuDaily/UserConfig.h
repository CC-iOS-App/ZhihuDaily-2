//
//  UserConfig.h
//  ZhihuDaily
//
//  Created by 钟武 on 16/8/30.
//  Copyright © 2016年 钟武. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserConfig : NSObject

@property (nonatomic,assign) BOOL isBlockPicture;

SYNTHESIZE_SINGLETON_FOR_CLASS_HEADER(UserConfig)

@end
