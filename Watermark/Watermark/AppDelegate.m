//
//  AppDelegate.m
//  Watermark
//
//  Created by 仝兴伟 on 2018/7/23.
//  Copyright © 2018年 TW. All rights reserved.
//

#import "AppDelegate.h"
@interface AppDelegate ()
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    self.waterMarkVC = [[WatermarkVC alloc]initWithNibName:@"WatermarkVC" bundle:nil];
    NSWindow *myWindow = [NSWindow windowWithContentViewController:self.waterMarkVC];
    self.mainWindowController = [[NSWindowController alloc]initWithWindow:myWindow];
    self.mainWindowController.window.titlebarAppearsTransparent  = YES;
    self.mainWindowController.window.movableByWindowBackground = YES;
    self.mainWindowController.window.titleVisibility = NSWindowTitleHidden;
    [self.mainWindowController.window setStyleMask:[self.mainWindowController.window styleMask] | NSWindowStyleMaskFullSizeContentView];
    self.waterMarkVC.view.window.windowController = self.mainWindowController;
    [self.mainWindowController.window makeKeyAndOrderFront:self];
    [self.mainWindowController.window center];
    [self.mainWindowController showWindow:nil];
    
}

- (void)demo {
    // 方案一
    //    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //        self.watermarkView.title = @"erer";
    //        self.watermarkView.titleColor = [NSColor purpleColor];
    //        [self.window.contentView addSubview:self.watermarkView];
    //    });
    
    
    // 方案二
    //    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //                self.watermarkViews.title = @"erer";
    //                self.watermarkViews.titleColor = [NSColor purpleColor];
    //                [self.window.contentView addSubview:self.watermarkViews];
    //    });
    
    
    // 方案三
    
    //    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //        for (int i = 0; i < 10; i++) {
    //            for (int j = 0; j < 10; j++ ) {
    //        _watermarkViews = [[WatermarkViews alloc]initWithFrame:CGRectMake(0 + i*80, 0 + j*60, 80, 60)];
    //        self.watermarkViews.title = @"erer";
    //        self.watermarkViews.titleColor = [NSColor purpleColor];
    //        [self.window.contentView addSubview:self.watermarkViews];
    //            }
    //        }
    //    });
    
    
}





















//-(WatermarkViews *)watermarkViews {
//    if (!_watermarkViews) {
//        _watermarkViews = [[WatermarkViews alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
//        [self.window.contentView addSubview:_watermarkViews];
//    }
//    return _watermarkViews;
//}



//- (WatermarkView *)watermarkView {
//    if (!_watermarkView) {
//        _watermarkView = [[WatermarkView alloc]initWithFrame:CGRectMake(10, 10, self.window.frame.size.width - 20, self.window.frame.size.height - 40)];
//        [self.window.contentView addSubview:_watermarkView];
//    }
//    return _watermarkView;
//}

@end
