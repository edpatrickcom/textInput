//
//  ViewController.m
//  textInput
//
//  Created by edp on 10/2/14.
//  Copyright (c) 2014 edp. All rights reserved.
//

#import "ViewController.h"




@interface ViewController ()

@property (strong,nonatomic) epAnimatedTextField *animatedTextField;

@end





@implementation ViewController

@synthesize animatedTextField = _animatedTextField;

- (void)viewDidLoad {
    [super viewDidLoad];

    _animatedTextField = [[epAnimatedTextField alloc] initWithFrame:CGRectMake(100, 100, 400, 60)];
    _animatedTextField.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.8];
    _animatedTextField.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    _animatedTextField.font = [UIFont fontWithName:@"Helvetica" size:24];
    _animatedTextField.delegate = self;
    
    [self.view addSubview:_animatedTextField];


    
    NSTimer *timer = [NSTimer
                      scheduledTimerWithTimeInterval:3.0
                      target:self
                      selector:@selector(makeAnimatedTextFieldAppear)
                      userInfo:nil
                      repeats:NO];
    
    
    
    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Animation

- (void)makeAnimatedTextFieldAppear {
    
    [_animatedTextField playAppearAnimationWithDuration:0.2];
    
    
}



#pragma mark - UITextFieldDelegate Stack



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    // hide the keyboard
    
    [_animatedTextField resignFirstResponder];
    
    // print the value submitted
    
    NSLog(@"textFieldShouldReturn %@", textField.text);
    
    
    
    // done
    
    return YES;
    
    
}



@end








