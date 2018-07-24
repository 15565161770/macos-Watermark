//
//  WatermarkView_ss.h
//  Watermark
//
//  Created by 仝兴伟 on 2018/7/23.
//  Copyright © 2018年 TW. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WatermarkView_ss : NSView


/**
 水印初始化

 @param frameDrew 要绘制区域
 @param title 显示文本
 @param titleColor 字体颜色
 @param backgroundColor 区域背景颜色
 @return 返回view
 */
+(instancetype)initwithFrame:(CGRect)frameDrew showTitle:(NSString *)title titleColor:(NSColor *)titleColor backgroundColor:(NSColor *)backgroundColor;

@end
