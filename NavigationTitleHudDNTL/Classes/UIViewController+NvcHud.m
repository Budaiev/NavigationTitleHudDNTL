//
//  UIViewController+NvcHud.m
//  HudNavi
//
//  Created by Aleksandr Bydaiev on 2/26/19.
//  Copyright © 2019 Aleksandr Budaiev. All rights reserved.
//

#import "UIViewController+NvcHud.h"
#import "NvcTitleAndHud.h"

@implementation UIViewController (NvcHud)

#pragma mark - Public access

- (void)rightSideHud:(NSString *)text {
    [self testFromNib:
     @"The Podfile is a specification that describes the dependencies of the targets of one or more Xcode projects. The file should simply be named Podfile. All the examples in the guides are based on CocoaPods version 1.0 and onwards."
     
     //text
     ];
    //[self rightNvcHud:text];
}

- (void)leftSideHud:(NSString *)text {
    
    [self leftNvcHud:text];
}

- (void)removeSidedNavHud {
    
    self.navigationItem.titleView = nil;
}

- (void)testFromNib:(NSString *)text {
    
    NvcTitleAndHud * finish = [[NSBundle mainBundle] loadNibNamed:@"NvcTitleAndHud"
                                                            owner:self
                                                          options:nil].firstObject;
    
    finish.title.text = text;
    [finish.hud startAnimating];
    self.navigationItem.titleView = finish;
    
}


//=============================================================================

- (void)leftNvcHud:(NSString *)text {
    
    UIActivityIndicatorView *activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    activityIndicatorView.frame = CGRectMake(0, 0, 20, 44);
    [activityIndicatorView startAnimating];
    
    
    //-----------------------------------------------------------------------------
    
    
    UILabel *textLbl = UILabel.new;

    textLbl.backgroundColor = UIColor.yellowColor;
    
    textLbl.minimumScaleFactor = 0.5;
//    titleLabel.adjustsFontSizeToFitWidth = YES;
    //titleLabel.text = @"For Example it is really really longgg texxt. And fdgdfg";
    //titleLabel.font = [UIFont systemFontOfSize:18];
    
    
    
    
    
    
    NSAttributedString * at =
    [[NSAttributedString alloc] initWithString: @"loading.wait..."
     //@"The Podfile is a specification that describes the dependencies of the targets of one or more Xcode projects. The file should simply be named Podfile. All the examples in the guides are based on CocoaPods version 1.0 and onwards."
                                    attributes:@{ NSFontAttributeName: [UIFont systemFontOfSize:18]}];
    
    
    CGFloat deviceWidth = UIScreen.mainScreen.bounds.size.width;
    
    CGFloat calculatedFinalWidth = deviceWidth -44*2 - 16*2 - 8*2;
    
    CGFloat calculatedHeight = 44;
    //self.navigationController.navigationBar.frame.size.height;// 50;
    //4*2 +
    //[self calculateHeightForAttributedText:at width:calculatedFinalWidth];
    
    
    //[self calculateSizeForAttributedText:at];
    
    textLbl.attributedText = at;
    
    //    CGSize fittingSize =
    //    [titleLabel sizeThatFits: [self calculateSizeForAttributedText:at]
    //CGSizeMake(200.0f, activityIndicatorView.frame.size.height)
    //];
    
    /// Text frame
    textLbl.frame =
    CGRectMake(activityIndicatorView.frame.size.width + 8,
               activityIndicatorView.frame.origin.y,
               calculatedFinalWidth-22-8,//fittingSize.width,
               calculatedHeight//fittingSize.height
               );
    
    /// Final frame
    CGRect titleFrame =
    CGRectMake(-(activityIndicatorView.frame.size.width + 8 + textLbl.frame.size.width)/2,
               -(activityIndicatorView.frame.size.height)/2,
               activityIndicatorView.frame.size.width + 8 + textLbl.frame.size.width,
               calculatedHeight//activityIndicatorView.frame.size.height
               );
    
    /// Final view
    UIView * titleView =
    [[UIView alloc] initWithFrame:titleFrame];
    titleView.backgroundColor = UIColor.orangeColor;
    
    [titleView addSubview:activityIndicatorView];
    [titleView addSubview:textLbl];
    
    
    
    //[titleLabel sizeToFit];
    
    self.navigationItem.titleView = titleView;
}


- (void)rightNvcHud:(NSString *)text {
    
    UILabel *titleLabel = UILabel.new;
    titleLabel.text =
    
//    @"The Podfile is a specification that describes the dependencies of the targets of one or more Xcode projects. The file should simply be named Podfile. All the examples in the guides are based on CocoaPods version 1.0 and onwards.";
    @"Loading text...";
    titleLabel.font = [UIFont systemFontOfSize:18];
    
    CGSize fittingSize = [titleLabel sizeThatFits:CGSizeMake(200.0f, 44)];
    
    /// Text frame
    titleLabel.frame =
    CGRectMake(0,
               0,
               fittingSize.width,
               fittingSize.height);
    
    UIActivityIndicatorView *activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
//    activityIndicatorView.frame = CGRectMake(0, 0, 20, 44);
    activityIndicatorView.frame = CGRectMake(fittingSize.width + 8, 0, 20, 44);
    activityIndicatorView.color = UIColor.yellowColor;
    
    
    /// Final frame
    CGRect titleFrame =
    CGRectMake(-(activityIndicatorView.frame.size.width + 8 + fittingSize.width)/2,
               -(activityIndicatorView.frame.size.height)/2,
               activityIndicatorView.frame.size.width + 8 + fittingSize.width,
               activityIndicatorView.frame.size.height);
    
    
//    /// Final frame
//    CGRect titleFrame =
//    CGRectMake(-(activityIndicatorView.frame.size.width + 8 + titleLabel.frame.size.width)/2,
//               -(activityIndicatorView.frame.size.height)/2,
//               activityIndicatorView.frame.size.width + 8 + titleLabel.frame.size.width,
//               activityIndicatorView.frame.size.height);
    
    /// Final view
    UIView *titleView = [[UIView alloc] initWithFrame:titleFrame];
    
    
    /// Add both views
    [titleView addSubview:activityIndicatorView];
    [titleView addSubview:titleLabel];
    
    
    ///
    [activityIndicatorView startAnimating];
    self.navigationItem.titleView = titleView;
}



//=============================================================================

#pragma mark - Size Helpers

- (CGFloat)calculateHeightForAttributedText:(NSAttributedString *)attributedText
                                      width:(CGFloat)width {
    
    CGRect rect = [attributedText boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                               options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                               context:nil];
    
    return rect.size.height;
    
}

- (CGSize)calculateSizeForAttributedText:(NSAttributedString *)attributedText {
    
    CGRect rect = [attributedText boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT)
                                               options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                               context:nil];
    
    return rect.size;
    
}


@end
