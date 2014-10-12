//
//  epAnimatedTextField.m
//  textInput
//
//  Created by edp on 10/2/14.
//  Copyright (c) 2014 edp. All rights reserved.
//

#import "epAnimatedTextField.h"




@interface epAnimatedTextField ()

@property (strong,nonatomic) CABasicAnimation *appearAnimation;
@property (strong,nonatomic) CABasicAnimation *disappearAnimation;


@end






@implementation epAnimatedTextField

@synthesize appearAnimation    = _appearAnimation;
@synthesize disappearAnimation = _disappearAnimation;





#pragma mark - UITextField Stack


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        // initially the control is always hidden
        
        self.hidden = YES;
        self.scaleSmall = 0;

        
        // create the appear animation with a default duration
        
        _appearAnimation    = [self makeAppearAnimationWithDuration:0.3];
        _disappearAnimation = [self makeDisappearAnimationWithDuration:0.3];
        
        
    }
    
    
    return self;
    
}



- (id)initWithFrame:(CGRect)frame icon:(UIImageView *)icon {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        // initially the control is always hidden
        
        self.hidden = YES;
        self.scaleSmall = 0;

        
        // if the icon exists use it
        
        if (icon) {
            
            self.leftView = icon;
            self.leftViewMode = UITextFieldViewModeAlways;
            
        }
        
        
        // create the appear animation with a default duration
        
        _appearAnimation    = [self makeAppearAnimationWithDuration:0.3];
        _disappearAnimation = [self makeDisappearAnimationWithDuration:0.3];


        
    }
    
    
    return self;
    
}





// Put custom drawing code in drawRect

/*

- (void)drawRect:(CGRect)rect {
        
    //// Variable Declarations
 
    CGFloat outerBorderWidth = self.bounds.size.width;
    CGFloat outerBorderHeight = self.bounds.size.height;
    CGFloat outerBorderCornerRadius = 16;
    
    //// Rectangle Drawing
 
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0, 0, outerBorderWidth, outerBorderHeight) cornerRadius: outerBorderCornerRadius];
    
    
    // To Draw the fill
    
    [UIColor.lightGrayColor setFill];
    [rectanglePath fill];
    
    
    // To Draw an outline
    
    //[UIColor.grayColor setStroke];
    //rectanglePath.lineWidth = 3;
    //[rectanglePath stroke];



}

*/



#pragma mark - Animation Methods


- (void)playAppearAnimationWithDuration:(float)duration {

    
    // appear and set the animation duration
    
    self.hidden = NO;
    self.appearAnimation.duration = duration;
    
    
    // run the animation
    
    [self.layer addAnimation:_appearAnimation forKey:@"makeAnimatedTextFieldAppear"];

    
}




- (void)playDisappearAnimationWithDuration:(float)duration {
    
    
    // disappear and set the animation duration
    
    self.hidden = NO;
    self.disappearAnimation.duration = duration;
    
    
    // run the animation
    
    [self.layer addAnimation:_disappearAnimation forKey:@"makeAnimatedTextFieldDisappear"];
    
}




- (CABasicAnimation *)makeAppearAnimationWithDuration:(float)duration {
    
    
    // Create a basic animation changing the transform.scale value
    
    CABasicAnimation *theAnimation = [[CABasicAnimation alloc] init];
    
    theAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    
    // Set the initial and the final values
    
    [theAnimation setFromValue:[NSNumber numberWithFloat:_scaleSmall]];
    [theAnimation setToValue:[NSNumber numberWithFloat:1.0f]];
    
    // Set duration
    
    [theAnimation setDuration:duration];
    
    // Set animation to be consistent on completion
    
    [theAnimation setRemovedOnCompletion:NO];
    [theAnimation setFillMode:kCAFillModeForwards];
    
    // Add a ease in & out timing function on the animation
    //[animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    // Add custom timing as a bezier curve
    
    [theAnimation setTimingFunction:[CAMediaTimingFunction functionWithControlPoints:.34 :.01 :.69 :1.37]];
    
    
    
    return theAnimation;
    
    
    
    
}


- (CABasicAnimation *)makeDisappearAnimationWithDuration:(float)duration {
    

    // Create a basic animation changing the transform.scale value
    
    CABasicAnimation *theAnimation = [[CABasicAnimation alloc] init];
    
    theAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    
    // Set the initial and the final values
    
    [theAnimation setFromValue:[NSNumber numberWithFloat:1.0f]];
    [theAnimation setToValue:[NSNumber numberWithFloat:_scaleSmall]];
    
    // Set duration
    
    [theAnimation setDuration:duration];
    
    // Set animation to be consistent on completion
    
    [theAnimation setRemovedOnCompletion:NO];
    [theAnimation setFillMode:kCAFillModeForwards];
    
    // Add a ease in & out timing function on the animation
    //[animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    // Add custom timing as a bezier curve
    
    [theAnimation setTimingFunction:[CAMediaTimingFunction functionWithControlPoints:.34 :.01 :.69 :1.37]];
    
    
    
    return theAnimation;
    
    
}




@end
