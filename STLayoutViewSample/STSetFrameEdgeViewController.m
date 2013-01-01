//
//  STSetFrameEdgeViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2013/01/01.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STSetFrameEdgeViewController.h"

@implementation STSetFrameEdgeViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Set Frame - Edge";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *leftTopLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _leftTopLabel = leftTopLabel;
    _leftTopLabel.text = @"Left Top";
    [self.view addSubview:_leftTopLabel];
    
    UILabel *rightTopLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _rightTopLabel = rightTopLabel;
    _rightTopLabel.text = @"Right Top";
    [self.view addSubview:_rightTopLabel];
    
    UILabel *leftBottomLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _leftBottomLabel = leftBottomLabel;
    _leftBottomLabel.text = @"Left Bottom";
    [self.view addSubview:_leftBottomLabel];
    
    UILabel *rightBottomLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _rightBottomLabel = rightBottomLabel;
    _rightBottomLabel.text = @"Right Bottom";
    [self.view addSubview:_rightBottomLabel];
}

- (void)viewDidLayoutSubviews
{
    CGSize boundsSize = self.view.bounds.size;
    
    CGRect leftTopLabelFrame;
    leftTopLabelFrame.origin.x = 20;
    leftTopLabelFrame.origin.y = 20;
    leftTopLabelFrame.size.width = boundsSize.width - 20*2;
    leftTopLabelFrame.size.height = boundsSize.height - 20*2;
    leftTopLabelFrame.size = [_leftTopLabel sizeThatFits:leftTopLabelFrame.size];
    _leftTopLabel.frame = leftTopLabelFrame;
    
    CGRect rightTopLabelFrame;
    rightTopLabelFrame.size.width = boundsSize.width - 20*2;
    rightTopLabelFrame.size.height = boundsSize.height - 20*2;
    rightTopLabelFrame.size = [_rightTopLabel sizeThatFits:rightTopLabelFrame.size];
    rightTopLabelFrame.origin.x = boundsSize.width - rightTopLabelFrame.size.width - 20;
    rightTopLabelFrame.origin.y = 20;
    _rightTopLabel.frame = rightTopLabelFrame;
    
    CGRect leftBottomLabelFrame;
    leftBottomLabelFrame.size.width = boundsSize.width - 20*2;
    leftBottomLabelFrame.size.height = boundsSize.height - 20*2;
    leftBottomLabelFrame.size = [_leftBottomLabel sizeThatFits:leftBottomLabelFrame.size];
    leftBottomLabelFrame.origin.x = 20;
    leftBottomLabelFrame.origin.y = boundsSize.height - leftBottomLabelFrame.size.height - 20;
    _leftBottomLabel.frame = leftBottomLabelFrame;
    
    CGRect rightBottomLabelFrame;
    rightBottomLabelFrame.size.width = boundsSize.width - 20*2;
    rightBottomLabelFrame.size.height = boundsSize.height - 20*2;
    rightBottomLabelFrame.size = [_rightBottomLabel sizeThatFits:rightBottomLabelFrame.size];
    rightBottomLabelFrame.origin.x = boundsSize.width - rightBottomLabelFrame.size.width - 20;
    rightBottomLabelFrame.origin.y = boundsSize.height - rightBottomLabelFrame.size.height - 20;
    _rightBottomLabel.frame = rightBottomLabelFrame;
}

@end
