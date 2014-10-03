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

@end






@implementation epAnimatedTextField

@synthesize appearAnimation = _appearAnimation;





#pragma mark - UITextField Stack

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        // initially the control is always hidden
        
        self.hidden = YES;
        
        
        // create the appear animation with a default duration
        
        _appearAnimation = [self makeAppearAnimationWithDuration:0.3];
        
        
        
    }
    
    
    return self;
    
}


- (void)drawRect:(CGRect)rect {

    NSLog(@"epAnimatedTextField drawRect");
    
    


}



#pragma mark - Animation Methods


- (void)playAppearAnimationWithDuration:(float)duration {
    
    // appear and set the animation duration
    
    self.hidden = NO;
    self.appearAnimation.duration = duration;
    
    
    
    // run the animation
    
    [self.layer addAnimation:_appearAnimation forKey:@"scale"];

    
}





- (CABasicAnimation *)makeAppearAnimationWithDuration:(float)duration {
    
    
    // Create a basic animation changing the transform.scale value
    
    CABasicAnimation *theAnimation = [[CABasicAnimation alloc] init];
    
    theAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    
    // Set the initial and the final values
    
    [theAnimation setFromValue:[NSNumber numberWithFloat:0.3f]];
    [theAnimation setToValue:[NSNumber numberWithFloat:1.0f]];
    
    // Set duration
    
    // [theAnimation setDuration:1.0f];
    [theAnimation setDuration:duration];
    
    // Set animation to be consistent on completion
    
    [theAnimation setRemovedOnCompletion:NO];
    [theAnimation setFillMode:kCAFillModeForwards];
    
    // Add a ease in & out timing function on the animation
    //[animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    // Add custom timing as a bezier curve
    
    [theAnimation setTimingFunction:[CAMediaTimingFunction functionWithControlPoints:.34 :.01 :.69 :1.37]];
    
    
    
    return theAnimation;
    
    
    
    // How to run the animation
    
    // [pronounLayer setHidden:NO];
    // [pronounLayer addAnimation:pronounAnimation forKey:@"scale"];
    
    
}



@end
