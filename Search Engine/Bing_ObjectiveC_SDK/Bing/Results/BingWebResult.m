//-----------------------------------------------------------------------
// <copyright file="BingWebResult.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingWebResult.h"

@implementation BingWebResult

-(NSString*)cacheUrl {
	return [attrDict objectForKey:@"CacheUrl"]; 

}

-(NSString*)url {
	return [attrDict objectForKey:@"Url"];
}

-(NSString*)title {
	return [attrDict objectForKey:@"Title"];
}

-(NSString*)displayUrl {
	return [attrDict objectForKey:@"DisplayUrl"];
}

-(NSString*)description {
	return [attrDict objectForKey:@"Description"];	
}

-(NSString*)dateTime {
	return [attrDict objectForKey:@"DateTime"];
}
@end
