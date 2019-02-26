//
//  BaseVC.m
//  HudNavi
//
//  Created by Aleksandr Bydaiev on 2/26/19.
//  Copyright © 2019 Aleksandr Budaiev. All rights reserved.
//

#import "BaseVC.h"
#import "NvcHudAble.h"
#import "UIViewController+NvcHud.h"

@interface BaseVC ()

@end

@implementation BaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Base Conforming to <NvcHudAble>

//=============================================================================

- (void)showRightSidedNavHud:(NSString *)text {
    
    [self rightSideHud:text];
}

//=============================================================================

- (void)showLeftSidedNavHud:(NSString *)text {
    
    [self leftSideHud:text];
}

//=============================================================================

- (void)removeNvcHud {

    [self removeSidedNavHud];
}

@end
