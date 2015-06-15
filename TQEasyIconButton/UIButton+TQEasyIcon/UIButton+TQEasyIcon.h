//
//  UIButton+TQEasyIcon.h
//  TestUIButton
//
//  Created by qfu on 6/10/15.
//  Copyright (c) 2015 qfu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TQEasyIconDirection)
{
    TQEasyIconInUnknown = 0,
    TQEasyIconInLeft,
    TQEasyIconInRight,
    TQEasyIconInTop,
    TQEasyIconInBottom,
};

@interface TQEasyIconInfo : NSObject

@property (nonatomic,assign) TQEasyIconDirection iconDirection;
@property (nonatomic,assign) CGFloat iconWithTitleSpacing;

@end

@interface UIButton (TQEasyIcon)

@property (nonatomic,strong,readonly) TQEasyIconInfo *iconInfo;

- (void)setIconInLeft;
- (void)setIconInRight;
- (void)setIconInTop;
- (void)setIconInBottom;
- (void)setIconInLeftWithSpacing:(CGFloat)Spacing;
- (void)setIconInRightWithSpacing:(CGFloat)Spacing;
- (void)setIconInTopWithSpacing:(CGFloat)Spacing;
- (void)setIconInBottomWithSpacing:(CGFloat)Spacing;

@end
