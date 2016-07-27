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
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [expressTraces count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        static NSString* cellIndentifier = @"UITableViewIndentifierKey";
        UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIndentifier];
            cell.textLabel.text = shipperCode;
            cell.detailTextLabel.text = logisticCode;
            cell.imageView.image = [UIImage imageNamed:@"bule"];
        }
    }
    static NSString* cellIndentifier = @"UITableViewCellTrace";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier];
    }
    UILabel* secondsLabel = (UILabel *)[cell viewWithTag:100];
    UILabel* dayLabel = (UILabel *)[cell viewWithTag:101];
    UITextView* tracesInfo = (UITextView *)[cell viewWithTag:102];
    
    NSDictionary* traces = expressTraces[indexPath.row];
    NSString* tracesInfoString = [traces objectForKey:@"AcceptStation"];//得到物流轨迹
    NSString* timeInfoString = [traces objectForKey:@"AcceptTime"];//获得物流时间
    NSString* secondsString = [timeInfoString substringWithRange:NSMakeRange(11, 5)];//获得小时和分钟
    NSString* dayString = [timeInfoString substringToIndex:10];//获得年月日
    
    secondsLabel.text = secondsString;
    dayLabel.text = dayString;
    tracesInfo.text = tracesInfoString;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
