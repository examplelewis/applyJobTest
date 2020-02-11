//
//  TestBViewController.m
//  applyJobTest
//
//  Created by 龚宇 on 20/02/11.
//  Copyright © 2020 gongyuTest. All rights reserved.
//

#import "TestBViewController.h"
#import "TestBScrollView.h"

#define screenWidth [UIScreen mainScreen].bounds.size.width
#define screenHeight [UIScreen mainScreen].bounds.size.height

@interface TestBViewController ()

@property (nonatomic, strong) TestBScrollView *mainScrollView;
@property (nonatomic, copy) NSArray *subViews;

@end

@implementation TestBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupUIAndData];
    
    NSLog(@"%f", [UIScreen mainScreen].bounds.size.height);
}

- (void)setupUIAndData {
    [self setupMainScrollView];
}
- (void)setupMainScrollView {
    self.mainScrollView = [[TestBScrollView alloc] initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight - 84)];
    self.mainScrollView.backgroundColor = [UIColor grayColor];
    self.mainScrollView.colors = @[[UIColor redColor], [UIColor greenColor], [UIColor blueColor]];
    
    [self.view addSubview:self.mainScrollView];
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
