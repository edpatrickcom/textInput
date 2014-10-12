//
//  epAnimatedTextField.h
//  textInput
//
//  Created by edp on 10/2/14.
//  Copyright (c) 2014 edp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface epAnimatedTextField : UITextField


// smallest size as it animates in
// values from 0 to 1 are acceptable
// 0 is scale to 0%
// 1 is scale to 100%
// defaults to 0

@property (nonatomic) float scaleSmall;




// init

- (id)initWithFrame:(CGRect)frame icon:(UIImageView *)icon;



// make the animatedTextField Appear

- (void)playAppearAnimationWithDuration:(float)duration;
- (void)playDisappearAnimationWithDuration:(float)duration;




@end
