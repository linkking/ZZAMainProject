//
//  ViewController.m
//  ZZAMainProject
//
//  Created by zhulei on 2018/4/24.
//  Copyright © 2018年 zs. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
@interface ViewController ()
@property (nonatomic,strong) UIButton *webBtn;
@property (nonatomic,strong) UIButton *localBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupViews];
}

-(void)setupViews
{
    self.view.backgroundColor = [UIColor whiteColor];
    self.webBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.webBtn.frame = CGRectMake(100, 200, 100, 100);
    self.webBtn.backgroundColor = [UIColor redColor];
    [self.webBtn setTitle:@"web页面" forState:UIControlStateNormal];
    self.webBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    [self.webBtn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.webBtn];
    
    self.localBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.localBtn.frame = CGRectMake(220, 200, 100, 100);
    self.localBtn.backgroundColor = [UIColor redColor];
    [self.localBtn setTitle:@"本地页面" forState:UIControlStateNormal];
    self.localBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    [self.localBtn addTarget:self action:@selector(clickLocalBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.localBtn];
}

-(void)clickBtn
{
    AViewController *webVC = [[AViewController alloc]init];
    [self.navigationController pushViewController:webVC animated:YES];
}

-(void)clickLocalBtn
{
    AViewController *webVC = [[AViewController alloc]init];
    [self.navigationController pushViewController:webVC animated:YES];
}

@end
