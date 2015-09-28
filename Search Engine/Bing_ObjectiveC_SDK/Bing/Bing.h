//-----------------------------------------------------------------------
// <copyright file="Bing.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingXMLDelegate.h"
#import "BingResponse.h"
#import "BingRequest.h"
#import "BingAsyncRequest.h"

/**
 * A service object used to send, receive, and process Bing API requests and responses.
 */
@interface Bing : NSObject {
	NSString *appId;
}

@property(copy, readwrite) NSString *appId;

/**
 * Initialize a Bing service object. To obtain a Bing Application ID visit http://www.bing.com/developers
 *
 * @param application_ID A valid Bing Application ID
 * @return The Bing service object
 */
-(id)initWithApplicationID:(NSString*)application_ID;

/**
 * Perform a synchronous search on the Bing API.
 *
 * @param query A string specifying the query to perform
 * @param theRequest A BingRequest object (autoreleased)
 * @return The response from the Bing API
 */
-(BingResponse*)search:(NSString*)query withRequest:(BingRequest*)theRequest;

/**
 * Perform an asynchronous search on the Bing API.
 * The BingResponse object that is returned to the delegate is autoreleased.
 *
 * @param query A string specifying the query to perform
 * @param theRequest A BingRequest object
 * @param delegate An object implementing the receiveBingResponse selector
 */
-(void)search:(NSString*)query withRequest:(BingRequest*)request delegate:(NSObject*)delegate;

/**
 * Generates the URL to use in order to query the Bing API with.
 *
 * @param query A string specifying the query to perform
 * @param theRequest A BingRequest object
 * @return A string representing the URL to use in querying the Bing API 
 */
-(NSString*)requestUrl:(NSString*)query withRequest:(BingRequest*)request;
@end

/**
 * Informal interface which Bing Asynchronous Search delegates should implement
 */
@interface NSObject(BingAsyncRequestNotification)
/**
 * Executed when a BingResponse is received from the API.
 *
 * @param BingResponse The BingResponse object for the received API response. This object is autoreleased.
 */
-(void)receiveBingResponse:(BingResponse*)response;
@end