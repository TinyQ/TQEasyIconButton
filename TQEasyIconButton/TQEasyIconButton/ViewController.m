//
//  ViewController.m
//  TQEasyIconButton
//
//  Created by qfu on 6/11/15.
//  Copyright (c) 2015 qfu. All rights reserved.
//

#import "ViewController.h"
#import "../../UIButton+TQEasyIcon/UIButton+TQEasyIcon.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *demoButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)left:(id)sender
{
    //[self.demoButton setIconInLeft];
    // or
    [self.demoButton setIconInLeftWithSpacing:10];
}

- (IBAction)right:(id)sender
{
    //[self.demoButton setIconInRight];
    // or
    [self.demoButton setIconInRightWithSpacing:10];
}

- (IBAction)top:(id)sender
{
    //[self.demoButton setIconInTop];
    // or
    [self.demoButton setIconInTopWithSpacing:10];
}

- (IBAction)bottom:(id)sender
{
    //[self.demoButton setIconInBottom];
    // or
    [self.demoButton setIconInBottomWithSpacing:10];
}

- (IBAction)info:(id)sender
{
    switch (self.demoButton.iconInfo.iconDirection)
    {
        case TQEasyIconInUnknown:
            NSLog(@"info : TQEasyIconInUnknown spacing : %f",(float)self.demoButton.iconInfo.iconWithTitleSpacing);
            break;
        case TQEasyIconInLeft:
            NSLog(@"info : TQEasyIconInLeft    spacing : %f",(float)self.demoButton.iconInfo.iconWithTitleSpacing);
            break;
        case TQEasyIconInRight:
            NSLog(@"info : TQEasyIconInRight   spacing : %f",(float)self.demoButton.iconInfo.iconWithTitleSpacing);
            break;
        case TQEasyIconInTop:
            NSLog(@"info : TQEasyIconInTop     spacing : %f",(float)self.demoButton.iconInfo.iconWithTitleSpacing);
            break;
        case TQEasyIconInBottom:
            NSLog(@"info : TQEasyIconInBottom  spacing : %f",(float)self.demoButton.iconInfo.iconWithTitleSpacing);
            break;
    }
}

@end
