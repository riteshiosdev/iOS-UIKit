//-----------------------------------------------------------------------
// <copyright file="BingXMLDelegate.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingXMLDelegate.h"
#import "BingWebResponse.h"
#import "BingImageResponse.h"
#import "BingPhonebookResponse.h"
#import "BingBundleResponse.h"
#import "BingNewsResponse.h"
#import "BingVideoResponse.h"

@implementation BingXMLDelegate

@synthesize response;

-(id)init {
	if ((self = [super init])) {
		response = nil;
		classes = [[NSDictionary alloc] initWithObjectsAndKeys:[BingWebResult class], @"web:WebResult", 
				   [BingPhonebookResult class], @"pho:PhonebookResult", [BingVideoResult class], @"mms:VideoResult", 
				   [BingImageResult class], @"mms:ImageResult", [BingNewsResult class], @"news:NewsResult",
				   [BingWebResponse class], @"web:Web", [BingPhonebookResponse class], @"pho:Phonebook",
				   [BingImageResponse class], @"mms:Image", [BingVideoResponse class], @"mms:Video",
				   [BingNewsResponse class], @"news:News", nil];
	}
	return self;
}

-(void)dealloc {
	[classes release];
	[query release];
	[super dealloc];
}

-(void) parser:(NSXMLParser *)parser 
didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI 
 qualifiedName:(NSString *)qualifiedName 
	attributes:(NSDictionary *)attributeDict
{
	if ([elementName hasSuffix:@"Result"]) {
		BingResult* result;
		
		result = [[[classes objectForKey:elementName] alloc] initWithDictionary:attributeDict];
		if (current != nil) {
			[current addResult:result];
		}
		[result release]; result = nil;
	}else if ([elementName isEqualToString:@"Query"]) {
		query = [[attributeDict objectForKey:@"SearchTerms"] retain];
#ifdef BING_DEBUG
	}else if ([elementName isEqualToString:@"Error"]) {
		NSLog(@"Error Code = %@", [attributeDict objectForKey:@"Code"]);
		NSLog(@"Error Message = %@", [attributeDict objectForKey:@"Message"]);
		NSLog(@"Error Parameter = %@", [attributeDict objectForKey:@"Parameter"]);
#endif
	}else{
		
		if ([classes objectForKey:elementName] != nil) {
			current = [[[[classes objectForKey:elementName] alloc] init] autorelease];
			current.total = [[attributeDict objectForKey:@"Total"] intValue];
			current.offset = [[attributeDict objectForKey:@"Offset"] intValue];
			current.query = query;
		}else{
			return;
		}
		
		if ( response == nil && current != nil ) {
			response = current;
		}else if ( [response isKindOfClass:[BingBundleResponse class]] ) {
			[((BingBundleResponse*)response) addResponse:current];
			response.query = query;
		}else if (response != current) { 
			BingResponse* tmp = response;
			response = [[[BingBundleResponse alloc] init] autorelease];
			[((BingBundleResponse*)response) addResponse:tmp];
			[((BingBundleResponse*)response) addResponse:current];
		}
	}
}
@end
