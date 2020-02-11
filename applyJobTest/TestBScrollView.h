//
//  TestBScrollView.h
//  applyJobTest
//
//  Created by 龚宇 on 20/02/11.
//  Copyright © 2020 gongyuTest. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestBScrollView : UIScrollView

@property (nonatomic, assign) BOOL isInfiniteScroll;
@property (nonatomic, copy) NSArray *colors;

@end

NS_ASSUME_NONNULL_END
