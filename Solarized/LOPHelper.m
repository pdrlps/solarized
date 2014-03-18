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
      @"name":@"base03",
      @"hex":@"#002b36"
      },
  @{
      @"name":@"base02",
      @"hex":@"#073642"
      }
  
  ];

}

@end
