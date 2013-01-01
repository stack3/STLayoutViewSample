//
//  STAutoLayoutCenterViewController.m
//  STLayoutViewSample
//
//  Created by EIMEI on 2012/12/30.
//  Copyright (c) 2012年 stack3. All rights reserved.
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
