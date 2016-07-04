//
//  Ranges.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Ranges.h"
#import "CustomValues.h"
#import "Units.h"


NSString *const kRangesHighHouse = @"highHouse";
NSString *const kRangesLowHouse = @"lowHouse";
NSString *const kRangesCustomValues = @"customValues";
NSString *const kRangesPlaceName = @"placeName";
NSString *const kRangesUnits = @"units";
NSString *const kRangesOddEvenIndicator = @"oddEvenIndicator";
NSString *const kRangesSide = @"side";


@interface Ranges ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Ranges

@synthesize highHouse = _highHouse;
@synthesize lowHouse = _lowHouse;
@synthesize customValues = _customValues;
@synthesize placeName = _placeName;
@synthesize units = _units;
@synthesize oddEvenIndicator = _oddEvenIndicator;
@synthesize side = _side;


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
            self.highHouse = [self objectOrNilForKey:kRangesHighHouse fromDictionary:dict];
            self.lowHouse = [self objectOrNilForKey:kRangesLowHouse fromDictionary:dict];
            self.customValues = [CustomValues modelObjectWithDictionary:[dict objectForKey:kRangesCustomValues]];
            self.placeName = [self objectOrNilForKey:kRangesPlaceName fromDictionary:dict];
    NSObject *receivedUnits = [dict objectForKey:kRangesUnits];
    NSMutableArray *parsedUnits = [NSMutableArray array];
    if ([receivedUnits isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedUnits) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedUnits addObject:[Units modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedUnits isKindOfClass:[NSDictionary class]]) {
       [parsedUnits addObject:[Units modelObjectWithDictionary:(NSDictionary *)receivedUnits]];
    }

    self.units = [NSArray arrayWithArray:parsedUnits];
            self.oddEvenIndicator = [self objectOrNilForKey:kRangesOddEvenIndicator fromDictionary:dict];
            self.side = [self objectOrNilForKey:kRangesSide fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.highHouse forKey:kRangesHighHouse];
    [mutableDict setValue:self.lowHouse forKey:kRangesLowHouse];
    [mutableDict setValue:[self.customValues dictionaryRepresentation] forKey:kRangesCustomValues];
    [mutableDict setValue:self.placeName forKey:kRangesPlaceName];
    NSMutableArray *tempArrayForUnits = [NSMutableArray array];
    for (NSObject *subArrayObject in self.units) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForUnits addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForUnits addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForUnits] forKey:kRangesUnits];
    [mutableDict setValue:self.oddEvenIndicator forKey:kRangesOddEvenIndicator];
    [mutableDict setValue:self.side forKey:kRangesSide];

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

    self.highHouse = [aDecoder decodeObjectForKey:kRangesHighHouse];
    self.lowHouse = [aDecoder decodeObjectForKey:kRangesLowHouse];
    self.customValues = [aDecoder decodeObjectForKey:kRangesCustomValues];
    self.placeName = [aDecoder decodeObjectForKey:kRangesPlaceName];
    self.units = [aDecoder decodeObjectForKey:kRangesUnits];
    self.oddEvenIndicator = [aDecoder decodeObjectForKey:kRangesOddEvenIndicator];
    self.side = [aDecoder decodeObjectForKey:kRangesSide];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_highHouse forKey:kRangesHighHouse];
    [aCoder encodeObject:_lowHouse forKey:kRangesLowHouse];
    [aCoder encodeObject:_customValues forKey:kRangesCustomValues];
    [aCoder encodeObject:_placeName forKey:kRangesPlaceName];
    [aCoder encodeObject:_units forKey:kRangesUnits];
    [aCoder encodeObject:_oddEvenIndicator forKey:kRangesOddEvenIndicator];
    [aCoder encodeObject:_side forKey:kRangesSide];
}

- (id)copyWithZone:(NSZone *)zone
{
    Ranges *copy = [[Ranges alloc] init];
    
    if (copy) {

        copy.highHouse = [self.highHouse copyWithZone:zone];
        copy.lowHouse = [self.lowHouse copyWithZone:zone];
        copy.customValues = [self.customValues copyWithZone:zone];
        copy.placeName = [self.placeName copyWithZone:zone];
        copy.units = [self.units copyWithZone:zone];
        copy.oddEvenIndicator = [self.oddEvenIndicator copyWithZone:zone];
        copy.side = [self.side copyWithZone:zone];
    }
    
    return copy;
}


@end
