//
//  STAutoLayoutEdgeViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2012/12/30.
//  Copyright (c) 2012年 stack3. All rights reserved.
//

#import "STAutoLayoutEdgeViewController.h"

@implementation STAutoLayoutEdgeViewController

- (id)init
{
    self = [super initWithNibName:@"STAutoLayoutEdgeViewController" bundle:nil];
    if (self) {
        self.title = @"Edge";
        self.navigationItem.prompt = @"Auto Layout";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


@end
