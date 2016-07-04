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

#import "GeoSearchLocation.h"
#import "Address.h"
#import "Distance.h"
#import "Geometry.h"


NSString *const kLocationSearchAddress = @"address";
NSString *const kLocationSearchDistance = @"distance";
NSString *const kLocationSearchGeometry = @"geometry";


@interface GeoSearchLocation ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GeoSearchLocation

@synthesize address = _address;
@synthesize distance = _distance;
@synthesize geometry = _geometry;


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
            self.address = [Address modelObjectWithDictionary:[dict objectForKey:kLocationSearchAddress]];
            self.distance = [Distance modelObjectWithDictionary:[dict objectForKey:kLocationSearchDistance]];
            self.geometry = [Geometry modelObjectWithDictionary:[dict objectForKey:kLocationSearchGeometry]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.address dictionaryRepresentation] forKey:kLocationSearchAddress];
    [mutableDict setValue:[self.distance dictionaryRepresentation] forKey:kLocationSearchDistance];
    [mutableDict setValue:[self.geometry dictionaryRepresentation] forKey:kLocationSearchGeometry];

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

    self.address = [aDecoder decodeObjectForKey:kLocationSearchAddress];
    self.distance = [aDecoder decodeObjectForKey:kLocationSearchDistance];
    self.geometry = [aDecoder decodeObjectForKey:kLocationSearchGeometry];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_address forKey:kLocationSearchAddress];
    [aCoder encodeObject:_distance forKey:kLocationSearchDistance];
    [aCoder encodeObject:_geometry forKey:kLocationSearchGeometry];
}

- (id)copyWithZone:(NSZone *)zone
{
    GeoSearchLocation *copy = [[GeoSearchLocation alloc] init];
    
    if (copy) {

        copy.address = [self.address copyWithZone:zone];
        copy.distance = [self.distance copyWithZone:zone];
        copy.geometry = [self.geometry copyWithZone:zone];
    }
    
    return copy;
}


@end
