//
// Created by GitAmend on 8/27/16.
//

#import <Foundation/Foundation.h>

@interface UIView (AgLayout)

@property(nonatomic, readonly, assign) CGFloat ag_x;
@property(nonatomic, readonly, assign) CGFloat ag_y;
@property(nonatomic, readonly, assign) CGFloat ag_left;
@property(nonatomic, readonly, assign) CGFloat ag_right;
@property(nonatomic, readonly, assign) CGFloat ag_bottom;
@property(nonatomic, readonly, assign) CGFloat ag_width;
@property(nonatomic, readonly, assign) CGFloat ag_height;
@property(nonatomic, readonly, assign) CGPoint ag_origin;
@property(nonatomic, readonly, assign) CGSize  ag_size;
@property(nonatomic, readonly, assign) CGFloat ag_centerX;
@property(nonatomic, readonly, assign) CGFloat ag_centerY;

@end