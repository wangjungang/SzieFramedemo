//
//  ViewController.m
//  SzieFramedemo
//
//  Created by 王俊钢 on 2017/7/18.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"


@interface ViewController ()
@property (nonatomic,strong) UILabel *demolab;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
    
    [self.view addSubview:self.demolab];
    [self layout];
    
    NSLog(@"hei------%f",self.demolab.frame.size.height);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UILabel *)demolab
{
    if(!_demolab)
    {
        _demolab = [[UILabel alloc] init];
        _demolab.backgroundColor = [UIColor redColor];
    }
    return _demolab;
}

-(void)layout
{
    [self.demolab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10.0);
        make.right.mas_equalTo(-10.0);
        make.top.mas_equalTo(self.view).offset(10.0);
        make.bottom.mas_equalTo(self.view).offset(-70.0);
       
    }];
    
    [self.demolab.superview layoutIfNeeded];
}


@end
