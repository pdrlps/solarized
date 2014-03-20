//
//  LOPColorTableViewCell.m
//  Solarized
//
//  Created by Pedro Lopes on 19/03/14.
//  Copyright (c) 2014 Pedro Lopes. All rights reserved.
//

#import "LOPColorTableViewCell.h"
#import "LOPHelper.h"

@implementation LOPColorTableViewCell

@synthesize color = _color;
@synthesize shareButton = _shareButton;

# pragma mark - Accessors

-(LOPShareButton *)shareButton {
    if(!_shareButton) {
        _shareButton = [[LOPShareButton alloc] init];
    }
    
    return _shareButton;
}

-(void)setColor:(NSDictionary *)color {
    _color = color;
    
    // main label
    self.textLabel.text = color[@"shortName"];
    self.textLabel.textColor = [LOPHelper rgbColorForSolarizedColor:color];
     self.textLabel.font = [LOPHelper preferredMenloFontForTextStyle:[[UIApplication sharedApplication] preferredContentSizeCategory]];

    // detail text
    NSMutableString *detail = [[NSMutableString alloc] init];
    [detail appendString:@"CSS HEX: "];
    [detail appendString:color[@"hex"]];
    
    self.detailTextLabel.text = detail;
    self.detailTextLabel.font = [LOPHelper preferredMenloSmallFontForTextStyle:[[UIApplication sharedApplication] preferredContentSizeCategory]];
    self.detailTextLabel.textColor = [LOPHelper colorWithHexString:@"#073642"];
}

# pragma mark - UIView
-(void)layoutSubviews{
    [super layoutSubviews];
    
    CGSize size = self.contentView.bounds.size;
    CGSize buttonSize = [self.shareButton sizeThatFits:CGSizeMake(56.0f, size.height)];
    self.shareButton.frame = CGRectMake(size.width - buttonSize.width, 0.0f,  buttonSize.width, buttonSize.height);
    
    CGRect frame = self.textLabel.frame;
    frame.size.width = size.width - frame.origin.x - 8.0f - buttonSize.width;
    self.textLabel.frame = frame;
}

# pragma mark - UITableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.shareButton];
    }
    return self;
}

-(void)prepareForReuse{
    [super prepareForReuse];
    self.color = nil;
}

# pragma mark - UIGestureRecognizer

-(BOOL) gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    CGPoint point = [touch locationInView:self];
    return CGRectContainsPoint(self.contentView.frame, point);
}


@end
