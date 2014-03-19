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

# pragma mark - Accessors

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
}

# pragma mark - UITableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        self.backgroundColor = [UIColor clearColor];
        
        
    }
    return self;
}

-(void)prepareForReuse{
    [super prepareForReuse];
    self.color = nil;
}


@end
