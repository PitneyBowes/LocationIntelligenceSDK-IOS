//
//  TaxAddresses.m
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "TaxAddresses.h"



NSString *const kRateTaxAddressesUserBufferWidth = @"userBufferWidth";
NSString *const kTaxAddressesBufferWidth = @"bufferWidth";
NSString *const kTaxAddressesPurchaseAmount = @"purchaseAmount";
NSString *const kTaxAddressesDistanceUnits = @"distanceUnits";

NSString *const kTaxAddressCountry = @"country";
NSString *const kTaxAddressPostCodeExt = @"postCodeExt";
NSString *const kTaxAddressFormattedAddress = @"formattedAddress";
NSString *const kTaxAddressAreaName1 = @"areaName1";
NSString *const kTaxAddressAddressNumber = @"addressNumber";
NSString *const kTaxAddressStreetName = @"streetName";
NSString *const kTaxAddressCity = @"city";
NSString *const kTaxAddressAreaName3 = @"areaName3";
NSString *const kTaxAddressMainAddressLine = @"mainAddressLine";
NSString *const kTaxAddressUnitType = @"unitType";
NSString *const kTaxAddressPlaceName = @"placeName";
NSString *const kTaxAddressLongitude = @"longitude";
NSString *const kTaxAddressAddressLastLine = @"addressLastLine";
NSString *const kTaxAddressStateProvince = @"stateProvince";
NSString *const kTaxAddressPostalCode = @"postalCode";
NSString *const kTaxAddressPostCode = @"postCode";
NSString *const kTaxAddressAdditionalProperties = @"additionalProperties";
NSString *const kTaxAddressAreaName2 = @"areaName2";
NSString *const kTaxAddressAreaName4 = @"areaName4";
NSString *const kTaxAddressAddressLine3 = @"addressLine3";
NSString *const kTaxAddressAddressLine2 = @"addressLine2";
NSString *const kTaxAddressUnitValue = @"unitValue";


@interface TaxAddresses ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation TaxAddresses


@synthesize userBufferWidth = _userBufferWidth;
@synthesize bufferWidth = _bufferWidth;
@synthesize purchaseAmount = _purchaseAmount;
@synthesize distanceUnits = _distanceUnits;

@synthesize country = _country;
@synthesize postCodeExt = _postCodeExt;

@synthesize formattedAddress = _formattedAddress;
@synthesize areaName1 = _areaName1;

@synthesize addressNumber = _addressNumber;

