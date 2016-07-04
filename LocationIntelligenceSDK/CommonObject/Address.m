//
//  Address.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Address.h"


NSString *const kAddressAddressLine1 = @"addressLine1";
NSString *const kAddressBusinessName = @"businessName";
NSString *const kAddressStatus = @"status";
NSString *const kAddressCountry = @"country";
NSString *const kAddressPostCodeExt = @"postCodeExt";
NSString *const kAddressDisplayName = @"displayName";
NSString *const kAddressUrbanizationName = @"urbanizationName";
NSString *const kAddressFormattedAddress = @"formattedAddress";
NSString *const kAddressAreaName1 = @"areaName1";
NSString *const kAddressLatitude = @"latitude";
NSString *const kAddressAddressNumber = @"addressNumber";
NSString *const kAddressStreetSide = @"streetSide";
NSString *const kAddressStreetName = @"streetName";
NSString *const kAddressCity = @"city";
NSString *const kAddressAreaName3 = @"areaName3";
NSString *const kAddressMainAddressLine = @"mainAddressLine";
NSString *const kAddressUnitType = @"unitType";
NSString *const kAddressPlaceName = @"placeName";
NSString *const kAddressLongitude = @"longitude";
NSString *const kAddressAddressLastLine = @"addressLastLine";
NSString *const kAddressStateProvince = @"stateProvince";
NSString *const kAddressPostalCode = @"postalCode";
NSString *const kAddressPostCode = @"postCode";
NSString *const kAddressAdditionalProperties = @"additionalProperties";
NSString *const kAddressAreaName2 = @"areaName2";
NSString *const kAddressAreaName4 = @"areaName4";
NSString *const kAddressAddressLine3 = @"addressLine3";
NSString *const kAddressAddressLine2 = @"addressLine2";
NSString *const kAddressUnitValue = @"unitValue";


@interface Address ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Address

