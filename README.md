# TQEasyIconButton

TQEasyIconButton is a UIButton Category. Easy way to set `titleEdgeInsets`,`imageEdgeInsets` make icon in left,right,top,bottom.

##Demo

![image](img/demo.gif)

##Usage

![image](img/left.png) ![image](img/right.png)

![image](img/bottom.png) ![image](img/top.png)


```objective-c

	[self.demoButton setTitle:@"Button" forState:UIControlStateNormal];
	[self.demoButton setImage:@"icon" forState:UIControlStateNormal];

```

```objective-c    

	- (IBAction)left:(id)sender
    {
        [self.demoButton setIconInLeft];
        // or
        //[self.demoButton setIconInLeftWithSpacing:0];
    }

    - (IBAction)right:(id)sender
    {
        [self.demoButton setIconInRight];
        // or
        //[self.demoButton setIconInRightWithSpacing:0];
    }

    - (IBAction)top:(id)sender
    {
        [self.demoButton setIconInTop];
        // or
        //[self.demoButton setIconInTopWithSpacing:0];
    }

    - (IBAction)bottom:(id)sender
    {
        [self.demoButton setIconInBottom];
        // or
        //[self.demoButton setIconInBottomWithSpacing:0];
    }

```  
