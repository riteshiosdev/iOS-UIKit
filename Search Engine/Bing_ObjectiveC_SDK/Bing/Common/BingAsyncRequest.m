//-----------------------------------------------------------------------
// <copyright file="BingAsyncRequest.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingAsyncRequest.h"

@implementation BingAsyncRequest

-(id)initWithDelegate:(NSObject*)theDelegate {
	if ((self = [super init])) {
		delegate = [theDelegate retain];
	}
	return self;
}

-(void)dealloc {
	[responseData release];
	[delegate release];
	
	[super dealloc];
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
#ifdef BING_DEBUG
	NSLog(@"Received Async Response");
#endif
	if (responseData != nil) {
		[responseData release];
	}
	responseData = [[NSMutableData alloc] init];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
	[responseData appendData:data];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
	if ([delegate respondsToSelector:@selector(receiveBingResponse:)]) {
		[delegate performSelector:@selector(receiveBingResponse:) withObject: nil];
	}
	[connection release];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection {
	BingXMLDelegate* xmlDelegate = [[BingXMLDelegate alloc] init];
	NSXMLParser* parser = [[NSXMLParser alloc] initWithData:responseData];
	[parser setDelegate:xmlDelegate];
	
	[parser parse];
	
#ifdef BING_DEBUG
	NSLog(@"Attempting to Call Async Delegate");
#endif
	if ([delegate respondsToSelector:@selector(receiveBingResponse:)]) {
		[delegate performSelector:@selector(receiveBingResponse:) withObject: xmlDelegate.response];
	}
	
	[parser release];
	[xmlDelegate release];
	[responseData release]; responseData = nil;
	[connection release]; connection = nil;
	[delegate release];delegate = nil;
}
@end
