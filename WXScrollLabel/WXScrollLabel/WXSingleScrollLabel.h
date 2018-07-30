//
//  WXSingleScrollLabel.h
//  iOSDemo
//
//  Created by wuxi on 2018/3/15.
//  Copyright © 2018年 Wuxi. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, WXScrollLabelType) {
    WXScrollLabelTypeUp = 0,
    WXScrollLabelTypeDown,
};

@interface WXSingleScrollLabel : UILabel

@property (assign, nonatomic) UIEdgeInsets edgeInsets;

+ (instancetype)singleScrollLabel;

@end
