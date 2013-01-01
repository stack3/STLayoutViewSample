//
//  STSetFrameCenter2ViewController.m
//  STLayoutViewSample
//
//  Created by EIMEI on 2013/01/01.
//  Copyright (c) 2013年 stack3. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
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
