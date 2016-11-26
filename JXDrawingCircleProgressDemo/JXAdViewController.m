//
//  JXAdViewController.m
//  JXDrawingCircleProgressDemo
//
//  Created by Jiuxing Wang on 16/11/26.
//  Copyright © 2016年 Heroic. All rights reserved.
//

#import "JXAdViewController.h"
#import "JXDrawingCircleProgressButton.h"

@interface JXAdViewController ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) JXDrawingCircleProgressButton *progressButton;
@end

@implementation JXAdViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.imageView];
    [self.view addSubview:self.progressButton];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [_progressButton startProgressAnimationWithDuration:5 completionHandler:^(JXDrawingCircleProgressButton *progressButton) {
        NSLog(@"The circle progress button completed animation");
        [self dismissViewControllerAnimated:YES completion:NULL];
    }];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}


#pragma mark -
#pragma mark Getters

- (UIImageView *)imageView
{
    if (nil == _imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
        _imageView.image = [UIImage imageNamed:@"mountain"];
    }
    
    return _imageView;
}

- (JXDrawingCircleProgressButton *)progressButton
{
    if (nil == _progressButton) {
        CGRect buttonFrame = (CGRect) {
            .origin.x = self.view.bounds.size.width - 55.f,
            .origin.y = 30.f,
            .size.width = 40.f,
            .size.height = 40.f
        };
        
        _progressButton = [[JXDrawingCircleProgressButton alloc] initWithFrame:buttonFrame];
        _progressButton.lineWidth = 2.f;
        [_progressButton setTitle:@"Skip" forState:UIControlStateNormal];
        _progressButton.titleLabel.font = [UIFont systemFontOfSize:14.f];
        [_progressButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_progressButton addTarget:self action:@selector(__skipButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _progressButton;
}


#pragma mark -
#pragma mark Target-Action

- (void)__skipButtonTouched:(UIButton *)button
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
