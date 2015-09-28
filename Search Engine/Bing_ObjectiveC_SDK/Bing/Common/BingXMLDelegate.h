//-----------------------------------------------------------------------
// <copyright file="BingXMLDelegate.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingResponse.h"

@interface BingXMLDelegate : NSObject {
	BingResponse* response;
	BingResponse* current;
	NSDictionary* classes;
	NSString* query;
}

@property(assign, readwrite) BingResponse* response;

-(void) parser:(NSXMLParser *)parser 
didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI 
 qualifiedName:(NSString *)qualifiedName 
	attributes:(NSDictionary *)attributeDict;
@end
