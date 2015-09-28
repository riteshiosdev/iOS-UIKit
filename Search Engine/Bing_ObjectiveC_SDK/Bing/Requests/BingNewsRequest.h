//-----------------------------------------------------------------------
// <copyright file="BingNewsRequest.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingRequest.h"

/**
 * Request object to be used when requesting news results.
 */
@interface BingNewsRequest : BingRequest {
}

-(void)setCount:(uint)count;
-(void)setOffset:(uint)offset;
-(void)setCategory:(NSString*)category;
-(void)setLocationOverride:(NSString*)locationOverride;
-(void)setSortBy:(NSString*)sortBy;

@end
