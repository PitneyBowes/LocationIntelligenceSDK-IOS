//
//  Units.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Units.h"
#import "CustomValues.h"


NSString *const kUnitsUnitType = @"unitType";
NSString *const kUnitsLowUnitValue = @"lowUnitValue";
NSString *const kUnitsCustomValues = @"customValues";
NSString *const kUnitsHighUnitValue = @"highUnitValue";
NSString *const kUnitsPlaceName = @"placeName";


@interface Units ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Units

@synthesize unitType = _unitType;
@synthesize lowUnitValue = _lowUnitValue;
@synthesize customValues = _customValues;
@synthesize highUnitValue = _highUnitValue;
@synthesize placeName = _placeName;


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
            self.unitType = [self objectOrNilForKey:kUnitsUnitType fromDictionary:dict];
            self.lowUnitValue = [self objectOrNilForKey:kUnitsLowUnitValue fromDictionary:dict];
            self.customValues = [CustomValues modelObjectWithDictionary:[dict objectForKey:kUnitsCustomValues]];
            self.highUnitValue = [self objectOrNilForKey:kUnitsHighUnitValue fromDictionary:dict];
            self.placeName = [self objectOrNilForKey:kUnitsPlaceName fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.unitType forKey:kUnitsUnitType];
    [mutableDict setValue:self.lowUnitValue forKey:kUnitsLowUnitValue];
    [mutableDict setValue:[self.customValues dictionaryRepresentation] forKey:kUnitsCustomValues];
    [mutableDict setValue:self.highUnitValue forKey:kUnitsHighUnitValue];
    [mutableDict setValue:self.placeName forKey:kUnitsPlaceName];

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

    self.unitType = [aDecoder decodeObjectForKey:kUnitsUnitType];
    self.lowUnitValue = [aDecoder decodeObjectForKey:kUnitsLowUnitValue];
    self.customValues = [aDecoder decodeObjectForKey:kUnitsCustomValues];
    self.highUnitValue = [aDecoder decodeObjectForKey:kUnitsHighUnitValue];
    self.placeName = [aDecoder decodeObjectForKey:kUnitsPlaceName];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_unitType forKey:kUnitsUnitType];
    [aCoder encodeObject:_lowUnitValue forKey:kUnitsLowUnitValue];
    [aCoder encodeObject:_customValues forKey:kUnitsCustomValues];
    [aCoder encodeObject:_highUnitValue forKey:kUnitsHighUnitValue];
    [aCoder encodeObject:_placeName forKey:kUnitsPlaceName];
}

- (id)copyWithZone:(NSZone *)zone
{
    Units *copy = [[Units alloc] init];
    
    if (copy) {

        copy.unitType = [self.unitType copyWithZone:zone];
        copy.lowUnitValue = [self.lowUnitValue copyWithZone:zone];
        copy.customValues = [self.customValues copyWithZone:zone];
        copy.highUnitValue = [self.highUnitValue copyWithZone:zone];
        copy.placeName = [self.placeName copyWithZone:zone];
    }
    
    return copy;
}


@end
