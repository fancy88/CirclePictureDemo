//
//  ViewController.m
//  CycleBannerDemo
//
//  Created by apple on 17/1/17.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "FLHPageView.h"

@interface ViewController ()<FLHPageViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    FLHPageView *pageView = [[FLHPageView alloc] init];
    pageView.frame = CGRectMake(30, 50, self.view.frame.size.width - 60, 130);
    
    pageView.imageArr = @[@"img_00",@"img_01",@"img_02",@"img_03",@"img_04"];
    pageView.selectColor = [UIColor redColor];
    pageView.normalColor = [UIColor grayColor];
    pageView.delegate = self;
    [self.view addSubview:pageView];
    pageView.clickBlock = ^(NSInteger index){
        
        NSLog(@"我是block的回调点击事件，%ld",index);
        NSLog(@"very good!");
    };
}

-(void)pageViewDidClick:(NSInteger)index{
    NSLog(@"good!");
    NSLog(@"我是page代理的回调点击事件, %ld",index);
    NSLog(@"hello");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
