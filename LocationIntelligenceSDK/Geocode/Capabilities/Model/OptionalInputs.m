//
//  OptionalInputs.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "OptionalInputs.h"
#import "AllowedValuesWithDescriptions.h"


NSString *const kOptionalInputsLowBoundary = @"lowBoundary";
NSString *const kOptionalInputsDefaultValue = @"defaultValue";
NSString *const kOptionalInputsHighBoundary = @"highBoundary";
NSString *const kOptionalInputsDescription = @"description";
NSString *const kOptionalInputsType = @"type";
NSString *const kOptionalInputsName = @"name";
NSString *const kOptionalInputsAllowedValuesWithDescriptions = @"allowedValuesWithDescriptions";


@interface OptionalInputs ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation OptionalInputs

@synthesize lowBoundary = _lowBoundary;
@synthesize defaultValue = _defaultValue;
@synthesize highBoundary = _highBoundary;
@synthesize optionalInputsDescription = _optionalInputsDescription;
@synthesize type = _type;
@synthesize name = _name;
@synthesize allowedValuesWithDescriptions = _allowedValuesWithDescriptions;


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
            self.lowBoundary = [self objectOrNilForKey:kOptionalInputsLowBoundary fromDictionary:dict];
            self.defaultValue = [self objectOrNilForKey:kOptionalInputsDefaultValue fromDictionary:dict];
            self.highBoundary = [self objectOrNilForKey:kOptionalInputsHighBoundary fromDictionary:dict];
            self.optionalInputsDescription = [self objectOrNilForKey:kOptionalInputsDescription fromDictionary:dict];
            self.type = [self objectOrNilForKey:kOptionalInputsType fromDictionary:dict];
            self.name = [self objectOrNilForKey:kOptionalInputsName fromDictionary:dict];
            self.allowedValuesWithDescriptions = [AllowedValuesWithDescriptions modelObjectWithDictionary:[dict objectForKey:kOptionalInputsAllowedValuesWithDescriptions]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.lowBoundary forKey:kOptionalInputsLowBoundary];
    [mutableDict setValue:self.defaultValue forKey:kOptionalInputsDefaultValue];
    [mutableDict setValue:self.highBoundary forKey:kOptionalInputsHighBoundary];
    [mutableDict setValue:self.optionalInputsDescription forKey:kOptionalInputsDescription];
    [mutableDict setValue:self.type forKey:kOptionalInputsType];
    [mutableDict setValue:self.name forKey:kOptionalInputsName];
    [mutableDict setValue:[self.allowedValuesWithDescriptions dictionaryRepresentation] forKey:kOptionalInputsAllowedValuesWithDescriptions];

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

    self.lowBoundary = [aDecoder decodeObjectForKey:kOptionalInputsLowBoundary];
    self.defaultValue = [aDecoder decodeObjectForKey:kOptionalInputsDefaultValue];
    self.highBoundary = [aDecoder decodeObjectForKey:kOptionalInputsHighBoundary];
    self.optionalInputsDescription = [aDecoder decodeObjectForKey:kOptionalInputsDescription];
    self.type = [aDecoder decodeObjectForKey:kOptionalInputsType];
    self.name = [aDecoder decodeObjectForKey:kOptionalInputsName];
    self.allowedValuesWithDescriptions = [aDecoder decodeObjectForKey:kOptionalInputsAllowedValuesWithDescriptions];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_lowBoundary forKey:kOptionalInputsLowBoundary];
    [aCoder encodeObject:_defaultValue forKey:kOptionalInputsDefaultValue];
    [aCoder encodeObject:_highBoundary forKey:kOptionalInputsHighBoundary];
    [aCoder encodeObject:_optionalInputsDescription forKey:kOptionalInputsDescription];
    [aCoder encodeObject:_type forKey:kOptionalInputsType];
    [aCoder encodeObject:_name forKey:kOptionalInputsName];
    [aCoder encodeObject:_allowedValuesWithDescriptions forKey:kOptionalInputsAllowedValuesWithDescriptions];
}

- (id)copyWithZone:(NSZone *)zone
{
    OptionalInputs *copy = [[OptionalInputs alloc] init];
    
    if (copy) {

        copy.lowBoundary = [self.lowBoundary copyWithZone:zone];
        copy.defaultValue = [self.defaultValue copyWithZone:zone];
        copy.highBoundary = [self.highBoundary copyWithZone:zone];
        copy.optionalInputsDescription = [self.optionalInputsDescription copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.allowedValuesWithDescriptions = [self.allowedValuesWithDescriptions copyWithZone:zone];
    }
    
    return copy;
}


@end
