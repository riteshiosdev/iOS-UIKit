//-----------------------------------------------------------------------
// <copyright file="Bing.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "Bing.h"

@implementation Bing
@synthesize appId;

static NSString * const BING_URL = @"http://api.bing.net/xml.aspx?";

-(id)initWithApplicationID:(NSString*)application_ID {
	if ((self = [self init])) {
		self.appId = application_ID;
	}
	return self;
}

-(void)dealloc {
	[self.appId release];
	[super dealloc];
}

-(BingResponse*)search:(NSString*)query withRequest:(BingRequest*)theRequest  {
	NSString* requestURL = [self requestUrl:query withRequest:theRequest];
	
#ifdef BING_DEBUG
	NSLog(@"Fetching Sync: %@ ", requestURL);
#endif
	NSXMLParser* xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL URLWithString:requestURL]];
	BingXMLDelegate *xmlDelegate = [[BingXMLDelegate alloc] init];
	
	[xmlParser setDelegate:xmlDelegate];
	
	[xmlParser parse];
	
	BingResponse* response = xmlDelegate.response;
	
	[xmlParser release];
	[xmlDelegate release];
	
	return response;
}

-(void)search:(NSString*)query withRequest:(BingRequest*)theRequest delegate:(NSObject*)delegate {
	NSString* requestURL = [self requestUrl:query withRequest:theRequest];	
	NSURLRequest* urlRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:requestURL]
										cachePolicy:NSURLRequestUseProtocolCachePolicy
										timeoutInterval:60.0];
	
	BingAsyncRequest* asyncDelegate = [[[BingAsyncRequest alloc] initWithDelegate:delegate] autorelease];
	
#ifdef BING_DEBUG
	NSLog(@"Fetching Async: %@", requestURL);
#endif
	[[NSURLConnection alloc] initWithRequest:urlRequest delegate:asyncDelegate];
}

-(NSString*)requestUrl:(NSString*)query withRequest:(BingRequest*)theRequest {
	NSMutableString* requestURL = [NSMutableString stringWithFormat:@"%@xmltype=attributebased&AppId=%@&Query=%@&Sources=%@", BING_URL, appId, query, theRequest.sourceType];
	
	NSString* requestOptions = theRequest.requestOptions;
	if (requestOptions != nil) {
		[requestURL appendFormat:@"%@", requestOptions]; 
	}
	return [requestURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}
@end
