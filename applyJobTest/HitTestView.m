//
//  HitTestView.m
//  applyJobTest
//
//  Created by 龚宇 on 18/11/27.
//  Copyright © 2018 gongyuTest. All rights reserved.
//

#import "HitTestView.h"

@implementation HitTestView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(200, 50, 100, 100)];
        button.backgroundColor = [UIColor greenColor];
        [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"haha" forState:UIControlStateNormal];
        
        [self addSubview:button];
    }
    
    return self;
}

- (void)buttonPressed {
    NSLog(@"haha");
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if ([self pointInside:point withEvent:event]) {
        return [super hitTest:point withEvent:event];
    }
    
    for (NSInteger i = self.subviews.count - 1; i > -1; i--) {
        UIView *subview = self.subviews[i];
        CGPoint newPoint = [self convertPoint:point toView:subview];
        UIView *view = [subview hitTest:newPoint withEvent:event];
        
        NSLog(@"touch point: %@", NSStringFromCGPoint(point));
        NSLog(@"newpoint: %@", NSStringFromCGPoint(newPoint));
        
        if (view) {
            return view;
        }
    }
    
    
    return nil;
    
    // 如果简单写了 return self，那么 button 的事件就不会响应
//    return self;
}

//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    NSLog(@"touch point: %@", NSStringFromCGPoint(point));
//
//    return CGRectContainsPoint(self.bounds, point);
//}

@end
