//
//  NvcHudAble.h
//  HudNavi
//
//  Created by Aleksandr Bydaiev on 2/26/19.
//  Copyright © 2019 Aleksandr Budaiev. All rights reserved.
//

@protocol NvcHudAble <NSObject>

@optional - (void)showRightSidedNavHud:(NSString *)text;
@optional - (void)showLeftSidedNavHud:(NSString *)text;
@optional - (void)removeNvcHud;

@end

