//
//  ExpressPhoneNum.h
//  Express
//
//  Created by LeeLom on 16/7/24.
//  Copyright © 2016年 LeeLom. All rights reserved.
//
/*
 用于辅助完成快递电话的相关信息
 */

#import <Foundation/Foundation.h>

@interface ExpressPhoneNum : NSObject

@property (strong,nonatomic) NSString* expressName;
@property (strong,nonatomic) NSString* expressNum;

-(ExpressPhoneNum* )initPhoneNum:(NSString*)expressName andNum:(NSString*)expressNum;
@end
