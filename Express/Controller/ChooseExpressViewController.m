//
//  ChooseExpressViewController.m
//  Express
//
//  Created by LeeLom on 16/7/28.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "ChooseExpressViewController.h"
#import "FirstViewController.h"

@interface ChooseExpressViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation ChooseExpressViewController
NSArray* expressComInlandA;
NSArray* expressComInlandB;
NSArray* expressComInlandC;
NSArray* expressComInlandD;
NSArray* expressComInlandE;
NSArray* expressComInlandF;
NSArray* expressComInlandG;
NSArray* expressComInlandH;
NSArray* expressComInlandJ;
NSArray* expressComInlandK;
NSArray* expressComInlandL;
NSArray* expressComInlandM;
NSArray* expressComInlandN;
NSArray* expressComInlandQ;
NSArray* expressComInlandP;
NSArray* expressComInlandR;
NSArray* expressComInlandS;
NSArray* expressComInlandT;
NSArray* expressComInlandU;
NSArray* expressComInlandW;
NSArray* expressComInlandX;
NSArray* expressComInlandY;
NSArray* expressComInlandZ;
NSArray* expressComInland;
NSArray* expressComInlandHot;
NSArray* expressComInlandIndex;


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"开始返回这个view");
    
    UIColor *ios7BlueColor = [UIColor colorWithRed:135.0/255.0 green:206.0/255.0 blue:250.0/255.0 alpha:1.0];
    self.navigationController.navigationBar.barTintColor = ios7BlueColor;
    self.navigationController.navigationBar.translucent = NO;
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    
    expressComInlandHot = [[NSArray alloc]initWithObjects:@"申通快递",@"顺丰快递",@"韵达快递",@"圆通速递",@"中通速递",@"EMS",@"天天快递",
                           @"宅急送",@"德邦",@"百世快递",@"邮政平邮",@"全峰快递", nil];
    expressComInlandA = [[NSArray alloc]initWithObjects:@"安信达快递",@"澳邮专线",nil];
    expressComInlandB = [[NSArray alloc]initWithObjects:@"北青小红帽",@"百福东方",@"百世快运",@"百世快递", nil];
    expressComInlandC = [[NSArray alloc]initWithObjects:@"CNPEX中邮快递",@"CCES快递",@"COE东方快递",@"城际快递",@"城市100",@"长沙创一",nil];
    expressComInlandD = [[NSArray alloc]initWithObjects:@"德邦",@"D速物流",@"大田物流", nil];
    expressComInlandE = [[NSArray alloc]initWithObjects:@"EMS",nil];
    expressComInlandF = [[NSArray alloc]initWithObjects:@"FEDEX联邦(国内件）",@"FEDEX联邦(国际件）",@"泛捷快递",@"飞康达",nil];
    expressComInlandG = [[NSArray alloc]initWithObjects:@"广东邮政",@"共速达",@"国通快递",@"高铁速递", nil];
    expressComInlandH = [[NSArray alloc]initWithObjects:@"鸿桥供应链",@"海派通物流公司",@"汇丰物流",@"汇强快递",@"恒路物流",@"华强物流",
                         @"华夏龙物流",@"好来运快递",nil];
    expressComInlandJ = [[NSArray alloc]initWithObjects:@"京广速递",@"九曳供应链",@"佳吉快运",@"嘉里物流",@"捷特快递",@"急先达",
                         @"晋越快递",@"加运美",@"佳怡物流", nil];
    expressComInlandK = [[NSArray alloc]initWithObjects:@"快捷速递",@"快客快递",@"跨越物流", nil];
    expressComInlandL = [[NSArray alloc]initWithObjects:@"龙邦快递",@"联昊通速递", nil];
    expressComInlandM = [[NSArray alloc]initWithObjects:@"民航快递",@"明亮物流",nil];
    expressComInlandN = [[NSArray alloc]initWithObjects:@"能达速递", nil];
    expressComInlandP = [[NSArray alloc]initWithObjects:@"平安达腾飞快递",@"PCA Express", nil];
    expressComInlandQ = [[NSArray alloc]initWithObjects:@"全晨快递",@"全峰快递",@"全一快递",@"全日通快递", nil];
    expressComInlandR = [[NSArray alloc]initWithObjects:@"如风达",@"瑞丰速递", nil];
    expressComInlandS = [[NSArray alloc]initWithObjects:@"速必达物流",@"赛澳递",@"圣安物流",@"盛邦物流",@"上大物流",@"顺丰快递",@"盛丰物流",
                         @"盛辉物流",@"速通物流",@"申通快递",@"速腾快递",@"速尔快递", nil];
    expressComInlandT = [[NSArray alloc]initWithObjects:@"天地华宇",@"天天快递",@"唐山申通", nil];
    expressComInlandU = [[NSArray alloc]initWithObjects:@"UEQ Express", nil];
    expressComInlandW = [[NSArray alloc]initWithObjects:@"万家物流",@"万象物流", nil];
    expressComInlandX = [[NSArray alloc]initWithObjects:@"新邦物流",@"信丰快递",@"希优特",@"新杰物流", nil];
    expressComInlandY = [[NSArray alloc]initWithObjects:@"优速快递",@"亚马逊物流",@"源安达快递",@"远成物流",@"韵达快递",@"义达国际物流",
                         @"越丰物流",@"原飞航物流",@"亚风快递",@"运通快递",@"圆通速递",@"亿翔快递",@"邮政平邮", nil];
    expressComInlandZ = [[NSArray alloc]initWithObjects:@"增益快递",@"宅急送",@"众通快递",@"中铁快运",@"中通速递",@"中铁物流",@"中邮物流",nil];
    
    expressComInland = [[NSArray alloc]initWithObjects:expressComInlandHot,expressComInlandA,expressComInlandB,expressComInlandC,
                        expressComInlandD,expressComInlandF,expressComInlandG,expressComInlandG,expressComInlandH,expressComInlandJ,
                        expressComInlandK,expressComInlandL,expressComInlandM,expressComInlandN,expressComInlandP,expressComInlandQ,
                        expressComInlandR,expressComInlandS,expressComInlandT,expressComInlandU,expressComInlandW,expressComInlandX,
                        expressComInlandY,expressComInlandZ, nil];
    expressComInlandIndex = [[NSArray alloc]initWithObjects:@"热门",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"J",
                         @"K",@"L",@"M",@"N",@"P",@"Q",@"R",@"S",@"T",@"U",@"W",@"X",@"Y",@"Z",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [expressComInland count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray* arrayTmp = expressComInland[section];
    return [arrayTmp count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"cell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.imageView.image = [UIImage imageNamed:@"express-phone"];
    NSArray* arrayTmp = expressComInland[indexPath.section];
    cell.textLabel.text = arrayTmp[indexPath.row];
    
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray* arrayTmp = expressComInland[indexPath.section];
    NSString* expressComName = arrayTmp[indexPath.row];
    NSLog(@"%@",expressComName);
    FirstViewController* vc = [self.navigationController.viewControllers objectAtIndex:self.navigationController.viewControllers.count-2];
    vc.expressComName = expressComName;
    NSLog(@"%@",vc.expressComName);
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark 返回每组的头标题
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return expressComInlandIndex[section];
}
#pragma mark 返回每组标题索引
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    return expressComInlandIndex;
}
@end
