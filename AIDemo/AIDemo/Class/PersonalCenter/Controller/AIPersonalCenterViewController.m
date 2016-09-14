//
//  AIPersonalCenterViewController.m
//  AIDemo
//
//  Created by 艾泽鑫 on 16/9/9.
//  Copyright © 2016年 艾泽鑫. All rights reserved.
//

#import "AIPersonalCenterViewController.h"
#import <WebKit/WebKit.h>

@interface AIPersonalCenterViewController ()

@end

@implementation AIPersonalCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString *path = [[NSBundle mainBundle]pathForResource:@"001.pdf" ofType:nil];
//    WKWebView *webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
//    NSURL *url = [NSURL fileURLWithPath:path];
//    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
//    [webView loadRequest:request];
//    [self.view addSubview:webView];
//    self.view.dk_backgroundColorPicker = DKColorPickerWithKey(BG);
    self.view.dk_backgroundColorPicker = DKColorPickerWithKey(BG);
    UIButton *switchButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [switchButton addTarget:self action:@selector(switchColor) forControlEvents:UIControlEventTouchUpInside];
    [switchButton setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height / 2.0)];
    switchButton.center = CGPointMake(self.view.center.x, self.view.center.y * 0.5);
    [switchButton setTitle:@"SwitchColor" forState:UIControlStateNormal];
    [self.view addSubview:switchButton];
    
    [switchButton dk_setTitleColorPicker:DKColorPickerWithKey(TINT) forState:(UIControlStateNormal)];
}

- (void)switchColor {
    if ([self.dk_manager.themeVersion isEqualToString:DKThemeVersionNight]) {
        [self.dk_manager dawnComing];
    } else {
        [self.dk_manager nightFalling];
    }
}

@end
