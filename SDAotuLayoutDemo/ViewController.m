//
//  ViewController.m
//  SDAotuLayoutDemo
//
//  Created by 李涛 on 16/4/18.
//  Copyright © 2016年 李涛. All rights reserved.
//

#import "ViewController.h"
#import <SDAutoLayout/UIView+SDAutoLayout.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *text;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label1.sd_layout
    .leftSpaceToView(self.view,20)
    .topSpaceToView(self.view , 20)
    .widthRatioToView(self.view,0.3)
    .autoHeightRatio(0);
    
    
    self.label2.sd_layout
    .leftEqualToView(self.label1)
    .topSpaceToView(self.label1,50)
    .widthRatioToView(self.label1,1)
    .heightEqualToWidth();
    
    self.text.sd_layout
    .bottomSpaceToView(self.view,20)
    .leftSpaceToView(self.view,0)
    .rightSpaceToView(self.view,0)
    .heightIs(20);
    
    self.slider.sd_layout
    .bottomSpaceToView(self.text,0)
    .leftSpaceToView(self.view,0)
    .rightSpaceToView(self.view,0)
    .heightIs(20);
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)inPut:(UITextField*)sender {
    self.label1.text = sender.text;
}

- (IBAction)changValue:(UISlider*)sender {
    self.label1.sd_layout.heightIs(sender.value);
//    [self.label2 updateLayout];
//    [self.label1 updateLayout];
    
}

@end
