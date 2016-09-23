//
//  BaseClass.h
//
//  Created by   on 05/09/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Preferences;

@interface TaxLocationRequest : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) Preferences *preferences;
@property (nonatomic, strong) NSArray *locations;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
