//
//  ExpressTracesViewController.m
//  Express
//
//  Created by LeeLom on 16/7/26.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "ExpressTracesViewController.h"

@interface ExpressTracesViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ExpressTracesViewController
@synthesize tableView;

NSString* shipperCode;//快递名称
NSString* logisticCode;//快递单号
NSString* expressForUser;//快递备注
NSArray* expressTraces;//快递轨迹
NSDictionary* expressNameAndCodeTrace;//快递字典

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    shipperCode = self.express.shipperCode;
    logisticCode = self.express.logisticCode;
    expressForUser = self.express.expressForUser;
    expressTraces = self.express.expressTraces;
    
    expressNameAndCodeTrace = [NSDictionary dictionaryWithObjectsAndKeys:@"安信达快递",@"AXD",@"澳邮专线",@"AYCA",@"北青小红帽",@"BQXHM",@"百福东方",@"BFDF",@"百世快运",@"BTWL",@"百世快递",@"HTKY",@"CNPEX中邮快递",@"CNPEX",@"CCES快递",@"CCES",@"COE东方快递",@"COE",@"城际快递",@"CJKD",@"城市100",@"CITY100",@"长沙创一",@"CSCY",@"德邦",@"DBL",@"D速物流",@"DSWL",@"大田物流",@"DTWL",@"EMS",@"EMS",@"FEDEX联邦(国内件）",@"FEDEX",@"FEDEX联邦(国际件）",@"FEDEX_GJ",@"泛捷快递",@"PANEX",@"飞康达",@"FKD",@"广东邮政",@"GDEMS",@"共速达",@"GSD",@"国通快递",@"GTO",@"高铁速递",@"GTSD",@"鸿桥供应链",@"HOTSCM",@"海派通物流公司",@"HPTEX",@"汇丰物流",@"HFWL",@"汇强快递",@"ZHQKD",@"恒路物流",@"HLWL",@"华强物流",@"hq568",@"华夏龙物流",@"HXLWL",@"好来运快递",@"HYLSD",@"京广速递",@"JGSD",@"九曳供应链",@"JIUYE",@"佳吉快运",@"JJKY",@"嘉里物流",@"JLDT",@"捷特快递",@"JTKD",@"急先达",@"JXD",@"晋越快递",@"JYKD",@"加运美",@"JYM",@"佳怡物流",@"JYWL",@"快捷速递",@"FAST",@"快客快递",@"QUICK",@"跨越物流",@"KYWL",@"龙邦快递",@"LB",@"联昊通速递",@"LHT",@"民航快递",@"MHKD",@"明亮物流",@"MLWL",@"能达速递",@"NEDA",@"平安达腾飞快递",@"PADTF",@"PCA Express",@"PCA",@"全晨快递",@"QCKD",@"全峰快递",@"QFKD",@"全一快递",@"UAPEX",@"全日通快递",@"QRT",@"如风达",@"RFD",@"瑞丰速递",@"RFEX",@"速必达物流",@"SUBIDA",@"赛澳递",@"SAD",@"圣安物流",@"SAWL",@"盛邦物流",@"SBWL",@"上大物流",@"SDWL",@"顺丰快递",@"SF",@"盛丰物流",@"SFWL",@"盛辉物流",@"SHWL",@"速通物流",@"ST",@"申通快递",@"STO",@"速腾快递",@"STWL",@"速尔快递",@"SURE",@"天地华宇",@"HOAU",@"天天快递",@"HHTT",@"唐山申通",@"TSSTO",@"UEQ Express",@"UEQ",@"万家物流",@"WJWL",@"万象物流",@"WXWL",@"新邦物流",@"XBWL",@"信丰快递",@"XFEX",@"希优特",@"XYT",@"新杰物流",@"XJ",@"优速快递",@"UC",@"亚马逊物流",@"AMAZON",@"源安达快递",@"YADEX",@"远成物流",@"YCWL",@"韵达快递",@"YD",@"义达国际物流",@"YDH",@"越丰物流",@"YFEX",@"原飞航物流",@"YFHEX",@"亚风快递",@"YFSD",@"运通快递",@"YTKD",@"圆通速递",@"YTO",@"亿翔快递",@"YXKD",@"邮政平邮/小包",@"YZPY",@"增益快递",@"ZENY",@"宅急送",@"ZJS",@"众通快递",@"ZTE",@"中铁快运",@"ZTKY",@"中通速递",@"ZTO",@"中铁物流",@"ZTWL",@"中邮物流",@"ZYWL", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //分成两个Section
    //section 1:To show the title
    //Section 2:To show the traces
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }
    return [expressTraces count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell;
    //1. 返回快递名称 单号数据
    if (indexPath.section == 0) {
        static NSString* cellIndentifier = @"UITableViewIndentifierKey";
        cell = [self.tableView dequeueReusableCellWithIdentifier:cellIndentifier];
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIndentifier];
            cell.textLabel.text = [expressNameAndCodeTrace objectForKey:shipperCode];
            NSLog(@"%@++++%@",[expressNameAndCodeTrace objectForKey:shipperCode],shipperCode);
            cell.detailTextLabel.text = logisticCode;
            cell.imageView.image = [UIImage imageNamed:@"bule"];
        }
    }else if (indexPath.section == 1){
        //2. 返回快递的轨迹
        /*
        //实在没辙了，不知道为什么还是不能正确的将值复制到Label和textView当中
        static NSString* cellIndentifier2 = @"UITableViewCellTrace";
        cell = [self.tableView dequeueReusableCellWithIdentifier:cellIndentifier2];
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier2];
        }
        
        UILabel* secondsLabel = (UILabel *)[cell viewWithTag:100];
        UILabel* dayLabel = (UILabel *)[cell viewWithTag:101];
        UITextView* tracesInfo = (UITextView *)[cell viewWithTag:102];
        NSDictionary* traces = expressTraces[indexPath.row];
        NSString* tracesInfoString = [traces objectForKey:@"AcceptStation"];//得到物流轨迹
        NSString* timeInfoString = [traces objectForKey:@"AcceptTime"];//获得物流时间
        NSString* secondsString = [timeInfoString substringWithRange:NSMakeRange(11, 5)];//获得小时和分钟
        NSString* dayString = [timeInfoString substringToIndex:10];//获得年月日
        NSLog(@"物流轨迹：%@",tracesInfoString);
        //物流轨迹：【到件】快件已到达【贵州遵义公司】
        NSLog(@"物流时间：%@",dayString);
        
        secondsLabel.text = secondsString;
        dayLabel.text = dayString;
        tracesInfo.text = @"hello world";
        NSLog(@"view_label信息：%@",tracesInfo.text);
        //view_label信息：(null)
        NSLog(@"view_label时间：%@",dayLabel.text);
        */
        static NSString* cellIndentifier = @"UITabelViewCellTracesSystem";
        cell = [self.tableView dequeueReusableCellWithIdentifier:cellIndentifier];
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIndentifier];
        }
        NSDictionary* traces = expressTraces[indexPath.row];
        NSString* tracesInfoString = [traces objectForKey:@"AcceptStation"];//得到物流轨迹
        NSString* timeInfoString = [traces objectForKey:@"AcceptTime"];//获得物流时间
        NSString* secondsString = [timeInfoString substringWithRange:NSMakeRange(11, 5)];//获得小时和分钟
        NSString* dayString = [timeInfoString substringToIndex:10];//获得年月日
        cell.textLabel.text = timeInfoString;
        cell.detailTextLabel.text = tracesInfoString;
        cell.imageView.image = [UIImage imageNamed:@"bule"];
        
        cell.detailTextLabel.font = [UIFont fontWithName:@"Helvetica"  size:11];
        cell.detailTextLabel.lineBreakMode = UILineBreakModeWordWrap;
        cell.detailTextLabel.numberOfLines = 0;
        
        cell.textLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:15];
        cell.textLabel.textColor = [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0];

    }
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

@end
