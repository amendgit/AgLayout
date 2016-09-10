//
// Created by GitAmend on 8/27/16.
//

#import <Foundation/Foundation.h>

@interface UIView (AgLayout)

- (CGPoint)agOrigin;
- (CGSize)agSize;

- (CGFloat)agX;
- (CGFloat)agY;

- (CGFloat)agLeft;
- (CGFloat)agTop;
- (CGFloat)agRight;
- (CGFloat)agBottom;

- (CGFloat)agWidth;
- (CGFloat)agHeight;

- (CGFloat)agCenterX;
- (CGFloat)agCenterY;

- (void)setAgOrigin:(CGPoint)point;
- (void)setAgSize:(CGSize)size;

- (void)setAgX:(CGFloat)x;
- (void)setAgY:(CGFloat)y;

- (void)setAgLeft:(CGFloat)left;
- (void)setAgTop:(CGFloat)top;
- (void)setAgRight:(CGFloat)right;
- (void)setAgBottom:(CGFloat)bottom;

- (void)setAgWidth:(CGFloat)width;
- (void)setAgHeight:(CGFloat)height;

- (void)setAgCenterX:(CGFloat)centerX;
- (void)setAgCenterY:(CGFloat)centerY;

@end