@synthesize addressLine1 = _addressLine1;
@synthesize businessName = _businessName;
@synthesize status = _status;
@synthesize country = _country;
@synthesize postCodeExt = _postCodeExt;
@synthesize displayName = _displayName;
@synthesize urbanizationName = _urbanizationName;
@synthesize formattedAddress = _formattedAddress;
@synthesize areaName1 = _areaName1;
@synthesize latitude = _latitude;
@synthesize addressNumber = _addressNumber;
@synthesize streetSide = _streetSide;
@synthesize streetName = _streetName;
@synthesize city = _city;
@synthesize areaName3 = _areaName3;
@synthesize mainAddressLine = _mainAddressLine;
@synthesize unitType = _unitType;
@synthesize placeName = _placeName;
@synthesize longitude = _longitude;
@synthesize addressLastLine = _addressLastLine;
@synthesize stateProvince = _stateProvince;
@synthesize postalCode = _postalCode;
@synthesize postCode = _postCode;
@synthesize additionalProperties = _additionalProperties;
@synthesize areaName2 = _areaName2;
@synthesize areaName4 = _areaName4;
@synthesize addressLine3 = _addressLine3;
@synthesize addressLine2 = _addressLine2;
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
            self.addressLine1 = [self objectOrNilForKey:kAddressAddressLine1 fromDictionary:dict];
            self.businessName = [self objectOrNilForKey:kAddressBusinessName fromDictionary:dict];
            self.status = [self objectOrNilForKey:kAddressStatus fromDictionary:dict];
            self.country = [self objectOrNilForKey:kAddressCountry fromDictionary:dict];
            self.postCodeExt = [self objectOrNilForKey:kAddressPostCodeExt fromDictionary:dict];
            self.displayName = [self objectOrNilForKey:kAddressDisplayName fromDictionary:dict];
            self.urbanizationName = [self objectOrNilForKey:kAddressUrbanizationName fromDictionary:dict];
            self.formattedAddress = [self objectOrNilForKey:kAddressFormattedAddress fromDictionary:dict];
            self.areaName1 = [self objectOrNilForKey:kAddressAreaName1 fromDictionary:dict];
            self.latitude = [self objectOrNilForKey:kAddressLatitude fromDictionary:dict];
            self.addressNumber = [self objectOrNilForKey:kAddressAddressNumber fromDictionary:dict];
            self.streetSide = [self objectOrNilForKey:kAddressStreetSide fromDictionary:dict];
            self.streetName = [self objectOrNilForKey:kAddressStreetName fromDictionary:dict];
            self.city = [self objectOrNilForKey:kAddressCity fromDictionary:dict];
            self.areaName3 = [self objectOrNilForKey:kAddressAreaName3 fromDictionary:dict];
            self.mainAddressLine = [self objectOrNilForKey:kAddressMainAddressLine fromDictionary:dict];
            self.unitType = [self objectOrNilForKey:kAddressUnitType fromDictionary:dict];
            self.placeName = [self objectOrNilForKey:kAddressPlaceName fromDictionary:dict];
            self.longitude = [self objectOrNilForKey:kAddressLongitude fromDictionary:dict];
            self.addressLastLine = [self objectOrNilForKey:kAddressAddressLastLine fromDictionary:dict];
            self.stateProvince = [self objectOrNilForKey:kAddressStateProvince fromDictionary:dict];
            self.postalCode = [self objectOrNilForKey:kAddressPostalCode fromDictionary:dict];
            self.postCode = [self objectOrNilForKey:kAddressPostCode fromDictionary:dict];
            self.additionalProperties = [self objectOrNilForKey:kAddressAdditionalProperties fromDictionary:dict];
            self.areaName2 = [self objectOrNilForKey:kAddressAreaName2 fromDictionary:dict];
            self.areaName4 = [self objectOrNilForKey:kAddressAreaName4 fromDictionary:dict];
            self.addressLine3 = [self objectOrNilForKey:kAddressAddressLine3 fromDictionary:dict];
            self.addressLine2 = [self objectOrNilForKey:kAddressAddressLine2 fromDictionary:dict];
            self.unitValue = [self objectOrNilForKey:kAddressUnitValue fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.addressLine1 forKey:kAddressAddressLine1];
    [mutableDict setValue:self.businessName forKey:kAddressBusinessName];
    [mutableDict setValue:self.status forKey:kAddressStatus];
    [mutableDict setValue:self.country forKey:kAddressCountry];
    [mutableDict setValue:self.postCodeExt forKey:kAddressPostCodeExt];
    [mutableDict setValue:self.displayName forKey:kAddressDisplayName];
    [mutableDict setValue:self.urbanizationName forKey:kAddressUrbanizationName];
    [mutableDict setValue:self.formattedAddress forKey:kAddressFormattedAddress];
    [mutableDict setValue:self.areaName1 forKey:kAddressAreaName1];
    [mutableDict setValue:self.latitude forKey:kAddressLatitude];
    [mutableDict setValue:self.addressNumber forKey:kAddressAddressNumber];
    [mutableDict setValue:self.streetSide forKey:kAddressStreetSide];
    [mutableDict setValue:self.streetName forKey:kAddressStreetName];
    [mutableDict setValue:self.city forKey:kAddressCity];
    [mutableDict setValue:self.areaName3 forKey:kAddressAreaName3];
    [mutableDict setValue:self.mainAddressLine forKey:kAddressMainAddressLine];
    [mutableDict setValue:self.unitType forKey:kAddressUnitType];
    [mutableDict setValue:self.placeName forKey:kAddressPlaceName];
    [mutableDict setValue:self.longitude forKey:kAddressLongitude];
    [mutableDict setValue:self.addressLastLine forKey:kAddressAddressLastLine];
    [mutableDict setValue:self.stateProvince forKey:kAddressStateProvince];
    [mutableDict setValue:self.postalCode forKey:kAddressPostalCode];
    [mutableDict setValue:self.postCode forKey:kAddressPostCode];
    NSMutableArray *tempArrayForAdditionalProperties = [NSMutableArray array];
    for (NSObject *subArrayObject in self.additionalProperties) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAdditionalProperties addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAdditionalProperties addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAdditionalProperties] forKey:kAddressAdditionalProperties];
    [mutableDict setValue:self.areaName2 forKey:kAddressAreaName2];
    [mutableDict setValue:self.areaName4 forKey:kAddressAreaName4];
    [mutableDict setValue:self.addressLine3 forKey:kAddressAddressLine3];
    [mutableDict setValue:self.addressLine2 forKey:kAddressAddressLine2];
    [mutableDict setValue:self.unitValue forKey:kAddressUnitValue];

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

    self.addressLine1 = [aDecoder decodeObjectForKey:kAddressAddressLine1];
    self.businessName = [aDecoder decodeObjectForKey:kAddressBusinessName];
    self.status = [aDecoder decodeObjectForKey:kAddressStatus];
    self.country = [aDecoder decodeObjectForKey:kAddressCountry];
    self.postCodeExt = [aDecoder decodeObjectForKey:kAddressPostCodeExt];
    self.displayName = [aDecoder decodeObjectForKey:kAddressDisplayName];
    self.urbanizationName = [aDecoder decodeObjectForKey:kAddressUrbanizationName];
    self.formattedAddress = [aDecoder decodeObjectForKey:kAddressFormattedAddress];
    self.areaName1 = [aDecoder decodeObjectForKey:kAddressAreaName1];
    self.latitude = [aDecoder decodeObjectForKey:kAddressLatitude];
    self.addressNumber = [aDecoder decodeObjectForKey:kAddressAddressNumber];
    self.streetSide = [aDecoder decodeObjectForKey:kAddressStreetSide];
    self.streetName = [aDecoder decodeObjectForKey:kAddressStreetName];
    self.city = [aDecoder decodeObjectForKey:kAddressCity];
    self.areaName3 = [aDecoder decodeObjectForKey:kAddressAreaName3];
    self.mainAddressLine = [aDecoder decodeObjectForKey:kAddressMainAddressLine];
    self.unitType = [aDecoder decodeObjectForKey:kAddressUnitType];
    self.placeName = [aDecoder decodeObjectForKey:kAddressPlaceName];
    self.longitude = [aDecoder decodeObjectForKey:kAddressLongitude];
    self.addressLastLine = [aDecoder decodeObjectForKey:kAddressAddressLastLine];
    self.stateProvince = [aDecoder decodeObjectForKey:kAddressStateProvince];
    self.postalCode = [aDecoder decodeObjectForKey:kAddressPostalCode];
    self.postCode = [aDecoder decodeObjectForKey:kAddressPostCode];
    self.additionalProperties = [aDecoder decodeObjectForKey:kAddressAdditionalProperties];
    self.areaName2 = [aDecoder decodeObjectForKey:kAddressAreaName2];
    self.areaName4 = [aDecoder decodeObjectForKey:kAddressAreaName4];
    self.addressLine3 = [aDecoder decodeObjectForKey:kAddressAddressLine3];
    self.addressLine2 = [aDecoder decodeObjectForKey:kAddressAddressLine2];
    self.unitValue = [aDecoder decodeObjectForKey:kAddressUnitValue];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_addressLine1 forKey:kAddressAddressLine1];
    [aCoder encodeObject:_businessName forKey:kAddressBusinessName];
    [aCoder encodeObject:_status forKey:kAddressStatus];
    [aCoder encodeObject:_country forKey:kAddressCountry];
    [aCoder encodeObject:_postCodeExt forKey:kAddressPostCodeExt];
    [aCoder encodeObject:_displayName forKey:kAddressDisplayName];
    [aCoder encodeObject:_urbanizationName forKey:kAddressUrbanizationName];
    [aCoder encodeObject:_formattedAddress forKey:kAddressFormattedAddress];
    [aCoder encodeObject:_areaName1 forKey:kAddressAreaName1];
    [aCoder encodeObject:_latitude forKey:kAddressLatitude];
    [aCoder encodeObject:_addressNumber forKey:kAddressAddressNumber];
    [aCoder encodeObject:_streetSide forKey:kAddressStreetSide];
    [aCoder encodeObject:_streetName forKey:kAddressStreetName];
    [aCoder encodeObject:_city forKey:kAddressCity];
    [aCoder encodeObject:_areaName3 forKey:kAddressAreaName3];
    [aCoder encodeObject:_mainAddressLine forKey:kAddressMainAddressLine];
    [aCoder encodeObject:_unitType forKey:kAddressUnitType];
    [aCoder encodeObject:_placeName forKey:kAddressPlaceName];
    [aCoder encodeObject:_longitude forKey:kAddressLongitude];
    [aCoder encodeObject:_addressLastLine forKey:kAddressAddressLastLine];
    [aCoder encodeObject:_stateProvince forKey:kAddressStateProvince];
    [aCoder encodeObject:_postalCode forKey:kAddressPostalCode];
    [aCoder encodeObject:_postCode forKey:kAddressPostCode];
    [aCoder encodeObject:_additionalProperties forKey:kAddressAdditionalProperties];
    [aCoder encodeObject:_areaName2 forKey:kAddressAreaName2];
    [aCoder encodeObject:_areaName4 forKey:kAddressAreaName4];
    [aCoder encodeObject:_addressLine3 forKey:kAddressAddressLine3];
    [aCoder encodeObject:_addressLine2 forKey:kAddressAddressLine2];
    [aCoder encodeObject:_unitValue forKey:kAddressUnitValue];
}

