//
//  LOPTypePickerViewController.h
//  Solarized
//
//  Created by Pedro Lopes on 25/03/14.
//  Copyright (c) 2014 Pedro Lopes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LOPTypePickerViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>


@property (nonatomic) NSArray *types;
@property (nonatomic) UIPickerView *picker;

@end
