//
//  UIButton+TQEasyIcon.h
//  TestUIButton
//
//  Created by qfu on 6/10/15.
//  Copyright (c) 2015 qfu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (TQEasyIcon)

- (void)setIconInLeft;
- (void)setIconInRight;
- (void)setIconInTop;
- (void)setIconInBottom;
- (void)setIconInLeftWithSpacing:(CGFloat)Spacing;
- (void)setIconInRightWithSpacing:(CGFloat)Spacing;
- (void)setIconInTopWithSpacing:(CGFloat)Spacing;
- (void)setIconInBottomWithSpacing:(CGFloat)Spacing;

@end
