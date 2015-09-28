//-----------------------------------------------------------------------
// <copyright file="BingPhonebookResult.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingPhonebookResult.h"

@implementation BingPhonebookResult

-(double)latitude {
	return [[attrDict objectForKey:@"Latitude"] doubleValue];
}
-(double)longitude {
	return [[attrDict objectForKey:@"Longitude"] doubleValue];
}
-(double)userRating {
	return [[attrDict objectForKey:@"UserRating"] doubleValue];
}
-(uint)reviewCount {
	return [[attrDict objectForKey:@"ReviewCount"] intValue];
}
-(NSString*)address {
	return [attrDict objectForKey:@"Address"];
}
-(NSString*)business {
	return [attrDict objectForKey:@"Business"];
}
-(NSString*)uniqueId {
	return [attrDict objectForKey:@"UniqueId"];
}
-(NSString*)stateOrProvince {
	return [attrDict objectForKey:@"StateOrProvince"];
}
-(NSString*)postalCode {
	return [attrDict objectForKey:@"PostalCode"];
}
-(NSString*)phoneNumber {
	return [attrDict objectForKey:@"PhoneNumber"];
}
-(NSString*)displayUrl {
	return [attrDict objectForKey:@"DisplayUrl"];
}
-(NSString*)countryOrRegion {
	return [attrDict objectForKey:@"CountryOrRegion"];
}
-(NSString*)city {
	return [attrDict objectForKey:@"City"];
}
-(NSString*)businessUrl {
	return [attrDict objectForKey:@"BusinessUrl"];
}
-(NSString*)url {
	return [attrDict objectForKey:@"Url"];
}
-(NSString*)title {
	return [attrDict objectForKey:@"Title"];
}
@end
