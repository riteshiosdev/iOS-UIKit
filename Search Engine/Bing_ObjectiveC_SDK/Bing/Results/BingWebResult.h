//-----------------------------------------------------------------------
// <copyright file="BingWebResult.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingResult.h"

/**
 * Represents an individual web result.
 */
@interface BingWebResult : BingResult {
}

-(NSString*)dateTime;
-(NSString*)description;
-(NSString*)displayUrl;
-(NSString*)title;
-(NSString*)url;
-(NSString*)cacheUrl;

@end
