//
//  WatermarkView_ss.m
//  Watermark
//
//  Created by 仝兴伟 on 2018/7/23.
//  Copyright © 2018年 TW. All rights reserved.
//

#import "WatermarkView_ss.h"
#import "WatermarkViews.h"
#define KWatermarkMargin 10 // 间距
#define KWatermarkWidth 100 //宽
#define KWatermarkHeight 100 //高
@implementation WatermarkView_ss

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
//    [[NSColor whiteColor]setFill];
//    NSRectFill(dirtyRect);
   
}

+(instancetype)initwithFrame:(CGRect)frameDrew showTitle:(NSString *)title titleColor:(NSColor *)titleColor backgroundColor:(NSColor *)backgroundColor {
    // 创建view
    WatermarkView_ss *views = [[WatermarkView_ss alloc]initWithFrame:frameDrew];
    // 设置背景颜色
    [views setWantsLayer:YES];
    views.layer.backgroundColor = backgroundColor.CGColor;
    // 获取字体的size
    CGSize titleSize =[title sizeWithAttributes:@{NSFontAttributeName:[NSFont systemFontOfSize:12.0]}];
    // 根据绘制区域大小设置行列
    float row =frameDrew.size.width / titleSize.width;// 行
    float col = frameDrew.size.height/ titleSize.width;// 列
    // 创建一个18*10的水印区域
    // 如果宽度高度小于50则创建一个
    for (int i = 0; i < row; i++) {
        for (int j = 0; j < col; j++) {
            // 创建单个水印
    WatermarkViews *markView = [[WatermarkViews alloc]initWithFrame:CGRectMake(0 + i*titleSize.width, 0+j*titleSize.width, titleSize.width,titleSize.width)];
    markView.title = title;
    markView.titleColor = titleColor;
    [views addSubview:markView];
        }
    }
    // title的center应该在该区域的中心
    
    return views;
}

@end
