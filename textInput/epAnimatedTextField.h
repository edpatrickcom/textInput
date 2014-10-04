//
//  epAnimatedTextField.h
//  textInput
//
//  Created by edp on 10/2/14.
//  Copyright (c) 2014 edp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface epAnimatedTextField : UITextField

// init

- (id)initWithFrame:(CGRect)frame icon:(UIImageView *)icon;



// make the animatedTextField Appear

- (void)playAppearAnimationWithDuration:(float)duration;




@end
