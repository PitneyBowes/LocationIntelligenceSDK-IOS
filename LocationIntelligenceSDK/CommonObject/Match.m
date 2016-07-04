//
//  Match.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Match.h"


NSString *const kMatchLocationCode = @"locationCode";
NSString *const kMatchPrecisionLevel = @"precisionLevel";
NSString *const kMatchConfidence = @"confidence";
NSString *const kMatchPercentGeocode = @"percentGeocode";
NSString *const kMatchMatchCode = @"matchCode";
NSString *const kMatchAdditionalProperties = @"additionalProperties";


@interface Match ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Match

@synthesize locationCode = _locationCode;
@synthesize precisionLevel = _precisionLevel;
@synthesize confidence = _confidence;
@synthesize percentGeocode = _percentGeocode;
@synthesize matchCode = _matchCode;
@synthesize additionalProperties = _additionalProperties;


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
            self.locationCode = [self objectOrNilForKey:kMatchLocationCode fromDictionary:dict];
            self.precisionLevel = [self objectOrNilForKey:kMatchPrecisionLevel fromDictionary:dict];
            self.confidence = [self objectOrNilForKey:kMatchConfidence fromDictionary:dict];
            self.percentGeocode = [self objectOrNilForKey:kMatchPercentGeocode fromDictionary:dict];
            self.matchCode = [self objectOrNilForKey:kMatchMatchCode fromDictionary:dict];
            self.additionalProperties = [self objectOrNilForKey:kMatchAdditionalProperties fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.locationCode forKey:kMatchLocationCode];
    [mutableDict setValue:self.precisionLevel forKey:kMatchPrecisionLevel];
    [mutableDict setValue:self.confidence forKey:kMatchConfidence];
    [mutableDict setValue:self.percentGeocode forKey:kMatchPercentGeocode];
    [mutableDict setValue:self.matchCode forKey:kMatchMatchCode];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAdditionalProperties] forKey:kMatchAdditionalProperties];

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

    self.locationCode = [aDecoder decodeObjectForKey:kMatchLocationCode];
    self.precisionLevel = [aDecoder decodeObjectForKey:kMatchPrecisionLevel];
    self.confidence = [aDecoder decodeObjectForKey:kMatchConfidence];
    self.percentGeocode = [aDecoder decodeObjectForKey:kMatchPercentGeocode];
    self.matchCode = [aDecoder decodeObjectForKey:kMatchMatchCode];
    self.additionalProperties = [aDecoder decodeObjectForKey:kMatchAdditionalProperties];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_locationCode forKey:kMatchLocationCode];
    [aCoder encodeObject:_precisionLevel forKey:kMatchPrecisionLevel];
    [aCoder encodeObject:_confidence forKey:kMatchConfidence];
    [aCoder encodeObject:_percentGeocode forKey:kMatchPercentGeocode];
    [aCoder encodeObject:_matchCode forKey:kMatchMatchCode];
    [aCoder encodeObject:_additionalProperties forKey:kMatchAdditionalProperties];
}

- (id)copyWithZone:(NSZone *)zone
{
    Match *copy = [[Match alloc] init];
    
    if (copy) {

        copy.locationCode = [self.locationCode copyWithZone:zone];
        copy.precisionLevel = [self.precisionLevel copyWithZone:zone];
        copy.confidence = [self.confidence copyWithZone:zone];
        copy.percentGeocode = [self.percentGeocode copyWithZone:zone];
        copy.matchCode = [self.matchCode copyWithZone:zone];
        copy.additionalProperties = [self.additionalProperties copyWithZone:zone];
    }
    
    return copy;
}


@end
