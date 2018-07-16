//
//  ViewController.m
//  WXScrollLabel
//
//  Created by HFY on 2018/7/16.
//  Copyright © 2018年 wuxi. All rights reserved.
//

#import "ViewController.h"
#import "WXCyclicScrollLabel.h"

@interface ViewController ()<WXCyclicScrollLabelDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupScrollLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupScrollLabel{
    WXCyclicScrollLabel *scrollLabel = [WXCyclicScrollLabel scrollLabelWithTitle:@"免费，不要钱，快来抢，带刀来，随便拿 ,快来看啊，难得的机会啊，我的存在就是为了凑字数，字数多一点就可以换行了" type:WXScrollTypeLeftRight velocity:1 options:UIViewAnimationOptionCurveEaseInOut font:[UIFont systemFontOfSize:12] scrolllSpace:10 insets:UIEdgeInsetsMake(0, 10 , 0, 10)];
    scrollLabel.frame = CGRectMake(10, 100, 300, 30);
    scrollLabel.scrollLabelDelegate = self;
    [self.view addSubview:scrollLabel];
    [scrollLabel beginScrolling];
    
    WXCyclicScrollLabel *upDownLabel = [WXCyclicScrollLabel scrollLabelWithTitle:@"免费，不要钱，快来抢，带刀来，随便拿 ,快来看啊，难得的机会啊，我的存在就是为了凑字数，字数多一点就可以换行了" type:WXScrollTypeUpDown velocity:2 options:UIViewAnimationOptionCurveEaseInOut font:[UIFont systemFontOfSize:12] scrolllSpace:5 insets:UIEdgeInsetsMake(0, 10 , 0, 10)];
    upDownLabel.frame = CGRectMake(10, 150, 300, 30);
    upDownLabel.backgroundColor = [UIColor redColor];
    upDownLabel.scrollTitleColor = [UIColor greenColor];
    upDownLabel.scrollLabelDelegate = self;
    [self.view addSubview:upDownLabel];
    [upDownLabel beginScrolling];
    
    WXCyclicScrollLabel *flipLabel = [WXCyclicScrollLabel scrollLabelWithTitle:@"免费，不要钱，快来抢，带刀来，随便拿 ,快来看啊，难得的机会啊，我的存在就是为了凑字数，字数多一点就可以换行了" type:WXScrollTypeFlipRepeat velocity:1 options:UIViewAnimationOptionCurveEaseInOut font:[UIFont systemFontOfSize:12] scrolllSpace:10 insets:UIEdgeInsetsMake(0, 10 , 0, 10)];
    flipLabel.frame = CGRectMake(10, 200, 300, 60);
    flipLabel.backgroundColor = [UIColor blueColor];
    flipLabel.scrollTitleColor = [UIColor redColor];
    flipLabel.scrollLabelDelegate = self;
    [self.view addSubview:flipLabel];
    [flipLabel beginScrolling];
    
    
}
@end
