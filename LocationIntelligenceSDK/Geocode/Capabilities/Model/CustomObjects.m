//
//  CustomObjects.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "CustomObjects.h"
#import "GeocodeProperties.h"


NSString *const kCustomObjectsName = @"name";
NSString *const kCustomObjectsProperties = @"properties";
NSString *const kCustomObjectsDescription = @"description";


@interface CustomObjects ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation CustomObjects

@synthesize name = _name;
@synthesize properties = _properties;
@synthesize customObjectsDescription = _customObjectsDescription;


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
            self.name = [self objectOrNilForKey:kCustomObjectsName fromDictionary:dict];
    NSObject *receivedProperties = [dict objectForKey:kCustomObjectsProperties];
    NSMutableArray *parsedProperties = [NSMutableArray array];
    if ([receivedProperties isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedProperties) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedProperties addObject:[GeocodeProperties modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedProperties isKindOfClass:[NSDictionary class]]) {
       [parsedProperties addObject:[GeocodeProperties modelObjectWithDictionary:(NSDictionary *)receivedProperties]];
    }

    self.properties = [NSArray arrayWithArray:parsedProperties];
            self.customObjectsDescription = [self objectOrNilForKey:kCustomObjectsDescription fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.name forKey:kCustomObjectsName];
    NSMutableArray *tempArrayForProperties = [NSMutableArray array];
    for (NSObject *subArrayObject in self.properties) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForProperties addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForProperties addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForProperties] forKey:kCustomObjectsProperties];
    [mutableDict setValue:self.customObjectsDescription forKey:kCustomObjectsDescription];

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

    self.name = [aDecoder decodeObjectForKey:kCustomObjectsName];
    self.properties = [aDecoder decodeObjectForKey:kCustomObjectsProperties];
    self.customObjectsDescription = [aDecoder decodeObjectForKey:kCustomObjectsDescription];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_name forKey:kCustomObjectsName];
    [aCoder encodeObject:_properties forKey:kCustomObjectsProperties];
    [aCoder encodeObject:_customObjectsDescription forKey:kCustomObjectsDescription];
}

- (id)copyWithZone:(NSZone *)zone
{
    CustomObjects *copy = [[CustomObjects alloc] init];
    
    if (copy) {

        copy.name = [self.name copyWithZone:zone];
        copy.properties = [self.properties copyWithZone:zone];
        copy.customObjectsDescription = [self.customObjectsDescription copyWithZone:zone];
    }
    
    return copy;
}


@end
