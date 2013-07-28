//
//  ViewController.m
//  swapView
//
//  Created by Michael Du on 13-7-27.
//  Copyright (c) 2013年 com.news. All rights reserved.
//

#import "ViewController.h"

#define degreesToRadians(x) (M_PI * (x) / 180.0)  //角度和弧度之间转换
@interface ViewController ()

@end

@implementation ViewController

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    if (toInterfaceOrientation == UIInterfaceOrientationPortrait) {
        self.view = self.portrait;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform =
        CGAffineTransformMakeRotation(degreesToRadians(0));
        self.view.bounds = CGRectMake(0.0, 0.0, 320.0, 460.0);
    }else if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft){
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform =
        CGAffineTransformMakeRotation(degreesToRadians(-90));
        self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
    }else if(toInterfaceOrientation == UIInterfaceOrientationLandscapeRight){
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform =
        CGAffineTransformMakeRotation(degreesToRadians(90));
        self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_portrait release];
    [_landscape release];
    [_fools release];
    [_bars release];
    [super dealloc];
}
- (IBAction)buttonTapped:(UIButton *)sender {
    NSString *message = nil;
    if ([self.fools containsObject:sender]) {
        message = @"Foo button pressed";
    }else{
        message = @"Bar button Pressed";
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:message message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
    
    //  如果要在两个视图上面同时隐藏控件
    if ([self.fools containsObject:sender]) {
        for (UIButton *oneFoo in self.fools) {
            oneFoo.hidden = YES;
        }
    }else{
        for (UIButton *oneBar in self.bars) {
            oneBar.hidden = YES;
        }

    }
    
}
@end
