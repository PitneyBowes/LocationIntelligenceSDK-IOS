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

#import "GeocodeAddress.h"
#import "CustomFields.h"


NSString *const kResAddressAreaName4 = @"areaName4";
NSString *const kResAddressPostCode1 = @"postCode1";
NSString *const kResAddressAreaName1 = @"areaName1";
NSString *const kResAddressUnitType = @"unitType";
NSString *const kResAddressPlaceName = @"placeName";
NSString *const kResAddressPostCode2 = @"postCode2";
NSString *const kResAddressAddressLastLine = @"addressLastLine";
NSString *const kResAddressAreaName2 = @"areaName2";
NSString *const kResAddressCustomFields = @"customFields";
NSString *const kResAddressStreetName = @"streetName";
NSString *const kResAddressAddressNumber = @"addressNumber";
NSString *const kResAddressAreaName3 = @"areaName3";
NSString *const kResAddressUnitValue = @"unitValue";
NSString *const kResAddressMainAddressLine = @"mainAddressLine";
NSString *const kResAddressCountry = @"country";


@interface GeocodeAddress ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GeocodeAddress

@synthesize areaName4 = _areaName4;
@synthesize postCode1 = _postCode1;
@synthesize areaName1 = _areaName1;
@synthesize unitType = _unitType;
@synthesize placeName = _placeName;
@synthesize postCode2 = _postCode2;
@synthesize addressLastLine = _addressLastLine;
@synthesize areaName2 = _areaName2;
@synthesize customFields = _customFields;
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
            self.areaName4 = [self objectOrNilForKey:kResAddressAreaName4 fromDictionary:dict];
            self.postCode1 = [self objectOrNilForKey:kResAddressPostCode1 fromDictionary:dict];
            self.areaName1 = [self objectOrNilForKey:kResAddressAreaName1 fromDictionary:dict];
            self.unitType = [self objectOrNilForKey:kResAddressUnitType fromDictionary:dict];
            self.placeName = [self objectOrNilForKey:kResAddressPlaceName fromDictionary:dict];
            self.postCode2 = [self objectOrNilForKey:kResAddressPostCode2 fromDictionary:dict];
            self.addressLastLine = [self objectOrNilForKey:kResAddressAddressLastLine fromDictionary:dict];
            self.areaName2 = [self objectOrNilForKey:kResAddressAreaName2 fromDictionary:dict];
            self.customFields = [CustomFields modelObjectWithDictionary:[dict objectForKey:kResAddressCustomFields]];
            self.streetName = [self objectOrNilForKey:kResAddressStreetName fromDictionary:dict];
            self.addressNumber = [self objectOrNilForKey:kResAddressAddressNumber fromDictionary:dict];
            self.areaName3 = [self objectOrNilForKey:kResAddressAreaName3 fromDictionary:dict];
            self.unitValue = [self objectOrNilForKey:kResAddressUnitValue fromDictionary:dict];
            self.mainAddressLine = [self objectOrNilForKey:kResAddressMainAddressLine fromDictionary:dict];
            self.country = [self objectOrNilForKey:kResAddressCountry fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.areaName4 forKey:kResAddressAreaName4];
    [mutableDict setValue:self.postCode1 forKey:kResAddressPostCode1];
    [mutableDict setValue:self.areaName1 forKey:kResAddressAreaName1];
    [mutableDict setValue:self.unitType forKey:kResAddressUnitType];
    [mutableDict setValue:self.placeName forKey:kResAddressPlaceName];
    [mutableDict setValue:self.postCode2 forKey:kResAddressPostCode2];
    [mutableDict setValue:self.addressLastLine forKey:kResAddressAddressLastLine];
    [mutableDict setValue:self.areaName2 forKey:kResAddressAreaName2];
    [mutableDict setValue:[self.customFields dictionaryRepresentation] forKey:kResAddressCustomFields];
    [mutableDict setValue:self.streetName forKey:kResAddressStreetName];
    [mutableDict setValue:self.addressNumber forKey:kResAddressAddressNumber];
    [mutableDict setValue:self.areaName3 forKey:kResAddressAreaName3];
    [mutableDict setValue:self.unitValue forKey:kResAddressUnitValue];
    [mutableDict setValue:self.mainAddressLine forKey:kResAddressMainAddressLine];
    [mutableDict setValue:self.country forKey:kResAddressCountry];

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

    self.areaName4 = [aDecoder decodeObjectForKey:kResAddressAreaName4];
    self.postCode1 = [aDecoder decodeObjectForKey:kResAddressPostCode1];
    self.areaName1 = [aDecoder decodeObjectForKey:kResAddressAreaName1];
    self.unitType = [aDecoder decodeObjectForKey:kResAddressUnitType];
    self.placeName = [aDecoder decodeObjectForKey:kResAddressPlaceName];
    self.postCode2 = [aDecoder decodeObjectForKey:kResAddressPostCode2];
    self.addressLastLine = [aDecoder decodeObjectForKey:kResAddressAddressLastLine];
    self.areaName2 = [aDecoder decodeObjectForKey:kResAddressAreaName2];
    self.customFields = [aDecoder decodeObjectForKey:kResAddressCustomFields];
    self.streetName = [aDecoder decodeObjectForKey:kResAddressStreetName];
    self.addressNumber = [aDecoder decodeObjectForKey:kResAddressAddressNumber];
    self.areaName3 = [aDecoder decodeObjectForKey:kResAddressAreaName3];
    self.unitValue = [aDecoder decodeObjectForKey:kResAddressUnitValue];
    self.mainAddressLine = [aDecoder decodeObjectForKey:kResAddressMainAddressLine];
    self.country = [aDecoder decodeObjectForKey:kResAddressCountry];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_areaName4 forKey:kResAddressAreaName4];
    [aCoder encodeObject:_postCode1 forKey:kResAddressPostCode1];
    [aCoder encodeObject:_areaName1 forKey:kResAddressAreaName1];
    [aCoder encodeObject:_unitType forKey:kResAddressUnitType];
    [aCoder encodeObject:_placeName forKey:kResAddressPlaceName];
    [aCoder encodeObject:_postCode2 forKey:kResAddressPostCode2];
    [aCoder encodeObject:_addressLastLine forKey:kResAddressAddressLastLine];
    [aCoder encodeObject:_areaName2 forKey:kResAddressAreaName2];
    [aCoder encodeObject:_customFields forKey:kResAddressCustomFields];
    [aCoder encodeObject:_streetName forKey:kResAddressStreetName];
    [aCoder encodeObject:_addressNumber forKey:kResAddressAddressNumber];
    [aCoder encodeObject:_areaName3 forKey:kResAddressAreaName3];
    [aCoder encodeObject:_unitValue forKey:kResAddressUnitValue];
    [aCoder encodeObject:_mainAddressLine forKey:kResAddressMainAddressLine];
    [aCoder encodeObject:_country forKey:kResAddressCountry];
}

- (id)copyWithZone:(NSZone *)zone
{
    GeocodeAddress *copy = [[GeocodeAddress alloc] init];
    
    if (copy) {

        copy.areaName4 = [self.areaName4 copyWithZone:zone];
        copy.postCode1 = [self.postCode1 copyWithZone:zone];
        copy.areaName1 = [self.areaName1 copyWithZone:zone];
        copy.unitType = [self.unitType copyWithZone:zone];
        copy.placeName = [self.placeName copyWithZone:zone];
        copy.postCode2 = [self.postCode2 copyWithZone:zone];
        copy.addressLastLine = [self.addressLastLine copyWithZone:zone];
        copy.areaName2 = [self.areaName2 copyWithZone:zone];
        copy.customFields = [self.customFields copyWithZone:zone];
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
