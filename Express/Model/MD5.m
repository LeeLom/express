//
//  MD5.m
//  Express
//
//  Created by LeeLom on 16/7/26.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation MD5

+(NSString *)md5String:(NSString *)sourceString{
    //1. 如果字符串为空直接返回nil
    if (!sourceString) {
        return nil;
    }
    //2.MD5加密都是通过C级别的函数来计算，所以需要将机密的字符串转换为C语言的字符串
    const char *cString = sourceString.UTF8String;
    //3.创建一个C语言的字符数组，用来接收加密结束之后的字符
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    /*4.MD5计算（加密过程）
      4.1 第一个参数：需要加密的字符串
      4.2 第二个参数：需要加密的字符串长度
      4.3 第三个参数：加密完成之后的字符串存储数组
     */
    //声明一个可变字符串类型用来凭借转换好的字符
    NSMutableString *resultString = [[NSMutableString alloc]init];
    CC_MD5(cString,(CC_LONG)strlen(cString),result);
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [resultString appendFormat:@"%02x",result[i]];
    //%02x:x表示十六进制性质输出，02表示不足两位，前面补零；超出两位，不影响。当x小写的时候，返回的密文中的字母就是小写的，当X大写的时候返回的密文中的字母是大写的
    }
    return resultString;
}

@end
