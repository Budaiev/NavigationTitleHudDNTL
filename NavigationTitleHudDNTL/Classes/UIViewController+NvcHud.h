//
//  UIViewController+NvcHud.h
//  HudNavi
//
//  Created by Aleksandr Bydaiev on 2/26/19.
//  Copyright © 2019 Aleksandr Budaiev. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (NvcHud)

- (void)rightSideHud:(NSString *)text;

- (void)leftSideHud:(NSString *)text;

- (void)removeSidedNavHud;

@end

NS_ASSUME_NONNULL_END
