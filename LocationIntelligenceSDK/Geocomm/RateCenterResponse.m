//
//  BaseClass.m
//
//  Created by Gaurav Jain on 05/09/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "RateCenterResponse.h"
#import "County.h"
#import "AreaCodeInfoList.h"
#import "Geometry.h"
#import "Match.h"
#import "Address.h"


NSString *const kBaseClassCounty = @"county";
NSString *const kBaseClassId = @"id";
NSString *const kBaseClassAreaCodeInfoList = @"areaCodeInfoList";
NSString *const kBaseClassGeometry = @"geometry";
NSString *const kBaseClassAlternateName = @"alternateName";
NSString *const kBaseClassMatch = @"match";
NSString *const kBaseClassGeoCommMatchedAddress = @"matchedAddress";
NSString *const kBaseClassName = @"name";
NSString *const kBaseClassAreaName1 = @"areaName1";


@interface RateCenterResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation RateCenterResponse

@synthesize county = _county;
@synthesize internalBaseClassIdentifier = _internalBaseClassIdentifier;
@synthesize areaCodeInfoList = _areaCodeInfoList;
@synthesize geometry = _geometry;
@synthesize alternateName = _alternateName;
@synthesize match = _match;
@synthesize matchedAddress = _matchedAddress;
@synthesize name = _name;
@synthesize areaName1 = _areaName1;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
        self.county = [County modelObjectWithDictionary:[dict objectForKey:kBaseClassCounty]];
        self.internalBaseClassIdentifier = [self objectOrNilForKey:kBaseClassId fromDictionary:dict];
        NSObject *receivedAreaCodeInfoList = [dict objectForKey:kBaseClassAreaCodeInfoList];
        NSMutableArray *parsedAreaCodeInfoList = [NSMutableArray array];
        if ([receivedAreaCodeInfoList isKindOfClass:[NSArray class]]) {
            for (NSDictionary *item in (NSArray *)receivedAreaCodeInfoList) {
                if ([item isKindOfClass:[NSDictionary class]]) {
                    [parsedAreaCodeInfoList addObject:[AreaCodeInfoList modelObjectWithDictionary:item]];
                }
            }
        } else if ([receivedAreaCodeInfoList isKindOfClass:[NSDictionary class]]) {
            [parsedAreaCodeInfoList addObject:[AreaCodeInfoList modelObjectWithDictionary:(NSDictionary *)receivedAreaCodeInfoList]];
        }
        
        self.areaCodeInfoList = [NSArray arrayWithArray:parsedAreaCodeInfoList];
        self.geometry = [Geometry modelObjectWithDictionary:[dict objectForKey:kBaseClassGeometry]];
        self.alternateName = [self objectOrNilForKey:kBaseClassAlternateName fromDictionary:dict];
        self.match = [Match modelObjectWithDictionary:[dict objectForKey:kBaseClassMatch]];
        self.matchedAddress = [Address modelObjectWithDictionary:[dict objectForKey:kBaseClassGeoCommMatchedAddress]];
        self.name = [self objectOrNilForKey:kBaseClassName fromDictionary:dict];
        self.areaName1 = [self objectOrNilForKey:kBaseClassAreaName1 fromDictionary:dict];
        
    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.county dictionaryRepresentation] forKey:kBaseClassCounty];
    [mutableDict setValue:self.internalBaseClassIdentifier forKey:kBaseClassId];
    NSMutableArray *tempArrayForAreaCodeInfoList = [NSMutableArray array];
    for (NSObject *subArrayObject in self.areaCodeInfoList) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAreaCodeInfoList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAreaCodeInfoList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAreaCodeInfoList] forKey:kBaseClassAreaCodeInfoList];
    [mutableDict setValue:[self.geometry dictionaryRepresentation] forKey:kBaseClassGeometry];
    [mutableDict setValue:self.alternateName forKey:kBaseClassAlternateName];
    [mutableDict setValue:[self.match dictionaryRepresentation] forKey:kBaseClassMatch];
    [mutableDict setValue:[self.matchedAddress dictionaryRepresentation] forKey:kBaseClassGeoCommMatchedAddress];
    [mutableDict setValue:self.name forKey:kBaseClassName];
    [mutableDict setValue:self.areaName1 forKey:kBaseClassAreaName1];
    
    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    
    self.county = [aDecoder decodeObjectForKey:kBaseClassCounty];
    self.internalBaseClassIdentifier = [aDecoder decodeObjectForKey:kBaseClassId];
    self.areaCodeInfoList = [aDecoder decodeObjectForKey:kBaseClassAreaCodeInfoList];
    self.geometry = [aDecoder decodeObjectForKey:kBaseClassGeometry];
    self.alternateName = [aDecoder decodeObjectForKey:kBaseClassAlternateName];
    self.match = [aDecoder decodeObjectForKey:kBaseClassMatch];
    self.matchedAddress = [aDecoder decodeObjectForKey:kBaseClassGeoCommMatchedAddress];
    self.name = [aDecoder decodeObjectForKey:kBaseClassName];
    self.areaName1 = [aDecoder decodeObjectForKey:kBaseClassAreaName1];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    
    [aCoder encodeObject:_county forKey:kBaseClassCounty];
    [aCoder encodeObject:_internalBaseClassIdentifier forKey:kBaseClassId];
    [aCoder encodeObject:_areaCodeInfoList forKey:kBaseClassAreaCodeInfoList];
    [aCoder encodeObject:_geometry forKey:kBaseClassGeometry];
    [aCoder encodeObject:_alternateName forKey:kBaseClassAlternateName];
    [aCoder encodeObject:_match forKey:kBaseClassMatch];
    [aCoder encodeObject:_matchedAddress forKey:kBaseClassGeoCommMatchedAddress];
    [aCoder encodeObject:_name forKey:kBaseClassName];
    [aCoder encodeObject:_areaName1 forKey:kBaseClassAreaName1];
}

- (id)copyWithZone:(NSZone *)zone
{
    RateCenterResponse *copy = [[RateCenterResponse alloc] init];
    
    if (copy) {
        
        copy.county = [self.county copyWithZone:zone];
        copy.internalBaseClassIdentifier = [self.internalBaseClassIdentifier copyWithZone:zone];
        copy.areaCodeInfoList = [self.areaCodeInfoList copyWithZone:zone];
        copy.geometry = [self.geometry copyWithZone:zone];
        copy.alternateName = [self.alternateName copyWithZone:zone];
        copy.match = [self.match copyWithZone:zone];
        copy.matchedAddress = [self.matchedAddress copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.areaName1 = [self.areaName1 copyWithZone:zone];
    }
    
    return copy;
}


@end
