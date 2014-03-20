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

# pragma mark - UIView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.circleView];
        self.titleLabel.text = @"+";
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    CGSize size = self.bounds.size;
    
    CGRect titleFrame = self.titleLabel.frame;
    titleFrame.origin.x = roundf((size.width - titleFrame.size.width)/2.0f);
    titleFrame.origin.y = roundf((size.height - titleFrame.size.height)/2.0f);
    self.titleLabel.frame = titleFrame;
    self.circleView.backgroundColor = [UIColor colorWithRed:0.61 green:0.71 blue:0.53 alpha:1];
    self.circleView.frame = CGRectMake(MIN(roundf((size.width - 32.0f)/2),titleFrame.origin.x - 8.0f), roundf((size.height - 32.0f) / 2.0f), MAX(32.0f, titleFrame.size.width + 16.0f), 32.0f);
    
}

@end
