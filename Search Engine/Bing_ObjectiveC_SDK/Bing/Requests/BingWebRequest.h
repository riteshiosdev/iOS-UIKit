//-----------------------------------------------------------------------
// <copyright file="BingWebRequest.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingRequest.h"

/**
 * Request object to be used when requesting web results.
 */
@interface BingWebRequest : BingRequest {
}

-(void)setCount:(uint)count;
-(void)setFileType:(NSString*)fileType;
-(void)setOffset:(uint)offset;
-(void)setWebOptions:(NSString*)options;

@end
