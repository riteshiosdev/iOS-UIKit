//-----------------------------------------------------------------------
// <copyright file="BingImageResult.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingImageResult.h"

@implementation BingImageResult

-(uint)height {
	return [[attrDict objectForKey:@"Height"] intValue];
}

-(uint)width {
	return [[attrDict objectForKey:@"Width"] intValue];
}

-(uint)fileSize {
	return [[attrDict objectForKey:@"FileSize"] intValue];
}

-(NSString*)contentType {
	return [attrDict objectForKey:@"ContentType"];
}
-(NSString*)displayUrl {
	return [attrDict objectForKey:@"DisplayUrl"];
}
-(NSString*)url {
	return [attrDict objectForKey:@"Url"];	
}
-(NSString*)title {
	return [attrDict objectForKey:@"Title"];
}
-(NSString*)mediaUrl {
	return [attrDict objectForKey:@"MediaUrl"];
}
@end
