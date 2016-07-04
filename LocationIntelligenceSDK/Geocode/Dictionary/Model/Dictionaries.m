//
//  Dictionaries.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Dictionaries.h"
#import "CountrySupportInfos.h"


NSString *const kDictionariesCountrySupportInfos = @"countrySupportInfos";
NSString *const kDictionariesVintage = @"vintage";
NSString *const kDictionariesSource = @"source";
NSString *const kDictionariesDescription = @"description";


@interface Dictionaries ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Dictionaries

@synthesize countrySupportInfos = _countrySupportInfos;
@synthesize vintage = _vintage;
@synthesize source = _source;
@synthesize dictionariesDescription = _dictionariesDescription;


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
    NSObject *receivedCountrySupportInfos = [dict objectForKey:kDictionariesCountrySupportInfos];
    NSMutableArray *parsedCountrySupportInfos = [NSMutableArray array];
    if ([receivedCountrySupportInfos isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedCountrySupportInfos) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedCountrySupportInfos addObject:[CountrySupportInfos modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedCountrySupportInfos isKindOfClass:[NSDictionary class]]) {
       [parsedCountrySupportInfos addObject:[CountrySupportInfos modelObjectWithDictionary:(NSDictionary *)receivedCountrySupportInfos]];
    }

    self.countrySupportInfos = [NSArray arrayWithArray:parsedCountrySupportInfos];
            self.vintage = [self objectOrNilForKey:kDictionariesVintage fromDictionary:dict];
            self.source = [self objectOrNilForKey:kDictionariesSource fromDictionary:dict];
            self.dictionariesDescription = [self objectOrNilForKey:kDictionariesDescription fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForCountrySupportInfos = [NSMutableArray array];
    for (NSObject *subArrayObject in self.countrySupportInfos) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForCountrySupportInfos addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForCountrySupportInfos addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForCountrySupportInfos] forKey:kDictionariesCountrySupportInfos];
    [mutableDict setValue:self.vintage forKey:kDictionariesVintage];
    [mutableDict setValue:self.source forKey:kDictionariesSource];
    [mutableDict setValue:self.dictionariesDescription forKey:kDictionariesDescription];

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

    self.countrySupportInfos = [aDecoder decodeObjectForKey:kDictionariesCountrySupportInfos];
    self.vintage = [aDecoder decodeObjectForKey:kDictionariesVintage];
    self.source = [aDecoder decodeObjectForKey:kDictionariesSource];
    self.dictionariesDescription = [aDecoder decodeObjectForKey:kDictionariesDescription];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_countrySupportInfos forKey:kDictionariesCountrySupportInfos];
    [aCoder encodeObject:_vintage forKey:kDictionariesVintage];
    [aCoder encodeObject:_source forKey:kDictionariesSource];
    [aCoder encodeObject:_dictionariesDescription forKey:kDictionariesDescription];
}

- (id)copyWithZone:(NSZone *)zone
{
    Dictionaries *copy = [[Dictionaries alloc] init];
    
    if (copy) {

        copy.countrySupportInfos = [self.countrySupportInfos copyWithZone:zone];
        copy.vintage = [self.vintage copyWithZone:zone];
        copy.source = [self.source copyWithZone:zone];
        copy.dictionariesDescription = [self.dictionariesDescription copyWithZone:zone];
    }
    
    return copy;
}


@end
