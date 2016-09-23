//
//  TaxResponses.m
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "TaxResponses.h"
#import "UseTax.h"
#import "Census.h"
#import "SalesTax.h"
#import "Address.h"
#import "LatLongFields.h"
#import "Jurisdiction.h"


NSString *const kTaxResponsesUseTax = @"useTax";
NSString *const kTaxResponsesCensus = @"census";
NSString *const kTaxResponsesConfidence = @"confidence";
NSString *const kTaxResponsesSalesTax = @"salesTax";
NSString *const kTaxResponsesAddress = @"matchedAddress";
NSString *const kTaxResponsesLatLongFields = @"latLongFields";
NSString *const kTaxResponsesJurisdiction = @"jurisdiction";


@interface TaxResponses ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation TaxResponses

@synthesize useTax = _useTax;
@synthesize census = _census;
@synthesize confidence = _confidence;
@synthesize salesTax = _salesTax;
@synthesize matchedAddress = _matchedAddress;
@synthesize latLongFields = _latLongFields;
@synthesize jurisdiction = _jurisdiction;


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
            self.useTax = [UseTax modelObjectWithDictionary:[dict objectForKey:kTaxResponsesUseTax]];
            self.census = [Census modelObjectWithDictionary:[dict objectForKey:kTaxResponsesCensus]];
            self.confidence = [[self objectOrNilForKey:kTaxResponsesConfidence fromDictionary:dict] doubleValue];
            self.salesTax = [SalesTax modelObjectWithDictionary:[dict objectForKey:kTaxResponsesSalesTax]];
            self.matchedAddress = [Address modelObjectWithDictionary:[dict objectForKey:kTaxResponsesAddress]];
            self.latLongFields = [LatLongFields modelObjectWithDictionary:[dict objectForKey:kTaxResponsesLatLongFields]];
            self.jurisdiction = [Jurisdiction modelObjectWithDictionary:[dict objectForKey:kTaxResponsesJurisdiction]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.useTax dictionaryRepresentation] forKey:kTaxResponsesUseTax];
    [mutableDict setValue:[self.census dictionaryRepresentation] forKey:kTaxResponsesCensus];
    [mutableDict setValue:[NSNumber numberWithDouble:self.confidence] forKey:kTaxResponsesConfidence];
    [mutableDict setValue:[self.salesTax dictionaryRepresentation] forKey:kTaxResponsesSalesTax];
    [mutableDict setValue:[self.matchedAddress dictionaryRepresentation] forKey:kTaxResponsesAddress];
    [mutableDict setValue:[self.latLongFields dictionaryRepresentation] forKey:kTaxResponsesLatLongFields];
    [mutableDict setValue:[self.jurisdiction dictionaryRepresentation] forKey:kTaxResponsesJurisdiction];

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

    self.useTax = [aDecoder decodeObjectForKey:kTaxResponsesUseTax];
    self.census = [aDecoder decodeObjectForKey:kTaxResponsesCensus];
    self.confidence = [aDecoder decodeDoubleForKey:kTaxResponsesConfidence];
    self.salesTax = [aDecoder decodeObjectForKey:kTaxResponsesSalesTax];
    self.matchedAddress = [aDecoder decodeObjectForKey:kTaxResponsesAddress];
    self.latLongFields = [aDecoder decodeObjectForKey:kTaxResponsesLatLongFields];
    self.jurisdiction = [aDecoder decodeObjectForKey:kTaxResponsesJurisdiction];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_useTax forKey:kTaxResponsesUseTax];
    [aCoder encodeObject:_census forKey:kTaxResponsesCensus];
    [aCoder encodeDouble:_confidence forKey:kTaxResponsesConfidence];
    [aCoder encodeObject:_salesTax forKey:kTaxResponsesSalesTax];
    [aCoder encodeObject:_matchedAddress forKey:kTaxResponsesAddress];
    [aCoder encodeObject:_latLongFields forKey:kTaxResponsesLatLongFields];
    [aCoder encodeObject:_jurisdiction forKey:kTaxResponsesJurisdiction];
}

- (id)copyWithZone:(NSZone *)zone
{
    TaxResponses *copy = [[TaxResponses alloc] init];
    
    if (copy) {

        copy.useTax = [self.useTax copyWithZone:zone];
        copy.census = [self.census copyWithZone:zone];
        copy.confidence = self.confidence;
        copy.salesTax = [self.salesTax copyWithZone:zone];
        copy.matchedAddress = [self.matchedAddress copyWithZone:zone];
        copy.latLongFields = [self.latLongFields copyWithZone:zone];
        copy.jurisdiction = [self.jurisdiction copyWithZone:zone];
    }
    
    return copy;
}


@end
