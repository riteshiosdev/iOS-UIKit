//-----------------------------------------------------------------------
// <copyright file="BingResult.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

/**
 * Base class for all Result objects.
 *
 * Holds all general result parameters.
 */
@interface BingResult : NSObject {
	NSDictionary* attrDict;
}

/**
 * Create a result object from a NSDictionary.
 *
 * @param dict NSDictionary populated with result parameters
 * @return BingResult object
 */
-(id)initWithDictionary:(NSDictionary*)dict;
@end
