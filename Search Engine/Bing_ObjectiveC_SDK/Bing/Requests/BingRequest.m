//-----------------------------------------------------------------------
// <copyright file="BingRequest.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingRequest.h"

@implementation BingRequest

static NSString* const DEFAULT_SEARCH_MARKET = @"en-US";
static NSString* const DEFAULT_API_VERSION = @"2.2";

-(id)init {
	if ((self = [super init])) {
		attrDict = [[NSMutableDictionary alloc] init];
		// Set up default values
		[attrDict setObject:DEFAULT_API_VERSION forKey:@"version"];
		[attrDict setObject:DEFAULT_SEARCH_MARKET forKey:@"market"];
	}
	return self;
}

-(void)dealloc {
	[attrDict release];
	[super dealloc];
}


-(NSString*)requestOptions {
	NSMutableString *options = [NSMutableString stringWithFormat:@""];
	
	if ([attrDict objectForKey:@"version"]) {
		[options appendFormat:@"&Version=%@", [attrDict objectForKey:@"version"]];
	}
	
	if ([attrDict objectForKey:@"market"]) {
		[options appendFormat:@"&Market=%@", [attrDict objectForKey:@"market"]];
	}
	
	if ([attrDict objectForKey:@"adult"]) {
		[options appendFormat:@"&Adult=%@", [attrDict objectForKey:@"adult"]];
	}
	
	if ([attrDict objectForKey:@"options"]) {
		[options appendFormat:@"&Options=%@", [attrDict objectForKey:@"options"]];
	}
	
	if ([attrDict objectForKey:@"latitude"]) {
		[options appendFormat:@"&Latitude=%f", [[attrDict objectForKey:@"latitude"] doubleValue]];
	}
	
	if ([attrDict objectForKey:@"longitude"]) {
		[options appendFormat:@"&Longitude=%f", [[attrDict objectForKey:@"longitude"] doubleValue]];
	}
	
	if ([attrDict objectForKey:@"language"]) {
		[options appendFormat:@"&UILanguage=%@", [attrDict objectForKey:@"language"]];
	}
	
	if ([attrDict objectForKey:@"radius"]) {
		[options appendFormat:@"&Radius=%f", [[attrDict objectForKey:@"radius"] doubleValue]];
	}

	return options;
}

-(NSString*)sourceType {
	[self doesNotRecognizeSelector:_cmd];
	return nil;	
}

-(void)setMarket:(NSString*)market {
	[attrDict setObject:market forKey:@"market"];
}
-(void)setVersion:(NSString*)version {
	[attrDict setObject:version forKey:@"version"];
}
-(void)setAdult:(NSString*)adult {
	[attrDict setObject:adult forKey:@"adult"];
}
-(void)setOptions:(NSString*)options {
	[attrDict setObject:options forKey:@"options"];
}
-(void)setLatitude:(double)latitude {
	[attrDict setObject:[NSNumber numberWithDouble:latitude] forKey:@"latitude"];
}
-(void)setLongitude:(double)longitude {
	[attrDict setObject:[NSNumber numberWithDouble:longitude] forKey:@"longitude"];
}
-(void)setLanguage:(NSString*)language {
	[attrDict setObject:language forKey:@"language"];
}
-(void)setRadius:(double)radius {
	[attrDict setObject:[NSNumber numberWithDouble:radius] forKey:@"radius"];
}
-(void)removeParentOptions {
	[attrDict removeObjectForKey:@"market"];
	[attrDict removeObjectForKey:@"version"];
	[attrDict removeObjectForKey:@"adult"];
	[attrDict removeObjectForKey:@"options"];
	[attrDict removeObjectForKey:@"latitude"];
	[attrDict removeObjectForKey:@"longitude"];
	[attrDict removeObjectForKey:@"language"];
	[attrDict removeObjectForKey:@"radius"];
}

@end
