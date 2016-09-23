//
//  TaxAddresses.m
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "TaxRateAddresses.h"



NSString *const kTaxRateAddressesUserBufferWidth = @"userBufferWidth";
NSString *const kTaxRateAddressesBufferWidth = @"bufferWidth";
NSString *const kTaxRateAddressesPurchaseAmount = @"purchaseAmount";
NSString *const kTaxRateAddressesDistanceUnits = @"distanceUnits";

NSString *const kTaxRateAddressCountry = @"country";
NSString *const kTaxRateAddressPostCodeExt = @"postCodeExt";
NSString *const kTaxRateAddressFormattedAddress = @"formattedAddress";
NSString *const kTaxRateAddressAreaName1 = @"areaName1";
NSString *const kTaxRateAddressAddressNumber = @"addressNumber";
NSString *const kTaxRateAddressStreetName = @"streetName";
NSString *const kTaxRateAddressCity = @"city";
NSString *const kTaxRateAddressAreaName3 = @"areaName3";
NSString *const kTaxRateAddressMainAddressLine = @"mainAddressLine";
NSString *const kTaxRateAddressUnitType = @"unitType";
NSString *const kTaxRateAddressPlaceName = @"placeName";
NSString *const kTaxRateAddressLongitude = @"longitude";
NSString *const kTaxRateAddressAddressLastLine = @"addressLastLine";
NSString *const kTaxRateAddressStateProvince = @"stateProvince";
NSString *const kTaxRateAddressPostalCode = @"postalCode";
NSString *const kTaxRateAddressPostCode = @"postCode";
NSString *const kTaxRateAddressAdditionalProperties = @"additionalProperties";
NSString *const kTaxRateAddressAreaName2 = @"areaName2";
NSString *const kTaxRateAddressAreaName4 = @"areaName4";
NSString *const kTaxRateAddressAddressLine3 = @"addressLine3";
NSString *const kTaxRateAddressAddressLine2 = @"addressLine2";
NSString *const kTaxRateAddressUnitValue = @"unitValue";


@interface TaxRateAddresses ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation TaxRateAddresses


