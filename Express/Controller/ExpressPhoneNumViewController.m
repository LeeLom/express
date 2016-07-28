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
@property (strong, nonatomic) NSArray* expressHot;
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
    //常用快递
    ExpressPhoneNum* express0 = [[ExpressPhoneNum alloc]initPhoneNum:@"申通快递" andNum:@"95543"];
    ExpressPhoneNum* express1 = [[ExpressPhoneNum alloc]initPhoneNum:@"顺丰速运" andNum:@"95338"];
    ExpressPhoneNum* express2 = [[ExpressPhoneNum alloc]initPhoneNum:@"韵达快递" andNum:@"95546"];
    ExpressPhoneNum* express3 = [[ExpressPhoneNum alloc]initPhoneNum:@"圆通速递" andNum:@"95554"];
    ExpressPhoneNum* express4 = [[ExpressPhoneNum alloc]initPhoneNum:@"中通速递" andNum:@"95311"];
    ExpressPhoneNum* express5 = [[ExpressPhoneNum alloc]initPhoneNum:@"EMS快递" andNum:@"11183"];
    ExpressPhoneNum* express6 = [[ExpressPhoneNum alloc]initPhoneNum:@"天天快递" andNum:@"4001-888-888"];
    ExpressPhoneNum* express7 = [[ExpressPhoneNum alloc]initPhoneNum:@"宅急送" andNum:@"400-6789-000"];
    ExpressPhoneNum* express8 = [[ExpressPhoneNum alloc]initPhoneNum:@"德邦" andNum:@"95353 "];
    ExpressPhoneNum* express9 = [[ExpressPhoneNum alloc]initPhoneNum:@"百世快递" andNum:@"400-956-5656"];
    ExpressPhoneNum* express10 = [[ExpressPhoneNum alloc]initPhoneNum:@"邮政包裹" andNum:@"11185"];
    ExpressPhoneNum* express11 = [[ExpressPhoneNum alloc]initPhoneNum:@"全峰快递" andNum:@"400-100-0001"];
    self.expressHot = [[NSArray alloc]initWithObjects:express0,express1,express2,express3,express4,express5,
                     express6,express7,express8,express9,express10,express11, nil];
    //A
    ExpressPhoneNum* express12 = [[ExpressPhoneNum alloc]initPhoneNum:@"AAE快递" andNum:@"400-610-0400"];
    ExpressPhoneNum* express13 = [[ExpressPhoneNum alloc]initPhoneNum:@"安信达" andNum:@"021-54224681"];
    ExpressPhoneNum* express14 = [[ExpressPhoneNum alloc]initPhoneNum:@"安能物流" andNum:@"400-104-0088"];
    ExpressPhoneNum* express15 = [[ExpressPhoneNum alloc]initPhoneNum:@"安迅物流" andNum:@"010-59288730"];
    self.expressA = [[NSArray alloc]initWithObjects:express12,express13,express14,express15,nil];
    //B
    ExpressPhoneNum* express16 = [[ExpressPhoneNum alloc]initPhoneNum:@"BHT快递" andNum:@"010-58633508"];
    ExpressPhoneNum* express17 = [[ExpressPhoneNum alloc]initPhoneNum:@"巴伦支" andNum:@"400-636-1516"];
    ExpressPhoneNum* express18 = [[ExpressPhoneNum alloc]initPhoneNum:@"邦送物流" andNum:@"021-20965696"];
    ExpressPhoneNum* express19 = [[ExpressPhoneNum alloc]initPhoneNum:@"百福东方快递" andNum:@"010-57169000"];
    ExpressPhoneNum* express41 = [[ExpressPhoneNum alloc]initPhoneNum:@"百世快递" andNum:@"400-956-5656"];
    self.expressB = [[NSArray alloc]initWithObjects:express16,express17,express18,express19,express41,nil];
    //C
    ExpressPhoneNum* express20 = [[ExpressPhoneNum alloc]initPhoneNum:@"COE快递" andNum:@"0755-83575000"];
    ExpressPhoneNum* express21 = [[ExpressPhoneNum alloc]initPhoneNum:@"City-Link" andNum:@"603-55658399"];
    ExpressPhoneNum* express22 = [[ExpressPhoneNum alloc]initPhoneNum:@"传喜物流" andNum:@"400-777-5656 "];
    self.expressC = [[NSArray alloc]initWithObjects:express20,express21,express22,nil];
    //D
    ExpressPhoneNum* express23 = [[ExpressPhoneNum alloc]initPhoneNum:@"DHL中国快递" andNum:@"800-810-8000"];
    ExpressPhoneNum* express24 = [[ExpressPhoneNum alloc]initPhoneNum:@"DPEX快递" andNum:@"021-64659883"];
    ExpressPhoneNum* express25 = [[ExpressPhoneNum alloc]initPhoneNum:@"D速快递" andNum:@"0531-88636363"];
    ExpressPhoneNum* express26 = [[ExpressPhoneNum alloc]initPhoneNum:@"大田物流" andNum:@"400-626-1166"];
    ExpressPhoneNum* express27 = [[ExpressPhoneNum alloc]initPhoneNum:@"递达速运" andNum:@"400-687-8123"];
    ExpressPhoneNum* express28 = [[ExpressPhoneNum alloc]initPhoneNum:@"递四方" andNum:@"0755-33933895"];
    ExpressPhoneNum* express29 = [[ExpressPhoneNum alloc]initPhoneNum:@"大洋物流" andNum:@"400-820-0088"];
    self.expressD = [[NSArray alloc]initWithObjects:express23,express24,express25,express26,express27,express28,
                     express29,nil];
    //E
    ExpressPhoneNum* express30 = [[ExpressPhoneNum alloc]initPhoneNum:@"EMS快递" andNum:@"11183"];
    self.expressE = [[NSArray alloc]initWithObjects:express30,nil];
    //F
    ExpressPhoneNum* express31 = [[ExpressPhoneNum alloc]initPhoneNum:@"FedEx国际" andNum:@"400-886-1888"];
    ExpressPhoneNum* express32 = [[ExpressPhoneNum alloc]initPhoneNum:@"FedEx美国件" andNum:@"800-463-3339"];
    ExpressPhoneNum* express33 = [[ExpressPhoneNum alloc]initPhoneNum:@"飞豹快递" andNum:@"400-000-5566"];
    ExpressPhoneNum* express34 = [[ExpressPhoneNum alloc]initPhoneNum:@"风行天下快递" andNum:@"400-040-4909"];
    ExpressPhoneNum* express35 = [[ExpressPhoneNum alloc]initPhoneNum:@"凡宇快递" andNum:@"400-658-0358 "];
    ExpressPhoneNum* express36 = [[ExpressPhoneNum alloc]initPhoneNum:@"凡客配送" andNum:@"400-010-6660"];
    self.expressF = [[NSArray alloc]initWithObjects:express31,express32,express33,express34,express35,express36,nil];
    //G
    ExpressPhoneNum* express37 = [[ExpressPhoneNum alloc]initPhoneNum:@"GLS快递" andNum:@"877-914-5465"];
    ExpressPhoneNum* express38 = [[ExpressPhoneNum alloc]initPhoneNum:@"GSM快递" andNum:@"021-64656011 "];
    ExpressPhoneNum* express39 = [[ExpressPhoneNum alloc]initPhoneNum:@"国通快递" andNum:@"400-111-1123"];
    ExpressPhoneNum* express40 = [[ExpressPhoneNum alloc]initPhoneNum:@"共速达" andNum:@"400-111-0005"];
    self.expressG = [[NSArray alloc]initWithObjects:express37,express38,express39,express40,nil];
    //H
    
    ExpressPhoneNum* express42 = [[ExpressPhoneNum alloc]initPhoneNum:@"海盟速递" andNum:@"400-080-6369 "];
    ExpressPhoneNum* express43 = [[ExpressPhoneNum alloc]initPhoneNum:@"河北建华" andNum:@"0311-86123186"];
    ExpressPhoneNum* express44 = [[ExpressPhoneNum alloc]initPhoneNum:@"华企快运" andNum:@"400-626-2356"];
    ExpressPhoneNum* express45 = [[ExpressPhoneNum alloc]initPhoneNum:@"华夏龙" andNum:@"0755-61211999"];
    ExpressPhoneNum* express46 = [[ExpressPhoneNum alloc]initPhoneNum:@"汇强快递" andNum:@"400-000-0177"];
    ExpressPhoneNum* express47 = [[ExpressPhoneNum alloc]initPhoneNum:@"昊盛物流" andNum:@"400-186-5566"];
    ExpressPhoneNum* express48 = [[ExpressPhoneNum alloc]initPhoneNum:@"恒路物流" andNum:@"400-182-6666"];
    self.expressH = [[NSArray alloc]initWithObjects:express42,express43,express44,express45,express46,express47,
                     express48,nil];
    //J
    ExpressPhoneNum* express49 = [[ExpressPhoneNum alloc]initPhoneNum:@"急先达" andNum:@"400-694-1256"];
    ExpressPhoneNum* express50 = [[ExpressPhoneNum alloc]initPhoneNum:@"捷特快递" andNum:@"400-820-8585"];
    ExpressPhoneNum* express51 = [[ExpressPhoneNum alloc]initPhoneNum:@"佳吉快运" andNum:@"400-820-5566"];
    ExpressPhoneNum* express52 = [[ExpressPhoneNum alloc]initPhoneNum:@"京广速递" andNum:@"0769-83660666"];
    ExpressPhoneNum* express53 = [[ExpressPhoneNum alloc]initPhoneNum:@"嘉里大通" andNum:@"400-610-3188"];
    ExpressPhoneNum* express54 = [[ExpressPhoneNum alloc]initPhoneNum:@"晋越快递" andNum:@"0769-85158039"];
    ExpressPhoneNum* express55 = [[ExpressPhoneNum alloc]initPhoneNum:@"加运美" andNum:@"0769-85515555"];
    ExpressPhoneNum* express56 = [[ExpressPhoneNum alloc]initPhoneNum:@"佳怡物流" andNum:@"400-631-9999"];
    ExpressPhoneNum* express57 = [[ExpressPhoneNum alloc]initPhoneNum:@"金大物流" andNum:@"0755-82262209"];
    self.expressJ = [[NSArray alloc]initWithObjects:express49,express50,express51,express52,express53,express54,
                     express55,express56,express57,nil];
    //K
    ExpressPhoneNum* express58 = [[ExpressPhoneNum alloc]initPhoneNum:@"KCS快递" andNum:@"800-858-5590"];
    ExpressPhoneNum* express59 = [[ExpressPhoneNum alloc]initPhoneNum:@"快捷速递" andNum:@"4008333666"];
    ExpressPhoneNum* express60 = [[ExpressPhoneNum alloc]initPhoneNum:@"跨越速运" andNum:@"400-809-8098 "];
    ExpressPhoneNum* express61 = [[ExpressPhoneNum alloc]initPhoneNum:@"康力物流" andNum:@"400-156-5156 "];
    self.expressK = [[NSArray alloc]initWithObjects:express58,express59,express60,express61,nil];
    //L
    ExpressPhoneNum* express62 = [[ExpressPhoneNum alloc]initPhoneNum:@"林道国际快递" andNum:@"400-820-0112"];
    ExpressPhoneNum* express63 = [[ExpressPhoneNum alloc]initPhoneNum:@"联邦快递" andNum:@"400-889-1888"];
    ExpressPhoneNum* express64 = [[ExpressPhoneNum alloc]initPhoneNum:@"立即送" andNum:@"400-028-5666"];
    ExpressPhoneNum* express65 = [[ExpressPhoneNum alloc]initPhoneNum:@"乐捷递" andNum:@"400-618-1400"];
    ExpressPhoneNum* express66 = [[ExpressPhoneNum alloc]initPhoneNum:@"龙邦速递" andNum:@"021-39283333"];
    ExpressPhoneNum* express67 = [[ExpressPhoneNum alloc]initPhoneNum:@"联昊通" andNum:@"0769-88620000"];
    self.expressL = [[NSArray alloc]initWithObjects:express62,express63,express64,express65,express66,express67,nil];
    //M
    ExpressPhoneNum* express68 = [[ExpressPhoneNum alloc]initPhoneNum:@"民邦速递" andNum:@"0769-81515303"];
    ExpressPhoneNum* express69 = [[ExpressPhoneNum alloc]initPhoneNum:@"民航快递" andNum:@"400-817-4008"];
    ExpressPhoneNum* express70 = [[ExpressPhoneNum alloc]initPhoneNum:@"明亮物流" andNum:@"400-035-6568"];
    ExpressPhoneNum* express71 = [[ExpressPhoneNum alloc]initPhoneNum:@"闽盛快递" andNum:@"0592-3725988"];
    ExpressPhoneNum* express72 = [[ExpressPhoneNum alloc]initPhoneNum:@"门对门" andNum:@"400-700-7676"];
    self.expressM = [[NSArray alloc]initWithObjects:express68,express69,express70,express71,express72,nil];
    //N
    ExpressPhoneNum* express73 = [[ExpressPhoneNum alloc]initPhoneNum:@"能达速递" andNum:@"400-6886-765"];
    ExpressPhoneNum* express74 = [[ExpressPhoneNum alloc]initPhoneNum:@"偌亚奥快递" andNum:@"400-887-1871"];
    self.expressN = [[NSArray alloc]initWithObjects: express73,express74,nil];
    //O
    ExpressPhoneNum* express75 = [[ExpressPhoneNum alloc]initPhoneNum:@"OCS快递" andNum:@"400-118-8588"];
    ExpressPhoneNum* express76 = [[ExpressPhoneNum alloc]initPhoneNum:@"OnTrac快递" andNum:@"800-334-5000"];
    self.expressO = [[NSArray alloc]initWithObjects: express75,express76,nil];
    //P
    ExpressPhoneNum* express77 = [[ExpressPhoneNum alloc]initPhoneNum:@"平安达腾飞" andNum:@"4006-230-009"];
    ExpressPhoneNum* express78 = [[ExpressPhoneNum alloc]initPhoneNum:@"品速心达快递" andNum:@"400-800-3693 "];
    self.expressP = [[NSArray alloc]initWithObjects: express77,express78,nil];
    //Q
    ExpressPhoneNum* express79 = [[ExpressPhoneNum alloc]initPhoneNum:@"全一快递" andNum:@"400-663-1111"];
    ExpressPhoneNum* express80 = [[ExpressPhoneNum alloc]initPhoneNum:@"全峰快递" andNum:@"400-100-0001"];
    ExpressPhoneNum* express81 = [[ExpressPhoneNum alloc]initPhoneNum:@"全日通" andNum:@"020-86298999"];
    ExpressPhoneNum* express82 = [[ExpressPhoneNum alloc]initPhoneNum:@"全际通" andNum:@"400-0179-888"];
    ExpressPhoneNum* express83 = [[ExpressPhoneNum alloc]initPhoneNum:@"全晨快递" andNum:@"0769-82026703"];
    ExpressPhoneNum* express84 = [[ExpressPhoneNum alloc]initPhoneNum:@"七天连锁快递" andNum:@"400-882-1202"];
    self.expressQ = [[NSArray alloc]initWithObjects:express79,express80,express81,express82,express83,express84,nil];
    //R
    ExpressPhoneNum* express85 = [[ExpressPhoneNum alloc]initPhoneNum:@"如风达" andNum:@"400-010-6660"];
    self.expressR = [[NSArray alloc]initWithObjects:express85,nil];
    //S
    ExpressPhoneNum* express86 = [[ExpressPhoneNum alloc]initPhoneNum:@"顺丰速运" andNum:@"95338"];
    ExpressPhoneNum* express87 = [[ExpressPhoneNum alloc]initPhoneNum:@"申通快递" andNum:@"95543"];
    ExpressPhoneNum* express88 = [[ExpressPhoneNum alloc]initPhoneNum:@"速尔快递" andNum:@"400-882-2168"];
    ExpressPhoneNum* express89 = [[ExpressPhoneNum alloc]initPhoneNum:@"圣安物流" andNum:@"400-661-8169 "];
    ExpressPhoneNum* express90 = [[ExpressPhoneNum alloc]initPhoneNum:@"盛丰物流" andNum:@"0591-83621111"];
    ExpressPhoneNum* express91 = [[ExpressPhoneNum alloc]initPhoneNum:@"三态速递" andNum:@"400-881-8106 "];
    ExpressPhoneNum* express92 = [[ExpressPhoneNum alloc]initPhoneNum:@"盛辉物流" andNum:@"400-822-2222"];
    ExpressPhoneNum* express93 = [[ExpressPhoneNum alloc]initPhoneNum:@"上大物流" andNum:@"021-54477891"];
    ExpressPhoneNum* express94 = [[ExpressPhoneNum alloc]initPhoneNum:@"赛澳递快递" andNum:@"400-034-5888"];
    ExpressPhoneNum* express95 = [[ExpressPhoneNum alloc]initPhoneNum:@"穗佳物流" andNum:@"400-880-9771"];
    self.expressS = [[NSArray alloc]initWithObjects:express86,express87,express88,express89,express90,express91,
                     express92,express93,express94,express95,nil];
    //T
    ExpressPhoneNum* express96 = [[ExpressPhoneNum alloc]initPhoneNum:@"TNT快递" andNum:@"800-820-9868"];
    ExpressPhoneNum* express97 = [[ExpressPhoneNum alloc]initPhoneNum:@"天地华宇快递" andNum:@"400-808-6666"];
    ExpressPhoneNum* express98 = [[ExpressPhoneNum alloc]initPhoneNum:@"通和天下快递" andNum:@"400-0056-516 "];
    self.expressT = [[NSArray alloc]initWithObjects:express96,express97,express98,nil];
    //U
    ExpressPhoneNum* express99 = [[ExpressPhoneNum alloc]initPhoneNum:@"UPS快递" andNum:@"400-820-8388"];
    ExpressPhoneNum* express100 = [[ExpressPhoneNum alloc]initPhoneNum:@"USPS快递" andNum:@"800-275-8777"];
    self.expressU = [[NSArray alloc]initWithObjects:express99,express100,nil];
    //W
    ExpressPhoneNum* express101 = [[ExpressPhoneNum alloc]initPhoneNum:@"微特派" andNum:@"400-6363-000"];
    ExpressPhoneNum* express102 = [[ExpressPhoneNum alloc]initPhoneNum:@"万象物流" andNum:@"400-820-8088"];
    ExpressPhoneNum* express103 = [[ExpressPhoneNum alloc]initPhoneNum:@"万家物流" andNum:@"021-5193 7018"];
    self.expressW = [[NSArray alloc]initWithObjects:express101,express102,express103,nil];
    //X
    ExpressPhoneNum* express104 = [[ExpressPhoneNum alloc]initPhoneNum:@"新邦物流" andNum:@"400-800-0222"];
    ExpressPhoneNum* express105 = [[ExpressPhoneNum alloc]initPhoneNum:@"信丰物流" andNum:@"400-830-6333"];
    ExpressPhoneNum* express106 = [[ExpressPhoneNum alloc]initPhoneNum:@"新蛋物流" andNum:@"400-820-4400"];
    ExpressPhoneNum* express107 = [[ExpressPhoneNum alloc]initPhoneNum:@"祥龙运通" andNum:@"0755-88888908"];
    ExpressPhoneNum* express108 = [[ExpressPhoneNum alloc]initPhoneNum:@"希优特" andNum:@"400-840-0365"];
    self.expressX = [[NSArray alloc]initWithObjects:express104,express105,express106,express107,express108,nil];
    //Y
    ExpressPhoneNum* express109 = [[ExpressPhoneNum alloc]initPhoneNum:@"圆通速递" andNum:@"95554"];
    ExpressPhoneNum* express110 = [[ExpressPhoneNum alloc]initPhoneNum:@"韵达快递" andNum:@"95546"];
    ExpressPhoneNum* express111 = [[ExpressPhoneNum alloc]initPhoneNum:@"优速物流" andNum:@"400-1111-119"];
    ExpressPhoneNum* express112 = [[ExpressPhoneNum alloc]initPhoneNum:@"远成物流" andNum:@"400-820-1646"];
    ExpressPhoneNum* express113 = [[ExpressPhoneNum alloc]initPhoneNum:@"亿领速运" andNum:@"400-611-1892"];
    ExpressPhoneNum* express114 = [[ExpressPhoneNum alloc]initPhoneNum:@"亿顺航" andNum:@"4006-018-268 "];
    ExpressPhoneNum* express115 = [[ExpressPhoneNum alloc]initPhoneNum:@"邮必佳" andNum:@"400-687-8123"];
    ExpressPhoneNum* express116 = [[ExpressPhoneNum alloc]initPhoneNum:@"易通达" andNum:@"0898-65339299"];
    ExpressPhoneNum* express117 = [[ExpressPhoneNum alloc]initPhoneNum:@"银捷速递" andNum:@"0755-88250666"];
    ExpressPhoneNum* express118 = [[ExpressPhoneNum alloc]initPhoneNum:@"宇鑫物流" andNum:@"0371-66368798"];
    ExpressPhoneNum* express119 = [[ExpressPhoneNum alloc]initPhoneNum:@"源安达" andNum:@"0769-85021875"];
    ExpressPhoneNum* express120 = [[ExpressPhoneNum alloc]initPhoneNum:@"元智捷诚" andNum:@"400-081-2345"];
    ExpressPhoneNum* express121 = [[ExpressPhoneNum alloc]initPhoneNum:@"一邦速递" andNum:@"400-800-0666"];
    ExpressPhoneNum* express122 = [[ExpressPhoneNum alloc]initPhoneNum:@"亚风速递" andNum:@"400-628-0018"];
    ExpressPhoneNum* express123 = [[ExpressPhoneNum alloc]initPhoneNum:@"源伟丰" andNum:@"400-601-2228"];
    ExpressPhoneNum* express124 = [[ExpressPhoneNum alloc]initPhoneNum:@"越丰物流" andNum:@"852-23909969"];
    ExpressPhoneNum* express125 = [[ExpressPhoneNum alloc]initPhoneNum:@"原飞航快递" andNum:@"0755-29778899"];
    ExpressPhoneNum* express126 = [[ExpressPhoneNum alloc]initPhoneNum:@"运通中港" andNum:@"0769-81156999"];
    self.expressY = [[NSArray alloc]initWithObjects:express109,express110,express111,express112,express113,
                     express114,express115,express116,express117,express118,express119,express120,express121,
                     express122,express123,express124,express125,express126,nil];
    //Z
    ExpressPhoneNum* express127 = [[ExpressPhoneNum alloc]initPhoneNum:@"中通速递" andNum:@"95311"];
    ExpressPhoneNum* express128 = [[ExpressPhoneNum alloc]initPhoneNum:@"中速快递" andNum:@"11183"];
    ExpressPhoneNum* express129 = [[ExpressPhoneNum alloc]initPhoneNum:@"中睿速递" andNum:@"400-0375-888"];
    ExpressPhoneNum* express130 = [[ExpressPhoneNum alloc]initPhoneNum:@"中外运速递" andNum:@"010-8041 8611"];
    ExpressPhoneNum* express131 = [[ExpressPhoneNum alloc]initPhoneNum:@"中外运速递" andNum:@"010-80418611"];
    ExpressPhoneNum* express132 = [[ExpressPhoneNum alloc]initPhoneNum:@"中铁快运" andNum:@"95572"];
    ExpressPhoneNum* express133 = [[ExpressPhoneNum alloc]initPhoneNum:@"中铁物流" andNum:@"400-000-5566"];
    ExpressPhoneNum* express134 = [[ExpressPhoneNum alloc]initPhoneNum:@"郑州建华" andNum:@"0371-65995266"];
    ExpressPhoneNum* express135 = [[ExpressPhoneNum alloc]initPhoneNum:@"忠信达" andNum:@"400-646-6665"];
    ExpressPhoneNum* express136 = [[ExpressPhoneNum alloc]initPhoneNum:@"中邮物流" andNum:@"11183"];
    self.expressZ = [[NSArray alloc]initWithObjects:express127,express128,express129,express130,express131,
                         express132,express133,express134,express135,express136,nil];
    self.expressArray = [[NSArray alloc]initWithObjects:self.expressHot,self.expressA,self.expressB,self.expressC,
                         self.expressD,self.expressE,self.expressF,self.expressG,self.expressH,self.expressJ,
                         self.expressK,self.expressL,self.expressM,self.expressN,self.expressO,self.expressP,
                         self.expressQ,self.expressR,self.expressS,self.expressT,self.expressU,self.expressW,
                         self.expressX,self.expressY,self.expressZ, nil];
    self.expressIndex = [[NSArray alloc]initWithObjects:@"热门",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"J",
                         @"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"W",@"X",@"Y",@"Z",nil];
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
//点击行打电话
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray* expressXX = self.expressArray[indexPath.section];
    ExpressPhoneNum* expressXXX = expressXX[indexPath.row];
    NSString* expressPhoneNumber = expressXXX.expressNum;
    NSMutableString* str = [[NSMutableString alloc]initWithFormat:@"tel:%@",expressPhoneNumber];
    UIWebView* callWebView = [[UIWebView alloc]init];
    [callWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:str]]];
    [self.view addSubview:callWebView];
    NSLog(@"打电话啊！");
}
@end
