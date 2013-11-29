//
//  FrameAnimationView.h
//  FrameAnimation
//
//  Created by D on 13-11-29.
//  Copyright (c) 2013年 AlphaStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FrameAnimationView : UIView

@property (nonatomic, retain) UIImageView *myImageView;

- (instancetype)initWithImages:(NSArray *)images andFrame:(CGRect)frame;

- (instancetype)initWithImages:(NSArray *)images
                      andFrame:(CGRect)frame
                     andRepeat:(int)repeat;

- (void)startAnimation;

@property (nonatomic, assign) int repeat;
@end
