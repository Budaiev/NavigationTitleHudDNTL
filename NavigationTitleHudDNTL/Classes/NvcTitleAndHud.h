//
//  NvcTitleAndHud.h
//  HudNavi
//
//  Created by Aleksandr Bydaiev on 2/26/19.
//  Copyright © 2019 Aleksandr Budaiev. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NvcTitleAndHud : UIView
@property (weak,nonatomic) IBOutlet UILabel * title;
@property (weak,nonatomic) IBOutlet UIActivityIndicatorView * hud;
@end

NS_ASSUME_NONNULL_END
