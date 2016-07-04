//
//  ConfiguredDictionaryResponse.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "ConfiguredDictionaryResponse.h"
#import "Dictionaries.h"


NSString *const kConfiguredDictionaryResponseDictionaries = @"dictionaries";


@interface ConfiguredDictionaryResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ConfiguredDictionaryResponse

@synthesize dictionaries = _dictionaries;


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
    NSObject *receivedDictionaries = [dict objectForKey:kConfiguredDictionaryResponseDictionaries];
    NSMutableArray *parsedDictionaries = [NSMutableArray array];
    if ([receivedDictionaries isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedDictionaries) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedDictionaries addObject:[Dictionaries modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedDictionaries isKindOfClass:[NSDictionary class]]) {
       [parsedDictionaries addObject:[Dictionaries modelObjectWithDictionary:(NSDictionary *)receivedDictionaries]];
    }

    self.dictionaries = [NSArray arrayWithArray:parsedDictionaries];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForDictionaries = [NSMutableArray array];
    for (NSObject *subArrayObject in self.dictionaries) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForDictionaries addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForDictionaries addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForDictionaries] forKey:kConfiguredDictionaryResponseDictionaries];

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

    self.dictionaries = [aDecoder decodeObjectForKey:kConfiguredDictionaryResponseDictionaries];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_dictionaries forKey:kConfiguredDictionaryResponseDictionaries];
}

- (id)copyWithZone:(NSZone *)zone
{
    ConfiguredDictionaryResponse *copy = [[ConfiguredDictionaryResponse alloc] init];
    
    if (copy) {

        copy.dictionaries = [self.dictionaries copyWithZone:zone];
    }
    
    return copy;
}


@end
