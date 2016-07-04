//
//  Distance.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Distance.h"


NSString *const kDistanceUnit = @"Unit";
NSString *const kDistanceValue = @"value";


@interface Distance ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Distance

@synthesize unit = _unit;
@synthesize value = _value;


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
            self.unit = [self objectOrNilForKey:kDistanceUnit fromDictionary:dict];
            self.value = [self objectOrNilForKey:kDistanceValue fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.unit forKey:kDistanceUnit];
    [mutableDict setValue:self.value forKey:kDistanceValue];

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

    self.unit = [aDecoder decodeObjectForKey:kDistanceUnit];
    self.value = [aDecoder decodeObjectForKey:kDistanceValue];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_unit forKey:kDistanceUnit];
    [aCoder encodeObject:_value forKey:kDistanceValue];
}

- (id)copyWithZone:(NSZone *)zone
{
    Distance *copy = [[Distance alloc] init];
    
    if (copy) {

        copy.unit = [self.unit copyWithZone:zone];
        copy.value = [self.value copyWithZone:zone];
    }
    
    return copy;
}


@end
