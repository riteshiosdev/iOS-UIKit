//-----------------------------------------------------------------------
// <copyright file="BingNewsResult.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingNewsResult.h"

@implementation BingNewsResult

-(BOOL)breakingNews {
	return [[attrDict objectForKey:@"BreakingNews"] boolValue];
}
-(NSString*)url {
	return [attrDict objectForKey:@"Url"];
}
-(NSString*)title {
	return [attrDict objectForKey:@"Title"];
}
-(NSString*)source {
	return [attrDict objectForKey:@"Source"];
}
-(NSString*)snippet {
	return [attrDict objectForKey:@"Snipper"];
}
-(NSString*)date {
	return [attrDict objectForKey:@"Date"];
}
@end
