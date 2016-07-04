//
//  Poi.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Poi.h"
#import "ContactDetails.h"
#import "Distance.h"


NSString *const kPoiCustomField8 = @"customField8";
NSString *const kPoiCustomField7 = @"customField7";
NSString *const kPoiCustomField6 = @"customField6";
NSString *const kPoiCustomField5 = @"customField5";
NSString *const kPoiOpen24Hours = @"open24Hours";
NSString *const kPoiDisplayName = @"displayName";
NSString *const kPoiCustomField4 = @"customField4";
NSString *const kPoiLatitude = @"latitude";
NSString *const kPoiCustomField3 = @"customField3";
NSString *const kPoiAlias = @"alias";
NSString *const kPoiName = @"name";
NSString *const kPoiCustomField2 = @"customField2";
NSString *const kPoiCustomField1 = @"customField1";
NSString *const kPoiLangType = @"langType";
NSString *const kPoiBrandName = @"brandName";
NSString *const kPoiContactDetails = @"contactDetails";
NSString *const kPoiLongitude = @"longitude";
NSString *const kPoiDistance = @"distance";
NSString *const kPoiCustomField10 = @"customField10";
NSString *const kPoiCategoryCode = @"categoryCode";
NSString *const kPoiLangISOCode = @"langISOCode";
NSString *const kPoiCustomField9 = @"customField9";


@interface Poi ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Poi

@synthesize customField8 = _customField8;
@synthesize customField7 = _customField7;
@synthesize customField6 = _customField6;
@synthesize customField5 = _customField5;
@synthesize open24Hours = _open24Hours;
@synthesize displayName = _displayName;
@synthesize customField4 = _customField4;
@synthesize latitude = _latitude;
@synthesize customField3 = _customField3;
@synthesize alias = _alias;
@synthesize name = _name;
@synthesize customField2 = _customField2;
@synthesize customField1 = _customField1;
@synthesize langType = _langType;
@synthesize brandName = _brandName;
@synthesize contactDetails = _contactDetails;
@synthesize longitude = _longitude;
@synthesize distance = _distance;
@synthesize customField10 = _customField10;
@synthesize categoryCode = _categoryCode;
@synthesize langISOCode = _langISOCode;
@synthesize customField9 = _customField9;


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
            self.customField8 = [self objectOrNilForKey:kPoiCustomField8 fromDictionary:dict];
            self.customField7 = [self objectOrNilForKey:kPoiCustomField7 fromDictionary:dict];
            self.customField6 = [self objectOrNilForKey:kPoiCustomField6 fromDictionary:dict];
            self.customField5 = [self objectOrNilForKey:kPoiCustomField5 fromDictionary:dict];
            self.open24Hours = [self objectOrNilForKey:kPoiOpen24Hours fromDictionary:dict];
            self.displayName = [self objectOrNilForKey:kPoiDisplayName fromDictionary:dict];
            self.customField4 = [self objectOrNilForKey:kPoiCustomField4 fromDictionary:dict];
            self.latitude = [self objectOrNilForKey:kPoiLatitude fromDictionary:dict];
            self.customField3 = [self objectOrNilForKey:kPoiCustomField3 fromDictionary:dict];
            self.alias = [self objectOrNilForKey:kPoiAlias fromDictionary:dict];
            self.name = [self objectOrNilForKey:kPoiName fromDictionary:dict];
            self.customField2 = [self objectOrNilForKey:kPoiCustomField2 fromDictionary:dict];
            self.customField1 = [self objectOrNilForKey:kPoiCustomField1 fromDictionary:dict];
            self.langType = [self objectOrNilForKey:kPoiLangType fromDictionary:dict];
            self.brandName = [self objectOrNilForKey:kPoiBrandName fromDictionary:dict];
            self.contactDetails = [ContactDetails modelObjectWithDictionary:[dict objectForKey:kPoiContactDetails]];
            self.longitude = [self objectOrNilForKey:kPoiLongitude fromDictionary:dict];
            self.distance = [Distance modelObjectWithDictionary:[dict objectForKey:kPoiDistance]];
            self.customField10 = [self objectOrNilForKey:kPoiCustomField10 fromDictionary:dict];
            self.categoryCode = [[self objectOrNilForKey:kPoiCategoryCode fromDictionary:dict] doubleValue];
            self.langISOCode = [self objectOrNilForKey:kPoiLangISOCode fromDictionary:dict];
            self.customField9 = [self objectOrNilForKey:kPoiCustomField9 fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.customField8 forKey:kPoiCustomField8];
    [mutableDict setValue:self.customField7 forKey:kPoiCustomField7];
    [mutableDict setValue:self.customField6 forKey:kPoiCustomField6];
    [mutableDict setValue:self.customField5 forKey:kPoiCustomField5];
    [mutableDict setValue:self.open24Hours forKey:kPoiOpen24Hours];
    [mutableDict setValue:self.displayName forKey:kPoiDisplayName];
    [mutableDict setValue:self.customField4 forKey:kPoiCustomField4];
    [mutableDict setValue:self.latitude forKey:kPoiLatitude];
    [mutableDict setValue:self.customField3 forKey:kPoiCustomField3];
    [mutableDict setValue:self.alias forKey:kPoiAlias];
    [mutableDict setValue:self.name forKey:kPoiName];
    [mutableDict setValue:self.customField2 forKey:kPoiCustomField2];
    [mutableDict setValue:self.customField1 forKey:kPoiCustomField1];
    [mutableDict setValue:self.langType forKey:kPoiLangType];
    [mutableDict setValue:self.brandName forKey:kPoiBrandName];
    [mutableDict setValue:[self.contactDetails dictionaryRepresentation] forKey:kPoiContactDetails];
    [mutableDict setValue:self.longitude forKey:kPoiLongitude];
    [mutableDict setValue:[self.distance dictionaryRepresentation] forKey:kPoiDistance];
    [mutableDict setValue:self.customField10 forKey:kPoiCustomField10];
    [mutableDict setValue:[NSNumber numberWithDouble:self.categoryCode] forKey:kPoiCategoryCode];
    [mutableDict setValue:self.langISOCode forKey:kPoiLangISOCode];
    [mutableDict setValue:self.customField9 forKey:kPoiCustomField9];

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

    self.customField8 = [aDecoder decodeObjectForKey:kPoiCustomField8];
    self.customField7 = [aDecoder decodeObjectForKey:kPoiCustomField7];
    self.customField6 = [aDecoder decodeObjectForKey:kPoiCustomField6];
    self.customField5 = [aDecoder decodeObjectForKey:kPoiCustomField5];
    self.open24Hours = [aDecoder decodeObjectForKey:kPoiOpen24Hours];
    self.displayName = [aDecoder decodeObjectForKey:kPoiDisplayName];
    self.customField4 = [aDecoder decodeObjectForKey:kPoiCustomField4];
    self.latitude = [aDecoder decodeObjectForKey:kPoiLatitude];
    self.customField3 = [aDecoder decodeObjectForKey:kPoiCustomField3];
    self.alias = [aDecoder decodeObjectForKey:kPoiAlias];
    self.name = [aDecoder decodeObjectForKey:kPoiName];
    self.customField2 = [aDecoder decodeObjectForKey:kPoiCustomField2];
    self.customField1 = [aDecoder decodeObjectForKey:kPoiCustomField1];
    self.langType = [aDecoder decodeObjectForKey:kPoiLangType];
    self.brandName = [aDecoder decodeObjectForKey:kPoiBrandName];
    self.contactDetails = [aDecoder decodeObjectForKey:kPoiContactDetails];
    self.longitude = [aDecoder decodeObjectForKey:kPoiLongitude];
    self.distance = [aDecoder decodeObjectForKey:kPoiDistance];
    self.customField10 = [aDecoder decodeObjectForKey:kPoiCustomField10];
    self.categoryCode = [aDecoder decodeDoubleForKey:kPoiCategoryCode];
    self.langISOCode = [aDecoder decodeObjectForKey:kPoiLangISOCode];
    self.customField9 = [aDecoder decodeObjectForKey:kPoiCustomField9];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_customField8 forKey:kPoiCustomField8];
    [aCoder encodeObject:_customField7 forKey:kPoiCustomField7];
    [aCoder encodeObject:_customField6 forKey:kPoiCustomField6];
    [aCoder encodeObject:_customField5 forKey:kPoiCustomField5];
    [aCoder encodeObject:_open24Hours forKey:kPoiOpen24Hours];
    [aCoder encodeObject:_displayName forKey:kPoiDisplayName];
    [aCoder encodeObject:_customField4 forKey:kPoiCustomField4];
    [aCoder encodeObject:_latitude forKey:kPoiLatitude];
    [aCoder encodeObject:_customField3 forKey:kPoiCustomField3];
    [aCoder encodeObject:_alias forKey:kPoiAlias];
    [aCoder encodeObject:_name forKey:kPoiName];
    [aCoder encodeObject:_customField2 forKey:kPoiCustomField2];
    [aCoder encodeObject:_customField1 forKey:kPoiCustomField1];
    [aCoder encodeObject:_langType forKey:kPoiLangType];
    [aCoder encodeObject:_brandName forKey:kPoiBrandName];
    [aCoder encodeObject:_contactDetails forKey:kPoiContactDetails];
    [aCoder encodeObject:_longitude forKey:kPoiLongitude];
    [aCoder encodeObject:_distance forKey:kPoiDistance];
    [aCoder encodeObject:_customField10 forKey:kPoiCustomField10];
    [aCoder encodeDouble:_categoryCode forKey:kPoiCategoryCode];
    [aCoder encodeObject:_langISOCode forKey:kPoiLangISOCode];
    [aCoder encodeObject:_customField9 forKey:kPoiCustomField9];
}

