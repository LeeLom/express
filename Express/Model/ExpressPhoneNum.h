//
//  ExpressPhoneNum.h
//  Express
//
//  Created by LeeLom on 16/7/24.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExpressPhoneNum : NSObject

@property (strong,nonatomic) NSString* expressName;
@property (strong,nonatomic) NSString* expressNum;

-(ExpressPhoneNum* )initPhoneNum:(NSString*)expressName andNum:(NSString*)expressNum;
@end