@synthesize streetName = _streetName;
@synthesize city = _city;
@synthesize areaName3 = _areaName3;
@synthesize mainAddressLine = _mainAddressLine;
@synthesize unitType = _unitType;
@synthesize placeName = _placeName;
@synthesize addressLastLine = _addressLastLine;
@synthesize postalCode = _postalCode;
@synthesize areaName2 = _areaName2;
@synthesize areaName4 = _areaName4;
@synthesize unitValue = _unitValue;

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
        
            self.userBufferWidth = [self objectOrNilForKey:kRateTaxAddressesUserBufferWidth fromDictionary:dict];
            self.bufferWidth = [self objectOrNilForKey:kTaxAddressesBufferWidth fromDictionary:dict];
            self.purchaseAmount = [self objectOrNilForKey:kTaxAddressesPurchaseAmount fromDictionary:dict];
            self.distanceUnits = [self objectOrNilForKey:kTaxAddressesDistanceUnits fromDictionary:dict];
        
        
        self.country = [self objectOrNilForKey:kTaxAddressCountry fromDictionary:dict];
        self.postCodeExt = [self objectOrNilForKey:kTaxAddressPostCodeExt fromDictionary:dict];
        
        self.formattedAddress = [self objectOrNilForKey:kTaxAddressFormattedAddress fromDictionary:dict];
        self.areaName1 = [self objectOrNilForKey:kTaxAddressAreaName1 fromDictionary:dict];
        self.addressNumber = [self objectOrNilForKey:kTaxAddressAddressNumber fromDictionary:dict];
        self.streetName = [self objectOrNilForKey:kTaxAddressStreetName fromDictionary:dict];
        self.city = [self objectOrNilForKey:kTaxAddressCity fromDictionary:dict];
        self.areaName3 = [self objectOrNilForKey:kTaxAddressAreaName3 fromDictionary:dict];
        self.mainAddressLine = [self objectOrNilForKey:kTaxAddressMainAddressLine fromDictionary:dict];
        self.unitType = [self objectOrNilForKey:kTaxAddressUnitType fromDictionary:dict];
        self.placeName = [self objectOrNilForKey:kTaxAddressPlaceName fromDictionary:dict];
        self.addressLastLine = [self objectOrNilForKey:kTaxAddressAddressLastLine fromDictionary:dict];
        self.postalCode = [self objectOrNilForKey:kTaxAddressPostalCode fromDictionary:dict];
        self.areaName2 = [self objectOrNilForKey:kTaxAddressAreaName2 fromDictionary:dict];
        self.areaName4 = [self objectOrNilForKey:kTaxAddressAreaName4 fromDictionary:dict];
        self.unitValue = [self objectOrNilForKey:kTaxAddressUnitValue fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];

    [mutableDict setValue:self.userBufferWidth forKey:kRateTaxAddressesUserBufferWidth];
    [mutableDict setValue:self.bufferWidth forKey:kTaxAddressesBufferWidth];
    [mutableDict setValue:self.purchaseAmount forKey:kTaxAddressesPurchaseAmount];
    [mutableDict setValue:self.distanceUnits forKey:kTaxAddressesDistanceUnits];
    
    [mutableDict setValue:self.country forKey:kTaxAddressCountry];
    [mutableDict setValue:self.postCodeExt forKey:kTaxAddressPostCodeExt];
    [mutableDict setValue:self.formattedAddress forKey:kTaxAddressFormattedAddress];
    [mutableDict setValue:self.areaName1 forKey:kTaxAddressAreaName1];
    [mutableDict setValue:self.addressNumber forKey:kTaxAddressAddressNumber];
    [mutableDict setValue:self.streetName forKey:kTaxAddressStreetName];
    [mutableDict setValue:self.city forKey:kTaxAddressCity];
    [mutableDict setValue:self.areaName3 forKey:kTaxAddressAreaName3];
    [mutableDict setValue:self.mainAddressLine forKey:kTaxAddressMainAddressLine];
    [mutableDict setValue:self.unitType forKey:kTaxAddressUnitType];
    [mutableDict setValue:self.placeName forKey:kTaxAddressPlaceName];
    [mutableDict setValue:self.addressLastLine forKey:kTaxAddressAddressLastLine];
    [mutableDict setValue:self.postalCode forKey:kTaxAddressPostalCode];
    [mutableDict setValue:self.areaName2 forKey:kTaxAddressAreaName2];
    [mutableDict setValue:self.areaName4 forKey:kTaxAddressAreaName4];
    [mutableDict setValue:self.unitValue forKey:kTaxAddressUnitValue];

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

   
    self.userBufferWidth = [aDecoder decodeObjectForKey:kRateTaxAddressesUserBufferWidth];
    self.bufferWidth = [aDecoder decodeObjectForKey:kTaxAddressesBufferWidth];
    self.purchaseAmount = [aDecoder decodeObjectForKey:kTaxAddressesPurchaseAmount];
    self.distanceUnits = [aDecoder decodeObjectForKey:kTaxAddressesDistanceUnits];
    
    self.country = [aDecoder decodeObjectForKey:kTaxAddressCountry];
    self.postCodeExt = [aDecoder decodeObjectForKey:kTaxAddressPostCodeExt];
    self.formattedAddress = [aDecoder decodeObjectForKey:kTaxAddressFormattedAddress];
    self.areaName1 = [aDecoder decodeObjectForKey:kTaxAddressAreaName1];
    self.addressNumber = [aDecoder decodeObjectForKey:kTaxAddressAddressNumber];
    self.streetName = [aDecoder decodeObjectForKey:kTaxAddressStreetName];
    self.city = [aDecoder decodeObjectForKey:kTaxAddressCity];
    self.areaName3 = [aDecoder decodeObjectForKey:kTaxAddressAreaName3];
    self.mainAddressLine = [aDecoder decodeObjectForKey:kTaxAddressMainAddressLine];
    self.unitType = [aDecoder decodeObjectForKey:kTaxAddressUnitType];
    self.placeName = [aDecoder decodeObjectForKey:kTaxAddressPlaceName];
    self.addressLastLine = [aDecoder decodeObjectForKey:kTaxAddressAddressLastLine];
    self.postalCode = [aDecoder decodeObjectForKey:kTaxAddressPostalCode];
    self.areaName2 = [aDecoder decodeObjectForKey:kTaxAddressAreaName2];
    self.areaName4 = [aDecoder decodeObjectForKey:kTaxAddressAreaName4];
    self.unitValue = [aDecoder decodeObjectForKey:kTaxAddressUnitValue];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_userBufferWidth forKey:kRateTaxAddressesUserBufferWidth];
    [aCoder encodeObject:_bufferWidth forKey:kTaxAddressesBufferWidth];
    [aCoder encodeObject:_purchaseAmount forKey:kTaxAddressesPurchaseAmount];
    [aCoder encodeObject:_distanceUnits forKey:kTaxAddressesDistanceUnits];
    
    [aCoder encodeObject:_country forKey:kTaxAddressCountry];
    [aCoder encodeObject:_postCodeExt forKey:kTaxAddressPostCodeExt];
    [aCoder encodeObject:_formattedAddress forKey:kTaxAddressFormattedAddress];
    [aCoder encodeObject:_areaName1 forKey:kTaxAddressAreaName1];
    [aCoder encodeObject:_addressNumber forKey:kTaxAddressAddressNumber];
    [aCoder encodeObject:_streetName forKey:kTaxAddressStreetName];
    [aCoder encodeObject:_city forKey:kTaxAddressCity];
    [aCoder encodeObject:_areaName3 forKey:kTaxAddressAreaName3];
    [aCoder encodeObject:_mainAddressLine forKey:kTaxAddressMainAddressLine];
    [aCoder encodeObject:_unitType forKey:kTaxAddressUnitType];
    [aCoder encodeObject:_placeName forKey:kTaxAddressPlaceName];
    [aCoder encodeObject:_addressLastLine forKey:kTaxAddressAddressLastLine];
    [aCoder encodeObject:_postalCode forKey:kTaxAddressPostalCode];
    [aCoder encodeObject:_areaName2 forKey:kTaxAddressAreaName2];
    [aCoder encodeObject:_areaName4 forKey:kTaxAddressAreaName4];
    [aCoder encodeObject:_unitValue forKey:kTaxAddressUnitValue];
}

