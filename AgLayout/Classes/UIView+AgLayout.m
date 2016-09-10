//
// Created by GitAmend on 8/27/16.
//

#import "UIView+AgLayout.h"


@implementation UIView (AgLayout)

- (CGPoint)ag_origin {
    return self.frame.origin;
}

- (CGSize)ag_size {
    return self.frame.size;
}

- (CGFloat)ag_x {
    return self.frame.origin.x;
}

- (CGFloat)ag_y {
    return self.frame.origin.y;
}

- (CGFloat)ag_left {
    return self.frame.origin.x;
}

- (CGFloat)ag_top {
    return self.frame.origin.y;
}

- (CGFloat)ag_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)ag_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)ag_width {
    return self.frame.size.width;
}

- (CGFloat)ag_height {
    return self.frame.size.height;
}

- (CGFloat)ag_centerX {
    return self.center.x;
}

- (CGFloat)ag_centerY {
    return self.center.y;
}

@end