@synthesize userBufferWidth = _userBufferWidth;
@synthesize bufferWidth = _bufferWidth;

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
        
            self.userBufferWidth = [self objectOrNilForKey:kTaxRateAddressesUserBufferWidth fromDictionary:dict];
            self.bufferWidth = [self objectOrNilForKey:kTaxRateAddressesBufferWidth fromDictionary:dict];
        
            self.distanceUnits = [self objectOrNilForKey:kTaxRateAddressesDistanceUnits fromDictionary:dict];
        
        
        self.country = [self objectOrNilForKey:kTaxRateAddressCountry fromDictionary:dict];
        self.postCodeExt = [self objectOrNilForKey:kTaxRateAddressPostCodeExt fromDictionary:dict];
        
        self.formattedAddress = [self objectOrNilForKey:kTaxRateAddressFormattedAddress fromDictionary:dict];
        self.areaName1 = [self objectOrNilForKey:kTaxRateAddressAreaName1 fromDictionary:dict];
        self.addressNumber = [self objectOrNilForKey:kTaxRateAddressAddressNumber fromDictionary:dict];
        self.streetName = [self objectOrNilForKey:kTaxRateAddressStreetName fromDictionary:dict];
        self.city = [self objectOrNilForKey:kTaxRateAddressCity fromDictionary:dict];
        self.areaName3 = [self objectOrNilForKey:kTaxRateAddressAreaName3 fromDictionary:dict];
        self.mainAddressLine = [self objectOrNilForKey:kTaxRateAddressMainAddressLine fromDictionary:dict];
        self.unitType = [self objectOrNilForKey:kTaxRateAddressUnitType fromDictionary:dict];
        self.placeName = [self objectOrNilForKey:kTaxRateAddressPlaceName fromDictionary:dict];
        self.addressLastLine = [self objectOrNilForKey:kTaxRateAddressAddressLastLine fromDictionary:dict];
        self.postalCode = [self objectOrNilForKey:kTaxRateAddressPostalCode fromDictionary:dict];
        self.areaName2 = [self objectOrNilForKey:kTaxRateAddressAreaName2 fromDictionary:dict];
        self.areaName4 = [self objectOrNilForKey:kTaxRateAddressAreaName4 fromDictionary:dict];
        self.unitValue = [self objectOrNilForKey:kTaxRateAddressUnitValue fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];

    [mutableDict setValue:self.userBufferWidth forKey:kTaxRateAddressesUserBufferWidth];
    [mutableDict setValue:self.bufferWidth forKey:kTaxRateAddressesBufferWidth];
   
    [mutableDict setValue:self.distanceUnits forKey:kTaxRateAddressesDistanceUnits];
    
    [mutableDict setValue:self.country forKey:kTaxRateAddressCountry];
    [mutableDict setValue:self.postCodeExt forKey:kTaxRateAddressPostCodeExt];
    [mutableDict setValue:self.formattedAddress forKey:kTaxRateAddressFormattedAddress];
    [mutableDict setValue:self.areaName1 forKey:kTaxRateAddressAreaName1];
    [mutableDict setValue:self.addressNumber forKey:kTaxRateAddressAddressNumber];
    [mutableDict setValue:self.streetName forKey:kTaxRateAddressStreetName];
    [mutableDict setValue:self.city forKey:kTaxRateAddressCity];
    [mutableDict setValue:self.areaName3 forKey:kTaxRateAddressAreaName3];
    [mutableDict setValue:self.mainAddressLine forKey:kTaxRateAddressMainAddressLine];
    [mutableDict setValue:self.unitType forKey:kTaxRateAddressUnitType];
    [mutableDict setValue:self.placeName forKey:kTaxRateAddressPlaceName];
    [mutableDict setValue:self.addressLastLine forKey:kTaxRateAddressAddressLastLine];
    [mutableDict setValue:self.postalCode forKey:kTaxRateAddressPostalCode];
    [mutableDict setValue:self.areaName2 forKey:kTaxRateAddressAreaName2];
    [mutableDict setValue:self.areaName4 forKey:kTaxRateAddressAreaName4];
    [mutableDict setValue:self.unitValue forKey:kTaxRateAddressUnitValue];

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

   
    self.userBufferWidth = [aDecoder decodeObjectForKey:kTaxRateAddressesUserBufferWidth];
    self.bufferWidth = [aDecoder decodeObjectForKey:kTaxRateAddressesBufferWidth];
   
    self.distanceUnits = [aDecoder decodeObjectForKey:kTaxRateAddressesDistanceUnits];
    
    self.country = [aDecoder decodeObjectForKey:kTaxRateAddressCountry];
    self.postCodeExt = [aDecoder decodeObjectForKey:kTaxRateAddressPostCodeExt];
    self.formattedAddress = [aDecoder decodeObjectForKey:kTaxRateAddressFormattedAddress];
    self.areaName1 = [aDecoder decodeObjectForKey:kTaxRateAddressAreaName1];
    self.addressNumber = [aDecoder decodeObjectForKey:kTaxRateAddressAddressNumber];
    self.streetName = [aDecoder decodeObjectForKey:kTaxRateAddressStreetName];
    self.city = [aDecoder decodeObjectForKey:kTaxRateAddressCity];
    self.areaName3 = [aDecoder decodeObjectForKey:kTaxRateAddressAreaName3];
    self.mainAddressLine = [aDecoder decodeObjectForKey:kTaxRateAddressMainAddressLine];
    self.unitType = [aDecoder decodeObjectForKey:kTaxRateAddressUnitType];
    self.placeName = [aDecoder decodeObjectForKey:kTaxRateAddressPlaceName];
    self.addressLastLine = [aDecoder decodeObjectForKey:kTaxRateAddressAddressLastLine];
    self.postalCode = [aDecoder decodeObjectForKey:kTaxRateAddressPostalCode];
    self.areaName2 = [aDecoder decodeObjectForKey:kTaxRateAddressAreaName2];
    self.areaName4 = [aDecoder decodeObjectForKey:kTaxRateAddressAreaName4];
    self.unitValue = [aDecoder decodeObjectForKey:kTaxRateAddressUnitValue];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_userBufferWidth forKey:kTaxRateAddressesUserBufferWidth];
    [aCoder encodeObject:_bufferWidth forKey:kTaxRateAddressesBufferWidth];
    
    [aCoder encodeObject:_distanceUnits forKey:kTaxRateAddressesDistanceUnits];
    
    [aCoder encodeObject:_country forKey:kTaxRateAddressCountry];
    [aCoder encodeObject:_postCodeExt forKey:kTaxRateAddressPostCodeExt];
    [aCoder encodeObject:_formattedAddress forKey:kTaxRateAddressFormattedAddress];
    [aCoder encodeObject:_areaName1 forKey:kTaxRateAddressAreaName1];
    [aCoder encodeObject:_addressNumber forKey:kTaxRateAddressAddressNumber];
    [aCoder encodeObject:_streetName forKey:kTaxRateAddressStreetName];
    [aCoder encodeObject:_city forKey:kTaxRateAddressCity];
    [aCoder encodeObject:_areaName3 forKey:kTaxRateAddressAreaName3];
    [aCoder encodeObject:_mainAddressLine forKey:kTaxRateAddressMainAddressLine];
    [aCoder encodeObject:_unitType forKey:kTaxRateAddressUnitType];
    [aCoder encodeObject:_placeName forKey:kTaxRateAddressPlaceName];
    [aCoder encodeObject:_addressLastLine forKey:kTaxRateAddressAddressLastLine];
    [aCoder encodeObject:_postalCode forKey:kTaxRateAddressPostalCode];
    [aCoder encodeObject:_areaName2 forKey:kTaxRateAddressAreaName2];
    [aCoder encodeObject:_areaName4 forKey:kTaxRateAddressAreaName4];
    [aCoder encodeObject:_unitValue forKey:kTaxRateAddressUnitValue];
}

- (id)copyWithZone:(NSZone *)zone
{
    TaxRateAddresses *copy = [[TaxRateAddresses alloc] init];
    
    if (copy) {
        copy.userBufferWidth = [self.userBufferWidth copyWithZone:zone];
        copy.bufferWidth = [self.bufferWidth copyWithZone:zone];
        
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
