//
//  ExpressInfo.h
//  Express
//
//  Created by LeeLom on 16/7/26.
//  Copyright © 2016年 LeeLom. All rights reserved.
//
/*
 用来保存从网络上请求成功后返回的数据
 */
#import <Foundation/Foundation.h>

@interface ExpressInfo : NSObject

@property (strong, nonatomic) NSString* shipperCode;//快递名称
@property (strong, nonatomic) NSString* logisticCode;//快递单号
@property (strong, nonatomic) NSString* expressForUser;//快递备注
@property (strong ,nonatomic) NSMutableArray* expressTraces;//快递轨迹

-(ExpressInfo *)initWitfShipperCode:(NSString*)shipperCode andlogisticCode:(NSString *)logisticCode
                  andexpressForUser:(NSString*)expressForUser andexpressTraces:(NSMutableArray *)expressTraces;
@end
