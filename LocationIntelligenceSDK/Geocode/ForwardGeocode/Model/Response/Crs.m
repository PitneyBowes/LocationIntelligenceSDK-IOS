//
//  Crs.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Crs.h"
#import "GeocodeProperties.h"


NSString *const kCrsType = @"type";
NSString *const kCrsProperties = @"properties";


@interface Crs ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Crs

@synthesize type = _type;
@synthesize properties = _properties;


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
            self.type = [self objectOrNilForKey:kCrsType fromDictionary:dict];
            self.properties = [GeocodeProperties modelObjectWithDictionary:[dict objectForKey:kCrsProperties]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.type forKey:kCrsType];
    [mutableDict setValue:[self.properties dictionaryRepresentation] forKey:kCrsProperties];

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

    self.type = [aDecoder decodeObjectForKey:kCrsType];
    self.properties = [aDecoder decodeObjectForKey:kCrsProperties];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_type forKey:kCrsType];
    [aCoder encodeObject:_properties forKey:kCrsProperties];
}

- (id)copyWithZone:(NSZone *)zone
{
    Crs *copy = [[Crs alloc] init];
    
    if (copy) {

        copy.type = [self.type copyWithZone:zone];
        copy.properties = [self.properties copyWithZone:zone];
    }
    
    return copy;
}


@end
