//
//  Locations.m
//
//  Created by   on 05/09/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "RateLocations.h"
#import "Geometry.h"


NSString *const kRateLocationsGeometry = @"geometry";



@interface RateLocations ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation RateLocations

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
            self.geometry = [Geometry modelObjectWithDictionary:[dict objectForKey:kRateLocationsGeometry]];
        
    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.geometry dictionaryRepresentation] forKey:kRateLocationsGeometry];
   

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

    self.geometry = [aDecoder decodeObjectForKey:kRateLocationsGeometry];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_geometry forKey:kRateLocationsGeometry];
    }

- (id)copyWithZone:(NSZone *)zone
{
    RateLocations *copy = [[RateLocations alloc] init];
    
    if (copy) {

        copy.geometry = [self.geometry copyWithZone:zone];
       
    }
    
    return copy;
}


@end
