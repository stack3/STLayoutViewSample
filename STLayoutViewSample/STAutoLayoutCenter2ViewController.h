//
//  STAutoLayoutCenterViewController.h
//  STLayoutViewSample
//
//  Created by MIYAMOTO, Hideaki on 2012/12/30.
//  Copyright (c) 2012年 stack3. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STAutoLayoutCenter2ViewController : UIViewController {
    //
    // Notice!
    // If you dragged any label on Interface Builder, the IBOutlet of label's contraint will be unbinded.
    // This sample might not be good.
    //
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
