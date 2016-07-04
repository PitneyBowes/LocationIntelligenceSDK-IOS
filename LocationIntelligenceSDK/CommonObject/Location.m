//
//  Location.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Location.h"
#import "Geometry.h"
#import "Poi.h"
#import "Distance.h"
#import "Match.h"
#import "PlaceByLocationResponse.h"
#import "Address.h"

NSString *const kLocationMatch = @"match";
NSString *const kLocationAddress = @"address";
NSString *const kLocationPlace = @"place";
NSString *const kLocationGeometry = @"geometry";
NSString *const kLocationPoi = @"poi";
NSString *const kLocationDistance = @"distance";



@interface Location ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Location

@synthesize match = _match;
@synthesize address = _address;
@synthesize place = _place;
@synthesize geometry = _geometry;
@synthesize poi = _poi;
@synthesize distance = _distance;


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
            self.match = [Match modelObjectWithDictionary:[dict objectForKey:kLocationMatch]];
             self.address = [Address modelObjectWithDictionary:[dict objectForKey:kLocationAddress]];
            self.place = [PlaceByLocationResponse modelObjectWithDictionary:[dict objectForKey:kLocationPlace]];
            self.geometry = [Geometry modelObjectWithDictionary:[dict objectForKey:kLocationGeometry]];
            self.poi = [Poi modelObjectWithDictionary:[dict objectForKey:kLocationPoi]];
            self.distance = [Distance modelObjectWithDictionary:[dict objectForKey:kLocationDistance]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.match dictionaryRepresentation] forKey:kLocationMatch];
    [mutableDict setValue:[self.address dictionaryRepresentation] forKey:kLocationAddress];
    [mutableDict setValue:[self.place dictionaryRepresentation] forKey:kLocationPlace];
    [mutableDict setValue:[self.geometry dictionaryRepresentation] forKey:kLocationGeometry];
    [mutableDict setValue:[self.poi dictionaryRepresentation] forKey:kLocationPoi];
    [mutableDict setValue:[self.distance dictionaryRepresentation] forKey:kLocationDistance];

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

    self.match = [aDecoder decodeObjectForKey:kLocationMatch];
    self.address = [aDecoder decodeObjectForKey:kLocationAddress];
    self.place = [aDecoder decodeObjectForKey:kLocationPlace];
    self.geometry = [aDecoder decodeObjectForKey:kLocationGeometry];
    self.poi = [aDecoder decodeObjectForKey:kLocationPoi];
    self.distance = [aDecoder decodeObjectForKey:kLocationDistance];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_match forKey:kLocationMatch];
    [aCoder encodeObject:_address forKey:kLocationAddress];
    [aCoder encodeObject:_place forKey:kLocationPlace];
    [aCoder encodeObject:_geometry forKey:kLocationGeometry];
    [aCoder encodeObject:_poi forKey:kLocationPoi];
    [aCoder encodeObject:_distance forKey:kLocationDistance];
}

- (id)copyWithZone:(NSZone *)zone
{
    Location *copy = [[Location alloc] init];
    
    if (copy) {

        copy.match = [self.match copyWithZone:zone];
        copy.address = [self.address copyWithZone:zone];
        copy.place = [self.place copyWithZone:zone];
        copy.geometry = [self.geometry copyWithZone:zone];
        copy.poi = [self.poi copyWithZone:zone];
        copy.distance = [self.distance copyWithZone:zone];
    }
    
    return copy;
}


@end
