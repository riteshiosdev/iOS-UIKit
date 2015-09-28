//-----------------------------------------------------------------------
// <copyright file="BingAsyncRequest.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingXMLDelegate.h"

@interface BingAsyncRequest : NSObject {	
	NSObject* delegate;
	NSMutableData* responseData;
}

/**
 * Initialize the async request with a delegate
 *
 * @param theDelegate A delegate which will get called with a BingResponse when the request completes.
 */
-(id)initWithDelegate:(NSObject*)theDelegate;

-(void)connection:(NSURLConnection *)theConnection didReceiveResponse:(NSURLResponse *)response;
-(void)connection:(NSURLConnection *)theConnection didReceiveData:(NSData *)data;
-(void)connection:(NSURLConnection *)theConnection didFailWithError:(NSError *)error;
-(void)connectionDidFinishLoading:(NSURLConnection *)theConnection;
@end
