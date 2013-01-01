//
//  STAutoLayoutHorizontalViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2012/12/30.
//  Copyright (c) 2012年 stack3. All rights reserved.
//

#import "STAutoLayoutHorizontalViewController.h"

@interface STAutoLayoutHorizontalViewController ()

@end

@implementation STAutoLayoutHorizontalViewController

- (id)init
{
    self = [super initWithNibName:@"STAutoLayoutHorizontalViewController" bundle:nil];
    if (self) {
        self.title = @"Horizontal";
        self.navigationItem.prompt = @"Auto Layout";
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
    NSString *longText = @"Looooong text";
    [_searchButton setTitle:longText forState:UIControlStateNormal];
    _nameLabel.text = longText;
}

@end
