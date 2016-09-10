//
// Created by GitAmend on 8/27/16.
//

#import "UIView+AgLayout.h"


@implementation UIView (AgLayout)

- (CGPoint)agOrigin {
    return self.frame.origin;
}

- (CGSize)agSize {
    return self.frame.size;
}

- (CGFloat)agX {
    return self.frame.origin.x;
}

- (CGFloat)agY {
    return self.frame.origin.y;
}

- (CGFloat)agLeft {
    return self.frame.origin.x;
}

- (CGFloat)agTop {
    return self.frame.origin.y;
}

- (CGFloat)agRight {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)agBottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)agWidth {
    return self.frame.size.width;
}

- (CGFloat)agHeight {
    return self.frame.size.height;
}

- (CGFloat)agCenterX {
    return self.center.x;
}

- (CGFloat)agCenterY {
    return self.center.y;
}

- (void)setAgOrigin:(CGPoint)point {
    CGRect newFrame = self.frame;
    newFrame.origin = point;
    self.frame = newFrame;
}

- (void)setAgSize:(CGSize)size {
    CGRect newFrame = self.frame;
    newFrame.size = size;
    self.frame = newFrame;
}

- (void)setAgX:(CGFloat)x {
    CGRect newFrame = self.frame;
    newFrame.origin.x = x;
    self.frame = newFrame;
}

- (void)setAgY:(CGFloat)y {
    CGRect newFrame = self.frame;
    newFrame.origin.y = y;
    self.frame = newFrame;
}

- (void)setAgLeft:(CGFloat)left {
    CGRect newFrame = self.frame;
    newFrame.origin.x = left;
    self.frame = newFrame;
}

- (void)setAgTop:(CGFloat)top {
    CGRect newFrame = self.frame;
    newFrame.origin.x = top;
    self.frame = newFrame;
}

- (void)setAgRight:(CGFloat)right {
    CGRect newFrame = self.frame;
    newFrame.origin.x = right - newFrame.size.width;
    self.frame = newFrame;
}

- (void)setAgBottom:(CGFloat)bottom {
    CGRect newFrame = self.frame;
    newFrame.origin.y = bottom - newFrame.size.height;
    self.frame = newFrame;
}

- (void)setAgWidth:(CGFloat)width {
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}

- (void)setAgHeight:(CGFloat)height {
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}

- (void)setAgCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (void)setAgCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}


@end