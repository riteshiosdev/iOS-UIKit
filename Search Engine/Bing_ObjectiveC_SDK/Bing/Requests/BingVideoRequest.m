//-----------------------------------------------------------------------
// <copyright file="BingVideoRequest.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingVideoRequest.h"

@implementation BingVideoRequest


-(NSString*)requestOptions {
	NSMutableString *options = [NSMutableString stringWithString:[super requestOptions]];
	
	if ([attrDict objectForKey:@"count"]) {
		[options appendFormat:@"&Video.Count=%i", [[attrDict objectForKey:@"count"] intValue]];
	}
	
	if ([attrDict objectForKey:@"sortby"]) {
		[options appendFormat:@"&Web.FileType=%@", [attrDict objectForKey:@"sortby"]];
	}
	
	if ([attrDict objectForKey:@"offset"]) {
		[options appendFormat:@"&Video.Offset=%i", [[attrDict objectForKey:@"offset"] intValue]];
	}
	
	if ([attrDict objectForKey:@"filters"]) {
		[options appendFormat:@"&Video.Filters=%@", [attrDict objectForKey:@"filters"]];
	}
	
	return options;
}

-(NSString*)sourceType {
	return @"video";	
}

-(void)setCount:(uint)count {
	[attrDict setObject:[NSNumber numberWithInt:count] forKey:@"count"];
}
-(void)setOffset:(uint)offset {
	[attrDict setObject:[NSNumber numberWithInt:offset] forKey:@"offset"];
}
-(void)setFilters:(NSString*)filters {
	[attrDict setObject:filters forKey:@"filters"];
}
-(void)setSortBy:(NSString*)sortby {
	[attrDict setObject:sortby forKey:@"sortby"];
}

@end
