//-----------------------------------------------------------------------
// <copyright file="BingVideoRequest.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingRequest.h"

/**
 * Request object to be used when requesting video results.
 */
@interface BingVideoRequest : BingRequest {
}

-(void)setCount:(uint)count;
-(void)setOffset:(uint)offset;
-(void)setFilters:(NSString*)filters;
-(void)setSortBy:(NSString*)sortBy;


@end
