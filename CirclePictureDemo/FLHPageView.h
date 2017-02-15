//
//  ZZHPageView.h
//  CirclePictureDemo
//
//  Created by apple on 17/2/15.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FLHPageViewDelegate <NSObject>

@optional

- (void)pageViewDidClick:(NSInteger)index;

@end

@interface FLHPageView : UIImageView<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView  *scrollView;
@property (nonatomic, strong) UIPageControl *pageControl;
@property (nonatomic, weak) NSTimer *timer;

@property (nonatomic, strong) NSArray *imageArr;
@property (nonatomic, strong) UIColor *normalColor;
@property (nonatomic, copy) void (^clickBlock)(NSInteger );
@property (nonatomic, weak) id<FLHPageViewDelegate>delegate;
@property (nonatomic, strong) UIColor *selectColor;

// + (instancetype)pageView;

@end
