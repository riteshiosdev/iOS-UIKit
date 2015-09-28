//-----------------------------------------------------------------------
// <copyright file="BingImageRequest.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingImageRequest.h"

@implementation BingImageRequest

-(NSString*)sourceType {
	return @"image";
}

-(NSString*)requestOptions {
	NSMutableString* options = [NSMutableString stringWithString:[super requestOptions]];
	
	if ([attrDict objectForKey:@"count"]) {
		[options appendFormat:@"&Image.Count=%i", [[attrDict objectForKey:@"count"] intValue]];
	}
	
	if ([attrDict objectForKey:@"offset"]) {
		[options appendFormat:@"&Image.Offset=%i", [[attrDict objectForKey:@"offset"] intValue]];
	}
	
	if ([attrDict objectForKey:@"filters"]) {
		[options appendFormat:@"&Image.Filters=%@", [attrDict objectForKey:@"filters"]];
	}
	
	return options;
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


@end
