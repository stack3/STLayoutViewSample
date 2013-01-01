//
//  STSetFrameFillViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2013/01/01.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STSetFrameFillViewController.h"

@implementation STSetFrameFillViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Set Frame - Fill";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button = button;
    [_button setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:_button];
}

- (void)viewDidLayoutSubviews
{
    _button.frame = self.view.bounds;
}

@end
