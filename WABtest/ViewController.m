//
//  ViewController.m
//  WABtest
//
//  Created by wab on 2017/5/8.
//  Copyright © 2017年 WAB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSString *appSchemeString=@"com.ios.WABTest:";
    UIImage *passImage=[UIImage  imageNamed:@"wabImage"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:appSchemeString] options:@{@"passValue" :passImage} completionHandler:^(BOOL success) {
        NSLog(@"跳转成功");
    }];
}

@end
