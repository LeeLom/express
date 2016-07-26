//
//  FirstViewController.m
//  Express
//
//  Created by LeeLom on 16/7/24.
//  Copyright © 2016年 LeeLom. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (strong, nonatomic) IBOutlet UITextField *expressForUser;
@property (strong, nonatomic) IBOutlet UITextField *expressNum;
@property (strong, nonatomic) IBOutlet UITextField *expressCompany;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)expressSearch:(id)sender {
}

@end
