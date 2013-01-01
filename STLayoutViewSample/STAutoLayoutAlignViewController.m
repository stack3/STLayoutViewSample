//
//  STAutoLayoutAlignViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2012/12/30.
//  Copyright (c) 2012年 stack3. All rights reserved.
//

#import "STAutoLayoutAlignViewController.h"

@implementation STAutoLayoutAlignViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"STAutoLayoutAlignViewController" bundle:nil];
    if (self) {
        self.title = @"Align";
        self.navigationItem.prompt = @"Auto Layout";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [_button addTarget:self action:@selector(buttonDidTap) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonDidTap
{
    _rightMarginLabel2.text = @"xxx Right Align";
    _noRightMarginLabel2.text = @"xxx No Right Align";
}

@end
