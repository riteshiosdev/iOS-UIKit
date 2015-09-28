//
//  ViewController.m
//  QBAnimationSequence
//
//  Created by Katsuma Tanaka on 2013/01/31.
//  Copyright (c) 2013年 Katsuma Tanaka. All rights reserved.
//

#import "ViewController.h"

#import "FirstTutorialSheet.h"
#import "SecondTutorialSheet.h"
#import "ThirdTutorialSheet.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tutorialView.contentSize = CGSizeMake(960, 240);
    
    self.pageControl.numberOfPages = 3;
    self.pageControl.currentPage = 0;
    
    FirstTutorialSheet *firstSheet = [[FirstTutorialSheet alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
    [self.tutorialView addSubview:firstSheet];
    
    SecondTutorialSheet *secondSheet = [[SecondTutorialSheet alloc] initWithFrame:CGRectMake(320, 0, 320, 240)];
    [self.tutorialView addSubview:secondSheet];
    
    ThirdTutorialSheet *thirdSheet = [[ThirdTutorialSheet alloc] initWithFrame:CGRectMake(640, 0, 320, 240)];
    [self.tutorialView addSubview:thirdSheet];
}


#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    CGPoint contentOffset = self.tutorialView.contentOffset;
    NSInteger currentPage = contentOffset.x / 320.0;
    
    self.pageControl.currentPage = currentPage;
}

@end