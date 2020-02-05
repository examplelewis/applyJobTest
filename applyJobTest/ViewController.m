//
//  ViewController.m
//  applyJobTest
//
//  Created by 龚宇 on 18/11/19.
//  Copyright © 2018 gongyuTest. All rights reserved.
//

#import "ViewController.h"
#import "TestAViewController.h"
#import "HitTestView.h"
#import "HitTestButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad");
    
    HitTestButton *hitTestButton = [[HitTestButton alloc] initWithFrame:CGRectMake(100, 154, 175, 300)];
    hitTestButton.layer.zPosition = CGFLOAT_MAX;
    [self.view addSubview:hitTestButton];
    
    HitTestView *hitTestView = [[HitTestView alloc] initWithFrame:CGRectMake(100, 154, 175, 300)];
    hitTestView.backgroundColor = [UIColor redColor];
    hitTestView.layer.zPosition = CGFLOAT_MAX;
    [self.view addSubview:hitTestView];
}

+ (void)load {
    NSLog(@"load");
}
+ (void)initialize {
    NSLog(@"initialize");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"viewWillAppear");
}
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    NSLog(@"viewWillLayoutSubviews");
}
- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    NSLog(@"viewDidLayoutSubviews");
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"viewDidAppear");
}
- (IBAction)testButtonPressed:(UIButton *)sender {
    TestAViewController *vc = [[TestAViewController alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
