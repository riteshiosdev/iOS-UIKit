//-----------------------------------------------------------------------
// <copyright file="BingImageResult.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingResult.h"

/**
 * Represents an individual image result.
 */
@interface BingImageResult : BingResult {
}

-(uint)height;
-(uint)width;
-(uint)fileSize;
-(NSString*)title;
-(NSString*)mediaUrl;
-(NSString*)url;
-(NSString*)displayUrl;
-(NSString*)contentType;

@end
