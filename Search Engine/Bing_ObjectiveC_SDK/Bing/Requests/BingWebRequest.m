//-----------------------------------------------------------------------
// <copyright file="BingWebRequest.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingWebRequest.h"

@implementation BingWebRequest

-(NSString*)sourceType {
	return @"web";
}

-(NSString*)requestOptions {
	NSMutableString *options = [NSMutableString stringWithString:[super requestOptions]];

	if ([attrDict objectForKey:@"count"]) {
		[options appendFormat:@"&Web.Count=%i", [[attrDict objectForKey:@"count"] intValue]];
	}
	
	if ([attrDict objectForKey:@"fileType"]) {
		[options appendFormat:@"&Web.FileType=%@", [attrDict objectForKey:@"fileType"]];
	}
	
	if ([attrDict objectForKey:@"offset"]) {
		[options appendFormat:@"&Web.Offset=%i", [[attrDict objectForKey:@"offset"] intValue]];
	}
	
	return options;
}

-(void)setCount:(uint)count {
	[attrDict setObject:[NSNumber numberWithInt:count] forKey:@"count"];
}
-(void)setFileType:(NSString*)fileType {
	[attrDict setObject:fileType forKey:@"fileType"];
}
-(void)setOffset:(uint)offset {
	[attrDict setObject:[NSNumber numberWithInt:offset] forKey:@"offset"];
}
-(void)setWebOptions:(NSString*)options {
	[attrDict setObject:options forKey:@"webOptions"];
}
@end
