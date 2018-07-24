//
//  WatermarkVC.m
//  Watermark
//
//  Created by 仝兴伟 on 2018/7/23.
//  Copyright © 2018年 TW. All rights reserved.
//

// 需求
/**
 1 在使用的点只需要初始化 传入提示文字 字体颜色 背景颜色（如果不传入字体，字体颜色，背景颜色默认会有）传入要显示的区域大小
 2 根据传入字体的长度计算显示列数 根据高度计算显示的列数 间距固定20px
 */

#import "WatermarkVC.h"
#import "WatermarkView_ss.h"
@interface WatermarkVC ()

@end

@implementation WatermarkVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self.view setWantsLayer:YES];
    self.view.layer.backgroundColor = [NSColor whiteColor].CGColor;
    
    
    // 初始化watermark view
   WatermarkView_ss *view = [WatermarkView_ss initwithFrame:CGRectMake((self.view.bounds.size.width - 900) / 2,(self.view.bounds.size.height - 600) / 2, 900, 600) showTitle:@"根据传入字体的长度计算显示列数" titleColor:[NSColor purpleColor] backgroundColor:[NSColor yellowColor]];
        [self.view addSubview:view];
}

@end
