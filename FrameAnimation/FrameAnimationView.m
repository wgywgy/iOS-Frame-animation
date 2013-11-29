//
//  FrameAnimationView.m
//  FrameAnimation
//
//  Created by D on 13-11-29.
//  Copyright (c) 2013年 AlphaStudio. All rights reserved.
//

#import "FrameAnimationView.h"

@implementation FrameAnimationView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (instancetype)initWithImages:(NSArray *)images andFrame:(CGRect)frame
{
    self = [self initWithFrame:frame];
    if (self) {
        self.repeat = 1;
        [self addImages:images andImageFrames:frame];
    }
    return self;
}

- (instancetype)initWithImages:(NSArray *)images andFrame:(CGRect)frame andRepeat:(int)repeat
{
    self = [self initWithFrame:frame];
    if (self) {

        self.repeat = repeat;
        [self addImages:images andImageFrames:frame];
    }
    return self;
}

- (void)addImages:(NSArray *)images andImageFrames:(CGRect)frame
{
    CGRect imageRect = CGRectMake(0.0f, 0.0f, frame.size.height, frame.size.width);
    
    _myImageView = [[UIImageView alloc] initWithFrame:imageRect];
    
    _myImageView.animationImages = images;
    _myImageView.animationRepeatCount = self.repeat;
    
    //播放动画并将image显示在View上
    [_myImageView startAnimating];
    
    [self addSubview:_myImageView];
}

- (void)startAnimation
{
    [_myImageView startAnimating];
}

@end
