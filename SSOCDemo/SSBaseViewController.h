//
//  SSBaseViewController.h
//  SSOCDemo
//
//  Created by zhangshuai5 on 2021/4/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SSBaseViewController : UIViewController

@property (nonatomic, strong) UITextView *tv;      ///log信息
@property (nonatomic, strong) NSString *logStr;    ///log信息

@end

NS_ASSUME_NONNULL_END
