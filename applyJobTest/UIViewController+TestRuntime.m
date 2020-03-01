//
//  UIViewController+TestRuntime.m
//  applyJobTest
//
//  Created by 龚宇 on 20/02/20.
//  Copyright © 2020 gongyuTest. All rights reserved.
//

#import "UIViewController+TestRuntime.h"
#import <objc/runtime.h>

@implementation UIViewController (TestRuntime)

+ (void)load {
    Method vWATR = class_getInstanceMethod(self, @selector(viewWillAppearTestRuntime:));
    Method vWA = class_getInstanceMethod(self, @selector(viewWillAppear:));
    
    method_exchangeImplementations(vWATR, vWA);
}

- (void)viewWillAppearTestRuntime:(BOOL)animated {
    [self viewWillAppearTestRuntime:animated];
    
    NSLog(@"self: %@", self);
}

@end
