//
//  ShelfCollectionViewCell.m
//  CollectionViewOverlflow
//
//  Created by Abhishek Kumar on 2/25/14.
//  Copyright (c) 2014 kiwitech. All rights reserved.
//

#import "ShelfCollectionViewCell.h"
#import "StoreBook.h"
#import "LXReorderableCollectionViewFlowLayout.h"
@interface ShelfCollectionViewCell () <UICollectionViewDataSource, UICollectionViewDelegate>
{
    NSArray *dataSource;
    UICollectionView *verticleCollectionView;
}

@end
#define LX_LIMITED_MOVEMENT 0
@implementation ShelfCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"open_shelf_new.png"]];
        [self addSubview:backgroundImageView];
     
        
        LXReorderableCollectionViewFlowLayout *layout=[[LXReorderableCollectionViewFlowLayout alloc] init];
        [layout setScrollDirection:UICollectionViewScrollDirectionVertical];
        [layout setSectionInset:UIEdgeInsetsMake(00, 0, 0, 0)];
        [layout setItemSize:CGSizeMake(150, 150)];
        
        verticleCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(47, 72, 550, 700) collectionViewLayout:layout];
        [verticleCollectionView registerClass:[StoreBook class] forCellWithReuseIdentifier:@"store"];
        [self addSubview:verticleCollectionView];
        
        [verticleCollectionView setDelegate:self];
        [verticleCollectionView setDataSource:self];
        
        dataSource = @[@"Chris Adamson", @"Ameir Al-Zoubi", @"Ken Auer", @"Jonathan Blocksom", @"Kevin Conner", @"Jack Cox", @"Mark Dalrymple", @"Bill Dudney", @"Aaron Hillegass", @"Josh Johnson", @"Chris Judd", @"Scott McAlister", @"Rob Napier", @"Josh Nozzi", @"Jonathan Penn", @"Mark Pospesel", @"Daniel Steinberg", @"Jay Thrash", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Josh Abernathy", @"Chris Adamson", @"Ameir Al-Zoubi", @"Mike Ash", @"Ken Auer", @"Randy Beiter", @"Jeff Biggus", @"Jonathan Blocksom", @"Heath Borders", @"Tim Burks", @"Craig Castelaz", @"Step Christopher", @"Kevin Conner", @"Jack Cox", @"Brian Coyner", @"Mark Dalrymple", @"James Dempsey", @"Collin Donnell", @"Bill Dudney", @"Nathan Eror", @"Jason Felice", @"Mark Gilicinski", @"Geoff Goetz", @"Aaron Hillegass", @"Pete Hodgson", @"Andy Hunt", @"Jason Hunter", @"Andria Jensen", @"Josh Johnson", @"Chris Judd", @"Jeff Kelley", @"Dave Koziol", @"Brad Larson", @"Jonathan Lehr", @"Mac Liaw", @"Steve Madsen", @"Scott McAlister", @"Eric Meyer", @"Justin Miller", @"Saul Mora", @"Kevin Munc", @"Rob Napier", @"Jaimee Newberry", @"Josh Nozzi", @"Janine Ohmer", @"Daniel Pasco", @"Jonathan Penn", @"Boisy Pitre", @"Mark Pospesel", @"Jared Richardson", @"Jonathan Saggau", @"Ben Scheirman", @"Chad Sellers", @"Brent Simmons", @"Doug Sjoquist", @"Josh Smith", @"David Smith", @"Daniel Steinberg", @"Elizabeth Taylor", @"Mattt Thompson", @"Jay Thrash", @"Walter Tyree", @"Whitney Young",@"Chris Adamson", @"Ameir Al-Zoubi", @"Ken Auer", @"Jonathan Blocksom", @"Kevin Conner", @"Jack Cox", @"Mark Dalrymple", @"Bill Dudney", @"Aaron Hillegass", @"Josh Johnson", @"Chris Judd", @"Scott McAlister", @"Rob Napier", @"Josh Nozzi", @"Jonathan Penn", @"Mark Pospesel", @"Daniel Steinberg", @"Jay Thrash", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Josh Abernathy", @"Chris Adamson", @"Ameir Al-Zoubi", @"Mike Ash", @"Ken Auer", @"Randy Beiter", @"Jeff Biggus", @"Jonathan Blocksom", @"Heath Borders", @"Tim Burks", @"Craig Castelaz", @"Step Christopher", @"Kevin Conner", @"Jack Cox", @"Brian Coyner", @"Mark Dalrymple", @"James Dempsey", @"Collin Donnell", @"Bill Dudney", @"Nathan Eror", @"Jason Felice", @"Mark Gilicinski", @"Geoff Goetz", @"Aaron Hillegass", @"Pete Hodgson", @"Andy Hunt", @"Jason Hunter", @"Andria Jensen", @"Josh Johnson", @"Chris Judd", @"Jeff Kelley", @"Dave Koziol", @"Brad Larson", @"Jonathan Lehr", @"Mac Liaw", @"Steve Madsen", @"Scott McAlister", @"Eric Meyer", @"Justin Miller", @"Saul Mora", @"Kevin Munc", @"Rob Napier", @"Jaimee Newberry", @"Josh Nozzi", @"Janine Ohmer", @"Daniel Pasco", @"Jonathan Penn", @"Boisy Pitre", @"Mark Pospesel", @"Jared Richardson", @"Jonathan Saggau", @"Ben Scheirman", @"Chad Sellers", @"Brent Simmons", @"Doug Sjoquist", @"Josh Smith", @"David Smith", @"Daniel Steinberg", @"Elizabeth Taylor", @"Mattt Thompson", @"Jay Thrash", @"Walter Tyree", @"Whitney Young",@"Chris Adamson", @"Ameir Al-Zoubi", @"Ken Auer", @"Jonathan Blocksom", @"Kevin Conner", @"Jack Cox", @"Mark Dalrymple", @"Bill Dudney", @"Aaron Hillegass", @"Josh Johnson", @"Chris Judd", @"Scott McAlister", @"Rob Napier", @"Josh Nozzi", @"Jonathan Penn", @"Mark Pospesel", @"Daniel Steinberg", @"Jay Thrash", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Josh Abernathy", @"Chris Adamson", @"Ameir Al-Zoubi", @"Mike Ash", @"Ken Auer", @"Randy Beiter", @"Jeff Biggus", @"Jonathan Blocksom", @"Heath Borders", @"Tim Burks", @"Craig Castelaz", @"Step Christopher", @"Kevin Conner", @"Jack Cox", @"Brian Coyner", @"Mark Dalrymple", @"James Dempsey", @"Collin Donnell", @"Bill Dudney", @"Nathan Eror", @"Jason Felice", @"Mark Gilicinski", @"Geoff Goetz", @"Aaron Hillegass", @"Pete Hodgson", @"Andy Hunt", @"Jason Hunter", @"Andria Jensen", @"Josh Johnson", @"Chris Judd", @"Jeff Kelley", @"Dave Koziol", @"Brad Larson", @"Jonathan Lehr", @"Mac Liaw", @"Steve Madsen", @"Scott McAlister", @"Eric Meyer", @"Justin Miller", @"Saul Mora", @"Kevin Munc", @"Rob Napier", @"Jaimee Newberry", @"Josh Nozzi", @"Janine Ohmer", @"Daniel Pasco", @"Jonathan Penn", @"Boisy Pitre", @"Mark Pospesel", @"Jared Richardson", @"Jonathan Saggau", @"Ben Scheirman", @"Chad Sellers", @"Brent Simmons", @"Doug Sjoquist", @"Josh Smith", @"David Smith", @"Daniel Steinberg", @"Elizabeth Taylor", @"Mattt Thompson", @"Jay Thrash", @"Walter Tyree", @"Whitney Young",@"Chris Adamson", @"Ameir Al-Zoubi", @"Ken Auer", @"Jonathan Blocksom", @"Kevin Conner", @"Jack Cox", @"Mark Dalrymple", @"Bill Dudney", @"Aaron Hillegass", @"Josh Johnson", @"Chris Judd", @"Scott McAlister", @"Rob Napier", @"Josh Nozzi", @"Jonathan Penn", @"Mark Pospesel", @"Daniel Steinberg", @"Jay Thrash", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Josh Abernathy", @"Chris Adamson", @"Ameir Al-Zoubi", @"Mike Ash", @"Ken Auer", @"Randy Beiter", @"Jeff Biggus", @"Jonathan Blocksom", @"Heath Borders", @"Tim Burks", @"Craig Castelaz", @"Step Christopher", @"Kevin Conner", @"Jack Cox", @"Brian Coyner", @"Mark Dalrymple", @"James Dempsey", @"Collin Donnell", @"Bill Dudney", @"Nathan Eror", @"Jason Felice", @"Mark Gilicinski", @"Geoff Goetz", @"Aaron Hillegass", @"Pete Hodgson", @"Andy Hunt", @"Jason Hunter", @"Andria Jensen", @"Josh Johnson", @"Chris Judd", @"Jeff Kelley", @"Dave Koziol", @"Brad Larson", @"Jonathan Lehr", @"Mac Liaw", @"Steve Madsen", @"Scott McAlister", @"Eric Meyer", @"Justin Miller", @"Saul Mora", @"Kevin Munc", @"Rob Napier", @"Jaimee Newberry", @"Josh Nozzi", @"Janine Ohmer", @"Daniel Pasco", @"Jonathan Penn", @"Boisy Pitre", @"Mark Pospesel", @"Jared Richardson", @"Jonathan Saggau", @"Ben Scheirman", @"Chad Sellers", @"Brent Simmons", @"Doug Sjoquist", @"Josh Smith", @"David Smith", @"Daniel Steinberg", @"Elizabeth Taylor", @"Mattt Thompson", @"Jay Thrash", @"Walter Tyree", @"Whitney Young",@"Chris Adamson", @"Ameir Al-Zoubi", @"Ken Auer", @"Jonathan Blocksom", @"Kevin Conner", @"Jack Cox", @"Mark Dalrymple", @"Bill Dudney", @"Aaron Hillegass", @"Josh Johnson", @"Chris Judd", @"Scott McAlister", @"Rob Napier", @"Josh Nozzi", @"Jonathan Penn", @"Mark Pospesel", @"Daniel Steinberg", @"Jay Thrash", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Josh Abernathy", @"Chris Adamson", @"Ameir Al-Zoubi", @"Mike Ash", @"Ken Auer", @"Randy Beiter", @"Jeff Biggus", @"Jonathan Blocksom", @"Heath Borders", @"Tim Burks", @"Craig Castelaz", @"Step Christopher", @"Kevin Conner", @"Jack Cox", @"Brian Coyner", @"Mark Dalrymple", @"James Dempsey", @"Collin Donnell", @"Bill Dudney", @"Nathan Eror", @"Jason Felice", @"Mark Gilicinski", @"Geoff Goetz", @"Aaron Hillegass", @"Pete Hodgson", @"Andy Hunt", @"Jason Hunter", @"Andria Jensen", @"Josh Johnson", @"Chris Judd", @"Jeff Kelley", @"Dave Koziol", @"Brad Larson", @"Jonathan Lehr", @"Mac Liaw", @"Steve Madsen", @"Scott McAlister", @"Eric Meyer", @"Justin Miller", @"Saul Mora", @"Kevin Munc", @"Rob Napier", @"Jaimee Newberry", @"Josh Nozzi", @"Janine Ohmer", @"Daniel Pasco", @"Jonathan Penn", @"Boisy Pitre", @"Mark Pospesel", @"Jared Richardson", @"Jonathan Saggau", @"Ben Scheirman", @"Chad Sellers", @"Brent Simmons", @"Doug Sjoquist", @"Josh Smith", @"David Smith", @"Daniel Steinberg", @"Elizabeth Taylor", @"Mattt Thompson", @"Jay Thrash", @"Walter Tyree", @"Whitney Young",@"Chris Adamson", @"Ameir Al-Zoubi", @"Ken Auer", @"Jonathan Blocksom", @"Kevin Conner", @"Jack Cox", @"Mark Dalrymple", @"Bill Dudney", @"Aaron Hillegass", @"Josh Johnson", @"Chris Judd", @"Scott McAlister", @"Rob Napier", @"Josh Nozzi", @"Jonathan Penn", @"Mark Pospesel", @"Daniel Steinberg", @"Jay Thrash", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Patrick Burleson", @"Rene Cacheaux", @"James Dempsey", @"Bill Dudney", @"Nathan Eror", @"Kevin Harwood", @"Kevin Kim", @"Sean McMains", @"Saul Mora", @"Daniel Pasco", @"Jonathan Penn", @"Manton Reece", @"Kyle Richter", @"Cesare Rocchi", @"Ben Scheirman", @"Doug Sjoquist", @"Daniel Steinberg", @"Conrad Stoll", @"Josh Twist", @"Walter Tyree",@"Josh Abernathy", @"Chris Adamson", @"Ameir Al-Zoubi", @"Mike Ash", @"Ken Auer", @"Randy Beiter", @"Jeff Biggus", @"Jonathan Blocksom", @"Heath Borders", @"Tim Burks", @"Craig Castelaz", @"Step Christopher", @"Kevin Conner", @"Jack Cox", @"Brian Coyner", @"Mark Dalrymple", @"James Dempsey", @"Collin Donnell", @"Bill Dudney", @"Nathan Eror", @"Jason Felice", @"Mark Gilicinski", @"Geoff Goetz", @"Aaron Hillegass", @"Pete Hodgson", @"Andy Hunt", @"Jason Hunter", @"Andria Jensen", @"Josh Johnson", @"Chris Judd", @"Jeff Kelley", @"Dave Koziol", @"Brad Larson", @"Jonathan Lehr", @"Mac Liaw", @"Steve Madsen", @"Scott McAlister", @"Eric Meyer", @"Justin Miller", @"Saul Mora", @"Kevin Munc", @"Rob Napier", @"Jaimee Newberry", @"Josh Nozzi", @"Janine Ohmer", @"Daniel Pasco", @"Jonathan Penn", @"Boisy Pitre", @"Mark Pospesel", @"Jared Richardson", @"Jonathan Saggau", @"Ben Scheirman", @"Chad Sellers", @"Brent Simmons", @"Doug Sjoquist", @"Josh Smith", @"David Smith", @"Daniel Steinberg", @"Elizabeth Taylor", @"Mattt Thompson", @"Jay Thrash", @"Walter Tyree", @"Whitney Young"];
    }
    return self;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 0;//[dataSource count];
}

