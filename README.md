textInput
=========

Version: 0.1

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
