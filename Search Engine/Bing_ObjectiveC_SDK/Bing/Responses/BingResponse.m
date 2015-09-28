//-----------------------------------------------------------------------
// <copyright file="BingResponse.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingResponse.h"

@implementation BingResponse
@synthesize total, offset, query;

-(id)init {
	if ((self = [super init])) {
		results = [[NSMutableArray alloc] init];
	}
	return self;
}

-(void)dealloc {
	[results release];
	[query release];
	[super dealloc];
}

-(void)addResult:(BingResult*)result {
	[results addObject:result];
}

-(NSArray*)results {
	return results;
}
@end
