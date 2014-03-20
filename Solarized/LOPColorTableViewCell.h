//
//  LOPColorTableViewCell.h
//  Solarized
//
//  Created by Pedro Lopes on 19/03/14.
//  Copyright (c) 2014 Pedro Lopes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LOPShareButton.h"

@interface LOPColorTableViewCell : UITableViewCell

@property (nonatomic) NSDictionary *color;
@property (nonatomic) LOPShareButton *shareButton;

@end
