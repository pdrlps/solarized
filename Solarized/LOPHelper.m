//
//  LOPHelper.m
//  Solarized
//
//  Created by Pedro Lopes on 17/03/14.
//  Copyright (c) 2014 Pedro Lopes. All rights reserved.
//

#import "LOPHelper.h"

@implementation LOPHelper

#pragma mark - DynamicType

+ (UIFont *)preferredMenloFontForTextStyle:(NSString *)textStyle {
	// choose the font size, defaults to 16
	CGFloat fontSize = 16.0;
	NSString *contentSize = [UIApplication sharedApplication].preferredContentSizeCategory;
    
	if ([contentSize isEqualToString:UIContentSizeCategoryExtraSmall]) {
		fontSize = 12.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategorySmall]) {
		fontSize = 14.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryMedium]) {
		fontSize = 16.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryLarge]) {
		fontSize = 18.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraLarge]) {
		fontSize = 20.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraExtraLarge]) {
		fontSize = 22.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge]) {
		fontSize = 24.0;
	}
		return [UIFont fontWithName:@"Menlo" size:fontSize];

}

+ (UIFont *)preferredMenloSmallFontForTextStyle:(NSString *)textStyle {
	// choose the font size, defaults to 16
	CGFloat fontSize = 12.0;
	NSString *contentSize = [UIApplication sharedApplication].preferredContentSizeCategory;
    
	if ([contentSize isEqualToString:UIContentSizeCategoryExtraSmall]) {
		fontSize = 6.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategorySmall]) {
		fontSize = 8.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryMedium]) {
		fontSize = 10.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryLarge]) {
		fontSize = 12.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraLarge]) {
		fontSize = 14.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraExtraLarge]) {
		fontSize = 16.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge]) {
		fontSize = 18.0;
	}
    return [UIFont fontWithName:@"Menlo" size:fontSize];
    
}

+ (UIFont *)preferredMenloBoldFontForTextStyle:(NSString *)textStyle {
	CGFloat fontSize = 16.0;
	NSString *contentSize = [UIApplication sharedApplication].preferredContentSizeCategory;
    
	if ([contentSize isEqualToString:UIContentSizeCategoryExtraSmall]) {
		fontSize = 12.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategorySmall]) {
		fontSize = 14.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryMedium]) {
		fontSize = 16.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryLarge]) {
		fontSize = 18.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraLarge]) {
		fontSize = 20.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraExtraLarge]) {
		fontSize = 22.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge]) {
		fontSize = 24.0;
	}

    return [UIFont fontWithName:@"Menlo-Bold" size:fontSize];
}

+ (UIFont *)preferredMenloItalicFontForTextStyle:(NSString *)textStyle {
	// choose the font size, defaults to 16
	CGFloat fontSize = 16.0;
	NSString *contentSize = [UIApplication sharedApplication].preferredContentSizeCategory;
    
	if ([contentSize isEqualToString:UIContentSizeCategoryExtraSmall]) {
		fontSize = 12.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategorySmall]) {
		fontSize = 14.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryMedium]) {
		fontSize = 16.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryLarge]) {
		fontSize = 18.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraLarge]) {
		fontSize = 20.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraExtraLarge]) {
		fontSize = 22.0;
        
	} else if ([contentSize isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge]) {
		fontSize = 24.0;
	}
    
        return [UIFont fontWithName:@"Menlo-Italic" size:fontSize];
}

# pragma mark - Colors
+(NSArray *)getColors {
    return @[
  @{
      @"shortName":@"base03",
      @"hex":@"#002b36",
      @"red":@0.0,
      @"green":@0.168627451,
      @"blue":@0.211764706
          
      },
  @{
      @"shortName":@"magenta",
      @"hex":@"#d33682",
      @"red":@0.82745098,
      @"green":@0.211764706,
      @"blue":@0.509803922
      },
  @{
      @"shortName":@"green",
      @"hex":@"#859900",
      @"red":@0.55,
      @"green":@0.6,
      @"blue":@0.14
      }
  
  ];

}

# pragma mark - Conversion

/*
 * Convert color HEX string to UIColor.
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1];
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

/*
 * Get UIColor RGB for Solarized Color (reads values from dictionary).
 */
+ (UIColor *)rgbColorForSolarizedColor:(NSDictionary *)color {
    return [UIColor colorWithRed:[[color objectForKey:@"red"] floatValue] green:[[color objectForKey:@"green"] floatValue] blue:[[color objectForKey:@"blue"] floatValue] alpha:1.0f];
}

/*
 * Get UIColor HSB for Solarized Color (reads values from dictionary).
 */
+ (UIColor *)hsbColorForSolarizedColor:(NSDictionary *)color {
    return [UIColor colorWithHue:[[color objectForKey:@"hue"] floatValue] saturation:[[color objectForKey:@"saturation"] floatValue] brightness:[[color objectForKey:@"brightness"] floatValue] alpha:1.0f];
}

@end
