epAnimatedTextField
=========

Version: 1.0

Author: Ed Patrick


subclass of UITextField to add simple animations and layout features


## How to use it?


Import epAnimatedTextField.h

```
#import "epAnimatedTextField.h"
```


Create the Animated Text Field

```
// Declare a Text Field

epAnimatedTextField *animatedTextField;


// Create an Icon that will go on the left side:

UIImageView *icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"anIcon"]];



// Create the Text Field with the Icon

animatedTextField = [[epAnimatedTextField alloc] initWithFrame:CGRectMake(100, 100, 568, 60) icon:icon];
```


Customize the Animated Text Field

```
// Customize the Text Field (optional)

animatedTextField.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];
animatedTextField.textColor       = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
animatedTextField.font            = [UIFont fontWithName:@"Helvetica" size:24];
```


Setup the delegate and attach to your view
```
// Set yourself to be the delegate

animatedTextField.delegate = self;


// Add the Text Field to your view

[self.view addSubview:animatedTextField];
```


To make an Animated Text Field Appear or Disappear

```
// To make the Text Field appear

[animatedTextField playAppearAnimationWithDuration:0.2];



// To make the Text Field disappear

[animatedTextField playDisappearAnimationWithDuration:0.2];
```


To do custom drawing of the Animated Text Field

```
// Uncomment and edit drawRect

- (void)drawRect:(CGRect)rect;
```
