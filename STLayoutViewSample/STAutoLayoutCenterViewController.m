//
//  STAutoLayoutCenterViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2012/12/30.
//  Copyright (c) 2012年 stack3. All rights reserved.
//

#import "STAutoLayoutCenterViewController.h"

@interface STAutoLayoutCenterViewController ()

@end

@implementation STAutoLayoutCenterViewController

- (id)init
{
    self = [super initWithNibName:@"STAutoLayoutCenterViewController" bundle:nil];
    if (self) {
        self.title = @"Center";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