- (id)copyWithZone:(NSZone *)zone
{
    Address *copy = [[Address alloc] init];
    
    if (copy) {

        copy.addressLine1 = [self.addressLine1 copyWithZone:zone];
        copy.businessName = [self.businessName copyWithZone:zone];
        copy.status = [self.status copyWithZone:zone];
        copy.country = [self.country copyWithZone:zone];
        copy.postCodeExt = [self.postCodeExt copyWithZone:zone];
        copy.displayName = [self.displayName copyWithZone:zone];
        copy.urbanizationName = [self.urbanizationName copyWithZone:zone];
        copy.formattedAddress = [self.formattedAddress copyWithZone:zone];
        copy.areaName1 = [self.areaName1 copyWithZone:zone];
        copy.latitude = [self.latitude copyWithZone:zone];
        copy.addressNumber = [self.addressNumber copyWithZone:zone];
        copy.streetSide = [self.streetSide copyWithZone:zone];
        copy.streetName = [self.streetName copyWithZone:zone];
        copy.city = [self.city copyWithZone:zone];
        copy.areaName3 = [self.areaName3 copyWithZone:zone];
        copy.mainAddressLine = [self.mainAddressLine copyWithZone:zone];
        copy.unitType = [self.unitType copyWithZone:zone];
        copy.placeName = [self.placeName copyWithZone:zone];
        copy.longitude = [self.longitude copyWithZone:zone];
        copy.addressLastLine = [self.addressLastLine copyWithZone:zone];
        copy.stateProvince = [self.stateProvince copyWithZone:zone];
        copy.postalCode = [self.postalCode copyWithZone:zone];
        copy.postCode = [self.postCode copyWithZone:zone];
        copy.additionalProperties = [self.additionalProperties copyWithZone:zone];
        copy.areaName2 = [self.areaName2 copyWithZone:zone];
        copy.areaName4 = [self.areaName4 copyWithZone:zone];
        copy.addressLine3 = [self.addressLine3 copyWithZone:zone];
        copy.addressLine2 = [self.addressLine2 copyWithZone:zone];
        copy.unitValue = [self.unitValue copyWithZone:zone];
    }
    
    return copy;
}


@end
