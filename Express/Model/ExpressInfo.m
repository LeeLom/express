//
//  ExpressInfo.m
//  Express
//
//  Created by LeeLom on 16/7/26.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "ExpressInfo.h"

@implementation ExpressInfo

-(ExpressInfo*)initWitfShipperCode:(NSString *)shipperCode andlogisticCode:(NSString *)logisticCode
                 andexpressForUser:(NSString *)expressForUser andexpressTraces:(NSMutableArray *)expressTraces{
    self = [super init];
    if (self) {
        self.shipperCode = shipperCode;
        self.logisticCode = logisticCode;
        self.expressForUser = expressForUser;
        self.expressTraces = expressTraces;
    }
    return self;
}
@end
