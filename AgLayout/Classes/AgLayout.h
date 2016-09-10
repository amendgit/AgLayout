//
// Created by GitAmend on 8/26/16.
//

#ifndef AG_LAYOUT_H
#define AG_LAYOUT_H

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "UIView+AgLayout.h"

#define AG_LAYOUT_PREPARE          AgLayout *layout = [[AgLayout alloc] init]
#define AG_LAYOUT_VIEW_BEGIN(view) [layout layout:view]
#define AG_LAYOUT_VIEW_END(view)   [layout finish]

@interface AgLayout : NSObject

// dont need to call finish.
+ (void)layout:(UIView *)view block:(void(^)(AgLayout *layout))layoutBlock;

// need to call finish.
- (void)layout:(UIView *)view;
- (void)finish;

// center...
- (void)centerInView:(UIView *)view;
- (void)centerHorizontallyInView:(UIView *)view;
- (void)centerVerticallyInView:(UIView *)view;

- (void)centerInRect:(CGRect)rect;
- (void)centerHorizontallyInRect:(CGRect)rect;
- (void)centerVerticallyInRect:(CGRect)rect;

// move...
- (void)moveLeftTopToPoint:(CGPoint)point;
- (void)moveRightBottomToPoint:(CGPoint)point;
- (void)moveLeftToPosition:(CGFloat)position;
- (void)moveRightToPosition:(CGFloat)position;
- (void)moveTopToPosition:(CGFloat)position;
- (void)moveBottomToPosition:(CGFloat)position;

// stretch...
- (void)stretchLeftTopToPoint:(CGPoint)point;
- (void)stretchRightBottomToPoint:(CGPoint)point;
- (void)stretchTopToPosition:(CGFloat)position;
- (void)stretchLeftToPosition:(CGFloat)position;
- (void)stretchRightToPosition:(CGFloat)position;
- (void)stretchBottomToPosition:(CGFloat)position;

@end

#endif // AG_LAYOUT_H