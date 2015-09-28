//-----------------------------------------------------------------------
// <copyright file="BingNewsResult.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingResult.h"

/**
 * Represents an individual news result.
 */
@interface BingNewsResult : BingResult {
}

-(BOOL)breakingNews;
-(NSString*)date;
-(NSString*)snippet;
-(NSString*)source;
-(NSString*)title;
-(NSString*)url;
@end
