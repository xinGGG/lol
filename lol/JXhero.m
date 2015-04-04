//
//  JXhero.m
//  lol
//
//  Created by mac on 15/4/4.
//  Copyright (c) 2015年 xing. All rights reserved.
//

#import "JXhero.h"

@implementation JXhero

-(instancetype)initWithDic:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

+(instancetype)heroWithDic:(NSDictionary *)dic
{
    JXhero *hero = [[JXhero alloc]initWithDic:dic];
    return hero;
}
@end
