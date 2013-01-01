//
//  STSetFrameCenter1ViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2013/01/01.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STSetFrameCenter1ViewController.h"

@implementation STSetFrameCenter1ViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Set Frame - Center1";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *centerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _centerButton = centerButton;
    [_centerButton setTitle:@"Center" forState:UIControlStateNormal];
    [self.view addSubview:_centerButton];
}

- (void)viewDidLayoutSubviews
{
    CGSize boundsSize = self.view.bounds.size;

    CGRect centerButtonFrame;
    centerButtonFrame.size = [_centerButton sizeThatFits:boundsSize];
    centerButtonFrame.origin.x = (boundsSize.width - centerButtonFrame.size.width) / 2;
    centerButtonFrame.origin.y = (boundsSize.height - centerButtonFrame.size.height) / 2;
    _centerButton.frame = centerButtonFrame;
}

@end
