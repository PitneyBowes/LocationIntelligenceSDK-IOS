//
//  BaseClass.m
//
//  Created by   on 05/09/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "TaxLocationRequest.h"
#import "Preferences.h"
#import "TaxLocation.h"


NSString *const kBaseClassPreferencesLocation = @"preferences";
NSString *const kBaseClassLocations = @"locations";


@interface TaxLocationRequest ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation TaxLocationRequest

@synthesize preferences = _preferences;
@synthesize locations = _locations;


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
            self.preferences = [Preferences modelObjectWithDictionary:[dict objectForKey:kBaseClassPreferencesLocation]];
    NSObject *receivedLocations = [dict objectForKey:kBaseClassLocations];
    NSMutableArray *parsedLocations = [NSMutableArray array];
    if ([receivedLocations isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedLocations) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedLocations addObject:[TaxLocation modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedLocations isKindOfClass:[NSDictionary class]]) {
       [parsedLocations addObject:[TaxLocation modelObjectWithDictionary:(NSDictionary *)receivedLocations]];
    }

    self.locations = [NSArray arrayWithArray:parsedLocations];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.preferences dictionaryRepresentation] forKey:kBaseClassPreferencesLocation];
    NSMutableArray *tempArrayForLocations = [NSMutableArray array];
    for (NSObject *subArrayObject in self.locations) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForLocations addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForLocations addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForLocations] forKey:kBaseClassLocations];

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

    self.preferences = [aDecoder decodeObjectForKey:kBaseClassPreferencesLocation];
    self.locations = [aDecoder decodeObjectForKey:kBaseClassLocations];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_preferences forKey:kBaseClassPreferencesLocation];
    [aCoder encodeObject:_locations forKey:kBaseClassLocations];
}

- (id)copyWithZone:(NSZone *)zone
{
    TaxLocationRequest *copy = [[TaxLocationRequest alloc] init];
    
    if (copy) {

        copy.preferences = [self.preferences copyWithZone:zone];
        copy.locations = [self.locations copyWithZone:zone];
    }
    
    return copy;
}


@end
