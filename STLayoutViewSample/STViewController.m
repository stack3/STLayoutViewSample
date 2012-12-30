//
//  STViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2012/12/30.
//  Copyright (c) 2012年 stack3. All rights reserved.
//

#import "STViewController.h"
#import "STAutoLayoutEdgeViewController.h"

typedef enum {
    _STSectionDirect,
    _STSectionAutoLayout,
    _STSectionAutoresizingMask,
    _STNumSections
} _STSections;

typedef enum {
    _STMenuEdge,
    _STMenuAlign,
    _STMenuCenter,
    _STMenuHorizontal,
    _STMenuVertical,
    _STMenuComplex
} _STMenus;

static NSString *SectionTitles[] = {@"Set Frame", @"Auto Layout", @"Autoresizing Mask"};

@implementation STViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Menu";
        _menus = @[@"Edge", @"Align", @"Center", @"Horizontal", @"Vertical", @"Complex"];
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
        }
    }
}

@end