- (void)reloadData{
    
    [verticleCollectionView reloadData];
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *cellIdentifier = @"store";
    
//    StoreBook *storeBook = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
//    
//    [storeBook setBackgroundColor:[UIColor purpleColor]];
//    
//    UIImage *image = [UIImage imageNamed:[dataSource objectAtIndex:indexPath.row]];
//    
//    [[storeBook imageView] setImage:image];
    
    return nil;
}

#pragma mark - LXReorderableCollectionViewDataSource methods

- (void)collectionView:(UICollectionView *)collectionView itemAtIndexPath:(NSIndexPath *)fromIndexPath willMoveToIndexPath:(NSIndexPath *)toIndexPath {
    
//    [self.deck removeObjectAtIndex:fromIndexPath.item];
//    [self.deck insertObject:playingCard atIndex:toIndexPath.item];
}

- (BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath {
#if LX_LIMITED_MOVEMENT == 1
    PlayingCard *playingCard = [deck objectAtIndex:indexPath.item];
    
    switch (playingCard.suit) {
        case PlayingCardSuitSpade:
        case PlayingCardSuitClub:
            return YES;
        default:
            return NO;
    }
#else
    return YES;
#endif
}

- (BOOL)collectionView:(UICollectionView *)collectionView itemAtIndexPath:(NSIndexPath *)fromIndexPath canMoveToIndexPath:(NSIndexPath *)toIndexPath {
#if LX_LIMITED_MOVEMENT == 1
    PlayingCard *fromPlayingCard = [deck objectAtIndex:fromIndexPath.item];
    PlayingCard *toPlayingCard = [deck objectAtIndex:toIndexPath.item];
    
    switch (toPlayingCard.suit) {
        case PlayingCardSuitSpade:
        case PlayingCardSuitClub:
            return fromPlayingCard.rank == toPlayingCard.rank;
        default:
            return NO;
    }
#else
    return YES;
#endif
}

#pragma mark - LXReorderableCollectionViewDelegateFlowLayout methods

- (void)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout willBeginDraggingItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"will begin drag");
}

- (void)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout didBeginDraggingItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"did begin drag");
}

- (void)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout willEndDraggingItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"will end drag");
}

- (void)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout didEndDraggingItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"did end drag");
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
