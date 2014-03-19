//
//  LOPShareButton.m
//  Solarized
//
//  Created by Pedro Lopes on 19/03/14.
//  Copyright (c) 2014 Pedro Lopes. All rights reserved.
//

#import "LOPShareButton.h"

@implementation LOPShareButton

@synthesize shareString = _shareString;
@synthesize circleView = _circleView;


# pragma mark - Accessors

-(UIView *)circleView {
    if(!_circleView) {
        _circleView = [[UIView alloc] init];
        _circleView.userInteractionEnabled = NO;
        _circleView.layer.cornerRadius = 20.0f;
    }
    return _circleView;
}

- (void)setShareString:(NSString *)shareString {
    if(!_shareString) {
        _shareString = shareString;
    }
}

# pragma mark - UIButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

@end
