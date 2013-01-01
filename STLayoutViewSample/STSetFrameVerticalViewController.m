//
//  STSetFrameVerticalViewController.m
//  STLayoutViewSample
//
//  Created by EIMEI on 2013/01/01.
//  Copyright (c) 2013年 stack3. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "STSetFrameVerticalViewController.h"

@implementation STSetFrameVerticalViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Set Frame - Vertical";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectZero];
    _headerView = headerView;
    _headerView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_headerView];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero];
    _tableView = tableView;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectZero];
    _footerView = footerView;
    _footerView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_footerView];
}

- (void)viewDidLayoutSubviews
{
    CGSize boundsSize = self.view.bounds.size;
    
    CGRect headerViewFrame;
    headerViewFrame.origin.x = 0;
    headerViewFrame.origin.y = 0;
    headerViewFrame.size.width = boundsSize.width;
    headerViewFrame.size.height = 50;
    _headerView.frame = headerViewFrame;

    CGRect footerViewFrame;
    footerViewFrame.origin.x = 0;
    footerViewFrame.origin.y = boundsSize.height - 50;
    footerViewFrame.size.width = boundsSize.width;
    footerViewFrame.size.height = 50;
    _footerView.frame = footerViewFrame;

    CGRect tableViewFrame;
    tableViewFrame.origin.x = 0;
    tableViewFrame.origin.y = headerViewFrame.size.height;
    tableViewFrame.size.width = boundsSize.width;
    tableViewFrame.size.height = boundsSize.height - headerViewFrame.size.height - footerViewFrame.size.height;
    _tableView.frame = tableViewFrame;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellId = @"cellId";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"Row %d", indexPath.row+1];
    
    return cell;
}

@end
