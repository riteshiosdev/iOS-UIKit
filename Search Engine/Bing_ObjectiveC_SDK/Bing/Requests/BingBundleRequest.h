//-----------------------------------------------------------------------
// <copyright file="BingBundleRequest.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingRequest.h"

/**
 * A bundle request object has the ability to "bundle" together several different request types at once.
 * This allows a client application to send a single HTTP request for multiple, different request types.
 */
@interface BingBundleRequest : BingRequest {
	NSMutableArray* requests;
}

/**
 * Initialize the undle with a nil terminated list of requests
 *
 * @param firstRequest A nil terminated list of BingRequest objects
 * @return A BundleReqest object
 */
-(id)initWithRequests:(BingRequest*)firstRequest, ... 
	NS_REQUIRES_NIL_TERMINATION;

/**
 * Add a BingRequest object to this bundle.
 * The request will be retained.
 *
 * @param request A new BingRequest object to be added to the request
 */
-(void)addRequest:(BingRequest*)request;

@end
