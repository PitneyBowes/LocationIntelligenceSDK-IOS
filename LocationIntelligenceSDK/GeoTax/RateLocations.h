//
//  Locations.h
//
//  Created by   on 05/09/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Geometry;

@interface RateLocations : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) Geometry *geometry;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
