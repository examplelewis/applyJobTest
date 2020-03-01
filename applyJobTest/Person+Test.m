//
//  Person+Test.m
//  applyJobTest
//
//  Created by 龚宇 on 20/02/14.
//  Copyright © 2020 gongyuTest. All rights reserved.
//

#import "Person+Test.h"

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

static const char *kFriendsPropertyKey = "kFriendsPropertyKey";

@implementation Person (Test)

- (void)setFriends:(NSArray *)friends {
    objc_setAssociatedObject(self, kFriendsPropertyKey, friends, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    Method me = class_getClassMethod(self, @selector(setFriends:));
}

- (NSArray *)friends {
    return objc_getAssociatedObject(self, kFriendsPropertyKey);
}

@end
