//-----------------------------------------------------------------------
// <copyright file="BingBundleRequest.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingBundleRequest.h"

@implementation BingBundleRequest

-(id)init {
	if ((self = [super init])) {
		requests = [[NSMutableArray alloc] init];
	}
	return self;
}

-(id)initWithRequests:(BingRequest*)firstRequest,... {
	self = [self init];
	
	BingRequest* eachRequest;
	va_list argumentList;
	if (firstRequest) {
		[self addRequest:firstRequest];
		va_start(argumentList, firstRequest);
		while (eachRequest = va_arg(argumentList, BingRequest*))
			[self addRequest:eachRequest];
		va_end(argumentList);
	}
	
	return self;
}

-(void)dealloc {
	[requests release];
	[super dealloc];
}

// Adding of BundleRequest may create infinite loop
-(void)addRequest:(BingRequest*)request {
	[request removeParentOptions];
	[requests addObject:request];
}

-(NSString*)sourceType {
	NSString* sources;
	
	bool first = true;
	for (BingRequest* request in requests) {
		if (first) {
			sources = request.sourceType;
			first = false;
		}else{
			sources = [NSString stringWithFormat:@"%@+%@", sources, request.sourceType];
		}
	}
	return sources;
}

-(NSString*)requestOptions {
	NSMutableString* options = [NSMutableString stringWithString:[super requestOptions]];
	
	for (BingRequest* request in requests) {
		NSString* requestOptions = request.requestOptions;
		[options appendFormat:@"%@", requestOptions];
	}
	
	return options;
}
@end
