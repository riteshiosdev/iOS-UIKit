//-----------------------------------------------------------------------
// <copyright file="BingPhonebookRequest.m" company="Microsoft">
//     (c) 2009 Microsoft corp.
//     This software is distributed under Microsoft Public License (MSPL)
//     see http://opensource.org/licenses/ms-pl.html 
// </copyright>
//-----------------------------------------------------------------------

#import "BingPhonebookRequest.h"

@implementation BingPhonebookRequest

-(NSString*)requestOptions {
	NSMutableString* options = [NSMutableString stringWithString:[super requestOptions]];
	
	if ([attrDict objectForKey:@"count"]) {
		[options appendFormat:@"&Phonebook.Count=%i", [[attrDict objectForKey:@"count"] intValue]];
	}
	
	if ([attrDict objectForKey:@"offset"]) {
		[options appendFormat:@"&Phonebook.Offset=%i", [[attrDict objectForKey:@"offset"] intValue]];
	}
	
	if ([attrDict objectForKey:@"filetype"]) {
		[options appendFormat:@"&Phonebook.FileType=%@", [attrDict objectForKey:@"filetype"]];
	}
	
	if ([attrDict objectForKey:@"locId"]) {
		[options appendFormat:@"&Phonebook.LocId=%@", [attrDict objectForKey:@"locId"]];
	}
	
	if ([attrDict objectForKey:@"sortby"]) {
		[options appendFormat:@"&Phonebook.SortBy=%@", [attrDict objectForKey:@"sortby"]];
	}
	
	return options;
}

-(NSString*)sourceType {
	return @"phonebook";	
}

-(void)setCount:(uint)count {
	[attrDict setObject:[NSNumber numberWithInt:count] forKey:@"count"];
}
-(void)setOffset:(uint)offset {
	[attrDict setObject:[NSNumber numberWithInt:offset] forKey:@"offset"];
}
-(void)setFileType:(NSString*)filetype {
	[attrDict setObject:filetype forKey:@"filetype"];
}
-(void)setLocId:(NSString*)locId {
	[attrDict setObject:locId forKey:@"locId"];	
}
-(void)setSortBy:(NSString*)sortby {
	[attrDict setObject:sortby forKey:@"sortby"];
}

@end
