//
//  LatLongFields.m
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "LatLongFields.h"
#import "Geometry.h"


NSString *const kLatLongFieldsStreetMatchLevel = @"streetMatchLevel";
NSString *const kLatLongFieldsStreetMatchCode = @"streetMatchCode";
NSString *const kLatLongFieldsMatchLevel = @"matchLevel";
NSString *const kLatLongFieldsMatchCode = @"matchCode";
NSString *const kLatLongFieldsGeometry = @"geometry";


@interface LatLongFields ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation LatLongFields

@synthesize streetMatchLevel = _streetMatchLevel;
@synthesize streetMatchCode = _streetMatchCode;
@synthesize matchLevel = _matchLevel;
@synthesize matchCode = _matchCode;
@synthesize geometry = _geometry;


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
            self.streetMatchLevel = [self objectOrNilForKey:kLatLongFieldsStreetMatchLevel fromDictionary:dict];
            self.streetMatchCode = [self objectOrNilForKey:kLatLongFieldsStreetMatchCode fromDictionary:dict];
            self.matchLevel = [self objectOrNilForKey:kLatLongFieldsMatchLevel fromDictionary:dict];
            self.matchCode = [self objectOrNilForKey:kLatLongFieldsMatchCode fromDictionary:dict];
            self.geometry = [Geometry modelObjectWithDictionary:[dict objectForKey:kLatLongFieldsGeometry]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.streetMatchLevel forKey:kLatLongFieldsStreetMatchLevel];
    [mutableDict setValue:self.streetMatchCode forKey:kLatLongFieldsStreetMatchCode];
    [mutableDict setValue:self.matchLevel forKey:kLatLongFieldsMatchLevel];
    [mutableDict setValue:self.matchCode forKey:kLatLongFieldsMatchCode];
    [mutableDict setValue:[self.geometry dictionaryRepresentation] forKey:kLatLongFieldsGeometry];

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

    self.streetMatchLevel = [aDecoder decodeObjectForKey:kLatLongFieldsStreetMatchLevel];
    self.streetMatchCode = [aDecoder decodeObjectForKey:kLatLongFieldsStreetMatchCode];
    self.matchLevel = [aDecoder decodeObjectForKey:kLatLongFieldsMatchLevel];
    self.matchCode = [aDecoder decodeObjectForKey:kLatLongFieldsMatchCode];
    self.geometry = [aDecoder decodeObjectForKey:kLatLongFieldsGeometry];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_streetMatchLevel forKey:kLatLongFieldsStreetMatchLevel];
    [aCoder encodeObject:_streetMatchCode forKey:kLatLongFieldsStreetMatchCode];
    [aCoder encodeObject:_matchLevel forKey:kLatLongFieldsMatchLevel];
    [aCoder encodeObject:_matchCode forKey:kLatLongFieldsMatchCode];
    [aCoder encodeObject:_geometry forKey:kLatLongFieldsGeometry];
}

- (id)copyWithZone:(NSZone *)zone
{
    LatLongFields *copy = [[LatLongFields alloc] init];
    
    if (copy) {

        copy.streetMatchLevel = [self.streetMatchLevel copyWithZone:zone];
        copy.streetMatchCode = [self.streetMatchCode copyWithZone:zone];
        copy.matchLevel = [self.matchLevel copyWithZone:zone];
        copy.matchCode = [self.matchCode copyWithZone:zone];
        copy.geometry = [self.geometry copyWithZone:zone];
    }
    
    return copy;
}


@end
