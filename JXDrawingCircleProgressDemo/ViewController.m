//
//  ViewController.m
//  JXDrawingCircleProgressDemo
//
//  Created by Jiuxing Wang on 16/11/26.
//  Copyright © 2016年 Heroic. All rights reserved.
//

#import "ViewController.h"
#import "JXAdViewController.h"


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Start Testing" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(__testButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
    
    button.frame = (CGRect) {
        .origin = CGPointZero,
        .size.width = 100.f,
        .size.height = 100.f
    };
    button.center = self.view.center;
    
    [self.view addSubview:button];
}


#pragma mark -
#pragma mark Target-Action

- (void)__testButtonTouched:(UIButton *)sender
{
    JXAdViewController *adViewController = [[JXAdViewController alloc] init];
    
    [self presentViewController:adViewController animated:YES completion:^{
        NSLog(@"");
    }];
}


@end
