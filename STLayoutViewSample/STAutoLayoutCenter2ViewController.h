//
//  STAutoLayoutCenterViewController.h
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
