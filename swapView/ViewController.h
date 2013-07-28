//
//  ViewController.h
//  swapView
//
//  Created by Michael Du on 13-7-27.
//  Copyright (c) 2013年 com.news. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIView *portrait;
@property (retain, nonatomic) IBOutlet UIView *landscape;
@property (retain, nonatomic) IBOutletCollection(UIButton) NSArray *fools;
@property (retain, nonatomic) IBOutletCollection(UIButton) NSArray *bars;
- (IBAction)buttonTapped:(UIButton *)sender;

@end
