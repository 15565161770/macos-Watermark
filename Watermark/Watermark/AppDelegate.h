//
//  AppDelegate.h
//  Watermark
//
//  Created by 仝兴伟 on 2018/7/23.
//  Copyright © 2018年 TW. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "WatermarkView.h"
#import "WatermarkViews.h"
#import "WatermarkVC.h"
@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic, strong) WatermarkView *watermarkView; // 案例一
@property (nonatomic, strong) WatermarkViews *watermarkViews;

@property (nonatomic, strong) WatermarkVC *waterMarkVC;
@property (nonatomic, strong) NSWindowController *mainWindowController;

@end

