//
//  LOPTypePickerViewController.m
//  Solarized
//
//  Created by Pedro Lopes on 25/03/14.
//  Copyright (c) 2014 Pedro Lopes. All rights reserved.
//

#import "LOPTypePickerViewController.h"

@implementation LOPTypePickerViewController

@synthesize types = _types;
@synthesize picker = _picker;

#pragma mark - Accessors

-(NSArray *)types {
    if(!_types) {
        _types = [[NSArray alloc] initWithObjects:@"CSS HEX", @"UIColor RGB", @"UIColor HSB", nil];
    }
    return _types;
}

-(UIPickerView *)picker {
    if(!_picker) {
        _picker = [[UIPickerView alloc] init];
        _picker.backgroundColor = [UIColor whiteColor];
    }
    return _picker;
}

# pragma mark - UIViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Content";
    
    self.types = [[NSArray alloc] initWithObjects:@"CSS HEX", @"UIColor RGB", @"UIColor HSB", nil];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(cancel:)];
    
    self.picker.delegate = self;
    self.picker.dataSource = self;
    [self.picker reloadAllComponents];
    [self.view addSubview:self.picker];
    
    [self.picker becomeFirstResponder];
    
    
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    [self.picker sizeToFit];
    
    CGRect frame = self.picker.frame;
    frame.origin.y = self.view.bounds.size.height - frame.size.height;
    self.picker.frame = frame;
}

# pragma mark - UIPickerViewDataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.types count];
}


# pragma mark - UIPickerViewDelegate
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.types objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    switch (row) {
        case 0:
            // CSS Hex
            break;
        case 1:
            // UIColor RGB
            break;
        case 2:
            // UIColor HSB
            break;
        default:
            break;
    }
}

# pragma mark - Actions

-(void)cancel:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

# pragma mark - NSObject
-(void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
