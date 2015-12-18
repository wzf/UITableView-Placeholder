//
//  UITableView+Placeholder.h
//  FEComps
//
//  Created by wangzhanfeng-PC on 15/12/18.
//  Copyright © 2015年 F.E. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UITableView (Placeholder)
@property (assign, nonatomic) UITableViewCellSeparatorStyle originalSeparatorStyle; //原始分割线样式
@property (assign, nonatomic) BOOL didSetup; //

// setup placeholder view
- (void)placeholderBaseOnNumber:(NSInteger)numberOfRows iconConfig:(void (^) (UIImageView *imageView))iconConfig textConfig:(void (^) (UILabel *label))textConfig;

- (void)clean;
@end


@interface UITableViewPlaceholderView : UIView
@property (strong, nonatomic) UIImageView *placeholderImageView; //
@property (strong, nonatomic) UILabel     *placeholderLabel; //
@end