//-----------------------------------------------------------------------
// <copyright file="BingVideoResult.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingResult.h"

/**
 * Represents an individual video result.
 */
@interface BingVideoResult : BingResult {
}

-(NSString*)title;
-(NSString*)sourceTitle;
-(NSString*)runTime;
-(NSString*)playUrl;
-(NSString*)clickThroughPageUrl;

@end
