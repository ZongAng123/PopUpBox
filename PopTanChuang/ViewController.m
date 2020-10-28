//
//  ViewController.m
//  PopTanChuang
//
//  Created by ZA on 2020/10/28.
//

#import "ViewController.h"
#import "ZAPopTool.h"

@interface ViewController ()
@property (strong, nonatomic) UIView *contentView;
@property (strong, nonatomic) UIButton *popBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 305, 390)];
    _contentView.backgroundColor = [UIColor clearColor];
    
    _popBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _popBtn.frame = CGRectMake(100, 250, 120, 50);
    _popBtn.backgroundColor = [UIColor redColor];
    [_popBtn setTitle:@"新人礼弹出框" forState:UIControlStateNormal];
    [_popBtn addTarget:self action:@selector(popViewShow) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_popBtn];
    
}

- (void)popViewShow {
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:_contentView.bounds];
    imageV.image = [UIImage imageNamed:@"MY-YOUHUIQUAN"];
    [_contentView addSubview:imageV];

    [ZAPopTool sharedInstance].shadeBackgroundType = ShadeBackgroundTypeSolid;
    [ZAPopTool sharedInstance].closeButtonType = ButtonPositionTypeRight;
    [[ZAPopTool sharedInstance] showWithPresentView:_contentView animated:YES];

}


@end
