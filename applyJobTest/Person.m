//
//  Person.m
//  applyJobTest
//
//  Created by 龚宇 on 20/02/14.
//  Copyright © 2020 gongyuTest. All rights reserved.
//

#import "Person.h"

@interface Person ()

@property (nonatomic, copy) NSString *age;

@end

@implementation Person {
    NSString *_name;
}

- (void)other {
    self.name = @"123456";
    NSLog(@"name: %@", self.name);
    
    self.age = @"654321";
    NSLog(@"age: %@", self.age);
}

- (void)setName:(NSString *)name {
    _name = [name copy];
}
- (NSString *)name {
    return _name;
    
    
}

//- (void)setAge:(NSString *)age {
//    _age = [age copy];
//}
//- (NSString *)age {
//    return _age;
//}

@end
