//
//  GeoEnhance.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "GeoEnhance.h"
#import "Location.h"


NSString *const kGeoEnhanceLocation = @"location";


@interface GeoEnhance ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GeoEnhance

@synthesize location = _location;


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
    NSObject *receivedLocation = [dict objectForKey:kGeoEnhanceLocation];
    NSMutableArray *parsedLocation = [NSMutableArray array];
    if ([receivedLocation isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedLocation) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedLocation addObject:[Location modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedLocation isKindOfClass:[NSDictionary class]]) {
       [parsedLocation addObject:[Location modelObjectWithDictionary:(NSDictionary *)receivedLocation]];
    }

    self.location = [NSArray arrayWithArray:parsedLocation];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForLocation = [NSMutableArray array];
    for (NSObject *subArrayObject in self.location) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForLocation addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForLocation addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForLocation] forKey:kGeoEnhanceLocation];

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

    self.location = [aDecoder decodeObjectForKey:kGeoEnhanceLocation];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_location forKey:kGeoEnhanceLocation];
}

- (id)copyWithZone:(NSZone *)zone
{
    GeoEnhance *copy = [[GeoEnhance alloc] init];
    
    if (copy) {

        copy.location = [self.location copyWithZone:zone];
    }
    
    return copy;
}


@end
