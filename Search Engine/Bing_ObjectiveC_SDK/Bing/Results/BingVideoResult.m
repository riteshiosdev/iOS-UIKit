//-----------------------------------------------------------------------
// <copyright file="BingVideoResult.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingVideoResult.h"

@implementation BingVideoResult

-(NSString*)clickThroughPageUrl {
	return [attrDict objectForKey:@"ClickThroughPageUrl"];
}
-(NSString*)playUrl {
	return [attrDict objectForKey:@"PlayUrl"];
}
-(NSString*)title {
	return [attrDict objectForKey:@"Title"];
}
-(NSString*)runTime {
	return [attrDict objectForKey:@"RunTime"];
}
-(NSString*)sourceTitle {
	return [attrDict objectForKey:@"SourceTitle"];
}
@end
