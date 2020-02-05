//
//  HitTestButton.m
//  applyJobTest
//
//  Created by 龚宇 on 18/11/27.
//  Copyright © 2018 gongyuTest. All rights reserved.
//

#import "HitTestButton.h"

@implementation HitTestButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        self.backgroundColor = [UIColor greenColor];
        [self setTitle:@"haha" forState:UIControlStateNormal];
        [self setTitle:@"ahah" forState:UIControlStateHighlighted];
        [self addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
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

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    NSLog(@"touch point: %@", NSStringFromCGPoint(point));

    return CGRectContainsPoint(CGRectInset(self.bounds, -50, -50), point);
}

@end
