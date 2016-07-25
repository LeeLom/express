//
//  ExpressPhoneNumViewController.m
//  Express
//
//  Created by LeeLom on 16/7/24.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "ExpressPhoneNumViewController.h"
#import "ExpressPhoneNum.h"
@interface ExpressPhoneNumViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *phoneTableView;
@property (strong, nonatomic) NSArray* expressA;
@property (strong, nonatomic) NSArray* expressB;
@property (strong, nonatomic) NSArray* expressC;
@property (strong, nonatomic) NSArray* expressD;
@property (strong, nonatomic) NSArray* expressE;
@property (strong, nonatomic) NSArray* expressF;
@property (strong, nonatomic) NSArray* expressG;
@property (strong, nonatomic) NSArray* expressH;
@property (strong, nonatomic) NSArray* expressJ;
@property (strong, nonatomic) NSArray* expressK;
@property (strong, nonatomic) NSArray* expressL;
@property (strong, nonatomic) NSArray* expressM;
@property (strong, nonatomic) NSArray* expressN;
@property (strong, nonatomic) NSArray* expressO;
@property (strong, nonatomic) NSArray* expressP;
@property (strong, nonatomic) NSArray* expressQ;
@property (strong, nonatomic) NSArray* expressR;
@property (strong, nonatomic) NSArray* expressS;
@property (strong, nonatomic) NSArray* expressT;
@property (strong, nonatomic) NSArray* expressU;
@property (strong, nonatomic) NSArray* expressW;
@property (strong, nonatomic) NSArray* expressX;
@property (strong, nonatomic) NSArray* expressY;
@property (strong, nonatomic) NSArray* expressZ;
@property (strong, nonatomic) NSArray* expressArray;
@property (strong, nonatomic) NSArray* expressIndex;
@property (strong, nonatomic) NSArray* expressIndex2;
@property (nonatomic) int index;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ExpressPhoneNumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initData{
    //A
    ExpressPhoneNum* express0 = [[ExpressPhoneNum alloc]initPhoneNum:@"AAE快递" andNum:@"400-610-0400"];
    ExpressPhoneNum* express1 = [[ExpressPhoneNum alloc]initPhoneNum:@"安信达快递" andNum:@"021-54224681"];
    ExpressPhoneNum* express2 = [[ExpressPhoneNum alloc]initPhoneNum:@"安捷快递" andNum:@"400-056-5656"];
    ExpressPhoneNum* express3 = [[ExpressPhoneNum alloc]initPhoneNum:@"Aramex" andNum:@"400-631-8388"];
    ExpressPhoneNum* express4 = [[ExpressPhoneNum alloc]initPhoneNum:@"安能物流" andNum:@"40010-40088"];
    self.expressA = [[NSArray alloc]initWithObjects:express0,express1,express2,express3,express4, nil];
    
    //B
    ExpressPhoneNum* express5 = [[ExpressPhoneNum alloc]initPhoneNum:@"布谷鸟快递" andNum:@"400-100-0533"];
    ExpressPhoneNum* express6 = [[ExpressPhoneNum alloc]initPhoneNum:@"百福东方" andNum:@"010-57169000"];
    ExpressPhoneNum* express7 = [[ExpressPhoneNum alloc]initPhoneNum:@"包裹、平邮、挂号信" andNum:@"11185"];
    self.expressB = [[NSArray alloc]initWithObjects:express5,express6,express7, nil];
    //C
    ExpressPhoneNum* express8 = [[ExpressPhoneNum alloc]initPhoneNum:@"传喜物流" andNum:@"400-777-5656"];
    ExpressPhoneNum* express9 = [[ExpressPhoneNum alloc]initPhoneNum:@"程光快递" andNum:@"0064-9-948-2781"];
    ExpressPhoneNum* express10 = [[ExpressPhoneNum alloc]initPhoneNum:@"COE快递" andNum:@"0755-83575000"];
    ExpressPhoneNum* express11 = [[ExpressPhoneNum alloc]initPhoneNum:@"长通物流" andNum:@"0731-6652 0111"];
    ExpressPhoneNum* express12 = [[ExpressPhoneNum alloc]initPhoneNum:@"城市之星物流" andNum:@"400-628-5168"];
    ExpressPhoneNum* express13 = [[ExpressPhoneNum alloc]initPhoneNum:@"城市100快递" andNum:@"010-52932760"];
    ExpressPhoneNum* express14 = [[ExpressPhoneNum alloc]initPhoneNum:@"传志快递" andNum:@"400-006-9156"];
    ExpressPhoneNum* express15 = [[ExpressPhoneNum alloc]initPhoneNum:@"城际快递" andNum:@"4000-523-525"];
    ExpressPhoneNum* express16 = [[ExpressPhoneNum alloc]initPhoneNum:@"超峰快递" andNum:@"0800-658-999"];
    self.expressC = [[NSArray alloc]initWithObjects:express8,express8,express10,express11,express12,
                         express13,express14,express15,express16, nil];
    //D
    ExpressPhoneNum* express17 = [[ExpressPhoneNum alloc]initPhoneNum:@"大达物流" andNum:@"400-098-5656"];
    ExpressPhoneNum* express18 = [[ExpressPhoneNum alloc]initPhoneNum:@"德邦物流" andNum:@"400-830-5555"];
    ExpressPhoneNum* express19 = [[ExpressPhoneNum alloc]initPhoneNum:@"DHL快递" andNum:@"800-810-8000"];
    ExpressPhoneNum* express20 = [[ExpressPhoneNum alloc]initPhoneNum:@"DPEX快递" andNum:@"021-64659883"];
    ExpressPhoneNum* express21 = [[ExpressPhoneNum alloc]initPhoneNum:@"递四方速递" andNum:@"0755-33933895"];
    ExpressPhoneNum* express22 = [[ExpressPhoneNum alloc]initPhoneNum:@"大田物流" andNum:@"010-59237777"];
    ExpressPhoneNum* express23 = [[ExpressPhoneNum alloc]initPhoneNum:@"大洋物流" andNum:@"400-820-0088"];
    ExpressPhoneNum* express24 = [[ExpressPhoneNum alloc]initPhoneNum:@"D速快递" andNum:@"0531-88636363"];
    self.expressD = [[NSArray alloc]initWithObjects:express17,express18,express19,express20,express21,express22,express23,express24, nil];
    //E
    ExpressPhoneNum* express25 = [[ExpressPhoneNum alloc]initPhoneNum:@"EMS快递" andNum:@"11183"];
    self.expressE = [[NSArray alloc]initWithObjects:express25, nil];
    //F
    ExpressPhoneNum* express26 = [[ExpressPhoneNum alloc]initPhoneNum:@"FEDEX国际快递" andNum:@"400-886-1888"];
    ExpressPhoneNum* express27 = [[ExpressPhoneNum alloc]initPhoneNum:@"FEDEX国内快递" andNum:@"400-886-1888"];
    ExpressPhoneNum* express28 = [[ExpressPhoneNum alloc]initPhoneNum:@"飞康达快递" andNum:@"010-84223376"];
    ExpressPhoneNum* express29 = [[ExpressPhoneNum alloc]initPhoneNum:@"飞邦物流" andNum:@"0769-89066698"];
    ExpressPhoneNum* express30 = [[ExpressPhoneNum alloc]initPhoneNum:@"飞豹快递" andNum:@"400-000-5566"];
    ExpressPhoneNum* express31 = [[ExpressPhoneNum alloc]initPhoneNum:@"飞狐快递" andNum:@"010-51389299"];
    ExpressPhoneNum* express32 = [[ExpressPhoneNum alloc]initPhoneNum:@"飞洋快递" andNum:@"010-87785733"];
    ExpressPhoneNum* express33 = [[ExpressPhoneNum alloc]initPhoneNum:@"丰达快递" andNum:@"400-113-6666"];
    ExpressPhoneNum* express34 = [[ExpressPhoneNum alloc]initPhoneNum:@"凡宇快递" andNum:@"400-658-0358"];
    self.expressF = [[NSArray alloc]initWithObjects:express26,express27,express28,express29,express30,express31,express32,express33,express34, nil];
    //G
    ExpressPhoneNum* express35 = [[ExpressPhoneNum alloc]initPhoneNum:@"冠达快递" andNum:@"400-990-0088"];
    ExpressPhoneNum* express36 = [[ExpressPhoneNum alloc]initPhoneNum:@"广通速递" andNum:@"400-080-6369"];
    ExpressPhoneNum* express37 = [[ExpressPhoneNum alloc]initPhoneNum:@"广东EMS快递" andNum:@"11183"];
    ExpressPhoneNum* express38 = [[ExpressPhoneNum alloc]initPhoneNum:@"国际EMS包裹" andNum:@"11183"];
    ExpressPhoneNum* express39 = [[ExpressPhoneNum alloc]initPhoneNum:@"高铁速递" andNum:@"400-999-7777"];
    ExpressPhoneNum* express40 = [[ExpressPhoneNum alloc]initPhoneNum:@"共速达物流" andNum:@"400-111-0005"];
    ExpressPhoneNum* express41 = [[ExpressPhoneNum alloc]initPhoneNum:@"国通快递" andNum:@"4006-773-777"];
    ExpressPhoneNum* express42 = [[ExpressPhoneNum alloc]initPhoneNum:@"港中能达" andNum:@"400-620-1111"];
    self.expressG = [[NSArray alloc]initWithObjects:express35,express36,express37,express38,express39,express40,express41,express42, nil];
    //H
    ExpressPhoneNum* express43 = [[ExpressPhoneNum alloc]initPhoneNum:@"恒路物流" andNum:@"400-182-6666"];
    ExpressPhoneNum* express44 = [[ExpressPhoneNum alloc]initPhoneNum:@"汇强快递" andNum:@"400-000-0177"];
    ExpressPhoneNum* express45 = [[ExpressPhoneNum alloc]initPhoneNum:@"华夏龙物流" andNum:@"0755-61211999"];
    ExpressPhoneNum* express46 = [[ExpressPhoneNum alloc]initPhoneNum:@"昊盛物流" andNum:@"400-186-5566"];
    ExpressPhoneNum* express47 = [[ExpressPhoneNum alloc]initPhoneNum:@"华企快递" andNum:@"400-806-8111"];
    ExpressPhoneNum* express48 = [[ExpressPhoneNum alloc]initPhoneNum:@"汇通快递" andNum:@"021-62963636"];
    self.expressH = [[NSArray alloc]initWithObjects:express43,express44,express45,express46,express47,express48, nil];
    //J
    ExpressPhoneNum* express49 = [[ExpressPhoneNum alloc]initPhoneNum:@"京东快递" andNum:@"400-603-3600"];
    ExpressPhoneNum* express50 = [[ExpressPhoneNum alloc]initPhoneNum:@"捷特快递" andNum:@"400-820-8585"];
    ExpressPhoneNum* express51 = [[ExpressPhoneNum alloc]initPhoneNum:@"嘉里大通物流" andNum:@"400-610-3188"];
    ExpressPhoneNum* express52 = [[ExpressPhoneNum alloc]initPhoneNum:@"佳怡物流" andNum:@"400-660-5656"];
    ExpressPhoneNum* express53 = [[ExpressPhoneNum alloc]initPhoneNum:@"佳吉快运" andNum:@"400-820-5566"];
    ExpressPhoneNum* express54 = [[ExpressPhoneNum alloc]initPhoneNum:@"加运美快递" andNum:@"0769-8551-5555"];
    ExpressPhoneNum* express55 = [[ExpressPhoneNum alloc]initPhoneNum:@"京广快递" andNum:@"0769-83660666-6"];
    ExpressPhoneNum* express56 = [[ExpressPhoneNum alloc]initPhoneNum:@"晋越快递" andNum:@"0769-85158039"];
    self.expressJ = [[NSArray alloc]initWithObjects:express49,express50,express51,express52,express53,express54,express55,express56, nil];
    //K
    ExpressPhoneNum* express57 = [[ExpressPhoneNum alloc]initPhoneNum:@"快捷快递" andNum:@"400-830-4888"];
    ExpressPhoneNum* express58 = [[ExpressPhoneNum alloc]initPhoneNum:@"康力物流" andNum:@"400-156-5156"];
    ExpressPhoneNum* express59 = [[ExpressPhoneNum alloc]initPhoneNum:@"宽容物流" andNum:@"400-820-2719"];
    ExpressPhoneNum* express60 = [[ExpressPhoneNum alloc]initPhoneNum:@"科捷物流" andNum:@"400-628-0056"];
    self.expressK = [[NSArray alloc]initWithObjects:express57,express58,express59,express60,nil];
    //L
    ExpressPhoneNum* express61 = [[ExpressPhoneNum alloc]initPhoneNum:@"蓝狐快递" andNum:@"4000661646"];
    ExpressPhoneNum* express62 = [[ExpressPhoneNum alloc]initPhoneNum:@"龙邦快递" andNum:@"021-39283333"];
    ExpressPhoneNum* express63 = [[ExpressPhoneNum alloc]initPhoneNum:@"联昊通快递" andNum:@"0769-88620000"];
    ExpressPhoneNum* express64 = [[ExpressPhoneNum alloc]initPhoneNum:@"乐捷递快递" andNum:@"400-618-1400"];
    ExpressPhoneNum* express65 = [[ExpressPhoneNum alloc]initPhoneNum:@"立即送" andNum:@"400-028-5666"];
    self.expressL = [[NSArray alloc]initWithObjects:express61,express62,express63,express64,express65,nil];
    //M
    ExpressPhoneNum* express66 = [[ExpressPhoneNum alloc]initPhoneNum:@"民邦快递" andNum:@"0769-81515303"];
    ExpressPhoneNum* express67 = [[ExpressPhoneNum alloc]initPhoneNum:@"民航快递" andNum:@"400-817-4008"];
    ExpressPhoneNum* express68 = [[ExpressPhoneNum alloc]initPhoneNum:@"美国快递" andNum:@"888-611-1888"];
    ExpressPhoneNum* express69 = [[ExpressPhoneNum alloc]initPhoneNum:@"美龙快递" andNum:@"323-208-9848"];
    self.expressM = [[NSArray alloc]initWithObjects:express66,express67,express68,express69, nil];
    //N
    ExpressPhoneNum* express70 = [[ExpressPhoneNum alloc]initPhoneNum:@"尼尔物流" andNum:@"400-000-5611"];
    self.expressN = [[NSArray alloc]initWithObjects:express70,nil];
    //O
    ExpressPhoneNum* express71 = [[ExpressPhoneNum alloc]initPhoneNum:@"OCS快递" andNum:@"400-118-8588"];
    self.expressO = [[NSArray alloc]initWithObjects:express71, nil];
    //P
    ExpressPhoneNum* express72 = [[ExpressPhoneNum alloc]initPhoneNum:@"平安达快递" andNum:@"4006-230-009"];
    self.expressP = [[NSArray alloc]initWithObjects:express72,nil];
    //Q
    ExpressPhoneNum* express73 = [[ExpressPhoneNum alloc]initPhoneNum:@"全峰快递" andNum:@"400-100-0001"];
    ExpressPhoneNum* express74 = [[ExpressPhoneNum alloc]initPhoneNum:@"全一快递" andNum:@"400-663-1111"];
    ExpressPhoneNum* express75 = [[ExpressPhoneNum alloc]initPhoneNum:@"全晨快递" andNum:@"0769-82026703"];
    ExpressPhoneNum* express76 = [[ExpressPhoneNum alloc]initPhoneNum:@"全日通快递" andNum:@"020-86298999"];
    self.expressQ = [[NSArray alloc]initWithObjects:express73,express74,express75,express76,nil];
    //R
    ExpressPhoneNum* express77 = [[ExpressPhoneNum alloc]initPhoneNum:@"如风达快递" andNum:@"400-010-6660"];
    ExpressPhoneNum* express78 = [[ExpressPhoneNum alloc]initPhoneNum:@"日日顺物流" andNum:@"400-999-999"];
    self.expressR = [[NSArray alloc]initWithObjects:express77,express78,nil];
    //S
    ExpressPhoneNum* express79 = [[ExpressPhoneNum alloc]initPhoneNum:@"苏宁快递" andNum:@"95315"];
    ExpressPhoneNum* express80 = [[ExpressPhoneNum alloc]initPhoneNum:@"苏宁快递" andNum:@"95315"];
    ExpressPhoneNum* express81 = [[ExpressPhoneNum alloc]initPhoneNum:@"世运快递" andNum:@"400-666-1111"];
    ExpressPhoneNum* express82 = [[ExpressPhoneNum alloc]initPhoneNum:@"速通物流" andNum:@"4006561185"];
    ExpressPhoneNum* express83 = [[ExpressPhoneNum alloc]initPhoneNum:@"申通快递" andNum:@"400-889-5543"];
    ExpressPhoneNum* express84 = [[ExpressPhoneNum alloc]initPhoneNum:@"顺丰快递" andNum:@"400-811-1111"];
    ExpressPhoneNum* express85 = [[ExpressPhoneNum alloc]initPhoneNum:@"速尔快递" andNum:@"400-882-2168"];
    ExpressPhoneNum* express86 = [[ExpressPhoneNum alloc]initPhoneNum:@"山东海红快递" andNum:@"400-632-9988"];
    ExpressPhoneNum* express87 = [[ExpressPhoneNum alloc]initPhoneNum:@"三态速递" andNum:@"400-881-8106"];
    ExpressPhoneNum* express88 = [[ExpressPhoneNum alloc]initPhoneNum:@"盛辉物流" andNum:@"4008-222-222"];
    ExpressPhoneNum* express89 = [[ExpressPhoneNum alloc]initPhoneNum:@"盛丰物流" andNum:@"0591-83621111"];
    ExpressPhoneNum* express90 = [[ExpressPhoneNum alloc]initPhoneNum:@"圣安物流" andNum:@"4006-618-169"];
    ExpressPhoneNum* express91 = [[ExpressPhoneNum alloc]initPhoneNum:@"赛澳递" andNum:@"4000-345-888"];
    self.expressS = [[NSArray alloc]initWithObjects:express79,express80,express81,express82,express83
                         ,express84,express85,express86,express87,express88,express89,express90,express91,nil];
    //T
    ExpressPhoneNum* express92 = [[ExpressPhoneNum alloc]initPhoneNum:@"TNT快递" andNum:@"800-820-9868"];
    ExpressPhoneNum* express93 = [[ExpressPhoneNum alloc]initPhoneNum:@"通和天下物流" andNum:@"400-0056-516"];
    ExpressPhoneNum* express94 = [[ExpressPhoneNum alloc]initPhoneNum:@"通成物流" andNum:@"400-186-5555"];
    ExpressPhoneNum* express95 = [[ExpressPhoneNum alloc]initPhoneNum:@"天地华宇" andNum:@"400-808-6666"];
    ExpressPhoneNum* express96 = [[ExpressPhoneNum alloc]initPhoneNum:@"天天快递" andNum:@"400-820-8198"];
    self.expressT = [[NSArray alloc]initWithObjects:express92,express93,express94,express95,express96,nil];
    //U
    ExpressPhoneNum* express97 = [[ExpressPhoneNum alloc]initPhoneNum:@"UPS国际快递" andNum:@"400-820-8388"];
    self.expressU = [[NSArray alloc]initWithObjects:express97,nil];
    //W
    ExpressPhoneNum* express98 = [[ExpressPhoneNum alloc]initPhoneNum:@"伟邦快递" andNum:@"021-64212098"];
    ExpressPhoneNum* express99 = [[ExpressPhoneNum alloc]initPhoneNum:@"微特派快递" andNum:@"400-606-0909"];
    ExpressPhoneNum* express100 = [[ExpressPhoneNum alloc]initPhoneNum:@"万象物流" andNum:@"400-820-8088"];
    ExpressPhoneNum* express101 = [[ExpressPhoneNum alloc]initPhoneNum:@"万博快递" andNum:@"0311-83035553"];
    self.expressW = [[NSArray alloc]initWithObjects:express98,express99,express100,express101,nil];
    //X
    ExpressPhoneNum* express102 = [[ExpressPhoneNum alloc]initPhoneNum:@"祥龙运通" andNum:@"4008-908-908"];
    ExpressPhoneNum* express103 = [[ExpressPhoneNum alloc]initPhoneNum:@"新蛋物流" andNum:@"400-820-4400"];
    ExpressPhoneNum* express104 = [[ExpressPhoneNum alloc]initPhoneNum:@"信丰物流" andNum:@"400-830-6333"];
    ExpressPhoneNum* express105 = [[ExpressPhoneNum alloc]initPhoneNum:@"新邦物流" andNum:@"4008-000-222"];
    self.expressX = [[NSArray alloc]initWithObjects:express102,express103,express104,express105,nil];
    //Y
    ExpressPhoneNum* express106 = [[ExpressPhoneNum alloc]initPhoneNum:@"圆通快递" andNum:@"021-69777888"];
    ExpressPhoneNum* express107 = [[ExpressPhoneNum alloc]initPhoneNum:@"韵达快递" andNum:@"400-821-6789"];
    ExpressPhoneNum* express108 = [[ExpressPhoneNum alloc]initPhoneNum:@"一邦快递" andNum:@"4008-000-666"];
    ExpressPhoneNum* express109 = [[ExpressPhoneNum alloc]initPhoneNum:@"运通快递" andNum:@"0769-81156999"];
    ExpressPhoneNum* express110 = [[ExpressPhoneNum alloc]initPhoneNum:@"元智捷诚快递" andNum:@"400-081-2345"];
    ExpressPhoneNum* express111 = [[ExpressPhoneNum alloc]initPhoneNum:@"原飞航快递" andNum:@"0755-29778899"];
    ExpressPhoneNum* express112 = [[ExpressPhoneNum alloc]initPhoneNum:@"亚风快递" andNum:@"400-628-0018"];
    ExpressPhoneNum* express113 = [[ExpressPhoneNum alloc]initPhoneNum:@"远成物流" andNum:@"400-820-1646"];
    ExpressPhoneNum* express114 = [[ExpressPhoneNum alloc]initPhoneNum:@"越丰快递" andNum:@"852-23909969"];
    ExpressPhoneNum* express115 = [[ExpressPhoneNum alloc]initPhoneNum:@"优速快递" andNum:@"400-1111-119"];
    ExpressPhoneNum* express116 = [[ExpressPhoneNum alloc]initPhoneNum:@"源安达快递" andNum:@"0769-85021875"];
    ExpressPhoneNum* express117 = [[ExpressPhoneNum alloc]initPhoneNum:@"宇鑫物流" andNum:@"0371-66378798"];
    ExpressPhoneNum* express118 = [[ExpressPhoneNum alloc]initPhoneNum:@"易通达" andNum:@"0898-65339299"];
    ExpressPhoneNum* express119 = [[ExpressPhoneNum alloc]initPhoneNum:@"增益快递" andNum:@"4008-456-789"];
    self.expressY = [[NSArray alloc]initWithObjects:express106,express107,express108,express109,express110,
                         express111,express112,express113,express114,express115,express116,express117,express118,
                         express119,nil];
    //Z
    ExpressPhoneNum* express120 = [[ExpressPhoneNum alloc]initPhoneNum:@"中通快递" andNum:@"021-39777777"];
    ExpressPhoneNum* express121 = [[ExpressPhoneNum alloc]initPhoneNum:@"宅急送快递" andNum:@"400-6789-000"];
    ExpressPhoneNum* express122 = [[ExpressPhoneNum alloc]initPhoneNum:@"中铁快运" andNum:@"400-000-5566"];
    ExpressPhoneNum* express123 = [[ExpressPhoneNum alloc]initPhoneNum:@"中邮物流" andNum:@"11183"];
    ExpressPhoneNum* express124 = [[ExpressPhoneNum alloc]initPhoneNum:@"芝麻开门" andNum:@"4001-056-056"];
    ExpressPhoneNum* express125 = [[ExpressPhoneNum alloc]initPhoneNum:@"郑州建华快递" andNum:@"0371-65995266"];
    ExpressPhoneNum* express126 = [[ExpressPhoneNum alloc]initPhoneNum:@"中天万运快递" andNum:@"0531-68850629"];
    self.expressZ = [[NSArray alloc]initWithObjects:express120,express121,express122,express123,express124,
                         express125,express126,nil];
    self.expressArray = [[NSArray alloc]initWithObjects:self.expressA,self.expressB,self.expressC,self.expressD,self.expressE,
                         self.expressF,self.expressG,self.expressH,self.expressJ,self.expressK,self.expressL,
                         self.expressM,self.expressN,self.expressO,self.expressP,self.expressQ,self.expressR,self.expressS,
                         self.expressT,self.expressU,self.expressW,self.expressX,self.expressY,self.expressZ, nil];
    self.expressIndex = [[NSArray alloc]initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"J",@"K",@"L",@"M",@"N",@"O",
                        @"P",@"Q",@"R",@"S",@"T",@"U",@"W",@"X",@"Y",@"Z",nil];
    /*
    NSDictionary* arrayA = [NSDictionary dictionaryWithObject:self.expressA forKey:@"A"];
    NSDictionary* arrayB = [NSDictionary dictionaryWithObject:self.expressB forKey:@"B"];
    NSDictionary* arrayC = [NSDictionary dictionaryWithObject:self.expressC forKey:@"C"];
    NSDictionary* arrayD = [NSDictionary dictionaryWithObject:self.expressD forKey:@"D"];
    NSDictionary* arrayE = [NSDictionary dictionaryWithObject:self.expressE forKey:@"E"];
    NSDictionary* arrayF = [NSDictionary dictionaryWithObject:self.expressF forKey:@"F"];
    NSDictionary* arrayG = [NSDictionary dictionaryWithObject:self.expressG forKey:@"G"];
    NSDictionary* arrayH = [NSDictionary dictionaryWithObject:self.expressH forKey:@"H"];
    NSDictionary* arrayJ = [NSDictionary dictionaryWithObject:self.expressJ forKey:@"J"];
    NSDictionary* arrayK = [NSDictionary dictionaryWithObject:self.expressK forKey:@"K"];
    NSDictionary* arrayL = [NSDictionary dictionaryWithObject:self.expressL forKey:@"L"];
    NSDictionary* arrayM = [NSDictionary dictionaryWithObject:self.expressM forKey:@"M"];
    NSDictionary* arrayN = [NSDictionary dictionaryWithObject:self.expressN forKey:@"N"];
    NSDictionary* arrayO = [NSDictionary dictionaryWithObject:self.expressO forKey:@"O"];
    NSDictionary* arrayP = [NSDictionary dictionaryWithObject:self.expressP forKey:@"P"];
    NSDictionary* arrayQ = [NSDictionary dictionaryWithObject:self.expressQ forKey:@"Q"];
    NSDictionary* arrayR = [NSDictionary dictionaryWithObject:self.expressR forKey:@"R"];
    NSDictionary* arrayS = [NSDictionary dictionaryWithObject:self.expressS forKey:@"S"];
    NSDictionary* arrayT = [NSDictionary dictionaryWithObject:self.expressT forKey:@"T"];
    NSDictionary* arrayU = [NSDictionary dictionaryWithObject:self.expressU forKey:@"U"];
    NSDictionary* arrayW = [NSDictionary dictionaryWithObject:self.expressW forKey:@"W"];
    NSDictionary* arrayX = [NSDictionary dictionaryWithObject:self.expressX forKey:@"X"];
    NSDictionary* arrayY = [NSDictionary dictionaryWithObject:self.expressY forKey:@"Y"];
    NSDictionary* arrayZ = [NSDictionary dictionaryWithObject:self.expressZ forKey:@"Z"];
    self.expressIndex2 = [[NSArray alloc]initWithObjects:arrayA,arrayB,arrayC,arrayD,arrayE,arrayF,arrayG,arrayH,
                         arrayJ,arrayK,arrayL,arrayM,arrayN,arrayO,arrayP,arrayQ,arrayR,arrayS,arrayT,arrayU,arrayW,arrayX,
                         arrayY,arrayZ,nil];
    */
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)changeValue:(UISegmentedControl *)sender {
    
}


#pragma mark-- UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [self.expressArray count];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.expressArray[section] count];
}

#pragma mark-- UITableViewDataSource
-(UITableViewCell* )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* cellIndentifier = @"UITableViewIndentifierKey";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIndentifier];
    }
    NSArray* arrayTmp = self.expressArray[indexPath.section];
    ExpressPhoneNum* expressTmp = arrayTmp[indexPath.row];
    cell.textLabel.text = expressTmp.expressName;
    cell.detailTextLabel.text = expressTmp.expressNum;
    cell.imageView.image = [UIImage imageNamed:@"bule"];
    return cell;
}

#pragma mark 返回每组的头标题
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return self.expressIndex[section];
}
#pragma mark 返回每组标题索引
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    return self.expressIndex;
}

@end
