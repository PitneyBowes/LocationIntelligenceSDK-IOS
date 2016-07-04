//
//  Points.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Points.h"
#import "GeocodeGeometry.h"


NSString *const kPointsCountry = @"country";
NSString *const kPointsGeometry = @"geometry";


@interface Points ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Points

@synthesize country = _country;
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
            self.country = [self objectOrNilForKey:kPointsCountry fromDictionary:dict];
            self.geometry = [GeocodeGeometry modelObjectWithDictionary:[dict objectForKey:kPointsGeometry]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.country forKey:kPointsCountry];
    [mutableDict setValue:[self.geometry dictionaryRepresentation] forKey:kPointsGeometry];

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

    self.country = [aDecoder decodeObjectForKey:kPointsCountry];
    self.geometry = [aDecoder decodeObjectForKey:kPointsGeometry];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_country forKey:kPointsCountry];
    [aCoder encodeObject:_geometry forKey:kPointsGeometry];
}

- (id)copyWithZone:(NSZone *)zone
{
    Points *copy = [[Points alloc] init];
    
    if (copy) {

        copy.country = [self.country copyWithZone:zone];
        copy.geometry = [self.geometry copyWithZone:zone];
    }
    
    return copy;
}


@end
