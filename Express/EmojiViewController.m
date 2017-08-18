//
//  EmojiViewController.m
//  Express
//
//  Created by LeeLom on 2017/7/1.
//  Copyright © 2017年 LeeLom. All rights reserved.
//

#import "EmojiViewController.h"


@interface EmojiViewController ()

@end

@implementation EmojiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //fish: 10s
    //emoji: 2s
    NSTimer *timer =
    [NSTimer scheduledTimerWithTimeInterval:6 repeats:NO block:^(NSTimer * _Nonnull timer) {
        UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"tab"];
        [self presentViewController:vc animated:NO completion:nil];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
