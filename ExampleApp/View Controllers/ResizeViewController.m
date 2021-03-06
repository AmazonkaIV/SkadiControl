//
//  ResizeViewController.m
//  SkadiControl
//
//  Created by Marko Čančar on 1.12.15..
//  Copyright © 2015. 12Rockets. All rights reserved.
//

#import "ResizeViewController.h"
#import "ToolbarManager.h"
#import "SkadiControl.h"

@implementation ResizeViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [ToolbarManager manager].resizeVC = self;
    
    [[ToolbarManager manager].delegate setInitialResizeValues];
}

- (IBAction)resizeSliderChanged:(UISlider *)sender
{
    [[ToolbarManager manager].delegate resizeSliderChanged:sender.value];
    [self.resizeLabel setText:[NSString stringWithFormat:@"%d%%", (int)(sender.value*100)]];
}

@end
