//
//  BaseClass.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "GeocodeRequest.h"
#import "Preferences.h"
#import "AddressGeocode.h"


NSString *const kBaseClassType = @"type";
NSString *const kBaseClassPreferences = @"preferences";
NSString *const kBaseClassAddresses = @"addresses";


@interface GeocodeRequest ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GeocodeRequest

@synthesize type = _type;
@synthesize preferences = _preferences;
@synthesize addressGeocode = _addressGeocode;


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
            self.type = [self objectOrNilForKey:kBaseClassType fromDictionary:dict];
            self.preferences = [Preferences modelObjectWithDictionary:[dict objectForKey:kBaseClassPreferences]];
    NSObject *receivedAddresses = [dict objectForKey:kBaseClassAddresses];
    NSMutableArray *parsedAddresses = [NSMutableArray array];
    if ([receivedAddresses isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedAddresses) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedAddresses addObject:[AddressGeocode modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedAddresses isKindOfClass:[NSDictionary class]]) {
       [parsedAddresses addObject:[AddressGeocode modelObjectWithDictionary:(NSDictionary *)receivedAddresses]];
    }

    self.addressGeocode = [NSArray arrayWithArray:parsedAddresses];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.type forKey:kBaseClassType];
    [mutableDict setValue:[self.preferences dictionaryRepresentation] forKey:kBaseClassPreferences];
    NSMutableArray *tempArrayForAddresses = [NSMutableArray array];
    for (NSObject *subArrayObject in self.addressGeocode) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAddresses addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAddresses addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAddresses] forKey:kBaseClassAddresses];

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

    self.type = [aDecoder decodeObjectForKey:kBaseClassType];
    self.preferences = [aDecoder decodeObjectForKey:kBaseClassPreferences];
    self.addressGeocode = [aDecoder decodeObjectForKey:kBaseClassAddresses];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_type forKey:kBaseClassType];
    [aCoder encodeObject:_preferences forKey:kBaseClassPreferences];
    [aCoder encodeObject:_addressGeocode forKey:kBaseClassAddresses];
}

- (id)copyWithZone:(NSZone *)zone
{
    GeocodeRequest *copy = [[GeocodeRequest alloc] init];
    
    if (copy) {

        copy.type = [self.type copyWithZone:zone];
        copy.preferences = [self.preferences copyWithZone:zone];
        copy.addressGeocode = [self.addressGeocode copyWithZone:zone];
    }
    
    return copy;
}


@end
