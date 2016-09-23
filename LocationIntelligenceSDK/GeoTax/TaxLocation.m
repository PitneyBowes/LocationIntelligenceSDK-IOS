//
//  Locations.m
//
//  Created by   on 05/09/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "TaxLocation.h"
#import "Geometry.h"


NSString *const kLocationsGeometry = @"geometry";
NSString *const kLocationsPurchaseAmount = @"purchaseAmount";


@interface TaxLocation ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation TaxLocation

@synthesize geometry = _geometry;
@synthesize purchaseAmount = _purchaseAmount;


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
            self.geometry = [Geometry modelObjectWithDictionary:[dict objectForKey:kLocationsGeometry]];
            self.purchaseAmount = [self objectOrNilForKey:kLocationsPurchaseAmount fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.geometry dictionaryRepresentation] forKey:kLocationsGeometry];
    [mutableDict setValue:self.purchaseAmount forKey:kLocationsPurchaseAmount];

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

    self.geometry = [aDecoder decodeObjectForKey:kLocationsGeometry];
    self.purchaseAmount = [aDecoder decodeObjectForKey:kLocationsPurchaseAmount];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_geometry forKey:kLocationsGeometry];
    [aCoder encodeObject:_purchaseAmount forKey:kLocationsPurchaseAmount];
}

- (id)copyWithZone:(NSZone *)zone
{
    TaxLocation *copy = [[TaxLocation alloc] init];
    
    if (copy) {

        copy.geometry = [self.geometry copyWithZone:zone];
        copy.purchaseAmount = [self.purchaseAmount copyWithZone:zone];
    }
    
    return copy;
}


@end
