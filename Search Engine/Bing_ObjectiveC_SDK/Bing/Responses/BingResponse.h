//-----------------------------------------------------------------------
// <copyright file="BingResponse.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingResult.h"

/**
 * Base class for all Response objects.
 *
 * Holds all general response parameters.
 */
@interface BingResponse : NSObject {
	uint total;
	uint offset;
	NSMutableArray *results;
	NSString* query;
}

@property(readwrite) uint total;
@property(readwrite) uint offset;
@property(copy, readwrite) NSString* query;

/**
 * Add a single result to this reponse.
 *
 * @param result The BingResult object to add.
 */
-(void)addResult:(BingResult*)result;

/**
 * Get the results that this Response object holds.
 *
 * @return Array of Result objects. Empty if the search returned no results.
 */ 
-(NSArray*)results;

@end
