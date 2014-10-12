epAnimatedTextField
======================
Version: 0.1

Author: Ed Patrick


## What is epAnimatedTextField?
epAnimatedTextField is a tiny class that helps you create Text Fields that can pop up or disappear in your iOS Apps.



## How to use it?


// Import epAnimatedTextField.h at the top of your ViewController

import "epAnimatedTextField.h"


// Declare a Text Field somewhere in your ViewController

epAnimatedTextField *animatedTextField;


// Create an Icon that will go on the left side:

UIImageView *icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"anIcon"]];



// Create the Text Field with the Icon

animatedTextField = [[epAnimatedTextField alloc] initWithFrame:CGRectMake(100, 100, 568, 60) icon:icon];


// Customize the Text Field (optional)

animatedTextField.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];
animatedTextField.textColor       = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
animatedTextField.font            = [UIFont fontWithName:@"Helvetica" size:24];


// Set yourself to be the delegate

_animatedTextField.delegate = self;



// Add the Text Field to your view

[self.view addSubview:animatedTextField];



// To make the Text Field appear

[_animatedTextField playAppearAnimationWithDuration:0.2];



// To make the Text Field disappear

[_animatedTextField playDisappearAnimationWithDuration:0.2];


