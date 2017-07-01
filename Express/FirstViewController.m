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
#import "ExpressInfo.h"
#import "ExpressTracesViewController.h"
#import "ChooseExpressViewController.h"
#import "ScanQRCodeViewController.h"


#define eBusinessID @"1261753"
#define appKey @"d715f778-086b-4a25-95be-59dff451abab"
#define reqURL @"http://api.kdniao.cc/Ebusiness/EbusinessOrderHandle.aspx"
#define systemBlue [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0]

@interface FirstViewController ()<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *expressForUser;//快递备注
@property (strong, nonatomic) IBOutlet UITextField *expressNum;//快递单号
@property (strong, nonatomic) IBOutlet UITextField *expressCompany;//快递公司
@property (strong, nonatomic) IBOutlet UIButton *searchButton;
@property (strong, nonatomic) IBOutlet UITextField *nameTextfiled;
@property (strong, nonatomic) IBOutlet UITextField *numberTextfiled;
@property (strong, nonatomic) IBOutlet UITextField *companyTextfiled;

@end

@implementation FirstViewController
@synthesize expressComName;
NSDictionary* expressNameAndCode;
NSString* shipperCodeUser;
NSString* logisticCodeUser;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"我在执行啊~");
    self.expressForUser.delegate = self;
    self.expressNum.delegate = self;
    self.expressCompany.delegate = self;
    self.navigationItem.title = @"快递查询";
    
    UIImageView* imgView = [[UIImageView alloc]initWithFrame:self.view.frame];
    //imgView.image = [UIImage imageNamed:@"background2"];
    [self.view addSubview:imgView];
    [self.view sendSubviewToBack:imgView];
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background2"]];

    //添加手势，点击屏幕其他区域关闭键盘
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                             action:@selector(hiddenKeyboard)];
    gesture.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:gesture];
    //美化查询按钮
    [self.searchButton.layer setMasksToBounds:YES];
    [self.searchButton.layer setCornerRadius:10.0];//设置矩形的四个圆角半径
    [self.searchButton.layer setBorderWidth:1.0];//设置边框宽度
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorRef colorref = CGColorCreate(colorSpace,(CGFloat[]){ 0, 122.0/255.0, 1.0, 1.0 });
    [self.searchButton.layer setBorderColor:colorref];
    [self.searchButton setTitleColor:systemBlue forState:UIControlStateHighlighted];
    self.searchButton.backgroundColor = [UIColor clearColor];
    
    //美化备注textfiled
    [self beautifulTextfiled:self.nameTextfiled];
    [self beautifulTextfiled:self.numberTextfiled];
    [self beautifulTextfiled:self.companyTextfiled];
    
    expressNameAndCode = [NSDictionary dictionaryWithObjectsAndKeys:@"AXD",@"安信达快递",@"AYCA",@"澳邮专线",@"BQXHM",@"北青小红帽",
                          @"BFDF",@"百福东方",@"BTWL",@"百世快运",@"HTKY",@"百世快递",@"CNPEX",@"CNPEX中邮快递",@"CCES",@"CCES快递",
                          @"COE",@"COE东方快递",@"CJKD",@"城际快递",@"CITY100",@"城市100",@"CSCY",@"长沙创一",@"DBL",@"德邦",@"DSWL",
                          @"D速物流",@"DTWL",@"大田物流",@"EMS",@"EMS",@"FEDEX",@"FEDEX联邦(国内件）",@"FEDEX_GJ",@"FEDEX联邦(国际件）",
                          @"PANEX",@"泛捷快递",@"FKD",@"飞康达",@"GDEMS",@"广东邮政",@"GSD",@"共速达",@"GTO",@"国通快递",@"GTSD",@"高铁速递",
                          @"HOTSCM",@"鸿桥供应链",@"HPTEX",@"海派通物流公司",@"HFWL",@"汇丰物流",@"ZHQKD",@"汇强快递",@"HLWL",@"恒路物流",
                          @"hq568",@"华强物流",@"HXLWL",@"华夏龙物流",@"HYLSD",@"好来运快递",@"JGSD",@"京广速递",@"JIUYE",@"九曳供应链",
                          @"JJKY",@"佳吉快运",@"JLDT",@"嘉里物流",@"JTKD",@"捷特快递",@"JXD",@"急先达",@"JYKD",@"晋越快递",@"JYM",@"加运美",
                          @"JYWL",@"佳怡物流",@"FAST",@"快捷速递",@"QUICK",@"快客快递",@"KYWL",@"跨越物流",@"LB",@"龙邦快递",@"LHT",
                          @"联昊通速递",@"MHKD",@"民航快递",@"MLWL",@"明亮物流",@"NEDA",@"能达速递",@"PADTF",@"平安达腾飞快递",@"PCA",
                          @"PCA Express",@"QCKD",@"全晨快递",@"QFKD",@"全峰快递",@"UAPEX",@"全一快递",@"QRT",@"全日通快递",@"RFD",@"如风达",
                          @"RFEX",@"瑞丰速递",@"SUBIDA",@"速必达物流",@"SAD",@"赛澳递",@"SAWL",@"圣安物流",@"SBWL",@"盛邦物流",@"SDWL",
                          @"上大物流",@"SF",@"顺丰快递",@"SFWL",@"盛丰物流",@"SHWL",@"盛辉物流",@"ST",@"速通物流",@"STO",@"申通快递",@"STWL",
                          @"速腾快递",@"SURE",@"速尔快递",@"HOAU",@"天地华宇",@"HHTT",@"天天快递",@"TSSTO",@"唐山申通",@"UEQ",@"UEQ Express",
                          @"WJWL",@"万家物流",@"WXWL",@"万象物流",@"XBWL",@"新邦物流",@"XFEX",@"信丰快递",@"XYT",@"希优特",@"XJ",@"新杰物流",
                          @"UC",@"优速快递",@"AMAZON",@"亚马逊物流",@"YADEX",@"源安达快递",@"YCWL",@"远成物流",@"YD",@"韵达快递",@"YDH",
                          @"义达国际物流",@"YFEX",@"越丰物流",@"YFHEX",@"原飞航物流",@"YFSD",@"亚风快递",@"YTKD",@"运通快递",@"YTO",@"圆通速递",
                          @"YXKD",@"亿翔快递",@"YZPY",@"邮政平邮/小包",@"ZENY",@"增益快递",@"ZJS",@"宅急送",@"ZTE",@"众通快递",@"ZTKY",@"中铁快运",
                          @"ZTO",@"中通速递",@"ZTWL",@"中铁物流",@"ZYWL",@"中邮物流", nil];
}
//美化查询按钮
-(void)beautifulTextfiled:(UITextField *)tf{
    //美化查询按钮
    [tf.layer setMasksToBounds:YES];
    [tf.layer setCornerRadius:10.0];//设置矩形的四个圆角半径
    [tf.layer setBorderWidth:1.0];//设置边框宽度
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGColorRef colorref = CGColorCreate(colorSpace,(CGFloat[]){ 0, 122.0/255.0, 1.0, 1.0 });
    [tf.layer setBorderColor:colorref];
    tf.backgroundColor = [UIColor clearColor];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated{
    self.expressCompany.text = self.expressComName;
    shipperCodeUser = [expressNameAndCode objectForKey:self.expressComName];
    NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self selector:@selector(haddleQRCode:) name:@"do" object:nil];
}
-(void)haddleQRCode:(NSNotification*)sender{
    //self.expressNum.text = (NSString* )sender;
    NSDictionary* dc = sender.userInfo;
    NSLog(@"sender:%@",[dc objectForKey:@"userInfo"]);
    self.expressNum.text = [dc objectForKey:@"userInfo"];
}
- (IBAction)expressSearch:(id)sender {
    //1.编写上传参数
    NSString* shipperCode = shipperCodeUser;
    NSString* logisticCode = self.expressNum.text;
    //NSString* shipperCode = @"STO";
    //NSString* logisticCode = @"3311587775427";
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
    //3. 获得网络数据赋值给ExpressInfo对象
        NSMutableArray* expressTraces = [[NSMutableArray alloc]init];
        for (NSDictionary* traces in [json objectForKey:@"Traces"]) {
            [expressTraces insertObject:traces atIndex:0];
        }
        NSString* shipperCode = [json objectForKey:@"ShipperCode"];
        NSString* logisticCode = [json objectForKey:@"LogisticCode"];
        NSString* expressForUser = self.expressForUser.text;
        
        ExpressInfo* express = [[ExpressInfo alloc]initWitfShipperCode:shipperCode andlogisticCode:logisticCode
                                                     andexpressForUser:expressForUser andexpressTraces:expressTraces];
    //4. 传递数据给ExpresstracesViewController
        ExpressTracesViewController* expressTracesVC = [[ExpressTracesViewController alloc]init];
        expressTracesVC.express = express;
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:expressTracesVC animated:YES];
        self.hidesBottomBarWhenPushed = NO;
        
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
- (IBAction)chooseExpressCompany:(id)sender {
    ChooseExpressViewController* vc = [[ChooseExpressViewController alloc]init];
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:NO];
    self.hidesBottomBarWhenPushed = NO;
    [self.expressCompany resignFirstResponder];
}

/*
- (IBAction)QRCodeButtonClick:(id)sender {
    ScanQRCodeViewController* vc = [[ScanQRCodeViewController alloc]init];
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:NO];
    self.hidesBottomBarWhenPushed = NO;
}
*/

@end