- (id)copyWithZone:(NSZone *)zone
{
    Poi *copy = [[Poi alloc] init];
    
    if (copy) {

        copy.customField8 = [self.customField8 copyWithZone:zone];
        copy.customField7 = [self.customField7 copyWithZone:zone];
        copy.customField6 = [self.customField6 copyWithZone:zone];
        copy.customField5 = [self.customField5 copyWithZone:zone];
        copy.open24Hours = [self.open24Hours copyWithZone:zone];
        copy.displayName = [self.displayName copyWithZone:zone];
        copy.customField4 = [self.customField4 copyWithZone:zone];
        copy.latitude = [self.latitude copyWithZone:zone];
        copy.customField3 = [self.customField3 copyWithZone:zone];
        copy.alias = [self.alias copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.customField2 = [self.customField2 copyWithZone:zone];
        copy.customField1 = [self.customField1 copyWithZone:zone];
        copy.langType = [self.langType copyWithZone:zone];
        copy.brandName = [self.brandName copyWithZone:zone];
        copy.contactDetails = [self.contactDetails copyWithZone:zone];
        copy.longitude = [self.longitude copyWithZone:zone];
        copy.distance = [self.distance copyWithZone:zone];
        copy.customField10 = [self.customField10 copyWithZone:zone];
        copy.categoryCode = self.categoryCode;
        copy.langISOCode = [self.langISOCode copyWithZone:zone];
        copy.customField9 = [self.customField9 copyWithZone:zone];
    }
    
    return copy;
}


@end
