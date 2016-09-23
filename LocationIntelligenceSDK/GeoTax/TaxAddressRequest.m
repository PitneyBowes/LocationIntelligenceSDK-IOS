//
//  BaseClass.m
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "TaxAddressRequest.h"
#import "Preferences.h"
#import "TaxAddresses.h"


NSString *const kBaseClassTaxPreferences = @"preferences";
NSString *const kBaseClassTaxAddresses = @"taxAddresses";


@interface TaxAddressRequest ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation TaxAddressRequest

@synthesize preferences = _preferences;
@synthesize taxAddresses = _taxAddresses;


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
            self.preferences = [Preferences modelObjectWithDictionary:[dict objectForKey:kBaseClassTaxPreferences]];
    NSObject *receivedTaxAddresses = [dict objectForKey:kBaseClassTaxAddresses];
    NSMutableArray *parsedTaxAddresses = [NSMutableArray array];
    if ([receivedTaxAddresses isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedTaxAddresses) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedTaxAddresses addObject:[TaxAddresses modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedTaxAddresses isKindOfClass:[NSDictionary class]]) {
       [parsedTaxAddresses addObject:[TaxAddresses modelObjectWithDictionary:(NSDictionary *)receivedTaxAddresses]];
    }

    self.taxAddresses = [NSArray arrayWithArray:parsedTaxAddresses];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.preferences dictionaryRepresentation] forKey:kBaseClassTaxPreferences];
    NSMutableArray *tempArrayForTaxAddresses = [NSMutableArray array];
    for (NSObject *subArrayObject in self.taxAddresses) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTaxAddresses addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTaxAddresses addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTaxAddresses] forKey:kBaseClassTaxAddresses];

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

    self.preferences = [aDecoder decodeObjectForKey:kBaseClassTaxPreferences];
    self.taxAddresses = [aDecoder decodeObjectForKey:kBaseClassTaxAddresses];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_preferences forKey:kBaseClassTaxPreferences];
    [aCoder encodeObject:_taxAddresses forKey:kBaseClassTaxAddresses];
}

- (id)copyWithZone:(NSZone *)zone
{
    TaxAddressRequest *copy = [[TaxAddressRequest alloc] init];
    
    if (copy) {

        copy.preferences = [self.preferences copyWithZone:zone];
        copy.taxAddresses = [self.taxAddresses copyWithZone:zone];
    }
    
    return copy;
}


@end
