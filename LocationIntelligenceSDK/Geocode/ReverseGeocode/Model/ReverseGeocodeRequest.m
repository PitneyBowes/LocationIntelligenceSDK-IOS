//
//  ReverseGeocodeRequest.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "ReverseGeocodeRequest.h"
#import "Points.h"
#import "Preferences.h"


NSString *const kReverseGeocodeRequestPoints = @"points";
NSString *const kReverseGeocodeRequestPreferences = @"preferences";


@interface ReverseGeocodeRequest ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ReverseGeocodeRequest

@synthesize points = _points;
@synthesize preferences = _preferences;


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
    NSObject *receivedPoints = [dict objectForKey:kReverseGeocodeRequestPoints];
    NSMutableArray *parsedPoints = [NSMutableArray array];
    if ([receivedPoints isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedPoints) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedPoints addObject:[Points modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedPoints isKindOfClass:[NSDictionary class]]) {
       [parsedPoints addObject:[Points modelObjectWithDictionary:(NSDictionary *)receivedPoints]];
    }

    self.points = [NSArray arrayWithArray:parsedPoints];
            self.preferences = [Preferences modelObjectWithDictionary:[dict objectForKey:kReverseGeocodeRequestPreferences]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForPoints = [NSMutableArray array];
    for (NSObject *subArrayObject in self.points) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForPoints addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForPoints addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForPoints] forKey:kReverseGeocodeRequestPoints];
    [mutableDict setValue:[self.preferences dictionaryRepresentation] forKey:kReverseGeocodeRequestPreferences];

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

    self.points = [aDecoder decodeObjectForKey:kReverseGeocodeRequestPoints];
    self.preferences = [aDecoder decodeObjectForKey:kReverseGeocodeRequestPreferences];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_points forKey:kReverseGeocodeRequestPoints];
    [aCoder encodeObject:_preferences forKey:kReverseGeocodeRequestPreferences];
}

- (id)copyWithZone:(NSZone *)zone
{
    ReverseGeocodeRequest *copy = [[ReverseGeocodeRequest alloc] init];
    
    if (copy) {

        copy.points = [self.points copyWithZone:zone];
        copy.preferences = [self.preferences copyWithZone:zone];
    }
    
    return copy;
}


@end
