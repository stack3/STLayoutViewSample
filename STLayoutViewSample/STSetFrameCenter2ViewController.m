//
//  STSetFrameCenter2ViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2013/01/01.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STSetFrameCenter2ViewController.h"

#define _STSpaceFromCenter 50

@implementation STSetFrameCenter2ViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Set Frame - Center2";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *leftLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _leftLabel = leftLabel;
    _leftLabel.text = @"Left";
    [self.view addSubview:_leftLabel];
    
    UILabel *rightLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _rightLabel = rightLabel;
    _rightLabel.text = @"Right";
    [self.view addSubview:_rightLabel];
    
    UILabel *topLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _topLabel = topLabel;
    _topLabel.text = @"Top";
    [self.view addSubview:_topLabel];
    
    UILabel *bottomLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _bottomLabel = bottomLabel;
    _bottomLabel.text = @"Bottom";
    [self.view addSubview:_bottomLabel];
}

- (void)viewDidLayoutSubviews
{
    CGSize boundsSize = self.view.bounds.size;
    CGPoint center = self.view.center;
    
    CGRect leftLabelFrame;
    leftLabelFrame.size = [_leftLabel sizeThatFits:boundsSize];
    leftLabelFrame.origin.x = center.x - leftLabelFrame.size.width - _STSpaceFromCenter;
    leftLabelFrame.origin.y = center.y - leftLabelFrame.size.height / 2;
    _leftLabel.frame = leftLabelFrame;
    
    CGRect rightLabelFrame;
    rightLabelFrame.size = [_rightLabel sizeThatFits:boundsSize];
    rightLabelFrame.origin.x = center.x + _STSpaceFromCenter;
    rightLabelFrame.origin.y = center.y - rightLabelFrame.size.height / 2;
    _rightLabel.frame = rightLabelFrame;
    
    CGRect topLabelFrame;
    topLabelFrame.size = [_topLabel sizeThatFits:boundsSize];
    topLabelFrame.origin.x = center.x - topLabelFrame.size.width / 2;
    topLabelFrame.origin.y = center.y - topLabelFrame.size.height - _STSpaceFromCenter;
    _topLabel.frame = topLabelFrame;
    
    CGRect bottomLabelFrame;
    bottomLabelFrame.size = [_bottomLabel sizeThatFits:boundsSize];
    bottomLabelFrame.origin.x = center.x - bottomLabelFrame.size.width / 2;
    bottomLabelFrame.origin.y = center.y + _STSpaceFromCenter;
    _bottomLabel.frame = bottomLabelFrame;
}

@end
