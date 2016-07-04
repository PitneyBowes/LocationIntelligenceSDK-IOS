//
//  SupportLevels.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "SupportLevels.h"
#import "UpdatedOptionalOutputs.h"


NSString *const kSupportLevelsUpdatedOptionalInputs = @"updatedOptionalInputs";
NSString *const kSupportLevelsCountries = @"countries";
NSString *const kSupportLevelsUpdatedOptionalOutputs = @"updatedOptionalOutputs";
NSString *const kSupportLevelsUpdatedRequiredInputs = @"updatedRequiredInputs";
NSString *const kSupportLevelsSupportedDataLevel = @"supportedDataLevel";


@interface SupportLevels ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation SupportLevels

@synthesize updatedOptionalInputs = _updatedOptionalInputs;
@synthesize countries = _countries;
@synthesize updatedOptionalOutputs = _updatedOptionalOutputs;
@synthesize updatedRequiredInputs = _updatedRequiredInputs;
@synthesize supportedDataLevel = _supportedDataLevel;


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
            self.updatedOptionalInputs = [self objectOrNilForKey:kSupportLevelsUpdatedOptionalInputs fromDictionary:dict];
            self.countries = [self objectOrNilForKey:kSupportLevelsCountries fromDictionary:dict];
    NSObject *receivedUpdatedOptionalOutputs = [dict objectForKey:kSupportLevelsUpdatedOptionalOutputs];
    NSMutableArray *parsedUpdatedOptionalOutputs = [NSMutableArray array];
    if ([receivedUpdatedOptionalOutputs isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedUpdatedOptionalOutputs) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedUpdatedOptionalOutputs addObject:[UpdatedOptionalOutputs modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedUpdatedOptionalOutputs isKindOfClass:[NSDictionary class]]) {
       [parsedUpdatedOptionalOutputs addObject:[UpdatedOptionalOutputs modelObjectWithDictionary:(NSDictionary *)receivedUpdatedOptionalOutputs]];
    }

    self.updatedOptionalOutputs = [NSArray arrayWithArray:parsedUpdatedOptionalOutputs];
            self.updatedRequiredInputs = [self objectOrNilForKey:kSupportLevelsUpdatedRequiredInputs fromDictionary:dict];
            self.supportedDataLevel = [[self objectOrNilForKey:kSupportLevelsSupportedDataLevel fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForUpdatedOptionalInputs = [NSMutableArray array];
    for (NSObject *subArrayObject in self.updatedOptionalInputs) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForUpdatedOptionalInputs addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForUpdatedOptionalInputs addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForUpdatedOptionalInputs] forKey:kSupportLevelsUpdatedOptionalInputs];
    NSMutableArray *tempArrayForCountries = [NSMutableArray array];
    for (NSObject *subArrayObject in self.countries) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForCountries addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForCountries addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForCountries] forKey:kSupportLevelsCountries];
    NSMutableArray *tempArrayForUpdatedOptionalOutputs = [NSMutableArray array];
    for (NSObject *subArrayObject in self.updatedOptionalOutputs) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForUpdatedOptionalOutputs addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForUpdatedOptionalOutputs addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForUpdatedOptionalOutputs] forKey:kSupportLevelsUpdatedOptionalOutputs];
    NSMutableArray *tempArrayForUpdatedRequiredInputs = [NSMutableArray array];
    for (NSObject *subArrayObject in self.updatedRequiredInputs) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForUpdatedRequiredInputs addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForUpdatedRequiredInputs addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForUpdatedRequiredInputs] forKey:kSupportLevelsUpdatedRequiredInputs];
    [mutableDict setValue:[NSNumber numberWithDouble:self.supportedDataLevel] forKey:kSupportLevelsSupportedDataLevel];

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

    self.updatedOptionalInputs = [aDecoder decodeObjectForKey:kSupportLevelsUpdatedOptionalInputs];
    self.countries = [aDecoder decodeObjectForKey:kSupportLevelsCountries];
    self.updatedOptionalOutputs = [aDecoder decodeObjectForKey:kSupportLevelsUpdatedOptionalOutputs];
    self.updatedRequiredInputs = [aDecoder decodeObjectForKey:kSupportLevelsUpdatedRequiredInputs];
    self.supportedDataLevel = [aDecoder decodeDoubleForKey:kSupportLevelsSupportedDataLevel];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_updatedOptionalInputs forKey:kSupportLevelsUpdatedOptionalInputs];
    [aCoder encodeObject:_countries forKey:kSupportLevelsCountries];
    [aCoder encodeObject:_updatedOptionalOutputs forKey:kSupportLevelsUpdatedOptionalOutputs];
    [aCoder encodeObject:_updatedRequiredInputs forKey:kSupportLevelsUpdatedRequiredInputs];
    [aCoder encodeDouble:_supportedDataLevel forKey:kSupportLevelsSupportedDataLevel];
}

- (id)copyWithZone:(NSZone *)zone
{
    SupportLevels *copy = [[SupportLevels alloc] init];
    
    if (copy) {

        copy.updatedOptionalInputs = [self.updatedOptionalInputs copyWithZone:zone];
        copy.countries = [self.countries copyWithZone:zone];
        copy.updatedOptionalOutputs = [self.updatedOptionalOutputs copyWithZone:zone];
        copy.updatedRequiredInputs = [self.updatedRequiredInputs copyWithZone:zone];
        copy.supportedDataLevel = self.supportedDataLevel;
    }
    
    return copy;
}


@end
