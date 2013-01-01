//
//  STViewController.m
//  STLayoutViewSample
//
//  Created by EIMEI on 2012/12/30.
//  Copyright (c) 2012年 stack3. All rights reserved.
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

#import "STViewController.h"
#import "STAutoLayoutEdgeViewController.h"
#import "STAutoLayoutSizeToFitViewController.h"
#import "STAutoLayoutHorizontalViewController.h"
#import "STAutoLayoutVerticalViewController.h"
#import "STAutoLayoutFillViewController.h"
#import "STAutoLayoutCenter1ViewController.h"
#import "STAutoLayoutCenter2ViewController.h"
#import "STSetFrameEdgeViewController.h"
#import "STSetFrameSizeToFitViewController.h"
#import "STSetFrameCenter1ViewController.h"
#import "STSetFrameCenter2ViewController.h"
#import "STSetFrameHorizontalViewController.h"
#import "STSetFrameVerticalViewController.h"
#import "STSetFrameFillViewController.h"

typedef enum {
    _STSectionAutoLayout,
    _STSectionSetFrame,
    _STNumSections
} _STSections;

typedef enum {
    _STMenuEdge,
    _STMenuSizeToFit,
    _STMenuHorizontal,
    _STMenuCenter1,
    _STMenuCenter2,
    _STMenuVertical,
    _STMenuFill,
} _STMenus;

static NSString *SectionTitles[] = {@"Auto Layout", @"Set Frame"};

@implementation STViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Menu";
        _menus = @[@"Edge", @"Size to Fit", @"Center1", @"Center2", @"Horizontal", @"Vertical", @"Fill"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView = tableView;
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
}

- (void)viewDidLayoutSubviews
{
    _tableView.frame = self.view.bounds;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _menus.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellId = @"cellId";
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = [_menus objectAtIndex:indexPath.row];
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _STNumSections;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return SectionTitles[section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == _STSectionAutoLayout) {
        if (indexPath.row == _STMenuEdge) {
            STAutoLayoutEdgeViewController *con = [[STAutoLayoutEdgeViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuSizeToFit) {
            STAutoLayoutSizeToFitViewController *con = [[STAutoLayoutSizeToFitViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuCenter1) {
            STAutoLayoutCenter1ViewController *con = [[STAutoLayoutCenter1ViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuCenter2) {
            STAutoLayoutCenter2ViewController *con = [[STAutoLayoutCenter2ViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuHorizontal) {
            STAutoLayoutHorizontalViewController *con = [[STAutoLayoutHorizontalViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuVertical) {
            STAutoLayoutVerticalViewController *con = [[STAutoLayoutVerticalViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuFill) {
            STAutoLayoutFillViewController *con = [[STAutoLayoutFillViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        }
    } else if (indexPath.section == _STSectionSetFrame) {
        if (indexPath.row == _STMenuEdge) {
            STSetFrameEdgeViewController *con = [[STSetFrameEdgeViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuSizeToFit) {
            STSetFrameSizeToFitViewController *con = [[STSetFrameSizeToFitViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuCenter1) {
            STSetFrameCenter1ViewController *con = [[STSetFrameCenter1ViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuCenter2) {
            STSetFrameCenter2ViewController *con = [[STSetFrameCenter2ViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuHorizontal) {
            STSetFrameHorizontalViewController *con = [[STSetFrameHorizontalViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuVertical) {
            STSetFrameVerticalViewController *con = [[STSetFrameVerticalViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        } else if (indexPath.row == _STMenuFill) {
            STSetFrameFillViewController *con = [[STSetFrameFillViewController alloc] init];
            [self.navigationController pushViewController:con animated:YES];
        }
    }
}
    
@end
