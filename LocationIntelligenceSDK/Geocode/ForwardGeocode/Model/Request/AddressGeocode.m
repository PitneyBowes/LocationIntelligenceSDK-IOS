//
//  Addresses.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "AddressGeocode.h"


NSString *const kAddressesAreaName4 = @"areaName4";
NSString *const kAddressesPostCode1 = @"postCode1";
NSString *const kAddressesAreaName1 = @"areaName1";
NSString *const kAddressesUnitType = @"unitType";
NSString *const kAddressesPlaceName = @"placeName";
NSString *const kAddressesPostCode2 = @"postCode2";
NSString *const kAddressesAddressLastLine = @"addressLastLine";
NSString *const kAddressesAreaName2 = @"areaName2";
NSString *const kAddressesStreetName = @"streetName";
NSString *const kAddressesAddressNumber = @"addressNumber";
NSString *const kAddressesAreaName3 = @"areaName3";
NSString *const kAddressesUnitValue = @"unitValue";
NSString *const kAddressesMainAddressLine = @"mainAddressLine";
NSString *const kAddressesCountry = @"country";


@interface AddressGeocode ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation AddressGeocode

@synthesize areaName4 = _areaName4;
@synthesize postCode1 = _postCode1;
@synthesize areaName1 = _areaName1;
@synthesize unitType = _unitType;
@synthesize placeName = _placeName;
@synthesize postCode2 = _postCode2;
@synthesize addressLastLine = _addressLastLine;
@synthesize areaName2 = _areaName2;
@synthesize streetName = _streetName;
@synthesize addressNumber = _addressNumber;
@synthesize areaName3 = _areaName3;
@synthesize unitValue = _unitValue;
@synthesize mainAddressLine = _mainAddressLine;
@synthesize country = _country;


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
            self.areaName4 = [self objectOrNilForKey:kAddressesAreaName4 fromDictionary:dict];
            self.postCode1 = [self objectOrNilForKey:kAddressesPostCode1 fromDictionary:dict];
            self.areaName1 = [self objectOrNilForKey:kAddressesAreaName1 fromDictionary:dict];
            self.unitType = [self objectOrNilForKey:kAddressesUnitType fromDictionary:dict];
            self.placeName = [self objectOrNilForKey:kAddressesPlaceName fromDictionary:dict];
            self.postCode2 = [self objectOrNilForKey:kAddressesPostCode2 fromDictionary:dict];
            self.addressLastLine = [self objectOrNilForKey:kAddressesAddressLastLine fromDictionary:dict];
            self.areaName2 = [self objectOrNilForKey:kAddressesAreaName2 fromDictionary:dict];
            self.streetName = [self objectOrNilForKey:kAddressesStreetName fromDictionary:dict];
            self.addressNumber = [self objectOrNilForKey:kAddressesAddressNumber fromDictionary:dict];
            self.areaName3 = [self objectOrNilForKey:kAddressesAreaName3 fromDictionary:dict];
            self.unitValue = [self objectOrNilForKey:kAddressesUnitValue fromDictionary:dict];
            self.mainAddressLine = [self objectOrNilForKey:kAddressesMainAddressLine fromDictionary:dict];
            self.country = [self objectOrNilForKey:kAddressesCountry fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.areaName4 forKey:kAddressesAreaName4];
    [mutableDict setValue:self.postCode1 forKey:kAddressesPostCode1];
    [mutableDict setValue:self.areaName1 forKey:kAddressesAreaName1];
    [mutableDict setValue:self.unitType forKey:kAddressesUnitType];
    [mutableDict setValue:self.placeName forKey:kAddressesPlaceName];
    [mutableDict setValue:self.postCode2 forKey:kAddressesPostCode2];
    [mutableDict setValue:self.addressLastLine forKey:kAddressesAddressLastLine];
    [mutableDict setValue:self.areaName2 forKey:kAddressesAreaName2];
    [mutableDict setValue:self.streetName forKey:kAddressesStreetName];
    [mutableDict setValue:self.addressNumber forKey:kAddressesAddressNumber];
    [mutableDict setValue:self.areaName3 forKey:kAddressesAreaName3];
    [mutableDict setValue:self.unitValue forKey:kAddressesUnitValue];
    [mutableDict setValue:self.mainAddressLine forKey:kAddressesMainAddressLine];
    [mutableDict setValue:self.country forKey:kAddressesCountry];

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

    self.areaName4 = [aDecoder decodeObjectForKey:kAddressesAreaName4];
    self.postCode1 = [aDecoder decodeObjectForKey:kAddressesPostCode1];
    self.areaName1 = [aDecoder decodeObjectForKey:kAddressesAreaName1];
    self.unitType = [aDecoder decodeObjectForKey:kAddressesUnitType];
    self.placeName = [aDecoder decodeObjectForKey:kAddressesPlaceName];
    self.postCode2 = [aDecoder decodeObjectForKey:kAddressesPostCode2];
    self.addressLastLine = [aDecoder decodeObjectForKey:kAddressesAddressLastLine];
    self.areaName2 = [aDecoder decodeObjectForKey:kAddressesAreaName2];
    self.streetName = [aDecoder decodeObjectForKey:kAddressesStreetName];
    self.addressNumber = [aDecoder decodeObjectForKey:kAddressesAddressNumber];
    self.areaName3 = [aDecoder decodeObjectForKey:kAddressesAreaName3];
    self.unitValue = [aDecoder decodeObjectForKey:kAddressesUnitValue];
    self.mainAddressLine = [aDecoder decodeObjectForKey:kAddressesMainAddressLine];
    self.country = [aDecoder decodeObjectForKey:kAddressesCountry];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_areaName4 forKey:kAddressesAreaName4];
    [aCoder encodeObject:_postCode1 forKey:kAddressesPostCode1];
    [aCoder encodeObject:_areaName1 forKey:kAddressesAreaName1];
    [aCoder encodeObject:_unitType forKey:kAddressesUnitType];
    [aCoder encodeObject:_placeName forKey:kAddressesPlaceName];
    [aCoder encodeObject:_postCode2 forKey:kAddressesPostCode2];
    [aCoder encodeObject:_addressLastLine forKey:kAddressesAddressLastLine];
    [aCoder encodeObject:_areaName2 forKey:kAddressesAreaName2];
    [aCoder encodeObject:_streetName forKey:kAddressesStreetName];
    [aCoder encodeObject:_addressNumber forKey:kAddressesAddressNumber];
    [aCoder encodeObject:_areaName3 forKey:kAddressesAreaName3];
    [aCoder encodeObject:_unitValue forKey:kAddressesUnitValue];
    [aCoder encodeObject:_mainAddressLine forKey:kAddressesMainAddressLine];
    [aCoder encodeObject:_country forKey:kAddressesCountry];
}

- (id)copyWithZone:(NSZone *)zone
{
    AddressGeocode *copy = [[AddressGeocode alloc] init];
    
    if (copy) {

        copy.areaName4 = [self.areaName4 copyWithZone:zone];
        copy.postCode1 = [self.postCode1 copyWithZone:zone];
        copy.areaName1 = [self.areaName1 copyWithZone:zone];
        copy.unitType = [self.unitType copyWithZone:zone];
        copy.placeName = [self.placeName copyWithZone:zone];
        copy.postCode2 = [self.postCode2 copyWithZone:zone];
        copy.addressLastLine = [self.addressLastLine copyWithZone:zone];
        copy.areaName2 = [self.areaName2 copyWithZone:zone];
        copy.streetName = [self.streetName copyWithZone:zone];
        copy.addressNumber = [self.addressNumber copyWithZone:zone];
        copy.areaName3 = [self.areaName3 copyWithZone:zone];
        copy.unitValue = [self.unitValue copyWithZone:zone];
        copy.mainAddressLine = [self.mainAddressLine copyWithZone:zone];
        copy.country = [self.country copyWithZone:zone];
    }
    
    return copy;
}


@end
