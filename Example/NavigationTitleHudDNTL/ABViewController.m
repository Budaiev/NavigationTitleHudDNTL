//
//  ABViewController.m
//  NavigationTitleHudDNTL
//
//  Created by Budaiev on 02/26/2019.
//  Copyright (c) 2019 Budaiev. All rights reserved.
//

#import "ABViewController.h"

@interface ABViewController ()
<NvcHudAble>
@end

@implementation ABViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIBarButtonItem * lb = [self barButtonWithText:@"menu" textColor:UIColor.blackColor
                                          andImage:@"menuIcon"
                                            target:self
                                          selector:@selector(doSmt)];
    
    
    //rightSideSpacing:0 target:self selector:@selector(doSmt)];
    //                            barButtonWithTitleText:@"left"
    //                                              textColor:UIColor.greenColor
    //                                                 target:self
    //                                               selector:@selector(doSmt)];
    
    UIBarButtonItem * rb = [self barButtonWithTitleText:@"right"
                                              textColor:UIColor.orangeColor
                                                 target:self
                                               selector:@selector(doSmt) ];
    
    self.navigationItem.leftBarButtonItem = lb;
    self.navigationItem.rightBarButtonItem = rb;
}


- (void)doSmt {
    
}


//=============================================================================

#pragma mark - Test sample for the indicator above title


- (IBAction)showLeftSideActivityIndicator:(id)sender {
    
    [self showLeftSidedNavHud:@"Loading left text..."];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self removeNvcHud];
    });
}

//=============================================================================

- (IBAction)showRightSideActivityIndicator:(id)sender {
    
    [self showRightSidedNavHud:@"Loading right text..."];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self removeNvcHud];
    });
}


//=============================================================================

#pragma mark - Private Helpers

- (UIBarButtonItem *)barButtonWithText:(NSString *)text
                             textColor:(UIColor *)textColor
                              andImage:(NSString *)imageName
//rightSideSpacing:(CGFloat)rightSideSpacing
                                target:(id)target
                              selector:(SEL)selector {
    
    UIImage * image = [UIImage imageNamed:imageName];
    
    UIButton * button = [[UIButton alloc] init];
    //                         ithFrame:CGRectMake(0, 0, 44, 44)];
    
    //[button setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, rightSideSpacing)];
    
    [button addTarget:target
               action:selector
     forControlEvents:UIControlEventTouchUpInside];
    
    [button setTitle:text forState:UIControlStateNormal];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    
    [button setImage:image forState:UIControlStateNormal];
    
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    return barButton;
}


- (UIBarButtonItem *)customViewBarButtonWithImage:(NSString *)imageName
                                 rightSideSpacing:(CGFloat)rightSideSpacing
                                           target:(id)target
                                         selector:(SEL)selector {
    
    UIImage * image = [UIImage imageNamed:imageName];
    
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, rightSideSpacing)];
    
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    
    [button setImage:image forState:UIControlStateNormal];
    
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    return barButton;
}

//=============================================================================

- (UIBarButtonItem *)barButtonWithTitleText:(NSString *)titleText
                                  textColor:(UIColor *)textColor
                                     target:(id)target
                                   selector:(SEL)selector {
    
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    
    [button addTarget:target
               action:selector
     forControlEvents:UIControlEventTouchUpInside];
    
    [button setTitle:titleText forState:UIControlStateNormal];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    return barButton;
}

@end
