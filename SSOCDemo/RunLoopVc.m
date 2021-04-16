//
//  RunLoopVc.m
//  SSOCDemo
//
//  Created by zhangshuai5 on 2021/4/16.
//

#import "RunLoopVc.h"

@interface RunLoopVc ()

@property (nonatomic, strong) UIButton *addBtn;    ///添加监听
@property (nonatomic, strong) UIButton *removeBtn; ///移除监听

@end

@implementation RunLoopVc

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.addBtn setTitle:@"添加监听" forState:UIControlStateNormal];
    self.addBtn.backgroundColor = UIColor.orangeColor;
    [self.addBtn addTarget:self action:@selector(addRunLoopObserver) forControlEvents:UIControlEventTouchUpInside];
    self.addBtn.frame = CGRectMake(50, 150, 100, 30);
    [self.view addSubview:self.addBtn];
    
    self.removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.removeBtn setTitle:@"移除监听" forState:UIControlStateNormal];
    self.removeBtn.backgroundColor = UIColor.orangeColor;
    [self.removeBtn addTarget:self action:@selector(removeRunLoopObserver) forControlEvents:UIControlEventTouchUpInside];
    self.removeBtn.frame = CGRectMake(200, 150, 100, 30);
    [self.view addSubview:self.removeBtn];
    
    [self setLog:[NSString stringWithFormat:@"oc runloop地址%@,%@\nc runloop地址%p,%p",[NSRunLoop mainRunLoop],[NSRunLoop currentRunLoop],CFRunLoopGetMain(),CFRunLoopGetCurrent()]];
}

- (void)setLog:(NSString *)log{
    if (!self.logStr) {
        self.logStr = log;
    } else {
        self.logStr = [NSString stringWithFormat:@"%@\n%@",self.logStr,log];
    }
    self.tv.text = self.logStr;
}
#pragma mark - Action
- (void)addRunLoopObserver{
    
    
    
}

- (void)removeRunLoopObserver{
    
}

@end
