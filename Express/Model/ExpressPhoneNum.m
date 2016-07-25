//
//  ExpressPhoneNum.m
//  Express
//
//  Created by LeeLom on 16/7/24.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "ExpressPhoneNum.h"

@implementation ExpressPhoneNum
@synthesize expressName = _expressName;
@synthesize expressNum = _expressNum;

-(ExpressPhoneNum* )initPhoneNum:(NSString*)expressName andNum:(NSString*)expressNum{
    self = [super init];
    if (self) {
        self.expressName = expressName;
        self.expressNum = expressNum;
    }
    return self;
}
@end
