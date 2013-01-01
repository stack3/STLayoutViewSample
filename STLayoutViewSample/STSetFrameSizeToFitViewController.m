//
//  STSetFrameSizeToFitViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2013/01/01.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STSetFrameSizeToFitViewController.h"

@interface STSetFrameSizeToFitViewController ()

@end

@implementation STSetFrameSizeToFitViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Size to Fit";
        self.navigationItem.prompt = @"Set Frame";
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
