//
//  ViewController.m
//  YLPasswordInput
//
//  Created by 苏沫离 on 2020/7/20.
//  Copyright © 2020 苏沫离. All rights reserved.
//

#import "ViewController.h"
#import "YLPasswordInputView.h"

@interface ViewController ()
<YLPasswordInputViewDelegate>
@property (nonatomic, strong) YLPasswordInputView *passwordView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.passwordView];
}

#pragma mark - response click

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}


#pragma mark - YLPasswordInputViewDelegate

/**输入改变*/
- (void)passwordInputViewDidChange:(YLPasswordInputView *)passwordInputView{
    
}

/**点击删除*/
- (void)passwordInputViewDidDeleteBackward:(YLPasswordInputView *)passwordInputView{
    
}

/**输入完成*/
- (void)passwordInputViewCompleteInput:(YLPasswordInputView *)passwordInputView{
    
}

/**开始输入*/
- (void)passwordInputViewBeginInput:(YLPasswordInputView *)passwordInputView{
    
}

/**结束输入*/
- (void)passwordInputViewEndInput:(YLPasswordInputView *)passwordInputView{
    
}

#pragma mark - setter and getters

- (YLPasswordInputView *)passwordView{
    if (_passwordView == nil) {
        _passwordView = [[YLPasswordInputView alloc] initWithFrame:CGRectMake((CGRectGetWidth(UIScreen.mainScreen.bounds) - 42 * 6) / 2.0, 120, 42 * 6.0, 42)];
        _passwordView.delegate = self;
    }
    return _passwordView;
}

@end
