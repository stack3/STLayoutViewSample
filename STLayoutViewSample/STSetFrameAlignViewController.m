//
//  STSetFrameAlignViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2013/01/01.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STSetFrameAlignViewController.h"

@implementation STSetFrameAlignViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Align";
        self.navigationItem.prompt = @"Set Frame";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

@end
