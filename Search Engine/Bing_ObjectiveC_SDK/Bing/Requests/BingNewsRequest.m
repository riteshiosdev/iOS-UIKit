//-----------------------------------------------------------------------
// <copyright file="BingNewsRequest.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingNewsRequest.h"

@implementation BingNewsRequest

-(NSString*)requestOptions {
	NSMutableString* options = [NSMutableString stringWithString:[super requestOptions]];
	
	if ([attrDict objectForKey:@"count"]) {
		[options appendFormat:@"&News.Count=%i", [[attrDict objectForKey:@"count"] intValue]];
	}
	
	if ([attrDict objectForKey:@"offset"]) {
		[options appendFormat:@"&News.Offset=%i", [[attrDict objectForKey:@"offset"] intValue]];
	}
	
	if ([attrDict objectForKey:@"category"]) {
		[options appendFormat:@"&News.Category=%@", [attrDict objectForKey:@"category"]];
	}
	
	if ([attrDict objectForKey:@"locationOverride"]) {
		[options appendFormat:@"&News.LocationOverride=%@", [attrDict objectForKey:@"locationOverride"]];
	}
	
	if ([attrDict objectForKey:@"sortby"]) {
		[options appendFormat:@"&News.SortBy=%@", [attrDict objectForKey:@"sortby"]];
	}
	
	return options;
}

-(NSString*)sourceType {
	return @"news";
}

-(void)setCount:(uint)count {
	[attrDict setObject:[NSNumber numberWithInt:count] forKey:@"count"];
}
-(void)setOffset:(uint)offset {
	[attrDict setObject:[NSNumber numberWithInt:offset] forKey:@"offset"];
}
-(void)setCategory:(NSString*)category {
	[attrDict setObject:category forKey:@"category"];
}
-(void)setLocationOverride:(NSString*)locationOverride {
	[attrDict setObject:locationOverride forKey:@"locationOverride"];
}
-(void)setSortBy:(NSString*)sortBy {
	[attrDict setObject:sortBy forKey:@"sortby"];
}
@end
