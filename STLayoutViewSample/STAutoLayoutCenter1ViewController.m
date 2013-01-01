//
//  STAutoLayoutCenter1ViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2012/12/31.
//  Copyright (c) 2012年 stack3. All rights reserved.
//

#import "STAutoLayoutCenter1ViewController.h"

@interface STAutoLayoutCenter1ViewController ()

@end

@implementation STAutoLayoutCenter1ViewController

- (id)init
{
    self = [super initWithNibName:@"STAutoLayoutCenter1ViewController" bundle:nil];
    if (self) {
        self.title = @"Center1";
        self.navigationItem.prompt = @"Auto Layout";
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
