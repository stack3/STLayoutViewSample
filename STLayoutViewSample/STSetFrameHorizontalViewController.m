//
//  STSetFrameHorizontalViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2013/01/01.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STSetFrameHorizontalViewController.h"

@implementation STSetFrameHorizontalViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Set Frame - Horizontal";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    UITextField *searchTextField = [[UITextField alloc] initWithFrame:CGRectZero];
    _searchTextField = searchTextField;
    _searchTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:_searchTextField];
    
    UIButton *searchButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _searchButton = searchButton;
    [_searchButton setTitle:@"Search" forState:UIControlStateNormal];
    [self.view addSubview:_searchButton];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _nameLabel = nameLabel;
    _nameLabel.text = @"Name";
    [self.view addSubview:_nameLabel];
    
    UITextField *nameTextField = [[UITextField alloc] initWithFrame:CGRectZero];
    _nameTextField = nameTextField;
    [self.view addSubview:_nameTextField];
}

- (void)viewDidLayoutSubviews
{
    CGSize boundsSize = self.view.bounds.size;
    
    CGRect searchButtonFrame;
    searchButtonFrame.size.width = boundsSize.width;
    searchButtonFrame.size.height = 33;
    searchButtonFrame.size = [_searchButton sizeThatFits:searchButtonFrame.size];
    searchButtonFrame.origin.x = boundsSize.width - 20 - searchButtonFrame.size.width;
    searchButtonFrame.origin.y = 20;
    _searchButton.frame = searchButtonFrame;
    
    CGRect searchTextFieldFrame;
    searchTextFieldFrame.size.width = searchButtonFrame.origin.x - 20 - 8;
    searchTextFieldFrame.size.height = 30;
    searchTextFieldFrame.origin.x = 20;
    searchTextFieldFrame.origin.y = _searchButton.center.y - searchTextFieldFrame.size.height / 2;
    _searchTextField.frame = searchTextFieldFrame;
}

@end
