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
    _searchTextField.font = [UIFont systemFontOfSize:14.0];
    _searchTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
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
    _nameTextField.borderStyle = UITextBorderStyleRoundedRect;
    _nameTextField.font = [UIFont systemFontOfSize:14.0];
    _nameTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [self.view addSubview:_nameTextField];
    
    UIButton *longTextButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _longTextButton = longTextButton;
    [_longTextButton setTitle:@"Long Text" forState:UIControlStateNormal];
    [_longTextButton addTarget:self action:@selector(buttonDidTap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_longTextButton];
}

- (void)viewDidLayoutSubviews
{
    CGSize boundsSize = self.view.bounds.size;
    
    CGRect searchButtonFrame;
    searchButtonFrame.size = boundsSize;
    searchButtonFrame.size = [_searchButton sizeThatFits:searchButtonFrame.size];
    searchButtonFrame.size.height = 33;
    searchButtonFrame.origin.x = boundsSize.width - 20 - searchButtonFrame.size.width;
    searchButtonFrame.origin.y = 20;
    _searchButton.frame = searchButtonFrame;
    
    CGRect searchTextFieldFrame;
    searchTextFieldFrame.size.width = searchButtonFrame.origin.x - 20 - 8;
    searchTextFieldFrame.size.height = 30;
    searchTextFieldFrame.origin.x = 20;
    searchTextFieldFrame.origin.y = _searchButton.center.y - searchTextFieldFrame.size.height / 2;
    _searchTextField.frame = searchTextFieldFrame;

    CGRect nameLabelFrame;
    nameLabelFrame.size = boundsSize;
    nameLabelFrame.size = [_nameLabel sizeThatFits:nameLabelFrame.size];
    nameLabelFrame.size.height = 30;
    nameLabelFrame.origin.x = 20;
    nameLabelFrame.origin.y = searchButtonFrame.origin.y + searchButtonFrame.size.height + 8;
    _nameLabel.frame = nameLabelFrame;
    
    CGRect nameTextFieldFrame;
    nameTextFieldFrame.origin.x = nameLabelFrame.origin.x + nameLabelFrame.size.width + 8;
    nameTextFieldFrame.origin.y = nameLabelFrame.origin.y;
    nameTextFieldFrame.size.width = boundsSize.width - nameTextFieldFrame.origin.x - 20;
    nameTextFieldFrame.size.height = 30;
    _nameTextField.frame = nameTextFieldFrame;
    
    CGRect longTextButtonFrame;
    longTextButtonFrame.size = boundsSize;
    longTextButtonFrame.size = [_longTextButton sizeThatFits:longTextButtonFrame.size];
    longTextButtonFrame.origin.x = boundsSize.width - longTextButtonFrame.size.width - 20;
    longTextButtonFrame.origin.y = nameLabelFrame.origin.y + nameLabelFrame.size.height + 8;
    _longTextButton.frame = longTextButtonFrame;
}

- (void)buttonDidTap
{
    NSString *longText = @"Looooong text";
    [_searchButton setTitle:longText forState:UIControlStateNormal];
    _nameLabel.text = longText;
    [self.view setNeedsLayout];
}

@end
