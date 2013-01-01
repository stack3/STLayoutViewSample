//
//  STAutoLayoutCenterViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2012/12/30.
//  Copyright (c) 2012年 stack3. All rights reserved.
//

#import "STAutoLayoutCenter2ViewController.h"

#define _STSpaceFromCenter 50

@implementation STAutoLayoutCenter2ViewController

- (id)init
{
    self = [super initWithNibName:@"STAutoLayoutCenter2ViewController" bundle:nil];
    if (self) {
        self.title = @"Auto Layout - Center2";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillLayoutSubviews
{
    CGPoint center = self.view.center;
    
    _leftHorizontalSpaceContraint.constant = center.x - _leftLabel.frame.size.width - _STSpaceFromCenter;
    _rightHorizontalSpaceContraint.constant = center.x - _rightLabel.frame.size.width - _STSpaceFromCenter;
    _topVerticalSpaceContraint.constant = center.y - _topLabel.frame.size.height - _STSpaceFromCenter;
    _bottomVerticalSpaceContraint.constant = center.y - _bottomLabel.frame.size.height - _STSpaceFromCenter;
}

@end
