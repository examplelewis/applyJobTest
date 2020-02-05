//
//  TestAViewController.m
//  applyJobTest
//
//  Created by 龚宇 on 18/11/20.
//  Copyright © 2018 gongyuTest. All rights reserved.
//

#import "TestAViewController.h"

@interface TestAViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation TestAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTriggered) userInfo:nil repeats:YES];
    self.view.backgroundColor = [UIColor redColor];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [self.timer invalidate];
    self.timer = nil;
}

- (void)dealloc {
    NSLog(@"dealloc");
}

- (void)timerTriggered {
    NSLog(@"timerTriggered");
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
