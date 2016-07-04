//
//  MustMatchFields.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "MustMatchFields.h"


NSString *const kMustMatchFieldsMatchOnInputFields = @"matchOnInputFields";
NSString *const kMustMatchFieldsMatchOnPlaceName = @"matchOnPlaceName";
NSString *const kMustMatchFieldsMatchOnPostCode1 = @"matchOnPostCode1";
NSString *const kMustMatchFieldsMatchOnStreetName = @"matchOnStreetName";
NSString *const kMustMatchFieldsMatchOnAreaName3 = @"matchOnAreaName3";
NSString *const kMustMatchFieldsMatchOnAllStreetFields = @"matchOnAllStreetFields";
NSString *const kMustMatchFieldsMatchOnStreetType = @"matchOnStreetType";
NSString *const kMustMatchFieldsMatchOnAreaName1 = @"matchOnAreaName1";
NSString *const kMustMatchFieldsMatchOnPostCode2 = @"matchOnPostCode2";
NSString *const kMustMatchFieldsMatchOnAddressNumber = @"matchOnAddressNumber";
NSString *const kMustMatchFieldsMatchOnAreaName4 = @"matchOnAreaName4";
NSString *const kMustMatchFieldsMatchOnStreetDirectional = @"matchOnStreetDirectional";
NSString *const kMustMatchFieldsMatchOnAreaName2 = @"matchOnAreaName2";


@interface MustMatchFields ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation MustMatchFields

