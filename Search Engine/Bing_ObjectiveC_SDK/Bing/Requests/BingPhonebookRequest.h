//-----------------------------------------------------------------------
// <copyright file="BingPhonebookRequest.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingRequest.h"

/**
 * Request object to be used when requesting phonebook/local results.
 */
@interface BingPhonebookRequest : BingRequest {
}

-(void)setCount:(uint)count;
-(void)setOffset:(uint)offset;
-(void)setFileType:(NSString*)filetype;
-(void)setLocId:(NSString*)locId;
-(void)setSortBy:(NSString*)sortby;

@end
