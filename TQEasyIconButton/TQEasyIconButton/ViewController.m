//
//  ViewController.m
//  TQEasyIconButton
//
//  Created by qfu on 6/11/15.
//  Copyright (c) 2015 qfu. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+TQEasyIcon.h"

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
    [self.demoButton setIconInLeft];
    // or
    //[self.demoButton setIconInLeftWithSpacing:0];
}

- (IBAction)right:(id)sender
{
    [self.demoButton setIconInRight];
    // or
    //[self.demoButton setIconInRightWithSpacing:0];
}

- (IBAction)top:(id)sender
{
    [self.demoButton setIconInTop];
    // or
    //[self.demoButton setIconInTopWithSpacing:0];
}

- (IBAction)bottom:(id)sender
{
    [self.demoButton setIconInBottom];
    // or
    //[self.demoButton setIconInBottomWithSpacing:0];
}

@end