@synthesize matchOnInputFields = _matchOnInputFields;
@synthesize matchOnPlaceName = _matchOnPlaceName;
@synthesize matchOnPostCode1 = _matchOnPostCode1;
@synthesize matchOnStreetName = _matchOnStreetName;
@synthesize matchOnAreaName3 = _matchOnAreaName3;
@synthesize matchOnAllStreetFields = _matchOnAllStreetFields;
@synthesize matchOnStreetType = _matchOnStreetType;
@synthesize matchOnAreaName1 = _matchOnAreaName1;
@synthesize matchOnPostCode2 = _matchOnPostCode2;
@synthesize matchOnAddressNumber = _matchOnAddressNumber;
@synthesize matchOnAreaName4 = _matchOnAreaName4;
@synthesize matchOnStreetDirectional = _matchOnStreetDirectional;
@synthesize matchOnAreaName2 = _matchOnAreaName2;


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
            self.matchOnInputFields = [self objectOrNilForKey:kMustMatchFieldsMatchOnInputFields fromDictionary:dict];
            self.matchOnPlaceName = [self objectOrNilForKey:kMustMatchFieldsMatchOnPlaceName fromDictionary:dict];
            self.matchOnPostCode1 = [self objectOrNilForKey:kMustMatchFieldsMatchOnPostCode1 fromDictionary:dict];
            self.matchOnStreetName = [self objectOrNilForKey:kMustMatchFieldsMatchOnStreetName fromDictionary:dict];
            self.matchOnAreaName3 = [self objectOrNilForKey:kMustMatchFieldsMatchOnAreaName3 fromDictionary:dict];
            self.matchOnAllStreetFields = [self objectOrNilForKey:kMustMatchFieldsMatchOnAllStreetFields fromDictionary:dict];
            self.matchOnStreetType = [self objectOrNilForKey:kMustMatchFieldsMatchOnStreetType fromDictionary:dict];
            self.matchOnAreaName1 = [self objectOrNilForKey:kMustMatchFieldsMatchOnAreaName1 fromDictionary:dict];
            self.matchOnPostCode2 = [self objectOrNilForKey:kMustMatchFieldsMatchOnPostCode2 fromDictionary:dict];
            self.matchOnAddressNumber = [self objectOrNilForKey:kMustMatchFieldsMatchOnAddressNumber fromDictionary:dict];
            self.matchOnAreaName4 = [self objectOrNilForKey:kMustMatchFieldsMatchOnAreaName4 fromDictionary:dict];
            self.matchOnStreetDirectional = [self objectOrNilForKey:kMustMatchFieldsMatchOnStreetDirectional fromDictionary:dict];
            self.matchOnAreaName2 = [self objectOrNilForKey:kMustMatchFieldsMatchOnAreaName2 fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.matchOnInputFields forKey:kMustMatchFieldsMatchOnInputFields];
    [mutableDict setValue:self.matchOnPlaceName forKey:kMustMatchFieldsMatchOnPlaceName];
    [mutableDict setValue:self.matchOnPostCode1 forKey:kMustMatchFieldsMatchOnPostCode1];
    [mutableDict setValue:self.matchOnStreetName forKey:kMustMatchFieldsMatchOnStreetName];
    [mutableDict setValue:self.matchOnAreaName3 forKey:kMustMatchFieldsMatchOnAreaName3];
    [mutableDict setValue:self.matchOnAllStreetFields forKey:kMustMatchFieldsMatchOnAllStreetFields];
    [mutableDict setValue:self.matchOnStreetType forKey:kMustMatchFieldsMatchOnStreetType];
    [mutableDict setValue:self.matchOnAreaName1 forKey:kMustMatchFieldsMatchOnAreaName1];
    [mutableDict setValue:self.matchOnPostCode2 forKey:kMustMatchFieldsMatchOnPostCode2];
    [mutableDict setValue:self.matchOnAddressNumber forKey:kMustMatchFieldsMatchOnAddressNumber];
    [mutableDict setValue:self.matchOnAreaName4 forKey:kMustMatchFieldsMatchOnAreaName4];
    [mutableDict setValue:self.matchOnStreetDirectional forKey:kMustMatchFieldsMatchOnStreetDirectional];
    [mutableDict setValue:self.matchOnAreaName2 forKey:kMustMatchFieldsMatchOnAreaName2];

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

    self.matchOnInputFields = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnInputFields];
    self.matchOnPlaceName = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnPlaceName];
    self.matchOnPostCode1 = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnPostCode1];
    self.matchOnStreetName = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnStreetName];
    self.matchOnAreaName3 = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnAreaName3];
    self.matchOnAllStreetFields = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnAllStreetFields];
    self.matchOnStreetType = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnStreetType];
    self.matchOnAreaName1 = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnAreaName1];
    self.matchOnPostCode2 = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnPostCode2];
    self.matchOnAddressNumber = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnAddressNumber];
    self.matchOnAreaName4 = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnAreaName4];
    self.matchOnStreetDirectional = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnStreetDirectional];
    self.matchOnAreaName2 = [aDecoder decodeObjectForKey:kMustMatchFieldsMatchOnAreaName2];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_matchOnInputFields forKey:kMustMatchFieldsMatchOnInputFields];
    [aCoder encodeObject:_matchOnPlaceName forKey:kMustMatchFieldsMatchOnPlaceName];
    [aCoder encodeObject:_matchOnPostCode1 forKey:kMustMatchFieldsMatchOnPostCode1];
    [aCoder encodeObject:_matchOnStreetName forKey:kMustMatchFieldsMatchOnStreetName];
    [aCoder encodeObject:_matchOnAreaName3 forKey:kMustMatchFieldsMatchOnAreaName3];
    [aCoder encodeObject:_matchOnAllStreetFields forKey:kMustMatchFieldsMatchOnAllStreetFields];
    [aCoder encodeObject:_matchOnStreetType forKey:kMustMatchFieldsMatchOnStreetType];
    [aCoder encodeObject:_matchOnAreaName1 forKey:kMustMatchFieldsMatchOnAreaName1];
    [aCoder encodeObject:_matchOnPostCode2 forKey:kMustMatchFieldsMatchOnPostCode2];
    [aCoder encodeObject:_matchOnAddressNumber forKey:kMustMatchFieldsMatchOnAddressNumber];
    [aCoder encodeObject:_matchOnAreaName4 forKey:kMustMatchFieldsMatchOnAreaName4];
    [aCoder encodeObject:_matchOnStreetDirectional forKey:kMustMatchFieldsMatchOnStreetDirectional];
    [aCoder encodeObject:_matchOnAreaName2 forKey:kMustMatchFieldsMatchOnAreaName2];
}

- (id)copyWithZone:(NSZone *)zone
{
    MustMatchFields *copy = [[MustMatchFields alloc] init];
    
    if (copy) {

        copy.matchOnInputFields = [self.matchOnInputFields copyWithZone:zone];
        copy.matchOnPlaceName = [self.matchOnPlaceName copyWithZone:zone];
        copy.matchOnPostCode1 = [self.matchOnPostCode1 copyWithZone:zone];
        copy.matchOnStreetName = [self.matchOnStreetName copyWithZone:zone];
        copy.matchOnAreaName3 = [self.matchOnAreaName3 copyWithZone:zone];
        copy.matchOnAllStreetFields = [self.matchOnAllStreetFields copyWithZone:zone];
        copy.matchOnStreetType = [self.matchOnStreetType copyWithZone:zone];
        copy.matchOnAreaName1 = [self.matchOnAreaName1 copyWithZone:zone];
        copy.matchOnPostCode2 = [self.matchOnPostCode2 copyWithZone:zone];
        copy.matchOnAddressNumber = [self.matchOnAddressNumber copyWithZone:zone];
        copy.matchOnAreaName4 = [self.matchOnAreaName4 copyWithZone:zone];
        copy.matchOnStreetDirectional = [self.matchOnStreetDirectional copyWithZone:zone];
        copy.matchOnAreaName2 = [self.matchOnAreaName2 copyWithZone:zone];
    }
    
    return copy;
}


@end
