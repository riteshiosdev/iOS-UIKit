//-----------------------------------------------------------------------
// <copyright file="BingRequest.h" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

/**
 * Base class for all request objects. 
 * 
 * All general search options are set in this class.
 *
 * Each subclass of BingRequest has options that can be set on the request
 * such as count, offset, or other source type specific options.
 * For a list of options, please refer to:
 * http://msdn.microsoft.com/en-us/library/dd250847.aspx
 * Each option on a specific source type can be set by using the related
 * setter method (ex: Count can be set through setCount).
 */ 
@interface BingRequest : NSObject {
	NSMutableDictionary* attrDict;
}
/**
 * Specifies the source type of the current request object.
 *
 * @return A string representing the source type of the current object.
 */
-(NSString*)sourceType;

/**
 * Specifies request specific options to be passed to the API
 *
 * @return A string representing the various set API parameters
 */
-(NSString*)requestOptions;

-(void)setMarket:(NSString*)market;
-(void)setVersion:(NSString*)version;
-(void)setAdult:(NSString*)adult;
-(void)setOptions:(NSString*)options;
-(void)setLatitude:(double)latitude;
-(void)setLongitude:(double)longitude;
-(void)setLanguage:(NSString*)language;
-(void)setRadius:(double)radius;
-(void)removeParentOptions;
@end
