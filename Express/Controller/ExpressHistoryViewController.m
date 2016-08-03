//
//  ExpressHistoryViewController.m
//  Express
//
//  Created by LeeLom on 16/8/2.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "ExpressHistoryViewController.h"

@interface ExpressHistoryViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ExpressHistoryViewController
NSMutableArray* expressHistory;
NSString* shipperCode2;//快递名称
NSString* logisticCode2;//快递单号
NSString* expressForUser2;//快递备注
NSArray* expressTraces2;//快递轨迹

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    expressHistory = [[NSMutableArray alloc]init];
    
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    NSString *fileName = [path stringByAppendingPathComponent:@"123.plist"];
    NSLog(@"path:%@",path);
    NSArray *result = [ NSArray arrayWithContentsOfFile:fileName];
    //NSLog(@"快递历史：%@",result);
    expressHistory = [NSMutableArray arrayWithArray:result];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"table行数：%lu",(unsigned long)[expressHistory count]);
    return [expressHistory count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* cellIdentifierHistory = @"cell";
    UITableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifierHistory];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifierHistory];
    }
    NSArray* arrayTmp = expressHistory[indexPath.row];
    shipperCode2 = arrayTmp[0];
    logisticCode2 = arrayTmp[1];
    expressForUser2 = arrayTmp[2];
    expressTraces2 = arrayTmp[3];
    NSLog(@"名称%@;快递单号%@；快递备注%@",shipperCode2,logisticCode2,expressForUser2);
    
    NSDictionary* dicTmp = expressTraces2[0];
    NSString* detailStringTime = [dicTmp objectForKey:@"AcceptTime"];
    NSString* detailStringTime2 = [detailStringTime substringToIndex:10];
    NSString* detailStringMsg = [dicTmp objectForKey:@"AcceptStation"];
    NSString* detailString = [NSString stringWithFormat:@"%@  %@",detailStringTime2,detailStringMsg];
    cell.detailTextLabel.text = detailString;
    cell.imageView.image = [UIImage imageNamed:@"bule"];
    //detailTextLabel自动换行
    cell.detailTextLabel.lineBreakMode = UILineBreakModeWordWrap;
    cell.detailTextLabel.numberOfLines = 0;
    
    cell.detailTextLabel.font = [UIFont fontWithName:@"Helvetica"  size:11];
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:15];
    cell.textLabel.textColor = [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0];
    
    if ([expressForUser2 length] == 0) {
        //为什么exressForUser2 == nil 不起作用；用[expressForUser2 length] == 0起作用
        NSString* stringTmp = [NSString stringWithFormat:@"%@    %@",shipperCode2,logisticCode2];
        NSLog(@"expressForUser2为空：%@",stringTmp);
        cell.textLabel.text = stringTmp;
    }else{
        cell.textLabel.text = expressForUser2;
        NSLog(@"expressUser:%@",expressForUser2);
    }
    
    return cell;
 
}

@end
