//
//  Jurisdiction.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Jurisdiction.h"
#import "GeoTaxPlace.h"
#import "GeoTaxCounty.h"
#import "State.h"
#import "Spds.h"


NSString *const kJurisdictionPlace = @"place";
NSString *const kJurisdictionCounty = @"county";
NSString *const kJurisdictionState = @"state";
NSString *const kJurisdictionSpds = @"spds";


@interface Jurisdiction ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Jurisdiction

@synthesize geoTaxPlace = _place;
@synthesize geoTaxCounty = _county;
@synthesize state = _state;
@synthesize spds = _spds;


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
            self.geoTaxPlace = [GeoTaxPlace modelObjectWithDictionary:[dict objectForKey:kJurisdictionPlace]];
            self.geoTaxCounty = [GeoTaxCounty modelObjectWithDictionary:[dict objectForKey:kJurisdictionCounty]];
            self.state = [State modelObjectWithDictionary:[dict objectForKey:kJurisdictionState]];
    NSObject *receivedSpds = [dict objectForKey:kJurisdictionSpds];
    NSMutableArray *parsedSpds = [NSMutableArray array];
    if ([receivedSpds isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedSpds) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedSpds addObject:[Spds modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedSpds isKindOfClass:[NSDictionary class]]) {
       [parsedSpds addObject:[Spds modelObjectWithDictionary:(NSDictionary *)receivedSpds]];
    }

    self.spds = [NSArray arrayWithArray:parsedSpds];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.geoTaxPlace dictionaryRepresentation] forKey:kJurisdictionPlace];
    [mutableDict setValue:[self.geoTaxCounty dictionaryRepresentation] forKey:kJurisdictionCounty];
    [mutableDict setValue:[self.state dictionaryRepresentation] forKey:kJurisdictionState];
    NSMutableArray *tempArrayForSpds = [NSMutableArray array];
    for (NSObject *subArrayObject in self.spds) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForSpds addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForSpds addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForSpds] forKey:kJurisdictionSpds];

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

    self.geoTaxPlace = [aDecoder decodeObjectForKey:kJurisdictionPlace];
    self.geoTaxCounty = [aDecoder decodeObjectForKey:kJurisdictionCounty];
    self.state = [aDecoder decodeObjectForKey:kJurisdictionState];
    self.spds = [aDecoder decodeObjectForKey:kJurisdictionSpds];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_place forKey:kJurisdictionPlace];
    [aCoder encodeObject:_county forKey:kJurisdictionCounty];
    [aCoder encodeObject:_state forKey:kJurisdictionState];
    [aCoder encodeObject:_spds forKey:kJurisdictionSpds];
}

- (id)copyWithZone:(NSZone *)zone
{
    Jurisdiction *copy = [[Jurisdiction alloc] init];
    
    if (copy) {

        copy.geoTaxPlace = [self.geoTaxPlace copyWithZone:zone];
        copy.geoTaxCounty = [self.geoTaxCounty copyWithZone:zone];
        copy.state = [self.state copyWithZone:zone];
        copy.spds = [self.spds copyWithZone:zone];
    }
    
    return copy;
}


@end
