//
//  STAutoLayoutCenterViewController.m
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2012/12/30.
//  Copyright (c) 2012年 stack3. All rights reserved.
//

#import "STAutoLayoutCenterViewController.h"

@interface STAutoLayoutCenterViewController () {

    IBOutlet __weak UILabel *_leftLabel;
    IBOutlet __weak NSLayoutConstraint *_leftHorizontalSpaceContraint;
    IBOutlet __weak UILabel *_rightLabel;
    IBOutlet __weak NSLayoutConstraint *_rightHorizontalSpaceContraint;
    IBOutlet __weak UILabel *_topLabel;
    IBOutlet __weak NSLayoutConstraint *_topVerticalSpaceContraint;
    IBOutlet __weak UILabel *_bottomLabel;
    IBOutlet __weak NSLayoutConstraint *_bottomVerticalSpaceContraint;
}

@end

#define _STSpaceFromCenter 50

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
}

- (void)viewWillLayoutSubviews
{
    CGPoint center = self.view.center;
    
    _leftHorizontalSpaceContraint.constant = center.x - _leftLabel.frame.size.width - _STSpaceFromCenter;
    _rightHorizontalSpaceContraint.constant = center.x - _rightLabel.frame.size.width - _STSpaceFromCenter;
    _topVerticalSpaceContraint.constant = center.y - _topLabel.frame.size.height - _STSpaceFromCenter;
    _bottomVerticalSpaceContraint.constant = center.y - _bottomLabel.frame.size.height - _STSpaceFromCenter;
}

@end
