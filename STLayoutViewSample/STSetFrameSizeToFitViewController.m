//
//  STSetFrameSizeToFitViewController.m
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

#import "STSetFrameSizeToFitViewController.h"

@interface STSetFrameSizeToFitViewController ()

@end

@implementation STSetFrameSizeToFitViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Set Frame - Size to Fit";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    UILabel *flexibleWidthLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _flexibleWidthLabel = flexibleWidthLabel;
    _flexibleWidthLabel.text = @"Flexible Width";
    [self.view addSubview:_flexibleWidthLabel];
    
    UILabel *flexibleHeightLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _flexibleHeightLabel = flexibleHeightLabel;
    _flexibleHeightLabel.text = @"Flexible Height";
    _flexibleHeightLabel.numberOfLines = 0;
    _flexibleHeightLabel.lineBreakMode = NSLineBreakByWordWrapping;
    [self.view addSubview:_flexibleHeightLabel];
    
    UIButton *longTextButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _longTextButton = longTextButton;
    [_longTextButton setTitle:@"Long Text" forState:UIControlStateNormal];
    [_longTextButton addTarget:self action:@selector(buttonDidTap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_longTextButton];
    
}

- (void)viewDidLayoutSubviews
{
    CGSize boundsSize = self.view.bounds.size;
    
    CGRect flexibleWidthLabelFrame;
    flexibleWidthLabelFrame.origin.x = 20;
    flexibleWidthLabelFrame.origin.y = 20;
    flexibleWidthLabelFrame.size.width = boundsSize.width - 20*2;
    flexibleWidthLabelFrame.size.height = boundsSize.height - 20*2;
    flexibleWidthLabelFrame.size = [_flexibleWidthLabel sizeThatFits:flexibleWidthLabelFrame.size];
    _flexibleWidthLabel.frame = flexibleWidthLabelFrame;
    
    CGRect flexibleHeightLabelFrame;
    flexibleHeightLabelFrame.origin.x = 20;
    flexibleHeightLabelFrame.origin.y = flexibleWidthLabelFrame.origin.y + flexibleWidthLabelFrame.size.height + 8;
    flexibleHeightLabelFrame.size.width = boundsSize.width - 20*2;
    flexibleHeightLabelFrame.size.height = boundsSize.height - 20*2;
    flexibleHeightLabelFrame.size = [_flexibleHeightLabel sizeThatFits:flexibleHeightLabelFrame.size];
    _flexibleHeightLabel.frame = flexibleHeightLabelFrame;
    
    CGRect longTextButtonFrame;
    longTextButtonFrame.size.width = boundsSize.width - 20*2;
    longTextButtonFrame.size.height = boundsSize.height - 20*2;
    longTextButtonFrame.size = [_longTextButton sizeThatFits:longTextButtonFrame.size];
    longTextButtonFrame.origin.x = boundsSize.width - longTextButtonFrame.size.width - 20;
    longTextButtonFrame.origin.y = flexibleHeightLabelFrame.origin.y + flexibleHeightLabelFrame.size.height + 8;
    _longTextButton.frame = longTextButtonFrame;
}

- (void)buttonDidTap
{
    _flexibleWidthLabel.text = @"Looooooooooooooooong text";
    _flexibleHeightLabel.text = @"Looooooooooooooooooooooooooooooooooooooooooooong text";
    [self.view setNeedsLayout]; // It will call viewDidLayoutSubviews later.
}

@end
