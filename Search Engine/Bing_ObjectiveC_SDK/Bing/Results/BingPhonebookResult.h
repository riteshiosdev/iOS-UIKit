//-----------------------------------------------------------------------
// <copyright file="BingPhonebookResult.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingResult.h"

/**
 * Represents an individual phonebook result.
 */
@interface BingPhonebookResult : BingResult {
}

-(double)latitude;
-(double)longitude;
-(double)userRating;
-(uint)reviewCount;
-(NSString*)title;
-(NSString*)url;
-(NSString*)businessUrl;
-(NSString*)city;
-(NSString*)countryOrRegion;
-(NSString*)displayUrl;
-(NSString*)phoneNumber;
-(NSString*)postalCode;
-(NSString*)stateOrProvince;
-(NSString*)uniqueId;
-(NSString*)business;
-(NSString*)address;

@end
