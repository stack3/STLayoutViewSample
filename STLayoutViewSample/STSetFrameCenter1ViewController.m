//
//  STSetFrameCenter1ViewController.m
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
