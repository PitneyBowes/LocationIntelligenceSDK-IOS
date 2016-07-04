//
//  GeocodeCapabilitiesResponse.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "GeocodeCapabilitiesResponse.h"
#import "SupportedOperations.h"
#import "CustomObjects.h"


NSString *const kGeocodeCapabilitiesResponseServiceDescription = @"serviceDescription";
NSString *const kGeocodeCapabilitiesResponseCoreVersion = @"coreVersion";
NSString *const kGeocodeCapabilitiesResponseServiceName = @"serviceName";
NSString *const kGeocodeCapabilitiesResponseSupportedOperations = @"supportedOperations";
NSString *const kGeocodeCapabilitiesResponseSupportedCountries = @"supportedCountries";
NSString *const kGeocodeCapabilitiesResponseCustomObjects = @"customObjects";


@interface GeocodeCapabilitiesResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GeocodeCapabilitiesResponse

@synthesize serviceDescription = _serviceDescription;
@synthesize coreVersion = _coreVersion;
@synthesize serviceName = _serviceName;
@synthesize supportedOperations = _supportedOperations;
@synthesize supportedCountries = _supportedCountries;
@synthesize customObjects = _customObjects;


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
            self.serviceDescription = [self objectOrNilForKey:kGeocodeCapabilitiesResponseServiceDescription fromDictionary:dict];
            self.coreVersion = [self objectOrNilForKey:kGeocodeCapabilitiesResponseCoreVersion fromDictionary:dict];
            self.serviceName = [self objectOrNilForKey:kGeocodeCapabilitiesResponseServiceName fromDictionary:dict];
    NSObject *receivedSupportedOperations = [dict objectForKey:kGeocodeCapabilitiesResponseSupportedOperations];
    NSMutableArray *parsedSupportedOperations = [NSMutableArray array];
    if ([receivedSupportedOperations isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedSupportedOperations) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedSupportedOperations addObject:[SupportedOperations modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedSupportedOperations isKindOfClass:[NSDictionary class]]) {
       [parsedSupportedOperations addObject:[SupportedOperations modelObjectWithDictionary:(NSDictionary *)receivedSupportedOperations]];
    }

    self.supportedOperations = [NSArray arrayWithArray:parsedSupportedOperations];
            self.supportedCountries = [self objectOrNilForKey:kGeocodeCapabilitiesResponseSupportedCountries fromDictionary:dict];
    NSObject *receivedCustomObjects = [dict objectForKey:kGeocodeCapabilitiesResponseCustomObjects];
    NSMutableArray *parsedCustomObjects = [NSMutableArray array];
    if ([receivedCustomObjects isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedCustomObjects) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedCustomObjects addObject:[CustomObjects modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedCustomObjects isKindOfClass:[NSDictionary class]]) {
       [parsedCustomObjects addObject:[CustomObjects modelObjectWithDictionary:(NSDictionary *)receivedCustomObjects]];
    }

    self.customObjects = [NSArray arrayWithArray:parsedCustomObjects];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.serviceDescription forKey:kGeocodeCapabilitiesResponseServiceDescription];
    [mutableDict setValue:self.coreVersion forKey:kGeocodeCapabilitiesResponseCoreVersion];
    [mutableDict setValue:self.serviceName forKey:kGeocodeCapabilitiesResponseServiceName];
    NSMutableArray *tempArrayForSupportedOperations = [NSMutableArray array];
    for (NSObject *subArrayObject in self.supportedOperations) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForSupportedOperations addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForSupportedOperations addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForSupportedOperations] forKey:kGeocodeCapabilitiesResponseSupportedOperations];
    NSMutableArray *tempArrayForSupportedCountries = [NSMutableArray array];
    for (NSObject *subArrayObject in self.supportedCountries) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForSupportedCountries addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForSupportedCountries addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForSupportedCountries] forKey:kGeocodeCapabilitiesResponseSupportedCountries];
    NSMutableArray *tempArrayForCustomObjects = [NSMutableArray array];
    for (NSObject *subArrayObject in self.customObjects) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForCustomObjects addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForCustomObjects addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForCustomObjects] forKey:kGeocodeCapabilitiesResponseCustomObjects];

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

    self.serviceDescription = [aDecoder decodeObjectForKey:kGeocodeCapabilitiesResponseServiceDescription];
    self.coreVersion = [aDecoder decodeObjectForKey:kGeocodeCapabilitiesResponseCoreVersion];
    self.serviceName = [aDecoder decodeObjectForKey:kGeocodeCapabilitiesResponseServiceName];
    self.supportedOperations = [aDecoder decodeObjectForKey:kGeocodeCapabilitiesResponseSupportedOperations];
    self.supportedCountries = [aDecoder decodeObjectForKey:kGeocodeCapabilitiesResponseSupportedCountries];
    self.customObjects = [aDecoder decodeObjectForKey:kGeocodeCapabilitiesResponseCustomObjects];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_serviceDescription forKey:kGeocodeCapabilitiesResponseServiceDescription];
    [aCoder encodeObject:_coreVersion forKey:kGeocodeCapabilitiesResponseCoreVersion];
    [aCoder encodeObject:_serviceName forKey:kGeocodeCapabilitiesResponseServiceName];
    [aCoder encodeObject:_supportedOperations forKey:kGeocodeCapabilitiesResponseSupportedOperations];
    [aCoder encodeObject:_supportedCountries forKey:kGeocodeCapabilitiesResponseSupportedCountries];
    [aCoder encodeObject:_customObjects forKey:kGeocodeCapabilitiesResponseCustomObjects];
}

- (id)copyWithZone:(NSZone *)zone
{
    GeocodeCapabilitiesResponse *copy = [[GeocodeCapabilitiesResponse alloc] init];
    
    if (copy) {

        copy.serviceDescription = [self.serviceDescription copyWithZone:zone];
        copy.coreVersion = [self.coreVersion copyWithZone:zone];
        copy.serviceName = [self.serviceName copyWithZone:zone];
        copy.supportedOperations = [self.supportedOperations copyWithZone:zone];
        copy.supportedCountries = [self.supportedCountries copyWithZone:zone];
        copy.customObjects = [self.customObjects copyWithZone:zone];
    }
    
    return copy;
}


@end
