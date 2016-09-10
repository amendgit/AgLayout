//
// Created by GitAmend on 8/26/16.
//

#import "AgLayout.h"

@implementation AgLayout {
    UIView *_layoutView;
    CGRect _layoutFrame;
}

+ (void)layout:(UIView *)view block:(void(^)(AgLayout *layout))layoutBlock {
    AgLayout *layout = [[AgLayout alloc] init];
    [layout layout:view];
    if (layoutBlock) {
        layoutBlock(layout);
    }
    [layout finish];
}

- (void)layout:(UIView *)view {
    _layoutView  = view;
    _layoutFrame = view.frame;
}

- (void)finish {
    _layoutView.frame = _layoutFrame;
    _layoutView = nil;
}

- (void)centerInView:(UIView *)view {
    [self centerInRect:view.frame];
}

- (void)centerHorizontallyInView:(UIView *)view {
    [self centerHorizontallyInRect:view.frame];
}

- (void)centerVerticallyInView:(UIView *)view {
    [self centerVerticallyInRect:view.frame];
}

- (void)centerInRect:(CGRect)rect {
    _layoutFrame.origin.x = rect.origin.x + (rect.size.width  - _layoutFrame.size.width ) / 2.f;
    _layoutFrame.origin.y = rect.origin.y + (rect.size.height - _layoutFrame.size.height) / 2.f;
}

- (void)centerHorizontallyInRect:(CGRect)rect {
    _layoutFrame.origin.x = rect.origin.x + (rect.size.width - _layoutFrame.size.width) / 2.f;
}

- (void)centerVerticallyInRect:(CGRect)rect {
    _layoutFrame.origin.y = rect.origin.y + (rect.size.height - _layoutFrame.size.height) / 2.f;
}

- (void)moveLeftTopToPoint:(CGPoint)point {
    _layoutFrame.origin = point;
}

- (void)moveRightBottomToPoint:(CGPoint)point {
    _layoutFrame.origin.x = point.x - _layoutFrame.size.width;
    _layoutFrame.origin.y = point.y - _layoutFrame.size.height;
}

- (void)moveLeftToPosition:(CGFloat)position {
    _layoutFrame.origin.x = position;
}

- (void)moveRightToPosition:(CGFloat)position {
    _layoutFrame.origin.x = position - _layoutFrame.size.width;
}

- (void)moveTopToPosition:(CGFloat)position {
    _layoutFrame.origin.x = position;
}

- (void)moveBottomToPosition:(CGFloat)position {
    _layoutFrame.origin.y = position - _layoutFrame.size.height;
}

- (void)stretchLeftTopToPoint:(CGPoint)point {
    _layoutFrame.size.width  += _layoutFrame.origin.x - point.x;
    _layoutFrame.size.height += _layoutFrame.origin.y - point.y;
    _layoutFrame.origin = point;
}

- (void)stretchRightBottomToPoint:(CGPoint)point {
    _layoutFrame.size.width  = point.x - _layoutFrame.origin.x;
    _layoutFrame.size.height = point.y - _layoutFrame.origin.y;
}

- (void)stretchTopToPosition:(CGFloat)position {
    _layoutFrame.size.height += _layoutFrame.origin.y - position;
    _layoutFrame.origin.y = position;
}

- (void)stretchLeftToPosition:(CGFloat)position {
    _layoutFrame.size.width += _layoutFrame.origin.x - position;
    _layoutFrame.origin.x = position;
}

- (void)stretchRightToPosition:(CGFloat)position {
    _layoutFrame.size.width = position - _layoutFrame.origin.x;
}

- (void)stretchBottomToPosition:(CGFloat)position {
    _layoutFrame.size.height = position - _layoutFrame.origin.y;
}

@end