//
//  WatermarkViewss.h
//  Watermark
//
//  Created by 仝兴伟 on 2018/7/23.
//  Copyright © 2018年 TW. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WatermarkViewss : NSView

/**
 水印工具类

 @param frameRect 绘制水印的总面积
 @param title 显示title
 @param titleColor 现在title字体颜色
 */
+(void)initWith:(NSRect)frameRect showTitle:(NSString *)title setTitleColor:(NSColor *)titleColor ;


@end
