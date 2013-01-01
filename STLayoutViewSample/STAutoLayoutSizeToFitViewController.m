//
//  STAutoLayoutSizeToFitViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2012/12/31.
//  Copyright (c) 2012年 stack3. All rights reserved.
//

#import "STAutoLayoutSizeToFitViewController.h"

@implementation STAutoLayoutSizeToFitViewController

- (id)init
{
    self = [super initWithNibName:@"STAutoLayoutSizeToFitViewController" bundle:nil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_longTextButton addTarget:self action:@selector(buttonDidTap) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonDidTap
{
    _flexibleWidthLabel.text = @"Loooooooooong text";
    _flexibleHeightLabel.text = @"Looooooooooooooooooooooooooooooooooooooooooooong text";
}

@end
