//
//  SSBaseViewController.m
//  SSOCDemo
//
//  Created by zhangshuai5 on 2021/4/16.
//

#import "SSBaseViewController.h"

@interface SSBaseViewController ()

@end

@implementation SSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    self.tv = [[UITextView alloc] initWithFrame:CGRectMake(0, screenSize.height*2/3, screenSize.width, screenSize.height/3)];
    self.tv.backgroundColor = UIColor.whiteColor;
    self.tv.font = [UIFont systemFontOfSize:14.f];
    self.tv.backgroundColor = [[UIColor orangeColor] colorWithAlphaComponent:.5f];
    [self.view addSubview:self.tv];
}

@end
