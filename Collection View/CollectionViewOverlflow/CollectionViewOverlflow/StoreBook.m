//
//  StoreBook.m
//  CollectionViewOverlflow
//
//  Created by Abhishek Kumar on 2/25/14.
//  Copyright (c) 2014 kiwitech. All rights reserved.
//

#import "StoreBook.h"

@implementation StoreBook

@synthesize imageView = _imageView;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
        [_imageView setBackgroundColor:[UIColor redColor]];
        [self addSubview:_imageView];
    
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