- (id)copyWithZone:(NSZone *)zone
{
    TaxAddresses *copy = [[TaxAddresses alloc] init];
    
    if (copy) {
        copy.userBufferWidth = [self.userBufferWidth copyWithZone:zone];
        copy.bufferWidth = [self.bufferWidth copyWithZone:zone];
        copy.purchaseAmount = [self.purchaseAmount copyWithZone:zone];
        copy.distanceUnits = [self.distanceUnits copyWithZone:zone];
        
        copy.country = [self.country copyWithZone:zone];
        copy.postCodeExt = [self.postCodeExt copyWithZone:zone];
        copy.formattedAddress = [self.formattedAddress copyWithZone:zone];
        copy.areaName1 = [self.areaName1 copyWithZone:zone];
        copy.addressNumber = [self.addressNumber copyWithZone:zone];
        copy.streetName = [self.streetName copyWithZone:zone];
        copy.city = [self.city copyWithZone:zone];
        copy.areaName3 = [self.areaName3 copyWithZone:zone];
        copy.mainAddressLine = [self.mainAddressLine copyWithZone:zone];
        copy.unitType = [self.unitType copyWithZone:zone];
        copy.placeName = [self.placeName copyWithZone:zone];
        copy.addressLastLine = [self.addressLastLine copyWithZone:zone];
        copy.postalCode = [self.postalCode copyWithZone:zone];
        copy.areaName2 = [self.areaName2 copyWithZone:zone];
        copy.areaName4 = [self.areaName4 copyWithZone:zone];
        copy.unitValue = [self.unitValue copyWithZone:zone];

    }
    
    return copy;
}


@end
