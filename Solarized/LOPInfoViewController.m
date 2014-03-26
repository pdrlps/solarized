//
//  LOPInfoViewController.m
//  Solarized
//
//  Created by Pedro Lopes on 26/03/14.
//  Copyright (c) 2014 Pedro Lopes. All rights reserved.
//

#import "LOPInfoViewController.h"
#import "LOPHelper.h"

@implementation LOPInfoViewController

@synthesize info = _info;
@synthesize openURL = _openURL;

# pragma mark - Accessors

-(UILabel *)info {
    if (!_info) {
        _info = [[UILabel alloc] init];
        _info.numberOfLines = 0;
        _info.textAlignment = NSTextAlignmentLeft;
        _info.font = [LOPHelper preferredMenloItalicFontForTextStyle:[[UIApplication sharedApplication] preferredContentSizeCategory]];
        _info.textColor = [UIColor colorWithRed:0.0f green:0.168627 blue:0.211764 alpha:1.0f];
    }
    return _info;
}

-(UIButton *)openURL {
    if(!_openURL) {
        _openURL = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [_openURL setTitle:@"Open Solarized URL" forState:UIControlStateNormal];
        _openURL.titleLabel.textColor = [UIColor colorWithRed:0.0f green:0.168627 blue:0.211764 alpha:1.0f];
        [_openURL addTarget:self action:@selector(goToSolarized:) forControlEvents:UIControlEventAllTouchEvents];
        _openURL.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _openURL;
}

# pragma mark - UIViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Information";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(cancel:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"URL" style:UIBarButtonItemStylePlain target:self action:@selector(goToSolarized:)];
    
    self.info.text = @"Yeah info";
    [self.view addSubview:self.info];
    
    [self.view addSubview:self.openURL];
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    [super viewDidLayoutSubviews];
    
    [self.openURL sizeToFit];
    
    CGRect frame = self.openURL.frame;
    frame.origin.y = self.view.bounds.size.height - frame.size.height;
    self.openURL.frame = frame;
    
    CGSize size = self.view.bounds.size;
    self.info.frame = CGRectMake(8.0f, self.topLayoutGuide.length, size.width - 8.0f, size.height -frame.size.height - self.topLayoutGuide.length);
    
    
    

    
    
}


# pragma mark - Actions

-(void)cancel:(id)sender {
    NSLog(@"Cancelling");
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)goToSolarized:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://ethanschoonover.com/solarized"]];
}

@end
