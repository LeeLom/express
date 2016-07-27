//
//  FirstViewController.m
//  Express
//
//  Created by LeeLom on 16/7/24.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "FirstViewController.h"
#import "AFNetworking.h"
#import "MF_Base64Additions.h"
#import "MD5.h"

#define eBusinessID @"1261753"
#define appKey @"d715f778-086b-4a25-95be-59dff451abab"
#define reqURL @"http://api.kdniao.cc/Ebusiness/EbusinessOrderHandle.aspx"

@interface FirstViewController ()<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *expressForUser;
@property (strong, nonatomic) IBOutlet UITextField *expressNum;
@property (strong, nonatomic) IBOutlet UITextField *expressCompany;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.expressForUser.delegate = self;
    self.expressNum.delegate = self;
    self.expressCompany.delegate = self;
    
    //添加手势，点击屏幕其他区域关闭键盘
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                             action:@selector(hiddenKeyboard)];
    gesture.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:gesture];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)expressSearch:(id)sender {
    //1.编写上传参数
    //NSString* shipperCode = self.expressCompany.text;
    //NSString* logisticCode = self.expressNum.text;
    NSString* shipperCode = @"STO";
    NSString* logisticCode = @"3311587775427";
    NSString* requestData = [NSString stringWithFormat:@"{\"OrderCode\":\"\",\"ShipperCode\":\"%@\",\"LogisticCode\":\"%@\"}",
                             shipperCode,logisticCode];
    NSMutableDictionary* params = [[NSMutableDictionary alloc]init];
    NSString* dataSignTmp = [[NSString alloc]initWithFormat:@"%@%@",requestData,appKey];
    NSString* dataSign = [[MD5 md5String:dataSignTmp] base64String];
    [params setObject:[requestData stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] forKey:@"RequestData"];
    [params setObject:eBusinessID forKey:@"EBusinessID"];
    [params setObject:@"1002" forKey:@"RequestType"];
    [params setObject:[dataSign stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] forKey:@"DataSign"];
    [params setObject:@"2" forKey:@"DataType"];
    //2.上传参数并获得返回值
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager POST:reqURL parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"请求成功：%@",responseObject);
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        NSMutableArray* expressTraces = [[NSMutableArray alloc]init];
        for (NSDictionary* traces in [json objectForKey:@"Traces"]) {
            [expressTraces addObject:traces];
        }
        NSDictionary* traces = expressTraces[3];
        NSString* traces2 = [traces objectForKey:@"AcceptTime"];
        NSLog(@"轨迹：%@",[traces2 substringToIndex:10]);//获得2016-07-23
        NSLog(@"轨迹：%@",[traces2 substringWithRange:NSMakeRange(11, 5)]);//获得20：53
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"请求失败：%@",error.description);
    }];
}

#pragma mark 关闭键盘
-(void) hiddenKeyboard{
    [self.expressForUser resignFirstResponder];
    [self.expressNum resignFirstResponder];
    [self.expressCompany resignFirstResponder];
    
}
                          
@end
