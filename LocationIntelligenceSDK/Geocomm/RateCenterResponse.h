//
//  BaseClass.h
//
//  Created by Gaurav Jain on 05/09/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class County, Geometry, Match, Address;

@interface RateCenterResponse : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) County *county;
@property (nonatomic, strong) NSString *internalBaseClassIdentifier;
@property (nonatomic, strong) NSArray *areaCodeInfoList;
@property (nonatomic, strong) Geometry *geometry;
@property (nonatomic, strong) NSString *alternateName;
@property (nonatomic, strong) Match *match;
@property (nonatomic, strong) Address *matchedAddress;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *areaName1;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
