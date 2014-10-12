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
    
    
    
    // an icon to be placed on the left side of the text field
    
    UIImageView *icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"anIcon"]];
    
    
    // set up the text field

    _animatedTextField = [[epAnimatedTextField alloc] initWithFrame:CGRectMake(100, 100, 568, 60) icon:icon];
    _animatedTextField.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];
    _animatedTextField.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    _animatedTextField.font = [UIFont fontWithName:@"Helvetica" size:24];
    _animatedTextField.delegate = self;
    
    
    
    // add the text field to the main view
    
    [self.view addSubview:_animatedTextField];


    
    
    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}







#pragma mark - Animation


- (IBAction)appearAction:(id)sender {
    
    // Make AnimatedTextField appear
    
    if ( ! [_animatedTextField isFirstResponder]) {
    
        [_animatedTextField playAppearAnimationWithDuration:0.2];
        [_animatedTextField becomeFirstResponder];

    }
    
}




- (IBAction)disappearAction:(id)sender {
    
    // Make AnimatedTextField disappear
    
    if ([_animatedTextField isFirstResponder]) {
        
        [_animatedTextField playDisappearAnimationWithDuration:0.2];
        [_animatedTextField resignFirstResponder];
    
    }
    
    
    
}






#pragma mark - UITextFieldDelegate Stack


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    // hide the keyboard
    
    [_animatedTextField resignFirstResponder];
    
    
    // disappear the Animated Text Field
    
    [_animatedTextField playDisappearAnimationWithDuration:0.2];

    
    
    // print the value submitted
    
    NSLog(@"textFieldShouldReturn %@", textField.text);
    
    
    
    return YES;
    
    
}



@end








