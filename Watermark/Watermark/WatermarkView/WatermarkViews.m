//
//  WatermarkViews.m
//  Watermark
//
//  Created by 仝兴伟 on 2018/7/23.
//  Copyright © 2018年 TW. All rights reserved.
//

#import "WatermarkViews.h"
#define KWatermarkFontSize 12.0 // 间距

@interface WatermarkViews ()
@property (nonatomic) NSAttributedString * displayString;
@end
@implementation WatermarkViews

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
//    [[NSColor whiteColor]setFill];
//    NSRectFill(dirtyRect);
    
    [self drawView];
}

- (void)drawView {
    // view 倾斜30
    NSAffineTransform* xform = [NSAffineTransform transform];
    [xform rotateByDegrees:30];
    [xform concat];
    
    NSPoint attributedPoint = NSMakePoint(3, 0);
    [self.displayString drawAtPoint:attributedPoint];
    NSMutableDictionary *attributedDic = [[NSMutableDictionary alloc]init];
    [attributedDic setObject:[NSFont fontWithName:@"Helvetica" size:KWatermarkFontSize] forKey:NSFontAttributeName];
    [attributedDic setObject:[NSColor redColor] forKey:NSForegroundColorAttributeName];
    [self.displayString drawAtPoint:attributedPoint];
}

-(NSAttributedString *)displayString {
   NSMutableAttributedString *attributedTitle = [[NSMutableAttributedString alloc]initWithString:self.title attributes:@{NSObliquenessAttributeName:@(0.5), NSFontAttributeName:[NSFont systemFontOfSize:KWatermarkFontSize weight:2.0]}]; // 设置倾斜
    
    [attributedTitle addAttributes:@{NSForegroundColorAttributeName:self.titleColor, NSFontAttributeName:[NSFont systemFontOfSize:KWatermarkFontSize weight:2.0]} range:NSMakeRange(0, self.title.length)]; // 设置字体颜色
    
    [attributedTitle addAttributes:@{NSBaselineOffsetAttributeName:@(5),
                                     NSFontAttributeName:[NSFont systemFontOfSize:KWatermarkFontSize]} range:NSMakeRange(0, self.title.length)];
    return attributedTitle;
}

-(void)setDisplayString:(NSAttributedString *)displayString{
    NSDictionary *dicAttibutes = [displayString attributesAtIndex:0 effectiveRange:NULL];
    self.title = displayString.string;
    for (NSString *key in dicAttibutes.allKeys) {
        if ([key isEqualToString:NSForegroundColorAttributeName]) {
            self.titleColor = dicAttibutes[NSForegroundColorAttributeName];
        }
    }
}

@end
