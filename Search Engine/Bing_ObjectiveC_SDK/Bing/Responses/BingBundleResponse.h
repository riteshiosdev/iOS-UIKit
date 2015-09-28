//-----------------------------------------------------------------------
// <copyright file="BingBundleResponse.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingResponse.h"

/**
 * A bundle response object holds one or many other response objects.
 */
@interface BingBundleResponse : BingResponse {
}

/**
 * Add a BingResponse to this bundle response
 *
 * @param response Response to be added to this bundle response
 */
-(void)addResponse:(BingResponse*)response;

@end
