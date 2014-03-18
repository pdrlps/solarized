//
//  LOPHelper.h
//  Solarized
//
//  Created by Pedro Lopes on 17/03/14.
//  Copyright (c) 2014 Pedro Lopes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LOPHelper : NSObject

+ (UIFont *)preferredMenloFontForTextStyle:(NSString *)textStyle;

+ (UIFont *)preferredMenloItalicFontForTextStyle:(NSString *)textStyle;

+ (UIFont *)preferredMenloBoldFontForTextStyle:(NSString *)textStyle;

+(NSArray *)getColors;


@end
