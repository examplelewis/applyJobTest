//
//  TestBScrollView.m
//  applyJobTest
//
//  Created by 龚宇 on 20/02/11.
//  Copyright © 2020 gongyuTest. All rights reserved.
//

#import "TestBScrollView.h"

#define screenWidth [UIScreen mainScreen].bounds.size.width
#define screenHeight [UIScreen mainScreen].bounds.size.height

@interface TestBScrollView() <UIScrollViewDelegate>

@property (nonatomic, copy) NSArray *colorsArray;
@property (nonatomic, assign) NSInteger currentPage;

@end

@implementation TestBScrollView

#pragma mark - Initial
- (instancetype)init {
    self = [super init];
    if (self) {
        [self setupUIAndData];
    }
    
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self setupUIAndData];
    }
    
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUIAndData];
    }
    
    return self;
}
- (void)setupUIAndData {
    self.isInfiniteScroll = YES;
    self.pagingEnabled = YES;
    self.delegate = self;
}

#pragma mark - Getters & Setters
- (void)setColors:(NSArray *)colors {
    for (NSInteger i = 0; i < _colorsArray.count; i++) {
        UIView *view = [self viewWithTag:100 + i];
        [view removeFromSuperview];
    }
    
    if (_isInfiniteScroll && colors.count > 1) {
        NSMutableArray *mutableColors = [colors mutableCopy];
        
        [mutableColors insertObject:colors.lastObject atIndex:0];
        [mutableColors addObject:colors.firstObject];
        
        _colorsArray = [mutableColors copy];
    } else {
        _colorsArray = colors;
    }
    
    [self reloadData];
    
    self.contentSize = CGSizeMake(_colorsArray.count * screenWidth, 150);
    self.contentOffset = CGPointMake(screenWidth, 0);
}
- (void)reloadData {
    for (int i = 0; i < _colorsArray.count; i ++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(i * screenWidth + 10, 0, screenWidth - 20, 150)];
        view.tag = 100 + i;
        view.backgroundColor = _colorsArray[i];
        
        [self addSubview:view];
    }
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    [self makeInfiniteScrolling];
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    [self makeInfiniteScrolling];
}
- (void)makeInfiniteScrolling {
    if (!self.isInfiniteScroll) {
        return;
    }
   
    NSLog(@"self.contentOffset.x: %f", self.contentOffset.x);
    NSInteger currentPage = self.contentOffset.x / screenWidth;
    NSLog(@"currentPage: %ld", currentPage);
    if (currentPage == self.colorsArray.count - 1) {
        self.currentPage = 0;
        
        [self setContentOffset:CGPointMake(screenWidth, 0) animated:NO];
    } else if (currentPage == 0) {
        self.currentPage = self.colorsArray.count - 2;
        
        [self setContentOffset:CGPointMake(screenWidth * (self.colorsArray.count - 2), 0) animated:NO];
    } else {
        self.currentPage = currentPage-1 ;
    }
}

@end
