//
//  CountrySupportInfos.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "CountrySupportInfos.h"


NSString *const kCountrySupportInfosSupportedCountries = @"supportedCountries";
NSString *const kCountrySupportInfosSupportedDataTypes = @"supportedDataTypes";


@interface CountrySupportInfos ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation CountrySupportInfos

@synthesize supportedCountries = _supportedCountries;
@synthesize supportedDataTypes = _supportedDataTypes;


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
            self.supportedCountries = [self objectOrNilForKey:kCountrySupportInfosSupportedCountries fromDictionary:dict];
            self.supportedDataTypes = [self objectOrNilForKey:kCountrySupportInfosSupportedDataTypes fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForSupportedCountries] forKey:kCountrySupportInfosSupportedCountries];
    NSMutableArray *tempArrayForSupportedDataTypes = [NSMutableArray array];
    for (NSObject *subArrayObject in self.supportedDataTypes) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForSupportedDataTypes addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForSupportedDataTypes addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForSupportedDataTypes] forKey:kCountrySupportInfosSupportedDataTypes];

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

    self.supportedCountries = [aDecoder decodeObjectForKey:kCountrySupportInfosSupportedCountries];
    self.supportedDataTypes = [aDecoder decodeObjectForKey:kCountrySupportInfosSupportedDataTypes];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_supportedCountries forKey:kCountrySupportInfosSupportedCountries];
    [aCoder encodeObject:_supportedDataTypes forKey:kCountrySupportInfosSupportedDataTypes];
}

- (id)copyWithZone:(NSZone *)zone
{
    CountrySupportInfos *copy = [[CountrySupportInfos alloc] init];
    
    if (copy) {

        copy.supportedCountries = [self.supportedCountries copyWithZone:zone];
        copy.supportedDataTypes = [self.supportedDataTypes copyWithZone:zone];
    }
    
    return copy;
}


@end
