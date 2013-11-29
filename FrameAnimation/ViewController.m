//
//  ViewController.m
//  FrameAnimation
//
//  Created by D on 13-11-29.
//  Copyright (c) 2013年 AlphaStudio. All rights reserved.
//

#import "ViewController.h"

#define PICNUM 54
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self addFrameAnimationView];
    [self addAnimationStartBtn];
}

- (void)addFrameAnimationView
{
//将需要制作动画的图档名称按照顺序置入阵列中
    NSMutableArray *pic = [@[]mutableCopy];
    for (int num = 0; num <= PICNUM; num++) {
        [pic addObject:[UIImage imageNamed:[NSString stringWithFormat:@"%d",num]]];
    }

    self.frameAnimationView = [[FrameAnimationView alloc]initWithImages:pic
                                                               andFrame:CGRectMake(0, 0, 180, 180)];
    self.frameAnimationView.center = CGPointMake(160, 160);
    

    [self.view addSubview:self.frameAnimationView];
}

- (void)addAnimationStartBtn
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(120, 360, 88, 48);
    [button setTitle:@"test" forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(startAnimate)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)startAnimate
{
    [self.frameAnimationView startAnimation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end