//
//  BaseClass.m
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "TaxRateAddressRequest.h"
#import "Preferences.h"
#import "TaxRateAddresses.h"


NSString *const kBaseClassTaxRatePreferences = @"preferences";
NSString *const kBaseClassTaxRateAddresses = @"taxRateAddresses";


@interface TaxRateAddressRequest ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation TaxRateAddressRequest

@synthesize preferences = _preferences;
@synthesize taxRateAddresses = _taxRateAddresses;


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
            self.preferences = [Preferences modelObjectWithDictionary:[dict objectForKey:kBaseClassTaxRatePreferences]];
    NSObject *receivedTaxAddresses = [dict objectForKey:kBaseClassTaxRateAddresses];
    NSMutableArray *parsedTaxAddresses = [NSMutableArray array];
    if ([receivedTaxAddresses isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedTaxAddresses) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedTaxAddresses addObject:[TaxRateAddresses modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedTaxAddresses isKindOfClass:[NSDictionary class]]) {
       [parsedTaxAddresses addObject:[TaxRateAddresses modelObjectWithDictionary:(NSDictionary *)receivedTaxAddresses]];
    }

    self.taxRateAddresses = [NSArray arrayWithArray:parsedTaxAddresses];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.preferences dictionaryRepresentation] forKey:kBaseClassTaxRatePreferences];
    NSMutableArray *tempArrayForTaxAddresses = [NSMutableArray array];
    for (NSObject *subArrayObject in self.taxRateAddresses) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTaxAddresses addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTaxAddresses addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTaxAddresses] forKey:kBaseClassTaxRateAddresses];

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

    self.preferences = [aDecoder decodeObjectForKey:kBaseClassTaxRatePreferences];
    self.taxRateAddresses = [aDecoder decodeObjectForKey:kBaseClassTaxRateAddresses];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_preferences forKey:kBaseClassTaxRatePreferences];
    [aCoder encodeObject:_taxRateAddresses forKey:kBaseClassTaxRateAddresses];
}

- (id)copyWithZone:(NSZone *)zone
{
    TaxRateAddressRequest *copy = [[TaxRateAddressRequest alloc] init];
    
    if (copy) {

        copy.preferences = [self.preferences copyWithZone:zone];
        copy.taxRateAddresses = [self.taxRateAddresses copyWithZone:zone];
    }
    
    return copy;
}


@end
