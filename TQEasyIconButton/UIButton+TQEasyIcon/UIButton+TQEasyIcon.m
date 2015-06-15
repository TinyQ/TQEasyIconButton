//
//  UIButton+TQEasyIcon.m
//  TestUIButton
//
//  Created by qfu on 6/10/15.
//  Copyright (c) 2015 qfu. All rights reserved.
//

#import "UIButton+TQEasyIcon.h"
#import <objc/runtime.h>

@implementation TQEasyIconInfo

- (instancetype)initWithSpacing:(CGFloat)spacing iconDirection:(TQEasyIconDirection)direction
{
    self = [super init];
    if (self) {
        self.iconWithTitleSpacing = spacing;
        self.iconDirection        = direction;
    }
    return self;
}

@end

@implementation UIButton (TQEasyIcon)

#pragma mark - icon direction property

@dynamic iconInfo;

static char* const ASSOCIATION_ICON_INFO = "ASSOCIATION_ICON_INFO";

- (void)setIconInfo:(TQEasyIconInfo *)iconInfo
{
    objc_setAssociatedObject(self,ASSOCIATION_ICON_INFO,iconInfo,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (TQEasyIconInfo *)iconInfo
{
    id obj = objc_getAssociatedObject(self,ASSOCIATION_ICON_INFO);
    
    if (obj == nil)
    {
        obj = [[TQEasyIconInfo alloc] initWithSpacing:0 iconDirection:0];
    }
    
    return obj;
}

#pragma mark - setIconIn L,R,T,B

- (void)setIconInLeft
{
    [self setIconInLeftWithSpacing:0];
}

- (void)setIconInRight
{
    [self setIconInRightWithSpacing:0];
}

- (void)setIconInTop
{
    [self setIconInTopWithSpacing:0];
}

- (void)setIconInBottom
{
    [self setIconInBottomWithSpacing:0];
}

#pragma mark - setIconIn L,R,T,B With Spacing

- (void)setIconInLeftWithSpacing:(CGFloat)Spacing
{
    self.titleEdgeInsets = (UIEdgeInsets){
        .top    = 0,
        .left   =   (Spacing / 2),
        .bottom = 0,
        .right  = - (Spacing / 2),
    };
    
    self.imageEdgeInsets = (UIEdgeInsets){
        .top    = 0,
        .left   = - (Spacing / 2),
        .bottom = 0,
        .right  =   (Spacing / 2),
    };
    
    TQEasyIconInfo *iconInfo = [[TQEasyIconInfo alloc] initWithSpacing:Spacing iconDirection:TQEasyIconInLeft];
    
    [self setIconInfo:iconInfo];
}

- (void)setIconInRightWithSpacing:(CGFloat)Spacing
{    
    CGFloat img_W = self.imageView.frame.size.width;
    CGFloat tit_W = self.titleLabel.frame.size.width;
    
    self.titleEdgeInsets = (UIEdgeInsets){
        .top    = 0,
        .left   = - (img_W + Spacing / 2),
        .bottom = 0,
        .right  =   (img_W + Spacing / 2),
    };
    
    self.imageEdgeInsets = (UIEdgeInsets){
        .top    = 0,
        .left   =   (tit_W + Spacing / 2),
        .bottom = 0,
        .right  = - (tit_W + Spacing / 2),
    };
    
    TQEasyIconInfo *iconInfo = [[TQEasyIconInfo alloc] initWithSpacing:Spacing iconDirection:TQEasyIconInRight];
    
    [self setIconInfo:iconInfo];
}

- (void)setIconInTopWithSpacing:(CGFloat)Spacing
{
    CGFloat img_W = self.imageView.frame.size.width;
    CGFloat img_H = self.imageView.frame.size.height;
    CGFloat tit_W = self.titleLabel.frame.size.width;
    CGFloat tit_H = self.titleLabel.frame.size.height;
    
    self.titleEdgeInsets = (UIEdgeInsets){
        .top    =   (tit_H / 2 + Spacing / 2),
        .left   = - (img_W / 2),
        .bottom = - (tit_H / 2 + Spacing / 2),
        .right  =   (img_W / 2),
    };
    
    self.imageEdgeInsets = (UIEdgeInsets){
        .top    = - (img_H / 2 + Spacing / 2),
        .left   =   (tit_W / 2),
        .bottom =   (img_H / 2 + Spacing / 2),
        .right  = - (tit_W / 2),
    };
    
    TQEasyIconInfo *iconInfo = [[TQEasyIconInfo alloc] initWithSpacing:Spacing iconDirection:TQEasyIconInTop];
    
    [self setIconInfo:iconInfo];
}

- (void)setIconInBottomWithSpacing:(CGFloat)Spacing
{
    CGFloat img_W = self.imageView.frame.size.width;
    CGFloat img_H = self.imageView.frame.size.height;
    CGFloat tit_W = self.titleLabel.frame.size.width;
    CGFloat tit_H = self.titleLabel.frame.size.height;
    
    self.titleEdgeInsets = (UIEdgeInsets){
        .top    = - (tit_H / 2 + Spacing / 2),
        .left   = - (img_W / 2),
        .bottom =   (tit_H / 2 + Spacing / 2),
        .right  =   (img_W / 2),
    };
    
    self.imageEdgeInsets = (UIEdgeInsets){
        .top    =   (img_H / 2 + Spacing / 2),
        .left   =   (tit_W / 2),
        .bottom = - (img_H / 2 + Spacing / 2),
        .right  = - (tit_W / 2),
    };
    
    TQEasyIconInfo *iconInfo = [[TQEasyIconInfo alloc] initWithSpacing:Spacing iconDirection:TQEasyIconInBottom];
    
    [self setIconInfo:iconInfo];
}

@end
