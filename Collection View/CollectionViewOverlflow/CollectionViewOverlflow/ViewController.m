//
//  ViewController.m
//  CollectionViewOverlflow
//
//  Created by Abhishek Kumar on 2/25/14.
//  Copyright (c) 2014 kiwitech. All rights reserved.
//

#import "ViewController.h"
#import "CustomLayout.h"
#import "ShelfCollectionViewCell.h"
@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
{
    IBOutlet UIScrollView *_secretScrollView;
    UICollectionView *_horizontalTableView;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [layout setSectionInset:UIEdgeInsetsMake(00, 0, 0, 0)];
    [layout setItemSize:CGSizeMake(600, 800)];
    [layout setMinimumLineSpacing:0];
    _horizontalTableView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) collectionViewLayout:layout];
    
    [_horizontalTableView setBackgroundColor:[UIColor clearColor]];
    [_horizontalTableView setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    [_horizontalTableView registerClass:[ShelfCollectionViewCell class] forCellWithReuseIdentifier:@"CollectionCell"];
    [_horizontalTableView setDelegate:self];
    [_horizontalTableView setDataSource:self];
    [_horizontalTableView setPagingEnabled:NO];
    [[self view] addSubview:_horizontalTableView];
     _horizontalTableView.contentInset = UIEdgeInsetsMake(0, (self.view.frame.size.width-600)/2, 0, (self.view.frame.size.height-800)/2);

    [_horizontalTableView addGestureRecognizer:_secretScrollView.panGestureRecognizer];
    _horizontalTableView.scrollEnabled = NO;
    _horizontalTableView.panGestureRecognizer.enabled = NO;
    
    [_secretScrollView setContentSize:CGSizeMake(12000, 200)];
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView == _secretScrollView) { //ignore collection view scrolling callbacks
        CGPoint contentOffset = scrollView.contentOffset;
        contentOffset.x = contentOffset.x - _horizontalTableView.contentInset.left;
        _horizontalTableView.contentOffset = contentOffset;
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 100;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = @"CollectionCell";
    
    ShelfCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    [cell reloadData];
    
    [cell setBackgroundColor:[UIColor greenColor]];
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
