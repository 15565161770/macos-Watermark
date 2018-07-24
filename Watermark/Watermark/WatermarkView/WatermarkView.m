//
//  WatermarkView.m
//  Watermark
//
//  Created by 仝兴伟 on 2018/7/23.
//  Copyright © 2018年 TW. All rights reserved.
//

#import "WatermarkView.h"

@interface WatermarkView ()

@property (nonatomic) NSAttributedString * displayString;

@end

@implementation WatermarkView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    [[NSColor whiteColor]setFill];
    NSRectFill(dirtyRect);
    
    [self drawView];
}

- (void)drawView {
    /*
     NSRect rect = NSMakeRect(100, 10, 20, 20);
     NSBezierPath *path = [NSBezierPath bezierPathWithRect:rect];
     NSColor *color = [NSColor blueColor];
     [color set];
     [path fill];
     */
    
    // 拿到view的宽度和高度
    NSLog(@"%f---%f", self.bounds.size.width,self.bounds.size.height);
    // 根据view的宽度和高度设置行数和列数
    int row = self.bounds.size.height ;
    int col = self.bounds.size.width;
    
    // 这个倾斜的是view
//    NSAffineTransform* xform = [NSAffineTransform transform];
//    [xform rotateByDegrees:30];
//    [xform concat];
    
    for (int i = 0; i < 10; i ++) {
        for (int j = 0; j < 10; j ++) {
    NSPoint attributedPoint = NSMakePoint(10 + i*50, 10 + j*30 );
    [self.displayString drawAtPoint:attributedPoint];
    NSMutableDictionary *attributedDic = [[NSMutableDictionary alloc]init];
    [attributedDic setObject:[NSFont fontWithName:@"Helvetica" size:14.0] forKey:NSFontAttributeName];
    [attributedDic setObject:[NSColor redColor] forKey:NSForegroundColorAttributeName];
    [self.displayString drawAtPoint:attributedPoint];
        }
    }
    
}

-(instancetype)initWithFrame:(NSRect)frameRect {
    if ([super initWithFrame:frameRect]) {
//        [self drawView];
    }
    return self;
}

-(NSAttributedString *)displayString {
    NSMutableAttributedString *attributedTitle = [[NSMutableAttributedString alloc]initWithString:self.title attributes:@{NSForegroundColorAttributeName:self.titleColor, NSFontAttributeName:[NSFont systemFontOfSize:14.0 weight:2.0]}];
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
