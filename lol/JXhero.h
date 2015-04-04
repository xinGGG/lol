//
//  JXhero.h
//  lol
//
//  Created by mac on 15/4/4.
//  Copyright (c) 2015年 xing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXhero : NSObject
@property (copy,nonatomic)NSString *intro;
@property (copy,nonatomic)NSString *name;
@property (copy,nonatomic)NSString *icon;

-(instancetype)initWithDic:(NSDictionary *)dic;
+(instancetype)heroWithDic:(NSDictionary *)dic;
@end
