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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    shipperCode = self.express.shipperCode;
    logisticCode = self.express.logisticCode;
    expressForUser = self.express.expressForUser;
    expressTraces = self.express.expressTraces;
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
            cell.textLabel.text = shipperCode;
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
