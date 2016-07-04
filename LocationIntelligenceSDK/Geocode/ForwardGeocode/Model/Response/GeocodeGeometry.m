//
//  Geometry.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "GeocodeGeometry.h"
#import "Crs.h"


NSString *const kGeocodeGeometryType = @"type";
NSString *const kGeocodeGeometryCoordinates = @"coordinates";
NSString *const kGeometryCrs = @"crs";


@interface GeocodeGeometry ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GeocodeGeometry

@synthesize type = _type;
@synthesize coordinates = _coordinates;
@synthesize crs = _crs;


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
            self.type = [self objectOrNilForKey:kGeocodeGeometryType fromDictionary:dict];
            self.coordinates = [self objectOrNilForKey:kGeocodeGeometryCoordinates fromDictionary:dict];
            self.crs = [Crs modelObjectWithDictionary:[dict objectForKey:kGeometryCrs]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.type forKey:kGeocodeGeometryType];
    NSMutableArray *tempArrayForCoordinates = [NSMutableArray array];
    for (NSObject *subArrayObject in self.coordinates) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForCoordinates addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForCoordinates addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForCoordinates] forKey:kGeocodeGeometryCoordinates];
    [mutableDict setValue:[self.crs dictionaryRepresentation] forKey:kGeometryCrs];

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

    self.type = [aDecoder decodeObjectForKey:kGeocodeGeometryType];
    self.coordinates = [aDecoder decodeObjectForKey:kGeocodeGeometryCoordinates];
    self.crs = [aDecoder decodeObjectForKey:kGeometryCrs];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_type forKey:kGeocodeGeometryType];
    [aCoder encodeObject:_coordinates forKey:kGeocodeGeometryCoordinates];
    [aCoder encodeObject:_crs forKey:kGeometryCrs];
}

- (id)copyWithZone:(NSZone *)zone
{
    GeocodeGeometry *copy = [[GeocodeGeometry alloc] init];
    
    if (copy) {

        copy.type = [self.type copyWithZone:zone];
        copy.coordinates = [self.coordinates copyWithZone:zone];
        copy.crs = [self.crs copyWithZone:zone];
    }
    
    return copy;
}


@end
